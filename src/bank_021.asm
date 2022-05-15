; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    ld hl, $8a3d                                  ; $4000: $21 $3d $8a
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

jr_021_402c:
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
    jr jr_021_402c                                ; $4053: $18 $d7

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
    jp nz, Jump_021_63af                          ; $408f: $c2 $af $63

    ld a, h                                       ; $4092: $7c
    ld c, c                                       ; $4093: $49
    ld l, e                                       ; $4094: $6b
    jp nc, $5ac8                                  ; $4095: $d2 $c8 $5a

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
    jr jr_021_40f9                                ; $40ba: $18 $3d

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
    jp z, Jump_021_4fcb                           ; $40cb: $ca $cb $4f

    ld l, e                                       ; $40ce: $6b
    sub l                                         ; $40cf: $95
    inc h                                         ; $40d0: $24
    ld hl, sp-$44                                 ; $40d1: $f8 $bc
    db $fc                                        ; $40d3: $fc
    and d                                         ; $40d4: $a2
    sub $7f                                       ; $40d5: $d6 $7f
    sbc [hl]                                      ; $40d7: $9e
    ld l, e                                       ; $40d8: $6b
    call Call_021_5780                            ; $40d9: $cd $80 $57
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
    jr jr_021_4136                                ; $40e8: $18 $4c

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

jr_021_40f9:
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

jr_021_4136:
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
    jp c, Jump_021_5cf6                           ; $414d: $da $f6 $5c

    rst $20                                       ; $4150: $e7
    push hl                                       ; $4151: $e5
    rst $10                                       ; $4152: $d7
    ld c, [hl]                                    ; $4153: $4e
    ld [hl], l                                    ; $4154: $75
    ldh [$ce], a                                  ; $4155: $e0 $ce
    rl e                                          ; $4157: $cb $13
    jp nz, $3f3d                                  ; $4159: $c2 $3d $3f

jr_021_415c:
    ld b, [hl]                                    ; $415c: $46
    xor $bc                                       ; $415d: $ee $bc
    ld l, b                                       ; $415f: $68
    ld l, l                                       ; $4160: $6d
    cp h                                          ; $4161: $bc
    jp nz, Jump_021_592e                          ; $4162: $c2 $2e $59

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

jr_021_417a:
    ld a, [bc]                                    ; $417a: $0a
    dec sp                                        ; $417b: $3b
    rst $08                                       ; $417c: $cf
    add b                                         ; $417d: $80
    inc hl                                        ; $417e: $23
    add h                                         ; $417f: $84
    ld c, h                                       ; $4180: $4c
    jr jr_021_41a5                                ; $4181: $18 $22

    add h                                         ; $4183: $84
    cp h                                          ; $4184: $bc
    jr z, jr_021_415c                             ; $4185: $28 $d5

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

Call_021_4194:
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

Call_021_41a0:
    ld c, l                                       ; $41a0: $4d
    adc c                                         ; $41a1: $89
    call $e674                                    ; $41a2: $cd $74 $e6

jr_021_41a5:
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
    jr jr_021_417a                                ; $41bb: $18 $bd

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

jr_021_41dc:
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
    jr z, jr_021_41dc                             ; $421c: $28 $be

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

jr_021_4244:
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
    jp nc, Jump_021_7c08                          ; $425c: $d2 $08 $7c

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
    jp z, Jump_021_45c0                           ; $4280: $ca $c0 $45

    add e                                         ; $4283: $83
    jr nz, jr_021_4244                            ; $4284: $20 $be

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
    jr nc, jr_021_42d9                            ; $429a: $30 $3d

    ld l, d                                       ; $429c: $6a
    rla                                           ; $429d: $17
    xor b                                         ; $429e: $a8
    and $b3                                       ; $429f: $e6 $b3
    push af                                       ; $42a1: $f5
    jp z, Jump_021_5ed2                           ; $42a2: $ca $d2 $5e

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

Jump_021_42d3:
    cp [hl]                                       ; $42d3: $be
    ld c, e                                       ; $42d4: $4b
    ld [hl], b                                    ; $42d5: $70
    reti                                          ; $42d6: $d9


    inc hl                                        ; $42d7: $23
    inc c                                         ; $42d8: $0c

jr_021_42d9:
    cp l                                          ; $42d9: $bd
    ld e, [hl]                                    ; $42da: $5e
    add $a7                                       ; $42db: $c6 $a7
    ret nz                                        ; $42dd: $c0

    rst $08                                       ; $42de: $cf
    adc e                                         ; $42df: $8b
    jp nc, Jump_021_794e                          ; $42e0: $d2 $4e $79

    db $eb                                        ; $42e3: $eb
    adc l                                         ; $42e4: $8d
    pop af                                        ; $42e5: $f1
    ld l, e                                       ; $42e6: $6b
    jr nc, jr_021_4338                            ; $42e7: $30 $4f

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
    call z, $7833                                 ; $4310: $cc $33 $78
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
    jr nc, jr_021_439c                            ; $4333: $30 $67

    ld [hl], h                                    ; $4335: $74
    and $e5                                       ; $4336: $e6 $e5

jr_021_4338:
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

Call_021_434e:
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
    jp nc, $6340                                  ; $436a: $d2 $40 $63

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
    call nz, Call_021_5f1d                        ; $438e: $c4 $1d $5f
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

jr_021_439c:
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
    jp z, Jump_021_625a                           ; $43c2: $ca $5a $62

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
    jp nc, Jump_021_55ec                          ; $43f0: $d2 $ec $55

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
    jp nc, Jump_021_55ec                          ; $4415: $d2 $ec $55

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

Call_021_4436:
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

jr_021_4453:
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
    jr nc, jr_021_4453                            ; $448a: $30 $c7

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
    jp nc, Jump_021_4ac8                          ; $4526: $d2 $c8 $4a

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
    jr jr_021_458f                                ; $457c: $18 $11

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

jr_021_458f:
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

Jump_021_45c0:
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

jr_021_45e3:
    ld l, c                                       ; $45e3: $69
    cp d                                          ; $45e4: $ba
    ld h, b                                       ; $45e5: $60
    and a                                         ; $45e6: $a7

jr_021_45e7:
    and h                                         ; $45e7: $a4
    xor a                                         ; $45e8: $af
    dec h                                         ; $45e9: $25
    ld [hl], $5e                                  ; $45ea: $36 $5e
    ld e, [hl]                                    ; $45ec: $5e
    ld l, $71                                     ; $45ed: $2e $71
    ld b, a                                       ; $45ef: $47
    jp hl                                         ; $45f0: $e9


Call_021_45f1:
    ld l, e                                       ; $45f1: $6b

jr_021_45f2:
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

jr_021_4612:
    dec sp                                        ; $4612: $3b
    adc $72                                       ; $4613: $ce $72
    jp z, $a731                                   ; $4615: $ca $31 $a7

    sbc [hl]                                      ; $4618: $9e
    adc [hl]                                      ; $4619: $8e
    jr nc, jr_021_45e3                            ; $461a: $30 $c7

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
    jr z, jr_021_45e7                             ; $4627: $28 $be

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
    jp nc, Jump_021_5cc8                          ; $4646: $d2 $c8 $5c

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
    jr nc, jr_021_45f2                            ; $4663: $30 $8d

    ld a, [c]                                     ; $4665: $f2
    jp z, $ae9a                                   ; $4666: $ca $9a $ae

    jr jr_021_4612                                ; $4669: $18 $a7

    ld a, [c]                                     ; $466b: $f2
    inc a                                         ; $466c: $3c
    ld b, d                                       ; $466d: $42
    jr z, jr_021_46dc                             ; $466e: $28 $6c

    ld d, [hl]                                    ; $4670: $56
    ld e, [hl]                                    ; $4671: $5e
    add hl, de                                    ; $4672: $19
    ld b, d                                       ; $4673: $42
    ld [$c703], sp                                ; $4674: $08 $03 $c7
    ld e, l                                       ; $4677: $5d
    ld h, d                                       ; $4678: $62
    ld l, e                                       ; $4679: $6b
    jp nc, Jump_021_5cc8                          ; $467a: $d2 $c8 $5c

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
    jr nc, jr_021_46ec                            ; $46bd: $30 $2d

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

jr_021_46dc:
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

jr_021_46ec:
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
    jp z, Jump_021_5d85                           ; $4749: $ca $85 $5d

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

Jump_021_4770:
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
    jr nz, jr_021_47a3                            ; $4795: $20 $0c

    dec l                                         ; $4797: $2d
    ld d, a                                       ; $4798: $57
    halt                                          ; $4799: $76
    jp z, Jump_021_4aad                           ; $479a: $ca $ad $4a

    ld b, [hl]                                    ; $479d: $46
    add l                                         ; $479e: $85
    or c                                          ; $479f: $b1
    rst $18                                       ; $47a0: $df
    ret                                           ; $47a1: $c9


    scf                                           ; $47a2: $37

jr_021_47a3:
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
    jr nc, jr_021_47f2                            ; $47e8: $30 $08

    ld hl, $bd0c                                  ; $47ea: $21 $0c $bd
    jp nc, Jump_021_662c                          ; $47ed: $d2 $2c $66

    sub $17                                       ; $47f0: $d6 $17

jr_021_47f2:
    ld l, a                                       ; $47f2: $6f
    db $fd                                        ; $47f3: $fd
    and a                                         ; $47f4: $a7
    or e                                          ; $47f5: $b3
    cpl                                           ; $47f6: $2f

Call_021_47f7:
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
    jr nz, jr_021_4857                            ; $482b: $20 $2a

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

jr_021_4857:
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
    jr nc, jr_021_48be                            ; $487f: $30 $3d

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

jr_021_48ae:
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

Jump_021_48bc:
    dec hl                                        ; $48bc: $2b
    ld a, [c]                                     ; $48bd: $f2

jr_021_48be:
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
    ldh [rPCM34], a                               ; $48ca: $e0 $77
    ld d, h                                       ; $48cc: $54
    and b                                         ; $48cd: $a0
    sub a                                         ; $48ce: $97
    ret nz                                        ; $48cf: $c0

    ld [hl], a                                    ; $48d0: $77
    adc h                                         ; $48d1: $8c
    ld c, d                                       ; $48d2: $4a
    ld a, l                                       ; $48d3: $7d
    ld b, a                                       ; $48d4: $47
    adc c                                         ; $48d5: $89
    inc bc                                        ; $48d6: $03
    ld e, d                                       ; $48d7: $5a
    adc a                                         ; $48d8: $8f
    ld a, [c]                                     ; $48d9: $f2
    call $9b40                                    ; $48da: $cd $40 $9b
    or l                                          ; $48dd: $b5
    sub b                                         ; $48de: $90
    halt                                          ; $48df: $76
    ld a, [hl]                                    ; $48e0: $7e
    cp h                                          ; $48e1: $bc
    sub d                                         ; $48e2: $92
    jp $85ca                                      ; $48e3: $c3 $ca $85


    sbc l                                         ; $48e6: $9d
    sub a                                         ; $48e7: $97
    ld l, l                                       ; $48e8: $6d
    add h                                         ; $48e9: $84
    ld bc, $9a96                                  ; $48ea: $01 $96 $9a
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
    jr nc, jr_021_493e                            ; $48ff: $30 $3d

    ccf                                           ; $4901: $3f
    add $b1                                       ; $4902: $c6 $b1
    and h                                         ; $4904: $a4
    rst $20                                       ; $4905: $e7
    xor $f4                                       ; $4906: $ee $f4
    and h                                         ; $4908: $a4
    ld l, $18                                     ; $4909: $2e $18
    cp l                                          ; $490b: $bd

jr_021_490c:
    jp nc, Jump_021_62d4                          ; $490c: $d2 $d4 $62

    ld e, h                                       ; $490f: $5c
    ei                                            ; $4910: $fb
    rst $00                                       ; $4911: $c7
    ld e, a                                       ; $4912: $5f
    cpl                                           ; $4913: $2f
    db $d3                                        ; $4914: $d3
    jr jr_021_48ae                                ; $4915: $18 $97

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
    jp z, Jump_021_520f                           ; $492e: $ca $0f $52

    db $fc                                        ; $4931: $fc
    ld d, d                                       ; $4932: $52
    or b                                          ; $4933: $b0
    dec bc                                        ; $4934: $0b
    xor e                                         ; $4935: $ab
    ld [hl-], a                                   ; $4936: $32
    db $ec                                        ; $4937: $ec
    call nz, Call_021_47f7                        ; $4938: $c4 $f7 $47
    db $eb                                        ; $493b: $eb
    ld sp, hl                                     ; $493c: $f9
    or c                                          ; $493d: $b1

jr_021_493e:
    jp z, $e7f0                                   ; $493e: $ca $f0 $e7

Jump_021_4941:
    add hl, sp                                    ; $4941: $39
    dec e                                         ; $4942: $1d
    dec a                                         ; $4943: $3d
    cp a                                          ; $4944: $bf
    and $55                                       ; $4945: $e6 $55
    and [hl]                                      ; $4947: $a6
    cp [hl]                                       ; $4948: $be

Jump_021_4949:
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
    jr jr_021_490c                                ; $495d: $18 $ad

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
    jp nc, Jump_021_4f8c                          ; $496f: $d2 $8c $4f

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
    jr jr_021_49d2                                ; $4993: $18 $3d

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

Jump_021_49a4:
    ld b, a                                       ; $49a4: $47
    dec sp                                        ; $49a5: $3b
    ld a, [hl+]                                   ; $49a6: $2a
    add $79                                       ; $49a7: $c6 $79
    ld sp, hl                                     ; $49a9: $f9
    ld l, c                                       ; $49aa: $69
    push hl                                       ; $49ab: $e5

Jump_021_49ac:
    scf                                           ; $49ac: $37
    ld l, c                                       ; $49ad: $69
    rla                                           ; $49ae: $17

Jump_021_49af:
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
    jr jr_021_49d2                                ; $49ba: $18 $16

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

jr_021_49ce:
    xor a                                         ; $49ce: $af
    db $ed                                        ; $49cf: $ed
    ld h, l                                       ; $49d0: $65
    halt                                          ; $49d1: $76

jr_021_49d2:
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
    jp nc, Jump_021_5cbc                          ; $49e1: $d2 $bc $5c

    ld e, b                                       ; $49e4: $58
    pop de                                        ; $49e5: $d1
    jr jr_021_4a61                                ; $49e6: $18 $79

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
    jr nc, jr_021_49ce                            ; $49fd: $30 $cf

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

Jump_021_4a0c:
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
    jr nc, jr_021_4a81                            ; $4a50: $30 $2f

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

jr_021_4a61:
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
    jp nc, Jump_021_5cbc                          ; $4a6f: $d2 $bc $5c

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

jr_021_4a81:
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

Jump_021_4aac:
    cp a                                          ; $4aac: $bf

Jump_021_4aad:
    pop hl                                        ; $4aad: $e1
    jp Jump_021_65ca                              ; $4aae: $c3 $ca $65


    cp a                                          ; $4ab1: $bf

Call_021_4ab2:
    ld c, d                                       ; $4ab2: $4a
    cp $3b                                        ; $4ab3: $fe $3b
    call Call_021_5cbc                            ; $4ab5: $cd $bc $5c
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

Jump_021_4ac8:
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
    call z, Call_021_4436                         ; $4b08: $cc $36 $44
    call $9db4                                    ; $4b0b: $cd $b4 $9d
    add $77                                       ; $4b0e: $c6 $77
    call c, Call_021_558d                         ; $4b10: $dc $8d $55
    xor c                                         ; $4b13: $a9
    pop bc                                        ; $4b14: $c1
    jp c, Jump_000_1992                           ; $4b15: $da $92 $19

    xor [hl]                                      ; $4b18: $ae
    ld [hl-], a                                   ; $4b19: $32
    sbc l                                         ; $4b1a: $9d
    halt                                          ; $4b1b: $76
    xor d                                         ; $4b1c: $aa
    jr nc, jr_021_4b53                            ; $4b1d: $30 $34

    set 4, b                                      ; $4b1f: $cb $e0
    ld a, a                                       ; $4b21: $7f
    push hl                                       ; $4b22: $e5
    add [hl]                                      ; $4b23: $86
    dec bc                                        ; $4b24: $0b
    ld [hl], d                                    ; $4b25: $72
    sub a                                         ; $4b26: $97
    cp b                                          ; $4b27: $b8
    ld l, e                                       ; $4b28: $6b

jr_021_4b29:
    dec de                                        ; $4b29: $1b
    rra                                           ; $4b2a: $1f
    and l                                         ; $4b2b: $a5
    xor a                                         ; $4b2c: $af
    jp z, $97f0                                   ; $4b2d: $ca $f0 $97

    add $11                                       ; $4b30: $c6 $11
    ld b, $3d                                     ; $4b32: $06 $3d
    jp z, Jump_021_502f                           ; $4b34: $ca $2f $50

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
    call nc, Call_021_5560                        ; $4b43: $d4 $60 $55
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

jr_021_4b53:
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
    jr c, jr_021_4b29                             ; $4b65: $38 $c2

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
    jp nc, Jump_021_6fb6                          ; $4bc1: $d2 $b6 $6f

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

jr_021_4ca3:
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
    jp nz, Jump_021_48bc                          ; $4cb6: $c2 $bc $48

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
    jr z, jr_021_4ca3                             ; $4cdc: $28 $c5

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
    call nc, $6bfa                                ; $4d2c: $d4 $fa $6b
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
    jr jr_021_4ddd                                ; $4d62: $18 $79

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
    jp nc, Jump_021_4aac                          ; $4dc3: $d2 $ac $4a

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
    jp z, $b4c2                                   ; $4dd4: $ca $c2 $b4

jr_021_4dd7:
    cp $f8                                        ; $4dd7: $fe $f8
    ld a, [c]                                     ; $4dd9: $f2
    or h                                          ; $4dda: $b4
    ld h, $4d                                     ; $4ddb: $26 $4d

jr_021_4ddd:
    ld c, l                                       ; $4ddd: $4d
    ld a, [hl]                                    ; $4dde: $7e
    sub h                                         ; $4ddf: $94
    cp [hl]                                       ; $4de0: $be
    sbc b                                         ; $4de1: $98
    ld e, c                                       ; $4de2: $59
    cp a                                          ; $4de3: $bf
    inc d                                         ; $4de4: $14
    jr nz, jr_021_4df3                            ; $4de5: $20 $0c

    dec a                                         ; $4de7: $3d
    jp z, $d7cb                                   ; $4de8: $ca $cb $d7

    ld h, b                                       ; $4deb: $60
    cp d                                          ; $4dec: $ba
    di                                            ; $4ded: $f3
    call $eaad                                    ; $4dee: $cd $ad $ea
    db $e3                                        ; $4df1: $e3
    or l                                          ; $4df2: $b5

jr_021_4df3:
    sbc c                                         ; $4df3: $99
    rst $20                                       ; $4df4: $e7
    cp h                                          ; $4df5: $bc
    db $fc                                        ; $4df6: $fc
    ldh [$ad], a                                  ; $4df7: $e0 $ad
    ld c, a                                       ; $4df9: $4f
    ld e, [hl]                                    ; $4dfa: $5e
    ld h, [hl]                                    ; $4dfb: $66
    rst $00                                       ; $4dfc: $c7
    ld c, h                                       ; $4dfd: $4c
    sbc c                                         ; $4dfe: $99
    ld a, [$fcbc]                                 ; $4dff: $fa $bc $fc
    sbc [hl]                                      ; $4e02: $9e
    ret c                                         ; $4e03: $d8

    jp nc, $979e                                  ; $4e04: $d2 $9e $97

    dec bc                                        ; $4e07: $0b
    dec hl                                        ; $4e08: $2b
    ld a, [de]                                    ; $4e09: $1a
    inc hl                                        ; $4e0a: $23
    jp nz, $ca3d                                  ; $4e0b: $c2 $3d $ca

    rst $28                                       ; $4e0e: $ef
    ld a, h                                       ; $4e0f: $7c
    ld [hl], e                                    ; $4e10: $73
    xor e                                         ; $4e11: $ab
    ld a, [$8f83]                                 ; $4e12: $fa $83 $8f
    rst $10                                       ; $4e15: $d7
    ld h, [hl]                                    ; $4e16: $66
    sbc [hl]                                      ; $4e17: $9e
    dec sp                                        ; $4e18: $3b
    ld e, [hl]                                    ; $4e19: $5e
    ld a, [de]                                    ; $4e1a: $1a
    db $db                                        ; $4e1b: $db
    cp [hl]                                       ; $4e1c: $be
    call nz, Call_021_6652                        ; $4e1d: $c4 $52 $66
    ld c, e                                       ; $4e20: $4b
    add [hl]                                      ; $4e21: $86
    dec hl                                        ; $4e22: $2b
    cpl                                           ; $4e23: $2f
    cp a                                          ; $4e24: $bf
    dec bc                                        ; $4e25: $0b
    di                                            ; $4e26: $f3
    ld [hl+], a                                   ; $4e27: $22
    ld l, c                                       ; $4e28: $69
    add d                                         ; $4e29: $82
    ld [hl-], a                                   ; $4e2a: $32
    cpl                                           ; $4e2b: $2f
    cp a                                          ; $4e2c: $bf
    ld d, b                                       ; $4e2d: $50
    add e                                         ; $4e2e: $83
    ld e, e                                       ; $4e2f: $5b
    adc l                                         ; $4e30: $8d
    ld h, l                                       ; $4e31: $65
    jp z, $e7d4                                   ; $4e32: $ca $d4 $e7

    push hl                                       ; $4e35: $e5
    rst $30                                       ; $4e36: $f7
    call nz, $f696                                ; $4e37: $c4 $96 $f6
    cp h                                          ; $4e3a: $bc
    db $fc                                        ; $4e3b: $fc
    adc d                                         ; $4e3c: $8a
    add $88                                       ; $4e3d: $c6 $88
    jr nc, jr_021_4dd7                            ; $4e3f: $30 $96

    sbc d                                         ; $4e41: $9a
    push af                                       ; $4e42: $f5
    ld d, a                                       ; $4e43: $57
    ld e, [hl]                                    ; $4e44: $5e
    add l                                         ; $4e45: $85
    call $cbcb                                    ; $4e46: $cd $cb $cb
    rst $10                                       ; $4e49: $d7
    ld h, b                                       ; $4e4a: $60
    ld a, [hl-]                                   ; $4e4b: $3a
    jr z, jr_021_4e77                             ; $4e4c: $28 $29

    ld e, [hl]                                    ; $4e4e: $5e
    add hl, de                                    ; $4e4f: $19
    sbc a                                         ; $4e50: $9f
    rst $20                                       ; $4e51: $e7
    cp h                                          ; $4e52: $bc
    db $fc                                        ; $4e53: $fc
    ldh [$72], a                                  ; $4e54: $e0 $72
    ldh a, [$32]                                  ; $4e56: $f0 $32
    dec sp                                        ; $4e58: $3b
    ld h, [hl]                                    ; $4e59: $66
    jp z, $e692                                   ; $4e5a: $ca $92 $e6

    push hl                                       ; $4e5d: $e5
    rst $30                                       ; $4e5e: $f7
    ld a, [bc]                                    ; $4e5f: $0a
    cp $42                                        ; $4e60: $fe $42
    add e                                         ; $4e62: $83
    bit 7, [hl]                                   ; $4e63: $cb $7e
    ld l, c                                       ; $4e65: $69
    rst $08                                       ; $4e66: $cf
    res 0, l                                      ; $4e67: $cb $85
    dec d                                         ; $4e69: $15
    adc l                                         ; $4e6a: $8d
    sub c                                         ; $4e6b: $91
    rst $10                                       ; $4e6c: $d7
    ld b, $61                                     ; $4e6d: $06 $61
    dec a                                         ; $4e6f: $3d
    jp z, $bc2f                                   ; $4e70: $ca $2f $bc

    ld [hl+], a                                   ; $4e73: $22
    add hl, hl                                    ; $4e74: $29
    ld l, e                                       ; $4e75: $6b
    scf                                           ; $4e76: $37

jr_021_4e77:
    di                                            ; $4e77: $f3
    ld a, [c]                                     ; $4e78: $f2
    ld h, e                                       ; $4e79: $63
    sbc c                                         ; $4e7a: $99
    ld [hl-], a                                   ; $4e7b: $32
    rst $08                                       ; $4e7c: $cf
    ld a, c                                       ; $4e7d: $79
    ld sp, hl                                     ; $4e7e: $f9
    sub l                                         ; $4e7f: $95
    add h                                         ; $4e80: $84
    adc $75                                       ; $4e81: $ce $75
    adc l                                         ; $4e83: $8d
    db $e3                                        ; $4e84: $e3
    cpl                                           ; $4e85: $2f
    dec b                                         ; $4e86: $05
    cp e                                          ; $4e87: $bb
    jr nc, jr_021_4eba                            ; $4e88: $30 $30

    sbc l                                         ; $4e8a: $9d
    ld c, [hl]                                    ; $4e8b: $4e
    jp nz, Jump_021_79b3                          ; $4e8c: $c2 $b3 $79

    ld l, $be                                     ; $4e8f: $2e $be
    or d                                          ; $4e91: $b2
    ld b, c                                       ; $4e92: $41
    add [hl]                                      ; $4e93: $86
    rst $08                                       ; $4e94: $cf
    sub a                                         ; $4e95: $97
    sub a                                         ; $4e96: $97
    ld b, a                                       ; $4e97: $47
    jr jr_021_4ec1                                ; $4e98: $18 $27

    scf                                           ; $4e9a: $37
    ld h, e                                       ; $4e9b: $63
    jp z, Jump_000_19e6                           ; $4e9c: $ca $e6 $19

    reti                                          ; $4e9f: $d9


    jp nz, $979f                                  ; $4ea0: $c2 $9f $97

    sub a                                         ; $4ea3: $97
    sbc a                                         ; $4ea4: $9f
    add c                                         ; $4ea5: $81
    ld h, a                                       ; $4ea6: $67
    di                                            ; $4ea7: $f3
    ld e, h                                       ; $4ea8: $5c
    ei                                            ; $4ea9: $fb
    and a                                         ; $4eaa: $a7
    add e                                         ; $4eab: $83
    xor a                                         ; $4eac: $af
    db $e4                                        ; $4ead: $e4
    ld a, l                                       ; $4eae: $7d
    dec e                                         ; $4eaf: $1d
    dec b                                         ; $4eb0: $05
    ret nc                                        ; $4eb1: $d0

    ldh [$d7], a                                  ; $4eb2: $e0 $d7
    cp $72                                        ; $4eb4: $fe $72
    adc c                                         ; $4eb6: $89
    call $2fcb                                    ; $4eb7: $cd $cb $2f

jr_021_4eba:
    cp h                                          ; $4eba: $bc
    ld [hl+], a                                   ; $4ebb: $22
    add hl, hl                                    ; $4ebc: $29
    cp e                                          ; $4ebd: $bb
    inc [hl]                                      ; $4ebe: $34
    cpl                                           ; $4ebf: $2f
    cp a                                          ; $4ec0: $bf

jr_021_4ec1:
    ld a, [hl+]                                   ; $4ec1: $2a
    add l                                         ; $4ec2: $85
    ld e, [hl]                                    ; $4ec3: $5e
    sub [hl]                                      ; $4ec4: $96
    or $bc                                        ; $4ec5: $f6 $bc
    ld e, h                                       ; $4ec7: $5c
    ld e, b                                       ; $4ec8: $58
    pop de                                        ; $4ec9: $d1
    jr jr_021_4edd                                ; $4eca: $18 $11

    ld b, $47                                     ; $4ecc: $06 $47
    ld e, a                                       ; $4ece: $5f

Jump_021_4ecf:
    ld [hl+], a                                   ; $4ecf: $22
    sbc b                                         ; $4ed0: $98
    cp a                                          ; $4ed1: $bf
    ld d, [hl]                                    ; $4ed2: $56
    push hl                                       ; $4ed3: $e5
    ld h, c                                       ; $4ed4: $61
    xor l                                         ; $4ed5: $ad
    rla                                           ; $4ed6: $17
    inc a                                         ; $4ed7: $3c
    and l                                         ; $4ed8: $a5
    ld e, c                                       ; $4ed9: $59
    jp c, Jump_021_593b                           ; $4eda: $da $3b $59

jr_021_4edd:
    add e                                         ; $4edd: $83
    ld e, e                                       ; $4ede: $5b
    dec l                                         ; $4edf: $2d
    ld l, c                                       ; $4ee0: $69
    ld e, [hl]                                    ; $4ee1: $5e
    ld l, $cc                                     ; $4ee2: $2e $cc
    adc [hl]                                      ; $4ee4: $8e
    sbc c                                         ; $4ee5: $99
    add d                                         ; $4ee6: $82
    db $10                                        ; $4ee7: $10
    cp d                                          ; $4ee8: $ba
    or $9a                                        ; $4ee9: $f6 $9a
    inc [hl]                                      ; $4eeb: $34
    db $e3                                        ; $4eec: $e3
    sub l                                         ; $4eed: $95
    ld a, h                                       ; $4eee: $7c
    sbc [hl]                                      ; $4eef: $9e
    xor e                                         ; $4ef0: $ab
    inc [hl]                                      ; $4ef1: $34
    add $f1                                       ; $4ef2: $c6 $f1
    ld b, l                                       ; $4ef4: $45
    ld a, l                                       ; $4ef5: $7d
    push hl                                       ; $4ef6: $e5
    rst $00                                       ; $4ef7: $c7
    ld a, [c]                                     ; $4ef8: $f2
    ld h, c                                       ; $4ef9: $61
    cp $5a                                        ; $4efa: $fe $5a
    sub l                                         ; $4efc: $95
    ld c, e                                       ; $4efd: $4b
    ld bc, $96c2                                  ; $4efe: $01 $c2 $96
    ld a, c                                       ; $4f01: $79
    cp c                                          ; $4f02: $b9
    ld d, h                                       ; $4f03: $54
    rst $18                                       ; $4f04: $df
    pop de                                        ; $4f05: $d1
    sub a                                         ; $4f06: $97
    ld [$e066], sp                                ; $4f07: $08 $66 $e0
    reti                                          ; $4f0a: $d9


    inc a                                         ; $4f0b: $3c
    ld d, a                                       ; $4f0c: $57
    call nc, Call_021_53fa                        ; $4f0d: $d4 $fa $53
    ld e, d                                       ; $4f10: $5a
    jp c, $adf6                                   ; $4f11: $da $f6 $ad

    ld a, [hl]                                    ; $4f14: $7e
    ld c, c                                       ; $4f15: $49
    di                                            ; $4f16: $f3
    ld [hl], d                                    ; $4f17: $72
    ld h, c                                       ; $4f18: $61
    halt                                          ; $4f19: $76

jr_021_4f1a:
    call z, $b594                                 ; $4f1a: $cc $94 $b5
    rst $18                                       ; $4f1d: $df
    ld c, [hl]                                    ; $4f1e: $4e
    ld sp, hl                                     ; $4f1f: $f9
    sub l                                         ; $4f20: $95
    rra                                           ; $4f21: $1f
    cp e                                          ; $4f22: $bb
    rst $08                                       ; $4f23: $cf
    and [hl]                                      ; $4f24: $a6
    call nz, $fed6                                ; $4f25: $c4 $d6 $fe
    ld b, b                                       ; $4f28: $40
    ld l, c                                       ; $4f29: $69
    sbc [hl]                                      ; $4f2a: $9e
    add e                                         ; $4f2b: $83
    adc $13                                       ; $4f2c: $ce $13
    ld e, e                                       ; $4f2e: $5b
    cp c                                          ; $4f2f: $b9
    jr nc, jr_021_4f1a                            ; $4f30: $30 $e8

    xor b                                         ; $4f32: $a8
    db $fc                                        ; $4f33: $fc
    db $fc                                        ; $4f34: $fc
    add [hl]                                      ; $4f35: $86
    cp a                                          ; $4f36: $bf
    ld c, e                                       ; $4f37: $4b
    di                                            ; $4f38: $f3
    ld a, [c]                                     ; $4f39: $f2
    di                                            ; $4f3a: $f3
    rst $10                                       ; $4f3b: $d7
    xor d                                         ; $4f3c: $aa
    cp h                                          ; $4f3d: $bc
    ld b, b                                       ; $4f3e: $40
    ld l, l                                       ; $4f3f: $6d
    ld d, l                                       ; $4f40: $55
    add [hl]                                      ; $4f41: $86
    ld h, c                                       ; $4f42: $61
    jp nc, $3324                                  ; $4f43: $d2 $24 $33

    ld b, h                                       ; $4f46: $44
    jr jr_021_4f86                                ; $4f47: $18 $3d

    jp z, Jump_000_24af                           ; $4f49: $ca $af $24

    ld [hl], h                                    ; $4f4c: $74
    xor [hl]                                      ; $4f4d: $ae
    ld l, e                                       ; $4f4e: $6b
    inc e                                         ; $4f4f: $1c
    ld a, a                                       ; $4f50: $7f
    add hl, hl                                    ; $4f51: $29
    ret c                                         ; $4f52: $d8

    add l                                         ; $4f53: $85
    dec h                                         ; $4f54: $25
    call $85cb                                    ; $4f55: $cd $cb $85
    reti                                          ; $4f58: $d9


    ld sp, $d053                                  ; $4f59: $31 $53 $d0
    inc l                                         ; $4f5c: $2c
    ld l, e                                       ; $4f5d: $6b
    cp a                                          ; $4f5e: $bf
    xor a                                         ; $4f5f: $af
    ld a, e                                       ; $4f60: $7b
    add [hl]                                      ; $4f61: $86
    or [hl]                                       ; $4f62: $b6
    ld a, h                                       ; $4f63: $7c
    inc sp                                        ; $4f64: $33
    cpl                                           ; $4f65: $2f
    ccf                                           ; $4f66: $3f
    ld [hl-], a                                   ; $4f67: $32
    ld [bc], a                                    ; $4f68: $02
    cp a                                          ; $4f69: $bf
    ld a, [$077f]                                 ; $4f6a: $fa $7f $07
    and [hl]                                      ; $4f6d: $a6
    adc e                                         ; $4f6e: $8b
    jp hl                                         ; $4f6f: $e9


    ld c, e                                       ; $4f70: $4b
    ld a, e                                       ; $4f71: $7b
    push hl                                       ; $4f72: $e5
    dec [hl]                                      ; $4f73: $35
    ld e, [hl]                                    ; $4f74: $5e

Call_021_4f75:
    ld a, [bc]                                    ; $4f75: $0a
    sub $f3                                       ; $4f76: $d6 $f3
    ld b, $c1                                     ; $4f78: $06 $c1
    inc de                                        ; $4f7a: $13
    rst $38                                       ; $4f7b: $ff
    sub c                                         ; $4f7c: $91
    xor l                                         ; $4f7d: $ad
    ld a, e                                       ; $4f7e: $7b
    ld a, [$da4d]                                 ; $4f7f: $fa $4d $da
    and l                                         ; $4f82: $a5
    ld a, c                                       ; $4f83: $79
    ld a, c                                       ; $4f84: $79
    ld a, c                                       ; $4f85: $79

jr_021_4f86:
    add h                                         ; $4f86: $84
    ld bc, $ca3d                                  ; $4f87: $01 $3d $ca
    set 2, a                                      ; $4f8a: $cb $d7

Jump_021_4f8c:
    ld h, b                                       ; $4f8c: $60
    cp d                                          ; $4f8d: $ba
    ld d, b                                       ; $4f8e: $50
    add e                                         ; $4f8f: $83
    ld e, e                                       ; $4f90: $5b
    adc l                                         ; $4f91: $8d
    ld h, l                                       ; $4f92: $65
    jp z, $cd2e                                   ; $4f93: $ca $2e $cd

    res 0, l                                      ; $4f96: $cb $85
    dec d                                         ; $4f98: $15
    adc l                                         ; $4f99: $8d
    sub c                                         ; $4f9a: $91
    rst $10                                       ; $4f9b: $d7
    ld h, [hl]                                    ; $4f9c: $66
    ld e, [hl]                                    ; $4f9d: $5e
    call nc, $e417                                ; $4f9e: $d4 $17 $e4
    jp $c634                                      ; $4fa1: $c3 $34 $c6


    ld a, c                                       ; $4fa4: $79
    ld sp, hl                                     ; $4fa5: $f9
    pop af                                        ; $4fa6: $f1
    jp c, Jump_000_258c                           ; $4fa7: $da $8c $25

    ld c, a                                       ; $4faa: $4f
    di                                            ; $4fab: $f3

Call_021_4fac:
Jump_021_4fac:
    sbc h                                         ; $4fac: $9c
    sub a                                         ; $4fad: $97
    rra                                           ; $4fae: $1f
    inc sp                                        ; $4faf: $33
    inc d                                         ; $4fb0: $14
    ld a, h                                       ; $4fb1: $7c
    ld [de], a                                    ; $4fb2: $12
    and b                                         ; $4fb3: $a0
    ld e, c                                       ; $4fb4: $59
    cp h                                          ; $4fb5: $bc
    ld b, $2b                                     ; $4fb6: $06 $2b
    ld c, d                                       ; $4fb8: $4a
    xor h                                         ; $4fb9: $ac
    reti                                          ; $4fba: $d9


    or l                                          ; $4fbb: $b5
    rst $10                                       ; $4fbc: $d7
    and h                                         ; $4fbd: $a4
    xor c                                         ; $4fbe: $a9
    ret                                           ; $4fbf: $c9


    ld c, a                                       ; $4fc0: $4f
    inc c                                         ; $4fc1: $0c
    pop de                                        ; $4fc2: $d1

Jump_021_4fc3:
    and l                                         ; $4fc3: $a5
    ld h, b                                       ; $4fc4: $60
    ld d, c                                       ; $4fc5: $51
    db $fd                                        ; $4fc6: $fd
    ld h, a                                       ; $4fc7: $67
    and a                                         ; $4fc8: $a7
    xor h                                         ; $4fc9: $ac
    add l                                         ; $4fca: $85

Call_021_4fcb:
Jump_021_4fcb:
    or h                                          ; $4fcb: $b4
    di                                            ; $4fcc: $f3
    dec [hl]                                      ; $4fcd: $35
    ld e, b                                       ; $4fce: $58
    dec d                                         ; $4fcf: $15
    dec d                                         ; $4fd0: $15
    nop                                           ; $4fd1: $00
    ld h, c                                       ; $4fd2: $61
    ld b, a                                       ; $4fd3: $47
    push bc                                       ; $4fd4: $c5
    cp b                                          ; $4fd5: $b8
    or h                                          ; $4fd6: $b4
    rst $20                                       ; $4fd7: $e7
    push hl                                       ; $4fd8: $e5
    ld [hl], a                                    ; $4fd9: $77
    or d                                          ; $4fda: $b2

Call_021_4fdb:
    add hl, bc                                    ; $4fdb: $09
    add d                                         ; $4fdc: $82

jr_021_4fdd:
    ld hl, sp-$55                                 ; $4fdd: $f8 $ab
    and d                                         ; $4fdf: $a2
    ld [bc], a                                    ; $4fe0: $02
    inc a                                         ; $4fe1: $3c
    ld c, h                                       ; $4fe2: $4c
    push hl                                       ; $4fe3: $e5
    sub a                                         ; $4fe4: $97
    inc [hl]                                      ; $4fe5: $34

jr_021_4fe6:
    cpl                                           ; $4fe6: $2f
    rla                                           ; $4fe7: $17
    ld h, [hl]                                    ; $4fe8: $66
    rst $00                                       ; $4fe9: $c7
    ld c, h                                       ; $4fea: $4c
    pop hl                                        ; $4feb: $e1
    xor $52                                       ; $4fec: $ee $52
    dec d                                         ; $4fee: $15
    dec c                                         ; $4fef: $0d
    cp e                                          ; $4ff0: $bb
    inc d                                         ; $4ff1: $14
    db $ec                                        ; $4ff2: $ec
    jr z, jr_021_4fe6                             ; $4ff3: $28 $f1

    add hl, hl                                    ; $4ff5: $29
    or c                                          ; $4ff6: $b1
    sbc l                                         ; $4ff7: $9d
    ld l, h                                       ; $4ff8: $6c
    ldh [rRP], a                                  ; $4ff9: $e0 $56
    ld [$3d03], sp                                ; $4ffb: $08 $03 $3d
    jp z, $d7cb                                   ; $4ffe: $ca $cb $d7

    ld h, b                                       ; $5001: $60
    cp d                                          ; $5002: $ba
    ld d, b                                       ; $5003: $50
    add e                                         ; $5004: $83
    ld e, e                                       ; $5005: $5b
    adc l                                         ; $5006: $8d
    ld h, l                                       ; $5007: $65
    jp z, $cd2e                                   ; $5008: $ca $2e $cd

    res 0, l                                      ; $500b: $cb $85
    dec d                                         ; $500d: $15
    adc l                                         ; $500e: $8d
    sub c                                         ; $500f: $91
    rst $10                                       ; $5010: $d7
    ld h, [hl]                                    ; $5011: $66
    ld e, [hl]                                    ; $5012: $5e
    call nc, $dfc7                                ; $5013: $d4 $c7 $df
    jr @-$17                                      ; $5016: $18 $e7

    ld e, d                                       ; $5018: $5a
    rst $38                                       ; $5019: $ff
    dec [hl]                                      ; $501a: $35
    ld l, c                                       ; $501b: $69
    ld d, [hl]                                    ; $501c: $56
    push bc                                       ; $501d: $c5
    add h                                         ; $501e: $84
    sbc a                                         ; $501f: $9f
    rst $20                                       ; $5020: $e7
    adc [hl]                                      ; $5021: $8e
    adc e                                         ; $5022: $8b
    rst $10                                       ; $5023: $d7
    ld sp, hl                                     ; $5024: $f9
    ld e, e                                       ; $5025: $5b
    push de                                       ; $5026: $d5
    ld l, e                                       ; $5027: $6b
    or b                                          ; $5028: $b0
    ld a, [hl+]                                   ; $5029: $2a
    ld a, [hl+]                                   ; $502a: $2a
    nop                                           ; $502b: $00
    jp nz, $ff47                                  ; $502c: $c2 $47 $ff

Jump_021_502f:
    ld a, [hl+]                                   ; $502f: $2a
    sub l                                         ; $5030: $95
    or a                                          ; $5031: $b7
    ld c, l                                       ; $5032: $4d
    call c, $d7b5                                 ; $5033: $dc $b5 $d7
    and h                                         ; $5036: $a4
    ld e, c                                       ; $5037: $59
    sub b                                         ; $5038: $90
    cp e                                          ; $5039: $bb
    db $e4                                        ; $503a: $e4
    add hl, sp                                    ; $503b: $39
    ld b, e                                       ; $503c: $43
    ld b, $9e                                     ; $503d: $06 $9e
    xor l                                         ; $503f: $ad
    adc d                                         ; $5040: $8a
    ld a, [bc]                                    ; $5041: $0a
    jr nz, jr_021_4fdd                            ; $5042: $20 $99

    ld hl, $8420                                  ; $5044: $21 $20 $84
    sub $a4                                       ; $5047: $d6 $a4
    ld e, c                                       ; $5049: $59
    sub l                                         ; $504a: $95
    ld h, $b2                                     ; $504b: $26 $b2
    add l                                         ; $504d: $85
    rst $38                                       ; $504e: $ff
    ld a, $c8                                     ; $504f: $3e $c8
    ldh a, [$bd]                                  ; $5051: $f0 $bd
    ld e, h                                       ; $5053: $5c
    ld a, [bc]                                    ; $5054: $0a
    ld b, [hl]                                    ; $5055: $46
    ld a, [bc]                                    ; $5056: $0a
    sbc $20                                       ; $5057: $de $20
    inc c                                         ; $5059: $0c
    dec a                                         ; $505a: $3d
    jp z, Jump_000_38ef                           ; $505b: $ca $ef $38

    dec c                                         ; $505e: $0d
    db $d3                                        ; $505f: $d3
    ret nz                                        ; $5060: $c0

    ld a, d                                       ; $5061: $7a
    ld e, [hl]                                    ; $5062: $5e
    xor a                                         ; $5063: $af
    jp z, $94c3                                   ; $5064: $ca $c3 $94

    ret c                                         ; $5067: $d8

    ld a, d                                       ; $5068: $7a
    ld e, [hl]                                    ; $5069: $5e
    adc [hl]                                      ; $506a: $8e
    ld a, [hl+]                                   ; $506b: $2a
    inc c                                         ; $506c: $0c
    sub $4d                                       ; $506d: $d6 $4d
    add l                                         ; $506f: $85
    xor l                                         ; $5070: $ad
    ld e, e                                       ; $5071: $5b
    inc [hl]                                      ; $5072: $34
    db $ed                                        ; $5073: $ed
    ld e, l                                       ; $5074: $5d
    sbc b                                         ; $5075: $98
    ld l, $c8                                     ; $5076: $2e $c8
    ld h, h                                       ; $5078: $64
    db $eb                                        ; $5079: $eb
    ld b, h                                       ; $507a: $44
    xor l                                         ; $507b: $ad
    ld a, [hl]                                    ; $507c: $7e
    sbc [hl]                                      ; $507d: $9e
    ld [hl], e                                    ; $507e: $73
    ld l, c                                       ; $507f: $69
    sub [hl]                                      ; $5080: $96
    add $57                                       ; $5081: $c6 $57
    xor c                                         ; $5083: $a9
    or b                                          ; $5084: $b0
    ld d, l                                       ; $5085: $55
    add hl, de                                    ; $5086: $19
    or [hl]                                       ; $5087: $b6
    cpl                                           ; $5088: $2f

jr_021_5089:
    xor c                                         ; $5089: $a9
    rst $18                                       ; $508a: $df
    inc h                                         ; $508b: $24
    ld b, b                                       ; $508c: $40
    jr @+$69                                      ; $508d: $18 $67

    ret nz                                        ; $508f: $c0

    rst $08                                       ; $5090: $cf
    sra a                                         ; $5091: $cb $2f
    call nc, $56e0                                ; $5093: $d4 $e0 $56
    ld h, e                                       ; $5096: $63
    sbc c                                         ; $5097: $99
    or d                                          ; $5098: $b2
    and h                                         ; $5099: $a4
    ld a, c                                       ; $509a: $79
    ld sp, hl                                     ; $509b: $f9
    cp l                                          ; $509c: $bd
    add d                                         ; $509d: $82
    adc a                                         ; $509e: $8f
    rst $10                                       ; $509f: $d7
    jr jr_021_5089                                ; $50a0: $18 $e7

    cp c                                          ; $50a2: $b9
    ldh [$7d], a                                  ; $50a3: $e0 $7d
    sbc [hl]                                      ; $50a5: $9e
    di                                            ; $50a6: $f3
    ld a, [c]                                     ; $50a7: $f2
    or e                                          ; $50a8: $b3
    db $d3                                        ; $50a9: $d3
    adc b                                         ; $50aa: $88
    sub a                                         ; $50ab: $97
    reti                                          ; $50ac: $d9


    ld sp, $d053                                  ; $50ad: $31 $53 $d0
    inc l                                         ; $50b0: $2c
    ld e, [hl]                                    ; $50b1: $5e
    adc e                                         ; $50b2: $8b
    ld [hl], c                                    ; $50b3: $71
    pop bc                                        ; $50b4: $c1
    ei                                            ; $50b5: $fb
    sbc d                                         ; $50b6: $9a
    inc [hl]                                      ; $50b7: $34
    xor e                                         ; $50b8: $ab
    ld h, d                                       ; $50b9: $62
    jp nz, $73cf                                  ; $50ba: $c2 $cf $73

    ld e, [hl]                                    ; $50bd: $5e
    ld a, [hl]                                    ; $50be: $7e
    dec h                                         ; $50bf: $25
    and c                                         ; $50c0: $a1
    ld [hl], e                                    ; $50c1: $73
    ld e, l                                       ; $50c2: $5d
    db $e3                                        ; $50c3: $e3
    ld hl, sp+$4b                                 ; $50c4: $f8 $4b
    pop bc                                        ; $50c6: $c1
    adc $37                                       ; $50c7: $ce $37
    or a                                          ; $50c9: $b7
    xor d                                         ; $50ca: $aa
    ld [hl], e                                    ; $50cb: $73
    ld [hl], a                                    ; $50cc: $77
    ld l, c                                       ; $50cd: $69
    sub l                                         ; $50ce: $95
    jp nz, Jump_021_49af                          ; $50cf: $c2 $af $49

    ld d, e                                       ; $50d2: $53
    sub e                                         ; $50d3: $93
    ld e, a                                       ; $50d4: $5f
    ld sp, $08e2                                  ; $50d5: $31 $e2 $08
    inc bc                                        ; $50d8: $03
    rst $00                                       ; $50d9: $c7
    db $dd                                        ; $50da: $dd
    ld e, b                                       ; $50db: $58
    sub l                                         ; $50dc: $95
    dec b                                         ; $50dd: $05
    rst $28                                       ; $50de: $ef
    jr nc, @+$5d                                  ; $50df: $30 $5b

    ld [hl-], a                                   ; $50e1: $32
    sbc h                                         ; $50e2: $9c
    sub a                                         ; $50e3: $97
    ld e, a                                       ; $50e4: $5f
    jr nz, jr_021_5150                            ; $50e5: $20 $69

    adc b                                         ; $50e7: $88
    call $998e                                    ; $50e8: $cd $8e $99
    ld [hl-], a                                   ; $50eb: $32
    rst $08                                       ; $50ec: $cf
    ld a, c                                       ; $50ed: $79
    cp c                                          ; $50ee: $b9
    jr nc, jr_021_512c                            ; $50ef: $30 $3b

    ld h, [hl]                                    ; $50f1: $66
    jp z, $f23a                                   ; $50f2: $ca $3a $f2

    xor $cd                                       ; $50f5: $ee $cd
    ld l, h                                       ; $50f7: $6c

jr_021_50f8:
    dec b                                         ; $50f8: $05
    ld b, a                                       ; $50f9: $47
    or e                                          ; $50fa: $b3
    call z, $a5cb                                 ; $50fb: $cc $cb $a5
    ld a, [$afca]                                 ; $50fe: $fa $ca $af
    jr z, jr_021_514f                             ; $5101: $28 $4c

    rla                                           ; $5103: $17
    ld l, d                                       ; $5104: $6a
    ld [hl], b                                    ; $5105: $70
    xor e                                         ; $5106: $ab
    or c                                          ; $5107: $b1
    ld c, h                                       ; $5108: $4c
    reti                                          ; $5109: $d9


    and l                                         ; $510a: $a5
    sub l                                         ; $510b: $95
    dec bc                                        ; $510c: $0b
    ld c, e                                       ; $510d: $4b
    db $db                                        ; $510e: $db
    cp [hl]                                       ; $510f: $be
    push de                                       ; $5110: $d5
    cpl                                           ; $5111: $2f
    ld h, l                                       ; $5112: $65
    push hl                                       ; $5113: $e5
    jp nz, $92da                                  ; $5114: $c2 $da $92

    add hl, de                                    ; $5117: $19
    xor [hl]                                      ; $5118: $ae
    ld [hl-], a                                   ; $5119: $32
    sbc l                                         ; $511a: $9d
    halt                                          ; $511b: $76
    xor d                                         ; $511c: $aa
    or b                                          ; $511d: $b0
    ld a, c                                       ; $511e: $79
    ld d, c                                       ; $511f: $51
    ld e, a                                       ; $5120: $5f
    ld a, h                                       ; $5121: $7c
    ld h, l                                       ; $5122: $65
    jr nc, jr_021_50f8                            ; $5123: $30 $d3

jr_021_5125:
    ld e, c                                       ; $5125: $59
    ld a, c                                       ; $5126: $79
    ld a, c                                       ; $5127: $79
    add h                                         ; $5128: $84
    ld bc, $7b16                                  ; $5129: $01 $16 $7b

jr_021_512c:
    ld c, l                                       ; $512c: $4d
    sbc d                                         ; $512d: $9a
    pop af                                        ; $512e: $f1
    ld c, d                                       ; $512f: $4a
    ld a, $cf                                     ; $5130: $3e $cf
    dec b                                         ; $5132: $05
    rst $28                                       ; $5133: $ef
    di                                            ; $5134: $f3
    sbc h                                         ; $5135: $9c
    sub a                                         ; $5136: $97
    sbc a                                         ; $5137: $9f
    sbc l                                         ; $5138: $9d
    ld b, [hl]                                    ; $5139: $46
    cp h                                          ; $513a: $bc
    call z, $998e                                 ; $513b: $cc $8e $99
    ld [hl-], a                                   ; $513e: $32
    ld e, e                                       ; $513f: $5b
    pop bc                                        ; $5140: $c1
    cp c                                          ; $5141: $b9
    adc e                                         ; $5142: $8b

jr_021_5143:
    sbc c                                         ; $5143: $99
    push af                                       ; $5144: $f5
    reti                                          ; $5145: $d9


    add hl, hl                                    ; $5146: $29
    di                                            ; $5147: $f3
    ld a, [c]                                     ; $5148: $f2
    inc bc                                        ; $5149: $03
    rst $10                                       ; $514a: $d7
    dec hl                                        ; $514b: $2b
    jr nc, jr_021_5143                            ; $514c: $30 $f5

    ld a, c                                       ; $514e: $79

jr_021_514f:
    ld sp, hl                                     ; $514f: $f9

jr_021_5150:
    ld b, c                                       ; $5150: $41
    ld a, [de]                                    ; $5151: $1a
    cpl                                           ; $5152: $2f
    ld a, e                                       ; $5153: $7b
    ld h, d                                       ; $5154: $62
    ld c, e                                       ; $5155: $4b
    ld a, e                                       ; $5156: $7b
    ld e, [hl]                                    ; $5157: $5e
    ld a, [hl]                                    ; $5158: $7e
    ld b, l                                       ; $5159: $45
    ld h, e                                       ; $515a: $63
    ld b, h                                       ; $515b: $44
    jr jr_021_5125                                ; $515c: $18 $c7

    db $dd                                        ; $515e: $dd
    ld e, b                                       ; $515f: $58
    sub l                                         ; $5160: $95
    ld a, [de]                                    ; $5161: $1a
    inc c                                         ; $5162: $0c
    inc a                                         ; $5163: $3c
    push hl                                       ; $5164: $e5
    dec h                                         ; $5165: $25
    inc sp                                        ; $5166: $33
    call c, $2585                                 ; $5167: $dc $85 $25
    call $85cb                                    ; $516a: $cd $cb $85
    reti                                          ; $516d: $d9


    ld sp, $d053                                  ; $516e: $31 $53 $d0
    ld a, d                                       ; $5171: $7a
    sub h                                         ; $5172: $94
    ld l, a                                       ; $5173: $6f
    ld b, $da                                     ; $5174: $06 $da
    call z, $cbcb                                 ; $5176: $cc $cb $cb

Call_021_5179:
    ld c, a                                       ; $5179: $4f
    push hl                                       ; $517a: $e5
    rlca                                          ; $517b: $07
    add hl, de                                    ; $517c: $19
    cp $48                                        ; $517d: $fe $48
    pop bc                                        ; $517f: $c1
    sbc e                                         ; $5180: $9b
    add c                                         ; $5181: $81
    sub c                                         ; $5182: $91
    adc [hl]                                      ; $5183: $8e
    ld e, h                                       ; $5184: $5c
    ld a, b                                       ; $5185: $78
    ret c                                         ; $5186: $d8

    and l                                         ; $5187: $a5
    ld e, l                                       ; $5188: $5d
    ld b, a                                       ; $5189: $47
    jr jr_021_51c9                                ; $518a: $18 $3d

    jp z, $d7cb                                   ; $518c: $ca $cb $d7

    ld h, b                                       ; $518f: $60
    ld a, [hl-]                                   ; $5190: $3a
    ld e, [hl]                                    ; $5191: $5e
    xor [hl]                                      ; $5192: $ae
    ld e, a                                       ; $5193: $5f
    ld a, [bc]                                    ; $5194: $0a
    ld b, $a6                                     ; $5195: $06 $a6
    db $d3                                        ; $5197: $d3
    adc c                                         ; $5198: $89
    rst $30                                       ; $5199: $f7
    ld h, c                                       ; $519a: $61
    ldh [$29], a                                  ; $519b: $e0 $29
    cp a                                          ; $519d: $bf
    jp z, $da74                                   ; $519e: $ca $74 $da

    xor c                                         ; $51a1: $a9
    jp nz, Jump_000_3a66                          ; $51a2: $c2 $66 $3a

    cp e                                          ; $51a5: $bb
    inc [hl]                                      ; $51a6: $34
    cpl                                           ; $51a7: $2f
    cp a                                          ; $51a8: $bf
    ld a, [hl+]                                   ; $51a9: $2a
    add l                                         ; $51aa: $85
    ld e, [hl]                                    ; $51ab: $5e
    ret nc                                        ; $51ac: $d0

    inc l                                         ; $51ad: $2c
    dec hl                                        ; $51ae: $2b
    xor a                                         ; $51af: $af
    jp nz, $1906                                  ; $51b0: $c2 $06 $19

    cp $3a                                        ; $51b3: $fe $3a
    ld e, a                                       ; $51b5: $5f
    sbc c                                         ; $51b6: $99
    ld a, b                                       ; $51b7: $78
    ld d, l                                       ; $51b8: $55
    ld b, [hl]                                    ; $51b9: $46
    ld a, c                                       ; $51ba: $79
    pop hl                                        ; $51bb: $e1
    ld h, c                                       ; $51bc: $61
    ld d, l                                       ; $51bd: $55
    add [hl]                                      ; $51be: $86
    sub a                                         ; $51bf: $97
    add d                                         ; $51c0: $82
    reti                                          ; $51c1: $d9


Call_021_51c2:
    sub d                                         ; $51c2: $92
    pop hl                                        ; $51c3: $e1
    xor [hl]                                      ; $51c4: $ae
    cpl                                           ; $51c5: $2f
    xor c                                         ; $51c6: $a9
    ld a, d                                       ; $51c7: $7a
    add h                                         ; $51c8: $84

jr_021_51c9:
    ld bc, $5596                                  ; $51c9: $01 $96 $55
    ld c, d                                       ; $51cc: $4a
    dec [hl]                                      ; $51cd: $35
    rra                                           ; $51ce: $1f
    xor a                                         ; $51cf: $af
    rst $10                                       ; $51d0: $d7
    ld h, a                                       ; $51d1: $67
    ret z                                         ; $51d2: $c8

    ld l, a                                       ; $51d3: $6f
    sbc h                                         ; $51d4: $9c
    ld h, l                                       ; $51d5: $65
    sub l                                         ; $51d6: $95
    jp nc, $eb5c                                  ; $51d7: $d2 $5c $eb

    ccf                                           ; $51da: $3f
    dec b                                         ; $51db: $05
    sub a                                         ; $51dc: $97
    and h                                         ; $51dd: $a4
    inc c                                         ; $51de: $0c
    dec de                                        ; $51df: $1b
    or h                                          ; $51e0: $b4
    ld e, $e5                                     ; $51e1: $1e $e5
    rst $00                                       ; $51e3: $c7
    ld [hl-], a                                   ; $51e4: $32
    ld h, l                                       ; $51e5: $65

jr_021_51e6:
    sbc [hl]                                      ; $51e6: $9e
    di                                            ; $51e7: $f3
    ld a, [c]                                     ; $51e8: $f2
    ld d, e                                       ; $51e9: $53
    ld [hl], b                                    ; $51ea: $70
    ld c, c                                       ; $51eb: $49
    jp z, $99b0                                   ; $51ec: $ca $b0 $99

    daa                                           ; $51ef: $27
    rst $38                                       ; $51f0: $ff
    or d                                          ; $51f1: $b2
    or h                                          ; $51f2: $b4
    cp [hl]                                       ; $51f3: $be
    call z, $cbcb                                 ; $51f4: $cc $cb $cb
    rst $28                                       ; $51f7: $ef
    jp nz, $e720                                  ; $51f8: $c2 $20 $e7

    rra                                           ; $51fb: $1f
    halt                                          ; $51fc: $76
    db $fc                                        ; $51fd: $fc
    ld d, d                                       ; $51fe: $52
    add b                                         ; $51ff: $80
    jr nc, @+$3f                                  ; $5200: $30 $3d

    adc d                                         ; $5202: $8a
    ld a, [$293a]                                 ; $5203: $fa $3a $29
    ld l, $7a                                     ; $5206: $2e $7a
    ld a, l                                       ; $5208: $7d
    ld c, c                                       ; $5209: $49
    di                                            ; $520a: $f3
    ld a, [c]                                     ; $520b: $f2
    and e                                         ; $520c: $a3
    inc d                                         ; $520d: $14
    cpl                                           ; $520e: $2f

Jump_021_520f:
    db $e3                                        ; $520f: $e3
    dec [hl]                                      ; $5210: $35
    ld b, [hl]                                    ; $5211: $46
    add h                                         ; $5212: $84
    sub b                                         ; $5213: $90
    ld h, l                                       ; $5214: $65
    push hl                                       ; $5215: $e5
    ld d, l                                       ; $5216: $55
    halt                                          ; $5217: $76
    ld a, l                                       ; $5218: $7d
    and c                                         ; $5219: $a1
    ld [hl], c                                    ; $521a: $71
    ld a, a                                       ; $521b: $7f
    cp c                                          ; $521c: $b9
    inc d                                         ; $521d: $14
    inc c                                         ; $521e: $0c
    ld [hl-], a                                   ; $521f: $32
    ld a, h                                       ; $5220: $7c
    cp a                                          ; $5221: $bf
    pop hl                                        ; $5222: $e1
    inc bc                                        ; $5223: $03
    jp nz, $d596                                  ; $5224: $c2 $96 $d5

    rst $38                                       ; $5227: $ff
    dec sp                                        ; $5228: $3b
    adc e                                         ; $5229: $8b
    sbc c                                         ; $522a: $99
    push af                                       ; $522b: $f5
    ld c, e                                       ; $522c: $4b
    pop bc                                        ; $522d: $c1
    ld l, $cd                                     ; $522e: $2e $cd
    adc e                                         ; $5230: $8b
    ld a, [$37da]                                 ; $5231: $fa $da $37
    ld e, b                                       ; $5234: $58
    dec h                                         ; $5235: $25
    dec c                                         ; $5236: $0d
    cp b                                          ; $5237: $b8
    add $b5                                       ; $5238: $c6 $b5
    dec [hl]                                      ; $523a: $35
    ld b, [hl]                                    ; $523b: $46
    xor $da                                       ; $523c: $ee $da
    add $67                                       ; $523e: $c6 $67
    ld e, c                                       ; $5240: $59
    and l                                         ; $5241: $a5
    inc [hl]                                      ; $5242: $34
    ld a, d                                       ; $5243: $7a
    db $eb                                        ; $5244: $eb
    set 4, b                                      ; $5245: $cb $e0
    ld a, a                                       ; $5247: $7f
    ld e, [hl]                                    ; $5248: $5e
    ld a, [hl]                                    ; $5249: $7e
    or [hl]                                       ; $524a: $b6
    ld [hl], c                                    ; $524b: $71
    inc hl                                        ; $524c: $23
    adc a                                         ; $524d: $8f
    jr nc, jr_021_51e6                            ; $524e: $30 $96

    sub l                                         ; $5250: $95
    db $ec                                        ; $5251: $ec
    db $fc                                        ; $5252: $fc
    sbc d                                         ; $5253: $9a
    inc [hl]                                      ; $5254: $34
    db $d3                                        ; $5255: $d3
    jr @-$07                                      ; $5256: $18 $f7

    ld [hl], h                                    ; $5258: $74
    ld e, [hl]                                    ; $5259: $5e
    ld [hl], $cf                                  ; $525a: $36 $cf
    and $e5                                       ; $525c: $e6 $e5
    rst $00                                       ; $525e: $c7
    ld a, a                                       ; $525f: $7f
    xor h                                         ; $5260: $ac
    ld [hl-], a                                   ; $5261: $32
    cp h                                          ; $5262: $bc
    inc d                                         ; $5263: $14
    xor h                                         ; $5264: $ac
    xor l                                         ; $5265: $ad
    ld [hl], h                                    ; $5266: $74
    cp [hl]                                       ; $5267: $be
    ld a, c                                       ; $5268: $79
    ld b, a                                       ; $5269: $47
    dec sp                                        ; $526a: $3b
    push de                                       ; $526b: $d5
    or [hl]                                       ; $526c: $b6
    rst $20                                       ; $526d: $e7
    add hl, sp                                    ; $526e: $39
    ei                                            ; $526f: $fb
    ld [de], a                                    ; $5270: $12
    ld e, e                                       ; $5271: $5b
    sub e                                         ; $5272: $93

jr_021_5273:
    ld b, [hl]                                    ; $5273: $46
    ld d, [hl]                                    ; $5274: $56
    jp nc, $c3c0                                  ; $5275: $d2 $c0 $c3

    jr z, jr_021_5273                             ; $5278: $28 $f9

    ld l, $18                                     ; $527a: $2e $18
    dec a                                         ; $527c: $3d
    set 1, e                                      ; $527d: $cb $cb
    rst $28                                       ; $527f: $ef
    jp nz, $978e                                  ; $5280: $c2 $8e $97

    add $b6                                       ; $5283: $c6 $b6
    cpl                                           ; $5285: $2f
    or c                                          ; $5286: $b1
    sub h                                         ; $5287: $94
    xor [hl]                                      ; $5288: $ae
    jr @+$49                                      ; $5289: $18 $47

    ld b, l                                       ; $528b: $45
    ld a, c                                       ; $528c: $79
    ld h, l                                       ; $528d: $65

jr_021_528e:
    call $2d2e                                    ; $528e: $cd $2e $2d
    ld a, [hl+]                                   ; $5291: $2a
    ld hl, sp+$3a                                 ; $5292: $f8 $3a
    ld d, c                                       ; $5294: $51
    xor e                                         ; $5295: $ab
    rst $20                                       ; $5296: $e7
    xor $da                                       ; $5297: $ee $da
    or e                                          ; $5299: $b3
    call nc, Call_021_51c2                        ; $529a: $d4 $c2 $51
    ld a, [$0bc2]                                 ; $529d: $fa $c2 $0b
    xor [hl]                                      ; $52a0: $ae
    push af                                       ; $52a1: $f5
    daa                                           ; $52a2: $27
    add h                                         ; $52a3: $84
    ld bc, $292d                                  ; $52a4: $01 $2d $29
    jp nc, Jump_021_4770                          ; $52a7: $d2 $70 $47

    jp hl                                         ; $52aa: $e9


    dec bc                                        ; $52ab: $0b

Jump_021_52ac:
    sbc e                                         ; $52ac: $9b
    sub l                                         ; $52ad: $95
    inc [hl]                                      ; $52ae: $34
    ldh a, [$08]                                  ; $52af: $f0 $08
    inc bc                                        ; $52b1: $03
    rst $00                                       ; $52b2: $c7
    ld [hl], d                                    ; $52b3: $72
    xor b                                         ; $52b4: $a8
    inc c                                         ; $52b5: $0c
    db $fc                                        ; $52b6: $fc
    jp nz, $aee7                                  ; $52b7: $c2 $e7 $ae

    inc hl                                        ; $52ba: $23
    ld l, c                                       ; $52bb: $69
    ccf                                           ; $52bc: $3f
    ld b, b                                       ; $52bd: $40
    ld a, [bc]                                    ; $52be: $0a
    ld [hl], a                                    ; $52bf: $77
    ld l, l                                       ; $52c0: $6d
    db $e3                                        ; $52c1: $e3
    db $e3                                        ; $52c2: $e3
    set 1, e                                      ; $52c3: $cb $cb
    rst $28                                       ; $52c5: $ef
    jp nz, $978e                                  ; $52c6: $c2 $8e $97

    add $b6                                       ; $52c9: $c6 $b6
    cpl                                           ; $52cb: $2f
    or c                                          ; $52cc: $b1
    sub h                                         ; $52cd: $94
    xor [hl]                                      ; $52ce: $ae
    jr jr_021_528e                                ; $52cf: $18 $bd

    jp nc, $d8d4                                  ; $52d1: $d2 $d4 $d8

    jp c, $feef                                   ; $52d4: $da $ef $fe

    ld [hl-], a                                   ; $52d7: $32
    ei                                            ; $52d8: $fb
    ld [de], a                                    ; $52d9: $12
    db $db                                        ; $52da: $db
    push af                                       ; $52db: $f5
    or l                                          ; $52dc: $b5
    rst $18                                       ; $52dd: $df
    ld c, [hl]                                    ; $52de: $4e
    ld sp, hl                                     ; $52df: $f9
    push bc                                       ; $52e0: $c5
    dec de                                        ; $52e1: $1b
    inc d                                         ; $52e2: $14
    add a                                         ; $52e3: $87
    and l                                         ; $52e4: $a5
    ld [hl], c                                    ; $52e5: $71
    xor $ba                                       ; $52e6: $ee $ba
    and a                                         ; $52e8: $a7
    ei                                            ; $52e9: $fb
    dec bc                                        ; $52ea: $0b
    jp nz, $b196                                  ; $52eb: $c2 $96 $b1

    and h                                         ; $52ee: $a4
    sbc d                                         ; $52ef: $9a
    xor a                                         ; $52f0: $af
    ld c, [hl]                                    ; $52f1: $4e
    ret                                           ; $52f2: $c9


    inc hl                                        ; $52f3: $23
    inc c                                         ; $52f4: $0c
    ld d, $5f                                     ; $52f5: $16 $5f
    sub l                                         ; $52f7: $95
    ld h, $b2                                     ; $52f8: $26 $b2
    or l                                          ; $52fa: $b5
    ld a, a                                       ; $52fb: $7f
    ld c, d                                       ; $52fc: $4a
    dec c                                         ; $52fd: $0d
    ld e, a                                       ; $52fe: $5f
    ld e, [hl]                                    ; $52ff: $5e
    ld e, $61                                     ; $5300: $1e $61
    daa                                           ; $5302: $27
    daa                                           ; $5303: $27
    cpl                                           ; $5304: $2f
    ld [$c703], sp                                ; $5305: $08 $03 $c7
    inc h                                         ; $5308: $24
    push de                                       ; $5309: $d5
    ld a, h                                       ; $530a: $7c
    ld c, l                                       ; $530b: $4d
    sbc d                                         ; $530c: $9a
    or l                                          ; $530d: $b5
    ld a, a                                       ; $530e: $7f
    db $ed                                        ; $530f: $ed
    db $f4                                        ; $5310: $f4
    ld a, [c]                                     ; $5311: $f2
    ld [hl], d                                    ; $5312: $72
    add hl, hl                                    ; $5313: $29
    ld e, b                                       ; $5314: $58
    daa                                           ; $5315: $27
    ld d, e                                       ; $5316: $53
    sub [hl]                                      ; $5317: $96
    sub c                                         ; $5318: $91
    db $ed                                        ; $5319: $ed
    ld h, h                                       ; $531a: $64
    ld bc, $53b4                                  ; $531b: $01 $b4 $53
    ld d, d                                       ; $531e: $52
    db $e4                                        ; $531f: $e4
    ld b, d                                       ; $5320: $42
    sub a                                         ; $5321: $97
    ld e, c                                       ; $5322: $59
    ld l, d                                       ; $5323: $6a
    sub $5f                                       ; $5324: $d6 $5f
    sub b                                         ; $5326: $90
    cp [hl]                                       ; $5327: $be
    or b                                          ; $5328: $b0
    reti                                          ; $5329: $d9


    scf                                           ; $532a: $37
    cp a                                          ; $532b: $bf
    and h                                         ; $532c: $a4
    ld l, c                                       ; $532d: $69
    adc h                                         ; $532e: $8c
    ld c, e                                       ; $532f: $4b
    ld a, e                                       ; $5330: $7b
    ld c, l                                       ; $5331: $4d
    sbc d                                         ; $5332: $9a
    ld l, $18                                     ; $5333: $2e $18
    sub [hl]                                      ; $5335: $96
    ld e, d                                       ; $5336: $5a
    jr c, jr_021_5383                             ; $5337: $38 $4a

    rra                                           ; $5339: $1f
    jr jr_021_53b5                                ; $533a: $18 $79

    add h                                         ; $533c: $84
    ld d, b                                       ; $533d: $50
    cp c                                          ; $533e: $b9
    ld b, c                                       ; $533f: $41
    ld a, c                                       ; $5340: $79
    sbc c                                         ; $5341: $99
    jp hl                                         ; $5342: $e9


    call z, $d28b                                 ; $5343: $cc $8b $d2
    cp h                                          ; $5346: $bc
    ld e, h                                       ; $5347: $5c
    ldh [$ce], a                                  ; $5348: $e0 $ce
    ld c, e                                       ; $534a: $4b
    sbc d                                         ; $534b: $9a
    and b                                         ; $534c: $a0
    jr nz, @-$7a                                  ; $534d: $20 $84

    db $10                                        ; $534f: $10
    ld b, $a7                                     ; $5350: $06 $a7
    ld h, [hl]                                    ; $5352: $66
    ld [hl], d                                    ; $5353: $72
    ld [hl], a                                    ; $5354: $77
    xor e                                         ; $5355: $ab
    ld a, d                                       ; $5356: $7a
    db $fc                                        ; $5357: $fc
    reti                                          ; $5358: $d9


    ld d, a                                       ; $5359: $57
    ret nz                                        ; $535a: $c0

    rst $28                                       ; $535b: $ef
    inc bc                                        ; $535c: $03
    ld [hl], a                                    ; $535d: $77
    ld l, a                                       ; $535e: $6f
    ld a, l                                       ; $535f: $7d
    ld l, c                                       ; $5360: $69
    ld hl, sp-$0e                                 ; $5361: $f8 $f2
    ld a, [c]                                     ; $5363: $f2
    ld l, e                                       ; $5364: $6b
    jp nc, Jump_021_662c                          ; $5365: $d2 $2c $66

    sub $11                                       ; $5368: $d6 $11
    ld b, $47                                     ; $536a: $06 $47
    ld a, a                                       ; $536c: $7f
    ld d, c                                       ; $536d: $51
    db $eb                                        ; $536e: $eb
    ld [hl], e                                    ; $536f: $73
    rst $10                                       ; $5370: $d7
    db $fd                                        ; $5371: $fd
    rst $18                                       ; $5372: $df
    ld a, [$1080]                                 ; $5373: $fa $80 $10
    ld c, d                                       ; $5376: $4a
    add hl, de                                    ; $5377: $19
    sub h                                         ; $5378: $94
    inc [hl]                                      ; $5379: $34
    sub c                                         ; $537a: $91
    call Call_021_4ab2                            ; $537b: $cd $b2 $4a
    ld h, e                                       ; $537e: $63

jr_021_537f:
    sbc h                                         ; $537f: $9c
    sub a                                         ; $5380: $97
    rst $18                                       ; $5381: $df
    pop de                                        ; $5382: $d1

jr_021_5383:
    ld sp, $3593                                  ; $5383: $31 $93 $35
    dec sp                                        ; $5386: $3b
    ld e, d                                       ; $5387: $5a
    dec h                                         ; $5388: $25
    xor c                                         ; $5389: $a9
    dec hl                                        ; $538a: $2b
    ld b, $27                                     ; $538b: $06 $27
    jr jr_021_537f                                ; $538d: $18 $f0

    cp c                                          ; $538f: $b9
    inc [hl]                                      ; $5390: $34
    sub a                                         ; $5391: $97
    add d                                         ; $5392: $82
    ld a, c                                       ; $5393: $79
    xor [hl]                                      ; $5394: $ae
    xor b                                         ; $5395: $a8
    push af                                       ; $5396: $f5
    ld h, a                                       ; $5397: $67
    dec de                                        ; $5398: $1b
    ld b, d                                       ; $5399: $42
    ld [$3d61], sp                                ; $539a: $08 $61 $3d
    ld c, e                                       ; $539d: $4b
    adc [hl]                                      ; $539e: $8e
    ld d, a                                       ; $539f: $57
    sbc b                                         ; $53a0: $98
    rla                                           ; $53a1: $17
    push af                                       ; $53a2: $f5
    xor [hl]                                      ; $53a3: $ae
    jr jr_021_5383                                ; $53a4: $18 $dd

    rst $38                                       ; $53a6: $ff
    xor l                                         ; $53a7: $ad
    rrca                                          ; $53a8: $0f
    di                                            ; $53a9: $f3
    ld a, [c]                                     ; $53aa: $f2
    db $eb                                        ; $53ab: $eb
    sbc [hl]                                      ; $53ac: $9e
    pop de                                        ; $53ad: $d1
    ld e, a                                       ; $53ae: $5f
    add d                                         ; $53af: $82
    cp a                                          ; $53b0: $bf
    ldh [rBCPS], a                                ; $53b1: $e0 $68
    ld b, a                                       ; $53b3: $47
    rst $38                                       ; $53b4: $ff

jr_021_53b5:
    ld a, [hl+]                                   ; $53b5: $2a
    sub l                                         ; $53b6: $95
    or a                                          ; $53b7: $b7
    ld c, l                                       ; $53b8: $4d
    ld e, h                                       ; $53b9: $5c
    jp c, $372b                                   ; $53ba: $da $2b $37

    db $ec                                        ; $53bd: $ec
    or d                                          ; $53be: $b2
    ld e, $e5                                     ; $53bf: $1e $e5
    ld [hl], a                                    ; $53c1: $77
    ld [hl], h                                    ; $53c2: $74
    call z, $cd64                                 ; $53c3: $cc $64 $cd
    adc [hl]                                      ; $53c6: $8e
    ld d, [hl]                                    ; $53c7: $56
    ld c, c                                       ; $53c8: $49
    ld [c], a                                     ; $53c9: $e2
    adc $cb                                       ; $53ca: $ce $cb
    xor a                                         ; $53cc: $af
    dec h                                         ; $53cd: $25
    ld [hl], $5e                                  ; $53ce: $36 $5e
    ld e, [hl]                                    ; $53d0: $5e
    ld l, $ad                                     ; $53d1: $2e $ad
    and h                                         ; $53d3: $a4
    add c                                         ; $53d4: $81
    ld e, a                                       ; $53d5: $5f
    ld d, b                                       ; $53d6: $50
    ld [de], a                                    ; $53d7: $12
    sbc h                                         ; $53d8: $9c
    cp e                                          ; $53d9: $bb
    ld e, l                                       ; $53da: $5d
    sbc b                                         ; $53db: $98
    sub a                                         ; $53dc: $97

jr_021_53dd:
    ld e, a                                       ; $53dd: $5f
    ld d, d                                       ; $53de: $52
    ld l, h                                       ; $53df: $6c
    sub [hl]                                      ; $53e0: $96
    db $f4                                        ; $53e1: $f4
    db $e3                                        ; $53e2: $e3
    ld c, e                                       ; $53e3: $4b
    xor [hl]                                      ; $53e4: $ae
    ld d, d                                       ; $53e5: $52
    ld e, d                                       ; $53e6: $5a
    sub l                                         ; $53e7: $95
    db $e4                                        ; $53e8: $e4
    sub d                                         ; $53e9: $92
    ld [hl], c                                    ; $53ea: $71
    push hl                                       ; $53eb: $e5
    add [hl]                                      ; $53ec: $86
    ld [$2703], sp                                ; $53ed: $08 $03 $27
    ld h, l                                       ; $53f0: $65
    sub $67                                       ; $53f1: $d6 $67
    and a                                         ; $53f3: $a7
    ld c, h                                       ; $53f4: $4c
    ld h, a                                       ; $53f5: $67
    xor e                                         ; $53f6: $ab
    cpl                                           ; $53f7: $2f
    ld a, [hl+]                                   ; $53f8: $2a
    ld l, e                                       ; $53f9: $6b

Call_021_53fa:
    halt                                          ; $53fa: $76
    ld l, c                                       ; $53fb: $69
    cp d                                          ; $53fc: $ba
    adc $a5                                       ; $53fd: $ce $a5
    ld a, [$3c98]                                 ; $53ff: $fa $98 $3c
    nop                                           ; $5402: $00
    ld b, d                                       ; $5403: $42
    ret z                                         ; $5404: $c8

    adc e                                         ; $5405: $8b
    ld a, d                                       ; $5406: $7a
    dec c                                         ; $5407: $0d
    and [hl]                                      ; $5408: $a6
    ld sp, $b2ce                                  ; $5409: $31 $ce $b2
    ld a, [hl-]                                   ; $540c: $3a
    dec h                                         ; $540d: $25
    adc a                                         ; $540e: $8f
    jr nc, jr_021_5427                            ; $540f: $30 $16

    xor a                                         ; $5411: $af
    pop bc                                        ; $5412: $c1
    ret nz                                        ; $5413: $c0

jr_021_5414:
    ld [hl], h                                    ; $5414: $74
    ld a, [hl-]                                   ; $5415: $3a
    add hl, bc                                    ; $5416: $09
    rst $08                                       ; $5417: $cf
    and $b9                                       ; $5418: $e6 $b9
    or $ef                                        ; $541a: $f6 $ef
    jp nc, $9e74                                  ; $541c: $d2 $74 $9e

    db $fc                                        ; $541f: $fc
    dec bc                                        ; $5420: $0b
    jp c, $dac9                                   ; $5421: $da $c9 $da

    or h                                          ; $5424: $b4
    ld a, a                                       ; $5425: $7f
    ld c, l                                       ; $5426: $4d

jr_021_5427:
    sbc d                                         ; $5427: $9a
    ld b, c                                       ; $5428: $41
    ld c, c                                       ; $5429: $49
    inc de                                        ; $542a: $13
    reti                                          ; $542b: $d9


    ld h, d                                       ; $542c: $62
    ld h, [hl]                                    ; $542d: $66
    ld a, l                                       ; $542e: $7d
    ld c, c                                       ; $542f: $49
    ld d, e                                       ; $5430: $53
    sbc d                                         ; $5431: $9a
    jp hl                                         ; $5432: $e9


    ld [hl], h                                    ; $5433: $74
    ld e, [hl]                                    ; $5434: $5e
    ld h, [hl]                                    ; $5435: $66
    rst $00                                       ; $5436: $c7
    ld c, h                                       ; $5437: $4c
    ld b, c                                       ; $5438: $41
    jr @+$29                                      ; $5439: $18 $27

    ld h, l                                       ; $543b: $65
    sub $67                                       ; $543c: $d6 $67
    ld a, [hl-]                                   ; $543e: $3a
    call c, $fa51                                 ; $543f: $dc $51 $fa
    ld e, b                                       ; $5442: $58
    ld a, [c]                                     ; $5443: $f2
    add h                                         ; $5444: $84
    jr nc, jr_021_53dd                            ; $5445: $30 $96

    sbc d                                         ; $5447: $9a
    push af                                       ; $5448: $f5
    ld d, a                                       ; $5449: $57
    ld e, [hl]                                    ; $544a: $5e
    add l                                         ; $544b: $85
    db $ed                                        ; $544c: $ed
    ld a, [$8578]                                 ; $544d: $fa $78 $85
    pop de                                        ; $5450: $d1
    xor e                                         ; $5451: $ab
    ld c, h                                       ; $5452: $4c
    rst $10                                       ; $5453: $d7
    cp [hl]                                       ; $5454: $be
    pop bc                                        ; $5455: $c1
    jp c, Jump_000_231a                           ; $5456: $da $1a $23

    jp nz, Jump_021_5f16                          ; $5459: $c2 $16 $5f

    ld a, b                                       ; $545c: $78
    add e                                         ; $545d: $83
    ld [c], a                                     ; $545e: $e2
    ld l, e                                       ; $545f: $6b
    rst $38                                       ; $5460: $ff
    jp c, $2e5f                                   ; $5461: $da $5f $2e

    or c                                          ; $5464: $b1
    jp hl                                         ; $5465: $e9


    ld a, [hl-]                                   ; $5466: $3a
    or a                                          ; $5467: $b7
    ld [hl], d                                    ; $5468: $72
    inc hl                                        ; $5469: $23
    adc a                                         ; $546a: $8f
    jr nc, jr_021_5414                            ; $546b: $30 $a7

    and h                                         ; $546d: $a4

jr_021_546e:
    rst $08                                       ; $546e: $cf
    ld d, [hl]                                    ; $546f: $56
    sbc c                                         ; $5470: $99
    ld a, [c]                                     ; $5471: $f2
    jp c, $8420                                   ; $5472: $da $20 $84

    jr z, jr_021_54f4                             ; $5475: $28 $7d

    or [hl]                                       ; $5477: $b6
    jp z, $a7d4                                   ; $5478: $ca $d4 $a7

    ld sp, $0c22                                  ; $547b: $31 $22 $0c
    db $dd                                        ; $547e: $dd
    sub h                                         ; $547f: $94
    sub $a4                                       ; $5480: $d6 $a4
    sbc c                                         ; $5482: $99
    ld l, e                                       ; $5483: $6b
    xor h                                         ; $5484: $ac
    ld [hl], a                                    ; $5485: $77
    push bc                                       ; $5486: $c5
    dec a                                         ; $5487: $3d
    ld c, e                                       ; $5488: $4b
    inc sp                                        ; $5489: $33
    ld a, $4d                                     ; $548a: $3e $4d
    ld h, h                                       ; $548c: $64
    ld d, h                                       ; $548d: $54
    di                                            ; $548e: $f3
    ld e, c                                       ; $548f: $59
    sub $fe                                       ; $5490: $d6 $fe
    ld l, c                                       ; $5492: $69
    dec sp                                        ; $5493: $3b
    cp $3c                                        ; $5494: $fe $3c
    rst $20                                       ; $5496: $e7
    ld a, [de]                                    ; $5497: $1a
    db $eb                                        ; $5498: $eb
    ld e, l                                       ; $5499: $5d
    ld sp, $e4c7                                  ; $549a: $31 $c7 $e4
    sbc d                                         ; $549d: $9a
    inc [hl]                                      ; $549e: $34
    xor e                                         ; $549f: $ab
    ld d, e                                       ; $54a0: $53
    ld a, [c]                                     ; $54a1: $f2
    db $e3                                        ; $54a2: $e3
    set 1, e                                      ; $54a3: $cb $cb
    rst $28                                       ; $54a5: $ef
    ld a, b                                       ; $54a6: $78
    ld l, c                                       ; $54a7: $69
    ld l, h                                       ; $54a8: $6c
    ei                                            ; $54a9: $fb
    ld [de], a                                    ; $54aa: $12
    ld c, e                                       ; $54ab: $4b
    reti                                          ; $54ac: $d9


    add l                                         ; $54ad: $85
    xor [hl]                                      ; $54ae: $ae
    jr jr_021_54c7                                ; $54af: $18 $16

    ld h, d                                       ; $54b1: $62
    rst $38                                       ; $54b2: $ff
    ld l, h                                       ; $54b3: $6c
    sub [hl]                                      ; $54b4: $96
    or c                                          ; $54b5: $b1
    ld b, h                                       ; $54b6: $44
    or e                                          ; $54b7: $b3
    call nc, Call_021_79c2                        ; $54b8: $d4 $c2 $79
    ld sp, hl                                     ; $54bb: $f9
    dec b                                         ; $54bc: $05
    ld b, [hl]                                    ; $54bd: $46
    add l                                         ; $54be: $85
    ld e, l                                       ; $54bf: $5d
    and l                                         ; $54c0: $a5
    and l                                         ; $54c1: $a5
    cp l                                          ; $54c2: $bd
    db $e3                                        ; $54c3: $e3
    and l                                         ; $54c4: $a5
    or c                                          ; $54c5: $b1
    db $ed                                        ; $54c6: $ed

jr_021_54c7:
    ld c, e                                       ; $54c7: $4b
    inc l                                         ; $54c8: $2c
    dec b                                         ; $54c9: $05
    ld h, c                                       ; $54ca: $61
    xor l                                         ; $54cb: $ad
    ret                                           ; $54cc: $c9


    adc a                                         ; $54cd: $8f
    push hl                                       ; $54ce: $e5
    inc l                                         ; $54cf: $2c
    dec bc                                        ; $54d0: $0b
    sbc $77                                       ; $54d1: $de $77
    xor c                                         ; $54d3: $a9
    dec hl                                        ; $54d4: $2b
    ld b, $47                                     ; $54d5: $06 $47
    scf                                           ; $54d7: $37
    dec bc                                        ; $54d8: $0b
    xor [hl]                                      ; $54d9: $ae
    push af                                       ; $54da: $f5
    ld d, d                                       ; $54db: $52
    or b                                          ; $54dc: $b0
    ldh a, [$e7]                                  ; $54dd: $f0 $e7
    push hl                                       ; $54df: $e5
    rlca                                          ; $54e0: $07
    ld e, a                                       ; $54e1: $5f
    ret                                           ; $54e2: $c9


    ei                                            ; $54e3: $fb
    ld a, [hl-]                                   ; $54e4: $3a
    ld a, [bc]                                    ; $54e5: $0a
    ret nz                                        ; $54e6: $c0

    and a                                         ; $54e7: $a7
    jr nc, jr_021_546e                            ; $54e8: $30 $84

    ld bc, $1b47                                  ; $54ea: $01 $47 $1b
    rra                                           ; $54ed: $1f
    ld e, a                                       ; $54ee: $5f
    call nc, $6967                                ; $54ef: $d4 $67 $69
    sbc c                                         ; $54f2: $99
    sub a                                         ; $54f3: $97

jr_021_54f4:
    rra                                           ; $54f4: $1f
    ld a, h                                       ; $54f5: $7c
    dec h                                         ; $54f6: $25
    rst $28                                       ; $54f7: $ef
    db $eb                                        ; $54f8: $eb
    jr z, jr_021_54fb                             ; $54f9: $28 $00

jr_021_54fb:
    sbc a                                         ; $54fb: $9f
    jp nz, Jump_021_62ba                          ; $54fc: $c2 $ba $62

    ld d, $1f                                     ; $54ff: $16 $1f
    sbc a                                         ; $5501: $9f
    ld h, $32                                     ; $5502: $26 $32
    xor d                                         ; $5504: $aa
    ld sp, hl                                     ; $5505: $f9
    jp c, $d0bf                                   ; $5506: $da $bf $d0

    ld d, h                                       ; $5509: $54
    ld h, l                                       ; $550a: $65
    ld l, c                                       ; $550b: $69
    ld c, a                                       ; $550c: $4f
    rlca                                          ; $550d: $07
    ld e, a                                       ; $550e: $5f
    ret                                           ; $550f: $c9


    ei                                            ; $5510: $fb
    xor [hl]                                      ; $5511: $ae
    dec a                                         ; $5512: $3d
    srl h                                         ; $5513: $cb $3c
    inc hl                                        ; $5515: $23
    ld e, e                                       ; $5516: $5b
    sub e                                         ; $5517: $93
    add [hl]                                      ; $5518: $86
    dec sp                                        ; $5519: $3b
    cp b                                          ; $551a: $b8
    ld sp, $6836                                  ; $551b: $31 $36 $68
    cp l                                          ; $551e: $bd
    jp nc, $a8ac                                  ; $551f: $d2 $ac $a8

    push af                                       ; $5522: $f5
    rst $20                                       ; $5523: $e7
    add hl, sp                                    ; $5524: $39
    ei                                            ; $5525: $fb
    ld [de], a                                    ; $5526: $12
    db $db                                        ; $5527: $db
    push af                                       ; $5528: $f5
    dec [hl]                                      ; $5529: $35
    ld l, c                                       ; $552a: $69
    inc b                                         ; $552b: $04
    ld a, $da                                     ; $552c: $3e $da
    ld [$c703], sp                                ; $552e: $08 $03 $c7
    db $e4                                        ; $5531: $e4
    sbc d                                         ; $5532: $9a
    inc [hl]                                      ; $5533: $34
    xor e                                         ; $5534: $ab
    ld d, e                                       ; $5535: $53
    ld a, [c]                                     ; $5536: $f2
    di                                            ; $5537: $f3
    ld a, [c]                                     ; $5538: $f2
    dec sp                                        ; $5539: $3b
    ld e, [hl]                                    ; $553a: $5e

Jump_021_553b:
    ld a, [de]                                    ; $553b: $1a
    db $db                                        ; $553c: $db
    cp [hl]                                       ; $553d: $be
    call nz, $d652                                ; $553e: $c4 $52 $d6
    ld d, c                                       ; $5541: $51
    nop                                           ; $5542: $00
    ld a, $85                                     ; $5543: $3e $85
    ld [hl], l                                    ; $5545: $75
    push bc                                       ; $5546: $c5
    ld b, a                                       ; $5547: $47
    ld b, c                                       ; $5548: $41
    ld a, l                                       ; $5549: $7d
    sub b                                         ; $554a: $90
    pop hl                                        ; $554b: $e1
    daa                                           ; $554c: $27
    db $fd                                        ; $554d: $fd
    ld l, h                                       ; $554e: $6c
    ret                                           ; $554f: $c9


    ld [hl], b                                    ; $5550: $70
    rst $00                                       ; $5551: $c7
    ld c, e                                       ; $5552: $4b
    ld h, e                                       ; $5553: $63
    db $db                                        ; $5554: $db
    sub a                                         ; $5555: $97
    ld e, b                                       ; $5556: $58
    ld a, [bc]                                    ; $5557: $0a
    jp nz, $b196                                  ; $5558: $c2 $96 $b1

    and h                                         ; $555b: $a4
    sbc d                                         ; $555c: $9a
    rst $28                                       ; $555d: $ef
    xor l                                         ; $555e: $ad
    ld c, a                                       ; $555f: $4f

Call_021_5560:
    xor e                                         ; $5560: $ab

Call_021_5561:
    ld d, e                                       ; $5561: $53
    ld a, [c]                                     ; $5562: $f2
    dec bc                                        ; $5563: $0b
    sbc e                                         ; $5564: $9b
    dec h                                         ; $5565: $25
    ld c, a                                       ; $5566: $4f
    db $eb                                        ; $5567: $eb
    jr z, jr_021_556a                             ; $5568: $28 $00

jr_021_556a:
    sbc a                                         ; $556a: $9f
    jp nz, $0610                                  ; $556b: $c2 $10 $06

    rst $00                                       ; $556e: $c7
    db $e4                                        ; $556f: $e4
    sbc d                                         ; $5570: $9a
    inc [hl]                                      ; $5571: $34
    xor e                                         ; $5572: $ab
    ld d, e                                       ; $5573: $53
    ld a, [c]                                     ; $5574: $f2
    di                                            ; $5575: $f3
    ld a, [c]                                     ; $5576: $f2
    db $eb                                        ; $5577: $eb
    jr z, jr_021_557a                             ; $5578: $28 $00

jr_021_557a:
    sbc a                                         ; $557a: $9f
    jp nz, $b9e6                                  ; $557b: $c2 $e6 $b9

    ldh [$7d], a                                  ; $557e: $e0 $7d
    sub a                                         ; $5580: $97
    inc a                                         ; $5581: $3c
    ld [hl], a                                    ; $5582: $77
    cp h                                          ; $5583: $bc
    inc [hl]                                      ; $5584: $34
    or [hl]                                       ; $5585: $b6
    ld a, l                                       ; $5586: $7d
    adc c                                         ; $5587: $89
    and l                                         ; $5588: $a5
    ld [hl], h                                    ; $5589: $74
    push bc                                       ; $558a: $c5
    sub [hl]                                      ; $558b: $96
    ld a, [de]                                    ; $558c: $1a

Call_021_558d:
    ld e, e                                       ; $558d: $5b
    ei                                            ; $558e: $fb
    and a                                         ; $558f: $a7
    db $eb                                        ; $5590: $eb
    ld h, h                                       ; $5591: $64
    jp z, $b6d2                                   ; $5592: $ca $d2 $b6

    ld l, a                                       ; $5595: $6f
    ld [hl], l                                    ; $5596: $75
    dec [hl]                                      ; $5597: $35
    xor [hl]                                      ; $5598: $ae
    and h                                         ; $5599: $a4
    add c                                         ; $559a: $81
    ld e, a                                       ; $559b: $5f
    ld d, b                                       ; $559c: $50
    ld [de], a                                    ; $559d: $12
    ld a, h                                       ; $559e: $7c
    rst $10                                       ; $559f: $d7
    sbc [hl]                                      ; $55a0: $9e
    ld h, l                                       ; $55a1: $65
    db $ec                                        ; $55a2: $ec
    ld [hl-], a                                   ; $55a3: $32
    xor d                                         ; $55a4: $aa
    ld a, c                                       ; $55a5: $79
    rla                                           ; $55a6: $17
    inc c                                         ; $55a7: $0c
    dec a                                         ; $55a8: $3d
    adc e                                         ; $55a9: $8b
    ld a, [$ec2e]                                 ; $55aa: $fa $2e $ec
    ld a, d                                       ; $55ad: $7a
    ld d, a                                       ; $55ae: $57
    inc c                                         ; $55af: $0c
    rst $00                                       ; $55b0: $c7
    ld e, l                                       ; $55b1: $5d
    ld bc, $0847                                  ; $55b2: $01 $47 $08
    ld [hl], l                                    ; $55b5: $75
    ld e, [hl]                                    ; $55b6: $5e
    adc d                                         ; $55b7: $8a
    halt                                          ; $55b8: $76
    ld h, b                                       ; $55b9: $60
    ld c, l                                       ; $55ba: $4d
    sbc d                                         ; $55bb: $9a
    ld d, l                                       ; $55bc: $55
    ld l, c                                       ; $55bd: $69
    ld [hl+], a                                   ; $55be: $22
    dec de                                        ; $55bf: $1b
    res 0, l                                      ; $55c0: $cb $85
    ccf                                           ; $55c2: $3f
    sbc l                                         ; $55c3: $9d
    xor l                                         ; $55c4: $ad
    sub $14                                       ; $55c5: $d6 $14
    add h                                         ; $55c7: $84
    db $10                                        ; $55c8: $10
    ld b, $3d                                     ; $55c9: $06 $3d
    adc e                                         ; $55cb: $8b
    ld a, [$97ea]                                 ; $55cc: $fa $ea $97
    ret c                                         ; $55cf: $d8

    jp nc, $ad9e                                  ; $55d0: $d2 $9e $ad

    sub $94                                       ; $55d3: $d6 $94

jr_021_55d5:
    xor [hl]                                      ; $55d5: $ae
    jr jr_021_5615                                ; $55d6: $18 $3d

    jp z, $afc3                                   ; $55d8: $ca $c3 $af

    ld l, b                                       ; $55db: $68
    adc h                                         ; $55dc: $8c
    cp h                                          ; $55dd: $bc
    ld [hl], $b0                                  ; $55de: $36 $b0
    ld c, d                                       ; $55e0: $4a
    ld l, c                                       ; $55e1: $69
    pop bc                                        ; $55e2: $c1
    ei                                            ; $55e3: $fb
    jp c, $cff2                                   ; $55e4: $da $f2 $cf

    or c                                          ; $55e7: $b1
    add hl, de                                    ; $55e8: $19
    ld b, d                                       ; $55e9: $42
    jr z, jr_021_55d5                             ; $55ea: $28 $e9

Jump_021_55ec:
    ld l, e                                       ; $55ec: $6b
    or b                                          ; $55ed: $b0
    ld a, [c]                                     ; $55ee: $f2
    jp z, Jump_000_2956                           ; $55ef: $ca $56 $29

    call $d98e                                    ; $55f2: $cd $8e $d9
    sbc c                                         ; $55f5: $99
    or [hl]                                       ; $55f6: $b6
    db $d3                                        ; $55f7: $d3
    ld hl, sp-$08                                 ; $55f8: $f8 $f8
    ld a, [c]                                     ; $55fa: $f2
    or h                                          ; $55fb: $b4
    and h                                         ; $55fc: $a4
    ld e, a                                       ; $55fd: $5f
    ld a, h                                       ; $55fe: $7c
    dec b                                         ; $55ff: $05
    rst $18                                       ; $5600: $df
    ld [hl], e                                    ; $5601: $73
    add sp, $7c                                   ; $5602: $e8 $7c
    push hl                                       ; $5604: $e5
    or b                                          ; $5605: $b0
    db $eb                                        ; $5606: $eb
    ld [$dd03], sp                                ; $5607: $08 $03 $dd
    ld e, a                                       ; $560a: $5f
    adc d                                         ; $560b: $8a
    halt                                          ; $560c: $76
    ld h, b                                       ; $560d: $60
    ld c, l                                       ; $560e: $4d
    sbc d                                         ; $560f: $9a
    ld d, l                                       ; $5610: $55
    ld l, c                                       ; $5611: $69
    ld [hl+], a                                   ; $5612: $22
    sbc e                                         ; $5613: $9b
    ld a, l                                       ; $5614: $7d

jr_021_5615:
    adc c                                         ; $5615: $89
    dec c                                         ; $5616: $0d
    ld [hl-], a                                   ; $5617: $32
    ld a, h                                       ; $5618: $7c
    cpl                                           ; $5619: $2f
    sub a                                         ; $561a: $97
    add d                                         ; $561b: $82
    ld a, c                                       ; $561c: $79
    xor [hl]                                      ; $561d: $ae
    cp $df                                        ; $561e: $fe $df
    reti                                          ; $5620: $d9


    push af                                       ; $5621: $f5
    add l                                         ; $5622: $85
    add hl, hl                                    ; $5623: $29
    ccf                                           ; $5624: $3f
    ld hl, sp-$36                                 ; $5625: $f8 $ca
    ret z                                         ; $5627: $c8

    inc hl                                        ; $5628: $23
    inc c                                         ; $5629: $0c
    daa                                           ; $562a: $27
    db $dd                                        ; $562b: $dd
    ld a, [$2f8f]                                 ; $562c: $fa $8f $2f
    ld [$315d], a                                 ; $562f: $ea $5d $31
    ld b, a                                       ; $5632: $47
    pop de                                        ; $5633: $d1
    ld [hl-], a                                   ; $5634: $32
    or d                                          ; $5635: $b2
    ld b, c                                       ; $5636: $41
    ld d, l                                       ; $5637: $55
    ld [hl-], a                                   ; $5638: $32
    db $e3                                        ; $5639: $e3
    db $fc                                        ; $563a: $fc
    cp $f8                                        ; $563b: $fe $f8
    inc [hl]                                      ; $563d: $34
    sub c                                         ; $563e: $91
    adc l                                         ; $563f: $8d
    push hl                                       ; $5640: $e5
    add sp, $56                                   ; $5641: $e8 $56
    rra                                           ; $5643: $1f
    dec de                                        ; $5644: $1b
    add h                                         ; $5645: $84
    ld bc, $6996                                  ; $5646: $01 $96 $69
    sub h                                         ; $5649: $94
    ld d, a                                       ; $564a: $57
    sub $ac                                       ; $564b: $d6 $ac
    xor b                                         ; $564d: $a8
    push af                                       ; $564e: $f5
    sub a                                         ; $564f: $97
    db $f4                                        ; $5650: $f4
    ld e, l                                       ; $5651: $5d

jr_021_5652:
    jr nc, jr_021_5681                            ; $5652: $30 $2d

    and c                                         ; $5654: $a1
    ld b, d                                       ; $5655: $42
    cp c                                          ; $5656: $b9
    inc d                                         ; $5657: $14
    ld [hl], h                                    ; $5658: $74
    ld e, c                                       ; $5659: $59
    adc a                                         ; $565a: $8f
    ld [hl], d                                    ; $565b: $72
    ld h, c                                       ; $565c: $61
    db $fc                                        ; $565d: $fc
    adc l                                         ; $565e: $8d
    ld [hl], c                                    ; $565f: $71
    push af                                       ; $5660: $f5
    rst $38                                       ; $5661: $ff
    adc $bc                                       ; $5662: $ce $bc
    db $fc                                        ; $5664: $fc
    ld [hl-], a                                   ; $5665: $32
    or d                                          ; $5666: $b2
    add l                                         ; $5667: $85
    rra                                           ; $5668: $1f
    sub e                                         ; $5669: $93
    ld h, [hl]                                    ; $566a: $66
    ld a, [hl-]                                   ; $566b: $3a
    ld [hl], d                                    ; $566c: $72
    add e                                         ; $566d: $83
    ld [c], a                                     ; $566e: $e2
    ld e, l                                       ; $566f: $5d
    sub $a3                                       ; $5670: $d6 $a3
    db $fc                                        ; $5672: $fc
    ld a, [hl-]                                   ; $5673: $3a
    ld a, [bc]                                    ; $5674: $0a
    ret nz                                        ; $5675: $c0

    and a                                         ; $5676: $a7
    or b                                          ; $5677: $b0
    ld e, l                                       ; $5678: $5d
    ld e, b                                       ; $5679: $58
    xor l                                         ; $567a: $ad
    sbc e                                         ; $567b: $9b
    halt                                          ; $567c: $76
    adc h                                         ; $567d: $8c
    rst $28                                       ; $567e: $ef
    jr jr_021_5652                                ; $567f: $18 $d1

jr_021_5681:
    ld a, [hl+]                                   ; $5681: $2a
    jp hl                                         ; $5682: $e9


    ld b, d                                       ; $5683: $42
    dec c                                         ; $5684: $0d
    xor l                                         ; $5685: $ad
    push hl                                       ; $5686: $e5
    ld a, a                                       ; $5687: $7f
    ld c, l                                       ; $5688: $4d
    sbc d                                         ; $5689: $9a
    ld b, l                                       ; $568a: $45
    push af                                       ; $568b: $f5
    sub a                                         ; $568c: $97
    ld l, $18                                     ; $568d: $2e $18
    dec a                                         ; $568f: $3d
    set 1, e                                      ; $5690: $cb $cb
    adc a                                         ; $5692: $8f
    ld c, a                                       ; $5693: $4f
    inc de                                        ; $5694: $13
    reti                                          ; $5695: $d9


    inc l                                         ; $5696: $2c
    or e                                          ; $5697: $b3
    cpl                                           ; $5698: $2f
    or c                                          ; $5699: $b1
    dec h                                         ; $569a: $25
    ld a, l                                       ; $569b: $7d
    ld d, a                                       ; $569c: $57
    inc c                                         ; $569d: $0c
    sub [hl]                                      ; $569e: $96
    ld a, c                                       ; $569f: $79
    cp c                                          ; $56a0: $b9
    ld d, h                                       ; $56a1: $54
    sbc a                                         ; $56a2: $9f
    ld h, l                                       ; $56a3: $65
    and b                                         ; $56a4: $a0
    db $fc                                        ; $56a5: $fc
    sub d                                         ; $56a6: $92
    ld a, [hl]                                    ; $56a7: $7e
    sub a                                         ; $56a8: $97
    and $e5                                       ; $56a9: $e6 $e5
    ld [hl], a                                    ; $56ab: $77
    inc l                                         ; $56ac: $2c
    cp c                                          ; $56ad: $b9
    jr z, jr_021_5705                             ; $56ae: $28 $55

    cp a                                          ; $56b0: $bf
    ld d, [hl]                                    ; $56b1: $56
    adc l                                         ; $56b2: $8d
    ld de, $1661                                  ; $56b3: $11 $61 $16
    sbc b                                         ; $56b6: $98
    sub a                                         ; $56b7: $97
    dec bc                                        ; $56b8: $0b
    di                                            ; $56b9: $f3
    ld a, [c]                                     ; $56ba: $f2
    xor e                                         ; $56bb: $ab
    ld e, a                                       ; $56bc: $5f
    ld h, d                                       ; $56bd: $62
    ld c, e                                       ; $56be: $4b
    ld a, e                                       ; $56bf: $7b
    ld a, [hl]                                    ; $56c0: $7e
    ld a, a                                       ; $56c1: $7f
    ld c, l                                       ; $56c2: $4d
    sbc d                                         ; $56c3: $9a
    pop af                                        ; $56c4: $f1
    ld c, d                                       ; $56c5: $4a
    sbc $15                                       ; $56c6: $de $15
    inc bc                                        ; $56c8: $03
    sub [hl]                                      ; $56c9: $96
    ld d, l                                       ; $56ca: $55
    ld l, c                                       ; $56cb: $69
    ld [hl+], a                                   ; $56cc: $22
    and e                                         ; $56cd: $a3
    sbc d                                         ; $56ce: $9a
    rst $08                                       ; $56cf: $cf
    cp [hl]                                       ; $56d0: $be
    call nz, $f496                                ; $56d1: $c4 $96 $f4
    ld [$c703], sp                                ; $56d4: $08 $03 $c7
    ld e, h                                       ; $56d7: $5c
    or [hl]                                       ; $56d8: $b6
    ld h, $cd                                     ; $56d9: $26 $cd
    ld h, d                                       ; $56db: $62
    ld h, [hl]                                    ; $56dc: $66
    ld a, l                                       ; $56dd: $7d
    sub a                                         ; $56de: $97
    and $e5                                       ; $56df: $e6 $e5
    ld [hl], a                                    ; $56e1: $77
    inc l                                         ; $56e2: $2c
    cp c                                          ; $56e3: $b9
    jr z, jr_021_573b                             ; $56e4: $28 $55

    cp a                                          ; $56e6: $bf
    ld d, [hl]                                    ; $56e7: $56
    adc l                                         ; $56e8: $8d
    or c                                          ; $56e9: $b1
    db $eb                                        ; $56ea: $eb
    inc l                                         ; $56eb: $2c
    di                                            ; $56ec: $f3
    ld [hl], d                                    ; $56ed: $72
    xor c                                         ; $56ee: $a9
    ld a, $5d                                     ; $56ef: $3e $5d
    and b                                         ; $56f1: $a0
    ld [de], a                                    ; $56f2: $12
    ld h, h                                       ; $56f3: $64
    inc de                                        ; $56f4: $13
    ld a, a                                       ; $56f5: $7f
    cp h                                          ; $56f6: $bc
    jp nz, Jump_021_57f8                          ; $56f7: $c2 $f8 $57

    cp c                                          ; $56fa: $b9
    inc d                                         ; $56fb: $14
    inc c                                         ; $56fc: $0c
    ld [hl-], a                                   ; $56fd: $32
    ld a, h                                       ; $56fe: $7c
    cpl                                           ; $56ff: $2f
    sub a                                         ; $5700: $97
    add d                                         ; $5701: $82
    ld a, c                                       ; $5702: $79
    ld d, c                                       ; $5703: $51
    sbc a                                         ; $5704: $9f

jr_021_5705:
    push af                                       ; $5705: $f5
    and l                                         ; $5706: $a5
    ld e, c                                       ; $5707: $59
    ld l, b                                       ; $5708: $68
    xor d                                         ; $5709: $aa
    or d                                          ; $570a: $b2
    sbc b                                         ; $570b: $98
    ld e, c                                       ; $570c: $59
    ld a, a                                       ; $570d: $7f
    or [hl]                                       ; $570e: $b6
    ld a, b                                       ; $570f: $78
    db $eb                                        ; $5710: $eb
    ccf                                           ; $5711: $3f
    sbc l                                         ; $5712: $9d
    rst $18                                       ; $5713: $df
    ld b, a                                       ; $5714: $47
    db $eb                                        ; $5715: $eb
    cp $52                                        ; $5716: $fe $52
    or h                                          ; $5718: $b4
    inc bc                                        ; $5719: $03
    ld l, e                                       ; $571a: $6b
    jp nc, Jump_021_4a0c                          ; $571b: $d2 $0c $4a

    sbc d                                         ; $571e: $9a
    ret z                                         ; $571f: $c8

    ld d, $33                                     ; $5720: $16 $33
    db $eb                                        ; $5722: $eb
    db $d3                                        ; $5723: $d3
    ld b, b                                       ; $5724: $40
    cpl                                           ; $5725: $2f
    ld hl, $3d0c                                  ; $5726: $21 $0c $3d
    adc e                                         ; $5729: $8b
    ld a, d                                       ; $572a: $7a
    dec c                                         ; $572b: $0d
    and [hl]                                      ; $572c: $a6
    dec sp                                        ; $572d: $3b
    or a                                          ; $572e: $b7
    and e                                         ; $572f: $a3
    nop                                           ; $5730: $00
    ld a, h                                       ; $5731: $7c
    ld a, [bc]                                    ; $5732: $0a
    xor e                                         ; $5733: $ab
    ld [hl], l                                    ; $5734: $75
    push bc                                       ; $5735: $c5
    sub [hl]                                      ; $5736: $96
    push de                                       ; $5737: $d5
    add hl, hl                                    ; $5738: $29
    ld sp, hl                                     ; $5739: $f9
    add l                                         ; $573a: $85

jr_021_573b:
    sub a                                         ; $573b: $97
    sbc [hl]                                      ; $573c: $9e
    cp e                                          ; $573d: $bb
    or [hl]                                       ; $573e: $b6
    pop af                                        ; $573f: $f1
    ld d, c                                       ; $5740: $51
    ld a, [$349a]                                 ; $5741: $fa $9a $34
    ld [bc], a                                    ; $5744: $02
    ld [$a703], sp                                ; $5745: $08 $03 $a7
    inc h                                         ; $5748: $24
    ld [hl], a                                    ; $5749: $77
    sub b                                         ; $574a: $90
    ld [hl+], a                                   ; $574b: $22
    dec c                                         ; $574c: $0d
    jp nz, $d2dd                                  ; $574d: $c2 $dd $d2

    ld b, h                                       ; $5750: $44
    ld b, [hl]                                    ; $5751: $46
    dec [hl]                                      ; $5752: $35
    rra                                           ; $5753: $1f
    ld l, b                                       ; $5754: $68
    add e                                         ; $5755: $83
    jr nc, jr_021_5795                            ; $5756: $30 $3d

    and h                                         ; $5758: $a4
    reti                                          ; $5759: $d9


    cp c                                          ; $575a: $b9
    dec l                                         ; $575b: $2d

jr_021_575c:
    ld e, a                                       ; $575c: $5f
    dec h                                         ; $575d: $25
    or c                                          ; $575e: $b1
    sbc l                                         ; $575f: $9d
    xor [hl]                                      ; $5760: $ae
    cp $35                                        ; $5761: $fe $35
    inc [hl]                                      ; $5763: $34
    adc e                                         ; $5764: $8b
    xor a                                         ; $5765: $af
    ld a, d                                       ; $5766: $7a
    ld [hl], c                                    ; $5767: $71
    cp l                                          ; $5768: $bd
    inc d                                         ; $5769: $14
    sbc e                                         ; $576a: $9b
    reti                                          ; $576b: $d9


    rst $10                                       ; $576c: $d7
    ld bc, $4761                                  ; $576d: $01 $61 $47
    cp a                                          ; $5770: $bf
    ld a, [hl-]                                   ; $5771: $3a
    inc l                                         ; $5772: $2c
    ld a, h                                       ; $5773: $7c
    add h                                         ; $5774: $84
    ld bc, $1fad                                  ; $5775: $01 $ad $1f
    ld h, e                                       ; $5778: $63
    ld c, [hl]                                    ; $5779: $4e
    inc bc                                        ; $577a: $03
    cp l                                          ; $577b: $bd
    add h                                         ; $577c: $84
    jr nc, jr_021_575c                            ; $577d: $30 $dd

    or h                                          ; $577f: $b4

Call_021_5780:
    ld h, e                                       ; $5780: $63
    ld a, h                                       ; $5781: $7c
    rst $00                                       ; $5782: $c7
    adc b                                         ; $5783: $88
    ld d, [hl]                                    ; $5784: $56
    ld c, c                                       ; $5785: $49
    rla                                           ; $5786: $17
    cp d                                          ; $5787: $ba
    ld h, b                                       ; $5788: $60
    dec a                                         ; $5789: $3d
    ccf                                           ; $578a: $3f

jr_021_578b:
    ld d, [hl]                                    ; $578b: $56
    add hl, de                                    ; $578c: $19
    cp $3c                                        ; $578d: $fe $3c
    ld [hl], a                                    ; $578f: $77
    cp h                                          ; $5790: $bc
    inc [hl]                                      ; $5791: $34
    or [hl]                                       ; $5792: $b6
    ld a, l                                       ; $5793: $7d
    adc c                                         ; $5794: $89

jr_021_5795:
    and l                                         ; $5795: $a5
    ld [hl], b                                    ; $5796: $70
    rst $00                                       ; $5797: $c7
    ld e, [hl]                                    ; $5798: $5e
    dec b                                         ; $5799: $05

Jump_021_579a:
    call Call_021_6b42                            ; $579a: $cd $42 $6b
    jp nc, $482c                                  ; $579d: $d2 $2c $48

    add h                                         ; $57a0: $84
    ld bc, $1fad                                  ; $57a1: $01 $ad $1f
    ld h, e                                       ; $57a4: $63
    ld [hl+], a                                   ; $57a5: $22
    inc c                                         ; $57a6: $0c
    dec a                                         ; $57a7: $3d
    ccf                                           ; $57a8: $3f
    ld d, [hl]                                    ; $57a9: $56
    add hl, de                                    ; $57aa: $19
    cp $3c                                        ; $57ab: $fe $3c
    ld [hl], a                                    ; $57ad: $77
    cp h                                          ; $57ae: $bc
    inc [hl]                                      ; $57af: $34
    or [hl]                                       ; $57b0: $b6

Call_021_57b1:
    ld a, l                                       ; $57b1: $7d
    adc c                                         ; $57b2: $89
    and l                                         ; $57b3: $a5
    xor h                                         ; $57b4: $ac
    dec [hl]                                      ; $57b5: $35
    dec c                                         ; $57b6: $0d
    inc a                                         ; $57b7: $3c
    sbc d                                         ; $57b8: $9a
    add l                                         ; $57b9: $85
    sub $a4                                       ; $57ba: $d6 $a4
    ld e, c                                       ; $57bc: $59
    sub b                                         ; $57bd: $90
    call c, Call_021_57b1                         ; $57be: $dc $b1 $57
    ld b, c                                       ; $57c1: $41
    jr jr_021_578b                                ; $57c2: $18 $c7

    inc h                                         ; $57c4: $24
    push de                                       ; $57c5: $d5
    ld a, h                                       ; $57c6: $7c
    halt                                          ; $57c7: $76
    ld c, d                                       ; $57c8: $4a
    ldh a, [$de]                                  ; $57c9: $f0 $de
    ld h, l                                       ; $57cb: $65
    db $eb                                        ; $57cc: $eb
    ld d, c                                       ; $57cd: $51
    ld a, [hl]                                    ; $57ce: $7e
    dec e                                         ; $57cf: $1d
    dec b                                         ; $57d0: $05
    ldh [rHDMA3], a                               ; $57d1: $e0 $53
    ret c                                         ; $57d3: $d8

    ld l, $ac                                     ; $57d4: $2e $ac
    sub $4d                                       ; $57d6: $d6 $4d
    dec sp                                        ; $57d8: $3b
    add $77                                       ; $57d9: $c6 $77
    adc h                                         ; $57db: $8c
    ld l, b                                       ; $57dc: $68
    sub l                                         ; $57dd: $95
    ld [hl], h                                    ; $57de: $74
    and c                                         ; $57df: $a1
    add [hl]                                      ; $57e0: $86
    jr nc, jr_021_57f9                            ; $57e1: $30 $16

    ld e, d                                       ; $57e3: $5a
    sub e                                         ; $57e4: $93
    ld h, [hl]                                    ; $57e5: $66
    ld b, c                                       ; $57e6: $41
    ld [hl], d                                    ; $57e7: $72
    rst $00                                       ; $57e8: $c7
    ld e, [hl]                                    ; $57e9: $5e
    dec b                                         ; $57ea: $05
    ld h, c                                       ; $57eb: $61
    dec a                                         ; $57ec: $3d
    ccf                                           ; $57ed: $3f
    ld d, [hl]                                    ; $57ee: $56
    add hl, de                                    ; $57ef: $19
    cp $3c                                        ; $57f0: $fe $3c
    ld [hl], a                                    ; $57f2: $77
    cp h                                          ; $57f3: $bc
    inc [hl]                                      ; $57f4: $34
    or [hl]                                       ; $57f5: $b6
    ld a, l                                       ; $57f6: $7d
    adc c                                         ; $57f7: $89

Jump_021_57f8:
    and l                                         ; $57f8: $a5

jr_021_57f9:
    ld [hl], b                                    ; $57f9: $70
    rst $10                                       ; $57fa: $d7
    xor d                                         ; $57fb: $aa
    ld [hl+], a                                   ; $57fc: $22
    ld c, l                                       ; $57fd: $4d
    sub a                                         ; $57fe: $97
    xor l                                         ; $57ff: $ad
    ld d, l                                       ; $5800: $55
    xor l                                         ; $5801: $ad
    ccf                                           ; $5802: $3f
    ld e, l                                       ; $5803: $5d
    call z, Call_021_4fac                         ; $5804: $cc $ac $4f
    dec h                                         ; $5807: $25
    dec c                                         ; $5808: $0d
    ld sp, $0184                                  ; $5809: $31 $84 $01
    sub [hl]                                      ; $580c: $96
    ld e, d                                       ; $580d: $5a
    cp b                                          ; $580e: $b8
    jr nz, jr_021_583b                            ; $580f: $20 $2a

    sbc e                                         ; $5811: $9b
    and l                                         ; $5812: $a5
    ld d, $ce                                     ; $5813: $16 $ce
    cp [hl]                                       ; $5815: $be

Jump_021_5816:
    and h                                         ; $5816: $a4
    ld sp, $2b36                                  ; $5817: $31 $36 $2b
    cpl                                           ; $581a: $2f
    adc a                                         ; $581b: $8f
    jr nc, @+$3f                                  ; $581c: $30 $3d

    set 1, e                                      ; $581e: $cb $cb
    ld c, a                                       ; $5820: $4f
    push hl                                       ; $5821: $e5
    rst $10                                       ; $5822: $d7
    and h                                         ; $5823: $a4
    ld e, c                                       ; $5824: $59
    sub b                                         ; $5825: $90
    sub a                                         ; $5826: $97
    add d                                         ; $5827: $82

jr_021_5828:
    xor [hl]                                      ; $5828: $ae
    ld e, e                                       ; $5829: $5b
    adc a                                         ; $582a: $8f
    ld a, [c]                                     ; $582b: $f2
    dec bc                                        ; $582c: $0b
    xor [hl]                                      ; $582d: $ae
    ld b, h                                       ; $582e: $44
    xor b                                         ; $582f: $a8
    adc l                                         ; $5830: $8d
    and l                                         ; $5831: $a5
    add h                                         ; $5832: $84
    cp e                                          ; $5833: $bb
    jr nc, jr_021_5865                            ; $5834: $30 $2f

    sub d                                         ; $5836: $92
    ld h, $28                                     ; $5837: $26 $28
    di                                            ; $5839: $f3
    ld a, [c]                                     ; $583a: $f2

jr_021_583b:
    ld a, [c]                                     ; $583b: $f2
    ld e, l                                       ; $583c: $5d
    or [hl]                                       ; $583d: $b6
    and e                                         ; $583e: $a3
    or e                                          ; $583f: $b3
    add c                                         ; $5840: $81
    xor c                                         ; $5841: $a9
    db $fc                                        ; $5842: $fc
    ld c, [hl]                                    ; $5843: $4e
    add hl, sp                                    ; $5844: $39
    or $cc                                        ; $5845: $f6 $cc
    ld h, e                                       ; $5847: $63
    ld c, a                                       ; $5848: $4f
    sbc a                                         ; $5849: $9f
    add $98                                       ; $584a: $c6 $98
    db $fc                                        ; $584c: $fc
    or e                                          ; $584d: $b3
    ld l, $18                                     ; $584e: $2e $18
    daa                                           ; $5850: $27
    ld l, e                                       ; $5851: $6b
    db $fd                                        ; $5852: $fd
    rlca                                          ; $5853: $07
    ld b, [hl]                                    ; $5854: $46
    ld a, [hl]                                    ; $5855: $7e
    ld c, l                                       ; $5856: $4d
    sbc d                                         ; $5857: $9a
    push bc                                       ; $5858: $c5
    call z, $d4fa                                 ; $5859: $cc $fa $d4

jr_021_585c:
    rst $20                                       ; $585c: $e7
    push hl                                       ; $585d: $e5
    and a                                         ; $585e: $a7
    ld b, h                                       ; $585f: $44
    ld l, c                                       ; $5860: $69
    xor b                                         ; $5861: $a8
    ld a, [$c9f0]                                 ; $5862: $fa $f0 $c9

jr_021_5865:
    rst $10                                       ; $5865: $d7
    ld c, [hl]                                    ; $5866: $4e
    dec d                                         ; $5867: $15
    add [hl]                                      ; $5868: $86
    jr nc, jr_021_5828                            ; $5869: $30 $bd

    jp nc, Jump_021_52ac                          ; $586b: $d2 $ac $52

    ld e, d                                       ; $586e: $5a
    ldh a, [$be]                                  ; $586f: $f0 $be
    ld c, e                                       ; $5871: $4b
    sbc [hl]                                      ; $5872: $9e
    ld [hl], e                                    ; $5873: $73
    ld c, c                                       ; $5874: $49
    db $d3                                        ; $5875: $d3
    adc [hl]                                      ; $5876: $8e
    cp a                                          ; $5877: $bf
    ld l, e                                       ; $5878: $6b
    xor a                                         ; $5879: $af
    ld c, c                                       ; $587a: $49
    or e                                          ; $587b: $b3
    ld hl, sp+$6a                                 ; $587c: $f8 $6a
    db $fd                                        ; $587e: $fd
    dec e                                         ; $587f: $1d
    cpl                                           ; $5880: $2f
    adc l                                         ; $5881: $8d
    ld l, l                                       ; $5882: $6d
    ld e, a                                       ; $5883: $5f
    ld h, d                                       ; $5884: $62
    add hl, hl                                    ; $5885: $29
    ld d, e                                       ; $5886: $53
    rra                                           ; $5887: $1f
    db $dd                                        ; $5888: $dd
    and b                                         ; $5889: $a0
    jr c, @+$44                                   ; $588a: $38 $42

    xor b                                         ; $588c: $a8
    ld l, l                                       ; $588d: $6d
    ld a, h                                       ; $588e: $7c
    ld c, c                                       ; $588f: $49
    or c                                          ; $5890: $b1
    reti                                          ; $5891: $d9


    or l                                          ; $5892: $b5
    rst $10                                       ; $5893: $d7
    and h                                         ; $5894: $a4
    ld e, c                                       ; $5895: $59
    ldh a, [$be]                                  ; $5896: $f0 $be
    ld c, d                                       ; $5898: $4a
    ld c, l                                       ; $5899: $4d
    ld d, b                                       ; $589a: $50
    inc e                                         ; $589b: $1c
    ld h, c                                       ; $589c: $61
    sub [hl]                                      ; $589d: $96
    sub l                                         ; $589e: $95
    db $ec                                        ; $589f: $ec
    db $fc                                        ; $58a0: $fc
    ld hl, sp+$1f                                 ; $58a1: $f8 $1f
    ld a, a                                       ; $58a3: $7f
    ld l, c                                       ; $58a4: $69
    ld e, [hl]                                    ; $58a5: $5e
    ld a, [hl]                                    ; $58a6: $7e
    xor l                                         ; $58a7: $ad
    ld l, c                                       ; $58a8: $69
    ldh [$d7], a                                  ; $58a9: $e0 $d7
    call $e674                                    ; $58ab: $cd $74 $e6
    push hl                                       ; $58ae: $e5
    jp nz, Jump_021_579a                          ; $58af: $c2 $9a $57

    ld b, c                                       ; $58b2: $41
    ld e, e                                       ; $58b3: $5b
    ld c, e                                       ; $58b4: $4b
    ld l, h                                       ; $58b5: $6c
    cp h                                          ; $58b6: $bc
    cp h                                          ; $58b7: $bc
    ld e, h                                       ; $58b8: $5c
    ld e, d                                       ; $58b9: $5a
    ld d, c                                       ; $58ba: $51
    jr jr_021_585c                                ; $58bb: $18 $9f

    or h                                          ; $58bd: $b4
    db $eb                                        ; $58be: $eb
    add e                                         ; $58bf: $83
    bit 4, c                                      ; $58c0: $cb $61
    call $c0ab                                    ; $58c2: $cd $ab $c0
    ld l, $4d                                     ; $58c5: $2e $4d
    daa                                           ; $58c7: $27
    ret                                           ; $58c8: $c9


    ld [hl], a                                    ; $58c9: $77
    pop bc                                        ; $58ca: $c1
    cp l                                          ; $58cb: $bd
    jp nc, Jump_021_52ac                          ; $58cc: $d2 $ac $52

    ld e, d                                       ; $58cf: $5a
    ld d, l                                       ; $58d0: $55
    cp [hl]                                       ; $58d1: $be
    xor d                                         ; $58d2: $aa
    rst $08                                       ; $58d3: $cf
    res 5, a                                      ; $58d4: $cb $af
    ld [hl-], a                                   ; $58d6: $32
    ld [hl+], a                                   ; $58d7: $22
    ld c, a                                       ; $58d8: $4f
    cp [hl]                                       ; $58d9: $be
    sub $34                                       ; $58da: $d6 $34
    ldh a, [$eb]                                  ; $58dc: $f0 $eb
    sbc [hl]                                      ; $58de: $9e
    sub a                                         ; $58df: $97
    ld a, h                                       ; $58e0: $7c

jr_021_58e1:
    ld d, b                                       ; $58e1: $50
    and l                                         ; $58e2: $a5
    db $fc                                        ; $58e3: $fc
    jp c, Jump_021_62cd                           ; $58e4: $da $cd $62

    ld h, [hl]                                    ; $58e7: $66
    db $fd                                        ; $58e8: $fd
    ld d, d                                       ; $58e9: $52
    jr nc, jr_021_58e1                            ; $58ea: $30 $f5

    ld a, c                                       ; $58ec: $79
    ld sp, hl                                     ; $58ed: $f9
    sub l                                         ; $58ee: $95
    inc [hl]                                      ; $58ef: $34
    ld [de], a                                    ; $58f0: $12
    ld b, h                                       ; $58f1: $44
    dec b                                         ; $58f2: $05
    ld a, b                                       ; $58f3: $78
    ret c                                         ; $58f4: $d8

    and l                                         ; $58f5: $a5
    ld a, c                                       ; $58f6: $79
    ld sp, hl                                     ; $58f7: $f9
    dec e                                         ; $58f8: $1d
    ld c, e                                       ; $58f9: $4b
    ld l, $cd                                     ; $58fa: $2e $cd
    ld e, d                                       ; $58fc: $5a
    dec [hl]                                      ; $58fd: $35
    ld b, [hl]                                    ; $58fe: $46
    add h                                         ; $58ff: $84
    ld bc, $ca3d                                  ; $5900: $01 $3d $ca
    set 2, a                                      ; $5903: $cb $d7
    ld h, b                                       ; $5905: $60
    ld h, b                                       ; $5906: $60
    ld a, [hl-]                                   ; $5907: $3a
    sbc l                                         ; $5908: $9d
    add h                                         ; $5909: $84
    ld h, a                                       ; $590a: $67
    di                                            ; $590b: $f3
    ld e, h                                       ; $590c: $5c
    ei                                            ; $590d: $fb
    and a                                         ; $590e: $a7
    ld l, e                                       ; $590f: $6b
    daa                                           ; $5910: $27
    add a                                         ; $5911: $87
    and l                                         ; $5912: $a5
    cp l                                          ; $5913: $bd
    ld a, [hl+]                                   ; $5914: $2a
    ret                                           ; $5915: $c9


    cp [hl]                                       ; $5916: $be
    ld d, b                                       ; $5917: $50
    xor c                                         ; $5918: $a9
    ccf                                           ; $5919: $3f
    db $db                                        ; $591a: $db
    push af                                       ; $591b: $f5
    rrca                                          ; $591c: $0f
    ld h, c                                       ; $591d: $61
    sub a                                         ; $591e: $97
    and $e5                                       ; $591f: $e6 $e5
    rst $20                                       ; $5921: $e7
    xor a                                         ; $5922: $af
    ld d, l                                       ; $5923: $55
    ld a, c                                       ; $5924: $79
    add c                                         ; $5925: $81
    jp c, $0caa                                   ; $5926: $da $aa $0c

    jp Jump_021_49a4                              ; $5929: $c3 $a4 $49


    ld h, [hl]                                    ; $592c: $66
    adc b                                         ; $592d: $88

Jump_021_592e:
    ld [hl], $cb                                  ; $592e: $36 $cb
    jp c, $f3ef                                   ; $5930: $da $ef $f3

    ld a, [c]                                     ; $5933: $f2
    ld a, [c]                                     ; $5934: $f2
    dec [hl]                                      ; $5935: $35
    jr jr_021_599c                                ; $5936: $18 $64

    ld hl, sp-$15                                 ; $5938: $f8 $eb
    ret z                                         ; $593a: $c8

Jump_021_593b:
    cp e                                          ; $593b: $bb
    scf                                           ; $593c: $37
    and e                                         ; $593d: $a3
    ld e, e                                       ; $593e: $5b
    db $fd                                        ; $593f: $fd
    ret nz                                        ; $5940: $c0

    adc l                                         ; $5941: $8d
    ld l, l                                       ; $5942: $6d
    rst $28                                       ; $5943: $ef
    jp nc, $bcbc                                  ; $5944: $d2 $bc $bc

    inc a                                         ; $5947: $3c
    jp nz, $1aa7                                  ; $5948: $c2 $a7 $1a

    sbc c                                         ; $594b: $99
    ld a, l                                       ; $594c: $7d
    dec b                                         ; $594d: $05

Call_021_594e:
    ld a, h                                       ; $594e: $7c
    ld d, l                                       ; $594f: $55
    ld d, h                                       ; $5950: $54
    add b                                         ; $5951: $80
    ld e, l                                       ; $5952: $5d
    ld e, b                                       ; $5953: $58
    rst $30                                       ; $5954: $f7
    db $f4                                        ; $5955: $f4
    sbc e                                         ; $5956: $9b
    inc b                                         ; $5957: $04
    db $e3                                        ; $5958: $e3
    xor a                                         ; $5959: $af
    sub a                                         ; $595a: $97
    ld [hl], l                                    ; $595b: $75
    sub a                                         ; $595c: $97
    or h                                          ; $595d: $b4
    rra                                           ; $595e: $1f
    jr nz, jr_021_59c6                            ; $595f: $20 $65

    dec l                                         ; $5961: $2d
    and h                                         ; $5962: $a4
    sbc l                                         ; $5963: $9d
    ld b, a                                       ; $5964: $47
    ld [$b129], sp                                ; $5965: $08 $29 $b1
    ld a, c                                       ; $5968: $79
    ld sp, hl                                     ; $5969: $f9
    or l                                          ; $596a: $b5
    call nz, $cbc6                                ; $596b: $c4 $c6 $cb
    sla l                                         ; $596e: $cb $25
    add sp, -$7e                                  ; $5970: $e8 $82
    ld bc, $fc2d                                  ; $5972: $01 $2d $fc
    cp a                                          ; $5975: $bf
    jp $94ec                                      ; $5976: $c3 $ec $94


    add c                                         ; $5979: $81
    add $47                                       ; $597a: $c6 $47
    db $db                                        ; $597c: $db
    jp hl                                         ; $597d: $e9


    xor a                                         ; $597e: $af
    sub b                                         ; $597f: $90
    and h                                         ; $5980: $a4
    db $ed                                        ; $5981: $ed
    ld hl, sp-$15                                 ; $5982: $f8 $eb
    ret z                                         ; $5984: $c8

    xor l                                         ; $5985: $ad
    ld e, $d0                                     ; $5986: $1e $d0
    sub $72                                       ; $5988: $d6 $72
    inc bc                                        ; $598a: $03
    ld a, d                                       ; $598b: $7a
    add $dd                                       ; $598c: $c6 $dd
    ld [hl], c                                    ; $598e: $71
    ld a, [c]                                     ; $598f: $f2
    ld l, h                                       ; $5990: $6c
    ld c, d                                       ; $5991: $4a
    ld l, h                                       ; $5992: $6c
    rst $00                                       ; $5993: $c7
    ld a, a                                       ; $5994: $7f
    ld c, d                                       ; $5995: $4a
    ldh a, [$eb]                                  ; $5996: $f0 $eb
    ld sp, hl                                     ; $5998: $f9
    ld a, [bc]                                    ; $5999: $0a
    pop af                                        ; $599a: $f1
    dec de                                        ; $599b: $1b

jr_021_599c:
    inc c                                         ; $599c: $0c
    daa                                           ; $599d: $27
    dec bc                                        ; $599e: $0b
    jp c, $3771                                   ; $599f: $da $71 $37

    ld d, [hl]                                    ; $59a2: $56
    add l                                         ; $59a3: $85
    dec sp                                        ; $59a4: $3b
    cpl                                           ; $59a5: $2f
    cp a                                          ; $59a6: $bf
    ld c, d                                       ; $59a7: $4a
    push hl                                       ; $59a8: $e5
    ld e, l                                       ; $59a9: $5d
    db $eb                                        ; $59aa: $eb
    cpl                                           ; $59ab: $2f
    sub e                                         ; $59ac: $93
    rrca                                          ; $59ad: $0f
    cpl                                           ; $59ae: $2f
    ld sp, $9358                                  ; $59af: $31 $58 $93
    ld h, [hl]                                    ; $59b2: $66
    ld a, [de]                                    ; $59b3: $1a
    db $e3                                        ; $59b4: $e3
    cp h                                          ; $59b5: $bc
    xor b                                         ; $59b6: $a8
    adc a                                         ; $59b7: $8f
    ld [hl], d                                    ; $59b8: $72
    and c                                         ; $59b9: $a1
    ld b, $b7                                     ; $59ba: $06 $b7
    ld a, [de]                                    ; $59bc: $1a
    sub h                                         ; $59bd: $94
    inc [hl]                                      ; $59be: $34
    sub c                                         ; $59bf: $91
    xor l                                         ; $59c0: $ad
    db $fd                                        ; $59c1: $fd
    inc sp                                        ; $59c2: $33
    ldh a, [$6c]                                  ; $59c3: $f0 $6c
    sub a                                         ; $59c5: $97

jr_021_59c6:
    ld b, $55                                     ; $59c6: $06 $55
    ret                                           ; $59c8: $c9


    adc h                                         ; $59c9: $8c
    xor e                                         ; $59ca: $ab
    ld d, d                                       ; $59cb: $52
    db $e4                                        ; $59cc: $e4
    or d                                          ; $59cd: $b2
    inc d                                         ; $59ce: $14
    ld e, b                                       ; $59cf: $58
    ei                                            ; $59d0: $fb
    sbc l                                         ; $59d1: $9d
    rst $38                                       ; $59d2: $ff
    and a                                         ; $59d3: $a7
    ld d, l                                       ; $59d4: $55
    ld d, c                                       ; $59d5: $51
    ld bc, $d01e                                  ; $59d6: $01 $1e $d0
    halt                                          ; $59d9: $76
    and $cd                                       ; $59da: $e6 $cd
    xor b                                         ; $59dc: $a8
    sbc [hl]                                      ; $59dd: $9e
    ld [bc], a                                    ; $59de: $02
    ld d, e                                       ; $59df: $53
    ld sp, hl                                     ; $59e0: $f9
    add c                                         ; $59e1: $81
    ld l, c                                       ; $59e2: $69
    sbc a                                         ; $59e3: $9f
    rst $30                                       ; $59e4: $f7
    sub l                                         ; $59e5: $95
    rst $08                                       ; $59e6: $cf
    ld [hl], e                                    ; $59e7: $73
    xor l                                         ; $59e8: $ad
    ld l, c                                       ; $59e9: $69
    ldh [$d7], a                                  ; $59ea: $e0 $d7
    dec a                                         ; $59ec: $3d
    cpl                                           ; $59ed: $2f
    ld sp, hl                                     ; $59ee: $f9
    ld a, [hl-]                                   ; $59ef: $3a
    ld c, a                                       ; $59f0: $4f
    ld a, [de]                                    ; $59f1: $1a
    db $fd                                        ; $59f2: $fd
    ld a, $20                                     ; $59f3: $3e $20
    inc c                                         ; $59f5: $0c
    dec a                                         ; $59f6: $3d
    jp z, Jump_021_4ecf                           ; $59f7: $ca $cf $4e

    ld a, c                                       ; $59fa: $79
    ldh a, [rNR51]                                ; $59fb: $f0 $25
    call $2fcb                                    ; $59fd: $cd $cb $2f
    sub b                                         ; $5a00: $90
    inc [hl]                                      ; $5a01: $34
    call nz, Call_000_1760                        ; $5a02: $c4 $60 $17
    ld h, [hl]                                    ; $5a05: $66
    and a                                         ; $5a06: $a7
    or h                                          ; $5a07: $b4
    cpl                                           ; $5a08: $2f
    ld h, e                                       ; $5a09: $63
    ld c, a                                       ; $5a0a: $4f
    di                                            ; $5a0b: $f3
    sbc h                                         ; $5a0c: $9c
    add $38                                       ; $5a0d: $c6 $38
    ld [hl], b                                    ; $5a0f: $70
    jp $1c9e                                      ; $5a10: $c3 $9e $1c


    and [hl]                                      ; $5a13: $a6
    ld a, $8d                                     ; $5a14: $3e $8d
    ld [hl], c                                    ; $5a16: $71
    ld a, [hl]                                    ; $5a17: $7e
    jp $8407                                      ; $5a18: $c3 $07 $84


    ld bc, $ca3d                                  ; $5a1b: $01 $3d $ca
    rst $08                                       ; $5a1e: $cf
    rl l                                          ; $5a1f: $cb $15
    sub $b7                                       ; $5a21: $d6 $b7
    dec e                                         ; $5a23: $1d
    inc sp                                        ; $5a24: $33
    ld h, l                                       ; $5a25: $65
    ld d, l                                       ; $5a26: $55
    adc d                                         ; $5a27: $8a
    ld e, h                                       ; $5a28: $5c
    sub [hl]                                      ; $5a29: $96
    or d                                          ; $5a2a: $b2
    and h                                         ; $5a2b: $a4
    ld a, c                                       ; $5a2c: $79
    ld sp, hl                                     ; $5a2d: $f9
    ret                                           ; $5a2e: $c9


    dec c                                         ; $5a2f: $0d
    adc d                                         ; $5a30: $8a
    rst $30                                       ; $5a31: $f7
    ld e, l                                       ; $5a32: $5d
    sub h                                         ; $5a33: $94
    ret c                                         ; $5a34: $d8

    ldh [$b2], a                                  ; $5a35: $e0 $b2
    rst $18                                       ; $5a37: $df
    add l                                         ; $5a38: $85
    and l                                         ; $5a39: $a5
    pop af                                        ; $5a3a: $f1
    and l                                         ; $5a3b: $a5
    cp l                                          ; $5a3c: $bd
    halt                                          ; $5a3d: $76
    ld a, [de]                                    ; $5a3e: $1a
    ld h, d                                       ; $5a3f: $62
    jr nc, @-$2f                                  ; $5a40: $30 $cf

    cp l                                          ; $5a42: $bd
    push af                                       ; $5a43: $f5
    and l                                         ; $5a44: $a5
    ld c, c                                       ; $5a45: $49
    ld a, [$25f1]                                 ; $5a46: $fa $f1 $25
    rst $00                                       ; $5a49: $c7
    ld a, [c]                                     ; $5a4a: $f2
    ld h, c                                       ; $5a4b: $61
    sub h                                         ; $5a4c: $94
    ld a, $fe                                     ; $5a4d: $3e $fe
    ld b, d                                       ; $5a4f: $42
    sbc c                                         ; $5a50: $99
    rst $20                                       ; $5a51: $e7
    ret c                                         ; $5a52: $d8

    db $fd                                        ; $5a53: $fd
    jp hl                                         ; $5a54: $e9


    xor h                                         ; $5a55: $ac
    cpl                                           ; $5a56: $2f
    call Call_021_7a3a                            ; $5a57: $cd $3a $7a
    ret                                           ; $5a5a: $c9


    ld [hl], $71                                  ; $5a5b: $36 $71
    db $ec                                        ; $5a5d: $ec
    push de                                       ; $5a5e: $d5
    dec bc                                        ; $5a5f: $0b
    jp c, Jump_021_6e5a                           ; $5a60: $da $5a $6e

    ld b, b                                       ; $5a63: $40
    rst $08                                       ; $5a64: $cf
    cp b                                          ; $5a65: $b8
    dec sp                                        ; $5a66: $3b
    ld a, [hl+]                                   ; $5a67: $2a
    or [hl]                                       ; $5a68: $b6
    dec c                                         ; $5a69: $0d
    db $ec                                        ; $5a6a: $ec
    jr jr_021_5a80                                ; $5a6b: $18 $13

    or [hl]                                       ; $5a6d: $b6
    db $e3                                        ; $5a6e: $e3
    or e                                          ; $5a6f: $b3
    sub h                                         ; $5a70: $94
    rst $00                                       ; $5a71: $c7
    dec a                                         ; $5a72: $3d
    jp z, $a3af                                   ; $5a73: $ca $af $a3

    nop                                           ; $5a76: $00
    ld a, h                                       ; $5a77: $7c
    ld a, [bc]                                    ; $5a78: $0a
    dec sp                                        ; $5a79: $3b
    ld a, h                                       ; $5a7a: $7c
    db $eb                                        ; $5a7b: $eb
    and [hl]                                      ; $5a7c: $a6
    dec e                                         ; $5a7d: $1d
    db $e3                                        ; $5a7e: $e3
    dec sp                                        ; $5a7f: $3b

jr_021_5a80:
    ld b, [hl]                                    ; $5a80: $46
    or h                                          ; $5a81: $b4
    ld c, d                                       ; $5a82: $4a
    cp d                                          ; $5a83: $ba
    add b                                         ; $5a84: $80
    ld bc, $8a3d                                  ; $5a85: $01 $3d $8a
    ld a, d                                       ; $5a88: $7a
    dec c                                         ; $5a89: $0d
    and $e5                                       ; $5a8a: $e6 $e5
    rst $10                                       ; $5a8c: $d7
    adc $06                                       ; $5a8d: $ce $06
    ld l, d                                       ; $5a8f: $6a
    ld h, e                                       ; $5a90: $63
    add hl, hl                                    ; $5a91: $29
    ld hl, $8eda                                  ; $5a92: $21 $da $8e
    cp e                                          ; $5a95: $bb

Jump_021_5a96:
    ld [bc], a                                    ; $5a96: $02
    cp [hl]                                       ; $5a97: $be
    and $55                                       ; $5a98: $e6 $55
    ld b, $6e                                     ; $5a9a: $06 $6e
    ret c                                         ; $5a9c: $d8

    sub e                                         ; $5a9d: $93
    jp $fe20                                      ; $5a9e: $c3 $20 $fe


    ld [hl], a                                    ; $5aa1: $77
    sub [hl]                                      ; $5aa2: $96
    inc [hl]                                      ; $5aa3: $34
    cpl                                           ; $5aa4: $2f
    ccf                                           ; $5aa5: $3f
    ei                                            ; $5aa6: $fb
    ld a, [bc]                                    ; $5aa7: $0a
    ld hl, sp-$1e                                 ; $5aa8: $f8 $e2
    ld e, e                                       ; $5aaa: $5b
    ccf                                           ; $5aab: $3f
    ld [hl+], a                                   ; $5aac: $22
    inc c                                         ; $5aad: $0c
    ld d, $b2                                     ; $5aae: $16 $b2
    ld a, $f8                                     ; $5ab0: $3e $f8
    dec c                                         ; $5ab2: $0d
    call nc, Call_000_126f                        ; $5ab3: $d4 $6f $12
    xor h                                         ; $5ab6: $ac
    ld c, d                                       ; $5ab7: $4a
    ld a, [c]                                     ; $5ab8: $f2
    ld c, e                                       ; $5ab9: $4b
    and $77                                       ; $5aba: $e6 $77
    ret                                           ; $5abc: $c9


    ld [hl], e                                    ; $5abd: $73
    ld e, [hl]                                    ; $5abe: $5e
    ld a, [hl]                                    ; $5abf: $7e
    ld l, l                                       ; $5ac0: $6d
    ld a, c                                       ; $5ac1: $79
    xor l                                         ; $5ac2: $ad
    rst $30                                       ; $5ac3: $f7
    ld a, l                                       ; $5ac4: $7d
    ld l, c                                       ; $5ac5: $69
    ld [$5e3b], a                                 ; $5ac6: $ea $3b $5e
    ld l, $05                                     ; $5ac9: $2e $05
    jp hl                                         ; $5acb: $e9


    ld c, $dc                                     ; $5acc: $0e $dc
    or l                                          ; $5ace: $b5
    ccf                                           ; $5acf: $3f
    sbc $b7                                       ; $5ad0: $de $b7
    ld a, $9b                                     ; $5ad2: $3e $9b
    rst $20                                       ; $5ad4: $e7
    jp c, Jump_000_2f3f                           ; $5ad5: $da $3f $2f

    ccf                                           ; $5ad8: $3f
    ld a, $a5                                     ; $5ad9: $3e $a5
    cp [hl]                                       ; $5adb: $be
    or h                                          ; $5adc: $b4
    rst $00                                       ; $5add: $c7
    ld d, h                                       ; $5ade: $54
    ld [$2fe3], a                                 ; $5adf: $ea $e3 $2f
    ld b, a                                       ; $5ae2: $47
    dec d                                         ; $5ae3: $15
    ld b, $4b                                     ; $5ae4: $06 $4b
    add hl, de                                    ; $5ae6: $19
    ld a, a                                       ; $5ae7: $7f
    cp l                                          ; $5ae8: $bd
    ld a, [hl+]                                   ; $5ae9: $2a
    rrca                                          ; $5aea: $0f
    ld l, b                                       ; $5aeb: $68
    dec sp                                        ; $5aec: $3b
    dec h                                         ; $5aed: $25
    cp l                                          ; $5aee: $bd
    ld e, h                                       ; $5aef: $5c
    ld a, [bc]                                    ; $5af0: $0a
    add $2b                                       ; $5af1: $c6 $2b
    call z, $feb5                                 ; $5af3: $cc $b5 $fe
    ld [hl], h                                    ; $5af6: $74
    call nz, $fcbc                                ; $5af7: $c4 $bc $fc
    xor h                                         ; $5afa: $ac
    ld l, d                                       ; $5afb: $6a
    and d                                         ; $5afc: $a2
    rst $08                                       ; $5afd: $cf
    adc e                                         ; $5afe: $8b
    ld a, [$8578]                                 ; $5aff: $fa $78 $85
    or l                                          ; $5b02: $b5
    dec h                                         ; $5b03: $25
    db $eb                                        ; $5b04: $eb
    ld c, a                                       ; $5b05: $4f
    cp e                                          ; $5b06: $bb
    db $e4                                        ; $5b07: $e4
    cp c                                          ; $5b08: $b9
    and d                                         ; $5b09: $a2
    ld l, h                                       ; $5b0a: $6c
    db $ed                                        ; $5b0b: $ed
    ld a, a                                       ; $5b0c: $7f
    jp c, $1d87                                   ; $5b0d: $da $87 $1d

    cp a                                          ; $5b10: $bf
    rst $08                                       ; $5b11: $cf
    sub [hl]                                      ; $5b12: $96
    or $ac                                        ; $5b13: $f6 $ac
    ld a, [de]                                    ; $5b15: $1a
    adc l                                         ; $5b16: $8d
    or [hl]                                       ; $5b17: $b6
    db $e3                                        ; $5b18: $e3
    jp $fcbc                                      ; $5b19: $c3 $bc $fc


    ld b, b                                       ; $5b1c: $40
    jp $d31f                                      ; $5b1d: $c3 $1f $d3


    ld b, $6d                                     ; $5b20: $06 $6d
    or l                                          ; $5b22: $b5
    and e                                         ; $5b23: $a3
    adc l                                         ; $5b24: $8d
    adc a                                         ; $5b25: $8f
    rst $38                                       ; $5b26: $ff
    sbc d                                         ; $5b27: $9a
    db $fc                                        ; $5b28: $fc
    jr z, jr_021_5ba8                             ; $5b29: $28 $7d

    cp $31                                        ; $5b2b: $fe $31
    ld e, [hl]                                    ; $5b2d: $5e
    ld a, [bc]                                    ; $5b2e: $0a
    sub $a4                                       ; $5b2f: $d6 $a4
    add hl, de                                    ; $5b31: $19
    ld e, a                                       ; $5b32: $5f
    call nc, Call_000_2bc7                        ; $5b33: $d4 $c7 $2b
    db $ec                                        ; $5b36: $ec

jr_021_5b37:
    jp nc, $bcbc                                  ; $5b37: $d2 $bc $bc

    inc a                                         ; $5b3a: $3c
    ld [hl], a                                    ; $5b3b: $77
    sub b                                         ; $5b3c: $90
    xor e                                         ; $5b3d: $ab
    rst $38                                       ; $5b3e: $ff
    ld [hl], a                                    ; $5b3f: $77
    sub $a4                                       ; $5b40: $d6 $a4
    sub c                                         ; $5b42: $91
    ld d, c                                       ; $5b43: $51
    jp nz, $d2c3                                  ; $5b44: $c2 $c3 $d2

    ld hl, sp-$52                                 ; $5b47: $f8 $ae
    cp l                                          ; $5b49: $bd
    ld h, $cd                                     ; $5b4a: $26 $cd
    ld [$fc94], a                                 ; $5b4c: $ea $94 $fc
    ld hl, sp-$5e                                 ; $5b4f: $f8 $a2
    ld e, [hl]                                    ; $5b51: $5e
    add e                                         ; $5b52: $83
    dec b                                         ; $5b53: $05
    sbc c                                         ; $5b54: $99
    ld l, h                                       ; $5b55: $6c
    halt                                          ; $5b56: $76
    jp z, $349a                                   ; $5b57: $ca $9a $34

    call c, $40da                                 ; $5b5a: $dc $da $40
    cpl                                           ; $5b5d: $2f
    sbc e                                         ; $5b5e: $9b
    xor $78                                       ; $5b5f: $ee $78
    cp c                                          ; $5b61: $b9
    inc d                                         ; $5b62: $14
    and h                                         ; $5b63: $a4
    dec sp                                        ; $5b64: $3b
    inc c                                         ; $5b65: $0c

jr_021_5b66:
    ld a, [hl-]                                   ; $5b66: $3a
    ld e, c                                       ; $5b67: $59
    ld a, a                                       ; $5b68: $7f
    ld [$1db2], sp                                ; $5b69: $08 $b2 $1d
    cpl                                           ; $5b6c: $2f
    ld hl, $3d0c                                  ; $5b6d: $21 $0c $3d
    cp a                                          ; $5b70: $bf
    add $d6                                       ; $5b71: $c6 $d6
    ld a, [hl]                                    ; $5b73: $7e
    rst $30                                       ; $5b74: $f7
    sub a                                         ; $5b75: $97
    cp c                                          ; $5b76: $b9
    ld de, $a5da                                  ; $5b77: $11 $da $a5
    ld b, c                                       ; $5b7a: $41
    ld h, $71                                     ; $5b7b: $26 $71
    rst $10                                       ; $5b7d: $d7

jr_021_5b7e:
    xor d                                         ; $5b7e: $aa
    ld [hl+], a                                   ; $5b7f: $22
    dec c                                         ; $5b80: $0d
    jp c, Jump_021_647a                           ; $5b81: $da $7a $64

    sbc b                                         ; $5b84: $98
    ld [hl+], a                                   ; $5b85: $22
    ret                                           ; $5b86: $c9


    adc a                                         ; $5b87: $8f

jr_021_5b88:
    cp a                                          ; $5b88: $bf
    ld sp, $fdae                                  ; $5b89: $31 $ae $fd
    db $d3                                        ; $5b8c: $d3
    or l                                          ; $5b8d: $b5
    ld l, a                                       ; $5b8e: $6f
    jr nc, jr_021_5b37                            ; $5b8f: $30 $a6

    dec c                                         ; $5b91: $0d
    jp nz, Jump_021_5a96                          ; $5b92: $c2 $96 $5a

    jr c, jr_021_5b66                             ; $5b95: $38 $cf

    sbc h                                         ; $5b97: $9c
    ld e, a                                       ; $5b98: $5f
    ld a, c                                       ; $5b99: $79
    ld [hl], $cf                                  ; $5b9a: $36 $cf
    cp c                                          ; $5b9c: $b9
    add $fa                                       ; $5b9d: $c6 $fa
    sub h                                         ; $5b9f: $94
    sbc d                                         ; $5ba0: $9a
    jr nc, jr_021_5b88                            ; $5ba1: $30 $e5

    ld de, $3d06                                  ; $5ba3: $11 $06 $3d
    db $e4                                        ; $5ba6: $e4
    xor l                                         ; $5ba7: $ad

jr_021_5ba8:
    add hl, hl                                    ; $5ba8: $29
    ld d, e                                       ; $5ba9: $53
    ld h, d                                       ; $5baa: $62
    or e                                          ; $5bab: $b3
    ld c, h                                       ; $5bac: $4c
    push hl                                       ; $5bad: $e5
    rla                                           ; $5bae: $17

Jump_021_5baf:
    db $e4                                        ; $5baf: $e4
    and l                                         ; $5bb0: $a5
    ld h, b                                       ; $5bb1: $60
    sbc [hl]                                      ; $5bb2: $9e
    ld l, e                                       ; $5bb3: $6b
    ccf                                           ; $5bb4: $3f
    db $e3                                        ; $5bb5: $e3
    xor $02                                       ; $5bb6: $ee $02
    push de                                       ; $5bb8: $d5
    ld a, h                                       ; $5bb9: $7c
    ld e, [hl]                                    ; $5bba: $5e
    call nc, $3727                                ; $5bbb: $d4 $27 $37
    jr z, jr_021_5b7e                             ; $5bbe: $28 $be

    ld e, $f2                                     ; $5bc0: $1e $f2
    sub $94                                       ; $5bc2: $d6 $94
    xor [hl]                                      ; $5bc4: $ae
    db $eb                                        ; $5bc5: $eb
    ld hl, $4d6f                                  ; $5bc6: $21 $6f $4d
    ld b, c                                       ; $5bc9: $41
    ld [$aea1], sp                                ; $5bca: $08 $a1 $ae
    jr @-$37                                      ; $5bcd: $18 $c7

    ld h, a                                       ; $5bcf: $67
    or d                                          ; $5bd0: $b2
    pop de                                        ; $5bd1: $d1
    dec c                                         ; $5bd2: $0d
    adc d                                         ; $5bd3: $8a
    ld [hl], e                                    ; $5bd4: $73
    rst $10                                       ; $5bd5: $d7
    xor d                                         ; $5bd6: $aa
    ld [hl+], a                                   ; $5bd7: $22
    dec c                                         ; $5bd8: $0d
    ld [hl], a                                    ; $5bd9: $77
    or e                                          ; $5bda: $b3
    ld a, b                                       ; $5bdb: $78
    dec c                                         ; $5bdc: $0d

Jump_021_5bdd:
    and [hl]                                      ; $5bdd: $a6
    or h                                          ; $5bde: $b4
    sub d                                         ; $5bdf: $92
    sub h                                         ; $5be0: $94
    ld [hl-], a                                   ; $5be1: $32
    rst $08                                       ; $5be2: $cf
    ld b, c                                       ; $5be3: $41
    ld d, c                                       ; $5be4: $51
    ld sp, hl                                     ; $5be5: $f9
    ld a, c                                       ; $5be6: $79
    cp c                                          ; $5be7: $b9
    or b                                          ; $5be8: $b0
    sub d                                         ; $5be9: $92
    ld b, $7e                                     ; $5bea: $06 $7e
    db $fc                                        ; $5bec: $fc
    push af                                       ; $5bed: $f5
    or d                                          ; $5bee: $b2
    ld h, $0d                                     ; $5bef: $26 $0d
    jp nz, Jump_000_323d                          ; $5bf1: $c2 $3d $32

    rst $20                                       ; $5bf4: $e7
    ld d, a                                       ; $5bf5: $57
    sbc [hl]                                      ; $5bf6: $9e
    call $ae73                                    ; $5bf7: $cd $73 $ae
    or c                                          ; $5bfa: $b1
    adc [hl]                                      ; $5bfb: $8e
    or [hl]                                       ; $5bfc: $b6
    ld d, e                                       ; $5bfd: $53
    ld l, [hl]                                    ; $5bfe: $6e
    ld d, b                                       ; $5bff: $50
    inc e                                         ; $5c00: $1c
    ld h, c                                       ; $5c01: $61
    rst $00                                       ; $5c02: $c7
    ld h, a                                       ; $5c03: $67
    ld [hl-], a                                   ; $5c04: $32
    cp d                                          ; $5c05: $ba
    ld b, c                                       ; $5c06: $41
    ld [hl], c                                    ; $5c07: $71
    xor $5a                                       ; $5c08: $ee $5a
    ld d, l                                       ; $5c0a: $55
    and h                                         ; $5c0b: $a4
    ld b, c                                       ; $5c0c: $41
    jr @-$51                                      ; $5c0d: $18 $ad

    ld b, [hl]                                    ; $5c0f: $46
    and h                                         ; $5c10: $a4
    pop hl                                        ; $5c11: $e1
    xor [hl]                                      ; $5c12: $ae
    ld d, l                                       ; $5c13: $55
    ld b, l                                       ; $5c14: $45
    ld a, [de]                                    ; $5c15: $1a
    or h                                          ; $5c16: $b4
    push af                                       ; $5c17: $f5
    db $fc                                        ; $5c18: $fc
    dec d                                         ; $5c19: $15
    or l                                          ; $5c1a: $b5
    cp $3c                                        ; $5c1b: $fe $3c
    rla                                           ; $5c1d: $17
    cp h                                          ; $5c1e: $bc
    rst $08                                       ; $5c1f: $cf
    ld [hl], e                                    ; $5c20: $73
    db $dd                                        ; $5c21: $dd
    db $d3                                        ; $5c22: $d3
    ld l, a                                       ; $5c23: $6f
    ld [de], a                                    ; $5c24: $12
    xor h                                         ; $5c25: $ac
    adc d                                         ; $5c26: $8a
    ld a, [bc]                                    ; $5c27: $0a
    ret nc                                        ; $5c28: $d0

    ld h, l                                       ; $5c29: $65
    ld l, e                                       ; $5c2a: $6b
    ld hl, $fced                                  ; $5c2b: $21 $ed $fc
    ld e, b                                       ; $5c2e: $58
    ld a, $50                                     ; $5c2f: $3e $50
    call Call_021_6f17                            ; $5c31: $cd $17 $6f
    db $fd                                        ; $5c34: $fd
    ld [hl], a                                    ; $5c35: $77
    ld a, l                                       ; $5c36: $7d
    ld a, h                                       ; $5c37: $7c
    ld a, c                                       ; $5c38: $79
    ld e, d                                       ; $5c39: $5a
    sub e                                         ; $5c3a: $93
    and [hl]                                      ; $5c3b: $a6
    ld h, $bf                                     ; $5c3c: $26 $bf
    xor b                                         ; $5c3e: $a8
    cp $5d                                        ; $5c3f: $fe $5d
    db $30                                        ; $5c41: $30

    db $27, $65, $55, $7f, $86, $30

    dec a                                         ; $5c48: $3d
    set 1, e                                      ; $5c49: $cb $cb
    rst $28                                       ; $5c4b: $ef
    jp nz, $fcbc                                  ; $5c4c: $c2 $bc $fc

    cp d                                          ; $5c4f: $ba
    and a                                         ; $5c50: $a7
    rst $18                                       ; $5c51: $df
    inc h                                         ; $5c52: $24
    ld e, b                                       ; $5c53: $58
    dec d                                         ; $5c54: $15
    dec d                                         ; $5c55: $15
    ld b, b                                       ; $5c56: $40
    ld [hl-], a                                   ; $5c57: $32
    jp Jump_000_18ae                              ; $5c58: $c3 $ae $18


    ld b, a                                       ; $5c5b: $47
    pop bc                                        ; $5c5c: $c1
    ld l, h                                       ; $5c5d: $6c
    sub l                                         ; $5c5e: $95
    reti                                          ; $5c5f: $d9


    sub d                                         ; $5c60: $92
    pop hl                                        ; $5c61: $e1
    jp z, Jump_021_4fcb                           ; $5c62: $ca $cb $4f

    ld h, c                                       ; $5c65: $61
    ld c, l                                       ; $5c66: $4d
    sbc d                                         ; $5c67: $9a
    ld d, l                                       ; $5c68: $55
    ld c, d                                       ; $5c69: $4a

jr_021_5c6a:
    dec bc                                        ; $5c6a: $0b
    sbc $a7                                       ; $5c6b: $de $a7
    call nz, $7e06                                ; $5c6d: $c4 $06 $7e
    ld h, e                                       ; $5c70: $63
    ld e, h                                       ; $5c71: $5c
    ei                                            ; $5c72: $fb
    ld [hl], a                                    ; $5c73: $77
    ld l, c                                       ; $5c74: $69
    ld e, [hl]                                    ; $5c75: $5e
    ld a, [hl]                                    ; $5c76: $7e
    ld l, l                                       ; $5c77: $6d
    ld [hl], e                                    ; $5c78: $73
    inc hl                                        ; $5c79: $23
    cp e                                          ; $5c7a: $bb
    inc d                                         ; $5c7b: $14
    and b                                         ; $5c7c: $a0
    xor l                                         ; $5c7d: $ad
    ld b, a                                       ; $5c7e: $47
    ld a, c                                       ; $5c7f: $79
    ld sp, hl                                     ; $5c80: $f9
    xor c                                         ; $5c81: $a9
    db $fc                                        ; $5c82: $fc
    ld a, b                                       ; $5c83: $78
    ld l, l                                       ; $5c84: $6d
    ld h, b                                       ; $5c85: $60
    sbc [hl]                                      ; $5c86: $9e
    dec bc                                        ; $5c87: $0b
    sbc $e7                                       ; $5c88: $de $e7
    push hl                                       ; $5c8a: $e5
    push hl                                       ; $5c8b: $e5
    ld h, a                                       ; $5c8c: $67
    dec hl                                        ; $5c8d: $2b
    ld hl, sp-$35                                 ; $5c8e: $f8 $cb
    xor [hl]                                      ; $5c90: $ae
    cp l                                          ; $5c91: $bd
    ld h, $cd                                     ; $5c92: $26 $cd
    ld h, d                                       ; $5c94: $62
    ld h, [hl]                                    ; $5c95: $66
    ld a, l                                       ; $5c96: $7d
    halt                                          ; $5c97: $76
    jp z, Jump_021_7cbc                           ; $5c98: $ca $bc $7c

    adc b                                         ; $5c9b: $88
    jr nc, jr_021_5cb4                            ; $5c9c: $30 $16

    sbc d                                         ; $5c9e: $9a
    adc [hl]                                      ; $5c9f: $8e
    db $fd                                        ; $5ca0: $fd
    ld [hl], a                                    ; $5ca1: $77
    cp b                                          ; $5ca2: $b8
    ld h, e                                       ; $5ca3: $63
    ld a, [hl+]                                   ; $5ca4: $2a

jr_021_5ca5:
    ld [hl], l                                    ; $5ca5: $75
    xor $98                                       ; $5ca6: $ee $98
    ld d, d                                       ; $5ca8: $52
    ld a, l                                       ; $5ca9: $7d
    sbc l                                         ; $5caa: $9d
    xor b                                         ; $5cab: $a8
    push de                                       ; $5cac: $d5
    inc hl                                        ; $5cad: $23
    add h                                         ; $5cae: $84
    adc $33                                       ; $5caf: $ce $33
    ldh [$f3], a                                  ; $5cb1: $e0 $f3
    ld a, [c]                                     ; $5cb3: $f2

jr_021_5cb4:
    db $e3                                        ; $5cb4: $e3
    or l                                          ; $5cb5: $b5
    ld e, c                                       ; $5cb6: $59
    dec bc                                        ; $5cb7: $0b
    ld l, c                                       ; $5cb8: $69
    rst $20                                       ; $5cb9: $e7
    rla                                           ; $5cba: $17
    ld l, a                                       ; $5cbb: $6f

Call_021_5cbc:
Jump_021_5cbc:
    db $fd                                        ; $5cbc: $fd
    ld h, c                                       ; $5cbd: $61
    rst $10                                       ; $5cbe: $d7
    ld de, $b506                                  ; $5cbf: $11 $06 $b5
    xor $e9                                       ; $5cc2: $ee $e9
    scf                                           ; $5cc4: $37
    ld l, c                                       ; $5cc5: $69
    db $dd                                        ; $5cc6: $dd
    push hl                                       ; $5cc7: $e5

Jump_021_5cc8:
    ld d, [hl]                                    ; $5cc8: $56
    rrca                                          ; $5cc9: $0f
    ld l, e                                       ; $5cca: $6b

jr_021_5ccb:
    adc c                                         ; $5ccb: $89
    or a                                          ; $5ccc: $b7
    jp $c9dd                                      ; $5ccd: $c3 $dd $c9


    jp c, $e8ec                                   ; $5cd0: $da $ec $e8

    ld e, a                                       ; $5cd3: $5f
    db $eb                                        ; $5cd4: $eb
    dec hl                                        ; $5cd5: $2b
    ld a, e                                       ; $5cd6: $7b
    or [hl]                                       ; $5cd7: $b6
    db $e3                                        ; $5cd8: $e3
    ld d, d                                       ; $5cd9: $52
    sub $a3                                       ; $5cda: $d6 $a3
    db $fc                                        ; $5cdc: $fc
    adc [hl]                                      ; $5cdd: $8e
    ld sp, $7c14                                  ; $5cde: $31 $14 $7c
    ld [de], a                                    ; $5ce1: $12
    call nc, $bd30                                ; $5ce2: $d4 $30 $bd
    jp nc, $a8ac                                  ; $5ce5: $d2 $ac $a8

    push af                                       ; $5ce8: $f5
    and a                                         ; $5ce9: $a7
    adc e                                         ; $5cea: $8b
    ld c, c                                       ; $5ceb: $49
    pop bc                                        ; $5cec: $c1
    ld a, b                                       ; $5ced: $78
    ld l, l                                       ; $5cee: $6d
    and $b9                                       ; $5cef: $e6 $b9
    jr nz, jr_021_5d04                            ; $5cf1: $20 $11

    ld b, $96                                     ; $5cf3: $06 $96
    ld e, d                                       ; $5cf5: $5a

Jump_021_5cf6:
    jr c, @-$67                                   ; $5cf6: $38 $97

    and $52                                       ; $5cf8: $e6 $52
    jr nc, jr_021_5ccb                            ; $5cfa: $30 $cf

    reti                                          ; $5cfc: $d9


    sub a                                         ; $5cfd: $97
    ret c                                         ; $5cfe: $d8

    cp h                                          ; $5cff: $bc
    db $fc                                        ; $5d00: $fc
    ld c, d                                       ; $5d01: $4a
    ld b, d                                       ; $5d02: $42
    rst $20                                       ; $5d03: $e7

jr_021_5d04:
    cp d                                          ; $5d04: $ba
    add $f1                                       ; $5d05: $c6 $f1
    sub a                                         ; $5d07: $97
    ld [bc], a                                    ; $5d08: $02
    add h                                         ; $5d09: $84
    sub b                                         ; $5d0a: $90
    ld h, l                                       ; $5d0b: $65
    ld [$cf3f], a                                 ; $5d0c: $ea $3f $cf
    ld e, h                                       ; $5d0f: $5c
    ld l, b                                       ; $5d10: $68
    xor d                                         ; $5d11: $aa
    or d                                          ; $5d12: $b2
    xor b                                         ; $5d13: $a8
    ldh [$a3], a                                  ; $5d14: $e0 $a3
    dec de                                        ; $5d16: $1b
    inc d                                         ; $5d17: $14
    ld b, a                                       ; $5d18: $47
    jr jr_021_5d62                                ; $5d19: $18 $47

    pop bc                                        ; $5d1b: $c1
    ld h, d                                       ; $5d1c: $62
    ld d, d                                       ; $5d1d: $52
    jr nc, jr_021_5ca5                            ; $5d1e: $30 $85

    dec [hl]                                      ; $5d20: $35
    ld l, c                                       ; $5d21: $69
    ld l, d                                       ; $5d22: $6a
    ld a, [c]                                     ; $5d23: $f2
    and e                                         ; $5d24: $a3
    db $f4                                        ; $5d25: $f4
    dec b                                         ; $5d26: $05
    ld a, c                                       ; $5d27: $79
    add hl, hl                                    ; $5d28: $29
    sbc b                                         ; $5d29: $98
    jp hl                                         ; $5d2a: $e9


    inc l                                         ; $5d2b: $2c
    ld h, l                                       ; $5d2c: $65
    ldh [$da], a                                  ; $5d2d: $e0 $da
    ld e, h                                       ; $5d2f: $5c
    ld a, [bc]                                    ; $5d30: $0a
    sub $31                                       ; $5d31: $d6 $31
    adc $5d                                       ; $5d33: $ce $5d
    sub e                                         ; $5d35: $93
    and [hl]                                      ; $5d36: $a6
    ld h, $bf                                     ; $5d37: $26 $bf
    jr nz, jr_021_5d6a                            ; $5d39: $20 $2f

    dec b                                         ; $5d3b: $05
    di                                            ; $5d3c: $f3
    ld a, [c]                                     ; $5d3d: $f2
    sub e                                         ; $5d3e: $93
    dec de                                        ; $5d3f: $1b
    inc d                                         ; $5d40: $14
    rra                                           ; $5d41: $1f
    cp e                                          ; $5d42: $bb
    ld a, [c]                                     ; $5d43: $f2
    sub l                                         ; $5d44: $95
    rst $18                                       ; $5d45: $df
    inc h                                         ; $5d46: $24
    add h                                         ; $5d47: $84
    ld bc, $1596                                  ; $5d48: $01 $96 $15
    or l                                          ; $5d4b: $b5

jr_021_5d4c:
    cp $c2                                        ; $5d4c: $fe $c2
    ld h, [hl]                                    ; $5d4e: $66
    ret                                           ; $5d4f: $c9


    db $d3                                        ; $5d50: $d3
    and b                                         ; $5d51: $a0
    ld a, [hl+]                                   ; $5d52: $2a
    rst $08                                       ; $5d53: $cf
    ld c, h                                       ; $5d54: $4c
    db $fc                                        ; $5d55: $fc
    ld a, c                                       ; $5d56: $79
    adc [hl]                                      ; $5d57: $8e
    ld c, a                                       ; $5d58: $4f
    sub c                                         ; $5d59: $91
    ld h, [hl]                                    ; $5d5a: $66
    jp c, $e34e                                   ; $5d5b: $da $4e $e3

    ld e, l                                       ; $5d5e: $5d
    jr nc, jr_021_5d8e                            ; $5d5f: $30 $2d

    and h                                         ; $5d61: $a4

jr_021_5d62:
    sbc l                                         ; $5d62: $9d
    xor a                                         ; $5d63: $af
    pop bc                                        ; $5d64: $c1
    jp nc, Jump_021_6fb6                          ; $5d65: $d2 $b6 $6f

    push af                                       ; $5d68: $f5
    cp e                                          ; $5d69: $bb

jr_021_5d6a:
    or b                                          ; $5d6a: $b0
    ld c, e                                       ; $5d6b: $4b
    di                                            ; $5d6c: $f3
    ld a, [c]                                     ; $5d6d: $f2
    ld h, e                                       ; $5d6e: $63
    add [hl]                                      ; $5d6f: $86
    add d                                         ; $5d70: $82
    ld c, a                                       ; $5d71: $4f
    ld [bc], a                                    ; $5d72: $02
    or h                                          ; $5d73: $b4
    or l                                          ; $5d74: $b5
    ld e, [hl]                                    ; $5d75: $5e
    ld e, b                                       ; $5d76: $58
    dec d                                         ; $5d77: $15
    dec d                                         ; $5d78: $15
    ld b, b                                       ; $5d79: $40

jr_021_5d7a:
    ld [hl-], a                                   ; $5d7a: $32
    jp Jump_021_4941                              ; $5d7b: $c3 $41 $49


    inc de                                        ; $5d7e: $13
    reti                                          ; $5d7f: $d9


    jp c, Jump_021_7a3f                           ; $5d80: $da $3f $7a

    sub l                                         ; $5d83: $95
    halt                                          ; $5d84: $76

Jump_021_5d85:
    add e                                         ; $5d85: $83
    jr nc, @+$29                                  ; $5d86: $30 $27

jr_021_5d88:
    jr jr_021_5d7a                                ; $5d88: $18 $f0

    push bc                                       ; $5d8a: $c5
    ld e, e                                       ; $5d8b: $5b
    rst $38                                       ; $5d8c: $ff
    jp hl                                         ; $5d8d: $e9


jr_021_5d8e:
    adc [hl]                                      ; $5d8e: $8e
    sub a                                         ; $5d8f: $97
    add $b6                                       ; $5d90: $c6 $b6
    cpl                                           ; $5d92: $2f
    or c                                          ; $5d93: $b1
    sub h                                         ; $5d94: $94
    ld a, c                                       ; $5d95: $79
    xor [hl]                                      ; $5d96: $ae
    db $fd                                        ; $5d97: $fd
    adc e                                         ; $5d98: $8b
    add hl, bc                                    ; $5d99: $09
    sbc $05                                       ; $5d9a: $de $05
    inc bc                                        ; $5d9c: $03
    cp l                                          ; $5d9d: $bd
    jp nc, $d974                                  ; $5d9e: $d2 $74 $d9

    ld a, d                                       ; $5da1: $7a
    sub [hl]                                      ; $5da2: $96
    ld h, [hl]                                    ; $5da3: $66
    ld a, [hl+]                                   ; $5da4: $2a
    ld c, a                                       ; $5da5: $4f
    dec [hl]                                      ; $5da6: $35
    ld e, a                                       ; $5da7: $5f
    sub e                                         ; $5da8: $93
    ld h, [hl]                                    ; $5da9: $66
    sub a                                         ; $5daa: $97
    ld d, [hl]                                    ; $5dab: $56
    ld b, l                                       ; $5dac: $45
    dec b                                         ; $5dad: $05
    add sp, -$76                                  ; $5dae: $e8 $8a
    ld bc, $5a96                                  ; $5db0: $01 $96 $5a
    jr c, jr_021_5d4c                             ; $5db3: $38 $97

    and $52                                       ; $5db5: $e6 $52
    jr nc, jr_021_5d88                            ; $5db7: $30 $cf

    reti                                          ; $5db9: $d9


    sub a                                         ; $5dba: $97
    ret c                                         ; $5dbb: $d8

    cp h                                          ; $5dbc: $bc
    db $fc                                        ; $5dbd: $fc
    cp d                                          ; $5dbe: $ba
    and a                                         ; $5dbf: $a7
    rst $18                                       ; $5dc0: $df
    inc h                                         ; $5dc1: $24
    ld e, b                                       ; $5dc2: $58
    dec d                                         ; $5dc3: $15
    dec d                                         ; $5dc4: $15
    ld b, b                                       ; $5dc5: $40
    ld [hl-], a                                   ; $5dc6: $32
    ld b, e                                       ; $5dc7: $43
    add h                                         ; $5dc8: $84
    ld bc, $af16                                  ; $5dc9: $01 $16 $af
    pop bc                                        ; $5dcc: $c1
    ld l, $cd                                     ; $5dcd: $2e $cd
    res 1, a                                      ; $5dcf: $cb $8f
    add hl, de                                    ; $5dd1: $19
    ld a, [bc]                                    ; $5dd2: $0a
    ld a, $09                                     ; $5dd3: $3e $09
    cp d                                          ; $5dd5: $ba
    ld l, h                                       ; $5dd6: $6c
    rst $00                                       ; $5dd7: $c7
    ld e, d                                       ; $5dd8: $5a
    sbc a                                         ; $5dd9: $9f
    and [hl]                                      ; $5dda: $a6
    or e                                          ; $5ddb: $b3
    xor a                                         ; $5ddc: $af
    add b                                         ; $5ddd: $80
    xor a                                         ; $5dde: $af
    ld a, c                                       ; $5ddf: $79
    sub l                                         ; $5de0: $95
    ld b, c                                       ; $5de1: $41
    ld c, c                                       ; $5de2: $49
    inc de                                        ; $5de3: $13
    reti                                          ; $5de4: $d9


    ld [$fc94], a                                 ; $5de5: $ea $94 $fc
    cp h                                          ; $5de8: $bc
    xor b                                         ; $5de9: $a8

jr_021_5dea:
    ld [hl], a                                    ; $5dea: $77
    pop bc                                        ; $5deb: $c1
    rst $00                                       ; $5dec: $c7
    cp a                                          ; $5ded: $bf
    rst $08                                       ; $5dee: $cf
    ld [hl], e                                    ; $5def: $73
    ld d, l                                       ; $5df0: $55
    ld d, h                                       ; $5df1: $54
    nop                                           ; $5df2: $00
    xor $ba                                       ; $5df3: $ee $ba
    and a                                         ; $5df5: $a7
    ei                                            ; $5df6: $fb
    ld c, e                                       ; $5df7: $4b
    rla                                           ; $5df8: $17
    inc c                                         ; $5df9: $0c
    dec a                                         ; $5dfa: $3d
    ccf                                           ; $5dfb: $3f
    ld b, [hl]                                    ; $5dfc: $46
    xor $5a                                       ; $5dfd: $ee $5a
    ld d, l                                       ; $5dff: $55
    and h                                         ; $5e00: $a4
    ld e, c                                       ; $5e01: $59
    rst $30                                       ; $5e02: $f7
    ld [hl], h                                    ; $5e03: $74
    ld a, a                                       ; $5e04: $7f
    ld b, c                                       ; $5e05: $41
    db $db                                        ; $5e06: $db
    xor c                                         ; $5e07: $a9
    ld b, [hl]                                    ; $5e08: $46
    ld b, [hl]                                    ; $5e09: $46
    rst $08                                       ; $5e0a: $cf
    inc hl                                        ; $5e0b: $23
    add h                                         ; $5e0c: $84
    xor d                                         ; $5e0d: $aa
    adc a                                         ; $5e0e: $8f
    rst $18                                       ; $5e0f: $df
    sub [hl]                                      ; $5e10: $96
    db $eb                                        ; $5e11: $eb
    dec c                                         ; $5e12: $0d
    jp c, $c7ba                                   ; $5e13: $da $ba $c7

    ld d, a                                       ; $5e16: $57
    ld hl, sp-$27                                 ; $5e17: $f8 $d9
    sub a                                         ; $5e19: $97
    ret c                                         ; $5e1a: $d8

    ld [hl], h                                    ; $5e1b: $74
    ldh a, [$ea]                                  ; $5e1c: $f0 $ea
    ld [$dd03], sp                                ; $5e1e: $08 $03 $dd
    db $d3                                        ; $5e21: $d3
    db $fd                                        ; $5e22: $fd
    add l                                         ; $5e23: $85
    dec sp                                        ; $5e24: $3b
    cp [hl]                                       ; $5e25: $be
    cp h                                          ; $5e26: $bc
    db $fc                                        ; $5e27: $fc
    ld hl, sp+$34                                 ; $5e28: $f8 $34
    sub c                                         ; $5e2a: $91
    xor l                                         ; $5e2b: $ad
    ld c, c                                       ; $5e2c: $49
    or e                                          ; $5e2d: $b3
    sbc b                                         ; $5e2e: $98
    ld e, c                                       ; $5e2f: $59
    rst $18                                       ; $5e30: $df
    or l                                          ; $5e31: $b5
    ld h, a                                       ; $5e32: $67
    sbc c                                         ; $5e33: $99
    ld b, d                                       ; $5e34: $42
    db $fd                                        ; $5e35: $fd
    reti                                          ; $5e36: $d9


    sbc d                                         ; $5e37: $9a
    inc [hl]                                      ; $5e38: $34
    di                                            ; $5e39: $f3
    sbc h                                         ; $5e3a: $9c
    ld a, l                                       ; $5e3b: $7d
    adc c                                         ; $5e3c: $89
    ld c, l                                       ; $5e3d: $4d
    rst $10                                       ; $5e3e: $d7
    ld a, [hl]                                    ; $5e3f: $7e
    adc [hl]                                      ; $5e40: $8e
    xor c                                         ; $5e41: $a9

jr_021_5e42:
    ld [hl-], a                                   ; $5e42: $32
    ldh a, [$a4]                                  ; $5e43: $f0 $a4
    rst $28                                       ; $5e45: $ef
    adc d                                         ; $5e46: $8a
    ld bc, $d596                                  ; $5e47: $01 $96 $d5
    add hl, hl                                    ; $5e4a: $29
    ld a, c                                       ; $5e4b: $79
    xor $2c                                       ; $5e4c: $ee $2c
    xor e                                         ; $5e4e: $ab
    ld d, e                                       ; $5e4f: $53
    ld a, [c]                                     ; $5e50: $f2
    ld e, l                                       ; $5e51: $5d
    jr nc, jr_021_5dea                            ; $5e52: $30 $96

    or c                                          ; $5e54: $b1
    and h                                         ; $5e55: $a4

Call_021_5e56:
    sbc d                                         ; $5e56: $9a
    xor a                                         ; $5e57: $af
    ld c, [hl]                                    ; $5e58: $4e
    ret                                           ; $5e59: $c9


    ld [hl], e                                    ; $5e5a: $73
    rlca                                          ; $5e5b: $07
    ld d, a                                       ; $5e5c: $57
    ret nc                                        ; $5e5d: $d0

    sub $fd                                       ; $5e5e: $d6 $fd
    and l                                         ; $5e60: $a5

jr_021_5e61:
    ld l, b                                       ; $5e61: $68
    rlca                                          ; $5e62: $07
    sub $a4                                       ; $5e63: $d6 $a4
    add hl, de                                    ; $5e65: $19
    sub h                                         ; $5e66: $94
    inc [hl]                                      ; $5e67: $34
    sub c                                         ; $5e68: $91
    ld c, l                                       ; $5e69: $4d
    and c                                         ; $5e6a: $a1
    cp [hl]                                       ; $5e6b: $be
    sub $97                                       ; $5e6c: $d6 $97
    ldh a, [rNR52]                                ; $5e6e: $f0 $26
    dec a                                         ; $5e70: $3d
    ld [hl], a                                    ; $5e71: $77
    sub [hl]                                      ; $5e72: $96
    ld a, c                                       ; $5e73: $79
    cp c                                          ; $5e74: $b9
    ld d, h                                       ; $5e75: $54
    rra                                           ; $5e76: $1f
    sub h                                         ; $5e77: $94
    rra                                           ; $5e78: $1f
    rlc a                                         ; $5e79: $cb $07
    add h                                         ; $5e7b: $84
    ld bc, $8a3d                                  ; $5e7c: $01 $3d $8a
    ld a, d                                       ; $5e7f: $7a
    dec c                                         ; $5e80: $0d
    sub [hl]                                      ; $5e81: $96
    db $f4                                        ; $5e82: $f4
    dec hl                                        ; $5e83: $2b
    ld l, c                                       ; $5e84: $69
    ldh [$d7], a                                  ; $5e85: $e0 $d7

jr_021_5e87:
    ret                                           ; $5e87: $c9


    ld c, e                                       ; $5e88: $4b
    ld a, $5b                                     ; $5e89: $3e $5b
    ld [hl-], a                                   ; $5e8b: $32
    call c, $d2f1                                 ; $5e8c: $dc $f1 $d2
    ret c                                         ; $5e8f: $d8

    or $25                                        ; $5e90: $f6 $25
    sub [hl]                                      ; $5e92: $96
    jp nz, $f75d                                  ; $5e93: $c2 $5d $f7

    ld [hl], h                                    ; $5e96: $74
    ld a, a                                       ; $5e97: $7f
    ld b, c                                       ; $5e98: $41
    jr jr_021_5e42                                ; $5e99: $18 $a7

    ld a, [c]                                     ; $5e9b: $f2
    call c, $cf25                                 ; $5e9c: $dc $25 $cf
    ld e, l                                       ; $5e9f: $5d
    ld a, [c]                                     ; $5ea0: $f2
    ld e, l                                       ; $5ea1: $5d
    jr nc, jr_021_5e61                            ; $5ea2: $30 $bd

    jp nc, $6cc8                                  ; $5ea4: $d2 $c8 $6c

    cp c                                          ; $5ea7: $b9
    ld c, a                                       ; $5ea8: $4f
    ld l, h                                       ; $5ea9: $6c
    daa                                           ; $5eaa: $27
    dec bc                                        ; $5eab: $0b
    jp c, Jump_021_4949                           ; $5eac: $da $49 $49

    ld b, c                                       ; $5eaf: $41
    dec sp                                        ; $5eb0: $3b
    db $dd                                        ; $5eb1: $dd
    inc sp                                        ; $5eb2: $33
    inc e                                         ; $5eb3: $1c
    db $fc                                        ; $5eb4: $fc
    add a                                         ; $5eb5: $87
    jr nc, jr_021_5e87                            ; $5eb6: $30 $cf

    dec d                                         ; $5eb8: $15
    or l                                          ; $5eb9: $b5
    cp $8a                                        ; $5eba: $fe $8a
    ld de, $b95f                                  ; $5ebc: $11 $5f $b9
    ld hl, $b47c                                  ; $5ebf: $21 $7c $b4
    pop de                                        ; $5ec2: $d1
    ld h, [hl]                                    ; $5ec3: $66
    xor c                                         ; $5ec4: $a9
    push bc                                       ; $5ec5: $c5
    cp b                                          ; $5ec6: $b8
    ld hl, sp-$42                                 ; $5ec7: $f8 $be
    ld h, $cd                                     ; $5ec9: $26 $cd
    ld [bc], a                                    ; $5ecb: $02
    push af                                       ; $5ecc: $f5
    ld a, [c]                                     ; $5ecd: $f2
    ld [hl-], a                                   ; $5ece: $32

jr_021_5ecf:
    cpl                                           ; $5ecf: $2f
    cp a                                          ; $5ed0: $bf
    ld c, [hl]                                    ; $5ed1: $4e

Jump_021_5ed2:
    ld a, [$da4d]                                 ; $5ed2: $fa $4d $da
    and l                                         ; $5ed5: $a5
    ld b, b                                       ; $5ed6: $40
    sbc [hl]                                      ; $5ed7: $9e
    db $dd                                        ; $5ed8: $dd
    daa                                           ; $5ed9: $27
    add a                                         ; $5eda: $87
    ld a, c                                       ; $5edb: $79
    xor [hl]                                      ; $5edc: $ae
    cp h                                          ; $5edd: $bc
    add $95                                       ; $5ede: $c6 $95
    dec de                                        ; $5ee0: $1b
    ld [hl], d                                    ; $5ee1: $72
    rst $10                                       ; $5ee2: $d7
    dec a                                         ; $5ee3: $3d
    db $dd                                        ; $5ee4: $dd
    ld e, a                                       ; $5ee5: $5f
    db $10                                        ; $5ee6: $10
    ld b, $47                                     ; $5ee7: $06 $47

jr_021_5ee9:
    dec de                                        ; $5ee9: $1b
    ld b, a                                       ; $5eea: $47
    ld [$bd61], sp                                ; $5eeb: $08 $61 $bd
    jp nc, $fe8c                                  ; $5eee: $d2 $8c $fe

    reti                                          ; $5ef1: $d9


    inc a                                         ; $5ef2: $3c
    ld h, a                                       ; $5ef3: $67
    ld e, a                                       ; $5ef4: $5f
    ld h, d                                       ; $5ef5: $62
    db $eb                                        ; $5ef6: $eb
    ld a, a                                       ; $5ef7: $7f
    sbc l                                         ; $5ef8: $9d
    inc d                                         ; $5ef9: $14
    cp a                                          ; $5efa: $bf
    ld c, c                                       ; $5efb: $49
    or b                                          ; $5efc: $b0
    or h                                          ; $5efd: $b4
    rst $10                                       ; $5efe: $d7
    cp $f7                                        ; $5eff: $fe $f7
    ld hl, sp+$50                                 ; $5f01: $f8 $50
    db $db                                        ; $5f03: $db

Jump_021_5f04:
    scf                                           ; $5f04: $37
    rrca                                          ; $5f05: $0f
    call c, $b7f5                                 ; $5f06: $dc $f5 $b7
    ld c, [hl]                                    ; $5f09: $4e
    adc d                                         ; $5f0a: $8a
    rst $18                                       ; $5f0b: $df
    and h                                         ; $5f0c: $a4
    and l                                         ; $5f0d: $a5
    dec a                                         ; $5f0e: $3d
    jr nz, @-$51                                  ; $5f0f: $20 $ad

    rst $38                                       ; $5f11: $ff
    ld l, h                                       ; $5f12: $6c
    and l                                         ; $5f13: $a5
    nop                                           ; $5f14: $00
    cp b                                          ; $5f15: $b8

Jump_021_5f16:
    ld d, e                                       ; $5f16: $53
    ld h, d                                       ; $5f17: $62
    db $eb                                        ; $5f18: $eb
    ld l, a                                       ; $5f19: $6f
    sbc l                                         ; $5f1a: $9d
    inc d                                         ; $5f1b: $14
    cp a                                          ; $5f1c: $bf

Call_021_5f1d:
    ld c, c                                       ; $5f1d: $49
    ld c, e                                       ; $5f1e: $4b
    ld a, e                                       ; $5f1f: $7b
    db $ed                                        ; $5f20: $ed
    call z, $a210                                 ; $5f21: $cc $10 $a2
    ld d, d                                       ; $5f24: $52
    jr nc, jr_021_5ecf                            ; $5f25: $30 $a8

    ld e, a                                       ; $5f27: $5f
    ld b, d                                       ; $5f28: $42
    ld e, e                                       ; $5f29: $5b
    res 5, e                                      ; $5f2a: $cb $ab
    ld d, h                                       ; $5f2c: $54
    ld h, l                                       ; $5f2d: $65
    halt                                          ; $5f2e: $76
    jp z, Jump_021_7cbc                           ; $5f2f: $ca $bc $7c

    cp b                                          ; $5f32: $b8
    ld c, e                                       ; $5f33: $4b
    ld c, e                                       ; $5f34: $4b

jr_021_5f35:
    sbc c                                         ; $5f35: $99

jr_021_5f36:
    ld c, d                                       ; $5f36: $4a
    ld a, [de]                                    ; $5f37: $1a
    ld h, d                                       ; $5f38: $62
    ld l, e                                       ; $5f39: $6b
    call Call_021_5780                            ; $5f3a: $cd $80 $57
    ld [hl], c                                    ; $5f3d: $71
    ld b, b                                       ; $5f3e: $40
    ld e, e                                       ; $5f3f: $5b
    xor a                                         ; $5f40: $af
    inc [hl]                                      ; $5f41: $34
    dec bc                                        ; $5f42: $0b
    ld l, a                                       ; $5f43: $6f
    ld d, b                                       ; $5f44: $50
    ld a, h                                       ; $5f45: $7c
    cp h                                          ; $5f46: $bc
    sub d                                         ; $5f47: $92
    rst $08                                       ; $5f48: $cf
    ld [hl], e                                    ; $5f49: $73
    xor [hl]                                      ; $5f4a: $ae
    or c                                          ; $5f4b: $b1
    ld a, $cf                                     ; $5f4c: $3e $cf
    or l                                          ; $5f4e: $b5
    ld l, d                                       ; $5f4f: $6a
    jr nz, jr_021_5ee9                            ; $5f50: $20 $97

    call $2fcb                                    ; $5f52: $cd $cb $2f
    ret nc                                        ; $5f55: $d0

    ldh a, [$eb]                                  ; $5f56: $f0 $eb
    rst $38                                       ; $5f58: $ff
    sbc l                                         ; $5f59: $9d
    sub a                                         ; $5f5a: $97
    ld l, c                                       ; $5f5b: $69
    dec sp                                        ; $5f5c: $3b

jr_021_5f5d:
    adc l                                         ; $5f5d: $8d
    adc a                                         ; $5f5e: $8f
    cpl                                           ; $5f5f: $2f
    cpl                                           ; $5f60: $2f
    ccf                                           ; $5f61: $3f
    rst $08                                       ; $5f62: $cf
    push bc                                       ; $5f63: $c5
    call z, $da3a                                 ; $5f64: $cc $3a $da
    ld d, c                                       ; $5f67: $51
    call nz, $fed6                                ; $5f68: $c4 $d6 $fe
    sbc l                                         ; $5f6b: $9d
    ld l, a                                       ; $5f6c: $6f
    ld l, [hl]                                    ; $5f6d: $6e
    ld d, l                                       ; $5f6e: $55
    ld b, a                                       ; $5f6f: $47
    sbc e                                         ; $5f70: $9b
    ld h, l                                       ; $5f71: $65
    db $fc                                        ; $5f72: $fc
    adc l                                         ; $5f73: $8d
    ld [hl], c                                    ; $5f74: $71
    db $ec                                        ; $5f75: $ec
    sbc c                                         ; $5f76: $99
    xor c                                         ; $5f77: $a9
    ld a, h                                       ; $5f78: $7c
    dec h                                         ; $5f79: $25
    dec c                                         ; $5f7a: $0d
    db $fc                                        ; $5f7b: $fc
    ld a, [hl-]                                   ; $5f7c: $3a
    ld a, c                                       ; $5f7d: $79
    ret                                           ; $5f7e: $c9


    ld h, c                                       ; $5f7f: $61
    halt                                          ; $5f80: $76
    jp z, Jump_000_2620                           ; $5f81: $ca $20 $26

    ld c, a                                       ; $5f84: $4f
    rrca                                          ; $5f85: $0f
    add b                                         ; $5f86: $80
    jr nc, jr_021_5f36                            ; $5f87: $30 $ad

    ld b, [hl]                                    ; $5f89: $46
    and h                                         ; $5f8a: $a4
    pop hl                                        ; $5f8b: $e1
    xor [hl]                                      ; $5f8c: $ae
    ld d, l                                       ; $5f8d: $55
    ld b, l                                       ; $5f8e: $45
    ld a, [de]                                    ; $5f8f: $1a
    add h                                         ; $5f90: $84
    db $10                                        ; $5f91: $10
    ld b, $08                                     ; $5f92: $06 $08
    and c                                         ; $5f94: $a1
    db $eb                                        ; $5f95: $eb
    sub e                                         ; $5f96: $93
    rst $10                                       ; $5f97: $d7
    jr jr_021_5f35                                ; $5f98: $18 $9b

    dec d                                         ; $5f9a: $15
    inc hl                                        ; $5f9b: $23
    ld c, $5d                                     ; $5f9c: $0e $5d
    jr nc, jr_021_5f5d                            ; $5f9e: $30 $bd

    jp nc, Jump_021_4f8c                          ; $5fa0: $d2 $8c $4f

    xor d                                         ; $5fa3: $aa
    ld sp, hl                                     ; $5fa4: $f9
    db $ec                                        ; $5fa5: $ec
    ld c, e                                       ; $5fa6: $4b
    ld l, h                                       ; $5fa7: $6c
    ld a, h                                       ; $5fa8: $7c
    ld d, c                                       ; $5fa9: $51
    ld e, a                                       ; $5faa: $5f
    sub e                                         ; $5fab: $93
    ld h, [hl]                                    ; $5fac: $66
    ld a, [hl+]                                   ; $5fad: $2a
    cp a                                          ; $5fae: $bf
    sbc b                                         ; $5faf: $98
    ld e, c                                       ; $5fb0: $59
    cp a                                          ; $5fb1: $bf
    inc d                                         ; $5fb2: $14
    call z, $d94e                                 ; $5fb3: $cc $4e $d9
    and l                                         ; $5fb6: $a5
    sub l                                         ; $5fb7: $95
    sub a                                         ; $5fb8: $97
    rst $20                                       ; $5fb9: $e7
    xor $64                                       ; $5fba: $ee $64
    ld b, c                                       ; $5fbc: $41
    db $eb                                        ; $5fbd: $eb
    sbc [hl]                                      ; $5fbe: $9e
    xor $2f                                       ; $5fbf: $ee $2f
    ld [$3d03], sp                                ; $5fc1: $08 $03 $3d
    adc d                                         ; $5fc4: $8a
    ld a, [$3324]                                 ; $5fc5: $fa $24 $33
    call c, $d985                                 ; $5fc8: $dc $85 $d9
    add hl, hl                                    ; $5fcb: $29
    ld d, e                                       ; $5fcc: $53
    ld h, [hl]                                    ; $5fcd: $66
    ld d, l                                       ; $5fce: $55

Jump_021_5fcf:
    xor d                                         ; $5fcf: $aa
    sbc [hl]                                      ; $5fd0: $9e
    dec c                                         ; $5fd1: $0d
    call c, Call_000_27b0                         ; $5fd2: $dc $b0 $27
    add a                                         ; $5fd5: $87
    sbc l                                         ; $5fd6: $9d
    ld a, d                                       ; $5fd7: $7a
    jp z, $bd49                                   ; $5fd8: $ca $49 $bd

    cp b                                          ; $5fdb: $b8
    db $eb                                        ; $5fdc: $eb
    sbc [hl]                                      ; $5fdd: $9e
    xor $2f                                       ; $5fde: $ee $2f
    ld [$ad03], sp                                ; $5fe0: $08 $03 $ad
    ld a, [hl+]                                   ; $5fe3: $2a
    jp nc, $c770                                  ; $5fe4: $d2 $70 $c7

    rla                                           ; $5fe7: $17
    push af                                       ; $5fe8: $f5
    xor c                                         ; $5fe9: $a9
    db $fc                                        ; $5fea: $fc
    sbc d                                         ; $5feb: $9a
    inc [hl]                                      ; $5fec: $34
    ld h, e                                       ; $5fed: $63
    ld a, c                                       ; $5fee: $79
    add hl, hl                                    ; $5fef: $29
    ld e, b                                       ; $5ff0: $58
    ld a, [de]                                    ; $5ff1: $1a
    ld e, a                                       ; $5ff2: $5f
    jp c, $a2ab                                   ; $5ff3: $da $ab $a2

    ld [bc], a                                    ; $5ff6: $02
    ld [hl], h                                    ; $5ff7: $74
    db $dd                                        ; $5ff8: $dd
    inc l                                         ; $5ff9: $2c
    or l                                          ; $5ffa: $b5
    ld [hl], b                                    ; $5ffb: $70
    cp d                                          ; $5ffc: $ba
    adc [hl]                                      ; $5ffd: $8e
    cp h                                          ; $5ffe: $bc
    db $fd                                        ; $5fff: $fd
    sub l                                         ; $6000: $95
    ld [hl], e                                    ; $6001: $73
    rlca                                          ; $6002: $07
    add hl, sp                                    ; $6003: $39
    res 1, d                                      ; $6004: $cb $8a
    ld e, d                                       ; $6006: $5a
    ld a, a                                       ; $6007: $7f
    sbc [hl]                                      ; $6008: $9e
    ld d, e                                       ; $6009: $53

jr_021_600a:
    xor b                                         ; $600a: $a8
    inc hl                                        ; $600b: $23
    inc c                                         ; $600c: $0c
    and a                                         ; $600d: $a7
    cp h                                          ; $600e: $bc
    push af                                       ; $600f: $f5
    add $f8                                       ; $6010: $c6 $f8
    dec bc                                        ; $6012: $0b
    jp nc, $8c57                                  ; $6013: $d2 $57 $8c

    ld hl, sp+$2e                                 ; $6016: $f8 $2e
    ld c, l                                       ; $6018: $4d
    ld l, c                                       ; $6019: $69
    ld e, d                                       ; $601a: $5a
    ld d, l                                       ; $601b: $55
    sub a                                         ; $601c: $97
    dec a                                         ; $601d: $3d
    add hl, sp                                    ; $601e: $39
    ld [hl], a                                    ; $601f: $77
    sub b                                         ; $6020: $90
    ld l, e                                       ; $6021: $6b
    ld hl, $fced                                  ; $6022: $21 $ed $fc
    ldh [$c9], a                                  ; $6025: $e0 $c9
    rla                                           ; $6027: $17
    cp $3c                                        ; $6028: $fe $3c
    rla                                           ; $602a: $17
    inc sp                                        ; $602b: $33
    db $eb                                        ; $602c: $eb
    or e                                          ; $602d: $b3
    ld d, e                                       ; $602e: $53
    sub $49                                       ; $602f: $d6 $49
    cp a                                          ; $6031: $bf
    ld c, c                                       ; $6032: $49
    cp e                                          ; $6033: $bb
    inc d                                         ; $6034: $14
    ret z                                         ; $6035: $c8

    or e                                          ; $6036: $b3
    ei                                            ; $6037: $fb
    db $e4                                        ; $6038: $e4
    jr nc, jr_021_600a                            ; $6039: $30 $cf

    cp c                                          ; $603b: $b9
    cp h                                          ; $603c: $bc
    ld a, [$0dca]                                 ; $603d: $fa $ca $0d
    ld de, $3d06                                  ; $6040: $11 $06 $3d
    inc [hl]                                      ; $6043: $34
    sub $e7                                       ; $6044: $d6 $e7
    cp c                                          ; $6046: $b9
    ld d, [hl]                                    ; $6047: $56
    dec c                                         ; $6048: $0d
    db $e4                                        ; $6049: $e4
    ld [hl-], a                                   ; $604a: $32
    or h                                          ; $604b: $b4
    sub $9f                                       ; $604c: $d6 $9f
    ld bc, $31a3                                  ; $604e: $01 $a3 $31
    ld [hl], $ab                                  ; $6051: $36 $ab
    ld d, e                                       ; $6053: $53
    ld a, [c]                                     ; $6054: $f2
    jr nc, @-$40                                  ; $6055: $30 $be

    xor b                                         ; $6057: $a8
    rst $10                                       ; $6058: $d7
    ld h, b                                       ; $6059: $60
    or c                                          ; $605a: $b1
    cp c                                          ; $605b: $b9
    inc d                                         ; $605c: $14
    ld c, h                                       ; $605d: $4c
    db $db                                        ; $605e: $db
    ld l, c                                       ; $605f: $69
    ld a, h                                       ; $6060: $7c
    ld sp, $1e13                                  ; $6061: $31 $13 $1e
    ld h, c                                       ; $6064: $61
    dec a                                         ; $6065: $3d
    adc e                                         ; $6066: $8b
    ld a, [$72da]                                 ; $6067: $fa $da $72
    add hl, hl                                    ; $606a: $29
    add b                                         ; $606b: $80
    dec [hl]                                      ; $606c: $35
    cpl                                           ; $606d: $2f
    ld c, e                                       ; $606e: $4b
    db $e3                                        ; $606f: $e3
    dec hl                                        ; $6070: $2b
    cpl                                           ; $6071: $2f
    ccf                                           ; $6072: $3f
    ld h, [hl]                                    ; $6073: $66
    db $e4                                        ; $6074: $e4
    ld d, d                                       ; $6075: $52
    or b                                          ; $6076: $b0
    ld a, [hl+]                                   ; $6077: $2a
    ld a, [hl+]                                   ; $6078: $2a
    ret nz                                        ; $6079: $c0

    db $fc                                        ; $607a: $fc
    add [hl]                                      ; $607b: $86
    rst $08                                       ; $607c: $cf
    ld e, l                                       ; $607d: $5d
    xor e                                         ; $607e: $ab
    adc d                                         ; $607f: $8a
    inc [hl]                                      ; $6080: $34
    ld e, l                                       ; $6081: $5d
    ld sp, $25dd                                  ; $6082: $31 $dd $25
    db $ed                                        ; $6085: $ed
    rlca                                          ; $6086: $07
    ld c, b                                       ; $6087: $48
    ld e, c                                       ; $6088: $59
    dec bc                                        ; $6089: $0b
    ld l, c                                       ; $608a: $69
    rst $20                                       ; $608b: $e7
    rlca                                          ; $608c: $07
    ld c, a                                       ; $608d: $4f
    cp [hl]                                       ; $608e: $be
    ldh a, [$e7]                                  ; $608f: $f0 $e7
    cp c                                          ; $6091: $b9
    sbc b                                         ; $6092: $98
    ld e, c                                       ; $6093: $59
    sbc a                                         ; $6094: $9f
    sbc l                                         ; $6095: $9d
    or d                                          ; $6096: $b2
    ld c, [hl]                                    ; $6097: $4e
    ld a, [$da4d]                                 ; $6098: $fa $4d $da
    and l                                         ; $609b: $a5
    ld b, b                                       ; $609c: $40
    sbc [hl]                                      ; $609d: $9e
    db $dd                                        ; $609e: $dd
    daa                                           ; $609f: $27
    add a                                         ; $60a0: $87
    jp $f477                                      ; $60a1: $c3 $77 $f4


    cp a                                          ; $60a4: $bf

Jump_021_60a5:
    rst $00                                       ; $60a5: $c7
    add a                                         ; $60a6: $87
    jp c, Jump_021_79be                           ; $60a7: $da $be $79

    ldh [$ae], a                                  ; $60aa: $e0 $ae
    sbc l                                         ; $60ac: $9d
    add hl, de                                    ; $60ad: $19
    ld b, d                                       ; $60ae: $42
    ld d, h                                       ; $60af: $54
    ld a, [bc]                                    ; $60b0: $0a
    ld b, $f5                                     ; $60b1: $06 $f5
    ld c, e                                       ; $60b3: $4b
    call c, $b129                                 ; $60b4: $dc $29 $b1
    ld bc, $fd69                                  ; $60b7: $01 $69 $fd
    ld h, a                                       ; $60ba: $67
    dec hl                                        ; $60bb: $2b
    dec b                                         ; $60bc: $05
    add b                                         ; $60bd: $80
    jr nc, jr_021_60ed                            ; $60be: $30 $2d

    add hl, de                                    ; $60c0: $19
    cp [hl]                                       ; $60c1: $be
    rst $18                                       ; $60c2: $df
    ldh a, [$61]                                  ; $60c3: $f0 $61
    call $2acb                                    ; $60c5: $cd $cb $2a
    and l                                         ; $60c8: $a5
    reti                                          ; $60c9: $d9


    sub a                                         ; $60ca: $97
    ret c                                         ; $60cb: $d8

    ret nz                                        ; $60cc: $c0

    ld d, h                                       ; $60cd: $54
    ld h, l                                       ; $60ce: $65
    pop af                                        ; $60cf: $f1
    sub $7f                                       ; $60d0: $d6 $7f
    ld sp, $7e13                                  ; $60d2: $31 $13 $7e
    ld a, [hl+]                                   ; $60d5: $2a
    ld l, c                                       ; $60d6: $69
    adc b                                         ; $60d7: $88
    call $0fcb                                    ; $60d8: $cd $cb $0f
    xor d                                         ; $60db: $aa
    sub d                                         ; $60dc: $92
    add hl, de                                    ; $60dd: $19
    rla                                           ; $60de: $17
    ld c, b                                       ; $60df: $48
    ld a, [de]                                    ; $60e0: $1a
    xor d                                         ; $60e1: $aa
    ld bc, $8eda                                  ; $60e2: $01 $da $8e
    add d                                         ; $60e5: $82
    reti                                          ; $60e6: $d9


    cpl                                           ; $60e7: $2f
    ld l, e                                       ; $60e8: $6b
    ld h, a                                       ; $60e9: $67

jr_021_60ea:
    add [hl]                                      ; $60ea: $86
    db $10                                        ; $60eb: $10
    sub l                                         ; $60ec: $95

jr_021_60ed:
    add d                                         ; $60ed: $82
    ld b, c                                       ; $60ee: $41
    db $fd                                        ; $60ef: $fd
    ld [de], a                                    ; $60f0: $12
    ld [hl], a                                    ; $60f1: $77
    dec [hl]                                      ; $60f2: $35
    xor a                                         ; $60f3: $af
    pop af                                        ; $60f4: $f1
    ld l, c                                       ; $60f5: $69
    ld [hl+], a                                   ; $60f6: $22
    and e                                         ; $60f7: $a3
    sbc d                                         ; $60f8: $9a
    rrca                                          ; $60f9: $0f
    adc h                                         ; $60fa: $8c
    ld [hl], h                                    ; $60fb: $74
    db $e4                                        ; $60fc: $e4
    jp nz, $fc2f                                  ; $60fd: $c2 $2f $fc

    jp hl                                         ; $6100: $e9


    jp c, $77d7                                   ; $6101: $da $d7 $77

    db $ed                                        ; $6104: $ed
    or l                                          ; $6105: $b5
    sub b                                         ; $6106: $90
    halt                                          ; $6107: $76
    ld a, [hl]                                    ; $6108: $7e
    ld b, l                                       ; $6109: $45
    ld h, c                                       ; $610a: $61
    sub b                                         ; $610b: $90
    pop hl                                        ; $610c: $e1
    rst $28                                       ; $610d: $ef
    jp nc, $85ca                                  ; $610e: $d2 $ca $85

    and l                                         ; $6111: $a5
    ld l, l                                       ; $6112: $6d
    rst $18                                       ; $6113: $df
    ld [$2bb9], a                                 ; $6114: $ea $b9 $2b
    ld e, a                                       ; $6117: $5f
    add e                                         ; $6118: $83
    ld b, c                                       ; $6119: $41
    adc $4e                                       ; $611a: $ce $4e
    ld h, d                                       ; $611c: $62
    set 3, d                                      ; $611d: $cb $da
    ldh [$a5], a                                  ; $611f: $e0 $a5
    di                                            ; $6121: $f3
    db $e4                                        ; $6122: $e4
    jr nc, jr_021_614a                            ; $6123: $30 $25

    ld [hl], $2f                                  ; $6125: $36 $2f
    cp a                                          ; $6127: $bf
    ld a, b                                       ; $6128: $78
    db $eb                                        ; $6129: $eb
    adc a                                         ; $612a: $8f
    jr nc, jr_021_60ea                            ; $612b: $30 $bd

    jp nc, $e4d4                                  ; $612d: $d2 $d4 $e4

    ld [hl], a                                    ; $6130: $77
    ret                                           ; $6131: $c9


    ld e, a                                       ; $6132: $5f
    call nz, $fc74                                ; $6133: $c4 $74 $fc
    ld d, d                                       ; $6136: $52
    jr nc, @+$5f                                  ; $6137: $30 $5d

    dec d                                         ; $6139: $15
    dec d                                         ; $613a: $15
    and b                                         ; $613b: $a0
    set 2, [hl]                                   ; $613c: $cb $d6
    and e                                         ; $613e: $a3
    xor b                                         ; $613f: $a8
    rst $10                                       ; $6140: $d7
    ld h, b                                       ; $6141: $60
    cp d                                          ; $6142: $ba
    add e                                         ; $6143: $83
    sub $9a                                       ; $6144: $d6 $9a
    ld b, $7e                                     ; $6146: $06 $7e
    db $dd                                        ; $6148: $dd
    di                                            ; $6149: $f3

jr_021_614a:
    sub d                                         ; $614a: $92
    xor a                                         ; $614b: $af
    di                                            ; $614c: $f3
    and h                                         ; $614d: $a4
    pop de                                        ; $614e: $d1
    sbc e                                         ; $614f: $9b
    dec h                                         ; $6150: $25
    db $ed                                        ; $6151: $ed
    ld a, b                                       ; $6152: $78
    ld l, c                                       ; $6153: $69
    ld l, h                                       ; $6154: $6c
    ei                                            ; $6155: $fb
    ld [de], a                                    ; $6156: $12
    ld c, e                                       ; $6157: $4b
    jp hl                                         ; $6158: $e9


    add d                                         ; $6159: $82
    ld bc, $f53d                                  ; $615a: $01 $3d $f5
    ld a, [$e174]                                 ; $615d: $fa $74 $e1
    dec h                                         ; $6160: $25
    db $e3                                        ; $6161: $e3
    adc a                                         ; $6162: $8f
    db $10                                        ; $6163: $10
    ld l, d                                       ; $6164: $6a
    push de                                       ; $6165: $d5
    ld b, b                                       ; $6166: $40
    ld l, $1b                                     ; $6167: $2e $1b
    add sp, $65                                   ; $6169: $e8 $65
    dec hl                                        ; $616b: $2b
    ccf                                           ; $616c: $3f
    ld e, [hl]                                    ; $616d: $5e
    ld h, c                                       ; $616e: $61
    ret nc                                        ; $616f: $d0

    ld de, $2e6d                                  ; $6170: $11 $6d $2e
    dec b                                         ; $6173: $05
    ld l, e                                       ; $6174: $6b
    rst $38                                       ; $6175: $ff
    ld a, e                                       ; $6176: $7b
    ld a, h                                       ; $6177: $7c
    ld e, b                                       ; $6178: $58
    ld e, e                                       ; $6179: $5b
    xor e                                         ; $617a: $ab
    ld a, [$cbca]                                 ; $617b: $fa $ca $cb
    ld [hl], a                                    ; $617e: $77
    pop bc                                        ; $617f: $c1
    dec a                                         ; $6180: $3d
    jp z, Jump_021_4fc3                           ; $6181: $ca $c3 $4f

    push hl                                       ; $6184: $e5
    rst $10                                       ; $6185: $d7
    cp $f7                                        ; $6186: $fe $f7
    ld hl, sp+$50                                 ; $6188: $f8 $50
    db $db                                        ; $618a: $db
    scf                                           ; $618b: $37
    rrca                                          ; $618c: $0f
    call c, $8c69                                 ; $618d: $dc $69 $8c
    sub e                                         ; $6190: $93
    dec de                                        ; $6191: $1b
    inc d                                         ; $6192: $14
    rst $28                                       ; $6193: $ef
    add d                                         ; $6194: $82
    ld bc, $ca3d                                  ; $6195: $01 $3d $ca
    jp Jump_021_662f                              ; $6198: $c3 $2f $66


    sub $17                                       ; $619b: $d6 $17
    ld l, a                                       ; $619d: $6f

jr_021_619e:
    db $fd                                        ; $619e: $fd
    ld [hl], a                                    ; $619f: $77
    add hl, bc                                    ; $61a0: $09
    cp [hl]                                       ; $61a1: $be
    ld a, [c]                                     ; $61a2: $f2
    ld a, l                                       ; $61a3: $7d
    di                                            ; $61a4: $f3
    add b                                         ; $61a5: $80
    db $10                                        ; $61a6: $10
    adc d                                         ; $61a7: $8a
    or a                                          ; $61a8: $b7
    cp $b3                                        ; $61a9: $fe $b3
    dec h                                         ; $61ab: $25
    jp $dae9                                      ; $61ac: $c3 $e9 $da


    rst $38                                       ; $61af: $ff
    ld e, $bf                                     ; $61b0: $1e $bf
    dec bc                                        ; $61b2: $0b
    ld b, $dd                                     ; $61b3: $06 $dd
    ld d, l                                       ; $61b5: $55
    ld a, h                                       ; $61b6: $7c
    ld l, c                                       ; $61b7: $69
    rst $08                                       ; $61b8: $cf
    res 0, l                                      ; $61b9: $cb $85
    ld bc, $fd69                                  ; $61bb: $01 $69 $fd
    rla                                           ; $61be: $17
    inc sp                                        ; $61bf: $33
    db $eb                                        ; $61c0: $eb
    jr nc, jr_021_619e                            ; $61c1: $30 $db

    db $10                                        ; $61c3: $10
    dec [hl]                                      ; $61c4: $35
    ld [$0c21], sp                                ; $61c5: $08 $21 $0c
    dec a                                         ; $61c8: $3d
    jp z, Jump_021_5d85                           ; $61c9: $ca $85 $5d

    sbc b                                         ; $61cc: $98
    ld c, [hl]                                    ; $61cd: $4e
    ld e, [hl]                                    ; $61ce: $5e
    db $e3                                        ; $61cf: $e3
    add b                                         ; $61d0: $80
    or h                                          ; $61d1: $b4
    cp $83                                        ; $61d2: $fe $83
    ld a, [$b425]                                 ; $61d4: $fa $25 $b4
    push af                                       ; $61d7: $f5
    call nc, $d3eb                                ; $61d8: $d4 $eb $d3
    add l                                         ; $61db: $85
    sub a                                         ; $61dc: $97
    adc h                                         ; $61dd: $8c
    ccf                                           ; $61de: $3f
    ld b, d                                       ; $61df: $42
    ld c, b                                       ; $61e0: $48
    rst $10                                       ; $61e1: $d7

jr_021_61e2:
    adc $0c                                       ; $61e2: $ce $0c
    ld hl, $052a                                  ; $61e4: $21 $2a $05
    cp e                                          ; $61e7: $bb
    jr nc, @+$1f                                  ; $61e8: $30 $1d

    sub b                                         ; $61ea: $90
    sub $bf                                       ; $61eb: $d6 $bf
    dec bc                                        ; $61ed: $0b
    ld b, $3d                                     ; $61ee: $06 $3d
    adc e                                         ; $61f0: $8b
    ld a, [$7e54]                                 ; $61f1: $fa $54 $7e
    db $ed                                        ; $61f4: $ed
    ld [hl], a                                    ; $61f5: $77
    cp $9f                                        ; $61f6: $fe $9f
    and $e5                                       ; $61f8: $e6 $e5
    rla                                           ; $61fa: $17
    ret z                                         ; $61fb: $c8

    or l                                          ; $61fc: $b5
    db $ed                                        ; $61fd: $ed
    ld c, e                                       ; $61fe: $4b
    dec [hl]                                      ; $61ff: $35
    ld e, b                                       ; $6200: $58
    ld b, a                                       ; $6201: $47
    ld a, c                                       ; $6202: $79
    add sp, -$76                                  ; $6203: $e8 $8a
    ld bc, $ca3d                                  ; $6205: $01 $3d $ca
    jp $342f                                      ; $6208: $c3 $2f $34


    ldh [rOCPD], a                                ; $620b: $e0 $6b
    rst $38                                       ; $620d: $ff
    add b                                         ; $620e: $80
    or h                                          ; $620f: $b4
    cp $b3                                        ; $6210: $fe $b3
    sub l                                         ; $6212: $95
    ld [bc], a                                    ; $6213: $02
    ld b, b                                       ; $6214: $40
    sbc e                                         ; $6215: $9b
    ld h, l                                       ; $6216: $65
    dec h                                         ; $6217: $25
    dec sp                                        ; $6218: $3b
    ccf                                           ; $6219: $3f
    cpl                                           ; $621a: $2f
    rst $18                                       ; $621b: $df
    call nc, $e7e4                                ; $621c: $d4 $e4 $e7
    push hl                                       ; $621f: $e5
    daa                                           ; $6220: $27
    scf                                           ; $6221: $37
    jr z, jr_021_61e2                             ; $6222: $28 $be

    ld a, [$8625]                                 ; $6224: $fa $25 $86
    jr nc, jr_021_623f                            ; $6227: $30 $16

    ld d, d                                       ; $6229: $52
    or $e7                                        ; $622a: $f6 $e7
    dec de                                        ; $622c: $1b
    push af                                       ; $622d: $f5
    ld b, a                                       ; $622e: $47
    db $db                                        ; $622f: $db
    xor c                                         ; $6230: $a9
    db $f4                                        ; $6231: $f4
    db $eb                                        ; $6232: $eb
    db $e4                                        ; $6233: $e4
    dec h                                         ; $6234: $25
    rra                                           ; $6235: $1f
    ld a, e                                       ; $6236: $7b
    ld h, [hl]                                    ; $6237: $66
    ld a, [hl+]                                   ; $6238: $2a
    cp a                                          ; $6239: $bf
    ld c, c                                       ; $623a: $49
    ld l, b                                       ; $623b: $68
    or e                                          ; $623c: $b3
    ld hl, sp-$20                                 ; $623d: $f8 $e0

jr_021_623f:
    ccf                                           ; $623f: $3f
    add h                                         ; $6240: $84
    ld d, l                                       ; $6241: $55
    rra                                           ; $6242: $1f
    cp a                                          ; $6243: $bf
    dec l                                         ; $6244: $2d
    rst $10                                       ; $6245: $d7
    sbc e                                         ; $6246: $9b
    ld e, l                                       ; $6247: $5d
    and b                                         ; $6248: $a0
    sbc d                                         ; $6249: $9a
    rst $28                                       ; $624a: $ef
    xor l                                         ; $624b: $ad
    cpl                                           ; $624c: $2f
    adc l                                         ; $624d: $8d
    sub a                                         ; $624e: $97
    ld c, e                                       ; $624f: $4b
    ld bc, $4eda                                  ; $6250: $01 $da $4e
    db $fc                                        ; $6253: $fc
    rst $28                                       ; $6254: $ef
    inc l                                         ; $6255: $2c
    ld h, [hl]                                    ; $6256: $66
    sub $2f                                       ; $6257: $d6 $2f
    dec b                                         ; $6259: $05

Jump_021_625a:
    ld [$1603], sp                                ; $625a: $08 $03 $16
    xor d                                         ; $625d: $aa
    ld [hl-], a                                   ; $625e: $32
    db $ec                                        ; $625f: $ec
    call nz, Call_021_47f7                        ; $6260: $c4 $f7 $47
    db $db                                        ; $6263: $db
    xor c                                         ; $6264: $a9
    db $f4                                        ; $6265: $f4
    db $eb                                        ; $6266: $eb
    db $e4                                        ; $6267: $e4
    dec h                                         ; $6268: $25
    rra                                           ; $6269: $1f

jr_021_626a:
    ld a, e                                       ; $626a: $7b
    ld h, [hl]                                    ; $626b: $66
    ld a, [hl+]                                   ; $626c: $2a
    cp a                                          ; $626d: $bf
    ld c, c                                       ; $626e: $49
    ld l, b                                       ; $626f: $68
    db $eb                                        ; $6270: $eb
    sub l                                         ; $6271: $95
    and [hl]                                      ; $6272: $a6
    ld h, $bf                                     ; $6273: $26 $bf
    ld hl, sp-$12                                 ; $6275: $f8 $ee
    sub a                                         ; $6277: $97
    add d                                         ; $6278: $82
    or c                                          ; $6279: $b1
    db $e4                                        ; $627a: $e4
    ld l, c                                       ; $627b: $69
    ld c, l                                       ; $627c: $4d
    ld a, [de]                                    ; $627d: $1a
    sbc c                                         ; $627e: $99
    dec l                                         ; $627f: $2d
    rst $30                                       ; $6280: $f7
    adc c                                         ; $6281: $89
    db $ed                                        ; $6282: $ed
    ld h, h                                       ; $6283: $64
    ld b, c                                       ; $6284: $41
    dec sp                                        ; $6285: $3b
    add hl, hl                                    ; $6286: $29
    add hl, hl                                    ; $6287: $29
    ld l, b                                       ; $6288: $68
    and a                                         ; $6289: $a7
    ld a, e                                       ; $628a: $7b
    add [hl]                                      ; $628b: $86
    ld [$3d03], sp                                ; $628c: $08 $03 $3d
    ld [hl-], a                                   ; $628f: $32
    ld h, a                                       ; $6290: $67
    ccf                                           ; $6291: $3f
    cp a                                          ; $6292: $bf
    ld c, e                                       ; $6293: $4b
    add c                                         ; $6294: $81
    inc a                                         ; $6295: $3c
    cp e                                          ; $6296: $bb
    ld c, a                                       ; $6297: $4f
    ld c, $dc                                     ; $6298: $0e $dc
    ld [hl], l                                    ; $629a: $75
    ld c, a                                       ; $629b: $4f
    rst $30                                       ; $629c: $f7
    rla                                           ; $629d: $17
    or h                                          ; $629e: $b4
    dec e                                         ; $629f: $1d
    xor l                                         ; $62a0: $ad
    ld d, l                                       ; $62a1: $55
    ld a, l                                       ; $62a2: $7d
    sbc [hl]                                      ; $62a3: $9e
    ld l, e                                       ; $62a4: $6b
    jp nc, $e0c8                                  ; $62a5: $d2 $c8 $e0

    ld d, l                                       ; $62a8: $55
    xor d                                         ; $62a9: $aa
    add d                                         ; $62aa: $82
    jr nc, jr_021_626a                            ; $62ab: $30 $bd

    jp nc, $6cc8                                  ; $62ad: $d2 $c8 $6c

    cp c                                          ; $62b0: $b9
    ld c, a                                       ; $62b1: $4f
    ld l, h                                       ; $62b2: $6c
    ld d, l                                       ; $62b3: $55
    sbc d                                         ; $62b4: $9a
    ret z                                         ; $62b5: $c8

    xor b                                         ; $62b6: $a8
    and $e3                                       ; $62b7: $e6 $e3
    push af                                       ; $62b9: $f5

Jump_021_62ba:
    ld a, [$d894]                                 ; $62ba: $fa $94 $d8
    adc d                                         ; $62bd: $8a
    or d                                          ; $62be: $b2
    ld a, c                                       ; $62bf: $79
    ld l, $c8                                     ; $62c0: $2e $c8
    ld a, c                                       ; $62c2: $79
    adc $cb                                       ; $62c3: $ce $cb
    xor a                                         ; $62c5: $af
    inc h                                         ; $62c6: $24
    ld [hl], h                                    ; $62c7: $74
    xor [hl]                                      ; $62c8: $ae
    ld l, e                                       ; $62c9: $6b
    inc e                                         ; $62ca: $1c
    ld a, a                                       ; $62cb: $7f
    add hl, hl                                    ; $62cc: $29

Jump_021_62cd:
    ld b, b                                       ; $62cd: $40
    ld e, e                                       ; $62ce: $5b
    rst $30                                       ; $62cf: $f7
    ld c, h                                       ; $62d0: $4c
    add hl, de                                    ; $62d1: $19
    sbc a                                         ; $62d2: $9f

jr_021_62d3:
    ld d, d                                       ; $62d3: $52

Jump_021_62d4:
    rst $20                                       ; $62d4: $e7
    xor $64                                       ; $62d5: $ee $64
    ld b, c                                       ; $62d7: $41
    db $eb                                        ; $62d8: $eb
    sbc [hl]                                      ; $62d9: $9e
    xor $2f                                       ; $62da: $ee $2f
    ld l, b                                       ; $62dc: $68
    dec sp                                        ; $62dd: $3b
    ld l, b                                       ; $62de: $68
    sbc l                                         ; $62df: $9d
    cp h                                          ; $62e0: $bc
    db $e4                                        ; $62e1: $e4
    jr nc, jr_021_633f                            ; $62e2: $30 $5b

    ld [hl-], a                                   ; $62e4: $32
    call c, $d2f1                                 ; $62e5: $dc $f1 $d2
    ret c                                         ; $62e8: $d8

    or $25                                        ; $62e9: $f6 $25
    sub [hl]                                      ; $62eb: $96
    add d                                         ; $62ec: $82
    or [hl]                                       ; $62ed: $b6
    ld l, [hl]                                    ; $62ee: $6e
    ld d, c                                       ; $62ef: $51
    ld bc, $2ec6                                  ; $62f0: $01 $c6 $2e
    add h                                         ; $62f3: $84
    rla                                           ; $62f4: $17
    ldh [rNR24], a                                ; $62f5: $e0 $19
    jp nz, $ca3d                                  ; $62f7: $c2 $3d $ca

    bit 6, e                                      ; $62fa: $cb $73
    ld h, a                                       ; $62fc: $67
    xor c                                         ; $62fd: $a9
    add l                                         ; $62fe: $85
    or e                                          ; $62ff: $b3
    cpl                                           ; $6300: $2f
    ld e, l                                       ; $6301: $5d
    jr z, jr_021_62d3                             ; $6302: $28 $cf

    ret nc                                        ; $6304: $d0

    halt                                          ; $6305: $76
    jp nc, $0d7b                                  ; $6306: $d2 $7b $0d

    ld b, $ff                                     ; $6309: $06 $ff
    ld l, e                                       ; $630b: $6b
    ld hl, $fced                                  ; $630c: $21 $ed $fc
    ld e, h                                       ; $630f: $5c
    db $eb                                        ; $6310: $eb
    cp a                                          ; $6311: $bf
    ld c, [hl]                                    ; $6312: $4e
    ld e, [hl]                                    ; $6313: $5e
    ld [hl], d                                    ; $6314: $72
    sbc b                                         ; $6315: $98
    ld a, [c]                                     ; $6316: $f2
    jp c, $96cc                                   ; $6317: $da $cc $96

    inc c                                         ; $631a: $0c
    rla                                           ; $631b: $17
    cp $28                                        ; $631c: $fe $28
    ld sp, hl                                     ; $631e: $f9
    ld l, $18                                     ; $631f: $2e $18
    dec l                                         ; $6321: $2d
    sub a                                         ; $6322: $97
    jp Jump_000_1a4a                              ; $6323: $c3 $4a $1a


    ld hl, sp+$75                                 ; $6326: $f8 $75
    ld a, [c]                                     ; $6328: $f2
    sub d                                         ; $6329: $92
    jp $94ec                                      ; $632a: $c3 $ec $94


    reti                                          ; $632d: $d9


    sub a                                         ; $632e: $97
    ret c                                         ; $632f: $d8

    and l                                         ; $6330: $a5
    ld h, b                                       ; $6331: $60
    ld e, [hl]                                    ; $6332: $5e
    ld a, [hl]                                    ; $6333: $7e
    sub a                                         ; $6334: $97
    ld [bc], a                                    ; $6335: $02
    ld a, c                                       ; $6336: $79
    halt                                          ; $6337: $76
    sbc a                                         ; $6338: $9f
    inc e                                         ; $6339: $1c
    cp b                                          ; $633a: $b8
    ld l, e                                       ; $633b: $6b
    dec de                                        ; $633c: $1b
    sbc a                                         ; $633d: $9f
    and l                                         ; $633e: $a5

jr_021_633f:
    ld d, $e3                                     ; $633f: $16 $e3
    ret c                                         ; $6341: $d8

    inc sp                                        ; $6342: $33
    ld d, e                                       ; $6343: $53
    ld sp, hl                                     ; $6344: $f9
    sub d                                         ; $6345: $92
    ld a, [hl]                                    ; $6346: $7e
    ld [hl], b                                    ; $6347: $70
    xor c                                         ; $6348: $a9
    ld a, [$6935]                                 ; $6349: $fa $35 $69
    and $99                                       ; $634c: $e6 $99
    push af                                       ; $634e: $f5
    ld b, c                                       ; $634f: $41
    ld l, $26                                     ; $6350: $2e $26
    dec b                                         ; $6352: $05
    ld l, b                                       ; $6353: $68
    dec sp                                        ; $6354: $3b
    dec h                                         ; $6355: $25
    ld sp, hl                                     ; $6356: $f9

jr_021_6357:
    dec d                                         ; $6357: $15
    inc hl                                        ; $6358: $23
    jp nc, $73cc                                  ; $6359: $d2 $cc $73

    ld c, l                                       ; $635c: $4d
    ld a, [de]                                    ; $635d: $1a
    add hl, de                                    ; $635e: $19
    dec a                                         ; $635f: $3d
    rlca                                          ; $6360: $07
    ld e, a                                       ; $6361: $5f
    dec d                                         ; $6362: $15
    dec d                                         ; $6363: $15
    nop                                           ; $6364: $00
    ld hl, $2864                                  ; $6365: $21 $64 $28
    ld a, $c0                                     ; $6368: $3e $c0
    sbc d                                         ; $636a: $9a
    inc [hl]                                      ; $636b: $34
    db $e3                                        ; $636c: $e3
    sub l                                         ; $636d: $95
    ld a, h                                       ; $636e: $7c
    sbc [hl]                                      ; $636f: $9e
    adc e                                         ; $6370: $8b
    add hl, bc                                    ; $6371: $09
    cp a                                          ; $6372: $bf
    jr nc, @-$19                                  ; $6373: $30 $e5

    ld d, a                                       ; $6375: $57
    jp nc, $afc0                                  ; $6376: $d2 $c0 $af

    sub e                                         ; $6379: $93
    sub a                                         ; $637a: $97
    inc e                                         ; $637b: $1c
    db $10                                        ; $637c: $10
    ld b, $27                                     ; $637d: $06 $27
    cp $77                                        ; $637f: $fe $77
    and [hl]                                      ; $6381: $a6
    or h                                          ; $6382: $b4
    ld l, a                                       ; $6383: $6f
    ld a, [hl]                                    ; $6384: $7e
    ld c, c                                       ; $6385: $49
    di                                            ; $6386: $f3
    ld a, [c]                                     ; $6387: $f2
    dec sp                                        ; $6388: $3b
    ld e, [hl]                                    ; $6389: $5e
    dec h                                         ; $638a: $25
    ret z                                         ; $638b: $c8

    ld h, $3e                                     ; $638c: $26 $3e
    db $ec                                        ; $638e: $ec
    jp nc, $fcbc                                  ; $638f: $d2 $bc $fc

    adc [hl]                                      ; $6392: $8e
    dec h                                         ; $6393: $25
    sub a                                         ; $6394: $97
    ld h, [hl]                                    ; $6395: $66

jr_021_6396:
    xor l                                         ; $6396: $ad
    ld a, [de]                                    ; $6397: $1a
    inc hl                                        ; $6398: $23
    ld e, d                                       ; $6399: $5a
    ld c, e                                       ; $639a: $4b
    add [hl]                                      ; $639b: $86
    rst $18                                       ; $639c: $df
    ld c, [hl]                                    ; $639d: $4e
    sub $ec                                       ; $639e: $d6 $ec
    inc hl                                        ; $63a0: $23
    db $fc                                        ; $63a1: $fc
    ld [$1dff], a                                 ; $63a2: $ea $ff $1d

jr_021_63a5:
    ret c                                         ; $63a5: $d8

    scf                                           ; $63a6: $37
    rrca                                          ; $63a7: $0f
    ld c, e                                       ; $63a8: $4b
    sbc d                                         ; $63a9: $9a
    sub a                                         ; $63aa: $97
    rrca                                          ; $63ab: $0f
    ld de, $2706                                  ; $63ac: $11 $06 $27

Jump_021_63af:
    ld h, l                                       ; $63af: $65
    sub $47                                       ; $63b0: $d6 $47
    xor a                                         ; $63b2: $af
    or d                                          ; $63b3: $b2
    ld d, [hl]                                    ; $63b4: $56
    dec c                                         ; $63b5: $0d
    db $e4                                        ; $63b6: $e4
    or d                                          ; $63b7: $b2
    ld a, [de]                                    ; $63b8: $1a
    xor h                                         ; $63b9: $ac
    push de                                       ; $63ba: $d5
    jr c, jr_021_6357                             ; $63bb: $38 $9a

    and l                                         ; $63bd: $a5
    ld h, [hl]                                    ; $63be: $66
    db $fd                                        ; $63bf: $fd
    reti                                          ; $63c0: $d9


    ld l, c                                       ; $63c1: $69
    adc b                                         ; $63c2: $88
    db $ed                                        ; $63c3: $ed
    ld d, d                                       ; $63c4: $52
    jr nz, jr_021_6396                            ; $63c5: $20 $cf

    xor $93                                       ; $63c7: $ee $93
    jp $ad2e                                      ; $63c9: $c3 $2e $ad


    ld e, h                                       ; $63cc: $5c
    ld e, b                                       ; $63cd: $58
    and b                                         ; $63ce: $a0
    jp nz, $d69e                                  ; $63cf: $c2 $9e $d6

    ld a, [hl]                                    ; $63d2: $7e
    dec sp                                        ; $63d3: $3b
    push hl                                       ; $63d4: $e5
    ld de, $9606                                  ; $63d5: $11 $06 $96
    ld a, c                                       ; $63d8: $79
    ld c, c                                       ; $63d9: $49
    inc de                                        ; $63da: $13
    inc d                                         ; $63db: $14
    sbc a                                         ; $63dc: $9f
    ld h, l                                       ; $63dd: $65
    and b                                         ; $63de: $a0
    db $fc                                        ; $63df: $fc
    jr nz, jr_021_63a5                            ; $63e0: $20 $c3

    ld e, a                                       ; $63e2: $5f
    jp nc, $fcbc                                  ; $63e3: $d2 $bc $fc

    ld e, [hl]                                    ; $63e6: $5e
    add e                                         ; $63e7: $83
    ld hl, sp+$7d                                 ; $63e8: $f8 $7d
    sub a                                         ; $63ea: $97
    ld d, a                                       ; $63eb: $57
    or $6c                                        ; $63ec: $f6 $6c
    pop af                                        ; $63ee: $f1
    ld h, $cd                                     ; $63ef: $26 $cd
    res 4, l                                      ; $63f1: $cb $a5
    nop                                           ; $63f3: $00
    sub [hl]                                      ; $63f4: $96
    inc [hl]                                      ; $63f5: $34
    cpl                                           ; $63f6: $2f
    ccf                                           ; $63f7: $3f
    ld hl, sp+$2a                                 ; $63f8: $f8 $2a
    adc c                                         ; $63fa: $89
    call $998e                                    ; $63fb: $cd $8e $99
    add d                                         ; $63fe: $82
    jr nc, jr_021_643e                            ; $63ff: $30 $3d

    jp z, Jump_021_4fcb                           ; $6401: $ca $cb $4f

    push hl                                       ; $6404: $e5
    ld h, a                                       ; $6405: $67
    ret nz                                        ; $6406: $c0

    ld l, b                                       ; $6407: $68
    adc h                                         ; $6408: $8c
    call Call_000_052e                            ; $6409: $cd $2e $05
    ld a, [c]                                     ; $640c: $f2
    db $ec                                        ; $640d: $ec
    ld a, $39                                     ; $640e: $3e $39
    db $ec                                        ; $6410: $ec
    jp nc, $485a                                  ; $6411: $d2 $5a $48

    dec sp                                        ; $6414: $3b
    ld e, a                                       ; $6415: $5f
    add e                                         ; $6416: $83
    and l                                         ; $6417: $a5
    ld l, l                                       ; $6418: $6d
    rst $18                                       ; $6419: $df
    ld [$7ad1], a                                 ; $641a: $ea $d1 $7a
    sub h                                         ; $641d: $94
    ld l, a                                       ; $641e: $6f
    ld d, [hl]                                    ; $641f: $56
    and l                                         ; $6420: $a5
    adc c                                         ; $6421: $89
    ld l, h                                       ; $6422: $6c
    db $ed                                        ; $6423: $ed
    sbc a                                         ; $6424: $9f
    ld d, d                                       ; $6425: $52
    jp $9797                                      ; $6426: $c3 $97 $97


    rst $20                                       ; $6429: $e7
    xor $ad                                       ; $642a: $ee $ad
    ld c, a                                       ; $642c: $4f
    ld c, e                                       ; $642d: $4b
    sbc d                                         ; $642e: $9a
    sub a                                         ; $642f: $97
    rra                                           ; $6430: $1f
    xor a                                         ; $6431: $af
    ld sp, $c202                                  ; $6432: $31 $02 $c2
    xor l                                         ; $6435: $ad
    ld l, d                                       ; $6436: $6a
    db $fd                                        ; $6437: $fd
    dec [hl]                                      ; $6438: $35
    ld l, c                                       ; $6439: $69
    ld b, $ff                                     ; $643a: $06 $ff
    inc [hl]                                      ; $643c: $34
    and l                                         ; $643d: $a5

jr_021_643e:
    ld h, [hl]                                    ; $643e: $66
    sbc l                                         ; $643f: $9d
    db $f4                                        ; $6440: $f4
    sbc e                                         ; $6441: $9b
    or h                                          ; $6442: $b4
    ld c, e                                       ; $6443: $4b
    add c                                         ; $6444: $81
    inc a                                         ; $6445: $3c
    cp e                                          ; $6446: $bb
    ld c, a                                       ; $6447: $4f
    ld c, $53                                     ; $6448: $0e $53
    ld c, c                                       ; $644a: $49
    ld b, e                                       ; $644b: $43
    xor h                                         ; $644c: $ac
    dec hl                                        ; $644d: $2b
    ld b, $a7                                     ; $644e: $06 $a7
    db $e4                                        ; $6450: $e4
    ld a, [hl-]                                   ; $6451: $3a
    jp hl                                         ; $6452: $e9


    scf                                           ; $6453: $37
    ld l, c                                       ; $6454: $69
    sub l                                         ; $6455: $95
    jp nc, $232a                                  ; $6456: $d2 $2a $23

    ccf                                           ; $6459: $3f
    cp [hl]                                       ; $645a: $be
    xor b                                         ; $645b: $a8
    xor a                                         ; $645c: $af
    ld c, c                                       ; $645d: $49
    inc sp                                        ; $645e: $33
    sub l                                         ; $645f: $95
    rst $20                                       ; $6460: $e7
    xor [hl]                                      ; $6461: $ae
    ld a, e                                       ; $6462: $7b
    cp d                                          ; $6463: $ba
    cp a                                          ; $6464: $bf
    jr nz, jr_021_6473                            ; $6465: $20 $0c

    db $dd                                        ; $6467: $dd
    ld d, h                                       ; $6468: $54
    sbc $36                                       ; $6469: $de $36
    ld [hl], c                                    ; $646b: $71
    ld c, l                                       ; $646c: $4d
    sbc d                                         ; $646d: $9a
    or c                                          ; $646e: $b1
    and h                                         ; $646f: $a4
    sbc d                                         ; $6470: $9a
    xor a                                         ; $6471: $af
    ld h, [hl]                                    ; $6472: $66

jr_021_6473:
    ld l, e                                       ; $6473: $6b
    adc h                                         ; $6474: $8c
    or l                                          ; $6475: $b5
    ld e, l                                       ; $6476: $5d
    ld a, [c]                                     ; $6477: $f2
    sbc h                                         ; $6478: $9c
    xor [hl]                                      ; $6479: $ae

Jump_021_647a:
    ld d, d                                       ; $647a: $52
    inc de                                        ; $647b: $13
    sbc c                                         ; $647c: $99
    inc h                                         ; $647d: $24
    ld [hl], c                                    ; $647e: $71
    rst $10                                       ; $647f: $d7
    dec a                                         ; $6480: $3d
    db $dd                                        ; $6481: $dd
    ld e, a                                       ; $6482: $5f
    db $10                                        ; $6483: $10
    ld b, $3d                                     ; $6484: $06 $3d
    jp z, $0337                                   ; $6486: $ca $37 $03

    ld l, l                                       ; $6489: $6d
    sub $42                                       ; $648a: $d6 $42
    jp c, $b1f9                                   ; $648c: $da $f9 $b1

    ld a, h                                       ; $648f: $7c
    and b                                         ; $6490: $a0
    sbc d                                         ; $6491: $9a
    cpl                                           ; $6492: $2f
    sbc $fa                                       ; $6493: $de $fa
    ld c, a                                       ; $6495: $4f
    xor c                                         ; $6496: $a9
    ld c, c                                       ; $6497: $49
    ld a, [$8db5]                                 ; $6498: $fa $b5 $8d
    xor a                                         ; $649b: $af
    dec h                                         ; $649c: $25
    ld [hl], $5e                                  ; $649d: $36 $5e
    ld e, [hl]                                    ; $649f: $5e
    ld l, $01                                     ; $64a0: $2e $01
    ld [hl], a                                    ; $64a2: $77
    ld [hl], b                                    ; $64a3: $70
    xor c                                         ; $64a4: $a9
    ld a, [$af95]                                 ; $64a5: $fa $95 $af
    pop bc                                        ; $64a8: $c1
    cp h                                          ; $64a9: $bc
    db $fc                                        ; $64aa: $fc
    sub l                                         ; $64ab: $95
    sub l                                         ; $64ac: $95
    inc [hl]                                      ; $64ad: $34
    ldh a, [$0b]                                  ; $64ae: $f0 $0b
    dec d                                         ; $64b0: $15
    db $fc                                        ; $64b1: $fc
    dec b                                         ; $64b2: $05
    ld h, c                                       ; $64b3: $61
    dec l                                         ; $64b4: $2d
    and h                                         ; $64b5: $a4
    sbc l                                         ; $64b6: $9d
    ld e, a                                       ; $64b7: $5f

jr_021_64b8:
    ld [hl], b                                    ; $64b8: $70
    xor l                                         ; $64b9: $ad
    rrca                                          ; $64ba: $0f
    dec bc                                        ; $64bb: $0b
    ld a, a                                       ; $64bc: $7f
    ld e, [hl]                                    ; $64bd: $5e
    ld a, [hl]                                    ; $64be: $7e
    sub l                                         ; $64bf: $95
    db $fc                                        ; $64c0: $fc
    ld [hl], a                                    ; $64c1: $77
    nop                                           ; $64c2: $00
    ld h, c                                       ; $64c3: $61
    sub [hl]                                      ; $64c4: $96
    ld a, [de]                                    ; $64c5: $1a
    ld e, e                                       ; $64c6: $5b
    cp h                                          ; $64c7: $bc
    push af                                       ; $64c8: $f5
    sbc a                                         ; $64c9: $9f
    rst $20                                       ; $64ca: $e7
    ld [c], a                                     ; $64cb: $e2
    xor e                                         ; $64cc: $ab
    ret nc                                        ; $64cd: $d0

    inc a                                         ; $64ce: $3c
    rla                                           ; $64cf: $17
    ld l, d                                       ; $64d0: $6a
    db $fd                                        ; $64d1: $fd
    ld h, a                                       ; $64d2: $67
    ld e, a                                       ; $64d3: $5f
    adc [hl]                                      ; $64d4: $8e
    inc e                                         ; $64d5: $1c
    sbc e                                         ; $64d6: $9b
    ld sp, $54b9                                  ; $64d7: $31 $b9 $54
    rlca                                          ; $64da: $07
    add h                                         ; $64db: $84
    ld bc, $1f16                                  ; $64dc: $01 $16 $1f
    add h                                         ; $64df: $84
    rra                                           ; $64e0: $1f
    inc hl                                        ; $64e1: $23
    inc l                                         ; $64e2: $2c
    sbc $fa                                       ; $64e3: $de $fa
    ld c, a                                       ; $64e5: $4f
    jp nc, Jump_021_69fd                          ; $64e6: $d2 $fd $69

    rra                                           ; $64e9: $1f
    inc b                                         ; $64ea: $04
    or b                                          ; $64eb: $b0
    ld c, e                                       ; $64ec: $4b
    dec hl                                        ; $64ed: $2b
    cpl                                           ; $64ee: $2f
    adc a                                         ; $64ef: $8f
    jr nc, jr_021_6519                            ; $64f0: $30 $27

    scf                                           ; $64f2: $37
    ld l, e                                       ; $64f3: $6b
    ld c, e                                       ; $64f4: $4b
    ld a, d                                       ; $64f5: $7a
    ld a, c                                       ; $64f6: $79
    sbc c                                         ; $64f7: $99
    ld h, a                                       ; $64f8: $67
    ld h, h                                       ; $64f9: $64
    dec bc                                        ; $64fa: $0b
    ld a, a                                       ; $64fb: $7f
    rst $10                                       ; $64fc: $d7
    sbc [hl]                                      ; $64fd: $9e
    ld h, l                                       ; $64fe: $65
    ld d, b                                       ; $64ff: $50
    or h                                          ; $6500: $b4
    cp $33                                        ; $6501: $fe $33
    sbc l                                         ; $6503: $9d
    jp hl                                         ; $6504: $e9


    ld l, h                                       ; $6505: $6c
    inc de                                        ; $6506: $13
    db $e3                                        ; $6507: $e3
    ld a, [hl-]                                   ; $6508: $3a
    jp hl                                         ; $6509: $e9


    scf                                           ; $650a: $37
    ld l, c                                       ; $650b: $69
    db $ed                                        ; $650c: $ed
    ld [hl], h                                    ; $650d: $74
    adc a                                         ; $650e: $8f
    rst $08                                       ; $650f: $cf
    dec e                                         ; $6510: $1d
    ld h, h                                       ; $6511: $64
    ld hl, sp+$5e                                 ; $6512: $f8 $5e
    ld l, $05                                     ; $6514: $2e $05
    or e                                          ; $6516: $b3
    dec c                                         ; $6517: $0d
    adc l                                         ; $6518: $8d

jr_021_6519:
    cp a                                          ; $6519: $bf
    ld sp, $68ae                                  ; $651a: $31 $ae $68
    and a                                         ; $651d: $a7
    di                                            ; $651e: $f3
    add h                                         ; $651f: $84
    jr nc, jr_021_64b8                            ; $6520: $30 $96

    pop af                                        ; $6522: $f1
    ld c, d                                       ; $6523: $4a
    ld a, $cf                                     ; $6524: $3e $cf
    push bc                                       ; $6526: $c5

Jump_021_6527:
    ld d, a                                       ; $6527: $57
    and c                                         ; $6528: $a1
    ld a, c                                       ; $6529: $79
    ld l, $d4                                     ; $652a: $2e $d4
    ld a, [$574f]                                 ; $652c: $fa $4f $57
    ld e, [hl]                                    ; $652f: $5e
    db $e3                                        ; $6530: $e3
    and l                                         ; $6531: $a5
    ld h, b                                       ; $6532: $60
    sbc l                                         ; $6533: $9d
    db $f4                                        ; $6534: $f4
    sbc e                                         ; $6535: $9b
    or h                                          ; $6536: $b4
    or $57                                        ; $6537: $f6 $57
    ld l, d                                       ; $6539: $6a
    ldh [$e7], a                                  ; $653a: $e0 $e7
    push hl                                       ; $653c: $e5
    rst $10                                       ; $653d: $d7
    ld [de], a                                    ; $653e: $12
    dec de                                        ; $653f: $1b
    cpl                                           ; $6540: $2f
    cpl                                           ; $6541: $2f
    sub a                                         ; $6542: $97
    ld h, b                                       ; $6543: $60
    push af                                       ; $6544: $f5
    rst $38                                       ; $6545: $ff
    adc $5c                                       ; $6546: $ce $5c
    ld l, [hl]                                    ; $6548: $6e
    and a                                         ; $6549: $a7
    ld [hl], e                                    ; $654a: $73
    add hl, hl                                    ; $654b: $29
    ld e, b                                       ; $654c: $58
    ld hl, sp-$45                                 ; $654d: $f8 $bb
    inc [hl]                                      ; $654f: $34
    cpl                                           ; $6550: $2f
    cp a                                          ; $6551: $bf
    and d                                         ; $6552: $a2
    ld sp, $0c22                                  ; $6553: $31 $22 $0c
    dec a                                         ; $6556: $3d
    and h                                         ; $6557: $a4
    add hl, de                                    ; $6558: $19
    and l                                         ; $6559: $a5
    rst $08                                       ; $655a: $cf
    ld [hl], e                                    ; $655b: $73
    and c                                         ; $655c: $a1
    sub $7f                                       ; $655d: $d6 $7f
    sbc [hl]                                      ; $655f: $9e
    cp c                                          ; $6560: $b9
    or $0d                                        ; $6561: $f6 $0d
    sub [hl]                                      ; $6563: $96
    or $74                                        ; $6564: $f6 $74
    pop hl                                        ; $6566: $e1
    inc bc                                        ; $6567: $03
    ld [hl], b                                    ; $6568: $70
    rst $10                                       ; $6569: $d7
    dec a                                         ; $656a: $3d
    db $dd                                        ; $656b: $dd
    ld e, a                                       ; $656c: $5f
    db $10                                        ; $656d: $10
    ld b, $96                                     ; $656e: $06 $96
    sub l                                         ; $6570: $95
    db $ec                                        ; $6571: $ec
    db $fc                                        ; $6572: $fc
    inc l                                         ; $6573: $2c
    ld h, e                                       ; $6574: $63
    ld c, c                                       ; $6575: $49
    dec [hl]                                      ; $6576: $35
    rra                                           ; $6577: $1f
    ld [hl], h                                    ; $6578: $74
    ld l, [hl]                                    ; $6579: $6e
    adc h                                         ; $657a: $8c
    ld d, e                                       ; $657b: $53
    ld l, d                                       ; $657c: $6a
    cp h                                          ; $657d: $bc
    ld e, h                                       ; $657e: $5c
    ld a, [bc]                                    ; $657f: $0a
    ld d, $6f                                     ; $6580: $16 $6f
    db $fd                                        ; $6582: $fd
    ld h, a                                       ; $6583: $67
    sbc c                                         ; $6584: $99
    ld bc, $31a3                                  ; $6585: $01 $a3 $31
    ld [hl], $63                                  ; $6588: $36 $63
    adc c                                         ; $658a: $89
    jr nc, @+$29                                  ; $658b: $30 $27

    scf                                           ; $658d: $37
    xor e                                         ; $658e: $ab

Jump_021_658f:
    call nc, Call_000_2644                        ; $658f: $d4 $44 $26
    ld c, c                                       ; $6592: $49
    cp e                                          ; $6593: $bb
    jr nc, jr_021_65be                            ; $6594: $30 $28

    sub a                                         ; $6596: $97
    xor $cb                                       ; $6597: $ee $cb

jr_021_6599:
    cp h                                          ; $6599: $bc
    jr z, @+$4f                                   ; $659a: $28 $4d

    xor c                                         ; $659c: $a9
    ld e, c                                       ; $659d: $59
    jp c, $f2f3                                   ; $659e: $da $f3 $f2

    ld c, e                                       ; $65a1: $4b
    cpl                                           ; $65a2: $2f
    cpl                                           ; $65a3: $2f
    add b                                         ; $65a4: $80
    sub $2b                                       ; $65a5: $d6 $2b

jr_021_65a7:
    call $a4a0                                    ; $65a7: $cd $a0 $a4
    adc c                                         ; $65aa: $89
    ld l, h                                       ; $65ab: $6c
    sbc l                                         ; $65ac: $9d
    adc h                                         ; $65ad: $8c
    rla                                           ; $65ae: $17
    jp z, $349a                                   ; $65af: $ca $9a $34

    ld [bc], a                                    ; $65b2: $02
    call c, $2679                                 ; $65b3: $dc $79 $26
    jp nz, $3727                                  ; $65b6: $c2 $27 $37

    ld l, e                                       ; $65b9: $6b
    ld c, e                                       ; $65ba: $4b
    ld a, d                                       ; $65bb: $7a
    ld a, c                                       ; $65bc: $79
    add c                                         ; $65bd: $81

jr_021_65be:
    add c                                         ; $65be: $81
    ld [hl], $6b                                  ; $65bf: $36 $6b
    ld hl, $fced                                  ; $65c1: $21 $ed $fc
    ld l, $4c                                     ; $65c4: $2e $4c
    ld h, c                                       ; $65c6: $61
    pop hl                                        ; $65c7: $e1
    dec hl                                        ; $65c8: $2b
    ld c, l                                       ; $65c9: $4d

Jump_021_65ca:
    ld h, c                                       ; $65ca: $61
    push hl                                       ; $65cb: $e5
    rla                                           ; $65cc: $17
    inc sp                                        ; $65cd: $33
    db $eb                                        ; $65ce: $eb
    add b                                         ; $65cf: $80
    jr nc, jr_021_6599                            ; $65d0: $30 $c7

    ld e, l                                       ; $65d2: $5d
    ld bc, $af5f                                  ; $65d3: $01 $5f $af
    ld d, a                                       ; $65d6: $57
    ld e, c                                       ; $65d7: $59
    or a                                          ; $65d8: $b7
    xor b                                         ; $65d9: $a8
    nop                                           ; $65da: $00
    rrca                                          ; $65db: $0f
    add a                                         ; $65dc: $87
    ld l, a                                       ; $65dd: $6f
    dec a                                         ; $65de: $3d
    ld b, h                                       ; $65df: $44
    add hl, bc                                    ; $65e0: $09
    db $ec                                        ; $65e1: $ec
    dec de                                        ; $65e2: $1b
    jr jr_021_6636                                ; $65e3: $18 $51

    cp a                                          ; $65e5: $bf
    ld c, c                                       ; $65e6: $49
    call c, Call_021_4f75                         ; $65e7: $dc $75 $4f
    cp a                                          ; $65ea: $bf
    ld c, c                                       ; $65eb: $49
    ret nz                                        ; $65ec: $c0

    ld e, l                                       ; $65ed: $5d
    or a                                          ; $65ee: $b7
    and d                                         ; $65ef: $a2
    ld [de], a                                    ; $65f0: $12
    ld [bc], a                                    ; $65f1: $02
    ld [hl], a                                    ; $65f2: $77
    xor l                                         ; $65f3: $ad
    rla                                           ; $65f4: $17
    inc a                                         ; $65f5: $3c
    and l                                         ; $65f6: $a5
    ld e, c                                       ; $65f7: $59
    jp c, Jump_021_593b                           ; $65f8: $da $3b $59

    add e                                         ; $65fb: $83
    ld e, e                                       ; $65fc: $5b
    ld [hl], c                                    ; $65fd: $71
    rst $10                                       ; $65fe: $d7
    ld a, [$ced2]                                 ; $65ff: $fa $d2 $ce
    sbc b                                         ; $6602: $98
    ld b, c                                       ; $6603: $41
    jp Jump_000_31dd                              ; $6604: $c3 $dd $31


    ld l, a                                       ; $6607: $6f
    ccf                                           ; $6608: $3f
    pop bc                                        ; $6609: $c1
    rst $28                                       ; $660a: $ef
    xor b                                         ; $660b: $a8
    ld b, b                                       ; $660c: $40
    cpl                                           ; $660d: $2f
    add c                                         ; $660e: $81
    rst $28                                       ; $660f: $ef
    jr jr_021_65a7                                ; $6610: $18 $95

    ld a, [$128e]                                 ; $6612: $fa $8e $12
    rlca                                          ; $6615: $07
    xor $94                                       ; $6616: $ee $94
    ret c                                         ; $6618: $d8

    adc [hl]                                      ; $6619: $8e
    adc e                                         ; $661a: $8b
    call Call_000_00a5                            ; $661b: $cd $a5 $00
    ld h, c                                       ; $661e: $61
    cp l                                          ; $661f: $bd
    jp nc, Jump_021_4a0c                          ; $6620: $d2 $0c $4a

    sbc d                                         ; $6623: $9a
    ret z                                         ; $6624: $c8

    ld d, [hl]                                    ; $6625: $56
    adc h                                         ; $6626: $8c
    ld c, b                                       ; $6627: $48
    inc sp                                        ; $6628: $33
    dec h                                         ; $6629: $25
    ld [hl], $fb                                  ; $662a: $36 $fb

Jump_021_662c:
    ld [de], a                                    ; $662c: $12
    ld e, e                                       ; $662d: $5b
    sub e                                         ; $662e: $93

Jump_021_662f:
    ld b, [hl]                                    ; $662f: $46
    ld b, [hl]                                    ; $6630: $46
    rst $08                                       ; $6631: $cf
    pop bc                                        ; $6632: $c1
    ld d, a                                       ; $6633: $57
    ld b, l                                       ; $6634: $45
    dec b                                         ; $6635: $05

jr_021_6636:
    ld b, b                                       ; $6636: $40
    jr jr_021_664f                                ; $6637: $18 $16

    ld a, e                                       ; $6639: $7b
    ld c, l                                       ; $663a: $4d
    sbc d                                         ; $663b: $9a
    or c                                          ; $663c: $b1
    and h                                         ; $663d: $a4
    sbc d                                         ; $663e: $9a
    xor a                                         ; $663f: $af
    ld c, [hl]                                    ; $6640: $4e
    ret                                           ; $6641: $c9


    adc a                                         ; $6642: $8f
    cpl                                           ; $6643: $2f
    ld [$a2ab], a                                 ; $6644: $ea $ab $a2
    ld [bc], a                                    ; $6647: $02
    inc a                                         ; $6648: $3c
    xor h                                         ; $6649: $ac
    ld c, c                                       ; $664a: $49
    or e                                          ; $664b: $b3
    and d                                         ; $664c: $a2
    sub $e7                                       ; $664d: $d6 $e7

jr_021_664f:
    xor [hl]                                      ; $664f: $ae
    ld a, [hl+]                                   ; $6650: $2a
    ld e, a                                       ; $6651: $5f

Call_021_6652:
    push de                                       ; $6652: $d5
    rst $20                                       ; $6653: $e7
    push hl                                       ; $6654: $e5
    ld [hl], a                                    ; $6655: $77
    inc d                                         ; $6656: $14
    ld d, c                                       ; $6657: $51
    ld a, [de]                                    ; $6658: $1a
    xor d                                         ; $6659: $aa
    ld a, $7c                                     ; $665a: $3e $7c
    ld a, [c]                                     ; $665c: $f2
    dec e                                         ; $665d: $1d
    sbc l                                         ; $665e: $9d
    ld a, [hl+]                                   ; $665f: $2a
    ld l, h                                       ; $6660: $6c
    sub a                                         ; $6661: $97
    sub $a4                                       ; $6662: $d6 $a4
    sub c                                         ; $6664: $91
    sub l                                         ; $6665: $95
    inc [hl]                                      ; $6666: $34
    ldh a, [$ab]                                  ; $6667: $f0 $ab
    ld [hl-], a                                   ; $6669: $32
    inc c                                         ; $666a: $0c
    sub e                                         ; $666b: $93
    ld h, $99                                     ; $666c: $26 $99
    ld hl, $96c2                                  ; $666e: $21 $c2 $96
    ld e, d                                       ; $6671: $5a
    cp b                                          ; $6672: $b8
    and h                                         ; $6673: $a4
    add l                                         ; $6674: $85
    call Call_021_6d78                            ; $6675: $cd $78 $6d
    and $b9                                       ; $6678: $e6 $b9
    sub $97                                       ; $667a: $d6 $97
    halt                                          ; $667c: $76
    add $0c                                       ; $667d: $c6 $0c
    sbc d                                         ; $667f: $9a
    ld d, l                                       ; $6680: $55
    ld d, c                                       ; $6681: $51
    ld bc, $2cd0                                  ; $6682: $01 $d0 $2c
    ld e, [hl]                                    ; $6685: $5e
    add e                                         ; $6686: $83
    cp c                                          ; $6687: $b9
    sbc d                                         ; $6688: $9a
    and b                                         ; $6689: $a0
    ld hl, sp-$2e                                 ; $668a: $f8 $d2
    jr c, @+$5e                                   ; $668c: $38 $5c

    or $bb                                        ; $668e: $f6 $bb
    inc [hl]                                      ; $6690: $34
    cpl                                           ; $6691: $2f
    cp a                                          ; $6692: $bf
    ld b, b                                       ; $6693: $40
    cp $a9                                        ; $6694: $fe $a9
    and h                                         ; $6696: $a4
    add c                                         ; $6697: $81
    rlca                                          ; $6698: $07
    add h                                         ; $6699: $84
    ld bc, $5a96                                  ; $669a: $01 $96 $5a
    cp b                                          ; $669d: $b8
    sbc b                                         ; $669e: $98
    ld e, c                                       ; $669f: $59
    cp a                                          ; $66a0: $bf
    inc d                                         ; $66a1: $14
    call z, Call_021_594e                         ; $66a2: $cc $4e $59
    or a                                          ; $66a5: $b7
    and d                                         ; $66a6: $a2

Jump_021_66a7:
    ld [de], a                                    ; $66a7: $12
    jp nz, $a8aa                                  ; $66a8: $c2 $aa $a8

    nop                                           ; $66ab: $00
    ld l, b                                       ; $66ac: $68
    sub [hl]                                      ; $66ad: $96
    ld a, c                                       ; $66ae: $79
    cp c                                          ; $66af: $b9
    ld d, h                                       ; $66b0: $54
    rst $18                                       ; $66b1: $df
    push af                                       ; $66b2: $f5
    ld a, [de]                                    ; $66b3: $1a
    inc l                                         ; $66b4: $2c
    ld l, c                                       ; $66b5: $69
    ld e, [hl]                                    ; $66b6: $5e
    ld a, [hl]                                    ; $66b7: $7e
    ldh a, [rHDMA5]                               ; $66b8: $f0 $55
    ld [de], a                                    ; $66ba: $12
    sbc e                                         ; $66bb: $9b
    dec e                                         ; $66bc: $1d
    inc sp                                        ; $66bd: $33
    dec b                                         ; $66be: $05
    ld h, c                                       ; $66bf: $61
    rst $00                                       ; $66c0: $c7

jr_021_66c1:
    cp h                                          ; $66c1: $bc
    db $fd                                        ; $66c2: $fd
    inc b                                         ; $66c3: $04
    cp a                                          ; $66c4: $bf
    and e                                         ; $66c5: $a3
    ld [bc], a                                    ; $66c6: $02
    cp l                                          ; $66c7: $bd
    inc b                                         ; $66c8: $04
    cp [hl]                                       ; $66c9: $be
    ld h, e                                       ; $66ca: $63
    ld d, h                                       ; $66cb: $54
    ld [$4a3b], a                                 ; $66cc: $ea $3b $4a
    inc e                                         ; $66cf: $1c
    ld d, [hl]                                    ; $66d0: $56

jr_021_66d1:
    ld b, l                                       ; $66d1: $45
    dec b                                         ; $66d2: $05
    jr @-$5a                                      ; $66d3: $18 $a4

    ld hl, $8306                                  ; $66d5: $21 $06 $83
    ld c, [hl]                                    ; $66d8: $4e
    ld h, [hl]                                    ; $66d9: $66
    cp l                                          ; $66da: $bd
    ld b, c                                       ; $66db: $41
    or e                                          ; $66dc: $b3
    ld a, b                                       ; $66dd: $78
    dec c                                         ; $66de: $0d
    sub [hl]                                      ; $66df: $96
    inc [hl]                                      ; $66e0: $34
    cpl                                           ; $66e1: $2f
    ccf                                           ; $66e2: $3f
    cpl                                           ; $66e3: $2f
    ld d, a                                       ; $66e4: $57
    ret c                                         ; $66e5: $d8

    db $ec                                        ; $66e6: $ec
    sbc b                                         ; $66e7: $98
    add hl, hl                                    ; $66e8: $29
    ld [$3d03], sp                                ; $66e9: $08 $03 $3d
    jp z, Jump_021_4fcb                           ; $66ec: $ca $cb $4f

    push hl                                       ; $66ef: $e5
    xor c                                         ; $66f0: $a9
    and $53                                       ; $66f1: $e6 $53
    ld l, d                                       ; $66f3: $6a
    ld d, [hl]                                    ; $66f4: $56
    ld b, l                                       ; $66f5: $45
    dec b                                         ; $66f6: $05
    ld a, b                                       ; $66f7: $78
    sbc b                                         ; $66f8: $98
    ld a, [$c634]                                 ; $66f9: $fa $34 $c6
    dec h                                         ; $66fc: $25
    call $efcb                                    ; $66fd: $cd $cb $ef
    ld a, b                                       ; $6700: $78
    ld c, c                                       ; $6701: $49
    ld b, e                                       ; $6702: $43
    ld l, h                                       ; $6703: $6c
    rst $00                                       ; $6704: $c7
    push bc                                       ; $6705: $c5
    ld c, h                                       ; $6706: $4c
    ld b, c                                       ; $6707: $41
    jr jr_021_66d1                                ; $6708: $18 $c7

    ld e, l                                       ; $670a: $5d
    ld bc, $f35f                                  ; $670b: $01 $5f $f3
    ld a, [hl+]                                   ; $670e: $2a
    xor e                                         ; $670f: $ab
    and d                                         ; $6710: $a2
    ld [bc], a                                    ; $6711: $02
    inc a                                         ; $6712: $3c
    ld c, h                                       ; $6713: $4c
    push hl                                       ; $6714: $e5
    rla                                           ; $6715: $17
    cpl                                           ; $6716: $2f
    ld hl, sp-$4d                                 ; $6717: $f8 $b3
    dec h                                         ; $6719: $25
    call $efcb                                    ; $671a: $cd $cb $ef
    jr z, jr_021_66c1                             ; $671d: $28 $a2

    inc [hl]                                      ; $671f: $34
    ld d, h                                       ; $6720: $54
    ld a, l                                       ; $6721: $7d
    ld hl, sp-$1c                                 ; $6722: $f8 $e4
    dec sp                                        ; $6724: $3b
    ld a, [hl-]                                   ; $6725: $3a
    ld d, l                                       ; $6726: $55

Jump_021_6727:
    ret c                                         ; $6727: $d8

    ld l, $cd                                     ; $6728: $2e $cd
    set 5, a                                      ; $672a: $cb $ef
    ld a, b                                       ; $672c: $78
    ld l, c                                       ; $672d: $69
    ld l, h                                       ; $672e: $6c
    ei                                            ; $672f: $fb
    ld [de], a                                    ; $6730: $12
    ld c, e                                       ; $6731: $4b
    ld e, c                                       ; $6732: $59
    sub l                                         ; $6733: $95
    ld h, c                                       ; $6734: $61
    sbc b                                         ; $6735: $98
    inc [hl]                                      ; $6736: $34
    ret                                           ; $6737: $c9


    inc c                                         ; $6738: $0c
    ld de, $dd06                                  ; $6739: $11 $06 $dd
    db $d3                                        ; $673c: $d3
    ld l, a                                       ; $673d: $6f
    ld [de], a                                    ; $673e: $12
    db $ec                                        ; $673f: $ec
    jp nz, $fcbc                                  ; $6740: $c2 $bc $fc

    sub d                                         ; $6743: $92
    ld h, d                                       ; $6744: $62
    or e                                          ; $6745: $b3
    ld a, [hl+]                                   ; $6746: $2a
    ld a, [hl+]                                   ; $6747: $2a
    ret nz                                        ; $6748: $c0

    jp z, Jump_000_3647                           ; $6749: $ca $47 $36

    sub [hl]                                      ; $674c: $96
    inc a                                         ; $674d: $3c
    xor l                                         ; $674e: $ad
    cp h                                          ; $674f: $bc
    inc a                                         ; $6750: $3c
    jp nz, $f196                                  ; $6751: $c2 $96 $f1

    rla                                           ; $6754: $17
    jp z, Jump_000_2b2c                           ; $6755: $ca $2c $2b

    jp z, $a616                                   ; $6758: $ca $16 $a6

    db $fc                                        ; $675b: $fc
    cp h                                          ; $675c: $bc
    jr z, jr_021_678c                             ; $675d: $28 $2d

    jp hl                                         ; $675f: $e9


    ld d, a                                       ; $6760: $57
    ld b, l                                       ; $6761: $45
    dec b                                         ; $6762: $05
    ret c                                         ; $6763: $d8

    and l                                         ; $6764: $a5
    ld a, c                                       ; $6765: $79
    ld sp, hl                                     ; $6766: $f9
    ld sp, $c143                                  ; $6767: $31 $43 $c1
    daa                                           ; $676a: $27
    ld bc, $c59a                                  ; $676b: $01 $9a $c5
    ld l, e                                       ; $676e: $6b
    or b                                          ; $676f: $b0
    ld a, [hl+]                                   ; $6770: $2a
    ld h, $fc                                     ; $6771: $26 $fc
    inc a                                         ; $6773: $3c
    rla                                           ; $6774: $17
    ld [hl], $2b                                  ; $6775: $36 $2b
    ld l, c                                       ; $6777: $69
    ldh [rNR11], a                                ; $6778: $e0 $11
    ld b, $3d                                     ; $677a: $06 $3d
    jp z, Jump_021_4fcb                           ; $677c: $ca $cb $4f

    push hl                                       ; $677f: $e5
    ld b, a                                       ; $6780: $47
    cp c                                          ; $6781: $b9
    ld a, [hl+]                                   ; $6782: $2a
    ld a, [hl+]                                   ; $6783: $2a
    ret nz                                        ; $6784: $c0

    jp $e692                                      ; $6785: $c3 $92 $e6


    push hl                                       ; $6788: $e5
    jp nz, $98ec                                  ; $6789: $c2 $ec $98

jr_021_678c:
    add hl, hl                                    ; $678c: $29
    ld [$2703], sp                                ; $678d: $08 $03 $27
    daa                                           ; $6790: $27
    ld hl, sp-$14                                 ; $6791: $f8 $ec
    dec hl                                        ; $6793: $2b
    ldh [rOCPD], a                                ; $6794: $e0 $6b
    ld e, [hl]                                    ; $6796: $5e
    ld h, l                                       ; $6797: $65
    ld d, l                                       ; $6798: $55
    ld d, h                                       ; $6799: $54
    add b                                         ; $679a: $80
    add a                                         ; $679b: $87
    xor c                                         ; $679c: $a9
    db $fc                                        ; $679d: $fc
    ld c, h                                       ; $679e: $4c
    rlca                                          ; $679f: $07
    ld e, h                                       ; $67a0: $5c
    xor a                                         ; $67a1: $af
    nop                                           ; $67a2: $00
    ld [hl], a                                    ; $67a3: $77
    rst $08                                       ; $67a4: $cf
    and c                                         ; $67a5: $a1
    ld a, [$cf8e]                                 ; $67a6: $fa $8e $cf
    ld c, [hl]                                    ; $67a9: $4e
    ld e, c                                       ; $67aa: $59
    rst $30                                       ; $67ab: $f7
    db $f4                                        ; $67ac: $f4
    sbc e                                         ; $67ad: $9b
    inc b                                         ; $67ae: $04
    ld d, e                                       ; $67af: $53
    ld h, d                                       ; $67b0: $62
    ld l, e                                       ; $67b1: $6b
    ld a, l                                       ; $67b2: $7d
    ld l, c                                       ; $67b3: $69
    ld h, a                                       ; $67b4: $67
    call z, Call_021_41a0                         ; $67b5: $cc $a0 $41
    jr jr_021_67f7                                ; $67b8: $18 $3d

    jp z, Jump_021_5fcf                           ; $67ba: $ca $cf $5f

    xor e                                         ; $67bd: $ab
    ld a, [c]                                     ; $67be: $f2
    ld [bc], a                                    ; $67bf: $02
    or l                                          ; $67c0: $b5
    ld [hl], l                                    ; $67c1: $75
    swap b                                        ; $67c2: $cb $30
    ld c, h                                       ; $67c4: $4c
    jp c, $99e9                                   ; $67c5: $da $e9 $99

    pop hl                                        ; $67c8: $e1
    ld l, $2c                                     ; $67c9: $2e $2c
    ld l, c                                       ; $67cb: $69
    ld e, [hl]                                    ; $67cc: $5e
    ld a, [hl]                                    ; $67cd: $7e
    halt                                          ; $67ce: $76
    call z, $ee14                                 ; $67cf: $cc $14 $ee
    jp c, $e7c6                                   ; $67d2: $da $c6 $e7

    push hl                                       ; $67d5: $e5
    push hl                                       ; $67d6: $e5
    and a                                         ; $67d7: $a7
    ld a, [c]                                     ; $67d8: $f2
    and e                                         ; $67d9: $a3
    ld e, h                                       ; $67da: $5c
    dec d                                         ; $67db: $15
    dec d                                         ; $67dc: $15
    ld b, b                                       ; $67dd: $40
    ld [hl-], a                                   ; $67de: $32
    ld b, e                                       ; $67df: $43
    ld e, b                                       ; $67e0: $58
    ld a, c                                       ; $67e1: $79
    ld a, c                                       ; $67e2: $79
    add h                                         ; $67e3: $84
    ld bc, $b196                                  ; $67e4: $01 $96 $b1
    and h                                         ; $67e7: $a4
    sbc d                                         ; $67e8: $9a
    xor a                                         ; $67e9: $af
    ld c, [hl]                                    ; $67ea: $4e
    ret                                           ; $67eb: $c9


    adc a                                         ; $67ec: $8f
    cpl                                           ; $67ed: $2f
    cpl                                           ; $67ee: $2f
    ccf                                           ; $67ef: $3f
    ld c, e                                       ; $67f0: $4b
    dec l                                         ; $67f1: $2d
    inc e                                         ; $67f2: $1c
    sbc b                                         ; $67f3: $98
    ld c, [hl]                                    ; $67f4: $4e
    daa                                           ; $67f5: $27
    pop hl                                        ; $67f6: $e1

jr_021_67f7:
    reti                                          ; $67f7: $d9


    inc a                                         ; $67f8: $3c
    rla                                           ; $67f9: $17
    inc h                                         ; $67fa: $24
    jp nz, Jump_021_5816                          ; $67fb: $c2 $16 $58

    rrca                                          ; $67fe: $0f
    ld d, c                                       ; $67ff: $51
    ld [bc], a                                    ; $6800: $02
    ei                                            ; $6801: $fb
    ld b, $46                                     ; $6802: $06 $46
    call nc, $d26f                                ; $6804: $d4 $6f $d2
    xor d                                         ; $6807: $aa
    xor b                                         ; $6808: $a8
    nop                                           ; $6809: $00
    ld c, e                                       ; $680a: $4b
    sbc d                                         ; $680b: $9a
    sub a                                         ; $680c: $97
    dec bc                                        ; $680d: $0b
    or e                                          ; $680e: $b3
    ld h, e                                       ; $680f: $63
    and [hl]                                      ; $6810: $a6
    ld [hl], h                                    ; $6811: $74
    ld e, l                                       ; $6812: $5d
    ld c, e                                       ; $6813: $4b
    add [hl]                                      ; $6814: $86
    sbc a                                         ; $6815: $9f
    db $f4                                        ; $6816: $f4
    di                                            ; $6817: $f3
    adc h                                         ; $6818: $8c
    ld l, h                                       ; $6819: $6c
    pop hl                                        ; $681a: $e1
    rst $28                                       ; $681b: $ef
    ld a, [$202e]                                 ; $681c: $fa $2e $20
    inc c                                         ; $681f: $0c
    db $dd                                        ; $6820: $dd
    dec h                                         ; $6821: $25
    db $ed                                        ; $6822: $ed
    rlca                                          ; $6823: $07
    ld c, b                                       ; $6824: $48
    reti                                          ; $6825: $d9


    ret                                           ; $6826: $c9


    push de                                       ; $6827: $d5
    pop af                                        ; $6828: $f1
    ld c, c                                       ; $6829: $49
    ld a, [de]                                    ; $682a: $1a
    ld l, b                                       ; $682b: $68
    adc h                                         ; $682c: $8c
    dec [hl]                                      ; $682d: $35
    ld e, b                                       ; $682e: $58
    rrca                                          ; $682f: $0f
    ld d, c                                       ; $6830: $51
    ld [bc], a                                    ; $6831: $02
    ei                                            ; $6832: $fb
    ld b, $46                                     ; $6833: $06 $46
    call nc, $d26f                                ; $6835: $d4 $6f $d2
    xor d                                         ; $6838: $aa
    xor b                                         ; $6839: $a8
    nop                                           ; $683a: $00
    cp e                                          ; $683b: $bb
    jr nc, @-$69                                  ; $683c: $30 $95

    inc [hl]                                      ; $683e: $34
    call nz, Call_021_5e56                        ; $683f: $c4 $56 $5e
    ld a, [hl]                                    ; $6842: $7e
    sub b                                         ; $6843: $90
    pop hl                                        ; $6844: $e1
    di                                            ; $6845: $f3
    push hl                                       ; $6846: $e5
    push hl                                       ; $6847: $e5
    ld de, $9606                                  ; $6848: $11 $06 $96
    pop af                                        ; $684b: $f1
    ld c, c                                       ; $684c: $49
    db $ec                                        ; $684d: $ec
    ld h, l                                       ; $684e: $65
    dec h                                         ; $684f: $25
    ld sp, hl                                     ; $6850: $f9
    add l                                         ; $6851: $85
    ld c, d                                       ; $6852: $4a
    call Call_000_0dc0                            ; $6853: $cd $c0 $0d
    ld a, e                                       ; $6856: $7b
    ld [hl], d                                    ; $6857: $72
    sbc b                                         ; $6858: $98
    jp z, $96cf                                   ; $6859: $ca $cf $96

    inc c                                         ; $685c: $0c
    ld [hl], a                                    ; $685d: $77
    or d                                          ; $685e: $b2
    add hl, bc                                    ; $685f: $09
    add d                                         ; $6860: $82
    ld hl, sp-$4d                                 ; $6861: $f8 $b3
    dec [hl]                                      ; $6863: $35
    cp h                                          ; $6864: $bc
    pop af                                        ; $6865: $f1
    ld a, $74                                     ; $6866: $3e $74
    push bc                                       ; $6868: $c5
    ld d, $7b                                     ; $6869: $16 $7b
    ld c, l                                       ; $686b: $4d
    sbc d                                         ; $686c: $9a
    sbc d                                         ; $686d: $9a
    db $fc                                        ; $686e: $fc
    ld h, d                                       ; $686f: $62
    ld h, [hl]                                    ; $6870: $66
    db $fd                                        ; $6871: $fd
    ld d, d                                       ; $6872: $52
    jr nc, jr_021_68b0                            ; $6873: $30 $3b

    ld h, l                                       ; $6875: $65
    db $dd                                        ; $6876: $dd
    adc d                                         ; $6877: $8a
    ld c, d                                       ; $6878: $4a
    ld [$a2ab], sp                                ; $6879: $08 $ab $a2
    ld [bc], a                                    ; $687c: $02
    ld [hl], b                                    ; $687d: $70
    ld [hl], a                                    ; $687e: $77
    cp l                                          ; $687f: $bd
    ld b, $53                                     ; $6880: $06 $53
    sbc a                                         ; $6882: $9f
    sub a                                         ; $6883: $97
    rra                                           ; $6884: $1f
    and l                                         ; $6885: $a5
    ld a, b                                       ; $6886: $78
    reti                                          ; $6887: $d9


    inc de                                        ; $6888: $13
    ld e, e                                       ; $6889: $5b
    jp c, Jump_021_72f3                           ; $688a: $da $f3 $72

Call_021_688d:
    ld h, c                                       ; $688d: $61
    ld b, l                                       ; $688e: $45
    ld h, e                                       ; $688f: $63
    db $e4                                        ; $6890: $e4
    or l                                          ; $6891: $b5
    ld b, c                                       ; $6892: $41
    jr jr_021_68d2                                ; $6893: $18 $3d

    jp z, $d7cb                                   ; $6895: $ca $cb $d7

    ld h, b                                       ; $6898: $60
    cp d                                          ; $6899: $ba
    or $0d                                        ; $689a: $f6 $0d
    ld h, $99                                     ; $689c: $26 $99
    pop hl                                        ; $689e: $e1
    ld l, h                                       ; $689f: $6c
    inc de                                        ; $68a0: $13
    db $e3                                        ; $68a1: $e3
    jp nc, Jump_000_3b5e                          ; $68a2: $d2 $5e $3b

    or e                                          ; $68a5: $b3
    ld c, $4b                                     ; $68a6: $0e $4b
    sbc d                                         ; $68a8: $9a
    sub a                                         ; $68a9: $97
    dec bc                                        ; $68aa: $0b
    or e                                          ; $68ab: $b3
    ld h, e                                       ; $68ac: $63
    and [hl]                                      ; $68ad: $a6
    and b                                         ; $68ae: $a0
    ld e, c                                       ; $68af: $59

jr_021_68b0:
    sub $7e                                       ; $68b0: $d6 $7e
    rst $18                                       ; $68b2: $df
    push af                                       ; $68b3: $f5
    ld a, [de]                                    ; $68b4: $1a
    call z, $2fcb                                 ; $68b5: $cc $cb $2f
    sbc $b6                                       ; $68b8: $de $b6
    xor b                                         ; $68ba: $a8
    inc [hl]                                      ; $68bb: $34
    ld [$3d03], sp                                ; $68bc: $08 $03 $3d
    jp z, Jump_021_5baf                           ; $68bf: $ca $af $5b

    ld d, c                                       ; $68c2: $51
    add hl, bc                                    ; $68c3: $09
    ld h, c                                       ; $68c4: $61
    ld d, l                                       ; $68c5: $55
    ld d, h                                       ; $68c6: $54
    nop                                           ; $68c7: $00
    ret                                           ; $68c8: $c9


    inc c                                         ; $68c9: $0c
    ld [hl], a                                    ; $68ca: $77
    ld h, c                                       ; $68cb: $61
    db $ed                                        ; $68cc: $ed
    ld [hl], a                                    ; $68cd: $77
    cp $9f                                        ; $68ce: $fe $9f
    and $e5                                       ; $68d0: $e6 $e5

jr_021_68d2:
    rst $20                                       ; $68d2: $e7
    ld a, h                                       ; $68d3: $7c
    adc $b5                                       ; $68d4: $ce $b5
    di                                            ; $68d6: $f3
    ldh [$72], a                                  ; $68d7: $e0 $72
    rra                                           ; $68d9: $1f
    and [hl]                                      ; $68da: $a6
    ld a, $2f                                     ; $68db: $3e $2f
    cp a                                          ; $68dd: $bf
    daa                                           ; $68de: $27
    or [hl]                                       ; $68df: $b6
    or h                                          ; $68e0: $b4
    rst $20                                       ; $68e1: $e7
    push hl                                       ; $68e2: $e5
    ld d, a                                       ; $68e3: $57
    inc [hl]                                      ; $68e4: $34
    ld b, [hl]                                    ; $68e5: $46
    add h                                         ; $68e6: $84
    ld bc, $bcc7                                  ; $68e7: $01 $c7 $bc
    db $fd                                        ; $68ea: $fd
    inc b                                         ; $68eb: $04
    cp a                                          ; $68ec: $bf
    and e                                         ; $68ed: $a3
    ld [bc], a                                    ; $68ee: $02
    cp l                                          ; $68ef: $bd
    inc b                                         ; $68f0: $04
    cp [hl]                                       ; $68f1: $be
    ld h, e                                       ; $68f2: $63
    ld d, h                                       ; $68f3: $54
    ld [$4a3b], a                                 ; $68f4: $ea $3b $4a
    inc e                                         ; $68f7: $1c
    halt                                          ; $68f8: $76
    ld h, c                                       ; $68f9: $61
    xor [hl]                                      ; $68fa: $ae
    ld h, $28                                     ; $68fb: $26 $28
    cp [hl]                                       ; $68fd: $be
    and h                                         ; $68fe: $a4
    ld a, c                                       ; $68ff: $79
    cp c                                          ; $6900: $b9
    jr nc, @+$3d                                  ; $6901: $30 $3b

    ld h, [hl]                                    ; $6903: $66
    ld a, [bc]                                    ; $6904: $0a
    jp nz, $25dd                                  ; $6905: $c2 $dd $25

    db $ed                                        ; $6908: $ed
    rlca                                          ; $6909: $07
    ld c, b                                       ; $690a: $48
    reti                                          ; $690b: $d9


    ld l, c                                       ; $690c: $69
    and $8a                                       ; $690d: $e6 $8a
    ld a, h                                       ; $690f: $7c
    adc h                                         ; $6910: $8c
    dec [hl]                                      ; $6911: $35
    ld e, b                                       ; $6912: $58
    jp c, $adf6                                   ; $6913: $da $f6 $ad

    ld a, [hl]                                    ; $6916: $7e
    rla                                           ; $6917: $17
    sub [hl]                                      ; $6918: $96
    sub $97                                       ; $6919: $d6 $97
    ld a, c                                       ; $691b: $79
    ld a, c                                       ; $691c: $79
    ld a, c                                       ; $691d: $79
    or h                                          ; $691e: $b4
    sub $0b                                       ; $691f: $d6 $0b
    dec sp                                        ; $6921: $3b
    and $ed                                       ; $6922: $e6 $ed
    daa                                           ; $6924: $27
    ld hl, sp+$1d                                 ; $6925: $f8 $1d
    dec d                                         ; $6927: $15
    add sp, $25                                   ; $6928: $e8 $25
    ldh a, [rNR33]                                ; $692a: $f0 $1d
    and e                                         ; $692c: $a3
    ld d, d                                       ; $692d: $52
    rst $18                                       ; $692e: $df
    ld d, c                                       ; $692f: $51
    ld [c], a                                     ; $6930: $e2
    or b                                          ; $6931: $b0
    ld a, [hl+]                                   ; $6932: $2a

jr_021_6933:
    ld a, [hl+]                                   ; $6933: $2a
    ret nz                                        ; $6934: $c0

    ld b, d                                       ; $6935: $42
    inc bc                                        ; $6936: $03
    cp [hl]                                       ; $6937: $be
    or $8f                                        ; $6938: $f6 $8f
    ld e, [hl]                                    ; $693a: $5e
    and l                                         ; $693b: $a5
    db $dd                                        ; $693c: $dd
    jr nz, jr_021_694b                            ; $693d: $20 $0c

    dec a                                         ; $693f: $3d
    jp z, Jump_021_658f                           ; $6940: $ca $8f $65

    jp z, $e73c                                   ; $6943: $ca $3c $e7

    push hl                                       ; $6946: $e5
    ld h, a                                       ; $6947: $67
    ld a, [hl-]                                   ; $6948: $3a
    sbc l                                         ; $6949: $9d
    sub a                                         ; $694a: $97

jr_021_694b:
    push bc                                       ; $694b: $c5
    or a                                          ; $694c: $b7
    ld a, [hl]                                    ; $694d: $7e
    ld e, h                                       ; $694e: $5c
    jp c, $f2f3                                   ; $694f: $da $f3 $f2

    adc e                                         ; $6952: $8b
    or a                                          ; $6953: $b7
    dec l                                         ; $6954: $2d
    ld a, [hl+]                                   ; $6955: $2a
    call $4c2e                                    ; $6956: $cd $2e $4c
    ld l, [hl]                                    ; $6959: $6e
    ld d, b                                       ; $695a: $50
    ld a, h                                       ; $695b: $7c
    ld e, d                                       ; $695c: $5a
    ld c, c                                       ; $695d: $49
    ld [bc], a                                    ; $695e: $02
    call z, $afcb                                 ; $695f: $cc $cb $af
    ld l, b                                       ; $6962: $68
    adc h                                         ; $6963: $8c
    or e                                          ; $6964: $b3
    dec h                                         ; $6965: $25
    jp $f979                                      ; $6966: $c3 $79 $f9


    dec e                                         ; $6969: $1d
    di                                            ; $696a: $f3
    or $13                                        ; $696b: $f6 $13
    db $fc                                        ; $696d: $fc
    adc [hl]                                      ; $696e: $8e
    ld a, [bc]                                    ; $696f: $0a
    db $f4                                        ; $6970: $f4
    ld [de], a                                    ; $6971: $12
    ld hl, sp-$72                                 ; $6972: $f8 $8e
    ld d, c                                       ; $6974: $51
    xor c                                         ; $6975: $a9
    rst $28                                       ; $6976: $ef
    jr z, jr_021_69ea                             ; $6977: $28 $71

    ld e, b                                       ; $6979: $58
    dec d                                         ; $697a: $15
    dec d                                         ; $697b: $15
    nop                                           ; $697c: $00
    ld h, c                                       ; $697d: $61
    dec a                                         ; $697e: $3d
    ld c, e                                       ; $697f: $4b
    inc sp                                        ; $6980: $33
    jr z, @+$6b                                   ; $6981: $28 $69

    ld [hl+], a                                   ; $6983: $22
    sbc e                                         ; $6984: $9b
    ld h, l                                       ; $6985: $65
    ldh [$da], a                                  ; $6986: $e0 $da
    ld c, h                                       ; $6988: $4c
    ld a, c                                       ; $6989: $79
    xor l                                         ; $698a: $ad
    rst $38                                       ; $698b: $ff
    cp h                                          ; $698c: $bc
    ld c, b                                       ; $698d: $48
    sbc d                                         ; $698e: $9a
    and b                                         ; $698f: $a0
    call z, $afcb                                 ; $6990: $cc $cb $af
    push af                                       ; $6993: $f5
    add d                                         ; $6994: $82
    and a                                         ; $6995: $a7
    inc [hl]                                      ; $6996: $34
    ld c, e                                       ; $6997: $4b
    ld a, e                                       ; $6998: $7b
    daa                                           ; $6999: $27
    ld l, e                                       ; $699a: $6b
    ld [hl], b                                    ; $699b: $70
    xor e                                         ; $699c: $ab
    ld d, l                                       ; $699d: $55
    ld d, c                                       ; $699e: $51
    ld bc, $97c6                                  ; $699f: $01 $c6 $97
    and a                                         ; $69a2: $a7
    ld a, c                                       ; $69a3: $79
    ld sp, hl                                     ; $69a4: $f9
    ld sp, hl                                     ; $69a5: $f9
    ld l, e                                       ; $69a6: $6b
    ld d, l                                       ; $69a7: $55
    ld e, [hl]                                    ; $69a8: $5e
    ld h, [hl]                                    ; $69a9: $66
    ld l, e                                       ; $69aa: $6b
    adc h                                         ; $69ab: $8c
    jr nc, jr_021_6933                            ; $69ac: $30 $85

    ld hl, sp-$21                                 ; $69ae: $f8 $df
    add hl, de                                    ; $69b0: $19
    db $e4                                        ; $69b1: $e4
    jp nc, $a7f6                                  ; $69b2: $d2 $f6 $a7

    xor [hl]                                      ; $69b5: $ae
    jr jr_021_69ce                                ; $69b6: $18 $16

    ld a, e                                       ; $69b8: $7b
    ld c, l                                       ; $69b9: $4d
    sbc d                                         ; $69ba: $9a
    sbc d                                         ; $69bb: $9a
    db $fc                                        ; $69bc: $fc
    ld h, d                                       ; $69bd: $62
    ld h, [hl]                                    ; $69be: $66
    db $fd                                        ; $69bf: $fd
    ld d, d                                       ; $69c0: $52
    jr nc, jr_021_69fe                            ; $69c1: $30 $3b

    ld h, l                                       ; $69c3: $65
    xor l                                         ; $69c4: $ad

jr_021_69c5:
    rla                                           ; $69c5: $17
    inc a                                         ; $69c6: $3c
    and l                                         ; $69c7: $a5
    ld e, c                                       ; $69c8: $59
    jp c, Jump_021_593b                           ; $69c9: $da $3b $59

    add e                                         ; $69cc: $83
    ld e, e                                       ; $69cd: $5b

jr_021_69ce:
    ld [hl], c                                    ; $69ce: $71
    ld [hl], a                                    ; $69cf: $77
    cp l                                          ; $69d0: $bd
    ld b, $73                                     ; $69d1: $06 $73
    dec [hl]                                      ; $69d3: $35
    ld b, c                                       ; $69d4: $41
    pop af                                        ; $69d5: $f1
    dec h                                         ; $69d6: $25
    call $85cb                                    ; $69d7: $cd $cb $85
    reti                                          ; $69da: $d9


    ld sp, $1053                                  ; $69db: $31 $53 $10
    ld b, $3d                                     ; $69de: $06 $3d
    jp z, Jump_021_74cf                           ; $69e0: $ca $cf $74

    ld a, [hl-]                                   ; $69e3: $3a
    cpl                                           ; $69e4: $2f
    adc e                                         ; $69e5: $8b
    ld l, a                                       ; $69e6: $6f
    db $fd                                        ; $69e7: $fd
    jr c, jr_021_6a5a                             ; $69e8: $38 $70

jr_021_69ea:
    jp $1c9e                                      ; $69ea: $c3 $9e $1c


    and $19                                       ; $69ed: $e6 $19
    reti                                          ; $69ef: $d9


    jp nz, $e79f                                  ; $69f0: $c2 $9f $e7

    xor d                                         ; $69f3: $aa
    inc c                                         ; $69f4: $0c
    ld a, a                                       ; $69f5: $7f
    inc l                                         ; $69f6: $2c
    ld a, c                                       ; $69f7: $79
    ld e, d                                       ; $69f8: $5a
    ld a, c                                       ; $69f9: $79
    ld a, c                                       ; $69fa: $79
    or h                                          ; $69fb: $b4
    ld d, e                                       ; $69fc: $53

Jump_021_69fd:
    sub d                                         ; $69fd: $92

jr_021_69fe:
    rra                                           ; $69fe: $1f
    ld e, a                                       ; $69ff: $5f
    call nc, $62bb                                ; $6a00: $d4 $bb $62
    dec a                                         ; $6a03: $3d
    jp z, Jump_021_4fcb                           ; $6a04: $ca $cb $4f

    push hl                                       ; $6a07: $e5
    ld b, a                                       ; $6a08: $47
    add hl, sp                                    ; $6a09: $39
    ei                                            ; $6a0a: $fb
    ld a, [bc]                                    ; $6a0b: $0a
    ld hl, sp-$66                                 ; $6a0c: $f8 $9a
    ld d, a                                       ; $6a0e: $57
    ld e, c                                       ; $6a0f: $59
    dec d                                         ; $6a10: $15
    dec d                                         ; $6a11: $15
    ldh [$61], a                                  ; $6a12: $e0 $61
    and [hl]                                      ; $6a14: $a6
    or e                                          ; $6a15: $b3
    ld a, [c]                                     ; $6a16: $f2
    ld a, [c]                                     ; $6a17: $f2
    ld d, e                                       ; $6a18: $53
    sbc a                                         ; $6a19: $9f
    add $88                                       ; $6a1a: $c6 $88
    jr nc, jr_021_69c5                            ; $6a1c: $30 $a7

    inc h                                         ; $6a1e: $24
    db $fd                                        ; $6a1f: $fd
    jp nc, $979e                                  ; $6a20: $d2 $9e $97

    ld e, a                                       ; $6a23: $5f
    dec d                                         ; $6a24: $15
    dec d                                         ; $6a25: $15
    ldh [$61], a                                  ; $6a26: $e0 $61
    ld c, c                                       ; $6a28: $49
    di                                            ; $6a29: $f3
    ld [hl], d                                    ; $6a2a: $72
    ld h, c                                       ; $6a2b: $61
    halt                                          ; $6a2c: $76
    call z, $a994                                 ; $6a2d: $cc $94 $a9
    db $fc                                        ; $6a30: $fc
    sub d                                         ; $6a31: $92
    ld d, $36                                     ; $6a32: $16 $36
    di                                            ; $6a34: $f3
    dec de                                        ; $6a35: $1b
    cp [hl]                                       ; $6a36: $be
    ld l, e                                       ; $6a37: $6b
    dec sp                                        ; $6a38: $3b
    ld a, $c2                                     ; $6a39: $3e $c2
    dec l                                         ; $6a3b: $2d
    add hl, de                                    ; $6a3c: $19
    ld a, [hl]                                    ; $6a3d: $7e
    jp nc, $33cf                                  ; $6a3e: $d2 $cf $33

    or d                                          ; $6a41: $b2
    add l                                         ; $6a42: $85
    ccf                                           ; $6a43: $3f
    adc l                                         ; $6a44: $8d
    ld [hl], c                                    ; $6a45: $71
    ld e, [hl]                                    ; $6a46: $5e
    ld a, [hl]                                    ; $6a47: $7e
    or $15                                        ; $6a48: $f6 $15
    ldh a, [$35]                                  ; $6a4a: $f0 $35
    xor a                                         ; $6a4c: $af
    or d                                          ; $6a4d: $b2
    ld a, [hl+]                                   ; $6a4e: $2a
    ld a, [hl+]                                   ; $6a4f: $2a
    ret nz                                        ; $6a50: $c0

    jp $7e54                                      ; $6a51: $c3 $54 $7e


    ld c, c                                       ; $6a54: $49
    di                                            ; $6a55: $f3
    ld a, [c]                                     ; $6a56: $f2
    or e                                          ; $6a57: $b3
    db $d3                                        ; $6a58: $d3
    adc b                                         ; $6a59: $88

jr_021_6a5a:
    sub a                                         ; $6a5a: $97
    reti                                          ; $6a5b: $d9


    ld sp, $9653                                  ; $6a5c: $31 $53 $96
    or d                                          ; $6a5f: $b2
    sbc b                                         ; $6a60: $98
    db $fc                                        ; $6a61: $fc
    dec bc                                        ; $6a62: $0b
    jp nz, $c547                                  ; $6a63: $c2 $47 $c5

    jr c, jr_021_6a97                             ; $6a66: $38 $2f

    ccf                                           ; $6a68: $3f
    ei                                            ; $6a69: $fb
    ld a, [bc]                                    ; $6a6a: $0a
    ld hl, sp-$66                                 ; $6a6b: $f8 $9a
    ld d, a                                       ; $6a6d: $57
    ld e, c                                       ; $6a6e: $59
    dec d                                         ; $6a6f: $15
    dec d                                         ; $6a70: $15
    ldh [$61], a                                  ; $6a71: $e0 $61
    ld a, [hl+]                                   ; $6a73: $2a
    ccf                                           ; $6a74: $3f
    ld d, a                                       ; $6a75: $57
    inc de                                        ; $6a76: $13
    inc d                                         ; $6a77: $14
    ld e, a                                       ; $6a78: $5f
    jp nc, $f262                                  ; $6a79: $d2 $62 $f2

    cpl                                           ; $6a7c: $2f
    or e                                          ; $6a7d: $b3
    ld h, e                                       ; $6a7e: $63
    and [hl]                                      ; $6a7f: $a6
    nop                                           ; $6a80: $00
    jp nz, $d996                                  ; $6a81: $c2 $96 $d9

    ld l, c                                       ; $6a84: $69
    adc b                                         ; $6a85: $88
    dec l                                         ; $6a86: $2d
    adc l                                         ; $6a87: $8d
    adc a                                         ; $6a88: $8f
    cpl                                           ; $6a89: $2f
    ld [$9b0b], a                                 ; $6a8a: $ea $0b $9b
    ld d, l                                       ; $6a8d: $55
    ld d, c                                       ; $6a8e: $51
    ld bc, $c61e                                  ; $6a8f: $01 $1e $c6
    cp a                                          ; $6a92: $bf
    db $fc                                        ; $6a93: $fc
    jp c, Jump_021_62cd                           ; $6a94: $da $cd $62

jr_021_6a97:
    ld h, [hl]                                    ; $6a97: $66
    db $fd                                        ; $6a98: $fd
    ld d, d                                       ; $6a99: $52
    jr nc, @-$09                                  ; $6a9a: $30 $f5

    ld a, c                                       ; $6a9c: $79
    ld sp, hl                                     ; $6a9d: $f9
    dec e                                         ; $6a9e: $1d
    ld b, l                                       ; $6a9f: $45
    sub h                                         ; $6aa0: $94
    add [hl]                                      ; $6aa1: $86
    xor d                                         ; $6aa2: $aa
    rrca                                          ; $6aa3: $0f
    sbc a                                         ; $6aa4: $9f
    ld a, h                                       ; $6aa5: $7c
    ld b, a                                       ; $6aa6: $47
    and a                                         ; $6aa7: $a7
    ld a, [bc]                                    ; $6aa8: $0a
    db $db                                        ; $6aa9: $db
    and l                                         ; $6aaa: $a5
    ld a, c                                       ; $6aab: $79
    ld sp, hl                                     ; $6aac: $f9
    sub l                                         ; $6aad: $95
    inc [hl]                                      ; $6aae: $34
    ldh a, [$eb]                                  ; $6aaf: $f0 $eb
    sub [hl]                                      ; $6ab1: $96
    ld h, c                                       ; $6ab2: $61
    sbc b                                         ; $6ab3: $98
    or h                                          ; $6ab4: $b4
    db $d3                                        ; $6ab5: $d3
    inc sp                                        ; $6ab6: $33
    ld b, e                                       ; $6ab7: $43
    add h                                         ; $6ab8: $84
    ld bc, $24a7                                  ; $6ab9: $01 $a7 $24
    db $fd                                        ; $6abc: $fd
    jp nc, $979e                                  ; $6abd: $d2 $9e $97

    ld e, a                                       ; $6ac0: $5f
    dec d                                         ; $6ac1: $15
    dec d                                         ; $6ac2: $15
    ldh [$61], a                                  ; $6ac3: $e0 $61
    ld c, c                                       ; $6ac5: $49
    di                                            ; $6ac6: $f3
    ld [hl], d                                    ; $6ac7: $72
    ld h, c                                       ; $6ac8: $61
    halt                                          ; $6ac9: $76
    call z, Call_021_4194                         ; $6aca: $cc $94 $41
    ld a, [de]                                    ; $6acd: $1a
    ld h, d                                       ; $6ace: $62
    or e                                          ; $6acf: $b3
    dec [hl]                                      ; $6ad0: $35
    cp h                                          ; $6ad1: $bc
    pop af                                        ; $6ad2: $f1
    xor d                                         ; $6ad3: $aa
    jr nz, jr_021_6ae2                            ; $6ad4: $20 $0c

    sub [hl]                                      ; $6ad6: $96
    add c                                         ; $6ad7: $81
    jp hl                                         ; $6ad8: $e9


    ld [hl], h                                    ; $6ad9: $74
    ld [de], a                                    ; $6ada: $12
    ld a, [hl]                                    ; $6adb: $7e
    sub h                                         ; $6adc: $94
    or e                                          ; $6add: $b3
    xor a                                         ; $6ade: $af
    add b                                         ; $6adf: $80
    xor a                                         ; $6ae0: $af
    ld a, c                                       ; $6ae1: $79

jr_021_6ae2:
    sub l                                         ; $6ae2: $95
    ld d, l                                       ; $6ae3: $55
    ld d, c                                       ; $6ae4: $51
    ld bc, $a61e                                  ; $6ae5: $01 $1e $a6
    ld a, [c]                                     ; $6ae8: $f2
    ld [hl], e                                    ; $6ae9: $73
    dec [hl]                                      ; $6aea: $35
    ld b, c                                       ; $6aeb: $41
    pop af                                        ; $6aec: $f1
    sbc c                                         ; $6aed: $99
    adc $ca                                       ; $6aee: $ce $ca
    sla e                                         ; $6af0: $cb $23
    inc c                                         ; $6af2: $0c
    daa                                           ; $6af3: $27
    scf                                           ; $6af4: $37
    dec hl                                        ; $6af5: $2b
    ld l, c                                       ; $6af6: $69
    ldh [$d7], a                                  ; $6af7: $e0 $d7
    sub c                                         ; $6af9: $91
    or a                                          ; $6afa: $b7
    cp a                                          ; $6afb: $bf
    ld a, [c]                                     ; $6afc: $f2
    ld a, c                                       ; $6afd: $79
    ld b, [hl]                                    ; $6afe: $46
    or [hl]                                       ; $6aff: $b6
    ldh a, [$e7]                                  ; $6b00: $f0 $e7
    cp c                                          ; $6b02: $b9
    jr nz, @-$37                                  ; $6b03: $20 $c7

    sub d                                         ; $6b05: $92
    and a                                         ; $6b06: $a7
    ld a, c                                       ; $6b07: $79
    xor [hl]                                      ; $6b08: $ae
    adc d                                         ; $6b09: $8a
    ld a, [bc]                                    ; $6b0a: $0a
    add b                                         ; $6b0b: $80
    sub $a3                                       ; $6b0c: $d6 $a3
    xor b                                         ; $6b0e: $a8
    cpl                                           ; $6b0f: $2f
    inc [hl]                                      ; $6b10: $34
    ldh [$0b], a                                  ; $6b11: $e0 $0b
    ld e, a                                       ; $6b13: $5f
    ld l, c                                       ; $6b14: $69
    inc l                                         ; $6b15: $2c
    ld a, c                                       ; $6b16: $79
    ld [bc], a                                    ; $6b17: $02
    rst $10                                       ; $6b18: $d7
    dec hl                                        ; $6b19: $2b
    add b                                         ; $6b1a: $80
    jr nc, jr_021_6b5a                            ; $6b1b: $30 $3d

    ld a, a                                       ; $6b1d: $7f
    or $15                                        ; $6b1e: $f6 $15
    ldh a, [$35]                                  ; $6b20: $f0 $35
    xor a                                         ; $6b22: $af
    ld [bc], a                                    ; $6b23: $02
    db $e3                                        ; $6b24: $e3
    sub e                                         ; $6b25: $93
    ld l, d                                       ; $6b26: $6a
    cp [hl]                                       ; $6b27: $be
    and d                                         ; $6b28: $a2
    sub $5f                                       ; $6b29: $d6 $5f
    dec d                                         ; $6b2b: $15
    dec d                                         ; $6b2c: $15
    ldh [$61], a                                  ; $6b2d: $e0 $61
    ld c, c                                       ; $6b2f: $49
    di                                            ; $6b30: $f3
    ld [hl], d                                    ; $6b31: $72
    ld h, c                                       ; $6b32: $61
    halt                                          ; $6b33: $76
    call z, $d994                                 ; $6b34: $cc $94 $d9
    add hl, hl                                    ; $6b37: $29
    db $d3                                        ; $6b38: $d3
    push bc                                       ; $6b39: $c5
    and h                                         ; $6b3a: $a4
    ld h, b                                       ; $6b3b: $60
    ld a, [hl]                                    ; $6b3c: $7e
    jp Jump_000_1847                              ; $6b3d: $c3 $47 $18


    and a                                         ; $6b40: $a7
    ld a, [de]                                    ; $6b41: $1a

Call_021_6b42:
    ld e, a                                       ; $6b42: $5f
    jp c, Jump_021_553b                           ; $6b43: $da $3b $55

    ret c                                         ; $6b46: $d8

    dec bc                                        ; $6b47: $0b
    jp nz, Jump_021_66a7                          ; $6b48: $c2 $a7 $66

    ld [hl], d                                    ; $6b4b: $72
    and a                                         ; $6b4c: $a7
    or h                                          ; $6b4d: $b4
    ld e, e                                       ; $6b4e: $5b
    push de                                       ; $6b4f: $d5
    db $e3                                        ; $6b50: $e3
    rst $08                                       ; $6b51: $cf
    cp [hl]                                       ; $6b52: $be
    ld [bc], a                                    ; $6b53: $02
    ld a, [hl]                                    ; $6b54: $7e
    sbc a                                         ; $6b55: $9f
    cp e                                          ; $6b56: $bb
    and h                                         ; $6b57: $a4
    sub l                                         ; $6b58: $95
    dec bc                                        ; $6b59: $0b

jr_021_6b5a:
    db $e3                                        ; $6b5a: $e3
    or l                                          ; $6b5b: $b5
    sbc c                                         ; $6b5c: $99
    rst $20                                       ; $6b5d: $e7
    xor d                                         ; $6b5e: $aa
    xor b                                         ; $6b5f: $a8
    nop                                           ; $6b60: $00
    ld e, l                                       ; $6b61: $5d
    sub $b3                                       ; $6b62: $d6 $b3
    cp h                                          ; $6b64: $bc
    ld a, h                                       ; $6b65: $7c
    dec c                                         ; $6b66: $0d
    ld d, [hl]                                    ; $6b67: $56
    ld a, [hl]                                    ; $6b68: $7e
    ld b, c                                       ; $6b69: $41
    ld e, [hl]                                    ; $6b6a: $5e
    ld a, [bc]                                    ; $6b6b: $0a
    cp d                                          ; $6b6c: $ba
    ld h, d                                       ; $6b6d: $62
    sub [hl]                                      ; $6b6e: $96
    ld e, d                                       ; $6b6f: $5a
    cp b                                          ; $6b70: $b8
    dec de                                        ; $6b71: $1b
    ld d, b                                       ; $6b72: $50
    jp z, Jump_021_60a5                           ; $6b73: $ca $a5 $60

    ld c, l                                       ; $6b76: $4d
    ld a, [de]                                    ; $6b77: $1a
    xor $ba                                       ; $6b78: $ee $ba
    rst $38                                       ; $6b7a: $ff
    ld e, e                                       ; $6b7b: $5b
    rra                                           ; $6b7c: $1f
    db $10                                        ; $6b7d: $10
    ld b, $3d                                     ; $6b7e: $06 $3d
    jp z, Jump_021_42d3                           ; $6b80: $ca $d3 $42

    ld l, l                                       ; $6b83: $6d

jr_021_6b84:
    jp c, $cb3f                                   ; $6b84: $da $3f $cb

    and b                                         ; $6b87: $a0
    and h                                         ; $6b88: $a4
    adc c                                         ; $6b89: $89
    ld l, h                                       ; $6b8a: $6c
    pop bc                                        ; $6b8b: $c1
    or l                                          ; $6b8c: $b5
    cp $9a                                        ; $6b8d: $fe $9a
    inc [hl]                                      ; $6b8f: $34
    add e                                         ; $6b90: $83
    inc c                                         ; $6b91: $0c
    rst $18                                       ; $6b92: $df
    res 4, l                                      ; $6b93: $cb $a5
    ld h, b                                       ; $6b95: $60
    ld c, l                                       ; $6b96: $4d
    sbc d                                         ; $6b97: $9a
    ld d, l                                       ; $6b98: $55
    ld c, d                                       ; $6b99: $4a
    dec [hl]                                      ; $6b9a: $35
    rst $18                                       ; $6b9b: $df
    dec c                                         ; $6b9c: $0d
    jr z, jr_021_6b84                             ; $6b9d: $28 $e5

    ld de, $4706                                  ; $6b9f: $11 $06 $47
    ld d, l                                       ; $6ba2: $55
    dec h                                         ; $6ba3: $25
    inc de                                        ; $6ba4: $13
    ld hl, $9254                                  ; $6ba5: $21 $54 $92
    ld [$2108], a                                 ; $6ba8: $ea $08 $21
    xor l                                         ; $6bab: $ad
    ld c, d                                       ; $6bac: $4a
    ld h, $42                                     ; $6bad: $26 $42
    ld [$ad03], sp                                ; $6baf: $08 $03 $ad
    rst $38                                       ; $6bb2: $ff
    dec hl                                        ; $6bb3: $2b
    rst $38                                       ; $6bb4: $ff
    dec hl                                        ; $6bb5: $2b
    rst $38                                       ; $6bb6: $ff
    dec hl                                        ; $6bb7: $2b
    rst $38                                       ; $6bb8: $ff
    ld [$8421], sp                                ; $6bb9: $08 $21 $84
    ld bc, $5547                                  ; $6bbc: $01 $47 $55
    dec h                                         ; $6bbf: $25
    sub e                                         ; $6bc0: $93
    dec sp                                        ; $6bc1: $3b
    and b                                         ; $6bc2: $a0
    inc d                                         ; $6bc3: $14
    rst $20                                       ; $6bc4: $e7
    ld c, $28                                     ; $6bc5: $0e $28
    push bc                                       ; $6bc7: $c5
    ld de, $1842                                  ; $6bc8: $11 $42 $18
    daa                                           ; $6bcb: $27
    rst $30                                       ; $6bcc: $f7
    ld a, l                                       ; $6bcd: $7d
    ld [hl], d                                    ; $6bce: $72
    rst $18                                       ; $6bcf: $df
    daa                                           ; $6bd0: $27
    dec bc                                        ; $6bd1: $0b
    ld e, d                                       ; $6bd2: $5a
    rst $30                                       ; $6bd3: $f7
    ld [hl], h                                    ; $6bd4: $74
    ld a, a                                       ; $6bd5: $7f
    pop hl                                        ; $6bd6: $e1
    ld c, [hl]                                    ; $6bd7: $4e
    push hl                                       ; $6bd8: $e5
    rst $10                                       ; $6bd9: $d7
    and h                                         ; $6bda: $a4
    reti                                          ; $6bdb: $d9


    adc l                                         ; $6bdc: $8d
    or c                                          ; $6bdd: $b1
    dec hl                                        ; $6bde: $2b
    ld b, $a7                                     ; $6bdf: $06 $a7
    inc h                                         ; $6be1: $24
    ld [hl], a                                    ; $6be2: $77
    db $dd                                        ; $6be3: $dd
    rst $38                                       ; $6be4: $ff
    xor l                                         ; $6be5: $ad
    rrca                                          ; $6be6: $0f
    dec sp                                        ; $6be7: $3b
    rst $08                                       ; $6be8: $cf
    add b                                         ; $6be9: $80
    xor a                                         ; $6bea: $af
    ld d, d                                       ; $6beb: $52
    ldh a, [$e9]                                  ; $6bec: $f0 $e9
    and b                                         ; $6bee: $a0
    di                                            ; $6bef: $f3
    ld sp, $692e                                  ; $6bf0: $31 $2e $69
    pop hl                                        ; $6bf3: $e1
    and e                                         ; $6bf4: $a3
    dec e                                         ; $6bf5: $1d
    ld d, l                                       ; $6bf6: $55
    sub l                                         ; $6bf7: $95
    ld c, h                                       ; $6bf8: $4c
    xor $80                                       ; $6bf9: $ee $80

jr_021_6bfb:
    xor [hl]                                      ; $6bfb: $ae
    ld l, l                                       ; $6bfc: $6d
    rst $00                                       ; $6bfd: $c7
    ld b, a                                       ; $6bfe: $47
    ld [$2761], sp                                ; $6bff: $08 $61 $27
    db $f4                                        ; $6c02: $f4
    ld a, l                                       ; $6c03: $7d
    ld b, d                                       ; $6c04: $42
    rst $18                                       ; $6c05: $df
    daa                                           ; $6c06: $27
    jr jr_021_6c1f                                ; $6c07: $18 $16

    ld e, h                                       ; $6c09: $5c
    ld a, [bc]                                    ; $6c0a: $0a
    ld h, [hl]                                    ; $6c0b: $66
    ld c, e                                       ; $6c0c: $4b
    add [hl]                                      ; $6c0d: $86
    di                                            ; $6c0e: $f3
    ld a, [c]                                     ; $6c0f: $f2
    add e                                         ; $6c10: $83
    ld h, $ec                                     ; $6c11: $26 $ec
    ld a, b                                       ; $6c13: $78
    add [hl]                                      ; $6c14: $86
    ret nz                                        ; $6c15: $c0

    sbc l                                         ; $6c16: $9d

jr_021_6c17:
    and l                                         ; $6c17: $a5
    add $06                                       ; $6c18: $c6 $06
    jp c, Jump_021_49ac                           ; $6c1a: $da $ac $49

    inc sp                                        ; $6c1d: $33
    sub l                                         ; $6c1e: $95

jr_021_6c1f:
    sbc a                                         ; $6c1f: $9f
    ld hl, $32f6                                  ; $6c20: $21 $f6 $32
    cpl                                           ; $6c23: $2f
    cp a                                          ; $6c24: $bf
    or a                                          ; $6c25: $b7
    db $ed                                        ; $6c26: $ed
    xor a                                         ; $6c27: $af
    inc e                                         ; $6c28: $1c
    sub [hl]                                      ; $6c29: $96
    or $4e                                        ; $6c2a: $f6 $4e
    ld [hl], $95                                  ; $6c2c: $36 $95
    add c                                         ; $6c2e: $81
    dec e                                         ; $6c2f: $1d
    push bc                                       ; $6c30: $c5
    halt                                          ; $6c31: $76
    adc d                                         ; $6c32: $8a
    ld a, [de]                                    ; $6c33: $1a
    ld a, b                                       ; $6c34: $78
    inc de                                        ; $6c35: $13
    ld [hl+], a                                   ; $6c36: $22
    add h                                         ; $6c37: $84
    ld a, d                                       ; $6c38: $7a
    sub h                                         ; $6c39: $94
    ld e, a                                       ; $6c3a: $5f
    or a                                          ; $6c3b: $b7
    cp [hl]                                       ; $6c3c: $be
    cp e                                          ; $6c3d: $bb
    push af                                       ; $6c3e: $f5
    db $dd                                        ; $6c3f: $dd
    call $fc08                                    ; $6c40: $cd $08 $fc
    jp nc, $979e                                  ; $6c43: $d2 $9e $97

    rst $18                                       ; $6c46: $df
    pop de                                        ; $6c47: $d1
    add hl, de                                    ; $6c48: $19
    call c, Call_000_2e87                         ; $6c49: $dc $87 $2e
    jr jr_021_6bfb                                ; $6c4c: $18 $ad

    ld c, c                                       ; $6c4e: $49
    push af                                       ; $6c4f: $f5
    ld l, $18                                     ; $6c50: $2e $18
    rst $00                                       ; $6c52: $c7
    ld [hl], d                                    ; $6c53: $72
    ret nc                                        ; $6c54: $d0

    jp z, $8363                                   ; $6c55: $ca $63 $83

    sub $a3                                       ; $6c58: $d6 $a3
    db $f4                                        ; $6c5a: $f4
    db $dd                                        ; $6c5b: $dd
    and e                                         ; $6c5c: $a3
    db $f4                                        ; $6c5d: $f4
    db $dd                                        ; $6c5e: $dd

jr_021_6c5f:
    and e                                         ; $6c5f: $a3
    ld e, h                                       ; $6c60: $5c
    ld e, b                                       ; $6c61: $58
    and l                                         ; $6c62: $a5
    ld sp, $ecc2                                  ; $6c63: $31 $c2 $ec
    sub h                                         ; $6c66: $94
    jp hl                                         ; $6c67: $e9


    and b                                         ; $6c68: $a0
    di                                            ; $6c69: $f3
    push de                                       ; $6c6a: $d5
    push de                                       ; $6c6b: $d5
    jr c, @+$07                                   ; $6c6c: $38 $05

    cp b                                          ; $6c6e: $b8
    ld bc, $4f85                                  ; $6c6f: $01 $85 $4f
    ld a, $cb                                     ; $6c72: $3e $cb
    ld hl, sp+$34                                 ; $6c74: $f8 $34
    sub c                                         ; $6c76: $91
    call $d180                                    ; $6c77: $cd $80 $d1
    jr jr_021_6c17                                ; $6c7a: $18 $9b

    dec b                                         ; $6c7c: $05
    rst $10                                       ; $6c7d: $d7
    ld a, [$8a4b]                                 ; $6c7e: $fa $4b $8a
    call $a73c                                    ; $6c81: $cd $3c $a7
    dec bc                                        ; $6c84: $0b
    ld d, e                                       ; $6c85: $53
    ld a, [hl]                                    ; $6c86: $7e
    sbc l                                         ; $6c87: $9d
    cp [hl]                                       ; $6c88: $be
    dec sp                                        ; $6c89: $3b
    ld a, l                                       ; $6c8a: $7d
    ld [hl], a                                    ; $6c8b: $77
    ld [hl-], a                                   ; $6c8c: $32
    ld e, [hl]                                    ; $6c8d: $5e
    jr z, jr_021_6c5f                             ; $6c8e: $28 $cf

    ld b, $6e                                     ; $6c90: $06 $6e
    ret c                                         ; $6c92: $d8

    sub e                                         ; $6c93: $93
    ld [hl], e                                    ; $6c94: $73
    rst $10                                       ; $6c95: $d7
    ld [hl], $3e                                  ; $6c96: $36 $3e
    cp b                                          ; $6c98: $b8
    ld d, h                                       ; $6c99: $54
    db $fd                                        ; $6c9a: $fd
    sbc d                                         ; $6c9b: $9a
    inc [hl]                                      ; $6c9c: $34
    dec [hl]                                      ; $6c9d: $35
    ld sp, hl                                     ; $6c9e: $f9
    or l                                          ; $6c9f: $b5
    or $dd                                        ; $6ca0: $f6 $dd
    jp c, $ab77                                   ; $6ca2: $da $77 $ab

    adc d                                         ; $6ca5: $8a
    inc [hl]                                      ; $6ca6: $34
    db $eb                                        ; $6ca7: $eb
    sbc [hl]                                      ; $6ca8: $9e
    xor $2f                                       ; $6ca9: $ee $2f
    ld [$0c21], sp                                ; $6cab: $08 $21 $0c
    dec a                                         ; $6cae: $3d
    adc e                                         ; $6caf: $8b
    ld a, [$ec2e]                                 ; $6cb0: $fa $2e $ec
    ld a, d                                       ; $6cb3: $7a
    rst $10                                       ; $6cb4: $d7
    or l                                          ; $6cb5: $b5
    ret nc                                        ; $6cb6: $d0

    or l                                          ; $6cb7: $b5
    db $ed                                        ; $6cb8: $ed
    ld hl, sp+$08                                 ; $6cb9: $f8 $08
    inc bc                                        ; $6cbb: $03
    rst $00                                       ; $6cbc: $c7
    ld e, l                                       ; $6cbd: $5d
    ld h, d                                       ; $6cbe: $62
    di                                            ; $6cbf: $f3
    ld a, [c]                                     ; $6cc0: $f2
    xor e                                         ; $6cc1: $ab
    ld a, [$faae]                                 ; $6cc2: $fa $ae $fa
    xor [hl]                                      ; $6cc5: $ae
    jp nc, $bf90                                  ; $6cc6: $d2 $90 $bf

    db $f4                                        ; $6cc9: $f4
    ld e, l                                       ; $6cca: $5d
    add hl, de                                    ; $6ccb: $19
    add c                                         ; $6ccc: $81
    ld b, a                                       ; $6ccd: $47
    dec sp                                        ; $6cce: $3b
    adc d                                         ; $6ccf: $8a
    ret c                                         ; $6cd0: $d8

    adc d                                         ; $6cd1: $8a
    ld de, $1069                                  ; $6cd2: $11 $69 $10
    ld b, d                                       ; $6cd5: $42
    db $dd                                        ; $6cd6: $dd
    adc h                                         ; $6cd7: $8c
    ret nz                                        ; $6cd8: $c0

    cpl                                           ; $6cd9: $2f
    db $ed                                        ; $6cda: $ed
    ld a, c                                       ; $6cdb: $79
    ld sp, hl                                     ; $6cdc: $f9
    dec e                                         ; $6cdd: $1d
    sbc l                                         ; $6cde: $9d
    pop bc                                        ; $6cdf: $c1
    ld a, l                                       ; $6ce0: $7d
    jr @+$81                                      ; $6ce1: $18 $7f

    ld h, e                                       ; $6ce3: $63
    ld e, h                                       ; $6ce4: $5c
    xor b                                         ; $6ce5: $a8
    push af                                       ; $6ce6: $f5
    ld e, a                                       ; $6ce7: $5f
    sub e                                         ; $6ce8: $93
    ld h, [hl]                                    ; $6ce9: $66
    ld a, h                                       ; $6cea: $7c
    rst $18                                       ; $6ceb: $df
    ld a, h                                       ; $6cec: $7c
    rst $18                                       ; $6ced: $df
    db $fc                                        ; $6cee: $fc
    ld l, e                                       ; $6cef: $6b
    db $fd                                        ; $6cf0: $fd
    ld h, l                                       ; $6cf1: $65
    ld c, d                                       ; $6cf2: $4a
    ld l, h                                       ; $6cf3: $6c
    db $fc                                        ; $6cf4: $fc
    ld l, e                                       ; $6cf5: $6b
    db $fd                                        ; $6cf6: $fd
    ld h, l                                       ; $6cf7: $65
    add [hl]                                      ; $6cf8: $86
    db $fc                                        ; $6cf9: $fc
    add $35                                       ; $6cfa: $c6 $35
    ld l, c                                       ; $6cfc: $69
    ld l, d                                       ; $6cfd: $6a
    ld sp, $a8ae                                  ; $6cfe: $31 $ae $a8
    push af                                       ; $6d01: $f5

jr_021_6d02:
    rst $20                                       ; $6d02: $e7
    cp c                                          ; $6d03: $b9
    or $af                                        ; $6d04: $f6 $af
    db $d3                                        ; $6d06: $d3
    ld [hl], a                                    ; $6d07: $77
    and a                                         ; $6d08: $a7
    rst $28                                       ; $6d09: $ef
    adc [hl]                                      ; $6d0a: $8e
    pop af                                        ; $6d0b: $f1
    ld a, c                                       ; $6d0c: $79
    xor [hl]                                      ; $6d0d: $ae
    db $fd                                        ; $6d0e: $fd
    inc c                                         ; $6d0f: $0c
    ld h, c                                       ; $6d10: $61
    cp l                                          ; $6d11: $bd
    jp nc, Jump_021_4f8c                          ; $6d12: $d2 $8c $4f

    xor d                                         ; $6d15: $aa
    ld sp, hl                                     ; $6d16: $f9
    db $ec                                        ; $6d17: $ec
    ld c, e                                       ; $6d18: $4b
    ld l, h                                       ; $6d19: $6c
    ld e, [hl]                                    ; $6d1a: $5e
    ld a, [hl]                                    ; $6d1b: $7e
    ld d, l                                       ; $6d1c: $55
    rst $18                                       ; $6d1d: $df
    ld d, l                                       ; $6d1e: $55
    rst $18                                       ; $6d1f: $df
    ld d, l                                       ; $6d20: $55
    ld a, [de]                                    ; $6d21: $1a
    ld a, [c]                                     ; $6d22: $f2
    sub a                                         ; $6d23: $97
    cp [hl]                                       ; $6d24: $be
    dec hl                                        ; $6d25: $2b
    inc hl                                        ; $6d26: $23
    ldh a, [$bb]                                  ; $6d27: $f0 $bb
    or h                                          ; $6d29: $b4
    ld a, [c]                                     ; $6d2a: $f2
    ld a, [c]                                     ; $6d2b: $f2
    call c, $aab5                                 ; $6d2c: $dc $b5 $aa
    ld c, b                                       ; $6d2f: $48
    db $d3                                        ; $6d30: $d3
    dec b                                         ; $6d31: $05
    inc bc                                        ; $6d32: $03
    ld d, $84                                     ; $6d33: $16 $84
    db $10                                        ; $6d35: $10
    ld c, e                                       ; $6d36: $4b
    xor d                                         ; $6d37: $aa
    ld sp, hl                                     ; $6d38: $f9
    db $ec                                        ; $6d39: $ec
    rst $38                                       ; $6d3a: $ff
    adc b                                         ; $6d3b: $88
    db $10                                        ; $6d3c: $10
    or d                                          ; $6d3d: $b2
    cp [hl]                                       ; $6d3e: $be
    inc [hl]                                      ; $6d3f: $34
    db $e3                                        ; $6d40: $e3
    ccf                                           ; $6d41: $3f
    ld b, [hl]                                    ; $6d42: $46
    add h                                         ; $6d43: $84
    db $10                                        ; $6d44: $10
    ld b, $c7                                     ; $6d45: $06 $c7
    db $fd                                        ; $6d47: $fd
    rst $00                                       ; $6d48: $c7
    ld c, e                                       ; $6d49: $4b
    pop bc                                        ; $6d4a: $c1
    jp c, $feef                                   ; $6d4b: $da $ef $fe

    jp nc, $bd75                                  ; $6d4e: $d2 $75 $bd

    jp nc, Jump_021_662c                          ; $6d51: $d2 $2c $66

    sub $9f                                       ; $6d54: $d6 $9f
    call $d2fa                                    ; $6d56: $cd $fa $d2
    db $ec                                        ; $6d59: $ec
    add $38                                       ; $6d5a: $c6 $38
    cp [hl]                                       ; $6d5c: $be
    inc a                                         ; $6d5d: $3c
    xor l                                         ; $6d5e: $ad
    ld c, c                                       ; $6d5f: $49
    inc sp                                        ; $6d60: $33
    cp $e5                                        ; $6d61: $fe $e5
    rst $10                                       ; $6d63: $d7
    sub [hl]                                      ; $6d64: $96
    inc [hl]                                      ; $6d65: $34
    ld b, c                                       ; $6d66: $41
    pop af                                        ; $6d67: $f1
    ld e, l                                       ; $6d68: $5d
    ld b, d                                       ; $6d69: $42
    jr jr_021_6d02                                ; $6d6a: $18 $96

    dec d                                         ; $6d6c: $15
    or l                                          ; $6d6d: $b5
    cp $bc                                        ; $6d6e: $fe $bc
    db $fc                                        ; $6d70: $fc
    cp d                                          ; $6d71: $ba
    add hl, de                                    ; $6d72: $19
    add c                                         ; $6d73: $81
    ld e, a                                       ; $6d74: $5f
    jp c, $f2f3                                   ; $6d75: $da $f3 $f2

Call_021_6d78:
    dec sp                                        ; $6d78: $3b
    ld a, [hl-]                                   ; $6d79: $3a
    add e                                         ; $6d7a: $83
    ei                                            ; $6d7b: $fb
    add b                                         ; $6d7c: $80
    sub $42                                       ; $6d7d: $d6 $42
    rst $10                                       ; $6d7f: $d7
    or [hl]                                       ; $6d80: $b6
    db $e3                                        ; $6d81: $e3
    and e                                         ; $6d82: $a3
    ld [hl], l                                    ; $6d83: $75
    sub a                                         ; $6d84: $97
    or h                                          ; $6d85: $b4
    pop de                                        ; $6d86: $d1
    ld c, [hl]                                    ; $6d87: $4e
    inc sp                                        ; $6d88: $33
    ld d, a                                       ; $6d89: $57
    db $e4                                        ; $6d8a: $e4
    ld h, e                                       ; $6d8b: $63
    inc e                                         ; $6d8c: $1c
    inc a                                         ; $6d8d: $3c
    ld sp, hl                                     ; $6d8e: $f9
    jp nz, $e79f                                  ; $6d8f: $c2 $9f $e7

    db $ec                                        ; $6d92: $ec
    ld c, e                                       ; $6d93: $4b
    ld l, h                                       ; $6d94: $6c
    cp d                                          ; $6d95: $ba
    ld a, [hl+]                                   ; $6d96: $2a
    dec c                                         ; $6d97: $0d
    ld sp, hl                                     ; $6d98: $f9
    ld c, e                                       ; $6d99: $4b
    rst $18                                       ; $6d9a: $df
    sub l                                         ; $6d9b: $95
    ld de, $b478                                  ; $6d9c: $11 $78 $b4

jr_021_6d9f:
    sub $a4                                       ; $6d9f: $d6 $a4
    ld a, [hl-]                                   ; $6da1: $3a
    ld e, d                                       ; $6da2: $5a
    scf                                           ; $6da3: $37
    and l                                         ; $6da4: $a5
    dec [hl]                                      ; $6da5: $35
    ld l, c                                       ; $6da6: $69
    ld d, [hl]                                    ; $6da7: $56
    ld a, $76                                     ; $6da8: $3e $76
    ld d, $7e                                     ; $6daa: $16 $7e
    ld d, a                                       ; $6dac: $57
    inc c                                         ; $6dad: $0c
    dec a                                         ; $6dae: $3d
    or h                                          ; $6daf: $b4
    cp $f3                                        ; $6db0: $fe $f3
    ld [hl], d                                    ; $6db2: $72
    ld h, c                                       ; $6db3: $61
    dec a                                         ; $6db4: $3d
    ld l, a                                       ; $6db5: $6f
    db $10                                        ; $6db6: $10
    inc a                                         ; $6db7: $3c
    pop af                                        ; $6db8: $f1
    rra                                           ; $6db9: $1f
    reti                                          ; $6dba: $d9


    cp d                                          ; $6dbb: $ba
    and a                                         ; $6dbc: $a7
    rst $18                                       ; $6dbd: $df
    and h                                         ; $6dbe: $a4
    inc hl                                        ; $6dbf: $23
    halt                                          ; $6dc0: $76
    ld a, l                                       ; $6dc1: $7d
    ld a, h                                       ; $6dc2: $7c
    ld d, d                                       ; $6dc3: $52
    call $1f27                                    ; $6dc4: $cd $27 $1f
    and [hl]                                      ; $6dc7: $a6
    push af                                       ; $6dc8: $f5
    rst $20                                       ; $6dc9: $e7
    push hl                                       ; $6dca: $e5
    ld d, a                                       ; $6dcb: $57
    add hl, de                                    ; $6dcc: $19
    add c                                         ; $6dcd: $81
    rst $20                                       ; $6dce: $e7
    xor [hl]                                      ; $6dcf: $ae
    ld l, l                                       ; $6dd0: $6d
    ld a, h                                       ; $6dd1: $7c
    rst $10                                       ; $6dd2: $d7
    rst $00                                       ; $6dd3: $c7
    rst $18                                       ; $6dd4: $df
    jr jr_021_6dee                                ; $6dd5: $18 $17

    ld l, d                                       ; $6dd7: $6a
    db $fd                                        ; $6dd8: $fd
    rst $10                                       ; $6dd9: $d7
    and h                                         ; $6dda: $a4
    sbc c                                         ; $6ddb: $99
    db $fd                                        ; $6ddc: $fd
    rra                                           ; $6ddd: $1f
    rst $10                                       ; $6dde: $d7
    ld a, [hl]                                    ; $6ddf: $7e
    rst $30                                       ; $6de0: $f7
    rla                                           ; $6de1: $17
    add h                                         ; $6de2: $84
    ld bc, $8a3d                                  ; $6de3: $01 $3d $8a
    ld d, d                                       ; $6de6: $52
    ld a, l                                       ; $6de7: $7d
    ld c, l                                       ; $6de8: $4d
    ld a, [de]                                    ; $6de9: $1a
    xor $4e                                       ; $6dea: $ee $4e
    ld d, [hl]                                    ; $6dec: $56
    and [hl]                                      ; $6ded: $a6

jr_021_6dee:
    pop hl                                        ; $6dee: $e1
    cp d                                          ; $6def: $ba
    ld h, a                                       ; $6df0: $67
    ld l, b                                       ; $6df1: $68
    swap a                                        ; $6df2: $cb $37
    ld [$9603], sp                                ; $6df4: $08 $03 $96
    ld a, c                                       ; $6df7: $79
    ld b, [hl]                                    ; $6df8: $46
    or [hl]                                       ; $6df9: $b6
    ld h, $cd                                     ; $6dfa: $26 $cd
    cp h                                          ; $6dfc: $bc
    ld e, h                                       ; $6dfd: $5c
    jr jr_021_6d9f                                ; $6dfe: $18 $9f

    ld h, $b2                                     ; $6e00: $26 $b2
    dec d                                         ; $6e02: $15
    db $ed                                        ; $6e03: $ed
    ld [hl], h                                    ; $6e04: $74
    sbc [hl]                                      ; $6e05: $9e
    db $10                                        ; $6e06: $10
    ld b, $c7                                     ; $6e07: $06 $c7
    db $e4                                        ; $6e09: $e4
    sbc d                                         ; $6e0a: $9a
    inc [hl]                                      ; $6e0b: $34
    xor e                                         ; $6e0c: $ab
    ld d, e                                       ; $6e0d: $53
    ld a, [c]                                     ; $6e0e: $f2
    dec hl                                        ; $6e0f: $2b
    ret                                           ; $6e10: $c9


    rst $08                                       ; $6e11: $cf
    ld [hl-], a                                   ; $6e12: $32
    ld a, $4d                                     ; $6e13: $3e $4d
    ld h, h                                       ; $6e15: $64
    sub e                                         ; $6e16: $93
    rrca                                          ; $6e17: $0f
    db $d3                                        ; $6e18: $d3
    ld a, [$55d3]                                 ; $6e19: $fa $d3 $55
    ld b, [hl]                                    ; $6e1c: $46
    ldh [$bb], a                                  ; $6e1d: $e0 $bb
    ld h, d                                       ; $6e1f: $62
    cp l                                          ; $6e20: $bd
    jp nc, $a8ec                                  ; $6e21: $d2 $ec $a8

    db $d3                                        ; $6e24: $d3
    adc a                                         ; $6e25: $8f
    sbc l                                         ; $6e26: $9d
    xor [hl]                                      ; $6e27: $ae
    ld [hl-], a                                   ; $6e28: $32
    ld [bc], a                                    ; $6e29: $02
    rst $08                                       ; $6e2a: $cf
    ld e, l                                       ; $6e2b: $5d
    rst $30                                       ; $6e2c: $f7
    ld [hl], h                                    ; $6e2d: $74
    ld a, a                                       ; $6e2e: $7f
    pop hl                                        ; $6e2f: $e1
    ld c, [hl]                                    ; $6e30: $4e
    adc c                                         ; $6e31: $89
    call $9eb2                                    ; $6e32: $cd $b2 $9e
    sub [hl]                                      ; $6e35: $96
    sub [hl]                                      ; $6e36: $96
    sub $59                                       ; $6e37: $d6 $59
    ld d, [hl]                                    ; $6e39: $56
    and a                                         ; $6e3a: $a7
    rst $20                                       ; $6e3b: $e7
    ld d, a                                       ; $6e3c: $57
    sub d                                         ; $6e3d: $92
    sbc a                                         ; $6e3e: $9f
    rst $20                                       ; $6e3f: $e7
    db $e4                                        ; $6e40: $e4
    jp $feb4                                      ; $6e41: $c3 $b4 $fe


    sbc d                                         ; $6e44: $9a
    inc [hl]                                      ; $6e45: $34
    ld [$bd03], sp                                ; $6e46: $08 $03 $bd
    jp nc, $e4d4                                  ; $6e49: $d2 $d4 $e4

    rlca                                          ; $6e4c: $07
    sbc l                                         ; $6e4d: $9d
    daa                                           ; $6e4e: $27
    halt                                          ; $6e4f: $76
    add hl, hl                                    ; $6e50: $29
    sbc b                                         ; $6e51: $98
    ld l, $a6                                     ; $6e52: $2e $a6
    cpl                                           ; $6e54: $2f
    db $ed                                        ; $6e55: $ed
    ld sp, hl                                     ; $6e56: $f9
    dec c                                         ; $6e57: $0d
    ld a, a                                       ; $6e58: $7f
    ld l, c                                       ; $6e59: $69

Jump_021_6e5a:
    ld a, h                                       ; $6e5a: $7c
    ld l, c                                       ; $6e5b: $69
    xor a                                         ; $6e5c: $af
    adc d                                         ; $6e5d: $8a
    ld a, [bc]                                    ; $6e5e: $0a
    ret nz                                        ; $6e5f: $c0

    ld e, l                                       ; $6e60: $5d
    xor e                                         ; $6e61: $ab
    adc d                                         ; $6e62: $8a
    inc [hl]                                      ; $6e63: $34
    ld [$9603], sp                                ; $6e64: $08 $03 $96
    sbc d                                         ; $6e67: $9a
    push af                                       ; $6e68: $f5
    rst $10                                       ; $6e69: $d7
    cp $a7                                        ; $6e6a: $fe $a7
    ld d, l                                       ; $6e6c: $55
    ld b, [hl]                                    ; $6e6d: $46
    ldh [rNR24], a                                ; $6e6e: $e0 $19
    ld [hl], a                                    ; $6e70: $77
    ld b, b                                       ; $6e71: $40
    rst $10                                       ; $6e72: $d7
    or [hl]                                       ; $6e73: $b6
    db $e3                                        ; $6e74: $e3
    inc hl                                        ; $6e75: $23
    inc c                                         ; $6e76: $0c
    dec a                                         ; $6e77: $3d
    ld c, e                                       ; $6e78: $4b
    xor [hl]                                      ; $6e79: $ae
    ld [hl-], a                                   ; $6e7a: $32
    ld [bc], a                                    ; $6e7b: $02
    rst $08                                       ; $6e7c: $cf
    sub $a4                                       ; $6e7d: $d6 $a4
    jp hl                                         ; $6e7f: $e9


    adc d                                         ; $6e80: $8a
    ld bc, $ffdd                                  ; $6e81: $01 $dd $ff
    xor l                                         ; $6e84: $ad
    rrca                                          ; $6e85: $0f
    ld l, b                                       ; $6e86: $68
    xor l                                         ; $6e87: $ad
    cp a                                          ; $6e88: $bf
    adc [hl]                                      ; $6e89: $8e
    pop af                                        ; $6e8a: $f1
    ld a, c                                       ; $6e8b: $79
    ld sp, hl                                     ; $6e8c: $f9
    ld [hl], l                                    ; $6e8d: $75
    inc sp                                        ; $6e8e: $33
    ld [bc], a                                    ; $6e8f: $02
    cp a                                          ; $6e90: $bf
    or h                                          ; $6e91: $b4
    rst $20                                       ; $6e92: $e7
    push hl                                       ; $6e93: $e5
    ld [hl], a                                    ; $6e94: $77
    ld [hl], h                                    ; $6e95: $74
    ld b, $f7                                     ; $6e96: $06 $f7
    ld h, c                                       ; $6e98: $61
    ld c, c                                       ; $6e99: $49
    dec bc                                        ; $6e9a: $0b
    sbc a                                         ; $6e9b: $9f
    dec sp                                        ; $6e9c: $3b
    dec h                                         ; $6e9d: $25
    or [hl]                                       ; $6e9e: $b6
    db $d3                                        ; $6e9f: $d3
    call z, $f915                                 ; $6ea0: $cc $15 $f9
    jr jr_021_6eac                                ; $6ea3: $18 $07

    ld c, a                                       ; $6ea5: $4f
    cp [hl]                                       ; $6ea6: $be
    ldh a, [$e7]                                  ; $6ea7: $f0 $e7
    add hl, sp                                    ; $6ea9: $39
    ei                                            ; $6eaa: $fb
    ld [de], a                                    ; $6eab: $12

jr_021_6eac:
    sbc e                                         ; $6eac: $9b
    xor [hl]                                      ; $6ead: $ae
    ld [hl-], a                                   ; $6eae: $32
    ld a, [c]                                     ; $6eaf: $f2
    ld l, b                                       ; $6eb0: $68
    dec l                                         ; $6eb1: $2d
    sub h                                         ; $6eb2: $94
    ld [c], a                                     ; $6eb3: $e2
    ld [$3d03], sp                                ; $6eb4: $08 $03 $3d
    adc d                                         ; $6eb7: $8a
    ld a, [$232a]                                 ; $6eb8: $fa $2a $23
    ldh a, [$e3]                                  ; $6ebb: $f0 $e3
    ld l, a                                       ; $6ebd: $6f
    adc h                                         ; $6ebe: $8c
    dec bc                                        ; $6ebf: $0b
    or l                                          ; $6ec0: $b5
    cp $6b                                        ; $6ec1: $fe $6b
    jp nc, $7f8c                                  ; $6ec3: $d2 $8c $7f

    xor l                                         ; $6ec6: $ad
    cp a                                          ; $6ec7: $bf
    ld c, h                                       ; $6ec8: $4c
    adc c                                         ; $6ec9: $89
    adc l                                         ; $6eca: $8d
    ld a, a                                       ; $6ecb: $7f
    xor l                                         ; $6ecc: $ad
    cp a                                          ; $6ecd: $bf
    and b                                         ; $6ece: $a0
    ld e, c                                       ; $6ecf: $59
    sub $7e                                       ; $6ed0: $d6 $7e
    sbc a                                         ; $6ed2: $9f
    sub a                                         ; $6ed3: $97
    ld e, a                                       ; $6ed4: $5f
    cp h                                          ; $6ed5: $bc
    ld l, l                                       ; $6ed6: $6d
    ld d, c                                       ; $6ed7: $51
    ld l, c                                       ; $6ed8: $69
    add $a7                                       ; $6ed9: $c6 $a7
    adc c                                         ; $6edb: $89
    ld l, h                                       ; $6edc: $6c
    ld b, l                                       ; $6edd: $45
    xor l                                         ; $6ede: $ad
    ccf                                           ; $6edf: $3f
    ret z                                         ; $6ee0: $c8

    ldh a, [$bd]                                  ; $6ee1: $f0 $bd
    ld e, h                                       ; $6ee3: $5c
    ld a, [bc]                                    ; $6ee4: $0a
    and $45                                       ; $6ee5: $e6 $45
    ld a, l                                       ; $6ee7: $7d
    ld d, l                                       ; $6ee8: $55
    sbc d                                         ; $6ee9: $9a
    ret z                                         ; $6eea: $c8

    ld d, [hl]                                    ; $6eeb: $56
    ld a, $76                                     ; $6eec: $3e $76
    db $10                                        ; $6eee: $10
    ld b, $ad                                     ; $6eef: $06 $ad
    ld a, [hl+]                                   ; $6ef1: $2a
    jp nc, $5974                                  ; $6ef2: $d2 $74 $59

    rst $08                                       ; $6ef5: $cf
    jp nc, $e54c                                  ; $6ef6: $d2 $4c $e5

    xor c                                         ; $6ef9: $a9
    and $6b                                       ; $6efa: $e6 $6b
    jp nc, $d2ec                                  ; $6efc: $d2 $ec $d2

    xor d                                         ; $6eff: $aa
    xor b                                         ; $6f00: $a8
    nop                                           ; $6f01: $00
    ld e, l                                       ; $6f02: $5d
    ld sp, $25dd                                  ; $6f03: $31 $dd $25
    db $ed                                        ; $6f06: $ed
    rlca                                          ; $6f07: $07
    ld c, b                                       ; $6f08: $48
    reti                                          ; $6f09: $d9


    ld l, c                                       ; $6f0a: $69
    and $8a                                       ; $6f0b: $e6 $8a
    ld a, h                                       ; $6f0d: $7c
    adc h                                         ; $6f0e: $8c
    dec hl                                        ; $6f0f: $2b
    ld a, [bc]                                    ; $6f10: $0a
    add e                                         ; $6f11: $83
    daa                                           ; $6f12: $27
    ld e, a                                       ; $6f13: $5f
    ld hl, sp-$0d                                 ; $6f14: $f8 $f3
    ld e, h                                       ; $6f16: $5c

Call_021_6f17:
    ld a, h                                       ; $6f17: $7c
    dec d                                         ; $6f18: $15
    ld e, d                                       ; $6f19: $5a
    ld c, c                                       ; $6f1a: $49
    ld a, [hl]                                    ; $6f1b: $7e
    sbc [hl]                                      ; $6f1c: $9e
    sub e                                         ; $6f1d: $93
    rrca                                          ; $6f1e: $0f
    db $d3                                        ; $6f1f: $d3
    ld a, [$f2f3]                                 ; $6f20: $fa $f3 $f2
    xor e                                         ; $6f23: $ab
    adc h                                         ; $6f24: $8c
    ret nz                                        ; $6f25: $c0

    rst $08                                       ; $6f26: $cf
    ld d, d                                       ; $6f27: $52
    dec bc                                        ; $6f28: $0b
    ld h, a                                       ; $6f29: $67
    adc b                                         ; $6f2a: $88
    cp l                                          ; $6f2b: $bd
    and b                                         ; $6f2c: $a0
    or l                                          ; $6f2d: $b5
    ld h, $d5                                     ; $6f2e: $26 $d5
    ld sp, $4147                                  ; $6f30: $31 $47 $41
    ld a, l                                       ; $6f33: $7d
    daa                                           ; $6f34: $27
    dec hl                                        ; $6f35: $2b
    db $d3                                        ; $6f36: $d3
    ld [hl], b                                    ; $6f37: $70
    db $dd                                        ; $6f38: $dd
    cpl                                           ; $6f39: $2f
    ld d, l                                       ; $6f3a: $55
    cp a                                          ; $6f3b: $bf
    ld c, e                                       ; $6f3c: $4b
    di                                            ; $6f3d: $f3
    ld a, [c]                                     ; $6f3e: $f2
    adc e                                         ; $6f3f: $8b
    or a                                          ; $6f40: $b7
    dec l                                         ; $6f41: $2d
    ld a, [hl+]                                   ; $6f42: $2a
    dec c                                         ; $6f43: $0d
    ld e, d                                       ; $6f44: $5a
    adc a                                         ; $6f45: $8f
    ld a, [c]                                     ; $6f46: $f2
    sub e                                         ; $6f47: $93
    or a                                          ; $6f48: $b7
    ld e, a                                       ; $6f49: $5f
    sbc [hl]                                      ; $6f4a: $9e
    xor d                                         ; $6f4b: $aa
    rra                                           ; $6f4c: $1f
    ld a, h                                       ; $6f4d: $7c
    push hl                                       ; $6f4e: $e5
    scf                                           ; $6f4f: $37
    ld l, c                                       ; $6f50: $69
    ld d, l                                       ; $6f51: $55
    ld e, d                                       ; $6f52: $5a
    ld e, a                                       ; $6f53: $5f
    ld h, b                                       ; $6f54: $60
    ld d, l                                       ; $6f55: $55
    ld a, [de]                                    ; $6f56: $1a
    ld a, [c]                                     ; $6f57: $f2
    sub a                                         ; $6f58: $97
    cp [hl]                                       ; $6f59: $be
    dec hl                                        ; $6f5a: $2b

Jump_021_6f5b:
    inc hl                                        ; $6f5b: $23
    ldh a, [$b0]                                  ; $6f5c: $f0 $b0
    di                                            ; $6f5e: $f3
    call $1ff5                                    ; $6f5f: $cd $f5 $1f
    rst $38                                       ; $6f62: $ff
    ld sp, $0c22                                  ; $6f63: $31 $22 $0c
    rst $00                                       ; $6f66: $c7
    db $e4                                        ; $6f67: $e4
    sbc d                                         ; $6f68: $9a
    inc [hl]                                      ; $6f69: $34
    xor e                                         ; $6f6a: $ab
    ld d, e                                       ; $6f6b: $53
    ld a, [c]                                     ; $6f6c: $f2
    dec hl                                        ; $6f6d: $2b
    ret                                           ; $6f6e: $c9


    rst $08                                       ; $6f6f: $cf
    or d                                          ; $6f70: $b2
    ld a, [hl+]                                   ; $6f71: $2a
    ld c, l                                       ; $6f72: $4d
    ld h, h                                       ; $6f73: $64
    sub e                                         ; $6f74: $93
    rrca                                          ; $6f75: $0f
    db $d3                                        ; $6f76: $d3
    ld a, [$55d3]                                 ; $6f77: $fa $d3 $55
    ld b, [hl]                                    ; $6f7a: $46
    ldh [$bb], a                                  ; $6f7b: $e0 $bb
    ld h, d                                       ; $6f7d: $62
    and a                                         ; $6f7e: $a7
    inc h                                         ; $6f7f: $24
    jp c, $c451                                   ; $6f80: $da $51 $c4

    sub $89                                       ; $6f83: $d6 $89
    xor a                                         ; $6f85: $af
    ldh a, [$63]                                  ; $6f86: $f0 $63
    ld c, c                                       ; $6f88: $49
    dec [hl]                                      ; $6f89: $35
    ld e, a                                       ; $6f8a: $5f
    ld e, e                                       ; $6f8b: $5b
    ld l, $05                                     ; $6f8c: $2e $05
    cp e                                          ; $6f8e: $bb
    cp [hl]                                       ; $6f8f: $be
    or [hl]                                       ; $6f90: $b6
    ld d, [hl]                                    ; $6f91: $56
    push af                                       ; $6f92: $f5
    ld a, c                                       ; $6f93: $79
    xor $78                                       ; $6f94: $ee $78
    ld l, c                                       ; $6f96: $69
    ld l, h                                       ; $6f97: $6c
    ei                                            ; $6f98: $fb
    ld [de], a                                    ; $6f99: $12
    ld c, e                                       ; $6f9a: $4b
    add hl, de                                    ; $6f9b: $19
    ld a, a                                       ; $6f9c: $7f
    cp l                                          ; $6f9d: $bd
    xor h                                         ; $6f9e: $ac
    ld c, c                                       ; $6f9f: $49
    add e                                         ; $6fa0: $83
    jr nc, jr_021_6fe0                            ; $6fa1: $30 $3d

    ld a, a                                       ; $6fa3: $7f
    ld b, l                                       ; $6fa4: $45
    xor l                                         ; $6fa5: $ad
    ld c, a                                       ; $6fa6: $4f
    dec [hl]                                      ; $6fa7: $35
    ld e, a                                       ; $6fa8: $5f
    ld a, h                                       ; $6fa9: $7c
    dec d                                         ; $6faa: $15
    ld a, d                                       ; $6fab: $7a
    ld [hl], $2f                                  ; $6fac: $36 $2f
    ld [$de6b], a                                 ; $6fae: $ea $6b $de
    ld de, $c706                                  ; $6fb1: $11 $06 $c7
    ld a, [c]                                     ; $6fb4: $f2
    inc a                                         ; $6fb5: $3c

Jump_021_6fb6:
    sbc d                                         ; $6fb6: $9a
    push bc                                       ; $6fb7: $c5
    ld e, [hl]                                    ; $6fb8: $5e
    sub e                                         ; $6fb9: $93
    and [hl]                                      ; $6fba: $a6
    ld h, $bf                                     ; $6fbb: $26 $bf
    jp z, $3c08                                   ; $6fbd: $ca $08 $3c

    db $e3                                        ; $6fc0: $e3
    ld c, $5c                                     ; $6fc1: $0e $5c
    sbc e                                         ; $6fc3: $9b
    add hl, hl                                    ; $6fc4: $29
    xor a                                         ; $6fc5: $af
    call $c96c                                    ; $6fc6: $cd $6c $c9
    ld [hl], b                                    ; $6fc9: $70
    pop hl                                        ; $6fca: $e1
    ld [hl], a                                    ; $6fcb: $77
    pop bc                                        ; $6fcc: $c1
    dec a                                         ; $6fcd: $3d
    xor a                                         ; $6fce: $af
    sub a                                         ; $6fcf: $97
    jp hl                                         ; $6fd0: $e9


    xor d                                         ; $6fd1: $aa
    inc [hl]                                      ; $6fd2: $34
    db $e4                                        ; $6fd3: $e4
    cpl                                           ; $6fd4: $2f
    ld a, l                                       ; $6fd5: $7d
    ld d, a                                       ; $6fd6: $57
    ld b, [hl]                                    ; $6fd7: $46
    ldh [$b9], a                                  ; $6fd8: $e0 $b9
    dec hl                                        ; $6fda: $2b
    ret                                           ; $6fdb: $c9


    rst $28                                       ; $6fdc: $ef
    inc hl                                        ; $6fdd: $23
    ld a, h                                       ; $6fde: $7c
    ld d, a                                       ; $6fdf: $57

jr_021_6fe0:
    inc c                                         ; $6fe0: $0c
    db $dd                                        ; $6fe1: $dd
    dec h                                         ; $6fe2: $25
    db $ed                                        ; $6fe3: $ed
    rlca                                          ; $6fe4: $07
    ld c, b                                       ; $6fe5: $48
    reti                                          ; $6fe6: $d9


    ld l, c                                       ; $6fe7: $69
    and $8a                                       ; $6fe8: $e6 $8a
    ld a, h                                       ; $6fea: $7c
    adc h                                         ; $6feb: $8c
    db $e3                                        ; $6fec: $e3
    db $d3                                        ; $6fed: $d3
    ld b, h                                       ; $6fee: $44
    or [hl]                                       ; $6fef: $b6
    ld a, [hl-]                                   ; $6ff0: $3a
    dec h                                         ; $6ff1: $25
    adc a                                         ; $6ff2: $8f
    jr nc, jr_021_701c                            ; $6ff3: $30 $27

    ld h, l                                       ; $6ff5: $65
    sub $77                                       ; $6ff6: $d6 $77
    ld l, c                                       ; $6ff8: $69
    ld e, [hl]                                    ; $6ff9: $5e
    ld a, [hl]                                    ; $6ffa: $7e
    pop af                                        ; $6ffb: $f1
    or [hl]                                       ; $6ffc: $b6
    ld b, l                                       ; $6ffd: $45
    and l                                         ; $6ffe: $a5
    ld b, c                                       ; $6fff: $41
    db $eb                                        ; $7000: $eb
    ld d, c                                       ; $7001: $51
    cp [hl]                                       ; $7002: $be
    ld e, c                                       ; $7003: $59
    ld d, c                                       ; $7004: $51
    db $eb                                        ; $7005: $eb
    xor a                                         ; $7006: $af
    sbc l                                         ; $7007: $9d
    ld e, c                                       ; $7008: $59
    add a                                         ; $7009: $87
    ld l, c                                       ; $700a: $69

Jump_021_700b:
    dec sp                                        ; $700b: $3b
    adc l                                         ; $700c: $8d
    rst $28                                       ; $700d: $ef
    xor l                                         ; $700e: $ad
    cpl                                           ; $700f: $2f
    adc l                                         ; $7010: $8d
    sub a                                         ; $7011: $97
    ld c, e                                       ; $7012: $4b
    ld bc, $96c2                                  ; $7013: $01 $c2 $96
    ld e, d                                       ; $7016: $5a
    cp b                                          ; $7017: $b8
    ld a, [c]                                     ; $7018: $f2
    ld a, [c]                                     ; $7019: $f2
    di                                            ; $701a: $f3
    sbc h                                         ; $701b: $9c

jr_021_701c:
    inc a                                         ; $701c: $3c
    cp h                                          ; $701d: $bc
    ld c, d                                       ; $701e: $4a
    ld d, l                                       ; $701f: $55
    ld d, [hl]                                    ; $7020: $56
    sub d                                         ; $7021: $92
    sbc a                                         ; $7022: $9f
    rst $20                                       ; $7023: $e7
    db $e4                                        ; $7024: $e4
    jp $feb4                                      ; $7025: $c3 $b4 $fe


    ld [hl], h                                    ; $7028: $74
    sub l                                         ; $7029: $95
    ld de, $aef8                                  ; $702a: $11 $f8 $ae
    ld l, e                                       ; $702d: $6b
    and c                                         ; $702e: $a1
    ld l, e                                       ; $702f: $6b
    db $db                                        ; $7030: $db
    pop af                                        ; $7031: $f1
    ld de, $9606                                  ; $7032: $11 $06 $96
    pop af                                        ; $7035: $f1
    ld l, c                                       ; $7036: $69
    ld [hl+], a                                   ; $7037: $22
    sbc e                                         ; $7038: $9b
    ld bc, $31a3                                  ; $7039: $01 $a3 $31
    ld [hl], $93                                  ; $703c: $36 $93
    or a                                          ; $703e: $b7

jr_021_703f:
    ld e, a                                       ; $703f: $5f
    sub $a4                                       ; $7040: $d6 $a4
    sbc c                                         ; $7042: $99
    rst $20                                       ; $7043: $e7
    cp h                                          ; $7044: $bc
    db $fc                                        ; $7045: $fc
    adc $e8                                       ; $7046: $ce $e8
    jr nc, jr_021_703f                            ; $7048: $30 $f5

    ld h, a                                       ; $704a: $67
    db $eb                                        ; $704b: $eb
    sub [hl]                                      ; $704c: $96
    add [hl]                                      ; $704d: $86
    db $fc                                        ; $704e: $fc
    and l                                         ; $704f: $a5
    rst $28                                       ; $7050: $ef
    ld l, [hl]                                    ; $7051: $6e
    ld b, [hl]                                    ; $7052: $46
    ldh [$d7], a                                  ; $7053: $e0 $d7
    xor d                                         ; $7055: $aa
    call nz, $99da                                ; $7056: $c4 $da $99
    ld [hl], l                                    ; $7059: $75
    xor $5a                                       ; $705a: $ee $5a
    cp [hl]                                       ; $705c: $be
    ld c, d                                       ; $705d: $4a
    ld h, d                                       ; $705e: $62
    dec sp                                        ; $705f: $3b
    db $fd                                        ; $7060: $fd
    xor l                                         ; $7061: $ad
    rla                                           ; $7062: $17
    sbc [hl]                                      ; $7063: $9e
    db $ed                                        ; $7064: $ed
    ld e, b                                       ; $7065: $58
    halt                                          ; $7066: $76
    db $fd                                        ; $7067: $fd
    ld h, $71                                     ; $7068: $26 $71
    rst $10                                       ; $706a: $d7
    ld [hl], $be                                  ; $706b: $36 $be
    db $eb                                        ; $706d: $eb
    dec hl                                        ; $706e: $2b
    ld a, [bc]                                    ; $706f: $0a
    ld l, e                                       ; $7070: $6b
    rst $38                                       ; $7071: $ff
    db $d3                                        ; $7072: $d3
    jp nz, Jump_021_700b                          ; $7073: $c2 $0b $70

    add hl, hl                                    ; $7076: $29
    sbc b                                         ; $7077: $98
    dec l                                         ; $7078: $2d
    add hl, de                                    ; $7079: $19
    adc $cb                                       ; $707a: $ce $cb
    rrca                                          ; $707c: $0f

jr_021_707d:
    jp z, $eb47                                   ; $707d: $ca $47 $eb

    jp $94ec                                      ; $7080: $c3 $ec $94


    ld b, c                                       ; $7083: $41
    add [hl]                                      ; $7084: $86
    ccf                                           ; $7085: $3f
    cp a                                          ; $7086: $bf
    pop hl                                        ; $7087: $e1
    adc a                                         ; $7088: $8f
    sub d                                         ; $7089: $92
    ld b, a                                       ; $708a: $47
    jr jr_021_70ca                                ; $708b: $18 $3d

    ld c, e                                       ; $708d: $4b
    xor [hl]                                      ; $708e: $ae
    jr z, jr_021_707d                             ; $708f: $28 $ec

    ld a, [$f2aa]                                 ; $7091: $fa $aa $f2
    ld d, l                                       ; $7094: $55
    db $fd                                        ; $7095: $fd
    reti                                          ; $7096: $d9


    jp nc, $d778                                  ; $7097: $d2 $78 $d7

    or l                                          ; $709a: $b5
    ld h, $d5                                     ; $709b: $26 $d5
    ld de, $a706                                  ; $709d: $11 $06 $a7
    db $e4                                        ; $70a0: $e4
    sub d                                         ; $70a1: $92
    ld e, $cd                                     ; $70a2: $1e $cd
    ld [c], a                                     ; $70a4: $e2
    db $e3                                        ; $70a5: $e3
    dec d                                         ; $70a6: $15
    or $d7                                        ; $70a7: $f6 $d7
    set 1, e                                      ; $70a9: $cb $cb
    ret nz                                        ; $70ab: $c0

jr_021_70ac:
    inc sp                                        ; $70ac: $33
    ld a, $2d                                     ; $70ad: $3e $2d
    ld h, l                                       ; $70af: $65
    sub b                                         ; $70b0: $90
    pop hl                                        ; $70b1: $e1
    daa                                           ; $70b2: $27
    db $fd                                        ; $70b3: $fd
    ld l, $ac                                     ; $70b4: $2e $ac
    ld h, e                                       ; $70b6: $63
    ld h, d                                       ; $70b7: $62
    cp h                                          ; $70b8: $bc
    inc d                                         ; $70b9: $14
    ld c, h                                       ; $70ba: $4c
    rst $10                                       ; $70bb: $d7
    ld de, $3aa5                                  ; $70bc: $11 $a5 $3a
    sbc d                                         ; $70bf: $9a
    and l                                         ; $70c0: $a5
    ld h, [hl]                                    ; $70c1: $66
    db $fd                                        ; $70c2: $fd
    cp l                                          ; $70c3: $bd
    push af                                       ; $70c4: $f5
    ld l, c                                       ; $70c5: $69
    ld l, c                                       ; $70c6: $69
    db $db                                        ; $70c7: $db
    cpl                                           ; $70c8: $2f
    rst $08                                       ; $70c9: $cf

jr_021_70ca:
    and [hl]                                      ; $70ca: $a6
    sub e                                         ; $70cb: $93
    rst $20                                       ; $70cc: $e7
    ld d, l                                       ; $70cd: $55
    ret c                                         ; $70ce: $d8

    db $ec                                        ; $70cf: $ec
    sub h                                         ; $70d0: $94

jr_021_70d1:
    ld e, l                                       ; $70d1: $5d
    add a                                         ; $70d2: $87
    ret                                           ; $70d3: $c9


    cp e                                          ; $70d4: $bb
    ld de, $3b42                                  ; $70d5: $11 $42 $3b
    adc d                                         ; $70d8: $8a
    ret c                                         ; $70d9: $d8

    jr z, jr_021_7133                             ; $70da: $28 $57

    sub d                                         ; $70dc: $92
    ld [$8297], a                                 ; $70dd: $ea $97 $82
    ld e, l                                       ; $70e0: $5d
    sbc d                                         ; $70e1: $9a
    sub a                                         ; $70e2: $97
    ld e, a                                       ; $70e3: $5f
    cp h                                          ; $70e4: $bc
    ld l, l                                       ; $70e5: $6d
    ld d, c                                       ; $70e6: $51
    ld l, c                                       ; $70e7: $69
    cp b                                          ; $70e8: $b8
    db $eb                                        ; $70e9: $eb
    call nz, Call_021_7857                        ; $70ea: $c4 $57 $78
    add h                                         ; $70ed: $84
    ld bc, $c547                                  ; $70ee: $01 $47 $c5
    jr c, jr_021_70ac                             ; $70f1: $38 $b9

    ld b, c                                       ; $70f3: $41
    ld [hl], c                                    ; $70f4: $71
    xor $ba                                       ; $70f5: $ee $ba
    rst $38                                       ; $70f7: $ff
    ld e, e                                       ; $70f8: $5b
    rra                                           ; $70f9: $1f
    cp b                                          ; $70fa: $b8
    ld l, e                                       ; $70fb: $6b
    jp nc, $acd4                                  ; $70fc: $d2 $d4 $ac

    cp a                                          ; $70ff: $bf
    and d                                         ; $7100: $a2
    ld l, h                                       ; $7101: $6c
    ld c, l                                       ; $7102: $4d
    ld a, [de]                                    ; $7103: $1a
    sbc c                                         ; $7104: $99
    ld l, l                                       ; $7105: $6d
    ld l, b                                       ; $7106: $68
    ld a, l                                       ; $7107: $7d
    nop                                           ; $7108: $00
    and l                                         ; $7109: $a5
    ld a, b                                       ; $710a: $78
    sbc a                                         ; $710b: $9f
    ld l, b                                       ; $710c: $68
    and a                                         ; $710d: $a7
    inc h                                         ; $710e: $24
    cp a                                          ; $710f: $bf
    sub d                                         ; $7110: $92
    db $fc                                        ; $7111: $fc
    ld a, [hl+]                                   ; $7112: $2a
    and l                                         ; $7113: $a5
    ld e, c                                       ; $7114: $59
    ld d, $bc                                     ; $7115: $16 $bc
    ld c, a                                       ; $7117: $4f
    ld l, $5b                                     ; $7118: $2e $5b
    jp c, Jump_021_72f3                           ; $711a: $da $f3 $72

    ld h, c                                       ; $711d: $61
    sub l                                         ; $711e: $95
    ld de, $aef8                                  ; $711f: $11 $f8 $ae
    jr jr_021_70d1                                ; $7122: $18 $ad

    ld a, [bc]                                    ; $7124: $0a
    di                                            ; $7125: $f3
    ld a, [c]                                     ; $7126: $f2
    cp e                                          ; $7127: $bb
    ld d, l                                       ; $7128: $55
    dec a                                         ; $7129: $3d
    cp $ec                                        ; $712a: $fe $ec
    dec hl                                        ; $712c: $2b
    ldh [$f7], a                                  ; $712d: $e0 $f7
    rla                                           ; $712f: $17
    inc sp                                        ; $7130: $33
    db $eb                                        ; $7131: $eb
    rst $08                                       ; $7132: $cf

jr_021_7133:
    halt                                          ; $7133: $76
    ld l, c                                       ; $7134: $69
    ld e, [hl]                                    ; $7135: $5e
    ld a, [hl]                                    ; $7136: $7e
    pop af                                        ; $7137: $f1
    or [hl]                                       ; $7138: $b6
    ld b, l                                       ; $7139: $45
    and l                                         ; $713a: $a5
    jp hl                                         ; $713b: $e9


    adc d                                         ; $713c: $8a
    ld bc, $1ebd                                  ; $713d: $01 $bd $1e
    and $e5                                       ; $7140: $e6 $e5
    ld [hl], a                                    ; $7142: $77
    xor e                                         ; $7143: $ab
    ld a, d                                       ; $7144: $7a
    ld a, h                                       ; $7145: $7c
    add h                                         ; $7146: $84
    sub b                                         ; $7147: $90
    add hl, bc                                    ; $7148: $09
    cp c                                          ; $7149: $b9
    ld l, e                                       ; $714a: $6b
    ld e, $66                                     ; $714b: $1e $66
    ld e, c                                       ; $714d: $59
    ld d, c                                       ; $714e: $51
    db $eb                                        ; $714f: $eb
    and e                                         ; $7150: $a3
    push af                                       ; $7151: $f5
    jr z, jr_021_7193                             ; $7152: $28 $3f

    cp c                                          ; $7154: $b9
    ld b, c                                       ; $7155: $41
    pop af                                        ; $7156: $f1
    or l                                          ; $7157: $b5
    inc sp                                        ; $7158: $33
    db $eb                                        ; $7159: $eb
    cp e                                          ; $715a: $bb
    ld b, b                                       ; $715b: $40
    dec [hl]                                      ; $715c: $35
    sbc a                                         ; $715d: $9f
    sub a                                         ; $715e: $97
    sub a                                         ; $715f: $97
    ld b, a                                       ; $7160: $47
    dec sp                                        ; $7161: $3b
    xor d                                         ; $7162: $aa
    ld a, [hl+]                                   ; $7163: $2a
    sbc c                                         ; $7164: $99
    ld e, l                                       ; $7165: $5d
    jr nc, @-$68                                  ; $7166: $30 $96

    or c                                          ; $7168: $b1
    and h                                         ; $7169: $a4
    sbc d                                         ; $716a: $9a
    xor a                                         ; $716b: $af
    xor b                                         ; $716c: $a8
    push af                                       ; $716d: $f5
    ld [hl], a                                    ; $716e: $77
    dec e                                         ; $716f: $1d
    db $ed                                        ; $7170: $ed
    sub h                                         ; $7171: $94
    db $f4                                        ; $7172: $f4
    ret                                           ; $7173: $c9


    dec c                                         ; $7174: $0d
    adc d                                         ; $7175: $8a
    adc a                                         ; $7176: $8f
    sub d                                         ; $7177: $92
    rst $20                                       ; $7178: $e7
    ld c, [hl]                                    ; $7179: $4e
    xor c                                         ; $717a: $a9
    pop hl                                        ; $717b: $e1
    or l                                          ; $717c: $b5
    ld b, c                                       ; $717d: $41
    db $eb                                        ; $717e: $eb
    ld e, c                                       ; $717f: $59
    ld e, [hl]                                    ; $7180: $5e
    ld a, [hl]                                    ; $7181: $7e
    ld d, l                                       ; $7182: $55
    sbc d                                         ; $7183: $9a
    ret z                                         ; $7184: $c8

    halt                                          ; $7185: $76
    ld a, l                                       ; $7186: $7d
    db $ed                                        ; $7187: $ed
    rst $28                                       ; $7188: $ef
    cp d                                          ; $7189: $ba
    sub e                                         ; $718a: $93
    or l                                          ; $718b: $b5
    ld l, c                                       ; $718c: $69
    rst $38                                       ; $718d: $ff
    ld [hl], h                                    ; $718e: $74
    daa                                           ; $718f: $27
    sbc e                                         ; $7190: $9b
    jr nz, @-$76                                  ; $7191: $20 $88

jr_021_7193:
    cp a                                          ; $7193: $bf
    dec bc                                        ; $7194: $0b
    inc bc                                        ; $7195: $03
    scf                                           ; $7196: $37
    xor h                                         ; $7197: $ac
    cp c                                          ; $7198: $b9
    inc d                                         ; $7199: $14
    db $ec                                        ; $719a: $ec
    ld a, [hl-]                                   ; $719b: $3a
    ld b, d                                       ; $719c: $42
    ld [$9603], sp                                ; $719d: $08 $03 $96
    dec d                                         ; $71a0: $15
    or l                                          ; $71a1: $b5
    cp $bc                                        ; $71a2: $fe $bc
    db $fc                                        ; $71a4: $fc
    cp d                                          ; $71a5: $ba
    add hl, de                                    ; $71a6: $19
    add c                                         ; $71a7: $81
    ld e, a                                       ; $71a8: $5f
    jp c, $f2f3                                   ; $71a9: $da $f3 $f2

    dec sp                                        ; $71ac: $3b
    ld a, [hl-]                                   ; $71ad: $3a
    add e                                         ; $71ae: $83
    ei                                            ; $71af: $fb
    add b                                         ; $71b0: $80
    sub $42                                       ; $71b1: $d6 $42
    rst $10                                       ; $71b3: $d7
    or [hl]                                       ; $71b4: $b6
    db $e3                                        ; $71b5: $e3
    and e                                         ; $71b6: $a3
    ld [hl], l                                    ; $71b7: $75
    sub a                                         ; $71b8: $97
    or h                                          ; $71b9: $b4
    pop de                                        ; $71ba: $d1
    ld c, [hl]                                    ; $71bb: $4e
    inc sp                                        ; $71bc: $33
    ld d, a                                       ; $71bd: $57
    db $e4                                        ; $71be: $e4
    ld h, e                                       ; $71bf: $63
    inc e                                         ; $71c0: $1c
    inc a                                         ; $71c1: $3c
    ld sp, hl                                     ; $71c2: $f9
    jp nz, $e79f                                  ; $71c3: $c2 $9f $e7

    db $ec                                        ; $71c6: $ec
    ld c, e                                       ; $71c7: $4b
    ld l, h                                       ; $71c8: $6c
    cp d                                          ; $71c9: $ba
    ld a, [hl+]                                   ; $71ca: $2a
    dec c                                         ; $71cb: $0d
    ld sp, hl                                     ; $71cc: $f9
    ld c, e                                       ; $71cd: $4b
    rst $18                                       ; $71ce: $df
    sub l                                         ; $71cf: $95
    ld de, $b478                                  ; $71d0: $11 $78 $b4
    sub $a4                                       ; $71d3: $d6 $a4
    ld a, [hl-]                                   ; $71d5: $3a
    ld e, d                                       ; $71d6: $5a
    scf                                           ; $71d7: $37
    and l                                         ; $71d8: $a5
    dec [hl]                                      ; $71d9: $35
    ld l, c                                       ; $71da: $69
    ld d, [hl]                                    ; $71db: $56
    ld a, $76                                     ; $71dc: $3e $76
    ld d, $7e                                     ; $71de: $16 $7e
    ld d, a                                       ; $71e0: $57
    inc c                                         ; $71e1: $0c
    db $dd                                        ; $71e2: $dd
    ld d, h                                       ; $71e3: $54
    sbc $36                                       ; $71e4: $de $36
    ld [hl], c                                    ; $71e6: $71
    ld l, c                                       ; $71e7: $69
    rst $08                                       ; $71e8: $cf
    set 5, a                                      ; $71e9: $cb $ef
    ld h, h                                       ; $71eb: $64
    inc de                                        ; $71ec: $13
    inc b                                         ; $71ed: $04
    pop af                                        ; $71ee: $f1
    rst $10                                       ; $71ef: $d7
    ld [c], a                                     ; $71f0: $e2
    add [hl]                                      ; $71f1: $86
    db $dd                                        ; $71f2: $dd
    add a                                         ; $71f3: $87
    ld d, l                                       ; $71f4: $55
    ld d, c                                       ; $71f5: $51
    ld bc, $3324                                  ; $71f6: $01 $24 $33
    ld b, h                                       ; $71f9: $44
    sbc e                                         ; $71fa: $9b
    and l                                         ; $71fb: $a5
    ld h, [hl]                                    ; $71fc: $66
    db $fd                                        ; $71fd: $fd
    pop bc                                        ; $71fe: $c1
    ccf                                           ; $71ff: $3f
    xor l                                         ; $7200: $ad
    ei                                            ; $7201: $fb
    cp a                                          ; $7202: $bf
    push af                                       ; $7203: $f5
    ld h, c                                       ; $7204: $61
    ld b, c                                       ; $7205: $41
    ld e, [hl]                                    ; $7206: $5e
    ld a, [bc]                                    ; $7207: $0a
    halt                                          ; $7208: $76
    ld l, c                                       ; $7209: $69
    ld c, d                                       ; $720a: $4a
    ld l, h                                       ; $720b: $6c
    ld l, c                                       ; $720c: $69
    ld a, h                                       ; $720d: $7c
    ld l, c                                       ; $720e: $69
    rst $28                                       ; $720f: $ef
    ld a, [$abe4]                                 ; $7210: $fa $e4 $ab
    daa                                           ; $7213: $27
    adc a                                         ; $7214: $8f
    dec c                                         ; $7215: $0d
    jp nz, Jump_021_6527                          ; $7216: $c2 $27 $65

    sub $2f                                       ; $7219: $d6 $2f
    dec b                                         ; $721b: $05
    or e                                          ; $721c: $b3
    ld d, e                                       ; $721d: $53
    ld b, $19                                     ; $721e: $06 $19
    cp [hl]                                       ; $7220: $be
    sub a                                         ; $7221: $97
    ld c, e                                       ; $7222: $4b
    pop bc                                        ; $7223: $c1
    inc a                                         ; $7224: $3c
    daa                                           ; $7225: $27
    xor a                                         ; $7226: $af
    xor h                                         ; $7227: $ac
    dec hl                                        ; $7228: $2b
    ld b, $3d                                     ; $7229: $06 $3d
    set 1, e                                      ; $722b: $cb $cb
    rst $28                                       ; $722d: $ef
    jp nz, $fcbc                                  ; $722e: $c2 $bc $fc

    jp c, Jump_021_7599                           ; $7231: $da $99 $75

    xor $ba                                       ; $7234: $ee $ba
    rst $38                                       ; $7236: $ff
    ld e, e                                       ; $7237: $5b
    rra                                           ; $7238: $1f
    cp d                                          ; $7239: $ba
    ld h, d                                       ; $723a: $62
    and a                                         ; $723b: $a7
    cp a                                          ; $723c: $bf
    or d                                          ; $723d: $b2
    ld c, e                                       ; $723e: $4b
    pop bc                                        ; $723f: $c1
    ld l, $0c                                     ; $7240: $2e $0c
    ld c, h                                       ; $7242: $4c
    ld d, l                                       ; $7243: $55
    and [hl]                                      ; $7244: $a6
    ld l, e                                       ; $7245: $6b
    and a                                         ; $7246: $a7
    inc a                                         ; $7247: $3c
    ld e, d                                       ; $7248: $5a
    rrca                                          ; $7249: $0f
    ld l, c                                       ; $724a: $69
    ld b, $19                                     ; $724b: $06 $19
    cp $7a                                        ; $724d: $fe $7a
    sbc h                                         ; $724f: $9c
    cp c                                          ; $7250: $b9
    ld c, e                                       ; $7251: $4b
    ldh [$af], a                                  ; $7252: $e0 $af
    inc c                                         ; $7254: $0c
    ld h, c                                       ; $7255: $61
    dec a                                         ; $7256: $3d
    jp z, Jump_021_73cb                           ; $7257: $ca $cb $73

    rst $10                                       ; $725a: $d7
    xor d                                         ; $725b: $aa
    ld [hl+], a                                   ; $725c: $22
    dec c                                         ; $725d: $0d
    ld [hl], a                                    ; $725e: $77
    ld a, [de]                                    ; $725f: $1a
    jp Jump_021_5f04                              ; $7260: $c3 $04 $5f


    sub b                                         ; $7263: $90
    ret                                           ; $7264: $c9


    and [hl]                                      ; $7265: $a6
    jr nc, @+$7c                                  ; $7266: $30 $7a

    ld e, $61                                     ; $7268: $1e $61
    dec a                                         ; $726a: $3d
    adc d                                         ; $726b: $8a
    ld d, d                                       ; $726c: $52
    ld a, l                                       ; $726d: $7d
    ld c, l                                       ; $726e: $4d
    ld a, [de]                                    ; $726f: $1a
    or h                                          ; $7270: $b4
    sub $a4                                       ; $7271: $d6 $a4
    ld a, [hl-]                                   ; $7273: $3a
    ld b, $27                                     ; $7274: $06 $27
    db $dd                                        ; $7276: $dd
    ld a, [$32cf]                                 ; $7277: $fa $cf $32
    ret nc                                        ; $727a: $d0

    res 7, b                                      ; $727b: $cb $b8
    xor e                                         ; $727d: $ab
    ld l, c                                       ; $727e: $69
    inc c                                         ; $727f: $0c
    inc de                                        ; $7280: $13
    cp h                                          ; $7281: $bc
    add [hl]                                      ; $7282: $86
    jr nc, @-$51                                  ; $7283: $30 $ad

    rra                                           ; $7285: $1f
    ld h, e                                       ; $7286: $63
    ld [hl], d                                    ; $7287: $72
    rst $10                                       ; $7288: $d7
    xor d                                         ; $7289: $aa
    ld [hl+], a                                   ; $728a: $22
    dec c                                         ; $728b: $0d
    jp c, $ff71                                   ; $728c: $da $71 $ff

    pop af                                        ; $728f: $f1
    ld d, d                                       ; $7290: $52
    or b                                          ; $7291: $b0
    or $bb                                        ; $7292: $f6 $bb
    cp a                                          ; $7294: $bf
    ld [hl], h                                    ; $7295: $74
    push bc                                       ; $7296: $c5
    cp l                                          ; $7297: $bd
    ld e, $d0                                     ; $7298: $1e $d0
    ld e, d                                       ; $729a: $5a
    jr z, @-$39                                   ; $729b: $28 $c5

    pop de                                        ; $729d: $d1
    adc [hl]                                      ; $729e: $8e
    ld [hl], $3e                                  ; $729f: $36 $3e
    ld c, d                                       ; $72a1: $4a
    sbc a                                         ; $72a2: $9f
    add $38                                       ; $72a3: $c6 $38
    cpl                                           ; $72a5: $2f
    ccf                                           ; $72a6: $3f
    ld e, [hl]                                    ; $72a7: $5e
    dec de                                        ; $72a8: $1b
    add h                                         ; $72a9: $84
    ld bc, $1547                                  ; $72aa: $01 $47 $15
    xor $bc                                       ; $72ad: $ee $bc
    xor b                                         ; $72af: $a8
    rst $08                                       ; $72b0: $cf
    cp $8f                                        ; $72b1: $fe $8f
    or b                                          ; $72b3: $b0
    or $bb                                        ; $72b4: $f6 $bb
    cp a                                          ; $72b6: $bf
    and b                                         ; $72b7: $a0
    ld e, c                                       ; $72b8: $59
    and $e5                                       ; $72b9: $e6 $e5
    ld d, d                                       ; $72bb: $52
    ld a, l                                       ; $72bc: $7d
    sub [hl]                                      ; $72bd: $96
    ld d, l                                       ; $72be: $55
    ld c, d                                       ; $72bf: $4a
    sub e                                         ; $72c0: $93
    rrca                                          ; $72c1: $0f
    ccf                                           ; $72c2: $3f
    ld l, h                                       ; $72c3: $6c
    cp a                                          ; $72c4: $bf
    call z, $85cb                                 ; $72c5: $cc $cb $85
    ld b, c                                       ; $72c8: $41
    rst $20                                       ; $72c9: $e7
    ld h, e                                       ; $72ca: $63
    db $e4                                        ; $72cb: $e4
    adc $33                                       ; $72cc: $ce $33
    ld de, $9606                                  ; $72ce: $11 $06 $96
    reti                                          ; $72d1: $d9


    ld l, c                                       ; $72d2: $69
    adc b                                         ; $72d3: $88
    call $afcb                                    ; $72d4: $cd $cb $af

jr_021_72d7:
    ld c, d                                       ; $72d7: $4a
    ld b, e                                       ; $72d8: $43
    cp $d2                                        ; $72d9: $fe $d2
    ld [hl], a                                    ; $72db: $77
    ld h, l                                       ; $72dc: $65
    inc b                                         ; $72dd: $04
    ld a, [hl]                                    ; $72de: $7e
    db $ed                                        ; $72df: $ed
    call z, $c23a                                 ; $72e0: $cc $3a $c2
    dec a                                         ; $72e3: $3d
    set 1, e                                      ; $72e4: $cb $cb
    ld e, e                                       ; $72e6: $5b
    ld e, a                                       ; $72e7: $5f
    add $2e                                       ; $72e8: $c6 $2e
    ld e, e                                       ; $72ea: $5b
    sub e                                         ; $72eb: $93
    ld h, [hl]                                    ; $72ec: $66
    or $25                                        ; $72ed: $f6 $25
    ld [hl], $2f                                  ; $72ef: $36 $2f
    rla                                           ; $72f1: $17
    cp d                                          ; $72f2: $ba

Jump_021_72f3:
    ld h, d                                       ; $72f3: $62
    db $dd                                        ; $72f4: $dd
    rst $38                                       ; $72f5: $ff
    xor l                                         ; $72f6: $ad
    rrca                                          ; $72f7: $0f
    dec hl                                        ; $72f8: $2b
    jp z, Jump_000_2e56                           ; $72f9: $ca $56 $2e

    ld h, e                                       ; $72fc: $63
    ld c, a                                       ; $72fd: $4f
    cp e                                          ; $72fe: $bb
    cp [hl]                                       ; $72ff: $be
    ld c, e                                       ; $7300: $4b
    di                                            ; $7301: $f3
    ld a, [c]                                     ; $7302: $f2
    dec sp                                        ; $7303: $3b
    reti                                          ; $7304: $d9


    inc b                                         ; $7305: $04
    ld b, c                                       ; $7306: $41
    db $fc                                        ; $7307: $fc
    or l                                          ; $7308: $b5
    cp b                                          ; $7309: $b8
    ld h, c                                       ; $730a: $61
    rst $30                                       ; $730b: $f7
    ld h, c                                       ; $730c: $61
    ld d, l                                       ; $730d: $55
    ld d, h                                       ; $730e: $54
    nop                                           ; $730f: $00
    ret                                           ; $7310: $c9


    inc c                                         ; $7311: $0c
    ld de, $9606                                  ; $7312: $11 $06 $96
    add l                                         ; $7315: $85
    scf                                           ; $7316: $37
    jr z, jr_021_72d7                             ; $7317: $28 $be

    and d                                         ; $7319: $a2
    sub $5f                                       ; $731a: $d6 $5f
    sbc l                                         ; $731c: $9d
    sub d                                         ; $731d: $92
    and a                                         ; $731e: $a7
    ld e, l                                       ; $731f: $5d
    rra                                           ; $7320: $1f
    xor a                                         ; $7321: $af
    or b                                          ; $7322: $b0
    xor $ff                                       ; $7323: $ee $ff
    sub $07                                       ; $7325: $d6 $07
    or h                                          ; $7327: $b4
    cp $0f                                        ; $7328: $fe $0f
    ld e, d                                       ; $732a: $5a
    ld c, c                                       ; $732b: $49
    inc bc                                        ; $732c: $03
    cp a                                          ; $732d: $bf
    ld c, [hl]                                    ; $732e: $4e
    ld e, [hl]                                    ; $732f: $5e
    ld [hl], d                                    ; $7330: $72
    sbc b                                         ; $7331: $98
    rst $20                                       ; $7332: $e7
    adc [hl]                                      ; $7333: $8e
    sub a                                         ; $7334: $97
    add $b6                                       ; $7335: $c6 $b6
    cpl                                           ; $7337: $2f
    or c                                          ; $7338: $b1
    sub h                                         ; $7339: $94
    or l                                          ; $733a: $b5
    cp a                                          ; $733b: $bf
    ld d, d                                       ; $733c: $52
    inc bc                                        ; $733d: $03
    cp a                                          ; $733e: $bf
    ld h, $cd                                     ; $733f: $26 $cd
    db $e4                                        ; $7341: $e4
    xor e                                         ; $7342: $ab
    or h                                          ; $7343: $b4
    cp [hl]                                       ; $7344: $be
    inc a                                         ; $7345: $3c
    sbc e                                         ; $7346: $9b
    ld [de], a                                    ; $7347: $12
    sbc e                                         ; $7348: $9b
    cp h                                          ; $7349: $bc
    dec de                                        ; $734a: $1b
    and c                                         ; $734b: $a1
    ld h, a                                       ; $734c: $67
    inc bc                                        ; $734d: $03
    rst $08                                       ; $734e: $cf

jr_021_734f:
    ld hl, sp-$4c                                 ; $734f: $f8 $b4
    ld a, b                                       ; $7351: $78
    db $db                                        ; $7352: $db
    and d                                         ; $7353: $a2
    jp nc, Jump_000_23ac                          ; $7354: $d2 $ac $23

    reti                                          ; $7357: $d9


    ld a, c                                       ; $7358: $79
    pop af                                        ; $7359: $f1
    ld b, $ed                                     ; $735a: $06 $ed
    ld hl, sp+$5c                                 ; $735c: $f8 $5c
    ld e, e                                       ; $735e: $5b
    xor e                                         ; $735f: $ab
    ld a, [$773c]                                 ; $7360: $fa $3c $77
    call z, Call_021_4fdb                         ; $7363: $cc $db $4f
    ldh a, [$3b]                                  ; $7366: $f0 $3b
    ld a, [hl+]                                   ; $7368: $2a
    ret nc                                        ; $7369: $d0

    ld c, e                                       ; $736a: $4b
    ldh [$3b], a                                  ; $736b: $e0 $3b
    ld b, [hl]                                    ; $736d: $46
    and l                                         ; $736e: $a5
    cp [hl]                                       ; $736f: $be
    and e                                         ; $7370: $a3
    call nz, Call_021_5561                        ; $7371: $c4 $61 $55
    ld d, h                                       ; $7374: $54
    add b                                         ; $7375: $80
    ld a, c                                       ; $7376: $79
    xor [hl]                                      ; $7377: $ae
    jp z, Jump_000_13b0                           ; $7378: $ca $b0 $13

    rst $18                                       ; $737b: $df
    ld a, a                                       ; $737c: $7f
    ld c, l                                       ; $737d: $4d
    ld a, [de]                                    ; $737e: $1a
    sbc c                                         ; $737f: $99
    ld [bc], a                                    ; $7380: $02
    call c, $c280                                 ; $7381: $dc $80 $c2
    daa                                           ; $7384: $27
    ld b, a                                       ; $7385: $47
    jr jr_021_734f                                ; $7386: $18 $c7

    db $fd                                        ; $7388: $fd
    rst $00                                       ; $7389: $c7
    ld c, e                                       ; $738a: $4b
    pop bc                                        ; $738b: $c1
    jp c, $feef                                   ; $738c: $da $ef $fe

    jp nz, $ab5d                                  ; $738f: $c2 $5d $ab

    adc d                                         ; $7392: $8a
    inc [hl]                                      ; $7393: $34
    ld e, l                                       ; $7394: $5d
    ld sp, $1ebd                                  ; $7395: $31 $bd $1e
    cp b                                          ; $7398: $b8
    or e                                          ; $7399: $b3
    call z, Call_021_434e                         ; $739a: $cc $4e $43
    ld l, h                                       ; $739d: $6c
    ld e, [hl]                                    ; $739e: $5e
    ld a, [hl]                                    ; $739f: $7e
    ld d, l                                       ; $73a0: $55
    ld a, [de]                                    ; $73a1: $1a
    ld a, [c]                                     ; $73a2: $f2
    sub a                                         ; $73a3: $97
    cp [hl]                                       ; $73a4: $be
    dec hl                                        ; $73a5: $2b
    inc hl                                        ; $73a6: $23
    ldh a, [$bb]                                  ; $73a7: $f0 $bb
    inc b                                         ; $73a9: $04
    ld l, $a6                                     ; $73aa: $2e $a6
    ld a, [c]                                     ; $73ac: $f2
    sbc e                                         ; $73ad: $9b
    add h                                         ; $73ae: $84
    jr nc, @+$3f                                  ; $73af: $30 $3d

    ccf                                           ; $73b1: $3f
    add $b1                                       ; $73b2: $c6 $b1
    and h                                         ; $73b4: $a4
    rst $20                                       ; $73b5: $e7
    xor [hl]                                      ; $73b6: $ae
    ld d, l                                       ; $73b7: $55
    ld b, l                                       ; $73b8: $45
    ld a, [de]                                    ; $73b9: $1a
    or h                                          ; $73ba: $b4
    sub e                                         ; $73bb: $93
    sub l                                         ; $73bc: $95
    ld l, c                                       ; $73bd: $69
    cp b                                          ; $73be: $b8
    xor $97                                       ; $73bf: $ee $97
    xor d                                         ; $73c1: $aa
    rra                                           ; $73c2: $1f
    ld a, a                                       ; $73c3: $7f
    ld h, e                                       ; $73c4: $63
    ld e, h                                       ; $73c5: $5c
    ei                                            ; $73c6: $fb
    ld d, a                                       ; $73c7: $57
    or h                                          ; $73c8: $b4
    db $d3                                        ; $73c9: $d3
    ld l, c                                       ; $73ca: $69

Jump_021_73cb:
    and $b9                                       ; $73cb: $e6 $b9
    and d                                         ; $73cd: $a2
    sub $9f                                       ; $73ce: $d6 $9f

jr_021_73d0:
    rla                                           ; $73d0: $17
    push af                                       ; $73d1: $f5
    or l                                          ; $73d2: $b5
    inc sp                                        ; $73d3: $33
    db $eb                                        ; $73d4: $eb
    ld l, e                                       ; $73d5: $6b
    ld l, e                                       ; $73d6: $6b
    ld d, l                                       ; $73d7: $55
    ld e, a                                       ; $73d8: $5f
    jp nc, $fcbc                                  ; $73d9: $d2 $bc $fc

    and b                                         ; $73dc: $a0
    ld a, h                                       ; $73dd: $7c
    or h                                          ; $73de: $b4
    ld a, $20                                     ; $73df: $3e $20
    inc c                                         ; $73e1: $0c
    xor l                                         ; $73e2: $ad
    ld a, [hl+]                                   ; $73e3: $2a
    jp nc, $d974                                  ; $73e4: $d2 $74 $d9

    add hl, hl                                    ; $73e7: $29
    cp c                                          ; $73e8: $b9
    jr nc, jr_021_73d0                            ; $73e9: $30 $e5

    ld d, a                                       ; $73eb: $57
    ld a, [$7d2e]                                 ; $73ec: $fa $2e $7d
    sub a                                         ; $73ef: $97
    and h                                         ; $73f0: $a4
    ld a, [$80a5]                                 ; $73f1: $fa $a5 $80
    dec sp                                        ; $73f4: $3b
    set 4, b                                      ; $73f5: $cb $e0
    rra                                           ; $73f7: $1f
    ld h, c                                       ; $73f8: $61
    sub [hl]                                      ; $73f9: $96
    reti                                          ; $73fa: $d9


    ld l, c                                       ; $73fb: $69
    adc b                                         ; $73fc: $88
    call Call_021_4fcb                            ; $73fd: $cd $cb $4f
    ld l, [hl]                                    ; $7400: $6e
    ld d, b                                       ; $7401: $50
    ld a, h                                       ; $7402: $7c
    db $ed                                        ; $7403: $ed
    call z, $f8fa                                 ; $7404: $cc $fa $f8
    db $eb                                        ; $7407: $eb
    ld h, l                                       ; $7408: $65
    ld e, [hl]                                    ; $7409: $5e
    ld a, [hl]                                    ; $740a: $7e
    ld [hl], d                                    ; $740b: $72
    add e                                         ; $740c: $83
    ld [c], a                                     ; $740d: $e2
    xor e                                         ; $740e: $ab
    jp nc, $bf90                                  ; $740f: $d2 $90 $bf

    db $f4                                        ; $7412: $f4
    ld e, l                                       ; $7413: $5d
    add hl, de                                    ; $7414: $19
    add c                                         ; $7415: $81
    ld b, a                                       ; $7416: $47
    ld [$b129], sp                                ; $7417: $08 $29 $b1
    ld e, c                                       ; $741a: $59
    ld h, $ef                                     ; $741b: $26 $ef
    ld b, [hl]                                    ; $741d: $46
    add sp, -$27                                  ; $741e: $e8 $d9
    xor [hl]                                      ; $7420: $ae
    rst $08                                       ; $7421: $cf
    ld [hl], e                                    ; $7422: $73
    ld e, [hl]                                    ; $7423: $5e
    ld a, [hl]                                    ; $7424: $7e
    pop af                                        ; $7425: $f1
    or [hl]                                       ; $7426: $b6
    ld b, l                                       ; $7427: $45
    and l                                         ; $7428: $a5
    ld b, c                                       ; $7429: $41
    jr @-$37                                      ; $742a: $18 $c7

    ld [hl], d                                    ; $742c: $72
    xor b                                         ; $742d: $a8
    ld a, $c6                                     ; $742e: $3e $c6
    daa                                           ; $7430: $27
    rra                                           ; $7431: $1f
    rst $18                                       ; $7432: $df
    scf                                           ; $7433: $37
    rst $18                                       ; $7434: $df
    scf                                           ; $7435: $37
    sbc a                                         ; $7436: $9f
    ld d, d                                       ; $7437: $52
    rst $20                                       ; $7438: $e7
    xor [hl]                                      ; $7439: $ae
    ld d, l                                       ; $743a: $55
    ld b, l                                       ; $743b: $45
    ld a, [de]                                    ; $743c: $1a
    xor $ce                                       ; $743d: $ee $ce
    inc sp                                        ; $743f: $33
    ldh [$e3], a                                  ; $7440: $e0 $e3
    adc e                                         ; $7442: $8b
    ld a, [$7b2c]                                 ; $7443: $fa $2c $7b
    ld c, $9d                                     ; $7446: $0e $9d
    xor a                                         ; $7448: $af
    db $fc                                        ; $7449: $fc
    add hl, de                                    ; $744a: $19
    ld e, d                                       ; $744b: $5a

jr_021_744c:
    ld a, a                                       ; $744c: $7f
    db $fd                                        ; $744d: $fd
    xor [hl]                                      ; $744e: $ae
    and h                                         ; $744f: $a4
    add c                                         ; $7450: $81
    ld e, a                                       ; $7451: $5f
    daa                                           ; $7452: $27
    cpl                                           ; $7453: $2f
    add hl, sp                                    ; $7454: $39
    call z, $c773                                 ; $7455: $cc $73 $c7
    ld c, e                                       ; $7458: $4b
    rst $18                                       ; $7459: $df
    rst $00                                       ; $745a: $c7
    ld c, e                                       ; $745b: $4b
    rst $18                                       ; $745c: $df
    rst $00                                       ; $745d: $c7
    ld c, e                                       ; $745e: $4b
    ld h, e                                       ; $745f: $63
    db $db                                        ; $7460: $db
    sub a                                         ; $7461: $97
    ld e, b                                       ; $7462: $58
    ld a, [bc]                                    ; $7463: $0a
    jp nz, $d996                                  ; $7464: $c2 $96 $d9

    ld l, c                                       ; $7467: $69
    adc b                                         ; $7468: $88
    call Call_021_4fcb                            ; $7469: $cd $cb $4f
    ld l, [hl]                                    ; $746c: $6e
    ld d, b                                       ; $746d: $50
    ld a, h                                       ; $746e: $7c
    db $ed                                        ; $746f: $ed
    call z, $f8fa                                 ; $7470: $cc $fa $f8
    db $eb                                        ; $7473: $eb
    ld h, l                                       ; $7474: $65
    ld e, [hl]                                    ; $7475: $5e
    ld a, [hl]                                    ; $7476: $7e
    ld [hl], d                                    ; $7477: $72
    add e                                         ; $7478: $83
    ld [c], a                                     ; $7479: $e2
    xor e                                         ; $747a: $ab
    jp nc, $bf90                                  ; $747b: $d2 $90 $bf

    db $f4                                        ; $747e: $f4
    ld e, l                                       ; $747f: $5d
    add hl, de                                    ; $7480: $19
    add c                                         ; $7481: $81
    ld b, a                                       ; $7482: $47
    jr jr_021_744c                                ; $7483: $18 $c7

    ld [hl], d                                    ; $7485: $72
    xor b                                         ; $7486: $a8
    ld a, $c6                                     ; $7487: $3e $c6
    daa                                           ; $7489: $27
    rra                                           ; $748a: $1f
    rst $18                                       ; $748b: $df
    scf                                           ; $748c: $37
    rst $18                                       ; $748d: $df
    scf                                           ; $748e: $37
    sbc a                                         ; $748f: $9f
    ld d, d                                       ; $7490: $52
    rst $20                                       ; $7491: $e7
    xor [hl]                                      ; $7492: $ae
    ld d, l                                       ; $7493: $55
    ld b, l                                       ; $7494: $45
    ld a, [de]                                    ; $7495: $1a

jr_021_7496:
    xor $ce                                       ; $7496: $ee $ce
    inc sp                                        ; $7498: $33
    ldh [$e3], a                                  ; $7499: $e0 $e3
    adc e                                         ; $749b: $8b
    ld a, [$7b2c]                                 ; $749c: $fa $2c $7b
    ld c, $9d                                     ; $749f: $0e $9d
    xor a                                         ; $74a1: $af
    db $fc                                        ; $74a2: $fc
    add hl, de                                    ; $74a3: $19
    ld e, d                                       ; $74a4: $5a
    ld a, a                                       ; $74a5: $7f
    db $fd                                        ; $74a6: $fd
    xor [hl]                                      ; $74a7: $ae
    and h                                         ; $74a8: $a4
    add c                                         ; $74a9: $81
    ld e, a                                       ; $74aa: $5f
    daa                                           ; $74ab: $27
    cpl                                           ; $74ac: $2f
    add hl, sp                                    ; $74ad: $39
    call z, $c773                                 ; $74ae: $cc $73 $c7
    ld c, e                                       ; $74b1: $4b
    rst $18                                       ; $74b2: $df
    rst $00                                       ; $74b3: $c7
    ld c, e                                       ; $74b4: $4b
    rst $18                                       ; $74b5: $df
    rst $00                                       ; $74b6: $c7
    ld c, e                                       ; $74b7: $4b
    ld h, e                                       ; $74b8: $63
    db $db                                        ; $74b9: $db
    sub a                                         ; $74ba: $97
    ld e, b                                       ; $74bb: $58
    ld a, [bc]                                    ; $74bc: $0a
    jp c, $d7f1                                   ; $74bd: $da $f1 $d7

    ld a, [$7f0b]                                 ; $74c0: $fa $0b $7f
    ld e, [hl]                                    ; $74c3: $5e
    ld a, [hl]                                    ; $74c4: $7e
    db $ed                                        ; $74c5: $ed
    cp [hl]                                       ; $74c6: $be
    db $db                                        ; $74c7: $db
    ld a, l                                       ; $74c8: $7d
    or a                                          ; $74c9: $b7
    inc sp                                        ; $74ca: $33
    db $eb                                        ; $74cb: $eb
    ld d, e                                       ; $74cc: $53
    ld h, d                                       ; $74cd: $62
    or e                                          ; $74ce: $b3

Jump_021_74cf:
    call nc, $9c62                                ; $74cf: $d4 $62 $9c
    cp h                                          ; $74d2: $bc
    dec de                                        ; $74d3: $1b
    and c                                         ; $74d4: $a1
    ld e, l                                       ; $74d5: $5d
    sbc a                                         ; $74d6: $9f
    rst $20                                       ; $74d7: $e7
    ld c, [hl]                                    ; $74d8: $4e

Jump_021_74d9:
    ld d, [hl]                                    ; $74d9: $56
    and [hl]                                      ; $74da: $a6
    pop hl                                        ; $74db: $e1
    cp d                                          ; $74dc: $ba
    ld e, a                                       ; $74dd: $5f
    xor d                                         ; $74de: $aa
    ld e, $61                                     ; $74df: $1e $61
    xor l                                         ; $74e1: $ad
    cpl                                           ; $74e2: $2f
    cp a                                          ; $74e3: $bf
    db $eb                                        ; $74e4: $eb
    cp e                                          ; $74e5: $bb
    add b                                         ; $74e6: $80
    jr nc, jr_021_7496                            ; $74e7: $30 $ad

    ret                                           ; $74e9: $c9


    rst $28                                       ; $74ea: $ef
    jp nz, $349a                                  ; $74eb: $c2 $9a $34

    or d                                          ; $74ee: $b2
    adc [hl]                                      ; $74ef: $8e
    db $f4                                        ; $74f0: $f4
    db $dd                                        ; $74f1: $dd
    sub c                                         ; $74f2: $91
    cp [hl]                                       ; $74f3: $be
    dec sp                                        ; $74f4: $3b
    sub d                                         ; $74f5: $92
    rst $20                                       ; $74f6: $e7
    ld a, l                                       ; $74f7: $7d
    push hl                                       ; $74f8: $e5
    xor e                                         ; $74f9: $ab
    ld [hl-], a                                   ; $74fa: $32
    cp h                                          ; $74fb: $bc
    inc d                                         ; $74fc: $14
    ld [hl], b                                    ; $74fd: $70
    rst $10                                       ; $74fe: $d7
    xor d                                         ; $74ff: $aa
    ld [hl+], a                                   ; $7500: $22
    ld c, l                                       ; $7501: $4d
    ld d, a                                       ; $7502: $57
    inc c                                         ; $7503: $0c
    dec l                                         ; $7504: $2d
    sub h                                         ; $7505: $94
    ld [c], a                                     ; $7506: $e2
    call c, $5569                                 ; $7507: $dc $69 $55
    ld [hl-], a                                   ; $750a: $32
    ld de, $1842                                  ; $750b: $11 $42 $18
    ld b, a                                       ; $750e: $47
    ccf                                           ; $750f: $3f
    ld hl, sp-$7e                                 ; $7510: $f8 $82
    cp [hl]                                       ; $7512: $be
    add e                                         ; $7513: $83
    cp [hl]                                       ; $7514: $be
    add e                                         ; $7515: $83
    rst $30                                       ; $7516: $f7
    or l                                          ; $7517: $b5
    or l                                          ; $7518: $b5
    xor d                                         ; $7519: $aa
    rst $08                                       ; $751a: $cf
    ld [hl], e                                    ; $751b: $73
    rst $10                                       ; $751c: $d7
    cp c                                          ; $751d: $b9
    ld l, e                                       ; $751e: $6b
    ld d, l                                       ; $751f: $55
    sub c                                         ; $7520: $91
    ld b, $61                                     ; $7521: $06 $61
    cp l                                          ; $7523: $bd
    jp nc, $acd4                                  ; $7524: $d2 $d4 $ac

    cp a                                          ; $7527: $bf
    ld c, e                                       ; $7528: $4b
    cp $22                                        ; $7529: $fe $22
    and [hl]                                      ; $752b: $a6
    db $e3                                        ; $752c: $e3
    rst $08                                       ; $752d: $cf
    and [hl]                                      ; $752e: $a6
    xor e                                         ; $752f: $ab
    and d                                         ; $7530: $a2
    ld [bc], a                                    ; $7531: $02
    db $ec                                        ; $7532: $ec
    jp nc, Jump_000_01e0                          ; $7533: $d2 $e0 $01

    ld l, [hl]                                    ; $7536: $6e
    ld d, d                                       ; $7537: $52
    sub a                                         ; $7538: $97
    push af                                       ; $7539: $f5
    jr z, @-$14                                   ; $753a: $28 $ea

    dec [hl]                                      ; $753c: $35
    sbc b                                         ; $753d: $98
    xor $a0                                       ; $753e: $ee $a0
    or l                                          ; $7540: $b5
    and [hl]                                      ; $7541: $a6
    add c                                         ; $7542: $81
    ld e, a                                       ; $7543: $5f
    rst $30                                       ; $7544: $f7
    cp h                                          ; $7545: $bc
    db $e4                                        ; $7546: $e4
    db $eb                                        ; $7547: $eb
    cp $a4                                        ; $7548: $fe $a4
    pop de                                        ; $754a: $d1
    sbc e                                         ; $754b: $9b
    ld l, $18                                     ; $754c: $2e $18
    ld [$31a1], sp                                ; $754e: $08 $a1 $31
    inc hl                                        ; $7551: $23
    sub a                                         ; $7552: $97
    add d                                         ; $7553: $82
    ld a, c                                       ; $7554: $79
    ld sp, hl                                     ; $7555: $f9
    pop af                                        ; $7556: $f1
    scf                                           ; $7557: $37
    or d                                          ; $7558: $b2
    ld c, d                                       ; $7559: $4a
    ld a, l                                       ; $755a: $7d
    rst $00                                       ; $755b: $c7
    xor e                                         ; $755c: $ab
    inc b                                         ; $755d: $04
    reti                                          ; $755e: $d9


    call nz, $8b5f                                ; $755f: $c4 $5f $8b
    res 5, l                                      ; $7562: $cb $ad
    rst $38                                       ; $7564: $ff
    jp nc, Jump_021_7f5e                          ; $7565: $d2 $5e $7f

    add a                                         ; $7568: $87
    push af                                       ; $7569: $f5
    rst $10                                       ; $756a: $d7
    rra                                           ; $756b: $1f
    ld [hl], a                                    ; $756c: $77
    ld e, [hl]                                    ; $756d: $5e
    ld a, [hl]                                    ; $756e: $7e
    db $fc                                        ; $756f: $fc
    adc l                                         ; $7570: $8d
    xor h                                         ; $7571: $ac
    ld d, d                                       ; $7572: $52
    add a                                         ; $7573: $87
    pop af                                        ; $7574: $f1
    cpl                                           ; $7575: $2f
    ccf                                           ; $7576: $3f
    cp $12                                        ; $7577: $fe $12
    ld e, l                                       ; $7579: $5d
    ld a, [bc]                                    ; $757a: $0a
    add $97                                       ; $757b: $c6 $97
    daa                                           ; $757d: $27
    add h                                         ; $757e: $84
    db $10                                        ; $757f: $10
    ld b, $dd                                     ; $7580: $06 $dd
    db $e3                                        ; $7582: $e3
    dec hl                                        ; $7583: $2b
    db $fc                                        ; $7584: $fc
    sbc [hl]                                      ; $7585: $9e
    adc $cb                                       ; $7586: $ce $cb
    ld h, [hl]                                    ; $7588: $66
    ld e, [hl]                                    ; $7589: $5e
    ld a, [hl]                                    ; $758a: $7e
    rlca                                          ; $758b: $07
    xor l                                         ; $758c: $ad
    dec [hl]                                      ; $758d: $35
    dec c                                         ; $758e: $0d
    db $fc                                        ; $758f: $fc
    cp d                                          ; $7590: $ba
    rst $20                                       ; $7591: $e7
    dec h                                         ; $7592: $25
    ld e, a                                       ; $7593: $5f
    rst $20                                       ; $7594: $e7
    ld c, c                                       ; $7595: $49
    and e                                         ; $7596: $a3
    scf                                           ; $7597: $37
    ld l, e                                       ; $7598: $6b

Jump_021_7599:
    jp nc, $acd4                                  ; $7599: $d2 $d4 $ac

    cp a                                          ; $759c: $bf
    ld d, a                                       ; $759d: $57
    and c                                         ; $759e: $a1
    ld h, a                                       ; $759f: $67
    or e                                          ; $75a0: $b3
    ld d, e                                       ; $75a1: $53
    halt                                          ; $75a2: $76
    ret                                           ; $75a3: $c9


    ld e, a                                       ; $75a4: $5f
    call nz, $fc74                                ; $75a5: $c4 $74 $fc
    ld d, d                                       ; $75a8: $52
    or b                                          ; $75a9: $b0
    or b                                          ; $75aa: $b0
    ld e, c                                       ; $75ab: $59
    dec d                                         ; $75ac: $15
    dec d                                         ; $75ad: $15
    add b                                         ; $75ae: $80
    cp e                                          ; $75af: $bb
    xor $e9                                       ; $75b0: $ee $e9
    cp $d2                                        ; $75b2: $fe $d2
    dec b                                         ; $75b4: $05
    inc bc                                        ; $75b5: $03
    rlca                                          ; $75b6: $07
    xor l                                         ; $75b7: $ad
    dec [hl]                                      ; $75b8: $35
    dec c                                         ; $75b9: $0d
    db $fc                                        ; $75ba: $fc
    cp d                                          ; $75bb: $ba
    rst $20                                       ; $75bc: $e7
    dec h                                         ; $75bd: $25
    ld e, a                                       ; $75be: $5f
    rst $20                                       ; $75bf: $e7
    ld c, c                                       ; $75c0: $49
    and e                                         ; $75c1: $a3
    scf                                           ; $75c2: $37
    call c, Call_000_2c9d                         ; $75c3: $dc $9d $2c
    ld l, b                                       ; $75c6: $68
    db $dd                                        ; $75c7: $dd
    db $d3                                        ; $75c8: $d3
    db $fd                                        ; $75c9: $fd
    add l                                         ; $75ca: $85
    dec sp                                        ; $75cb: $3b
    dec sp                                        ; $75cc: $3b
    ld h, l                                       ; $75cd: $65
    ld d, c                                       ; $75ce: $51
    adc c                                         ; $75cf: $89
    ld e, l                                       ; $75d0: $5d
    ld a, [bc]                                    ; $75d1: $0a
    sub [hl]                                      ; $75d2: $96
    or h                                          ; $75d3: $b4
    or b                                          ; $75d4: $b0
    sbc c                                         ; $75d5: $99
    ld a, l                                       ; $75d6: $7d
    ccf                                           ; $75d7: $3f
    or d                                          ; $75d8: $b2
    ld l, $18                                     ; $75d9: $2e $18
    dec l                                         ; $75db: $2d
    jp c, Jump_021_7cac                           ; $75dc: $da $ac $7c

    adc h                                         ; $75df: $8c
    add hl, sp                                    ; $75e0: $39
    rst $08                                       ; $75e1: $cf
    or l                                          ; $75e2: $b5
    xor d                                         ; $75e3: $aa
    ld c, b                                       ; $75e4: $48
    jp Jump_021_5bdd                              ; $75e5: $c3 $dd $5b


    ld e, a                                       ; $75e8: $5f
    sbc d                                         ; $75e9: $9a
    and h                                         ; $75ea: $a4
    ld b, a                                       ; $75eb: $47
    ld l, e                                       ; $75ec: $6b
    pop de                                        ; $75ed: $d1
    ld h, [hl]                                    ; $75ee: $66
    ld b, c                                       ; $75ef: $41
    ld h, $6b                                     ; $75f0: $26 $6b
    scf                                           ; $75f2: $37
    ccf                                           ; $75f3: $3f
    rst $08                                       ; $75f4: $cf
    dec e                                         ; $75f5: $1d
    or h                                          ; $75f6: $b4
    sub d                                         ; $75f7: $92
    ld b, $7e                                     ; $75f8: $06 $7e
    sbc l                                         ; $75fa: $9d
    cp h                                          ; $75fb: $bc
    db $e4                                        ; $75fc: $e4
    ret nz                                        ; $75fd: $c0

    ld e, l                                       ; $75fe: $5d
    xor e                                         ; $75ff: $ab
    adc d                                         ; $7600: $8a
    inc [hl]                                      ; $7601: $34
    call c, Call_000_29d9                         ; $7602: $dc $d9 $29
    cp e                                          ; $7605: $bb
    db $e4                                        ; $7606: $e4
    cpl                                           ; $7607: $2f
    ld h, d                                       ; $7608: $62
    ld a, [hl-]                                   ; $7609: $3a
    ld a, [hl]                                    ; $760a: $7e
    add hl, hl                                    ; $760b: $29
    ld e, b                                       ; $760c: $58
    dec d                                         ; $760d: $15
    dec d                                         ; $760e: $15
    nop                                           ; $760f: $00
    ld h, c                                       ; $7610: $61
    cp l                                          ; $7611: $bd
    jp nc, Jump_021_662c                          ; $7612: $d2 $2c $66

    sub $57                                       ; $7615: $d6 $57
    cp a                                          ; $7617: $bf
    call nz, $f696                                ; $7618: $c4 $96 $f6
    ld [bc], a                                    ; $761b: $02
    ld sp, hl                                     ; $761c: $f9
    daa                                           ; $761d: $27
    xor $5a                                       ; $761e: $ee $5a
    ld d, l                                       ; $7620: $55
    and h                                         ; $7621: $a4
    ld b, c                                       ; $7622: $41
    jr jr_021_766c                                ; $7623: $18 $47

    ret                                           ; $7625: $c9


    xor a                                         ; $7626: $af
    ld c, c                                       ; $7627: $49
    or e                                          ; $7628: $b3
    xor h                                         ; $7629: $ac
    ld [hl], e                                    ; $762a: $73
    rst $10                                       ; $762b: $d7
    xor d                                         ; $762c: $aa
    ld [hl+], a                                   ; $762d: $22
    ld c, l                                       ; $762e: $4d
    ld d, a                                       ; $762f: $57
    inc c                                         ; $7630: $0c
    cp l                                          ; $7631: $bd
    jp nc, $2ac8                                  ; $7632: $d2 $c8 $2a

    inc hl                                        ; $7635: $23
    ldh a, [$bb]                                  ; $7636: $f0 $bb
    or b                                          ; $7638: $b0
    jr nz, @-$15                                  ; $7639: $20 $e9

    cp e                                          ; $763b: $bb
    ld h, b                                       ; $763c: $60
    ld b, a                                       ; $763d: $47
    ret                                           ; $763e: $c9


    ld d, e                                       ; $763f: $53
    call $a4d7                                    ; $7640: $cd $d7 $a4
    sbc c                                         ; $7643: $99
    db $fd                                        ; $7644: $fd
    rra                                           ; $7645: $1f
    cpl                                           ; $7646: $2f
    dec b                                         ; $7647: $05
    db $e3                                        ; $7648: $e3
    ccf                                           ; $7649: $3f
    ld b, [hl]                                    ; $764a: $46
    xor $5a                                       ; $764b: $ee $5a
    ld d, l                                       ; $764d: $55
    and h                                         ; $764e: $a4
    jp hl                                         ; $764f: $e9


    adc d                                         ; $7650: $8a
    ld bc, $1ebd                                  ; $7651: $01 $bd $1e
    cp b                                          ; $7654: $b8
    inc bc                                        ; $7655: $03
    cp d                                          ; $7656: $ba
    or [hl]                                       ; $7657: $b6
    dec e                                         ; $7658: $1d
    ld a, a                                       ; $7659: $7f
    ld b, b                                       ; $765a: $40
    add hl, hl                                    ; $765b: $29
    adc [hl]                                      ; $765c: $8e
    sub $fd                                       ; $765d: $d6 $fd
    rst $18                                       ; $765f: $df
    ld a, [$f3b0]                                 ; $7660: $fa $b0 $f3
    inc c                                         ; $7663: $0c
    ld hl, sp+$2a                                 ; $7664: $f8 $2a
    dec b                                         ; $7666: $05
    sbc a                                         ; $7667: $9f
    ld c, $3a                                     ; $7668: $0e $3a
    rra                                           ; $766a: $1f
    db $e3                                        ; $766b: $e3

jr_021_766c:
    sub d                                         ; $766c: $92
    ld d, $fe                                     ; $766d: $16 $fe
    sub h                                         ; $766f: $94
    ret c                                         ; $7670: $d8

    ld b, d                                       ; $7671: $42
    ld h, l                                       ; $7672: $65
    cp a                                          ; $7673: $bf
    ldh a, [rTAC]                                 ; $7674: $f0 $07
    or a                                          ; $7676: $b7
    xor d                                         ; $7677: $aa
    inc hl                                        ; $7678: $23
    inc c                                         ; $7679: $0c
    xor l                                         ; $767a: $ad
    cp a                                          ; $767b: $bf
    ld d, b                                       ; $767c: $50
    db $eb                                        ; $767d: $eb
    rrca                                          ; $767e: $0f
    ld a, e                                       ; $767f: $7b
    db $eb                                        ; $7680: $eb
    ld c, e                                       ; $7681: $4b
    sub e                                         ; $7682: $93
    db $f4                                        ; $7683: $f4
    add e                                         ; $7684: $83
    ld e, e                                       ; $7685: $5b
    push de                                       ; $7686: $d5
    pop de                                        ; $7687: $d1
    ld h, [hl]                                    ; $7688: $66
    pop af                                        ; $7689: $f1
    ld b, c                                       ; $768a: $41
    ld a, [de]                                    ; $768b: $1a
    ld h, d                                       ; $768c: $62
    or b                                          ; $768d: $b0
    ld a, b                                       ; $768e: $78
    db $eb                                        ; $768f: $eb
    ccf                                           ; $7690: $3f
    ld e, l                                       ; $7691: $5d
    ld h, l                                       ; $7692: $65
    inc b                                         ; $7693: $04
    ld a, [hl]                                    ; $7694: $7e
    sbc [hl]                                      ; $7695: $9e
    dec bc                                        ; $7696: $0b
    rra                                           ; $7697: $1f
    xor l                                         ; $7698: $ad
    ld d, a                                       ; $7699: $57
    sbc d                                         ; $769a: $9a
    ld b, c                                       ; $769b: $41
    ld c, c                                       ; $769c: $49
    inc de                                        ; $769d: $13
    reti                                          ; $769e: $d9


    ldh [$7f], a                                  ; $769f: $e0 $7f
    db $dd                                        ; $76a1: $dd
    dec h                                         ; $76a2: $25
    db $ed                                        ; $76a3: $ed
    rlca                                          ; $76a4: $07
    ld c, b                                       ; $76a5: $48
    reti                                          ; $76a6: $d9


    ld l, c                                       ; $76a7: $69
    and $8a                                       ; $76a8: $e6 $8a
    ld a, h                                       ; $76aa: $7c
    adc h                                         ; $76ab: $8c
    ld c, e                                       ; $76ac: $4b
    sbc d                                         ; $76ad: $9a
    sub a                                         ; $76ae: $97
    sbc a                                         ; $76af: $9f
    sub a                                         ; $76b0: $97
    dec hl                                        ; $76b1: $2b
    ld l, h                                       ; $76b2: $6c
    halt                                          ; $76b3: $76
    call z, $b414                                 ; $76b4: $cc $14 $b4
    sub $af                                       ; $76b7: $d6 $af
    pop bc                                        ; $76b9: $c1
    cp h                                          ; $76ba: $bc
    db $fc                                        ; $76bb: $fc
    ld a, [hl+]                                   ; $76bc: $2a
    inc hl                                        ; $76bd: $23
    ldh a, [$7b]                                  ; $76be: $f0 $7b
    ld c, $9d                                     ; $76c0: $0e $9d
    rla                                           ; $76c2: $17
    ld e, a                                       ; $76c3: $5f
    ld a, c                                       ; $76c4: $79
    ld a, c                                       ; $76c5: $79
    add h                                         ; $76c6: $84
    ld bc, $d2bd                                  ; $76c7: $01 $bd $d2
    inc c                                         ; $76ca: $0c
    ld c, d                                       ; $76cb: $4a
    sbc d                                         ; $76cc: $9a
    ret z                                         ; $76cd: $c8

    ld b, $ff                                     ; $76ce: $06 $ff
    db $eb                                        ; $76d0: $eb
    ld l, $69                                     ; $76d1: $2e $69
    ccf                                           ; $76d3: $3f
    ld b, b                                       ; $76d4: $40
    jp z, $334e                                   ; $76d5: $ca $4e $33

    ld d, a                                       ; $76d8: $57
    db $e4                                        ; $76d9: $e4
    ld h, e                                       ; $76da: $63
    ld e, h                                       ; $76db: $5c
    jp nc, $fcbc                                  ; $76dc: $d2 $bc $fc

    cp h                                          ; $76df: $bc
    ld e, h                                       ; $76e0: $5c
    ld h, c                                       ; $76e1: $61
    or e                                          ; $76e2: $b3
    ld h, e                                       ; $76e3: $63
    and [hl]                                      ; $76e4: $a6
    and b                                         ; $76e5: $a0
    or l                                          ; $76e6: $b5
    ld a, [hl]                                    ; $76e7: $7e
    dec c                                         ; $76e8: $0d
    and $e5                                       ; $76e9: $e6 $e5
    ld d, a                                       ; $76eb: $57
    add hl, de                                    ; $76ec: $19
    add c                                         ; $76ed: $81
    rst $18                                       ; $76ee: $df
    ld [hl], e                                    ; $76ef: $73
    add sp, -$44                                  ; $76f0: $e8 $bc
    ld hl, sp-$36                                 ; $76f2: $f8 $ca

jr_021_76f4:
    sla e                                         ; $76f4: $cb $23
    inc c                                         ; $76f6: $0c
    sub [hl]                                      ; $76f7: $96
    pop af                                        ; $76f8: $f1
    ld c, a                                       ; $76f9: $4f
    ld a, $cf                                     ; $76fa: $3e $cf
    ld d, l                                       ; $76fc: $55
    ld b, l                                       ; $76fd: $45
    dec h                                         ; $76fe: $25
    inc e                                         ; $76ff: $1c
    ld d, h                                       ; $7700: $54
    dec h                                         ; $7701: $25
    inc sp                                        ; $7702: $33
    adc [hl]                                      ; $7703: $8e
    cpl                                           ; $7704: $2f
    ld c, a                                       ; $7705: $4f
    or e                                          ; $7706: $b3
    adc h                                         ; $7707: $8c
    ld d, a                                       ; $7708: $57
    ld e, b                                       ; $7709: $58
    sub e                                         ; $770a: $93
    add [hl]                                      ; $770b: $86
    add d                                         ; $770c: $82
    rla                                           ; $770d: $17
    xor $da                                       ; $770e: $ee $da
    add $77                                       ; $7710: $c6 $77
    ld a, l                                       ; $7712: $7d
    cp h                                          ; $7713: $bc
    jp nz, $bd28                                  ; $7714: $c2 $28 $bd

    ld e, h                                       ; $7717: $5c
    ld a, [bc]                                    ; $7718: $0a
    ld d, $6f                                     ; $7719: $16 $6f
    db $fd                                        ; $771b: $fd
    rst $20                                       ; $771c: $e7
    push hl                                       ; $771d: $e5
    ld [bc], a                                    ; $771e: $02
    jp nz, Jump_021_6727                          ; $771f: $c2 $27 $67

    jr c, jr_021_76f4                             ; $7722: $38 $d0

    ld b, $66                                     ; $7724: $06 $66
    ld e, c                                       ; $7726: $59
    ld d, c                                       ; $7727: $51
    db $eb                                        ; $7728: $eb
    adc a                                         ; $7729: $8f
    call nc, Call_021_688d                        ; $772a: $d4 $8d $68
    ld e, h                                       ; $772d: $5c
    ld d, l                                       ; $772e: $55
    ld d, h                                       ; $772f: $54
    ld b, d                                       ; $7730: $42
    xor $da                                       ; $7731: $ee $da
    add $67                                       ; $7733: $c6 $67
    add hl, de                                    ; $7735: $19
    ld c, e                                       ; $7736: $4b
    xor d                                         ; $7737: $aa
    ld sp, hl                                     ; $7738: $f9
    cp h                                          ; $7739: $bc
    ld e, h                                       ; $773a: $5c
    xor d                                         ; $773b: $aa
    rst $08                                       ; $773c: $cf
    adc e                                         ; $773d: $8b
    ld a, d                                       ; $773e: $7a
    dec l                                         ; $773f: $2d
    add $95                                       ; $7740: $c6 $95
    adc a                                         ; $7742: $8f
    sbc l                                         ; $7743: $9d
    ld e, l                                       ; $7744: $5d
    sbc d                                         ; $7745: $9a
    sub a                                         ; $7746: $97
    dec bc                                        ; $7747: $0b
    xor e                                         ; $7748: $ab
    and d                                         ; $7749: $a2
    ld [bc], a                                    ; $774a: $02
    jr nz, jr_021_7759                            ; $774b: $20 $0c

    sub [hl]                                      ; $774d: $96
    pop bc                                        ; $774e: $c1
    rst $38                                       ; $774f: $ff
    sbc d                                         ; $7750: $9a
    inc [hl]                                      ; $7751: $34
    ld h, e                                       ; $7752: $63
    sub a                                         ; $7753: $97
    ld d, c                                       ; $7754: $51
    call $e067                                    ; $7755: $cd $67 $e0
    rst $20                                       ; $7758: $e7

jr_021_7759:
    push hl                                       ; $7759: $e5
    rst $10                                       ; $775a: $d7
    adc $ac                                       ; $775b: $ce $ac
    rst $08                                       ; $775d: $cf
    ld [hl], e                                    ; $775e: $73
    ld a, [c]                                     ; $775f: $f2
    ld h, c                                       ; $7760: $61
    ld e, d                                       ; $7761: $5a
    ld a, a                                       ; $7762: $7f
    ld c, l                                       ; $7763: $4d
    ld a, [de]                                    ; $7764: $1a
    ld e, c                                       ; $7765: $59
    ld h, l                                       ; $7766: $65
    inc b                                         ; $7767: $04
    ld e, $6d                                     ; $7768: $1e $6d
    sub [hl]                                      ; $776a: $96
    pop af                                        ; $776b: $f1
    scf                                           ; $776c: $37
    add $c9                                       ; $776d: $c6 $c9
    add a                                         ; $776f: $87
    ld l, c                                       ; $7770: $69
    db $fd                                        ; $7771: $fd
    ld e, l                                       ; $7772: $5d
    sbc a                                         ; $7773: $9f
    sbc l                                         ; $7774: $9d
    or d                                          ; $7775: $b2
    ld h, $0d                                     ; $7776: $26 $0d
    jp nz, Jump_000_24a7                          ; $7778: $c2 $a7 $24

    jp c, $c451                                   ; $777b: $da $51 $c4

    sub $89                                       ; $777e: $d6 $89
    xor a                                         ; $7780: $af
    ldh a, [$63]                                  ; $7781: $f0 $63
    ld c, c                                       ; $7783: $49
    dec [hl]                                      ; $7784: $35
    ld e, a                                       ; $7785: $5f
    ld e, e                                       ; $7786: $5b
    ld l, $05                                     ; $7787: $2e $05
    cp e                                          ; $7789: $bb
    cp [hl]                                       ; $778a: $be
    or [hl]                                       ; $778b: $b6
    ld d, [hl]                                    ; $778c: $56
    push af                                       ; $778d: $f5
    ld a, c                                       ; $778e: $79
    xor $78                                       ; $778f: $ee $78
    ld l, c                                       ; $7791: $69
    ld l, h                                       ; $7792: $6c
    ei                                            ; $7793: $fb
    ld [de], a                                    ; $7794: $12
    ld c, e                                       ; $7795: $4b
    add hl, de                                    ; $7796: $19

jr_021_7797:
    ld a, a                                       ; $7797: $7f
    cp l                                          ; $7798: $bd
    xor h                                         ; $7799: $ac
    ld c, c                                       ; $779a: $49
    add e                                         ; $779b: $83
    jr nc, jr_021_77db                            ; $779c: $30 $3d

    adc d                                         ; $779e: $8a
    ld a, [$0d20]                                 ; $779f: $fa $20 $0d
    ld sp, $bc58                                  ; $77a2: $31 $58 $bc
    push af                                       ; $77a5: $f5
    sbc a                                         ; $77a6: $9f
    xor $7c                                       ; $77a7: $ee $7c
    di                                            ; $77a9: $f3
    ldh [$37], a                                  ; $77aa: $e0 $37
    ld l, c                                       ; $77ac: $69
    halt                                          ; $77ad: $76
    jp z, $fe74                                   ; $77ae: $ca $74 $fe

    ld e, d                                       ; $77b1: $5a
    sub l                                         ; $77b2: $95
    rla                                           ; $77b3: $17
    add h                                         ; $77b4: $84
    ld bc, $72c7                                  ; $77b5: $01 $c7 $72
    add sp, $24                                   ; $77b8: $e8 $24
    db $fc                                        ; $77ba: $fc
    xor [hl]                                      ; $77bb: $ae
    rst $08                                       ; $77bc: $cf
    ld [hl], e                                    ; $77bd: $73
    ld h, c                                       ; $77be: $61
    ld h, $c5                                     ; $77bf: $26 $c5
    dec de                                        ; $77c1: $1b
    inc d                                         ; $77c2: $14
    ld b, a                                       ; $77c3: $47
    dec sp                                        ; $77c4: $3b
    dec h                                         ; $77c5: $25
    cp c                                          ; $77c6: $b9
    db $e3                                        ; $77c7: $e3
    push af                                       ; $77c8: $f5
    ld a, [hl-]                                   ; $77c9: $3a
    ld [hl], a                                    ; $77ca: $77
    ld e, [hl]                                    ; $77cb: $5e
    call nc, $b06b                                ; $77cc: $d4 $6b $b0
    sub d                                         ; $77cf: $92
    db $fc                                        ; $77d0: $fc
    sbc d                                         ; $77d1: $9a
    inc [hl]                                      ; $77d2: $34
    sub e                                         ; $77d3: $93
    rrca                                          ; $77d4: $0f
    db $d3                                        ; $77d5: $d3
    ld a, [$55e3]                                 ; $77d6: $fa $e3 $55
    inc e                                         ; $77d9: $1c
    db $10                                        ; $77da: $10

jr_021_77db:
    ld b, $2d                                     ; $77db: $06 $2d
    add hl, hl                                    ; $77dd: $29
    jp nc, $c770                                  ; $77de: $d2 $70 $c7

    ld e, a                                       ; $77e1: $5f
    jr z, jr_021_7797                             ; $77e2: $28 $b3

    xor h                                         ; $77e4: $ac
    ld c, d                                       ; $77e5: $4a
    inc de                                        ; $77e6: $13
    reti                                          ; $77e7: $d9


    jp z, $0ec7                                   ; $77e8: $ca $c7 $0e

    jp nz, $e4a7                                  ; $77eb: $c2 $a7 $e4

    ld l, $7b                                     ; $77ee: $2e $7b
    ld b, l                                       ; $77f0: $45
    jr @-$51                                      ; $77f1: $18 $ad

    ld l, d                                       ; $77f3: $6a
    db $fd                                        ; $77f4: $fd
    dec [hl]                                      ; $77f5: $35
    ld l, c                                       ; $77f6: $69
    and $72                                       ; $77f7: $e6 $72
    sbc a                                         ; $77f9: $9f
    dec c                                         ; $77fa: $0d

jr_021_77fb:
    ld d, d                                       ; $77fb: $52
    dec sp                                        ; $77fc: $3b
    ld d, e                                       ; $77fd: $53
    ld h, d                                       ; $77fe: $62
    db $e3                                        ; $77ff: $e3
    push de                                       ; $7800: $d5
    ld e, a                                       ; $7801: $5f
    cp d                                          ; $7802: $ba
    ld h, d                                       ; $7803: $62
    and a                                         ; $7804: $a7
    inc h                                         ; $7805: $24
    jp c, $dac9                                   ; $7806: $da $c9 $da

    or h                                          ; $7809: $b4
    ld a, a                                       ; $780a: $7f
    ld c, l                                       ; $780b: $4d
    sbc d                                         ; $780c: $9a
    ld b, c                                       ; $780d: $41
    ld c, c                                       ; $780e: $49
    inc de                                        ; $780f: $13
    reti                                          ; $7810: $d9


    ld h, d                                       ; $7811: $62
    ld h, [hl]                                    ; $7812: $66
    ld a, l                                       ; $7813: $7d
    rst $10                                       ; $7814: $d7
    ld h, a                                       ; $7815: $67
    ld a, [hl-]                                   ; $7816: $3a
    ld [$9603], sp                                ; $7817: $08 $03 $96
    or c                                          ; $781a: $b1
    and h                                         ; $781b: $a4
    sbc d                                         ; $781c: $9a
    rst $28                                       ; $781d: $ef
    xor l                                         ; $781e: $ad
    ld c, a                                       ; $781f: $4f
    xor e                                         ; $7820: $ab
    ld d, e                                       ; $7821: $53
    ld a, [c]                                     ; $7822: $f2
    dec hl                                        ; $7823: $2b
    ret                                           ; $7824: $c9


    rst $08                                       ; $7825: $cf
    ld [hl], e                                    ; $7826: $73
    ld a, [c]                                     ; $7827: $f2
    ld h, c                                       ; $7828: $61
    ld e, d                                       ; $7829: $5a
    ld a, a                                       ; $782a: $7f
    cp d                                          ; $782b: $ba
    di                                            ; $782c: $f3
    inc [hl]                                      ; $782d: $34
    inc e                                         ; $782e: $1c
    cp b                                          ; $782f: $b8
    ld e, [hl]                                    ; $7830: $5e
    ld b, d                                       ; $7831: $42
    jr jr_021_77fb                                ; $7832: $18 $c7

    ld a, [de]                                    ; $7834: $1a
    ld e, $cd                                     ; $7835: $1e $cd
    ld h, d                                       ; $7837: $62
    xor a                                         ; $7838: $af
    ld c, c                                       ; $7839: $49
    ld d, e                                       ; $783a: $53
    sub e                                         ; $783b: $93
    ld e, a                                       ; $783c: $5f
    ld h, l                                       ; $783d: $65
    inc b                                         ; $783e: $04
    sbc [hl]                                      ; $783f: $9e
    ld [hl], c                                    ; $7840: $71
    rlca                                          ; $7841: $07
    xor [hl]                                      ; $7842: $ae
    call $d794                                    ; $7843: $cd $94 $d7
    ld h, [hl]                                    ; $7846: $66
    or [hl]                                       ; $7847: $b6
    ld h, h                                       ; $7848: $64
    cp b                                          ; $7849: $b8
    ldh a, [$bb]                                  ; $784a: $f0 $bb
    ld h, b                                       ; $784c: $60
    dec l                                         ; $784d: $2d

jr_021_784e:
    sub l                                         ; $784e: $95
    sbc b                                         ; $784f: $98
    halt                                          ; $7850: $76
    ei                                            ; $7851: $fb
    ld d, d                                       ; $7852: $52
    or b                                          ; $7853: $b0
    ldh a, [rTMA]                                 ; $7854: $f0 $06
    push bc                                       ; $7856: $c5

Call_021_7857:
    rst $00                                       ; $7857: $c7
    and a                                         ; $7858: $a7
    call nc, $0611                                ; $7859: $d4 $11 $06
    sub [hl]                                      ; $785c: $96
    add c                                         ; $785d: $81
    ld l, e                                       ; $785e: $6b
    inc sp                                        ; $785f: $33
    push hl                                       ; $7860: $e5
    or l                                          ; $7861: $b5
    sbc c                                         ; $7862: $99
    dec l                                         ; $7863: $2d
    add hl, de                                    ; $7864: $19
    xor [hl]                                      ; $7865: $ae
    ld [hl-], a                                   ; $7866: $32
    ld [bc], a                                    ; $7867: $02
    rrca                                          ; $7868: $0f
    ld [$a703], sp                                ; $7869: $08 $03 $a7
    inc h                                         ; $786c: $24
    ld [hl], a                                    ; $786d: $77
    ld l, l                                       ; $786e: $6d
    db $e3                                        ; $786f: $e3
    or e                                          ; $7870: $b3
    xor h                                         ; $7871: $ac
    db $fd                                        ; $7872: $fd
    ld a, $2f                                     ; $7873: $3e $2f
    cpl                                           ; $7875: $2f
    ld e, a                                       ; $7876: $5f
    add e                                         ; $7877: $83
    jp hl                                         ; $7878: $e9


    jp c, $f599                                   ; $7879: $da $99 $f5

    ld b, c                                       ; $787c: $41
    add [hl]                                      ; $787d: $86
    rst $08                                       ; $787e: $cf
    sub a                                         ; $787f: $97

jr_021_7880:
    sub a                                         ; $7880: $97
    sbc a                                         ; $7881: $9f
    rla                                           ; $7882: $17
    push af                                       ; $7883: $f5
    ld d, l                                       ; $7884: $55
    ld l, c                                       ; $7885: $69
    ld [hl+], a                                   ; $7886: $22
    sbc e                                         ; $7887: $9b
    ld a, a                                       ; $7888: $7f
    adc h                                         ; $7889: $8c
    ld l, e                                       ; $788a: $6b
    jp nc, $24ac                                  ; $788b: $d2 $ac $24

    adc a                                         ; $788e: $8f
    jr nc, jr_021_784e                            ; $788f: $30 $bd

    jp nc, $e4d4                                  ; $7891: $d2 $d4 $e4

    ld h, a                                       ; $7894: $67
    adc b                                         ; $7895: $88
    cp l                                          ; $7896: $bd
    ld c, h                                       ; $7897: $4c
    ld d, a                                       ; $7898: $57
    add hl, de                                    ; $7899: $19
    add c                                         ; $789a: $81
    rst $28                                       ; $789b: $ef
    cp d                                          ; $789c: $ba
    and e                                         ; $789d: $a3
    push hl                                       ; $789e: $e5
    add $78                                       ; $789f: $c6 $78
    sub l                                         ; $78a1: $95
    cp h                                          ; $78a2: $bc
    bit 7, d                                      ; $78a3: $cb $7a
    ld e, [hl]                                    ; $78a5: $5e
    jr z, @-$4b                                   ; $78a6: $28 $b3

    adc h                                         ; $78a8: $8c
    ld d, a                                       ; $78a9: $57
    sbc b                                         ; $78aa: $98
    ld hl, $b2f6                                  ; $78ab: $21 $f6 $b2
    and h                                         ; $78ae: $a4
    rst $20                                       ; $78af: $e7
    adc $33                                       ; $78b0: $ce $33
    cp e                                          ; $78b2: $bb
    ld h, b                                       ; $78b3: $60
    sub [hl]                                      ; $78b4: $96
    dec d                                         ; $78b5: $15
    or l                                          ; $78b6: $b5
    ld a, $d5                                     ; $78b7: $3e $d5

jr_021_78b9:
    ld a, h                                       ; $78b9: $7c
    xor [hl]                                      ; $78ba: $ae
    push af                                       ; $78bb: $f5
    and a                                         ; $78bc: $a7
    ld a, c                                       ; $78bd: $79
    ld d, c                                       ; $78be: $51
    ld e, a                                       ; $78bf: $5f
    dec d                                         ; $78c0: $15
    dec d                                         ; $78c1: $15
    ld h, b                                       ; $78c2: $60
    call $c23b                                    ; $78c3: $cd $3b $c2
    daa                                           ; $78c6: $27
    scf                                           ; $78c7: $37
    dec sp                                        ; $78c8: $3b
    add e                                         ; $78c9: $83
    xor d                                         ; $78ca: $aa
    ld hl, sp-$15                                 ; $78cb: $f8 $eb
    ld a, c                                       ; $78cd: $79
    add hl, bc                                    ; $78ce: $09

jr_021_78cf:
    inc a                                         ; $78cf: $3c
    ld l, c                                       ; $78d0: $69
    ld b, l                                       ; $78d1: $45
    reti                                          ; $78d2: $d9


    ld [hl], h                                    ; $78d3: $74
    sub l                                         ; $78d4: $95
    ld de, $b478                                  ; $78d5: $11 $78 $b4
    sub $1f                                       ; $78d8: $d6 $1f
    cp l                                          ; $78da: $bd
    push af                                       ; $78db: $f5

jr_021_78dc:
    ld h, l                                       ; $78dc: $65
    ld d, l                                       ; $78dd: $55
    sbc d                                         ; $78de: $9a
    ret z                                         ; $78df: $c8

    ld d, $bc                                     ; $78e0: $16 $bc
    ld c, a                                       ; $78e2: $4f
    ld l, $5b                                     ; $78e3: $2e $5b
    jp c, $8ebb                                   ; $78e5: $da $bb $8e

    jr nc, jr_021_7880                            ; $78e8: $30 $96

    or c                                          ; $78ea: $b1
    and h                                         ; $78eb: $a4
    sbc d                                         ; $78ec: $9a
    xor a                                         ; $78ed: $af
    ld c, [hl]                                    ; $78ee: $4e
    ret                                           ; $78ef: $c9


    ld c, a                                       ; $78f0: $4f
    xor c                                         ; $78f1: $a9
    pop af                                        ; $78f2: $f1
    ld [hl], d                                    ; $78f3: $72
    add hl, hl                                    ; $78f4: $29
    sbc b                                         ; $78f5: $98
    or [hl]                                       ; $78f6: $b6
    db $d3                                        ; $78f7: $d3
    ld hl, sp+$2a                                 ; $78f8: $f8 $2a
    inc hl                                        ; $78fa: $23
    ldh a, [$80]                                  ; $78fb: $f0 $80
    jr nc, jr_021_78dc                            ; $78fd: $30 $dd

    dec h                                         ; $78ff: $25
    db $ed                                        ; $7900: $ed
    rlca                                          ; $7901: $07
    ld c, b                                       ; $7902: $48
    reti                                          ; $7903: $d9


    ld l, c                                       ; $7904: $69
    and $8a                                       ; $7905: $e6 $8a
    ld a, h                                       ; $7907: $7c
    adc h                                         ; $7908: $8c
    db $e3                                        ; $7909: $e3
    db $d3                                        ; $790a: $d3
    ld b, h                                       ; $790b: $44
    or [hl]                                       ; $790c: $b6
    ld a, [hl-]                                   ; $790d: $3a
    dec h                                         ; $790e: $25
    adc a                                         ; $790f: $8f
    jr nc, jr_021_78cf                            ; $7910: $30 $bd

    jp nc, $894c                                  ; $7912: $d2 $4c $89

    xor l                                         ; $7915: $ad
    ld c, c                                       ; $7916: $49
    inc hl                                        ; $7917: $23
    xor e                                         ; $7918: $ab
    adc h                                         ; $7919: $8c
    ret nz                                        ; $791a: $c0

    cpl                                           ; $791b: $2f
    ld a, b                                       ; $791c: $78
    ld e, a                                       ; $791d: $5f
    ld c, h                                       ; $791e: $4c
    ldh a, [$2e]                                  ; $791f: $f0 $2e
    jr jr_021_78b9                                ; $7921: $18 $96

    ld d, l                                       ; $7923: $55
    ld l, c                                       ; $7924: $69
    ld [hl+], a                                   ; $7925: $22
    and e                                         ; $7926: $a3
    sbc d                                         ; $7927: $9a
    xor a                                         ; $7928: $af
    db $fd                                        ; $7929: $fd
    pop bc                                        ; $792a: $c1
    and l                                         ; $792b: $a5
    ld a, c                                       ; $792c: $79
    adc $3f                                       ; $792d: $ce $3f
    add $35                                       ; $792f: $c6 $35
    ld l, c                                       ; $7931: $69
    db $10                                        ; $7932: $10
    ld b, $3d                                     ; $7933: $06 $3d
    jp z, $ab37                                   ; $7935: $ca $37 $ab

    sub h                                         ; $7938: $94
    sub $fe                                       ; $7939: $d6 $fe
    ret                                           ; $793b: $c9


    add a                                         ; $793c: $87
    ld l, c                                       ; $793d: $69
    ld a, l                                       ; $793e: $7d
    sub $75                                       ; $793f: $d6 $75
    dec a                                         ; $7941: $3d
    adc d                                         ; $7942: $8a
    ld a, d                                       ; $7943: $7a
    dec c                                         ; $7944: $0d
    halt                                          ; $7945: $76
    ret                                           ; $7946: $c9


    ld e, a                                       ; $7947: $5f
    ld e, $fc                                     ; $7948: $1e $fc
    ld d, d                                       ; $794a: $52
    add b                                         ; $794b: $80
    jr nc, jr_021_7975                            ; $794c: $30 $27

Jump_021_794e:
    ld h, l                                       ; $794e: $65
    sub $77                                       ; $794f: $d6 $77
    ld l, c                                       ; $7951: $69
    ld e, [hl]                                    ; $7952: $5e
    ld a, [hl]                                    ; $7953: $7e
    pop af                                        ; $7954: $f1
    or [hl]                                       ; $7955: $b6
    ld b, l                                       ; $7956: $45
    and l                                         ; $7957: $a5
    ld b, c                                       ; $7958: $41
    db $eb                                        ; $7959: $eb
    ld d, c                                       ; $795a: $51
    cp [hl]                                       ; $795b: $be
    ld e, c                                       ; $795c: $59
    ld d, c                                       ; $795d: $51
    db $eb                                        ; $795e: $eb
    xor a                                         ; $795f: $af
    sbc l                                         ; $7960: $9d
    ld e, c                                       ; $7961: $59
    add a                                         ; $7962: $87
    ld l, c                                       ; $7963: $69
    dec sp                                        ; $7964: $3b
    adc l                                         ; $7965: $8d
    rst $28                                       ; $7966: $ef
    xor l                                         ; $7967: $ad
    cpl                                           ; $7968: $2f
    adc l                                         ; $7969: $8d
    sub a                                         ; $796a: $97
    ld c, e                                       ; $796b: $4b
    ld bc, $c7c2                                  ; $796c: $01 $c2 $c7
    and l                                         ; $796f: $a5
    xor h                                         ; $7970: $ac
    inc hl                                        ; $7971: $23
    ld e, d                                       ; $7972: $5a
    ld sp, hl                                     ; $7973: $f9
    xor l                                         ; $7974: $ad

jr_021_7975:
    sbc [hl]                                      ; $7975: $9e
    dec sp                                        ; $7976: $3b
    cp [hl]                                       ; $7977: $be
    inc [hl]                                      ; $7978: $34
    ld h, e                                       ; $7979: $63
    ld c, c                                       ; $797a: $49
    dec [hl]                                      ; $797b: $35
    ld e, a                                       ; $797c: $5f
    sub e                                         ; $797d: $93
    ld h, [hl]                                    ; $797e: $66
    ld a, [c]                                     ; $797f: $f2
    ld h, c                                       ; $7980: $61
    ld e, d                                       ; $7981: $5a
    ld a, a                                       ; $7982: $7f
    ld c, l                                       ; $7983: $4d
    ld a, [de]                                    ; $7984: $1a
    add c                                         ; $7985: $81
    adc a                                         ; $7986: $8f
    halt                                          ; $7987: $76
    ld d, a                                       ; $7988: $57
    inc c                                         ; $7989: $0c
    ld d, $7b                                     ; $798a: $16 $7b
    ld c, l                                       ; $798c: $4d
    sbc d                                         ; $798d: $9a
    db $dd                                        ; $798e: $dd
    add b                                         ; $798f: $80
    ld d, d                                       ; $7990: $52
    ld a, [hl]                                    ; $7991: $7e
    rst $10                                       ; $7992: $d7
    cp c                                          ; $7993: $b9
    dec bc                                        ; $7994: $0b
    or l                                          ; $7995: $b5
    ld l, c                                       ; $7996: $69
    rst $38                                       ; $7997: $ff
    xor [hl]                                      ; $7998: $ae
    rst $10                                       ; $7999: $d7
    ld h, d                                       ; $799a: $62
    ld e, h                                       ; $799b: $5c
    sub b                                         ; $799c: $90
    ld d, e                                       ; $799d: $53
    ld e, [hl]                                    ; $799e: $5e
    dec de                                        ; $799f: $1b
    add h                                         ; $79a0: $84
    ld bc, $3727                                  ; $79a1: $01 $27 $37
    db $eb                                        ; $79a4: $eb
    xor b                                         ; $79a5: $a8
    inc a                                         ; $79a6: $3c
    add hl, sp                                    ; $79a7: $39
    adc h                                         ; $79a8: $8c
    sbc $fa                                       ; $79a9: $de $fa
    or d                                          ; $79ab: $b2
    ld hl, sp-$42                                 ; $79ac: $f8 $be
    ldh a, [$57]                                  ; $79ae: $f0 $57
    add hl, de                                    ; $79b0: $19
    add c                                         ; $79b1: $81
    rst $20                                       ; $79b2: $e7

Jump_021_79b3:
    ld c, $72                                     ; $79b3: $0e $72
    sub [hl]                                      ; $79b5: $96
    or c                                          ; $79b6: $b1
    and h                                         ; $79b7: $a4
    sbc d                                         ; $79b8: $9a
    xor a                                         ; $79b9: $af
    ld c, [hl]                                    ; $79ba: $4e
    ret                                           ; $79bb: $c9


    ld c, a                                       ; $79bc: $4f
    xor c                                         ; $79bd: $a9

Jump_021_79be:
    pop af                                        ; $79be: $f1
    ld [hl], d                                    ; $79bf: $72
    add hl, hl                                    ; $79c0: $29
    sbc b                                         ; $79c1: $98

Call_021_79c2:
    or [hl]                                       ; $79c2: $b6
    db $d3                                        ; $79c3: $d3
    ld hl, sp-$52                                 ; $79c4: $f8 $ae
    inc hl                                        ; $79c6: $23
    inc c                                         ; $79c7: $0c
    and a                                         ; $79c8: $a7
    inc h                                         ; $79c9: $24
    ld [hl], a                                    ; $79ca: $77
    ld l, l                                       ; $79cb: $6d
    db $e3                                        ; $79cc: $e3
    or e                                          ; $79cd: $b3
    adc h                                         ; $79ce: $8c
    cp a                                          ; $79cf: $bf
    ld d, b                                       ; $79d0: $50
    ld h, [hl]                                    ; $79d1: $66
    ld e, c                                       ; $79d2: $59
    sbc l                                         ; $79d3: $9d
    sbc [hl]                                      ; $79d4: $9e
    ld e, a                                       ; $79d5: $5f
    ld c, c                                       ; $79d6: $49
    ld a, [hl]                                    ; $79d7: $7e
    sbc [hl]                                      ; $79d8: $9e
    xor e                                         ; $79d9: $ab
    inc d                                         ; $79da: $14
    ld a, h                                       ; $79db: $7c
    ld e, [hl]                                    ; $79dc: $5e
    ld a, $44                                     ; $79dd: $3e $44
    db $eb                                        ; $79df: $eb
    ld d, c                                       ; $79e0: $51
    call nc, $a7c7                                ; $79e1: $d4 $c7 $a7
    adc c                                         ; $79e4: $89
    ld l, h                                       ; $79e5: $6c

jr_021_79e6:
    db $ed                                        ; $79e6: $ed
    ld e, a                                       ; $79e7: $5f
    sub l                                         ; $79e8: $95
    add hl, de                                    ; $79e9: $19
    cp e                                          ; $79ea: $bb
    ld h, b                                       ; $79eb: $60
    ld b, a                                       ; $79ec: $47
    ld b, c                                       ; $79ed: $41
    ld a, l                                       ; $79ee: $7d
    daa                                           ; $79ef: $27
    dec hl                                        ; $79f0: $2b
    db $d3                                        ; $79f1: $d3
    ld [hl], b                                    ; $79f2: $70
    db $dd                                        ; $79f3: $dd
    cpl                                           ; $79f4: $2f
    ld d, l                                       ; $79f5: $55
    cp a                                          ; $79f6: $bf
    ld c, e                                       ; $79f7: $4b
    di                                            ; $79f8: $f3
    ld a, [c]                                     ; $79f9: $f2
    adc e                                         ; $79fa: $8b
    or a                                          ; $79fb: $b7
    dec l                                         ; $79fc: $2d
    ld a, [hl+]                                   ; $79fd: $2a
    dec c                                         ; $79fe: $0d
    ld e, d                                       ; $79ff: $5a
    ld c, e                                       ; $7a00: $4b
    ld sp, hl                                     ; $7a01: $f9
    ld d, l                                       ; $7a02: $55
    ld c, d                                       ; $7a03: $4a
    db $eb                                        ; $7a04: $eb
    db $e4                                        ; $7a05: $e4
    dec h                                         ; $7a06: $25
    ld e, a                                       ; $7a07: $5f
    sub e                                         ; $7a08: $93
    ld h, [hl]                                    ; $7a09: $66
    sub a                                         ; $7a0a: $97
    and $e5                                       ; $7a0b: $e6 $e5
    daa                                           ; $7a0d: $27
    scf                                           ; $7a0e: $37
    jr z, jr_021_7a4f                             ; $7a0f: $28 $3e

    halt                                          ; $7a11: $76
    push hl                                       ; $7a12: $e5
    dec hl                                        ; $7a13: $2b
    cp a                                          ; $7a14: $bf
    ld c, c                                       ; $7a15: $49
    ld [$2703], sp                                ; $7a16: $08 $03 $27
    scf                                           ; $7a19: $37
    db $eb                                        ; $7a1a: $eb
    xor b                                         ; $7a1b: $a8
    inc a                                         ; $7a1c: $3c
    add hl, sp                                    ; $7a1d: $39
    call z, $b3c0                                 ; $7a1e: $cc $c0 $b3
    ld a, c                                       ; $7a21: $79
    ld c, $b4                                     ; $7a22: $0e $b4
    sbc c                                         ; $7a24: $99
    ld h, l                                       ; $7a25: $65
    cp h                                          ; $7a26: $bc
    jp nz, $9574                                  ; $7a27: $c2 $74 $95

    ld de, $b478                                  ; $7a2a: $11 $78 $b4
    ld e, $e5                                     ; $7a2d: $1e $e5
    sbc e                                         ; $7a2f: $9b
    ret                                           ; $7a30: $c9


    add a                                         ; $7a31: $87
    ld l, c                                       ; $7a32: $69
    ld a, l                                       ; $7a33: $7d
    or [hl]                                       ; $7a34: $b6
    ldh a, [$d7]                                  ; $7a35: $f0 $d7
    ld l, [hl]                                    ; $7a37: $6e
    ld b, $4f                                     ; $7a38: $06 $4f

Call_021_7a3a:
    db $ec                                        ; $7a3a: $ec
    ld d, d                                       ; $7a3b: $52
    or b                                          ; $7a3c: $b0
    ldh a, [$57]                                  ; $7a3d: $f0 $57

Jump_021_7a3f:
    ld e, [hl]                                    ; $7a3f: $5e
    ld e, $61                                     ; $7a40: $1e $61
    and a                                         ; $7a42: $a7
    inc h                                         ; $7a43: $24
    ld [hl], a                                    ; $7a44: $77
    sub [hl]                                      ; $7a45: $96
    ld e, d                                       ; $7a46: $5a
    jr c, jr_021_79e6                             ; $7a47: $38 $9d

    ld a, l                                       ; $7a49: $7d
    dec b                                         ; $7a4a: $05
    db $fc                                        ; $7a4b: $fc
    cp $e2                                        ; $7a4c: $fe $e2
    xor l                                         ; $7a4e: $ad

jr_021_7a4f:
    rst $38                                       ; $7a4f: $ff
    sbc d                                         ; $7a50: $9a
    inc [hl]                                      ; $7a51: $34
    ld [$bd03], sp                                ; $7a52: $08 $03 $bd
    jp nc, Jump_000_23ac                          ; $7a55: $d2 $ac $23

    reti                                          ; $7a58: $d9


    sub $76                                       ; $7a59: $d6 $76
    ld l, h                                       ; $7a5b: $6c
    ld b, [hl]                                    ; $7a5c: $46
    rst $38                                       ; $7a5d: $ff
    ld l, h                                       ; $7a5e: $6c
    sbc [hl]                                      ; $7a5f: $9e
    ld h, e                                       ; $7a60: $63
    add hl, sp                                    ; $7a61: $39
    ret z                                         ; $7a62: $c8

    ldh a, [rTAC]                                 ; $7a63: $f0 $07

jr_021_7a65:
    cpl                                           ; $7a65: $2f
    scf                                           ; $7a66: $37
    dec c                                         ; $7a67: $0d
    ld c, h                                       ; $7a68: $4c
    ld e, $5e                                     ; $7a69: $1e $5e
    and l                                         ; $7a6b: $a5
    ld a, [hl+]                                   ; $7a6c: $2a
    di                                            ; $7a6d: $f3
    ld e, h                                       ; $7a6e: $5c
    ld a, h                                       ; $7a6f: $7c
    dec d                                         ; $7a70: $15
    ld e, d                                       ; $7a71: $5a
    ld c, c                                       ; $7a72: $49
    ld a, [hl]                                    ; $7a73: $7e
    sbc [hl]                                      ; $7a74: $9e
    ld h, e                                       ; $7a75: $63
    add hl, sp                                    ; $7a76: $39
    cpl                                           ; $7a77: $2f
    ld [$0308], a                                 ; $7a78: $ea $08 $03
    dec l                                         ; $7a7b: $2d
    add hl, hl                                    ; $7a7c: $29
    jp nc, $c770                                  ; $7a7d: $d2 $70 $c7

    rst $38                                       ; $7a80: $ff
    adc d                                         ; $7a81: $8a
    ld e, d                                       ; $7a82: $5a
    sbc a                                         ; $7a83: $9f
    ld l, d                                       ; $7a84: $6a
    cp [hl]                                       ; $7a85: $be
    jr nz, jr_021_7a65                            ; $7a86: $20 $dd

    sbc a                                         ; $7a88: $9f
    and $39                                       ; $7a89: $e6 $39
    cpl                                           ; $7a8b: $2f
    ld [$8aab], a                                 ; $7a8c: $ea $ab $8a
    halt                                          ; $7a8f: $76

jr_021_7a90:
    db $fc                                        ; $7a90: $fc
    ld h, l                                       ; $7a91: $65
    call $c23b                                    ; $7a92: $cd $3b $c2
    dec a                                         ; $7a95: $3d
    adc e                                         ; $7a96: $8b
    ld a, [$ae58]                                 ; $7a97: $fa $58 $ae
    ld c, c                                       ; $7a9a: $49
    or e                                          ; $7a9b: $b3
    and d                                         ; $7a9c: $a2
    sub $9f                                       ; $7a9d: $d6 $9f
    sub a                                         ; $7a9f: $97
    sub a                                         ; $7aa0: $97
    rst $20                                       ; $7aa1: $e7
    xor $94                                       ; $7aa2: $ee $94
    or a                                          ; $7aa4: $b7
    sbc $18                                       ; $7aa5: $de $18
    cp a                                          ; $7aa7: $bf
    dec hl                                        ; $7aa8: $2b
    ld b, $47                                     ; $7aa9: $06 $47
    db $ed                                        ; $7aab: $ed

jr_021_7aac:
    db $f4                                        ; $7aac: $f4
    rrca                                          ; $7aad: $0f
    ccf                                           ; $7aae: $3f
    ld l, h                                       ; $7aaf: $6c
    adc e                                         ; $7ab0: $8b
    add $b8                                       ; $7ab1: $c6 $b8
    or b                                          ; $7ab3: $b0
    ld e, c                                       ; $7ab4: $59
    jr nz, @+$4c                                  ; $7ab5: $20 $4a

    inc l                                         ; $7ab7: $2c
    call nc, $93c1                                ; $7ab8: $d4 $c1 $93
    cpl                                           ; $7abb: $2f
    ld a, h                                       ; $7abc: $7c
    or h                                          ; $7abd: $b4
    sub [hl]                                      ; $7abe: $96
    ld a, [c]                                     ; $7abf: $f2
    xor e                                         ; $7ac0: $ab
    ld d, e                                       ; $7ac1: $53
    ld a, [c]                                     ; $7ac2: $f2
    jr nc, jr_021_7a90                            ; $7ac3: $30 $cb

    db $ec                                        ; $7ac5: $ec
    sub h                                         ; $7ac6: $94
    ldh [$7d], a                                  ; $7ac7: $e0 $7d
    ld e, [hl]                                    ; $7ac9: $5e
    ld l, $05                                     ; $7aca: $2e $05
    add b                                         ; $7acc: $80
    jr nc, jr_021_7aac                            ; $7acd: $30 $dd

    and d                                         ; $7acf: $a2
    ld [bc], a                                    ; $7ad0: $02
    ld [hl], h                                    ; $7ad1: $74
    ld e, c                                       ; $7ad2: $59
    adc e                                         ; $7ad3: $8b
    dec hl                                        ; $7ad4: $2b
    or c                                          ; $7ad5: $b1
    or l                                          ; $7ad6: $b5
    sbc e                                         ; $7ad7: $9b
    dec [hl]                                      ; $7ad8: $35
    ld l, c                                       ; $7ad9: $69
    ld h, h                                       ; $7ada: $64
    ld l, l                                       ; $7adb: $6d
    ret                                           ; $7adc: $c9


    inc c                                         ; $7add: $0c
    and c                                         ; $7ade: $a1
    dec bc                                        ; $7adf: $0b
    ld b, $dd                                     ; $7ae0: $06 $dd
    adc l                                         ; $7ae2: $8d
    xor a                                         ; $7ae3: $af
    ld c, c                                       ; $7ae4: $49
    inc hl                                        ; $7ae5: $23
    sub e                                         ; $7ae6: $93
    dec de                                        ; $7ae7: $1b

jr_021_7ae8:
    inc d                                         ; $7ae8: $14
    ld e, a                                       ; $7ae9: $5f
    ld d, c                                       ; $7aea: $51
    ld h, d                                       ; $7aeb: $62
    or b                                          ; $7aec: $b0
    or h                                          ; $7aed: $b4
    cp [hl]                                       ; $7aee: $be
    xor h                                         ; $7aef: $ac
    ld c, c                                       ; $7af0: $49
    inc hl                                        ; $7af1: $23
    ld l, e                                       ; $7af2: $6b
    ld c, e                                       ; $7af3: $4b
    ld h, [hl]                                    ; $7af4: $66
    ld [$6253], sp                                ; $7af5: $08 $53 $62
    inc bc                                        ; $7af8: $03
    ld l, l                                       ; $7af9: $6d
    ld d, [hl]                                    ; $7afa: $56
    dec sp                                        ; $7afb: $3b
    and e                                         ; $7afc: $a3
    db $d3                                        ; $7afd: $d3
    and l                                         ; $7afe: $a5
    add [hl]                                      ; $7aff: $86
    ld bc, $7467                                  ; $7b00: $01 $67 $74
    cp d                                          ; $7b03: $ba
    ld h, b                                       ; $7b04: $60
    ld h, a                                       ; $7b05: $67
    ld [hl], h                                    ; $7b06: $74
    cp d                                          ; $7b07: $ba
    ld h, b                                       ; $7b08: $60
    ld h, a                                       ; $7b09: $67
    ld [hl], h                                    ; $7b0a: $74
    cp d                                          ; $7b0b: $ba
    ld h, b                                       ; $7b0c: $60
    db $dd                                        ; $7b0d: $dd
    ld [hl-], a                                   ; $7b0e: $32
    db $fc                                        ; $7b0f: $fc
    or l                                          ; $7b10: $b5
    or l                                          ; $7b11: $b5
    xor d                                         ; $7b12: $aa
    xor a                                         ; $7b13: $af
    cp h                                          ; $7b14: $bc
    inc a                                         ; $7b15: $3c
    ld [hl], a                                    ; $7b16: $77
    db $ed                                        ; $7b17: $ed
    ld l, h                                       ; $7b18: $6c
    cp d                                          ; $7b19: $ba
    ld h, b                                       ; $7b1a: $60
    rst $00                                       ; $7b1b: $c7
    ld c, e                                       ; $7b1c: $4b
    ld a, [hl+]                                   ; $7b1d: $2a
    ld hl, $1084                                  ; $7b1e: $21 $84 $10
    jp nz, Jump_021_6527                          ; $7b21: $c2 $27 $65

    sub $61                                       ; $7b24: $d6 $61
    pop af                                        ; $7b26: $f1
    sub $7f                                       ; $7b27: $d6 $7f
    cp d                                          ; $7b29: $ba
    or [hl]                                       ; $7b2a: $b6
    ld h, h                                       ; $7b2b: $64
    db $fd                                        ; $7b2c: $fd
    ld l, c                                       ; $7b2d: $69
    cp h                                          ; $7b2e: $bc
    ld e, h                                       ; $7b2f: $5c
    ld [hl], b                                    ; $7b30: $70
    or h                                          ; $7b31: $b4
    ld d, e                                       ; $7b32: $53
    sub d                                         ; $7b33: $92
    ld a, [hl]                                    ; $7b34: $7e
    ld l, c                                       ; $7b35: $69
    xor a                                         ; $7b36: $af
    ld c, c                                       ; $7b37: $49
    or e                                          ; $7b38: $b3
    jr nc, jr_021_7ae8                            ; $7b39: $30 $ad

    cp a                                          ; $7b3b: $bf
    sub h                                         ; $7b3c: $94
    or c                                          ; $7b3d: $b1
    sbc h                                         ; $7b3e: $9c
    ld d, d                                       ; $7b3f: $52
    inc sp                                        ; $7b40: $33
    dec sp                                        ; $7b41: $3b
    ld [hl], $97                                  ; $7b42: $36 $97
    add d                                         ; $7b44: $82
    pop af                                        ; $7b45: $f1
    push hl                                       ; $7b46: $e5
    add $9f                                       ; $7b47: $c6 $9f
    ld h, l                                       ; $7b49: $65
    xor [hl]                                      ; $7b4a: $ae

Jump_021_7b4b:
    push af                                       ; $7b4b: $f5
    sbc a                                         ; $7b4c: $9f
    sub a                                         ; $7b4d: $97
    dec bc                                        ; $7b4e: $0b
    ld l, e                                       ; $7b4f: $6b
    ld h, a                                       ; $7b50: $67
    inc sp                                        ; $7b51: $33
    rst $08                                       ; $7b52: $cf
    ld a, c                                       ; $7b53: $79
    ld sp, hl                                     ; $7b54: $f9
    sub l                                         ; $7b55: $95
    add h                                         ; $7b56: $84
    adc $75                                       ; $7b57: $ce $75
    adc l                                         ; $7b59: $8d
    ld [$ad03], sp                                ; $7b5a: $08 $03 $ad
    cp d                                          ; $7b5d: $ba
    and d                                         ; $7b5e: $a2
    dec hl                                        ; $7b5f: $2b
    jp c, $bd65                                   ; $7b60: $da $65 $bd

    jp nc, Jump_021_4a0c                          ; $7b63: $d2 $0c $4a

    sbc d                                         ; $7b66: $9a
    ret z                                         ; $7b67: $c8

    ld d, [hl]                                    ; $7b68: $56
    call nc, $83fa                                ; $7b69: $d4 $fa $83
    ld a, a                                       ; $7b6c: $7f
    ld e, d                                       ; $7b6d: $5a
    cp c                                          ; $7b6e: $b9
    jr nc, jr_021_7bcc                            ; $7b6f: $30 $5b

    xor e                                         ; $7b71: $ab
    rst $20                                       ; $7b72: $e7
    adc $cb                                       ; $7b73: $ce $cb
    cpl                                           ; $7b75: $2f
    sub b                                         ; $7b76: $90
    ld d, a                                       ; $7b77: $57
    ld e, a                                       ; $7b78: $5f
    inc [hl]                                      ; $7b79: $34
    ld h, c                                       ; $7b7a: $61
    and a                                         ; $7b7b: $a7
    dec bc                                        ; $7b7c: $0b
    ld b, $2d                                     ; $7b7d: $06 $2d

jr_021_7b7f:
    push bc                                       ; $7b7f: $c5
    ld hl, sp+$4c                                 ; $7b80: $f8 $4c
    add a                                         ; $7b82: $87
    cp e                                          ; $7b83: $bb
    sub e                                         ; $7b84: $93
    dec [hl]                                      ; $7b85: $35
    jp c, Jump_021_74d9                           ; $7b86: $da $d9 $74

    pop bc                                        ; $7b89: $c1
    dec a                                         ; $7b8a: $3d
    adc e                                         ; $7b8b: $8b
    ld a, d                                       ; $7b8c: $7a
    dec c                                         ; $7b8d: $0d
    and $e5                                       ; $7b8e: $e6 $e5
    ld b, d                                       ; $7b90: $42
    ld d, a                                       ; $7b91: $57
    inc c                                         ; $7b92: $0c
    ld d, $af                                     ; $7b93: $16 $af
    pop bc                                        ; $7b95: $c1
    cp h                                          ; $7b96: $bc
    xor b                                         ; $7b97: $a8
    rrca                                          ; $7b98: $0f
    call c, Call_000_2e74                         ; $7b99: $dc $74 $2e
    sbc e                                         ; $7b9c: $9b
    sub a                                         ; $7b9d: $97
    ld c, e                                       ; $7b9e: $4b
    pop bc                                        ; $7b9f: $c1
    ld c, [hl]                                    ; $7ba0: $4e
    ld c, d                                       ; $7ba1: $4a
    ld a, [bc]                                    ; $7ba2: $0a
    jp c, $9ee9                                   ; $7ba3: $da $e9 $9e

    ld h, c                                       ; $7ba6: $61
    dec c                                         ; $7ba7: $0d
    ld d, $88                                     ; $7ba8: $16 $88
    jp nc, $c9e0                                  ; $7baa: $d2 $e0 $c9

    ld d, a                                       ; $7bad: $57
    ld l, [hl]                                    ; $7bae: $6e
    adc b                                         ; $7baf: $88
    jr nc, @+$3f                                  ; $7bb0: $30 $3d

    adc d                                         ; $7bb2: $8a
    ld a, d                                       ; $7bb3: $7a
    dec c                                         ; $7bb4: $0d
    halt                                          ; $7bb5: $76
    jp z, Jump_021_6f5b                           ; $7bb6: $ca $5b $6f

    adc h                                         ; $7bb9: $8c
    ld e, a                                       ; $7bba: $5f
    add e                                         ; $7bbb: $83
    sbc l                                         ; $7bbc: $9d
    cp $e1                                        ; $7bbd: $fe $e1
    add a                                         ; $7bbf: $87
    ld l, l                                       ; $7bc0: $6d
    pop de                                        ; $7bc1: $d1
    jr jr_021_7b7f                                ; $7bc2: $18 $bb

    db $ec                                        ; $7bc4: $ec
    ld hl, sp+$6b                                 ; $7bc5: $f8 $6b
    db $fd                                        ; $7bc7: $fd
    ld e, l                                       ; $7bc8: $5d
    ld e, a                                       ; $7bc9: $5f
    ld e, e                                       ; $7bca: $5b
    xor e                                         ; $7bcb: $ab

jr_021_7bcc:
    ld a, d                                       ; $7bcc: $7a
    rla                                           ; $7bcd: $17

jr_021_7bce:
    inc c                                         ; $7bce: $0c
    db $dd                                        ; $7bcf: $dd
    ld [hl-], a                                   ; $7bd0: $32
    db $fc                                        ; $7bd1: $fc
    dec b                                         ; $7bd2: $05
    rst $28                                       ; $7bd3: $ef
    cp e                                          ; $7bd4: $bb
    adc $5d                                       ; $7bd5: $ce $5d
    rst $30                                       ; $7bd7: $f7
    ld [hl], h                                    ; $7bd8: $74
    ld a, a                                       ; $7bd9: $7f
    jp hl                                         ; $7bda: $e9


    add d                                         ; $7bdb: $82
    ld bc, $67c7                                  ; $7bdc: $01 $c7 $67
    or d                                          ; $7bdf: $b2
    reti                                          ; $7be0: $d9


    add hl, hl                                    ; $7be1: $29
    ld l, e                                       ; $7be2: $6b
    jp nc, $d770                                  ; $7be3: $d2 $70 $d7

    xor d                                         ; $7be6: $aa
    ld [hl+], a                                   ; $7be7: $22
    ld c, l                                       ; $7be8: $4d
    rla                                           ; $7be9: $17
    inc c                                         ; $7bea: $0c
    xor l                                         ; $7beb: $ad
    ld a, [hl+]                                   ; $7bec: $2a
    jp nc, $d770                                  ; $7bed: $d2 $70 $d7

    and h                                         ; $7bf0: $a4
    ld e, c                                       ; $7bf1: $59
    sub l                                         ; $7bf2: $95
    ld h, $b2                                     ; $7bf3: $26 $b2
    dec d                                         ; $7bf5: $15
    or l                                          ; $7bf6: $b5
    cp $82                                        ; $7bf7: $fe $82
    db $f4                                        ; $7bf9: $f4
    add hl, de                                    ; $7bfa: $19
    sbc b                                         ; $7bfb: $98
    add $b8                                       ; $7bfc: $c6 $b8
    ld c, e                                       ; $7bfe: $4b
    sbc [hl]                                      ; $7bff: $9e
    ld [hl], e                                    ; $7c00: $73
    ld c, c                                       ; $7c01: $49
    db $d3                                        ; $7c02: $d3
    adc [hl]                                      ; $7c03: $8e
    rst $18                                       ; $7c04: $df
    dec b                                         ; $7c05: $05
    inc bc                                        ; $7c06: $03
    and a                                         ; $7c07: $a7

Jump_021_7c08:
    cp h                                          ; $7c08: $bc
    push af                                       ; $7c09: $f5
    add $f8                                       ; $7c0a: $c6 $f8
    ld e, l                                       ; $7c0c: $5d
    sub $9a                                       ; $7c0d: $d6 $9a
    db $fc                                        ; $7c0f: $fc
    ld d, h                                       ; $7c10: $54
    ld a, [hl]                                    ; $7c11: $7e
    ld c, l                                       ; $7c12: $4d
    sbc d                                         ; $7c13: $9a
    xor [hl]                                      ; $7c14: $ae
    jr @+$29                                      ; $7c15: $18 $27

    dec hl                                        ; $7c17: $2b
    db $d3                                        ; $7c18: $d3
    ld [hl], b                                    ; $7c19: $70
    db $dd                                        ; $7c1a: $dd
    inc sp                                        ; $7c1b: $33
    or h                                          ; $7c1c: $b4
    push hl                                       ; $7c1d: $e5
    sbc e                                         ; $7c1e: $9b
    ld e, l                                       ; $7c1f: $5d
    sbc d                                         ; $7c20: $9a
    sub a                                         ; $7c21: $97
    ld e, a                                       ; $7c22: $5f
    ld c, c                                       ; $7c23: $49
    add sp, $5c                                   ; $7c24: $e8 $5c
    rst $10                                       ; $7c26: $d7

jr_021_7c27:
    jr c, jr_021_7c27                             ; $7c27: $38 $fe

    ld d, d                                       ; $7c29: $52
    jr nc, jr_021_7c27                            ; $7c2a: $30 $fb

    ld [hl], d                                    ; $7c2c: $72
    ld a, b                                       ; $7c2d: $78
    or [hl]                                       ; $7c2e: $b6

jr_021_7c2f:
    ldh a, [$27]                                  ; $7c2f: $f0 $27
    scf                                           ; $7c31: $37
    jr z, jr_021_7c72                             ; $7c32: $28 $3e

    db $d3                                        ; $7c34: $d3
    ld b, c                                       ; $7c35: $41
    jr jr_021_7bce                                ; $7c36: $18 $96

    ld h, l                                       ; $7c38: $65
    dec de                                        ; $7c39: $1b
    ld e, [hl]                                    ; $7c3a: $5e
    xor h                                         ; $7c3b: $ac
    rst $08                                       ; $7c3c: $cf
    sub $a4                                       ; $7c3d: $d6 $a4
    sub c                                         ; $7c3f: $91
    push bc                                       ; $7c40: $c5
    db $eb                                        ; $7c41: $eb
    ld e, $7f                                     ; $7c42: $1e $7f
    jp z, Jump_021_4fac                           ; $7c44: $ca $ac $4f

    ld l, [hl]                                    ; $7c47: $6e
    db $e4                                        ; $7c48: $e4
    cp c                                          ; $7c49: $b9
    ld l, e                                       ; $7c4a: $6b
    ld d, l                                       ; $7c4b: $55
    sub c                                         ; $7c4c: $91
    ld h, [hl]                                    ; $7c4d: $66
    db $dd                                        ; $7c4e: $dd
    db $d3                                        ; $7c4f: $d3
    db $fd                                        ; $7c50: $fd
    dec b                                         ; $7c51: $05
    ld h, c                                       ; $7c52: $61
    ld h, a                                       ; $7c53: $67
    add h                                         ; $7c54: $84
    ld [$17a1], sp                                ; $7c55: $08 $a1 $17
    add h                                         ; $7c58: $84
    sub b                                         ; $7c59: $90
    rla                                           ; $7c5a: $17
    push af                                       ; $7c5b: $f5
    ld e, l                                       ; $7c5c: $5d
    ld b, b                                       ; $7c5d: $40
    ld [$a761], sp                                ; $7c5e: $08 $61 $a7
    cp h                                          ; $7c61: $bc
    push af                                       ; $7c62: $f5
    ld h, l                                       ; $7c63: $65
    inc l                                         ; $7c64: $2c
    rst $20                                       ; $7c65: $e7
    ld b, l                                       ; $7c66: $45
    ld a, l                                       ; $7c67: $7d
    ld a, [de]                                    ; $7c68: $1a
    add sp, $25                                   ; $7c69: $e8 $25
    or h                                          ; $7c6b: $b4
    sbc [hl]                                      ; $7c6c: $9e
    ld e, a                                       ; $7c6d: $5f
    adc e                                         ; $7c6e: $8b
    ld [hl], c                                    ; $7c6f: $71
    xor [hl]                                      ; $7c70: $ae
    or c                                          ; $7c71: $b1

jr_021_7c72:
    cp [hl]                                       ; $7c72: $be
    xor b                                         ; $7c73: $a8
    cp $82                                        ; $7c74: $fe $82
    sub $2d                                       ; $7c76: $d6 $2d
    ld a, [hl+]                                   ; $7c78: $2a
    ret nz                                        ; $7c79: $c0

    ret c                                         ; $7c7a: $d8

    add l                                         ; $7c7b: $85
    ldh a, [rSC]                                  ; $7c7c: $f0 $02
    inc a                                         ; $7c7e: $3c
    ld b, e                                       ; $7c7f: $43
    jr jr_021_7c2f                                ; $7c80: $18 $ad

    rra                                           ; $7c82: $1f
    ld h, e                                       ; $7c83: $63
    ld [hl], d                                    ; $7c84: $72
    ld [hl], a                                    ; $7c85: $77
    ld a, d                                       ; $7c86: $7a
    ld [de], a                                    ; $7c87: $12
    jp nz, Jump_000_01dd                          ; $7c88: $c2 $dd $01

    inc e                                         ; $7c8b: $1c
    ld hl, $4c74                                  ; $7c8c: $21 $74 $4c
    ld d, d                                       ; $7c8f: $52
    call $d707                                    ; $7c90: $cd $07 $d7
    rst $10                                       ; $7c93: $d7
    ld l, [hl]                                    ; $7c94: $6e
    sub $fa                                       ; $7c95: $d6 $fa
    ld [de], a                                    ; $7c97: $12
    sbc $a4                                       ; $7c98: $de $a4
    rst $20                                       ; $7c9a: $e7
    ld c, $ca                                     ; $7c9b: $0e $ca
    rst $10                                       ; $7c9d: $d7
    ld h, b                                       ; $7c9e: $60
    db $ed                                        ; $7c9f: $ed
    cp a                                          ; $7ca0: $bf
    inc d                                         ; $7ca1: $14
    ld c, h                                       ; $7ca2: $4c
    ld d, a                                       ; $7ca3: $57
    and a                                         ; $7ca4: $a7
    db $e4                                        ; $7ca5: $e4
    ei                                            ; $7ca6: $fb
    cp [hl]                                       ; $7ca7: $be
    sbc $b7                                       ; $7ca8: $de $b7
    add $88                                       ; $7caa: $c6 $88

Jump_021_7cac:
    jr nc, jr_021_7ceb                            ; $7cac: $30 $3d

    adc e                                         ; $7cae: $8b
    ld a, [$9efa]                                 ; $7caf: $fa $fa $9e
    ld b, $7a                                     ; $7cb2: $06 $7a
    xor c                                         ; $7cb4: $a9
    dec hl                                        ; $7cb5: $2b
    ld b, $ad                                     ; $7cb6: $06 $ad
    ld a, [hl+]                                   ; $7cb8: $2a
    jp nc, $0770                                  ; $7cb9: $d2 $70 $07

Jump_021_7cbc:
    rst $10                                       ; $7cbc: $d7
    rst $10                                       ; $7cbd: $d7
    ld l, [hl]                                    ; $7cbe: $6e
    ld d, $3e                                     ; $7cbf: $16 $3e
    sbc d                                         ; $7cc1: $9a
    ld h, l                                       ; $7cc2: $65
    ld [hl], l                                    ; $7cc3: $75
    ld c, d                                       ; $7cc4: $4a
    ld a, [hl]                                    ; $7cc5: $7e
    ld a, [de]                                    ; $7cc6: $1a
    db $e3                                        ; $7cc7: $e3
    or h                                          ; $7cc8: $b4
    sbc l                                         ; $7cc9: $9d
    add $d7                                       ; $7cca: $c6 $d7
    ld a, [$ced2]                                 ; $7ccc: $fa $d2 $ce
    sbc b                                         ; $7ccf: $98
    ld b, c                                       ; $7cd0: $41
    add e                                         ; $7cd1: $83
    jr nc, @-$21                                  ; $7cd2: $30 $dd

    db $e3                                        ; $7cd4: $e3
    dec hl                                        ; $7cd5: $2b
    db $fc                                        ; $7cd6: $fc
    db $ec                                        ; $7cd7: $ec
    ld c, e                                       ; $7cd8: $4b
    ld l, h                                       ; $7cd9: $6c
    ld a, [hl-]                                   ; $7cda: $3a
    ld a, b                                       ; $7cdb: $78
    ld [hl], l                                    ; $7cdc: $75
    xor $c0                                       ; $7cdd: $ee $c0
    dec c                                         ; $7cdf: $0d
    ld a, e                                       ; $7ce0: $7b
    ld [hl], d                                    ; $7ce1: $72
    ld b, b                                       ; $7ce2: $40
    jr @+$3f                                      ; $7ce3: $18 $3d

    set 6, e                                      ; $7ce5: $cb $f3
    call c, Call_021_5179                         ; $7ce7: $dc $79 $51
    rra                                           ; $7cea: $1f

jr_021_7ceb:
    xor a                                         ; $7ceb: $af
    or b                                          ; $7cec: $b0
    ld a, [hl+]                                   ; $7ced: $2a
    ld h, $3c                                     ; $7cee: $26 $3c
    jp nz, $ca3d                                  ; $7cf0: $c2 $3d $ca

    rst $08                                       ; $7cf3: $cf
    cp [hl]                                       ; $7cf4: $be
    ld [bc], a                                    ; $7cf5: $02
    cp [hl]                                       ; $7cf6: $be
    sub $97                                       ; $7cf7: $d6 $97
    halt                                          ; $7cf9: $76
    add $0c                                       ; $7cfa: $c6 $0c
    sbc d                                         ; $7cfc: $9a
    push bc                                       ; $7cfd: $c5
    rlca                                          ; $7cfe: $07
    ld c, b                                       ; $7cff: $48
    jp c, $9585                                   ; $7d00: $da $85 $95

    sub a                                         ; $7d03: $97
    or $2e                                        ; $7d04: $f6 $2e
    ld a, e                                       ; $7d06: $7b
    ld a, [c]                                     ; $7d07: $f2
    ld l, e                                       ; $7d08: $6b
    rst $18                                       ; $7d09: $df
    ld c, d                                       ; $7d0a: $4a
    db $fd                                        ; $7d0b: $fd
    ld h, $a1                                     ; $7d0c: $26 $a1
    or l                                          ; $7d0e: $b5
    cp [hl]                                       ; $7d0f: $be
    or h                                          ; $7d10: $b4
    ld h, c                                       ; $7d11: $61
    ld a, [hl+]                                   ; $7d12: $2a
    cp a                                          ; $7d13: $bf
    dec de                                        ; $7d14: $1b
    halt                                          ; $7d15: $76
    ld d, d                                       ; $7d16: $52
    ld e, h                                       ; $7d17: $5c
    ret                                           ; $7d18: $c9


    ld [hl], a                                    ; $7d19: $77
    add hl, hl                                    ; $7d1a: $29
    sub b                                         ; $7d1b: $90
    ld h, a                                       ; $7d1c: $67
    rst $30                                       ; $7d1d: $f7
    ret                                           ; $7d1e: $c9


    ld h, c                                       ; $7d1f: $61
    sub a                                         ; $7d20: $97
    ld d, $2a                                     ; $7d21: $16 $2a
    dec [hl]                                      ; $7d23: $35
    db $eb                                        ; $7d24: $eb
    and h                                         ; $7d25: $a4
    rst $18                                       ; $7d26: $df
    and h                                         ; $7d27: $a4
    reti                                          ; $7d28: $d9


    add hl, hl                                    ; $7d29: $29
    and c                                         ; $7d2a: $a1
    adc c                                         ; $7d2b: $89
    ld a, [$41dc]                                 ; $7d2c: $fa $dc $41
    xor $fa                                       ; $7d2f: $ee $fa
    ld l, $ec                                     ; $7d31: $2e $ec
    add [hl]                                      ; $7d33: $86
    sbc l                                         ; $7d34: $9d
    inc d                                         ; $7d35: $14
    ld d, a                                       ; $7d36: $57
    ld a, [c]                                     ; $7d37: $f2
    ld a, c                                       ; $7d38: $79
    xor [hl]                                      ; $7d39: $ae
    ld c, [hl]                                    ; $7d3a: $4e
    ret                                           ; $7d3b: $c9


    cpl                                           ; $7d3c: $2f
    jp hl                                         ; $7d3d: $e9


    ld h, a                                       ; $7d3e: $67
    ld c, e                                       ; $7d3f: $4b
    add [hl]                                      ; $7d40: $86
    di                                            ; $7d41: $f3
    ld a, [c]                                     ; $7d42: $f2
    ld c, e                                       ; $7d43: $4b
    cpl                                           ; $7d44: $2f
    cpl                                           ; $7d45: $2f
    ld [$9603], sp                                ; $7d46: $08 $03 $96
    ld l, c                                       ; $7d49: $69

jr_021_7d4a:
    sub h                                         ; $7d4a: $94
    ld d, a                                       ; $7d4b: $57
    sub $ac                                       ; $7d4c: $d6 $ac
    ld c, [hl]                                    ; $7d4e: $4e
    ret                                           ; $7d4f: $c9


    ld [hl], a                                    ; $7d50: $77
    pop bc                                        ; $7d51: $c1
    rst $00                                       ; $7d52: $c7
    ld c, e                                       ; $7d53: $4b
    ld a, [hl+]                                   ; $7d54: $2a
    ld hl, $270c                                  ; $7d55: $21 $0c $27
    jr jr_021_7d4a                                ; $7d58: $18 $f0

    push bc                                       ; $7d5a: $c5
    ld e, e                                       ; $7d5b: $5b
    rst $38                                       ; $7d5c: $ff
    sub l                                         ; $7d5d: $95
    rla                                           ; $7d5e: $17
    add h                                         ; $7d5f: $84
    ld bc, $6996                                  ; $7d60: $01 $96 $69
    jr c, @+$07                                   ; $7d63: $38 $05

    cp b                                          ; $7d65: $b8
    ld bc, $0a5d                                  ; $7d66: $01 $5d $0a
    or $5a                                        ; $7d69: $f6 $5a
    sub l                                         ; $7d6b: $95
    and l                                         ; $7d6c: $a5
    cp l                                          ; $7d6d: $bd
    ld h, $cd                                     ; $7d6e: $26 $cd
    sub h                                         ; $7d70: $94
    ld h, [hl]                                    ; $7d71: $66
    and c                                         ; $7d72: $a1
    ld b, b                                       ; $7d73: $40
    sbc [hl]                                      ; $7d74: $9e
    db $dd                                        ; $7d75: $dd
    daa                                           ; $7d76: $27
    rst $18                                       ; $7d77: $df
    or c                                          ; $7d78: $b1
    ld d, h                                       ; $7d79: $54
    dec [hl]                                      ; $7d7a: $35
    ld d, l                                       ; $7d7b: $55
    call z, $b3ce                                 ; $7d7c: $cc $ce $b3
    xor e                                         ; $7d7f: $ab
    ld l, b                                       ; $7d80: $68
    cp l                                          ; $7d81: $bd
    jp nc, $bf8c                                  ; $7d82: $d2 $8c $bf

    ld sp, $fdae                                  ; $7d85: $31 $ae $fd
    db $d3                                        ; $7d88: $d3
    halt                                          ; $7d89: $76
    db $fc                                        ; $7d8a: $fc
    ld a, c                                       ; $7d8b: $79
    adc $c0                                       ; $7d8c: $ce $c0
    rst $28                                       ; $7d8e: $ef
    ld a, [hl-]                                   ; $7d8f: $3a
    db $ec                                        ; $7d90: $ec
    add $68                                       ; $7d91: $c6 $68
    ret nz                                        ; $7d93: $c0

    ld b, l                                       ; $7d94: $45
    db $fd                                        ; $7d95: $fd
    ld h, $c1                                     ; $7d96: $26 $c1
    inc a                                         ; $7d98: $3c
    ld [hl], a                                    ; $7d99: $77
    reti                                          ; $7d9a: $d9


    sub e                                         ; $7d9b: $93
    ld e, a                                       ; $7d9c: $5f
    cp e                                          ; $7d9d: $bb
    sbc c                                         ; $7d9e: $99
    ld d, d                                       ; $7d9f: $52
    or e                                          ; $7da0: $b3
    ld a, [c]                                     ; $7da1: $f2
    jp nc, $1846                                  ; $7da2: $d2 $46 $18

    dec a                                         ; $7da5: $3d
    set 2, e                                      ; $7da6: $cb $d3
    sbc d                                         ; $7da8: $9a
    inc [hl]                                      ; $7da9: $34
    or e                                          ; $7daa: $b3
    cpl                                           ; $7dab: $2f
    or c                                          ; $7dac: $b1
    jp hl                                         ; $7dad: $e9


    jp z, Jump_021_7b4b                           ; $7dae: $ca $4b $7b

    add hl, hl                                    ; $7db1: $29
    ld c, e                                       ; $7db2: $4b
    cpl                                           ; $7db3: $2f
    cpl                                           ; $7db4: $2f
    cp e                                          ; $7db5: $bb
    inc d                                         ; $7db6: $14
    ret z                                         ; $7db7: $c8

    or e                                          ; $7db8: $b3
    ei                                            ; $7db9: $fb
    db $e4                                        ; $7dba: $e4
    ld l, e                                       ; $7dbb: $6b
    jp nc, Jump_000_258c                          ; $7dbc: $d2 $8c $25

    push de                                       ; $7dbf: $d5
    ld a, h                                       ; $7dc0: $7c
    ld a, [c]                                     ; $7dc1: $f2
    ld d, l                                       ; $7dc2: $55
    ld b, $74                                     ; $7dc3: $06 $74
    add hl, sp                                    ; $7dc5: $39
    ld a, $77                                     ; $7dc6: $3e $77
    dec e                                         ; $7dc8: $1d
    ld a, c                                       ; $7dc9: $79
    add b                                         ; $7dca: $80
    ld e, l                                       ; $7dcb: $5d
    rst $18                                       ; $7dcc: $df
    dec h                                         ; $7dcd: $25
    rst $08                                       ; $7dce: $cf
    dec [hl]                                      ; $7dcf: $35
    ld l, c                                       ; $7dd0: $69
    ld h, h                                       ; $7dd1: $64
    rst $00                                       ; $7dd2: $c7
    ld d, d                                       ; $7dd3: $52
    push de                                       ; $7dd4: $d5
    ld d, h                                       ; $7dd5: $54
    ld sp, $cf3b                                  ; $7dd6: $31 $3b $cf
    xor [hl]                                      ; $7dd9: $ae
    and d                                         ; $7dda: $a2
    ld e, c                                       ; $7ddb: $59
    ld a, h                                       ; $7ddc: $7c
    db $fc                                        ; $7ddd: $fc
    adc l                                         ; $7dde: $8d
    ld [hl], c                                    ; $7ddf: $71
    db $ed                                        ; $7de0: $ed
    ld e, a                                       ; $7de1: $5f
    xor b                                         ; $7de2: $a8
    pop bc                                        ; $7de3: $c1
    xor l                                         ; $7de4: $ad
    inc [hl]                                      ; $7de5: $34
    add $66                                       ; $7de6: $c6 $66
    sub a                                         ; $7de8: $97
    dec a                                         ; $7de9: $3d
    ld sp, hl                                     ; $7dea: $f9
    or l                                          ; $7deb: $b5
    rst $28                                       ; $7dec: $ef
    or e                                          ; $7ded: $b3
    add hl, hl                                    ; $7dee: $29
    or c                                          ; $7def: $b1
    ld b, c                                       ; $7df0: $41
    adc d                                         ; $7df1: $8a
    ccf                                           ; $7df2: $3f
    ld b, e                                       ; $7df3: $43
    db $eb                                        ; $7df4: $eb
    and c                                         ; $7df5: $a1
    push af                                       ; $7df6: $f5
    ld e, a                                       ; $7df7: $5f
    sub e                                         ; $7df8: $93
    ld b, [hl]                                    ; $7df9: $46
    halt                                          ; $7dfa: $76
    inc l                                         ; $7dfb: $2c
    ld d, l                                       ; $7dfc: $55
    ld c, l                                       ; $7dfd: $4d
    dec d                                         ; $7dfe: $15
    or e                                          ; $7dff: $b3
    di                                            ; $7e00: $f3
    db $ec                                        ; $7e01: $ec
    ld [$d894], a                                 ; $7e02: $ea $94 $d8
    ldh [rHDMA5], a                               ; $7e05: $e0 $55
    xor d                                         ; $7e07: $aa
    ld [hl-], a                                   ; $7e08: $32
    cpl                                           ; $7e09: $2f
    ccf                                           ; $7e0a: $3f
    xor b                                         ; $7e0b: $a8
    ld c, d                                       ; $7e0c: $4a
    ld h, [hl]                                    ; $7e0d: $66
    ld e, h                                       ; $7e0e: $5c
    jr nz, jr_021_7e7a                            ; $7e0f: $20 $69

    adc b                                         ; $7e11: $88
    pop bc                                        ; $7e12: $c1
    db $ec                                        ; $7e13: $ec
    sub h                                         ; $7e14: $94
    sub l                                         ; $7e15: $95
    sub a                                         ; $7e16: $97
    ld [hl], $a0                                  ; $7e17: $36 $a0
    dec e                                         ; $7e19: $1d
    sub e                                         ; $7e1a: $93
    and e                                         ; $7e1b: $a3
    db $f4                                        ; $7e1c: $f4
    dec a                                         ; $7e1d: $3d
    ld sp, hl                                     ; $7e1e: $f9
    res 7, h                                      ; $7e1f: $cb $bc
    db $fc                                        ; $7e21: $fc
    adc [hl]                                      ; $7e22: $8e
    ld c, e                                       ; $7e23: $4b
    ld l, c                                       ; $7e24: $69
    ld e, a                                       ; $7e25: $5f

jr_021_7e26:
    add $9e                                       ; $7e26: $c6 $9e
    halt                                          ; $7e28: $76
    ld e, h                                       ; $7e29: $5c
    jp z, $a383                                   ; $7e2a: $ca $83 $a3

    dec e                                         ; $7e2d: $1d
    ld b, l                                       ; $7e2e: $45
    ld l, h                                       ; $7e2f: $6c
    inc l                                         ; $7e30: $2c
    xor c                                         ; $7e31: $a9
    and $93                                       ; $7e32: $e6 $93
    ld [hl], a                                    ; $7e34: $77
    inc hl                                        ; $7e35: $23
    inc [hl]                                      ; $7e36: $34
    ld b, e                                       ; $7e37: $43
    ld a, [hl]                                    ; $7e38: $7e
    db $e3                                        ; $7e39: $e3
    sbc d                                         ; $7e3a: $9a
    inc [hl]                                      ; $7e3b: $34
    dec hl                                        ; $7e3c: $2b
    ld l, d                                       ; $7e3d: $6a
    db $fd                                        ; $7e3e: $fd
    ld a, c                                       ; $7e3f: $79
    ld sp, hl                                     ; $7e40: $f9
    pop bc                                        ; $7e41: $c1
    push hl                                       ; $7e42: $e5
    or b                                          ; $7e43: $b0
    ld a, [c]                                     ; $7e44: $f2
    jp nc, Jump_000_2586                          ; $7e45: $d2 $86 $25

    call $afcb                                    ; $7e48: $cd $cb $af
    cp h                                          ; $7e4b: $bc
    or h                                          ; $7e4c: $b4
    rla                                           ; $7e4d: $17
    cpl                                           ; $7e4e: $2f
    ld hl, sp+$2c                                 ; $7e4f: $f8 $2c
    dec bc                                        ; $7e51: $0b
    call nc, $f3fa                                ; $7e52: $d4 $fa $f3
    ld e, h                                       ; $7e55: $5c
    sub e                                         ; $7e56: $93
    ld b, $61                                     ; $7e57: $06 $61
    cp l                                          ; $7e59: $bd
    jp nc, Jump_021_52ac                          ; $7e5a: $d2 $ac $52

    sbc d                                         ; $7e5d: $9a
    sbc l                                         ; $7e5e: $9d

jr_021_7e5f:
    ld sp, $bf26                                  ; $7e5f: $31 $26 $bf
    ldh a, [rPCM34]                               ; $7e62: $f0 $77
    db $ed                                        ; $7e64: $ed
    dec [hl]                                      ; $7e65: $35
    ld l, c                                       ; $7e66: $69
    ld d, $6f                                     ; $7e67: $16 $6f
    db $fd                                        ; $7e69: $fd
    pop de                                        ; $7e6a: $d1
    inc l                                         ; $7e6b: $2c
    sub e                                         ; $7e6c: $93
    xor a                                         ; $7e6d: $af
    ld [hl-], a                                   ; $7e6e: $32
    and b                                         ; $7e6f: $a0
    set 6, c                                      ; $7e70: $cb $f1
    rla                                           ; $7e72: $17
    ld h, $f8                                     ; $7e73: $26 $f8
    jp z, Jump_000_1b4b                           ; $7e75: $ca $4b $1b

    and [hl]                                      ; $7e78: $a6
    ld d, c                                       ; $7e79: $51

jr_021_7e7a:
    ld e, [hl]                                    ; $7e7a: $5e
    ld e, c                                       ; $7e7b: $59
    add e                                         ; $7e7c: $83

jr_021_7e7d:
    jr nc, jr_021_7e26                            ; $7e7d: $30 $a7

    inc h                                         ; $7e7f: $24
    ld [hl], a                                    ; $7e80: $77
    sub [hl]                                      ; $7e81: $96
    ld b, c                                       ; $7e82: $41
    ld c, c                                       ; $7e83: $49
    inc de                                        ; $7e84: $13
    reti                                          ; $7e85: $d9


    ld a, [hl-]                                   ; $7e86: $3a
    sub d                                         ; $7e87: $92
    ld l, l                                       ; $7e88: $6d
    ld l, l                                       ; $7e89: $6d
    rst $00                                       ; $7e8a: $c7
    ld h, [hl]                                    ; $7e8b: $66
    pop af                                        ; $7e8c: $f1
    ld d, l                                       ; $7e8d: $55
    ld l, b                                       ; $7e8e: $68
    rst $10                                       ; $7e8f: $d7
    sub a                                         ; $7e90: $97
    or h                                          ; $7e91: $b4
    or b                                          ; $7e92: $b0
    ld e, c                                       ; $7e93: $59
    ld a, [c]                                     ; $7e94: $f2
    add h                                         ; $7e95: $84
    jr nc, jr_021_7e5f                            ; $7e96: $30 $c7

    inc h                                         ; $7e98: $24
    push de                                       ; $7e99: $d5
    ld a, h                                       ; $7e9a: $7c
    pop bc                                        ; $7e9b: $c1
    ei                                            ; $7e9c: $fb
    sub h                                         ; $7e9d: $94
    sbc d                                         ; $7e9e: $9a
    ld a, c                                       ; $7e9f: $79
    ld c, c                                       ; $7ea0: $49
    ld hl, $82e8                                  ; $7ea1: $21 $e8 $82
    ld bc, $6aad                                  ; $7ea4: $01 $ad $6a
    db $fd                                        ; $7ea7: $fd
    ld e, l                                       ; $7ea8: $5d
    ld e, a                                       ; $7ea9: $5f
    sub e                                         ; $7eaa: $93
    ld b, [hl]                                    ; $7eab: $46
    add $6b                                       ; $7eac: $c6 $6b
    add e                                         ; $7eae: $83
    jr nc, @+$2f                                  ; $7eaf: $30 $2d

    rst $38                                       ; $7eb1: $ff
    ld l, e                                       ; $7eb2: $6b
    jp nc, $aa2c                                  ; $7eb3: $d2 $2c $aa

    cp a                                          ; $7eb6: $bf
    ld [hl], b                                    ; $7eb7: $70
    rst $10                                       ; $7eb8: $d7
    xor d                                         ; $7eb9: $aa
    ld [hl+], a                                   ; $7eba: $22
    dec c                                         ; $7ebb: $0d
    jp nz, $d2bd                                  ; $7ebc: $c2 $bd $d2

    inc c                                         ; $7ebf: $0c
    ld c, d                                       ; $7ec0: $4a
    sbc d                                         ; $7ec1: $9a
    ret z                                         ; $7ec2: $c8

    ld d, $33                                     ; $7ec3: $16 $33
    db $eb                                        ; $7ec5: $eb
    ld c, e                                       ; $7ec6: $4b
    db $e3                                        ; $7ec7: $e3
    ld [hl], b                                    ; $7ec8: $70
    reti                                          ; $7ec9: $d9


    ld [hl], e                                    ; $7eca: $73
    rst $10                                       ; $7ecb: $d7
    xor d                                         ; $7ecc: $aa
    ld [hl+], a                                   ; $7ecd: $22
    dec c                                         ; $7ece: $0d
    jp nz, $e4a7                                  ; $7ecf: $c2 $a7 $e4

    jp z, Jump_000_1b4b                           ; $7ed2: $ca $4b $1b

    halt                                          ; $7ed5: $76
    ld l, c                                       ; $7ed6: $69
    push hl                                       ; $7ed7: $e5
    push hl                                       ; $7ed8: $e5
    cp c                                          ; $7ed9: $b9
    ld l, e                                       ; $7eda: $6b
    ld d, l                                       ; $7edb: $55
    sub c                                         ; $7edc: $91
    ld b, $61                                     ; $7edd: $06 $61
    dec a                                         ; $7edf: $3d
    jp z, Jump_021_5d85                           ; $7ee0: $ca $85 $5d

    jr jr_021_7e7d                                ; $7ee3: $18 $98

    ld c, [hl]                                    ; $7ee5: $4e
    daa                                           ; $7ee6: $27
    pop hl                                        ; $7ee7: $e1
    reti                                          ; $7ee8: $d9


    inc a                                         ; $7ee9: $3c
    rst $10                                       ; $7eea: $d7
    cp $29                                        ; $7eeb: $fe $29
    dec l                                         ; $7eed: $2d
    adc l                                         ; $7eee: $8d
    jp $3f65                                      ; $7eef: $c3 $65 $3f


    dec b                                         ; $7ef2: $05
    cp b                                          ; $7ef3: $b8
    ld bc, $4f85                                  ; $7ef4: $01 $85 $4f
    adc $5d                                       ; $7ef7: $ce $5d
    xor e                                         ; $7ef9: $ab
    adc d                                         ; $7efa: $8a
    inc [hl]                                      ; $7efb: $34
    ld [$c703], sp                                ; $7efc: $08 $03 $c7
    db $e4                                        ; $7eff: $e4
    sbc d                                         ; $7f00: $9a
    inc [hl]                                      ; $7f01: $34
    xor e                                         ; $7f02: $ab
    ld d, e                                       ; $7f03: $53
    ld a, [c]                                     ; $7f04: $f2
    db $d3                                        ; $7f05: $d3
    dec b                                         ; $7f06: $05
    sbc c                                         ; $7f07: $99
    ld l, h                                       ; $7f08: $6c
    sbc l                                         ; $7f09: $9d
    xor b                                         ; $7f0a: $a8
    push de                                       ; $7f0b: $d5
    rst $08                                       ; $7f0c: $cf
    ld [hl], e                                    ; $7f0d: $73
    or $25                                        ; $7f0e: $f6 $25
    or [hl]                                       ; $7f10: $b6
    ld a, [c]                                     ; $7f11: $f2
    jp nc, Jump_000_2586                          ; $7f12: $d2 $86 $25

    call $0fcb                                    ; $7f15: $cd $cb $0f

jr_021_7f18:
    xor d                                         ; $7f18: $aa

jr_021_7f19:
    sub d                                         ; $7f19: $92
    add hl, de                                    ; $7f1a: $19
    rla                                           ; $7f1b: $17
    ld c, b                                       ; $7f1c: $48
    ld a, [de]                                    ; $7f1d: $1a
    ld h, d                                       ; $7f1e: $62
    ret nc                                        ; $7f1f: $d0

    dec d                                         ; $7f20: $15
    inc bc                                        ; $7f21: $03
    daa                                           ; $7f22: $27
    ld h, l                                       ; $7f23: $65
    sub $57                                       ; $7f24: $d6 $57
    ld d, h                                       ; $7f26: $54
    ret c                                         ; $7f27: $d8

    db $ec                                        ; $7f28: $ec
    sub h                                         ; $7f29: $94
    add hl, de                                    ; $7f2a: $19
    ld [hl-], a                                   ; $7f2b: $32
    ld h, b                                       ; $7f2c: $60
    inc [hl]                                      ; $7f2d: $34
    adc $8d                                       ; $7f2e: $ce $8d
    db $ed                                        ; $7f30: $ed
    or b                                          ; $7f31: $b0
    or h                                          ; $7f32: $b4
    rla                                           ; $7f33: $17
    adc b                                         ; $7f34: $88
    ld [bc], a                                    ; $7f35: $02
    and b                                         ; $7f36: $a0
    push af                                       ; $7f37: $f5
    jr z, jr_021_7f19                             ; $7f38: $28 $df

    call nc, $17e4                                ; $7f3a: $d4 $e4 $17
    ld l, a                                       ; $7f3d: $6f
    db $fd                                        ; $7f3e: $fd
    rla                                           ; $7f3f: $17
    ld l, d                                       ; $7f40: $6a
    ld b, b                                       ; $7f41: $40
    rst $28                                       ; $7f42: $ef
    jr nc, jr_021_7f80                            ; $7f43: $30 $3b

    ld h, l                                       ; $7f45: $65
    push hl                                       ; $7f46: $e5
    and l                                         ; $7f47: $a5
    dec c                                         ; $7f48: $0d
    ld d, e                                       ; $7f49: $53
    ld h, d                                       ; $7f4a: $62
    ld c, e                                       ; $7f4b: $4b
    cpl                                           ; $7f4c: $2f

jr_021_7f4d:
    cpl                                           ; $7f4d: $2f
    db $eb                                        ; $7f4e: $eb
    and h                                         ; $7f4f: $a4
    rst $18                                       ; $7f50: $df
    and h                                         ; $7f51: $a4
    ld e, l                                       ; $7f52: $5d
    ld a, [bc]                                    ; $7f53: $0a
    db $e4                                        ; $7f54: $e4
    reti                                          ; $7f55: $d9


    ld a, l                                       ; $7f56: $7d
    ld [hl], d                                    ; $7f57: $72
    ld b, b                                       ; $7f58: $40
    jr jr_021_7f82                                ; $7f59: $18 $27

    jr jr_021_7f4d                                ; $7f5b: $18 $f0

    add l                                         ; $7f5d: $85

Jump_021_7f5e:
    ld e, d                                       ; $7f5e: $5a
    rst $38                                       ; $7f5f: $ff
    add c                                         ; $7f60: $81
    sub c                                         ; $7f61: $91
    sbc a                                         ; $7f62: $9f
    rst $20                                       ; $7f63: $e7
    adc d                                         ; $7f64: $8a
    ld e, d                                       ; $7f65: $5a
    ld a, a                                       ; $7f66: $7f
    ld c, l                                       ; $7f67: $4d
    ld a, [de]                                    ; $7f68: $1a
    add hl, de                                    ; $7f69: $19
    inc de                                        ; $7f6a: $13
    dec c                                         ; $7f6b: $0d
    sub d                                         ; $7f6c: $92
    jp z, $bf65                                   ; $7f6d: $ca $65 $bf

    jr nz, jr_021_7f18                            ; $7f70: $20 $a6

    push af                                       ; $7f72: $f5
    ld h, c                                       ; $7f73: $61
    ld c, c                                       ; $7f74: $49
    cp e                                          ; $7f75: $bb
    or $9a                                        ; $7f76: $f6 $9a
    inc [hl]                                      ; $7f78: $34
    db $eb                                        ; $7f79: $eb
    call c, Call_000_3eaa                         ; $7f7a: $dc $aa $3e
    cpl                                           ; $7f7d: $2f
    rra                                           ; $7f7e: $1f
    and d                                         ; $7f7f: $a2

jr_021_7f80:
    or l                                          ; $7f80: $b5
    ld h, h                                       ; $7f81: $64

jr_021_7f82:
    ld hl, sp+$2b                                 ; $7f82: $f8 $2b
    cpl                                           ; $7f84: $2f
    ld l, l                                       ; $7f85: $6d
    ld e, b                                       ; $7f86: $58
    and l                                         ; $7f87: $a5
    or h                                          ; $7f88: $b4
    ld h, d                                       ; $7f89: $62
    call nz, $8ba7                                ; $7f8a: $c4 $a7 $8b
    rst $10                                       ; $7f8d: $d7
    dec a                                         ; $7f8e: $3d
    ld a, $c2                                     ; $7f8f: $3e $c2
    xor l                                         ; $7f91: $ad
    ld a, [de]                                    ; $7f92: $1a
    ret z                                         ; $7f93: $c8

    ld h, l                                       ; $7f94: $65
    call c, Call_021_45f1                         ; $7f95: $dc $f1 $45
    cp l                                          ; $7f98: $bd
    ld b, $d3                                     ; $7f99: $06 $d3
    dec b                                         ; $7f9b: $05
    sbc c                                         ; $7f9c: $99
    ld l, h                                       ; $7f9d: $6c
    sbc l                                         ; $7f9e: $9d
    xor b                                         ; $7f9f: $a8
    push de                                       ; $7fa0: $d5
    cpl                                           ; $7fa1: $2f
    ld l, c                                       ; $7fa2: $69
    ld e, [hl]                                    ; $7fa3: $5e
    ld a, [hl]                                    ; $7fa4: $7e
    add c                                         ; $7fa5: $81
    and h                                         ; $7fa6: $a4
    ld hl, $f306                                  ; $7fa7: $21 $06 $f3
    sbc h                                         ; $7faa: $9c
    ld a, l                                       ; $7fab: $7d
    adc c                                         ; $7fac: $89
    xor l                                         ; $7fad: $ad
    cp h                                          ; $7fae: $bc
    or h                                          ; $7faf: $b4
    and c                                         ; $7fb0: $a1
    dec hl                                        ; $7fb1: $2b
    ld b, $ff                                     ; $7fb2: $06 $ff
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
