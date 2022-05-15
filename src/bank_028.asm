; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    db $28, $c7                                   ; $4000: $28 $c7
    db $dd                                        ; $4002: $dd
    jr jr_028_4034                                ; $4003: $18 $2f

    push de                                       ; $4005: $d5
    sub $a4                                       ; $4006: $d6 $a4
    sub c                                         ; $4008: $91
    dec e                                         ; $4009: $1d
    ld c, e                                       ; $400a: $4b
    ld d, l                                       ; $400b: $55
    ld d, e                                       ; $400c: $53
    push bc                                       ; $400d: $c5
    db $ec                                        ; $400e: $ec
    inc a                                         ; $400f: $3c
    cp e                                          ; $4010: $bb
    jp z, $ca9d                                   ; $4011: $ca $9d $ca

    xor a                                         ; $4014: $af
    ld sp, hl                                     ; $4015: $f9
    jp nc, $2775                                  ; $4016: $d2 $75 $27

    ld h, l                                       ; $4019: $65
    sub $77                                       ; $401a: $d6 $77
    ld l, c                                       ; $401c: $69
    ld e, [hl]                                    ; $401d: $5e
    ld a, [hl]                                    ; $401e: $7e
    sbc c                                         ; $401f: $99
    ld l, h                                       ; $4020: $6c
    ld l, [hl]                                    ; $4021: $6e
    ld l, h                                       ; $4022: $6c
    add a                                         ; $4023: $87
    ld h, l                                       ; $4024: $65
    ld l, l                                       ; $4025: $6d
    add c                                         ; $4026: $81
    db $28, $c0                                   ; $4027: $28 $c0
    sbc d                                         ; $4029: $9a
    cpl                                           ; $402a: $2f
    add e                                         ; $402b: $83
    rst $38                                       ; $402c: $ff
    sub l                                         ; $402d: $95
    sub a                                         ; $402e: $97
    sbc a                                         ; $402f: $9f
    ld d, d                                       ; $4030: $52
    ld l, l                                       ; $4031: $6d
    ld e, [hl]                                    ; $4032: $5e
    ld e, [hl]                                    ; $4033: $5e

jr_028_4034:
    ld e, $cd                                     ; $4034: $1e $cd
    ld [hl-], a                                   ; $4036: $32
    ld d, b                                       ; $4037: $50
    ld a, [hl]                                    ; $4038: $7e
    sub b                                         ; $4039: $90
    pop hl                                        ; $403a: $e1
    adc a                                         ; $403b: $8f
    ld e, l                                       ; $403c: $5d
    ld [hl], a                                    ; $403d: $77
    and l                                         ; $403e: $a5
    ld h, [hl]                                    ; $403f: $66
    ld a, [hl+]                                   ; $4040: $2a
    ld l, c                                       ; $4041: $69
    adc b                                         ; $4042: $88
    ld [hl], c                                    ; $4043: $71
    rst $10                                       ; $4044: $d7
    ld [hl], $be                                  ; $4045: $36 $be
    db $eb                                        ; $4047: $eb
    dec bc                                        ; $4048: $0b
    or l                                          ; $4049: $b5
    cp $30                                        ; $404a: $fe $30
    ld h, $1a                                     ; $404c: $26 $1a
    inc h                                         ; $404e: $24
    pop bc                                        ; $404f: $c1
    add b                                         ; $4050: $80
    cp $39                                        ; $4051: $fe $39
    cp $20                                        ; $4053: $fe $20
    ld h, a                                       ; $4055: $67
    add hl, de                                    ; $4056: $19
    inc sp                                        ; $4057: $33
    pop bc                                        ; $4058: $c1
    xor [hl]                                      ; $4059: $ae
    rst $08                                       ; $405a: $cf
    ld [hl], h                                    ; $405b: $74
    db $10                                        ; $405c: $10
    ld b, $c7                                     ; $405d: $06 $c7
    adc b                                         ; $405f: $88
    ld b, $49                                     ; $4060: $06 $49
    ret nc                                        ; $4062: $d0

    dec d                                         ; $4063: $15
    inc bc                                        ; $4064: $03
    ld h, a                                       ; $4065: $67
    inc d                                         ; $4066: $14
    add h                                         ; $4067: $84
    ret nc                                        ; $4068: $d0

    ld sp, $cd97                                  ; $4069: $31 $97 $cd
    ld [hl-], a                                   ; $406c: $32
    ret nc                                        ; $406d: $d0

    ld h, [hl]                                    ; $406e: $66
    ld c, h                                       ; $406f: $4c
    inc [hl]                                      ; $4070: $34
    ld c, b                                       ; $4071: $48
    add d                                         ; $4072: $82
    xor [hl]                                      ; $4073: $ae
    or e                                          ; $4074: $b3
    inc l                                         ; $4075: $2c
    ld a, h                                       ; $4076: $7c
    dec h                                         ; $4077: $25
    ld e, a                                       ; $4078: $5f
    ret c                                         ; $4079: $d8

    adc h                                         ; $407a: $8c
    ld h, l                                       ; $407b: $65
    or b                                          ; $407c: $b0
    db $e3                                        ; $407d: $e3
    sub h                                         ; $407e: $94
    ld [bc], a                                    ; $407f: $02
    add h                                         ; $4080: $84
    ret nc                                        ; $4081: $d0

    push af                                       ; $4082: $f5
    add l                                         ; $4083: $85
    ld e, d                                       ; $4084: $5a
    ld a, a                                       ; $4085: $7f
    ret c                                         ; $4086: $d8

    ld [hl], c                                    ; $4087: $71
    ld c, d                                       ; $4088: $4a
    pop bc                                        ; $4089: $c1
    add b                                         ; $408a: $80

jr_028_408b:
    cp $39                                        ; $408b: $fe $39
    ld a, $5a                                     ; $408d: $3e $5a
    rrca                                          ; $408f: $0f
    adc l                                         ; $4090: $8d
    push af                                       ; $4091: $f5
    ld a, c                                       ; $4092: $79
    xor [hl]                                      ; $4093: $ae
    ld sp, hl                                     ; $4094: $f9
    or d                                          ; $4095: $b2
    xor b                                         ; $4096: $a8
    cp $c2                                        ; $4097: $fe $c2
    ld e, l                                       ; $4099: $5d
    xor e                                         ; $409a: $ab
    adc d                                         ; $409b: $8a
    inc [hl]                                      ; $409c: $34
    ld [$ad03], sp                                ; $409d: $08 $03 $ad
    rra                                           ; $40a0: $1f
    ld h, e                                       ; $40a1: $63
    ld [hl], d                                    ; $40a2: $72
    rst $10                                       ; $40a3: $d7
    xor d                                         ; $40a4: $aa
    ld [hl+], a                                   ; $40a5: $22
    dec c                                         ; $40a6: $0d
    ld [hl], a                                    ; $40a7: $77
    ld a, h                                       ; $40a8: $7c
    ld d, c                                       ; $40a9: $51
    rra                                           ; $40aa: $1f
    swap l                                        ; $40ab: $cb $35
    ld l, c                                       ; $40ad: $69
    ld d, [hl]                                    ; $40ae: $56
    call nc, $f3fa                                ; $40af: $d4 $fa $f3
    ld a, [c]                                     ; $40b2: $f2
    ld a, [c]                                     ; $40b3: $f2
    ld e, l                                       ; $40b4: $5d
    ld sp, $3727                                  ; $40b5: $31 $27 $37

Call_028_40b8:
    or e                                          ; $40b8: $b3
    ld d, b                                       ; $40b9: $50
    jr nz, jr_028_408b                            ; $40ba: $20 $cf

    xor $93                                       ; $40bc: $ee $93
    rst $28                                       ; $40be: $ef
    ld e, b                                       ; $40bf: $58
    xor d                                         ; $40c0: $aa
    sbc d                                         ; $40c1: $9a
    ld a, [hl+]                                   ; $40c2: $2a
    ld h, [hl]                                    ; $40c3: $66
    rst $20                                       ; $40c4: $e7
    reti                                          ; $40c5: $d9


    ld d, l                                       ; $40c6: $55
    xor $ec                                       ; $40c7: $ee $ec
    sub h                                         ; $40c9: $94
    or l                                          ; $40ca: $b5
    cp [hl]                                       ; $40cb: $be
    or h                                          ; $40cc: $b4
    inc sp                                        ; $40cd: $33
    ld h, [hl]                                    ; $40ce: $66
    ret nc                                        ; $40cf: $d0

    xor h                                         ; $40d0: $ac
    adc d                                         ; $40d1: $8a
    ld a, [bc]                                    ; $40d2: $0a
    add b                                         ; $40d3: $80
    jr nc, jr_028_411d                            ; $40d4: $30 $47

    dec d                                         ; $40d6: $15
    xor $9a                                       ; $40d7: $ee $9a
    inc [hl]                                      ; $40d9: $34
    dec [hl]                                      ; $40da: $35
    ld sp, hl                                     ; $40db: $f9
    dec d                                         ; $40dc: $15
    ld b, e                                       ; $40dd: $43
    ld a, [hl]                                    ; $40de: $7e
    add hl, hl                                    ; $40df: $29
    sbc b                                         ; $40e0: $98
    sbc l                                         ; $40e1: $9d
    or d                                          ; $40e2: $b2
    ld a, [c]                                     ; $40e3: $f2
    jp nc, $b406                                  ; $40e4: $d2 $06 $b4

    dec e                                         ; $40e7: $1d
    db $fd                                        ; $40e8: $fd
    xor $2f                                       ; $40e9: $ee $2f
    inc bc                                        ; $40eb: $03
    rst $10                                       ; $40ec: $d7
    ld h, [hl]                                    ; $40ed: $66
    ld l, c                                       ; $40ee: $69
    inc e                                         ; $40ef: $1c
    ld l, $fb                                     ; $40f0: $2e $fb
    ld e, l                                       ; $40f2: $5d
    ld a, e                                       ; $40f3: $7b
    ld c, l                                       ; $40f4: $4d
    sbc d                                         ; $40f5: $9a
    pop af                                        ; $40f6: $f1
    ld c, d                                       ; $40f7: $4a
    ld a, $cf                                     ; $40f8: $3e $cf
    or c                                          ; $40fa: $b1
    call c, $c9f5                                 ; $40fb: $dc $f5 $c9
    dec c                                         ; $40fe: $0d
    adc d                                         ; $40ff: $8a
    inc hl                                        ; $4100: $23
    inc c                                         ; $4101: $0c
    sub [hl]                                      ; $4102: $96
    ld e, d                                       ; $4103: $5a
    adc h                                         ; $4104: $8c
    ld l, e                                       ; $4105: $6b
    cp a                                          ; $4106: $bf
    rst $08                                       ; $4107: $cf
    res 0, l                                      ; $4108: $cb $85
    ld e, l                                       ; $410a: $5d
    ld e, b                                       ; $410b: $58
    jp nc, $ed2f                                  ; $410c: $d2 $2f $ed

    ld a, c                                       ; $410f: $79
    ld sp, hl                                     ; $4110: $f9
    sub l                                         ; $4111: $95
    sub a                                         ; $4112: $97
    ld [hl], $20                                  ; $4113: $36 $20
    inc c                                         ; $4115: $0c

jr_028_4116:
    sub [hl]                                      ; $4116: $96
    pop af                                        ; $4117: $f1
    ld a, [bc]                                    ; $4118: $0a
    sub e                                         ; $4119: $93
    dec de                                        ; $411a: $1b
    inc d                                         ; $411b: $14
    ld b, a                                       ; $411c: $47

jr_028_411d:
    ld [$af5d], sp                                ; $411d: $08 $5d $af
    pop bc                                        ; $4120: $c1
    or h                                          ; $4121: $b4
    ld c, d                                       ; $4122: $4a
    cp d                                          ; $4123: $ba
    cp $08                                        ; $4124: $fe $08
    inc bc                                        ; $4126: $03
    sub [hl]                                      ; $4127: $96
    pop af                                        ; $4128: $f1
    ld c, c                                       ; $4129: $49
    db $ec                                        ; $412a: $ec
    ld h, l                                       ; $412b: $65
    ld a, h                                       ; $412c: $7c
    ld d, c                                       ; $412d: $51
    sbc a                                         ; $412e: $9f
    sub a                                         ; $412f: $97
    rst $18                                       ; $4130: $df
    or c                                          ; $4131: $b1
    ld d, h                                       ; $4132: $54
    dec [hl]                                      ; $4133: $35
    ld d, l                                       ; $4134: $55
    call z, $b3ce                                 ; $4135: $cc $ce $b3
    xor e                                         ; $4138: $ab
    db $e3                                        ; $4139: $e3
    ld l, a                                       ; $413a: $6f
    adc h                                         ; $413b: $8c
    inc bc                                        ; $413c: $03
    ld l, l                                       ; $413d: $6d
    and [hl]                                      ; $413e: $a6
    db $ed                                        ; $413f: $ed
    inc [hl]                                      ; $4140: $34
    ld a, $2f                                     ; $4141: $3e $2f
    rla                                           ; $4143: $17
    sub [hl]                                      ; $4144: $96
    db $f4                                        ; $4145: $f4
    ld [$a703], sp                                ; $4146: $08 $03 $a7
    ld a, [c]                                     ; $4149: $f2
    ld e, l                                       ; $414a: $5d
    ld h, [hl]                                    ; $414b: $66
    pop af                                        ; $414c: $f1
    or l                                          ; $414d: $b5
    adc l                                         ; $414e: $8d
    ret nc                                        ; $414f: $d0

    or e                                          ; $4150: $b3
    add l                                         ; $4151: $85
    rst $18                                       ; $4152: $df
    dec b                                         ; $4153: $05
    inc bc                                        ; $4154: $03
    dec l                                         ; $4155: $2d
    add hl, sp                                    ; $4156: $39
    cpl                                           ; $4157: $2f
    rla                                           ; $4158: $17
    halt                                          ; $4159: $76
    ld h, c                                       ; $415a: $61
    db $ec                                        ; $415b: $ec
    cp d                                          ; $415c: $ba
    dec hl                                        ; $415d: $2b
    dec [hl]                                      ; $415e: $35
    ld [$9603], sp                                ; $415f: $08 $03 $96
    ld a, c                                       ; $4162: $79
    cp c                                          ; $4163: $b9
    ld d, h                                       ; $4164: $54
    sbc a                                         ; $4165: $9f
    ld h, l                                       ; $4166: $65
    ld a, [c]                                     ; $4167: $f2
    ld d, l                                       ; $4168: $55
    ld b, $74                                     ; $4169: $06 $74
    add hl, sp                                    ; $416b: $39
    cp $bc                                        ; $416c: $fe $bc
    ld e, h                                       ; $416e: $5c
    ld e, b                                       ; $416f: $58
    jp nc, Jump_000_0c23                          ; $4170: $d2 $23 $0c

    and a                                         ; $4173: $a7
    sbc d                                         ; $4174: $9a
    xor d                                         ; $4175: $aa
    ld [hl], b                                    ; $4176: $70
    rst $20                                       ; $4177: $e7
    ld b, l                                       ; $4178: $45
    ld a, l                                       ; $4179: $7d
    ldh [$97], a                                  ; $417a: $e0 $97
    ld [bc], a                                    ; $417c: $02
    ld b, b                                       ; $417d: $40
    jr jr_028_4116                                ; $417e: $18 $96

    ld a, c                                       ; $4180: $79
    ld c, c                                       ; $4181: $49
    inc de                                        ; $4182: $13
    inc d                                         ; $4183: $14
    rra                                           ; $4184: $1f
    inc h                                         ; $4185: $24
    ld b, d                                       ; $4186: $42
    ld l, b                                       ; $4187: $68
    db $f4                                        ; $4188: $f4
    xor $f1                                       ; $4189: $ee $f1
    ld bc, $47ad                                  ; $418b: $01 $ad $47
    ld sp, hl                                     ; $418e: $f9
    dec e                                         ; $418f: $1d
    ld h, e                                       ; $4190: $63
    inc b                                         ; $4191: $04
    ld [c], a                                     ; $4192: $e2
    scf                                           ; $4193: $37
    ld d, b                                       ; $4194: $50
    ld e, e                                       ; $4195: $5b
    and b                                         ; $4196: $a0

Call_028_4197:
    jp nz, $c69e                                  ; $4197: $c2 $9e $c6

    dec hl                                        ; $419a: $2b
    call z, Call_000_3136                         ; $419b: $cc $36 $31
    ld l, $ed                                     ; $419e: $2e $ed
    ld e, l                                       ; $41a0: $5d
    ld b, a                                       ; $41a1: $47
    jr jr_028_41e1                                ; $41a2: $18 $3d

    jp z, Jump_028_5d85                           ; $41a4: $ca $85 $5d

    jr @-$46                                      ; $41a7: $18 $b8

    jr z, jr_028_41b0                             ; $41a9: $28 $05

    cp a                                          ; $41ab: $bf
    sbc b                                         ; $41ac: $98
    ld e, c                                       ; $41ad: $59
    cp a                                          ; $41ae: $bf
    inc d                                         ; $41af: $14

jr_028_41b0:
    and b                                         ; $41b0: $a0
    ld e, c                                       ; $41b1: $59
    add $27                                       ; $41b2: $c6 $27
    or c                                          ; $41b4: $b1
    sub a                                         ; $41b5: $97
    pop af                                        ; $41b6: $f1
    ld b, l                                       ; $41b7: $45
    ld a, l                                       ; $41b8: $7d
    rst $10                                       ; $41b9: $d7
    ld [hl], a                                    ; $41ba: $77
    ld bc, $3d61                                  ; $41bb: $01 $61 $3d

Call_028_41be:
    jp z, $9daf                                   ; $41be: $ca $af $9d

    ld e, c                                       ; $41c1: $59
    rra                                           ; $41c2: $1f
    ld l, b                                       ; $41c3: $68
    inc bc                                        ; $41c4: $03
    di                                            ; $41c5: $f3
    ld [hl], d                                    ; $41c6: $72
    ld h, c                                       ; $41c7: $61
    rla                                           ; $41c8: $17
    ld d, $2a                                     ; $41c9: $16 $2a
    ld sp, $fad1                                  ; $41cb: $31 $d1 $fa
    ld c, a                                       ; $41ce: $4f
    ld [hl-], a                                   ; $41cf: $32
    dec e                                         ; $41d0: $1d
    ld h, c                                       ; $41d1: $61
    daa                                           ; $41d2: $27
    daa                                           ; $41d3: $27
    push de                                       ; $41d4: $d5
    and c                                         ; $41d5: $a1
    ld h, h                                       ; $41d6: $64
    ld [hl-], a                                   ; $41d7: $32
    or h                                          ; $41d8: $b4
    ld e, $45                                     ; $41d9: $1e $45
    cp l                                          ; $41db: $bd
    ld b, $53                                     ; $41dc: $06 $53
    ld c, d                                       ; $41de: $4a
    cpl                                           ; $41df: $2f
    cpl                                           ; $41e0: $2f

jr_028_41e1:
    ld c, e                                       ; $41e1: $4b
    ld a, [$e4b1]                                 ; $41e2: $fa $b1 $e4
    add hl, bc                                    ; $41e5: $09
    ld h, c                                       ; $41e6: $61
    dec a                                         ; $41e7: $3d
    ld d, e                                       ; $41e8: $53
    ld b, d                                       ; $41e9: $42
    ld a, $93                                     ; $41ea: $3e $93
    and c                                         ; $41ec: $a1
    push af                                       ; $41ed: $f5
    jr z, @-$14                                   ; $41ee: $28 $ea

    dec [hl]                                      ; $41f0: $35
    sbc b                                         ; $41f1: $98
    adc [hl]                                      ; $41f2: $8e
    rst $38                                       ; $41f3: $ff
    dec hl                                        ; $41f4: $2b
    ld l, h                                       ; $41f5: $6c
    and h                                         ; $41f6: $a4
    pop hl                                        ; $41f7: $e1
    inc hl                                        ; $41f8: $23
    inc c                                         ; $41f9: $0c
    dec a                                         ; $41fa: $3d
    jp z, Jump_000_1585                           ; $41fb: $ca $85 $15

    add l                                         ; $41fe: $85
    dec b                                         ; $41ff: $05
    jp hl                                         ; $4200: $e9


    di                                            ; $4201: $f3
    ld e, h                                       ; $4202: $5c
    ei                                            ; $4203: $fb
    sub a                                         ; $4204: $97
    db $f4                                        ; $4205: $f4
    ld c, e                                       ; $4206: $4b
    ld a, e                                       ; $4207: $7b
    ld e, [hl]                                    ; $4208: $5e
    ld a, $44                                     ; $4209: $3e $44
    jr jr_028_423a                                ; $420b: $18 $2d

    add hl, sp                                    ; $420d: $39
    ld c, d                                       ; $420e: $4a
    ld a, [hl]                                    ; $420f: $7e
    sub [hl]                                      ; $4210: $96
    dec d                                         ; $4211: $15
    or l                                          ; $4212: $b5
    cp $14                                        ; $4213: $fe $14
    ld a, [hl-]                                   ; $4215: $3a
    dec h                                         ; $4216: $25
    reti                                          ; $4217: $d9


    rst $00                                       ; $4218: $c7
    ld c, c                                       ; $4219: $49
    and [hl]                                      ; $421a: $a6
    inc hl                                        ; $421b: $23
    inc c                                         ; $421c: $0c
    cp l                                          ; $421d: $bd
    jp nc, $e54c                                  ; $421e: $d2 $4c $e5

    ld b, a                                       ; $4221: $47
    ret                                           ; $4222: $c9


    sub a                                         ; $4223: $97
    sub a                                         ; $4224: $97
    rra                                           ; $4225: $1f
    cp l                                          ; $4226: $bd
    jp z, Jump_028_4bec                           ; $4227: $ca $ec $4b

    rla                                           ; $422a: $17
    jp z, $ee33                                   ; $422b: $ca $33 $ee

    ld e, d                                       ; $422e: $5a
    ld d, l                                       ; $422f: $55
    and h                                         ; $4230: $a4
    ld b, c                                       ; $4231: $41
    dec sp                                        ; $4232: $3b
    ld e, d                                       ; $4233: $5a
    xor e                                         ; $4234: $ab
    ld a, [$f8d2]                                 ; $4235: $fa $d2 $f8
    sbc d                                         ; $4238: $9a
    inc [hl]                                      ; $4239: $34

jr_028_423a:
    dec bc                                        ; $423a: $0b
    ld [de], a                                    ; $423b: $12
    ld h, c                                       ; $423c: $61
    dec a                                         ; $423d: $3d
    jp z, Jump_028_5d85                           ; $423e: $ca $85 $5d

    ld e, b                                       ; $4241: $58
    daa                                           ; $4242: $27
    ld d, e                                       ; $4243: $53
    add $a7                                       ; $4244: $c6 $a7
    call nc, $ebb9                                ; $4246: $d4 $b9 $eb
    sbc [hl]                                      ; $4249: $9e
    xor $2f                                       ; $424a: $ee $2f
    ld l, b                                       ; $424c: $68
    dec a                                         ; $424d: $3d
    and h                                         ; $424e: $a4
    sbc c                                         ; $424f: $99
    ld b, $7a                                     ; $4250: $06 $7a
    add hl, bc                                    ; $4252: $09
    ld h, c                                       ; $4253: $61
    dec a                                         ; $4254: $3d

jr_028_4255:
    jp z, Jump_028_5d85                           ; $4255: $ca $85 $5d

    sbc b                                         ; $4258: $98
    sub a                                         ; $4259: $97
    sbc a                                         ; $425a: $9f
    sub a                                         ; $425b: $97
    dec hl                                        ; $425c: $2b
    ld l, h                                       ; $425d: $6c
    ld a, [hl]                                    ; $425e: $7e
    jp $935f                                      ; $425f: $c3 $5f $93


    ld h, [hl]                                    ; $4262: $66
    ld b, l                                       ; $4263: $45
    xor l                                         ; $4264: $ad
    ccf                                           ; $4265: $3f
    jr nc, jr_028_4255                            ; $4266: $30 $ed

    ldh a, [$ba]                                  ; $4268: $f0 $ba
    ccf                                           ; $426a: $3f
    sbc e                                         ; $426b: $9b
    ld hl, $d2fb                                  ; $426c: $21 $fb $d2
    add l                                         ; $426f: $85
    ld a, [c]                                     ; $4270: $f2
    ld l, h                                       ; $4271: $6c
    ld a, h                                       ; $4272: $7c
    ld c, d                                       ; $4273: $4a
    dec e                                         ; $4274: $1d
    call $fe32                                    ; $4275: $cd $32 $fe
    add $b8                                       ; $4278: $c6 $b8
    ld a, [hl+]                                   ; $427a: $2a

jr_028_427b:
    ret                                           ; $427b: $c9


    cpl                                           ; $427c: $2f
    sbc c                                         ; $427d: $99
    sbc a                                         ; $427e: $9f
    rst $20                                       ; $427f: $e7
    ld e, h                                       ; $4280: $5c
    db $eb                                        ; $4281: $eb
    cp a                                          ; $4282: $bf
    cp $56                                        ; $4283: $fe $56
    jp nc, $afc0                                  ; $4285: $d2 $c0 $af

    sub e                                         ; $4288: $93
    sub a                                         ; $4289: $97
    ld a, h                                       ; $428a: $7c
    ld a, [bc]                                    ; $428b: $0a
    db $d3                                        ; $428c: $d3
    ld [hl], l                                    ; $428d: $75
    sbc [hl]                                      ; $428e: $9e
    inc [hl]                                      ; $428f: $34
    ld a, d                                       ; $4290: $7a
    or e                                          ; $4291: $b3
    or a                                          ; $4292: $b7
    cp [hl]                                       ; $4293: $be
    inc [hl]                                      ; $4294: $34
    di                                            ; $4295: $f3
    dec de                                        ; $4296: $1b
    cp $9a                                        ; $4297: $fe $9a
    inc [hl]                                      ; $4299: $34
    sub e                                         ; $429a: $93
    ld [hl], a                                    ; $429b: $77
    inc hl                                        ; $429c: $23
    inc [hl]                                      ; $429d: $34
    cp $7a                                        ; $429e: $fe $7a
    ld c, c                                       ; $42a0: $49
    db $e3                                        ; $42a1: $e3
    xor e                                         ; $42a2: $ab
    ld [hl-], a                                   ; $42a3: $32
    db $ec                                        ; $42a4: $ec
    call nz, Call_028_4bf7                        ; $42a5: $c4 $f7 $4b
    pop bc                                        ; $42a8: $c1
    sbc d                                         ; $42a9: $9a
    inc [hl]                                      ; $42aa: $34
    ld [hl-], a                                   ; $42ab: $32
    dec b                                         ; $42ac: $05
    cp b                                          ; $42ad: $b8
    ld bc, $4f85                                  ; $42ae: $01 $85 $4f
    adc [hl]                                      ; $42b1: $8e
    jr nc, jr_028_427b                            ; $42b2: $30 $c7

    ld [hl], d                                    ; $42b4: $72
    xor b                                         ; $42b5: $a8
    ld a, $c6                                     ; $42b6: $3e $c6
    daa                                           ; $42b8: $27
    rra                                           ; $42b9: $1f
    sbc a                                         ; $42ba: $9f
    ld d, d                                       ; $42bb: $52
    rst $20                                       ; $42bc: $e7
    xor [hl]                                      ; $42bd: $ae
    ld d, l                                       ; $42be: $55
    ld b, l                                       ; $42bf: $45
    ld a, [de]                                    ; $42c0: $1a
    or h                                          ; $42c1: $b4
    ld e, [hl]                                    ; $42c2: $5e
    ld l, c                                       ; $42c3: $69
    and [hl]                                      ; $42c4: $a6
    ld a, [c]                                     ; $42c5: $f2
    di                                            ; $42c6: $f3
    ld a, [c]                                     ; $42c7: $f2
    or e                                          ; $42c8: $b3
    xor a                                         ; $42c9: $af
    add b                                         ; $42ca: $80
    rst $08                                       ; $42cb: $cf
    ld [hl], e                                    ; $42cc: $73
    ld a, [c]                                     ; $42cd: $f2
    ld l, [hl]                                    ; $42ce: $6e
    add h                                         ; $42cf: $84
    add $5f                                       ; $42d0: $c6 $5f
    cpl                                           ; $42d2: $2f
    di                                            ; $42d3: $f3
    ld a, [c]                                     ; $42d4: $f2
    ld d, e                                       ; $42d5: $53
    add b                                         ; $42d6: $80
    dec de                                        ; $42d7: $1b
    ld d, b                                       ; $42d8: $50
    ld hl, sp-$1c                                 ; $42d9: $f8 $e4
    xor e                                         ; $42db: $ab
    ld [hl-], a                                   ; $42dc: $32
    db $ec                                        ; $42dd: $ec
    call nz, Call_028_67f7                        ; $42de: $c4 $f7 $67
    ld l, b                                       ; $42e1: $68
    cp l                                          ; $42e2: $bd
    jp nc, $e4c8                                  ; $42e3: $d2 $c8 $e4

    ld a, c                                       ; $42e6: $79
    dec d                                         ; $42e7: $15
    or [hl]                                       ; $42e8: $b6
    dec bc                                        ; $42e9: $0b
    ld [hl], e                                    ; $42ea: $73
    ld a, $d7                                     ; $42eb: $3e $d7
    ld c, c                                       ; $42ed: $49
    cp a                                          ; $42ee: $bf
    ld c, c                                       ; $42ef: $49
    or e                                          ; $42f0: $b3
    ld d, e                                       ; $42f1: $53
    ld b, d                                       ; $42f2: $42
    inc de                                        ; $42f3: $13
    push af                                       ; $42f4: $f5
    pop de                                        ; $42f5: $d1
    adc [hl]                                      ; $42f6: $8e
    rst $08                                       ; $42f7: $cf
    ld a, c                                       ; $42f8: $79
    xor [hl]                                      ; $42f9: $ae
    cp e                                          ; $42fa: $bb
    and h                                         ; $42fb: $a4
    db $fd                                        ; $42fc: $fd
    nop                                           ; $42fd: $00
    add hl, hl                                    ; $42fe: $29
    ld l, e                                       ; $42ff: $6b
    ld hl, $fced                                  ; $4300: $21 $ed $fc
    sub h                                         ; $4303: $94
    ret c                                         ; $4304: $d8

    db $fc                                        ; $4305: $fc
    ld h, e                                       ; $4306: $63
    ld e, h                                       ; $4307: $5c
    cp c                                          ; $4308: $b9
    pop hl                                        ; $4309: $e1
    inc l                                         ; $430a: $2c
    add e                                         ; $430b: $83
    daa                                           ; $430c: $27
    ld e, a                                       ; $430d: $5f
    sub e                                         ; $430e: $93
    ld b, $61                                     ; $430f: $06 $61
    db $dd                                        ; $4311: $dd
    dec h                                         ; $4312: $25
    db $ed                                        ; $4313: $ed
    rlca                                          ; $4314: $07
    ld c, b                                       ; $4315: $48
    ld e, c                                       ; $4316: $59
    dec bc                                        ; $4317: $0b
    ld l, c                                       ; $4318: $69
    rst $20                                       ; $4319: $e7
    cp e                                          ; $431a: $bb
    halt                                          ; $431b: $76
    pop bc                                        ; $431c: $c1
    dec a                                         ; $431d: $3d
    ld c, e                                       ; $431e: $4b
    xor $23                                       ; $431f: $ee $23
    db $fc                                        ; $4321: $fc
    ld hl, sp+$34                                 ; $4322: $f8 $34
    sub c                                         ; $4324: $91
    xor l                                         ; $4325: $ad
    ld c, c                                       ; $4326: $49
    or e                                          ; $4327: $b3
    ld hl, sp+$2a                                 ; $4328: $f8 $2a
    or h                                          ; $432a: $b4
    ld c, [hl]                                    ; $432b: $4e
    ld a, [$9a4d]                                 ; $432c: $fa $4d $9a
    ld a, h                                       ; $432f: $7c
    ld [hl], l                                    ; $4330: $75
    dec sp                                        ; $4331: $3b
    rrca                                          ; $4332: $0f
    or e                                          ; $4333: $b3
    dec h                                         ; $4334: $25
    jp Jump_028_6bae                              ; $4335: $c3 $ae $6b


    db $fd                                        ; $4338: $fd
    ld b, c                                       ; $4339: $41
    ld c, c                                       ; $433a: $49
    inc de                                        ; $433b: $13
    reti                                          ; $433c: $d9


    jp c, Jump_028_4bbf                           ; $433d: $da $bf $4b

    dec hl                                        ; $4340: $2b
    rla                                           ; $4341: $17
    sub [hl]                                      ; $4342: $96
    or [hl]                                       ; $4343: $b6
    ld a, l                                       ; $4344: $7d
    xor e                                         ; $4345: $ab
    sbc a                                         ; $4346: $9f
    sub a                                         ; $4347: $97
    dec bc                                        ; $4348: $0b
    di                                            ; $4349: $f3
    dec de                                        ; $434a: $1b
    cp $d2                                        ; $434b: $fe $d2
    ld e, $d3                                     ; $434d: $1e $d3
    ld b, $ed                                     ; $434f: $06 $ed
    ld d, h                                       ; $4351: $54
    db $db                                        ; $4352: $db
    ld e, [hl]                                    ; $4353: $5e
    sub e                                         ; $4354: $93
    ld h, [hl]                                    ; $4355: $66
    ld b, c                                       ; $4356: $41
    ld [hl+], a                                   ; $4357: $22
    inc c                                         ; $4358: $0c
    dec a                                         ; $4359: $3d
    adc e                                         ; $435a: $8b
    ld a, [$ae58]                                 ; $435b: $fa $58 $ae
    ld c, c                                       ; $435e: $49
    inc sp                                        ; $435f: $33
    ld e, [hl]                                    ; $4360: $5e
    ret                                           ; $4361: $c9


    cp c                                          ; $4362: $b9
    db $eb                                        ; $4363: $eb
    sbc [hl]                                      ; $4364: $9e
    xor $2f                                       ; $4365: $ee $2f
    ld e, l                                       ; $4367: $5d
    ld sp, $d996                                  ; $4368: $31 $96 $d9
    sub a                                         ; $436b: $97
    ld l, $94                                     ; $436c: $2e $94
    ld h, a                                       ; $436e: $67
    ld c, e                                       ; $436f: $4b
    inc hl                                        ; $4370: $23
    ld d, e                                       ; $4371: $53
    add b                                         ; $4372: $80
    dec de                                        ; $4373: $1b
    ld d, b                                       ; $4374: $50
    ld hl, sp-$1c                                 ; $4375: $f8 $e4
    cp e                                          ; $4377: $bb
    or h                                          ; $4378: $b4
    sub $97                                       ; $4379: $d6 $97
    halt                                          ; $437b: $76
    add $0c                                       ; $437c: $c6 $0c
    sbc d                                         ; $437e: $9a
    reti                                          ; $437f: $d9


    ld d, a                                       ; $4380: $57
    ret nz                                        ; $4381: $c0

    and a                                         ; $4382: $a7
    call nz, $5dd6                                ; $4383: $c4 $d6 $5d
    jp nc, $807e                                  ; $4386: $d2 $7e $80

    sub h                                         ; $4389: $94
    or l                                          ; $438a: $b5
    ld [hl], h                                    ; $438b: $74
    inc h                                         ; $438c: $24
    adc l                                         ; $438d: $8d
    rrca                                          ; $438e: $0f
    sbc [hl]                                      ; $438f: $9e
    ld a, h                                       ; $4390: $7c
    pop hl                                        ; $4391: $e1
    xor a                                         ; $4392: $af
    cp h                                          ; $4393: $bc
    db $fc                                        ; $4394: $fc
    inc a                                         ; $4395: $3c
    rla                                           ; $4396: $17
    cp h                                          ; $4397: $bc
    rst $08                                       ; $4398: $cf
    ld sp, hl                                     ; $4399: $f9
    ld e, h                                       ; $439a: $5c
    daa                                           ; $439b: $27
    db $fd                                        ; $439c: $fd
    ld h, $4d                                     ; $439d: $26 $4d
    cp [hl]                                       ; $439f: $be
    cp d                                          ; $43a0: $ba
    sbc l                                         ; $43a1: $9d
    add a                                         ; $43a2: $87
    add hl, hl                                    ; $43a3: $29
    ld c, h                                       ; $43a4: $4c
    daa                                           ; $43a5: $27
    rst $08                                       ; $43a6: $cf
    xor e                                         ; $43a7: $ab
    jr nc, @-$7a                                  ; $43a8: $30 $84

    ld bc, $e52d                                  ; $43aa: $01 $2d $e5
    ld d, a                                       ; $43ad: $57
    inc d                                         ; $43ae: $14
    and [hl]                                      ; $43af: $a6
    sub c                                         ; $43b0: $91
    rst $10                                       ; $43b1: $d7
    ld b, $d6                                     ; $43b2: $06 $d6
    cp $a7                                        ; $43b4: $fe $a7
    ld a, c                                       ; $43b6: $79
    and $82                                       ; $43b7: $e6 $82
    and a                                         ; $43b9: $a7
    sub a                                         ; $43ba: $97
    inc [hl]                                      ; $43bb: $34
    add b                                         ; $43bc: $80
    sub $9a                                       ; $43bd: $d6 $9a
    sub c                                         ; $43bf: $91
    dec l                                         ; $43c0: $2d
    adc l                                         ; $43c1: $8d
    xor a                                         ; $43c2: $af
    ld c, c                                       ; $43c3: $49
    inc hl                                        ; $43c4: $23
    dec sp                                        ; $43c5: $3b
    sub [hl]                                      ; $43c6: $96
    xor d                                         ; $43c7: $aa
    and [hl]                                      ; $43c8: $a6
    adc d                                         ; $43c9: $8a
    reti                                          ; $43ca: $d9


    ld a, c                                       ; $43cb: $79
    halt                                          ; $43cc: $76
    sub l                                         ; $43cd: $95
    cp e                                          ; $43ce: $bb
    xor $e9                                       ; $43cf: $ee $e9
    cp $82                                        ; $43d1: $fe $82
    jr nc, jr_028_4412                            ; $43d3: $30 $3d

    jp z, $4fcb                                   ; $43d5: $ca $cb $4f

    push hl                                       ; $43d8: $e5
    rst $10                                       ; $43d9: $d7
    and h                                         ; $43da: $a4
    sub c                                         ; $43db: $91
    reti                                          ; $43dc: $d9


    add hl, hl                                    ; $43dd: $29
    and c                                         ; $43de: $a1
    adc c                                         ; $43df: $89
    ld a, [bc]                                    ; $43e0: $0a
    call c, Call_028_4f75                         ; $43e1: $dc $75 $4f
    rst $30                                       ; $43e4: $f7
    rla                                           ; $43e5: $17
    or h                                          ; $43e6: $b4
    sbc l                                         ; $43e7: $9d
    sub d                                         ; $43e8: $92
    db $fc                                        ; $43e9: $fc
    ld [c], a                                     ; $43ea: $e2
    xor e                                         ; $43eb: $ab
    push af                                       ; $43ec: $f5
    rla                                           ; $43ed: $17
    ld [hl], $4b                                  ; $43ee: $36 $4b
    db $db                                        ; $43f0: $db
    cp [hl]                                       ; $43f1: $be
    push de                                       ; $43f2: $d5
    inc hl                                        ; $43f3: $23
    inc c                                         ; $43f4: $0c
    sub [hl]                                      ; $43f5: $96
    dec b                                         ; $43f6: $05
    jp hl                                         ; $43f7: $e9


    di                                            ; $43f8: $f3
    ld a, [c]                                     ; $43f9: $f2
    pop hl                                        ; $43fa: $e1
    inc [hl]                                      ; $43fb: $34
    add $2e                                       ; $43fc: $c6 $2e
    or e                                          ; $43fe: $b3
    call nc, $8442                                ; $43ff: $d4 $42 $84
    ld d, b                                       ; $4402: $50
    ld d, $ee                                     ; $4403: $16 $ee
    ld e, d                                       ; $4405: $5a
    ld d, l                                       ; $4406: $55
    and h                                         ; $4407: $a4
    ld b, c                                       ; $4408: $41
    or e                                          ; $4409: $b3
    call z, $9a4b                                 ; $440a: $cc $4b $9a
    and b                                         ; $440d: $a0
    ld hl, sp+$2c                                 ; $440e: $f8 $2c
    dec [hl]                                      ; $4410: $35
    or [hl]                                       ; $4411: $b6

jr_028_4412:
    or $cf                                        ; $4412: $f6 $cf
    set 1, a                                      ; $4414: $cb $cf
    cp [hl]                                       ; $4416: $be
    ld [bc], a                                    ; $4417: $02
    cp [hl]                                       ; $4418: $be
    and h                                         ; $4419: $a4
    rra                                           ; $441a: $1f
    ld c, e                                       ; $441b: $4b
    ld a, d                                       ; $441c: $7a
    add h                                         ; $441d: $84
    ld bc, $24a7                                  ; $441e: $01 $a7 $24
    ld [hl], a                                    ; $4421: $77
    xor l                                         ; $4422: $ad
    ld a, [hl+]                                   ; $4423: $2a
    jp nc, Jump_028_578c                          ; $4424: $d2 $8c $57

    sbc b                                         ; $4427: $98
    ld a, l                                       ; $4428: $7d
    dec b                                         ; $4429: $05
    ld a, h                                       ; $442a: $7c
    ld c, d                                       ; $442b: $4a
    ld l, h                                       ; $442c: $6c
    ld b, c                                       ; $442d: $41
    ld a, [$d074]                                 ; $442e: $fa $74 $d0
    ld sp, hl                                     ; $4431: $f9
    ld [$9c6a], a                                 ; $4432: $ea $6a $9c
    inc a                                         ; $4435: $3c
    xor a                                         ; $4436: $af
    jp nz, $0610                                  ; $4437: $c2 $10 $06

    dec a                                         ; $443a: $3d
    ccf                                           ; $443b: $3f
    ld b, [hl]                                    ; $443c: $46
    xor $58                                       ; $443d: $ee $58
    adc $b2                                       ; $443f: $ce $b2
    ldh [$7d], a                                  ; $4441: $e0 $7d
    sub b                                         ; $4443: $90
    pop hl                                        ; $4444: $e1
    ld a, e                                       ; $4445: $7b
    cp c                                          ; $4446: $b9
    inc d                                         ; $4447: $14
    call z, Call_028_594e                         ; $4448: $cc $4e $59
    ei                                            ; $444b: $fb
    cpl                                           ; $444c: $2f
    dec b                                         ; $444d: $05
    add e                                         ; $444e: $83
    xor a                                         ; $444f: $af
    sub d                                         ; $4450: $92
    ld e, b                                       ; $4451: $58
    ld d, a                                       ; $4452: $57
    inc c                                         ; $4453: $0c
    dec a                                         ; $4454: $3d
    ccf                                           ; $4455: $3f
    ld b, [hl]                                    ; $4456: $46
    xor $e0                                       ; $4457: $ee $e0
    ld d, d                                       ; $4459: $52
    push af                                       ; $445a: $f5
    ld l, e                                       ; $445b: $6b
    jp nc, Jump_028_4eac                          ; $445c: $d2 $ac $4e

    ret                                           ; $445f: $c9


    rrca                                          ; $4460: $0f
    ld [hl], d                                    ; $4461: $72
    and c                                         ; $4462: $a1
    xor c                                         ; $4463: $a9
    jp z, $9db4                                   ; $4464: $ca $b4 $9d

    add $d7                                       ; $4467: $c6 $d7
    ld a, [$ced2]                                 ; $4469: $fa $d2 $ce
    sbc b                                         ; $446c: $98
    ld b, c                                       ; $446d: $41
    jp $935d                                      ; $446e: $c3 $5d $93


    ld h, [hl]                                    ; $4471: $66
    ld d, b                                       ; $4472: $50
    jp nc, Jump_000_3644                          ; $4473: $d2 $44 $36

    sub [hl]                                      ; $4476: $96
    ld d, e                                       ; $4477: $53
    jp c, $a873                                   ; $4478: $da $73 $a8

    ld a, $c6                                     ; $447b: $3e $c6
    daa                                           ; $447d: $27
    rst $18                                       ; $447e: $df
    ld a, c                                       ; $447f: $79
    reti                                          ; $4480: $d9


    ld e, $ff                                     ; $4481: $1e $ff
    rst $08                                       ; $4483: $cf
    ld l, $05                                     ; $4484: $2e $05
    di                                            ; $4486: $f3
    ld a, [c]                                     ; $4487: $f2
    dec bc                                        ; $4488: $0b
    ld d, h                                       ; $4489: $54
    ret c                                         ; $448a: $d8

    inc de                                        ; $448b: $13
    ld e, d                                       ; $448c: $5a
    rst $08                                       ; $448d: $cf
    and h                                         ; $448e: $a4
    sbc d                                         ; $448f: $9a
    rst $08                                       ; $4490: $cf
    adc e                                         ; $4491: $8b
    ld a, [$3fda]                                 ; $4492: $fa $da $3f
    db $db                                        ; $4495: $db

jr_028_4496:
    ld d, b                                       ; $4496: $50
    ld d, a                                       ; $4497: $57
    inc c                                         ; $4498: $0c
    ld b, a                                       ; $4499: $47
    dec de                                        ; $449a: $1b
    ld b, a                                       ; $449b: $47
    ld [$dd61], sp                                ; $449c: $08 $61 $dd
    sub d                                         ; $449f: $92
    ld [bc], a                                    ; $44a0: $02
    ld d, c                                       ; $44a1: $51
    scf                                           ; $44a2: $37
    ld d, c                                       ; $44a3: $51
    db $fd                                        ; $44a4: $fd
    ld h, $01                                     ; $44a5: $26 $01
    ld [hl], a                                    ; $44a7: $77
    xor l                                         ; $44a8: $ad
    cpl                                           ; $44a9: $2f
    pop hl                                        ; $44aa: $e1
    ld c, l                                       ; $44ab: $4d
    ld a, d                                       ; $44ac: $7a
    add h                                         ; $44ad: $84
    ld bc, $9596                                  ; $44ae: $01 $96 $95
    db $ec                                        ; $44b1: $ec
    db $fc                                        ; $44b2: $fc
    inc l                                         ; $44b3: $2c
    or l                                          ; $44b4: $b5
    ld [hl], b                                    ; $44b5: $70
    sub h                                         ; $44b6: $94
    ld a, $8d                                     ; $44b7: $3e $8d
    pop af                                        ; $44b9: $f1
    dec h                                         ; $44ba: $25
    cp b                                          ; $44bb: $b8
    push de                                       ; $44bc: $d5
    inc a                                         ; $44bd: $3c
    and a                                         ; $44be: $a7
    call nc, $ed2c                                ; $44bf: $d4 $2c $ed
    ld a, c                                       ; $44c2: $79
    ld a, c                                       ; $44c3: $79
    ld hl, sp-$6b                                 ; $44c4: $f8 $95
    sub a                                         ; $44c6: $97
    ld [hl], $20                                  ; $44c7: $36 $20
    inc c                                         ; $44c9: $0c
    dec a                                         ; $44ca: $3d
    res 5, l                                      ; $44cb: $cb $ad
    jp z, $d8dc                                   ; $44cd: $ca $dc $d8

    ld c, $4b                                     ; $44d0: $0e $4b
    ld a, e                                       ; $44d2: $7b
    add c                                         ; $44d3: $81
    jr z, jr_028_4496                             ; $44d4: $28 $c0

    ld d, h                                       ; $44d6: $54
    ld a, [hl]                                    ; $44d7: $7e
    ld e, [hl]                                    ; $44d8: $5e
    ld a, [hl]                                    ; $44d9: $7e
    ldh [$a2], a                                  ; $44da: $e0 $a2
    inc d                                         ; $44dc: $14
    db $fc                                        ; $44dd: $fc
    sub d                                         ; $44de: $92
    ld e, $ba                                     ; $44df: $1e $ba
    ld h, d                                       ; $44e1: $62
    daa                                           ; $44e2: $27
    scf                                           ; $44e3: $37
    dec bc                                        ; $44e4: $0b
    ld b, h                                       ; $44e5: $44
    ld l, c                                       ; $44e6: $69
    ld b, $9e                                     ; $44e7: $06 $9e
    call $1d73                                    ; $44e9: $cd $73 $1d
    db $e3                                        ; $44ec: $e3
    add e                                         ; $44ed: $83
    inc c                                         ; $44ee: $0c
    ld a, a                                       ; $44ef: $7f
    ld l, c                                       ; $44f0: $69
    rst $08                                       ; $44f1: $cf
    set 0, e                                      ; $44f2: $cb $c3
    xor a                                         ; $44f4: $af
    cp h                                          ; $44f5: $bc
    or h                                          ; $44f6: $b4
    ld h, c                                       ; $44f7: $61
    sub a                                         ; $44f8: $97
    ld b, $69                                     ; $44f9: $06 $69
    ld a, [hl-]                                   ; $44fb: $3a
    ld [$9603], sp                                ; $44fc: $08 $03 $96
    ld a, c                                       ; $44ff: $79
    cp c                                          ; $4500: $b9
    ld d, h                                       ; $4501: $54
    sbc a                                         ; $4502: $9f
    sub a                                         ; $4503: $97
    sub a                                         ; $4504: $97
    sbc a                                         ; $4505: $9f
    jp z, Jump_028_4ecf                           ; $4506: $ca $cf $4e

    inc hl                                        ; $4509: $23
    ld [hl], e                                    ; $450a: $73
    ld h, e                                       ; $450b: $63
    dec sp                                        ; $450c: $3b
    inc l                                         ; $450d: $2c
    db $ed                                        ; $450e: $ed
    dec b                                         ; $450f: $05
    and d                                         ; $4510: $a2
    nop                                           ; $4511: $00
    di                                            ; $4512: $f3
    and d                                         ; $4513: $a2
    cp [hl]                                       ; $4514: $be
    and d                                         ; $4515: $a2
    sub $df                                       ; $4516: $d6 $df
    and l                                         ; $4518: $a5
    ld b, b                                       ; $4519: $40

jr_028_451a:
    sbc [hl]                                      ; $451a: $9e
    db $dd                                        ; $451b: $dd
    daa                                           ; $451c: $27
    rlca                                          ; $451d: $07
    xor $da                                       ; $451e: $ee $da

Call_028_4520:
    add $67                                       ; $4520: $c6 $67
    xor c                                         ; $4522: $a9
    add l                                         ; $4523: $85
    and e                                         ; $4524: $a3
    db $f4                                        ; $4525: $f4
    add c                                         ; $4526: $81
    sub c                                         ; $4527: $91
    ld b, a                                       ; $4528: $47
    jr @-$68                                      ; $4529: $18 $96

    or l                                          ; $452b: $b5
    rst $18                                       ; $452c: $df
    rst $20                                       ; $452d: $e7
    push hl                                       ; $452e: $e5
    rla                                           ; $452f: $17
    xor b                                         ; $4530: $a8
    or b                                          ; $4531: $b0
    and a                                         ; $4532: $a7
    dec d                                         ; $4533: $15
    add l                                         ; $4534: $85
    sub l                                         ; $4535: $95
    sub a                                         ; $4536: $97
    ld [hl], $ec                                  ; $4537: $36 $ec
    jp nc, $23ae                                  ; $4539: $d2 $ae $23

    inc c                                         ; $453c: $0c
    xor l                                         ; $453d: $ad
    rra                                           ; $453e: $1f
    ld h, e                                       ; $453f: $63
    ld [hl], d                                    ; $4540: $72
    ld [hl], a                                    ; $4541: $77
    jp z, Jump_028_6f5b                           ; $4542: $ca $5b $6f

    adc h                                         ; $4545: $8c
    adc a                                         ; $4546: $8f
    jr nc, jr_028_4576                            ; $4547: $30 $2d

    and l                                         ; $4549: $a5
    ld [hl], h                                    ; $454a: $74
    ld e, c                                       ; $454b: $59
    db $eb                                        ; $454c: $eb
    rst $10                                       ; $454d: $d7
    ld h, b                                       ; $454e: $60
    db $10                                        ; $454f: $10
    rst $38                                       ; $4550: $ff
    dec sp                                        ; $4551: $3b
    sub a                                         ; $4552: $97
    ld [bc], a                                    ; $4553: $02
    add h                                         ; $4554: $84
    ld bc, $e4a7                                  ; $4555: $01 $a7 $e4
    jp z, Jump_000_02ef                           ; $4558: $ca $ef $02

    push de                                       ; $455b: $d5
    sbc h                                         ; $455c: $9c
    cp e                                          ; $455d: $bb
    ld a, [c]                                     ; $455e: $f2
    dec [hl]                                      ; $455f: $35
    jr jr_028_451a                                ; $4560: $18 $b8

    ld [de], a                                    ; $4562: $12
    cp e                                          ; $4563: $bb
    inc d                                         ; $4564: $14
    call z, $cbcb                                 ; $4565: $cc $cb $cb
    cpl                                           ; $4568: $2f
    ld h, [hl]                                    ; $4569: $66
    sub $2f                                       ; $456a: $d6 $2f
    dec b                                         ; $456c: $05
    ld d, e                                       ; $456d: $53
    ld e, a                                       ; $456e: $5f
    ld hl, sp+$08                                 ; $456f: $f8 $08
    inc bc                                        ; $4571: $03
    and a                                         ; $4572: $a7
    and h                                         ; $4573: $a4
    rst $28                                       ; $4574: $ef
    sub h                                         ; $4575: $94

jr_028_4576:
    or a                                          ; $4576: $b7
    sbc $18                                       ; $4577: $de $18
    sbc a                                         ; $4579: $9f
    cp e                                          ; $457a: $bb
    xor $92                                       ; $457b: $ee $92
    or $03                                        ; $457d: $f6 $03
    and h                                         ; $457f: $a4
    db $ec                                        ; $4580: $ec
    add sp, $4b                                   ; $4581: $e8 $4b
    inc b                                         ; $4583: $04
    ld e, l                                       ; $4584: $5d
    jr nc, jr_028_45ee                            ; $4585: $30 $67

    ld [hl], e                                    ; $4587: $73
    db $e4                                        ; $4588: $e4
    ret z                                         ; $4589: $c8

    sub c                                         ; $458a: $91
    inc hl                                        ; $458b: $23
    ld b, a                                       ; $458c: $47
    adc [hl]                                      ; $458d: $8e
    inc e                                         ; $458e: $1c
    ld de, $0842                                  ; $458f: $11 $42 $08
    ld h, c                                       ; $4592: $61
    dec l                                         ; $4593: $2d
    dec h                                         ; $4594: $25
    ld c, l                                       ; $4595: $4d
    ld h, h                                       ; $4596: $64
    ld d, h                                       ; $4597: $54
    di                                            ; $4598: $f3
    pop af                                        ; $4599: $f1
    ccf                                           ; $459a: $3f
    ld e, [hl]                                    ; $459b: $5e
    db $eb                                        ; $459c: $eb
    cp a                                          ; $459d: $bf
    ld [hl], d                                    ; $459e: $72
    jp Jump_028_4e99                              ; $459f: $c3 $99 $4e


    ld d, a                                       ; $45a2: $57
    inc c                                         ; $45a3: $0c
    sub [hl]                                      ; $45a4: $96
    or c                                          ; $45a5: $b1
    and h                                         ; $45a6: $a4
    sbc d                                         ; $45a7: $9a
    xor a                                         ; $45a8: $af
    ld c, [hl]                                    ; $45a9: $4e
    ret                                           ; $45aa: $c9


    rst $28                                       ; $45ab: $ef
    jp c, $d26b                                   ; $45ac: $da $6b $d2

    xor h                                         ; $45af: $ac
    db $db                                        ; $45b0: $db
    ld d, c                                       ; $45b1: $51
    and a                                         ; $45b2: $a7
    adc h                                         ; $45b3: $8c
    rst $10                                       ; $45b4: $d7
    ld a, [$74cf]                                 ; $45b5: $fa $cf $74
    and [hl]                                      ; $45b8: $a6
    dec bc                                        ; $45b9: $0b
    ld c, d                                       ; $45ba: $4a
    add d                                         ; $45bb: $82
    and e                                         ; $45bc: $a3
    ld e, c                                       ; $45bd: $59
    db $ec                                        ; $45be: $ec
    dec [hl]                                      ; $45bf: $35
    ld l, c                                       ; $45c0: $69
    and $72                                       ; $45c1: $e6 $72
    sbc a                                         ; $45c3: $9f
    call Call_028_5073                            ; $45c4: $cd $73 $50
    or h                                          ; $45c7: $b4
    cp $2b                                        ; $45c8: $fe $2b
    scf                                           ; $45ca: $37
    db $e4                                        ; $45cb: $e4
    xor [hl]                                      ; $45cc: $ae
    ld c, c                                       ; $45cd: $49
    inc hl                                        ; $45ce: $23

jr_028_45cf:
    dec hl                                        ; $45cf: $2b
    ld c, d                                       ; $45d0: $4a
    ld l, h                                       ; $45d1: $6c
    pop hl                                        ; $45d2: $e1
    dec c                                         ; $45d3: $0d
    adc d                                         ; $45d4: $8a
    cpl                                           ; $45d5: $2f
    ret z                                         ; $45d6: $c8

    ret                                           ; $45d7: $c9


    dec c                                         ; $45d8: $0d
    adc d                                         ; $45d9: $8a
    rst $08                                       ; $45da: $cf
    adc e                                         ; $45db: $8b
    and h                                         ; $45dc: $a4
    add hl, bc                                    ; $45dd: $09
    ld a, [bc]                                    ; $45de: $0a
    jp nz, Jump_028_7367                          ; $45df: $c2 $67 $73

    db $e4                                        ; $45e2: $e4
    ret z                                         ; $45e3: $c8

    sub c                                         ; $45e4: $91
    inc hl                                        ; $45e5: $23
    ld b, a                                       ; $45e6: $47
    add h                                         ; $45e7: $84
    db $10                                        ; $45e8: $10
    ld b, d                                       ; $45e9: $42
    ld c, b                                       ; $45ea: $48
    adc c                                         ; $45eb: $89
    ld c, l                                       ; $45ec: $4d
    ld h, c                                       ; $45ed: $61

jr_028_45ee:
    ld e, [hl]                                    ; $45ee: $5e
    ld a, [hl]                                    ; $45ef: $7e
    db $fd                                        ; $45f0: $fd
    dec e                                         ; $45f1: $1d
    ld [c], a                                     ; $45f2: $e2
    ld h, l                                       ; $45f3: $65
    push de                                       ; $45f4: $d5
    sub e                                         ; $45f5: $93
    dec de                                        ; $45f6: $1b
    ld l, c                                       ; $45f7: $69
    add $2b                                       ; $45f8: $c6 $2b
    xor h                                         ; $45fa: $ac
    jp z, Jump_028_52f0                           ; $45fb: $ca $f0 $52

    jr nc, jr_028_45cf                            ; $45fe: $30 $cf

    jp hl                                         ; $4600: $e9


    xor d                                         ; $4601: $aa
    sbc b                                         ; $4602: $98
    ldh a, [$dc]                                  ; $4603: $f0 $dc
    pop af                                        ; $4605: $f1
    ccf                                           ; $4606: $3f
    halt                                          ; $4607: $76
    add hl, de                                    ; $4608: $19
    push de                                       ; $4609: $d5
    ld a, h                                       ; $460a: $7c
    pop hl                                        ; $460b: $e1
    dec h                                         ; $460c: $25
    ld [hl], $5d                                  ; $460d: $36 $5d
    ei                                            ; $460f: $fb
    ld a, [hl-]                                   ; $4610: $3a
    ld b, d                                       ; $4611: $42
    xor b                                         ; $4612: $a8
    ld d, l                                       ; $4613: $55
    ld b, l                                       ; $4614: $45
    sbc d                                         ; $4615: $9a
    ld [hl], l                                    ; $4616: $75
    ld c, a                                       ; $4617: $4f
    rst $30                                       ; $4618: $f7
    sub a                                         ; $4619: $97
    ld l, $6b                                     ; $461a: $2e $6b
    ret                                           ; $461c: $c9


    pop de                                        ; $461d: $d1
    xor l                                         ; $461e: $ad
    ld a, [hl]                                    ; $461f: $7e
    sbc [hl]                                      ; $4620: $9e
    or e                                          ; $4621: $b3
    cpl                                           ; $4622: $2f
    ld l, c                                       ; $4623: $69
    adc h                                         ; $4624: $8c
    call Call_028_5a8a                            ; $4625: $cd $8a $5a
    ld a, a                                       ; $4628: $7f
    ld c, l                                       ; $4629: $4d
    sbc d                                         ; $462a: $9a
    ld e, l                                       ; $462b: $5d
    ld e, d                                       ; $462c: $5a
    dec d                                         ; $462d: $15
    dec d                                         ; $462e: $15
    nop                                           ; $462f: $00
    call $f932                                    ; $4630: $cd $32 $f9
    ldh a, [$c3]                                  ; $4633: $f0 $c3
    or $cb                                        ; $4635: $f6 $cb
    sbc d                                         ; $4637: $9a
    inc [hl]                                      ; $4638: $34
    ld [hl-], a                                   ; $4639: $32
    ld e, e                                       ; $463a: $5b
    cp l                                          ; $463b: $bd
    cp h                                          ; $463c: $bc
    call z, $d2fa                                 ; $463d: $cc $fa $d2
    adc h                                         ; $4640: $8c
    rst $38                                       ; $4641: $ff
    jr @+$13                                      ; $4642: $18 $11

    ld b, $3d                                     ; $4644: $06 $3d
    adc d                                         ; $4646: $8a
    ld d, d                                       ; $4647: $52
    ld a, l                                       ; $4648: $7d
    ld c, l                                       ; $4649: $4d
    ld a, [de]                                    ; $464a: $1a
    xor $ba                                       ; $464b: $ee $ba
    ld c, e                                       ; $464d: $4b
    jp c, $900f                                   ; $464e: $da $0f $90

jr_028_4651:
    or d                                          ; $4651: $b2
    and e                                         ; $4652: $a3
    cpl                                           ; $4653: $2f
    ld de, $0c20                                  ; $4654: $11 $20 $0c
    rst $00                                       ; $4657: $c7
    db $e4                                        ; $4658: $e4
    sbc d                                         ; $4659: $9a
    inc [hl]                                      ; $465a: $34
    xor e                                         ; $465b: $ab
    ld [hl-], a                                   ; $465c: $32
    add $af                                       ; $465d: $c6 $af
    ld a, h                                       ; $465f: $7c
    rst $00                                       ; $4660: $c7
    ld l, c                                       ; $4661: $69
    sbc b                                         ; $4662: $98
    ld b, $d6                                     ; $4663: $06 $d6
    di                                            ; $4665: $f3
    ld a, d                                       ; $4666: $7a
    ld d, l                                       ; $4667: $55
    ld e, $a6                                     ; $4668: $1e $a6
    call nz, $f3d6                                ; $466a: $c4 $d6 $f3
    ld [hl], d                                    ; $466d: $72
    ld d, h                                       ; $466e: $54
    ld h, c                                       ; $466f: $61
    or b                                          ; $4670: $b0
    ld l, [hl]                                    ; $4671: $6e
    ld a, [hl+]                                   ; $4672: $2a
    inc c                                         ; $4673: $0c
    cp b                                          ; $4674: $b8
    ld l, e                                       ; $4675: $6b
    ld d, l                                       ; $4676: $55
    sub c                                         ; $4677: $91
    and [hl]                                      ; $4678: $a6
    db $eb                                        ; $4679: $eb
    ld a, d                                       ; $467a: $7a
    and l                                         ; $467b: $a5
    sub c                                         ; $467c: $91
    reti                                          ; $467d: $d9


    ld [$65e5], a                                 ; $467e: $ea $e5 $65
    db $ec                                        ; $4681: $ec
    ld [hl-], a                                   ; $4682: $32
    inc [hl]                                      ; $4683: $34
    res 2, d                                      ; $4684: $cb $92
    xor d                                         ; $4686: $aa
    ld e, a                                       ; $4687: $5f
    and b                                         ; $4688: $a0
    sub $5f                                       ; $4689: $d6 $5f
    cp c                                          ; $468b: $b9
    pop hl                                        ; $468c: $e1
    ld [hl], h                                    ; $468d: $74
    db $dd                                        ; $468e: $dd
    xor [hl]                                      ; $468f: $ae
    ld d, h                                       ; $4690: $54
    cp a                                          ; $4691: $bf
    ld c, d                                       ; $4692: $4a
    add l                                         ; $4693: $85
    and c                                         ; $4694: $a1
    or l                                          ; $4695: $b5
    cp $3a                                        ; $4696: $fe $3a

Jump_028_4698:
    ld [hl], d                                    ; $4698: $72
    add hl, sp                                    ; $4699: $39
    ld a, $db                                     ; $469a: $3e $db
    push af                                       ; $469c: $f5
    sbc l                                         ; $469d: $9d
    ld l, a                                       ; $469e: $6f
    xor [hl]                                      ; $469f: $ae
    rst $38                                       ; $46a0: $ff
    jp z, Jump_028_4a0d                           ; $46a1: $ca $0d $4a

    ld l, h                                       ; $46a4: $6c
    ret nc                                        ; $46a5: $d0

    ld a, d                                       ; $46a6: $7a
    ld h, $b1                                     ; $46a7: $26 $b1
    sub a                                         ; $46a9: $97
    pop af                                        ; $46aa: $f1
    ld b, l                                       ; $46ab: $45
    db $fd                                        ; $46ac: $fd
    xor l                                         ; $46ad: $ad
    cpl                                           ; $46ae: $2f
    dec hl                                        ; $46af: $2b
    jp c, Jump_000_3ce9                           ; $46b0: $da $e9 $3c

    dec a                                         ; $46b3: $3d
    sbc e                                         ; $46b4: $9b
    rst $20                                       ; $46b5: $e7
    xor [hl]                                      ; $46b6: $ae
    inc hl                                        ; $46b7: $23
    add h                                         ; $46b8: $84
    jr nc, jr_028_4651                            ; $46b9: $30 $96

    ret                                           ; $46bb: $c9


    add a                                         ; $46bc: $87
    rra                                           ; $46bd: $1f
    or [hl]                                       ; $46be: $b6
    ld e, a                                       ; $46bf: $5f
    and $1a                                       ; $46c0: $e6 $1a
    db $eb                                        ; $46c2: $eb
    sub a                                         ; $46c3: $97
    add d                                         ; $46c4: $82
    ld a, c                                       ; $46c5: $79
    ld c, $32                                     ; $46c6: $0e $32
    db $fc                                        ; $46c8: $fc
    and h                                         ; $46c9: $a4
    rst $18                                       ; $46ca: $df
    and l                                         ; $46cb: $a5
    dec e                                         ; $46cc: $1d
    ld [hl], e                                    ; $46cd: $73
    dec [hl]                                      ; $46ce: $35
    ld c, b                                       ; $46cf: $48
    jp c, $3151                                   ; $46d0: $da $51 $31

    ld a, [hl]                                    ; $46d3: $7e
    inc sp                                        ; $46d4: $33
    cp [hl]                                       ; $46d5: $be
    db $e4                                        ; $46d6: $e4
    ld a, b                                       ; $46d7: $78
    add l                                         ; $46d8: $85
    cp c                                          ; $46d9: $b9
    inc [hl]                                      ; $46da: $34
    sub a                                         ; $46db: $97
    add d                                         ; $46dc: $82
    ld a, c                                       ; $46dd: $79
    ld c, $3e                                     ; $46de: $0e $3e
    add $79                                       ; $46e0: $c6 $79
    ld d, c                                       ; $46e2: $51
    ld e, a                                       ; $46e3: $5f
    and l                                         ; $46e4: $a5
    jp nz, $0610                                  ; $46e5: $c2 $10 $06

    cp l                                          ; $46e8: $bd
    jp nc, Jump_000_258c                          ; $46e9: $d2 $8c $25

    push de                                       ; $46ec: $d5
    ld a, h                                       ; $46ed: $7c
    and b                                         ; $46ee: $a0
    ld c, l                                       ; $46ef: $4d
    sub a                                         ; $46f0: $97
    xor l                                         ; $46f1: $ad
    ei                                            ; $46f2: $fb
    ld c, e                                       ; $46f3: $4b
    pop de                                        ; $46f4: $d1
    ld c, $ec                                     ; $46f5: $0e $ec
    ld a, [$8578]                                 ; $46f7: $fa $78 $85
    cp l                                          ; $46fa: $bd
    push af                                       ; $46fb: $f5
    ld l, c                                       ; $46fc: $69
    ld e, [hl]                                    ; $46fd: $5e
    ld a, [hl]                                    ; $46fe: $7e
    and b                                         ; $46ff: $a0
    pop hl                                        ; $4700: $e1
    cpl                                           ; $4701: $2f
    jp hl                                         ; $4702: $e9


    pop de                                        ; $4703: $d1
    inc l                                         ; $4704: $2c
    or $2c                                        ; $4705: $f6 $2c
    xor e                                         ; $4707: $ab
    jp nc, Jump_000_3644                          ; $4708: $d2 $44 $36

    ld hl, sp-$21                                 ; $470b: $f8 $df
    ld [hl], l                                    ; $470d: $75
    xor $2c                                       ; $470e: $ee $2c
    xor e                                         ; $4710: $ab
    jp nc, $b644                                  ; $4711: $d2 $44 $b6

    or $0f                                        ; $4714: $f6 $0f
    adc h                                         ; $4716: $8c
    inc a                                         ; $4717: $3c
    jp nz, $d33d                                  ; $4718: $c2 $3d $d3

    ld b, h                                       ; $471b: $44
    or [hl]                                       ; $471c: $b6
    ld h, $cd                                     ; $471d: $26 $cd
    ld [c], a                                     ; $471f: $e2
    xor l                                         ; $4720: $ad
    rst $38                                       ; $4721: $ff
    jp nz, $e79f                                  ; $4722: $c2 $9f $e7

    add d                                         ; $4725: $82
    rst $30                                       ; $4726: $f7
    ld e, l                                       ; $4727: $5d
    sbc a                                         ; $4728: $9f
    sbc l                                         ; $4729: $9d
    or d                                          ; $472a: $b2
    ld h, $4d                                     ; $472b: $26 $4d
    ld d, a                                       ; $472d: $57
    inc c                                         ; $472e: $0c
    rst $00                                       ; $472f: $c7
    ld [hl], d                                    ; $4730: $72
    xor b                                         ; $4731: $a8
    ld a, $c6                                     ; $4732: $3e $c6
    daa                                           ; $4734: $27
    rst $18                                       ; $4735: $df
    ld h, l                                       ; $4736: $65
    xor a                                         ; $4737: $af
    ld l, b                                       ; $4738: $68

jr_028_4739:
    xor l                                         ; $4739: $ad
    ld a, [de]                                    ; $473a: $1a
    db $ed                                        ; $473b: $ed

Call_028_473c:
    ld sp, hl                                     ; $473c: $f9
    ld c, e                                       ; $473d: $4b
    cp b                                          ; $473e: $b8
    or $07                                        ; $473f: $f6 $07
    sub a                                         ; $4741: $97
    ld h, b                                       ; $4742: $60
    sbc [hl]                                      ; $4743: $9e
    ld c, h                                       ; $4744: $4c
    dec de                                        ; $4745: $1b
    xor $20                                       ; $4746: $ee $20
    rst $10                                       ; $4748: $d7
    and h                                         ; $4749: $a4
    xor c                                         ; $474a: $a9
    ret                                           ; $474b: $c9


    rst $08                                       ; $474c: $cf
    sub [hl]                                      ; $474d: $96
    rst $38                                       ; $474e: $ff
    ld a, c                                       ; $474f: $79
    ld l, $c8                                     ; $4750: $2e $c8
    ld a, c                                       ; $4752: $79
    xor $98                                       ; $4753: $ee $98
    xor e                                         ; $4755: $ab
    ld b, c                                       ; $4756: $41
    jp nc, $8a8e                                  ; $4757: $d2 $8e $8a

    pop af                                        ; $475a: $f1
    dec de                                        ; $475b: $1b
    or h                                          ; $475c: $b4
    ld e, $5a                                     ; $475d: $1e $5a
    rst $38                                       ; $475f: $ff
    ld a, c                                       ; $4760: $79
    cp c                                          ; $4761: $b9
    or b                                          ; $4762: $b0
    adc [hl]                                      ; $4763: $8e
    ld [bc], a                                    ; $4764: $02
    call z, $ad73                                 ; $4765: $cc $73 $ad
    ld a, [de]                                    ; $4768: $1a
    ret z                                         ; $4769: $c8

    ld h, l                                       ; $476a: $65

jr_028_476b:
    call c, $b129                                 ; $476b: $dc $29 $b1
    sub l                                         ; $476e: $95
    xor a                                         ; $476f: $af
    push bc                                       ; $4770: $c5
    cp b                                          ; $4771: $b8
    add a                                         ; $4772: $87
    ld a, [hl+]                                   ; $4773: $2a
    push bc                                       ; $4774: $c5
    rst $10                                       ; $4775: $d7
    and h                                         ; $4776: $a4
    sbc c                                         ; $4777: $99
    sub a                                         ; $4778: $97
    sub a                                         ; $4779: $97
    ld b, a                                       ; $477a: $47
    db $eb                                        ; $477b: $eb
    ld e, c                                       ; $477c: $59
    call nc, Call_000_2bc7                        ; $477d: $d4 $c7 $2b
    xor h                                         ; $4780: $ac
    ld c, c                                       ; $4781: $49
    inc hl                                        ; $4782: $23

jr_028_4783:
    inc hl                                        ; $4783: $23
    dec c                                         ; $4784: $0d
    ld a, a                                       ; $4785: $7f
    ld a, [de]                                    ; $4786: $1a
    add sp, -$5b                                  ; $4787: $e8 $a5
    xor [hl]                                      ; $4789: $ae
    jr jr_028_4739                                ; $478a: $18 $ad

    ld a, [hl+]                                   ; $478c: $2a
    jp nc, Jump_028_7bac                          ; $478d: $d2 $ac $7b

    cp d                                          ; $4790: $ba
    cp a                                          ; $4791: $bf
    jr nz, jr_028_47a0                            ; $4792: $20 $0c

    cp l                                          ; $4794: $bd
    ld e, $b8                                     ; $4795: $1e $b8
    ld l, e                                       ; $4797: $6b
    ld d, l                                       ; $4798: $55
    sub c                                         ; $4799: $91
    ld h, [hl]                                    ; $479a: $66
    db $dd                                        ; $479b: $dd
    db $d3                                        ; $479c: $d3
    db $fd                                        ; $479d: $fd
    dec b                                         ; $479e: $05
    db $ed                                        ; $479f: $ed

jr_028_47a0:
    sbc b                                         ; $47a0: $98
    adc a                                         ; $47a1: $8f
    scf                                           ; $47a2: $37
    jr z, jr_028_4813                             ; $47a3: $28 $6e

    sbc e                                         ; $47a5: $9b
    cp b                                          ; $47a6: $b8
    xor b                                         ; $47a7: $a8
    adc h                                         ; $47a8: $8c
    dec sp                                        ; $47a9: $3b
    bit 7, b                                      ; $47aa: $cb $78
    add l                                         ; $47ac: $85
    ld b, c                                       ; $47ad: $41
    rst $20                                       ; $47ae: $e7
    or l                                          ; $47af: $b5
    ld a, [hl]                                    ; $47b0: $7e
    add hl, hl                                    ; $47b1: $29
    sbc b                                         ; $47b2: $98
    rst $20                                       ; $47b3: $e7
    jp z, $770d                                   ; $47b4: $ca $0d $77

    sbc [hl]                                      ; $47b7: $9e
    ld bc, $251f                                  ; $47b8: $01 $1f $25
    adc a                                         ; $47bb: $8f
    jr nc, jr_028_476b                            ; $47bc: $30 $ad

    ld a, [de]                                    ; $47be: $1a
    ret z                                         ; $47bf: $c8

    ld h, l                                       ; $47c0: $65
    ld e, l                                       ; $47c1: $5d
    ld h, [hl]                                    ; $47c2: $66
    add hl, de                                    ; $47c3: $19
    xor a                                         ; $47c4: $af
    or b                                          ; $47c5: $b0
    di                                            ; $47c6: $f3
    inc c                                         ; $47c7: $0c
    ld hl, sp-$56                                 ; $47c8: $f8 $aa
    inc c                                         ; $47ca: $0c
    cpl                                           ; $47cb: $2f
    dec b                                         ; $47cc: $05
    di                                            ; $47cd: $f3
    sbc h                                         ; $47ce: $9c
    ld a, l                                       ; $47cf: $7d
    adc c                                         ; $47d0: $89
    xor l                                         ; $47d1: $ad
    ld c, c                                       ; $47d2: $49
    add e                                         ; $47d3: $83
    jr nc, jr_028_4783                            ; $47d4: $30 $ad

    rra                                           ; $47d6: $1f
    ld h, e                                       ; $47d7: $63
    ld [hl], d                                    ; $47d8: $72
    rst $10                                       ; $47d9: $d7
    xor d                                         ; $47da: $aa
    ld [hl+], a                                   ; $47db: $22
    dec c                                         ; $47dc: $0d
    sbc d                                         ; $47dd: $9a
    and l                                         ; $47de: $a5
    ld d, $2e                                     ; $47df: $16 $2e
    ld h, [hl]                                    ; $47e1: $66
    sub $2f                                       ; $47e2: $d6 $2f
    dec b                                         ; $47e4: $05
    or e                                          ; $47e5: $b3
    ld d, e                                       ; $47e6: $53
    sub $9a                                       ; $47e7: $d6 $9a
    ld d, d                                       ; $47e9: $52
    adc a                                         ; $47ea: $8f
    ld h, $ec                                     ; $47eb: $26 $ec
    nop                                           ; $47ed: $00
    sbc d                                         ; $47ee: $9a
    ld h, l                                       ; $47ef: $65
    push hl                                       ; $47f0: $e5
    ld d, l                                       ; $47f1: $55
    and $e5                                       ; $47f2: $e6 $e5
    push hl                                       ; $47f4: $e5
    ld l, e                                       ; $47f5: $6b
    jr nc, jr_028_4815                            ; $47f6: $30 $1d

    dec a                                         ; $47f8: $3d
    ld hl, sp-$2e                                 ; $47f9: $f8 $d2
    ld e, [hl]                                    ; $47fb: $5e
    db $ed                                        ; $47fc: $ed
    jp $9a5d                                      ; $47fd: $c3 $5d $9a


    sub a                                         ; $4800: $97
    ld e, a                                       ; $4801: $5f
    db $db                                        ; $4802: $db
    call c, Call_000_2ec8                         ; $4803: $dc $c8 $2e
    dec b                                         ; $4806: $05

jr_028_4807:
    add e                                         ; $4807: $83
    inc c                                         ; $4808: $0c
    sbc a                                         ; $4809: $9f
    cpl                                           ; $480a: $2f
    cpl                                           ; $480b: $2f
    adc a                                         ; $480c: $8f
    jr nc, @-$21                                  ; $480d: $30 $dd

    dec h                                         ; $480f: $25
    db $ed                                        ; $4810: $ed
    rlca                                          ; $4811: $07
    ld c, b                                       ; $4812: $48

jr_028_4813:
    reti                                          ; $4813: $d9


    pop de                                        ; $4814: $d1

jr_028_4815:
    sub a                                         ; $4815: $97
    ld [$a816], sp                                ; $4816: $08 $16 $a8
    push af                                       ; $4819: $f5
    rla                                           ; $481a: $17
    cp $74                                        ; $481b: $fe $74
    dec e                                         ; $481d: $1d
    dec b                                         ; $481e: $05
    sbc b                                         ; $481f: $98
    rst $20                                       ; $4820: $e7
    add d                                         ; $4821: $82
    ld e, h                                       ; $4822: $5c
    ld e, e                                       ; $4823: $5b
    xor e                                         ; $4824: $ab
    ld a, [$773c]                                 ; $4825: $fa $3c $77
    call z, $20d5                                 ; $4828: $cc $d5 $20
    ld l, c                                       ; $482b: $69
    ld b, a                                       ; $482c: $47
    push bc                                       ; $482d: $c5
    ld hl, sp-$33                                 ; $482e: $f8 $cd
    sub h                                         ; $4830: $94
    ret c                                         ; $4831: $d8

    ld b, b                                       ; $4832: $40
    cpl                                           ; $4833: $2f
    sbc e                                         ; $4834: $9b
    rst $20                                       ; $4835: $e7
    add d                                         ; $4836: $82
    ld l, e                                       ; $4837: $6b
    db $fd                                        ; $4838: $fd
    ld e, l                                       ; $4839: $5d
    sbc a                                         ; $483a: $9f
    rst $20                                       ; $483b: $e7
    sbc d                                         ; $483c: $9a
    inc [hl]                                      ; $483d: $34
    ld l, b                                       ; $483e: $68
    sub [hl]                                      ; $483f: $96
    ld e, d                                       ; $4840: $5a
    cp b                                          ; $4841: $b8
    jr nz, jr_028_4873                            ; $4842: $20 $2f

    dec b                                         ; $4844: $05
    di                                            ; $4845: $f3
    ld e, h                                       ; $4846: $5c
    ldh a, [$3e]                                  ; $4847: $f0 $3e
    db $dd                                        ; $4849: $dd
    ld [hl], c                                    ; $484a: $71
    ld a, [de]                                    ; $484b: $1a
    and [hl]                                      ; $484c: $a6
    add c                                         ; $484d: $81
    push af                                       ; $484e: $f5
    cp h                                          ; $484f: $bc
    ld e, [hl]                                    ; $4850: $5e
    sub l                                         ; $4851: $95
    add a                                         ; $4852: $87
    add hl, hl                                    ; $4853: $29
    or c                                          ; $4854: $b1
    push af                                       ; $4855: $f5
    cp h                                          ; $4856: $bc
    inc e                                         ; $4857: $1c
    ld d, l                                       ; $4858: $55
    jr jr_028_4807                                ; $4859: $18 $ac

    sbc e                                         ; $485b: $9b
    ld a, [bc]                                    ; $485c: $0a
    sbc e                                         ; $485d: $9b
    rla                                           ; $485e: $17
    push af                                       ; $485f: $f5
    dec e                                         ; $4860: $1d
    ld a, l                                       ; $4861: $7d
    adc c                                         ; $4862: $89
    ld h, b                                       ; $4863: $60
    pop hl                                        ; $4864: $e1
    dec c                                         ; $4865: $0d
    adc d                                         ; $4866: $8a
    xor a                                         ; $4867: $af
    xor b                                         ; $4868: $a8
    push af                                       ; $4869: $f5
    rla                                           ; $486a: $17
    ld e, h                                       ; $486b: $5c
    db $eb                                        ; $486c: $eb
    db $d3                                        ; $486d: $d3
    inc a                                         ; $486e: $3c
    rla                                           ; $486f: $17
    ld [hl], $b3                                  ; $4870: $36 $b3
    push de                                       ; $4872: $d5

jr_028_4873:
    rrc e                                         ; $4873: $cb $0b
    jp nz, Jump_028_5a96                          ; $4875: $c2 $96 $5a

    adc h                                         ; $4878: $8c
    or e                                          ; $4879: $b3
    cpl                                           ; $487a: $2f
    or c                                          ; $487b: $b1
    ld a, c                                       ; $487c: $79
    ld sp, hl                                     ; $487d: $f9
    or l                                          ; $487e: $b5
    and [hl]                                      ; $487f: $a6
    call nc, $09a3                                ; $4880: $d4 $a3 $09
    dec sp                                        ; $4883: $3b
    or b                                          ; $4884: $b0
    xor b                                         ; $4885: $a8
    cp $82                                        ; $4886: $fe $82
    or [hl]                                       ; $4888: $b6
    ld d, e                                       ; $4889: $53
    ld l, l                                       ; $488a: $6d
    ld a, e                                       ; $488b: $7b
    db $fc                                        ; $488c: $fc
    cpl                                           ; $488d: $2f
    ld c, b                                       ; $488e: $48
    xor $5a                                       ; $488f: $ee $5a
    ld d, l                                       ; $4891: $55
    and h                                         ; $4892: $a4
    jp hl                                         ; $4893: $e9


    add d                                         ; $4894: $82
    ld bc, $5a96                                  ; $4895: $01 $96 $5a
    adc h                                         ; $4898: $8c
    db $e3                                        ; $4899: $e3
    push af                                       ; $489a: $f5
    ld a, [$cbca]                                 ; $489b: $fa $ca $cb
    ld [hl], e                                    ; $489e: $73
    rst $10                                       ; $489f: $d7
    xor d                                         ; $48a0: $aa
    ld [hl+], a                                   ; $48a1: $22
    dec c                                         ; $48a2: $0d
    ld e, d                                       ; $48a3: $5a
    xor a                                         ; $48a4: $af
    cpl                                           ; $48a5: $2f
    db $e3                                        ; $48a6: $e3
    sub e                                         ; $48a7: $93
    ld l, d                                       ; $48a8: $6a
    ld a, $fa                                     ; $48a9: $3e $fa
    ld h, a                                       ; $48ab: $67
    dec bc                                        ; $48ac: $0b
    ld a, a                                       ; $48ad: $7f
    sbc [hl]                                      ; $48ae: $9e
    dec bc                                        ; $48af: $0b

jr_028_48b0:
    or l                                          ; $48b0: $b5
    cp $d3                                        ; $48b1: $fe $d3
    pop bc                                        ; $48b3: $c1
    dec c                                         ; $48b4: $0d
    dec sp                                        ; $48b5: $3b
    pop af                                        ; $48b6: $f1
    rst $20                                       ; $48b7: $e7
    and d                                         ; $48b8: $a2
    db $ec                                        ; $48b9: $ec
    rla                                           ; $48ba: $17
    ld l, a                                       ; $48bb: $6f
    db $fd                                        ; $48bc: $fd
    rst $20                                       ; $48bd: $e7
    push hl                                       ; $48be: $e5
    ld [bc], a                                    ; $48bf: $02
    jp nz, Jump_028_6aad                          ; $48c0: $c2 $ad $6a

    db $fd                                        ; $48c3: $fd
    dec [hl]                                      ; $48c4: $35
    ld l, c                                       ; $48c5: $69
    ld b, $ff                                     ; $48c6: $06 $ff
    inc [hl]                                      ; $48c8: $34
    ld e, l                                       ; $48c9: $5d
    xor b                                         ; $48ca: $a8
    inc [hl]                                      ; $48cb: $34
    sub l                                         ; $48cc: $95
    inc [hl]                                      ; $48cd: $34
    call nz, $b696                                ; $48ce: $c4 $96 $b6
    db $fd                                        ; $48d1: $fd
    ld [hl], d                                    ; $48d2: $72
    add hl, hl                                    ; $48d3: $29
    sbc b                                         ; $48d4: $98
    xor $38                                       ; $48d5: $ee $38
    dec c                                         ; $48d7: $0d
    db $d3                                        ; $48d8: $d3
    ret nz                                        ; $48d9: $c0

    ld a, d                                       ; $48da: $7a
    ld e, [hl]                                    ; $48db: $5e
    xor a                                         ; $48dc: $af
    jp z, $94c3                                   ; $48dd: $ca $c3 $94

    ret c                                         ; $48e0: $d8

    ld a, d                                       ; $48e1: $7a
    ld e, [hl]                                    ; $48e2: $5e
    adc [hl]                                      ; $48e3: $8e
    ld a, [hl+]                                   ; $48e4: $2a
    inc c                                         ; $48e5: $0c
    sub $4d                                       ; $48e6: $d6 $4d
    add l                                         ; $48e8: $85
    call Call_000_194e                            ; $48e9: $cd $4e $19
    ld l, b                                       ; $48ec: $68
    db $fc                                        ; $48ed: $fc
    xor [hl]                                      ; $48ee: $ae
    jr @-$68                                      ; $48ef: $18 $96

jr_028_48f1:
    ld a, c                                       ; $48f1: $79
    cp c                                          ; $48f2: $b9
    ld d, h                                       ; $48f3: $54
    ld e, a                                       ; $48f4: $5f
    ld sp, hl                                     ; $48f5: $f9
    ld b, c                                       ; $48f6: $41
    rst $20                                       ; $48f7: $e7
    adc c                                         ; $48f8: $89
    pop bc                                        ; $48f9: $c1
    cp h                                          ; $48fa: $bc
    db $fc                                        ; $48fb: $fc
    sbc b                                         ; $48fc: $98
    ld [hl], $a3                                  ; $48fd: $36 $a3
    ld d, a                                       ; $48ff: $57
    reti                                          ; $4900: $d9


    pop af                                        ; $4901: $f1
    ld [hl], d                                    ; $4902: $72
    add hl, hl                                    ; $4903: $29
    ld c, b                                       ; $4904: $48
    ld [hl], a                                    ; $4905: $77
    ld b, b                                       ; $4906: $40
    jr jr_028_48b0                                ; $4907: $18 $a7

    db $e4                                        ; $4909: $e4
    inc l                                         ; $490a: $2c
    dec hl                                        ; $490b: $2b
    ld l, d                                       ; $490c: $6a
    ld a, l                                       ; $490d: $7d
    xor d                                         ; $490e: $aa
    add hl, sp                                    ; $490f: $39
    jp nz, $b196                                  ; $4910: $c2 $96 $b1

    and h                                         ; $4913: $a4

Jump_028_4914:
    sbc d                                         ; $4914: $9a
    xor a                                         ; $4915: $af
    ld c, [hl]                                    ; $4916: $4e
    ret                                           ; $4917: $c9


    ld c, a                                       ; $4918: $4f
    xor c                                         ; $4919: $a9

jr_028_491a:
    pop af                                        ; $491a: $f1
    ld [hl], d                                    ; $491b: $72
    add hl, hl                                    ; $491c: $29
    sbc b                                         ; $491d: $98
    or [hl]                                       ; $491e: $b6
    db $d3                                        ; $491f: $d3
    ld hl, sp-$44                                 ; $4920: $f8 $bc
    xor b                                         ; $4922: $a8
    inc hl                                        ; $4923: $23
    inc c                                         ; $4924: $0c
    sub [hl]                                      ; $4925: $96
    pop bc                                        ; $4926: $c1
    rst $38                                       ; $4927: $ff
    ld [hl], h                                    ; $4928: $74
    ld sp, $697d                                  ; $4929: $31 $7d $69
    xor a                                         ; $492c: $af
    di                                            ; $492d: $f3
    reti                                          ; $492e: $d9


    adc c                                         ; $492f: $89
    ccf                                           ; $4930: $3f
    cp $7a                                        ; $4931: $fe $7a
    reti                                          ; $4933: $d9


jr_028_4934:
    ld [hl], c                                    ; $4934: $71
    ld a, [de]                                    ; $4935: $1a
    and [hl]                                      ; $4936: $a6
    add c                                         ; $4937: $81
    push af                                       ; $4938: $f5
    cp h                                          ; $4939: $bc
    ld e, [hl]                                    ; $493a: $5e
    sub l                                         ; $493b: $95
    add a                                         ; $493c: $87
    add hl, hl                                    ; $493d: $29
    or c                                          ; $493e: $b1
    push af                                       ; $493f: $f5
    cp h                                          ; $4940: $bc
    inc e                                         ; $4941: $1c
    ld d, l                                       ; $4942: $55
    jr jr_028_48f1                                ; $4943: $18 $ac

    sbc e                                         ; $4945: $9b
    ld a, [bc]                                    ; $4946: $0a
    add e                                         ; $4947: $83
    reti                                          ; $4948: $d9


    add hl, hl                                    ; $4949: $29
    inc bc                                        ; $494a: $03
    adc l                                         ; $494b: $8d
    adc a                                         ; $494c: $8f
    jr nc, @+$3f                                  ; $494d: $30 $3d

    adc d                                         ; $494f: $8a

jr_028_4950:
    ld a, d                                       ; $4950: $7a
    dec c                                         ; $4951: $0d
    ld b, [hl]                                    ; $4952: $46
    jp hl                                         ; $4953: $e9


    di                                            ; $4954: $f3
    ld a, [c]                                     ; $4955: $f2
    xor e                                         ; $4956: $ab
    ld e, a                                       ; $4957: $5f
    ld h, d                                       ; $4958: $62
    ld c, e                                       ; $4959: $4b
    ld a, e                                       ; $495a: $7b
    ld e, [hl]                                    ; $495b: $5e
    ld l, $05                                     ; $495c: $2e $05
    or e                                          ; $495e: $b3
    xor h                                         ; $495f: $ac
    and e                                         ; $4960: $a3
    call $fdd4                                    ; $4961: $cd $d4 $fd
    ret                                           ; $4964: $c9


    ld l, a                                       ; $4965: $6f
    jp nc, Jump_000_113c                          ; $4966: $d2 $3c $11

    ld b, $a7                                     ; $4969: $06 $a7
    inc h                                         ; $496b: $24
    ld [hl], a                                    ; $496c: $77
    ld l, l                                       ; $496d: $6d
    db $e3                                        ; $496e: $e3
    dec bc                                        ; $496f: $0b
    or l                                          ; $4970: $b5
    ld l, c                                       ; $4971: $69
    rst $38                                       ; $4972: $ff
    inc l                                         ; $4973: $2c
    db $e3                                        ; $4974: $e3
    dec d                                         ; $4975: $15
    xor b                                         ; $4976: $a8
    and $eb                                       ; $4977: $e6 $eb

Call_028_4979:
    ld l, b                                       ; $4979: $68
    ld [hl], e                                    ; $497a: $73
    add hl, hl                                    ; $497b: $29
    sbc b                                         ; $497c: $98
    cp d                                          ; $497d: $ba
    ccf                                           ; $497e: $3f
    ld sp, hl                                     ; $497f: $f9
    ld c, l                                       ; $4980: $4d
    ld b, d                                       ; $4981: $42
    jr jr_028_491a                                ; $4982: $18 $96

    ld a, c                                       ; $4984: $79
    cp c                                          ; $4985: $b9
    ld d, h                                       ; $4986: $54
    sbc a                                         ; $4987: $9f
    ld h, l                                       ; $4988: $65
    and b                                         ; $4989: $a0
    db $fc                                        ; $498a: $fc
    jr nz, jr_028_4950                            ; $498b: $20 $c3

    ld c, a                                       ; $498d: $4f
    ld a, [$5bc5]                                 ; $498e: $fa $c5 $5b
    rst $38                                       ; $4991: $ff
    ld a, c                                       ; $4992: $79
    ld d, c                                       ; $4993: $51
    ld e, a                                       ; $4994: $5f
    cp e                                          ; $4995: $bb
    sbc c                                         ; $4996: $99
    sub a                                         ; $4997: $97
    ld e, a                                       ; $4998: $5f
    ld e, e                                       ; $4999: $5b
    xor c                                         ; $499a: $a9
    adc [hl]                                      ; $499b: $8e
    jr nc, jr_028_4934                            ; $499c: $30 $96

    dec e                                         ; $499e: $1d
    ld [hl], l                                    ; $499f: $75
    ld a, [c]                                     ; $49a0: $f2
    ld [hl], h                                    ; $49a1: $74
    and c                                         ; $49a2: $a1
    jp nc, $ebf8                                  ; $49a3: $d2 $f8 $eb

    ld h, l                                       ; $49a6: $65
    cp d                                          ; $49a7: $ba
    db $e3                                        ; $49a8: $e3
    inc [hl]                                      ; $49a9: $34
    ld c, h                                       ; $49aa: $4c
    inc bc                                        ; $49ab: $03
    db $eb                                        ; $49ac: $eb
    ld a, c                                       ; $49ad: $79
    cp l                                          ; $49ae: $bd
    ld a, [hl+]                                   ; $49af: $2a
    rrca                                          ; $49b0: $0f
    ld d, e                                       ; $49b1: $53
    ld h, d                                       ; $49b2: $62
    db $eb                                        ; $49b3: $eb
    ld a, c                                       ; $49b4: $79
    add hl, sp                                    ; $49b5: $39
    xor d                                         ; $49b6: $aa
    jr nc, jr_028_4a11                            ; $49b7: $30 $58

    scf                                           ; $49b9: $37
    dec d                                         ; $49ba: $15
    ld [hl], $3b                                  ; $49bb: $36 $3b
    ld h, l                                       ; $49bd: $65
    and b                                         ; $49be: $a0
    pop af                                        ; $49bf: $f1
    pop de                                        ; $49c0: $d1
    adc [hl]                                      ; $49c1: $8e
    ld [hl], $be                                  ; $49c2: $36 $be
    db $eb                                        ; $49c4: $eb
    dec [hl]                                      ; $49c5: $35
    ret c                                         ; $49c6: $d8

    and l                                         ; $49c7: $a5
    add l                                         ; $49c8: $85
    call Call_028_6aac                            ; $49c9: $cd $ac $6a
    and d                                         ; $49cc: $a2
    rst $28                                       ; $49cd: $ef
    jp nc, $978e                                  ; $49ce: $d2 $8e $97

    ld c, e                                       ; $49d1: $4b
    ld b, c                                       ; $49d2: $41
    cp d                                          ; $49d3: $ba
    inc bc                                        ; $49d4: $03
    sbc d                                         ; $49d5: $9a

jr_028_49d6:
    push bc                                       ; $49d6: $c5
    ld e, [hl]                                    ; $49d7: $5e
    sub e                                         ; $49d8: $93
    ld h, [hl]                                    ; $49d9: $66
    ld b, c                                       ; $49da: $41
    ld c, [hl]                                    ; $49db: $4e

jr_028_49dc:
    adc c                                         ; $49dc: $89
    dec l                                         ; $49dd: $2d
    ld a, b                                       ; $49de: $78
    rst $18                                       ; $49df: $df
    push af                                       ; $49e0: $f5
    dec [hl]                                      ; $49e1: $35
    ld l, c                                       ; $49e2: $69
    inc b                                         ; $49e3: $04
    ld a, $da                                     ; $49e4: $3e $da
    call c, Call_028_6a59                         ; $49e6: $dc $59 $6a

Jump_028_49e9:
    ld sp, $9e4e                                  ; $49e9: $31 $4e $9e
    sbc c                                         ; $49ec: $99
    ld [$e5e7], a                                 ; $49ed: $ea $e7 $e5
    rst $10                                       ; $49f0: $d7
    sub c                                         ; $49f1: $91
    ld e, e                                       ; $49f2: $5b
    dec a                                         ; $49f3: $3d
    ld [hl], a                                    ; $49f4: $77
    or [hl]                                       ; $49f5: $b6
    ld h, h                                       ; $49f6: $64
    jr c, jr_028_49d6                             ; $49f7: $38 $dd

    pop de                                        ; $49f9: $d1

jr_028_49fa:
    rst $08                                       ; $49fa: $cf
    ld sp, $d655                                  ; $49fb: $31 $55 $d6
    ld [c], a                                     ; $49fe: $e2
    ld c, c                                       ; $49ff: $49
    ccf                                           ; $4a00: $3f
    rst $08                                       ; $4a01: $cf
    push af                                       ; $4a02: $f5
    rst $10                                       ; $4a03: $d7
    rst $28                                       ; $4a04: $ef
    ld e, d                                       ; $4a05: $5a
    ld l, [hl]                                    ; $4a06: $6e
    ld d, l                                       ; $4a07: $55
    adc a                                         ; $4a08: $8f
    rrca                                          ; $4a09: $0f
    ld [$ad03], sp                                ; $4a0a: $08 $03 $ad

Jump_028_4a0d:
    cpl                                           ; $4a0d: $2f
    cp a                                          ; $4a0e: $bf
    ld h, $cd                                     ; $4a0f: $26 $cd

jr_028_4a11:
    add d                                         ; $4a11: $82
    ld b, h                                       ; $4a12: $44
    jr jr_028_49dc                                ; $4a13: $18 $c7

    ld [hl], d                                    ; $4a15: $72
    xor b                                         ; $4a16: $a8
    ld a, $c6                                     ; $4a17: $3e $c6
    daa                                           ; $4a19: $27
    ld b, a                                       ; $4a1a: $47
    dec sp                                        ; $4a1b: $3b
    jp hl                                         ; $4a1c: $e9


    cp l                                          ; $4a1d: $bd
    ld b, $0b                                     ; $4a1e: $06 $0b
    ld [hl], d                                    ; $4a20: $72
    sub a                                         ; $4a21: $97
    inc a                                         ; $4a22: $3c
    ld [hl], a                                    ; $4a23: $77
    cp h                                          ; $4a24: $bc
    ld e, h                                       ; $4a25: $5c
    ld a, [bc]                                    ; $4a26: $0a
    jp nc, $a61d                                  ; $4a27: $d2 $1d $a6

    call nz, $a966                                ; $4a2a: $c4 $66 $a9
    push bc                                       ; $4a2d: $c5
    jr c, jr_028_4a65                             ; $4a2e: $38 $35

    ld e, [hl]                                    ; $4a30: $5e
    ld d, d                                       ; $4a31: $52
    ld l, $fc                                     ; $4a32: $2e $fc
    sbc d                                         ; $4a34: $9a
    inc [hl]                                      ; $4a35: $34
    di                                            ; $4a36: $f3
    call c, $bf93                                 ; $4a37: $dc $93 $bf
    inc l                                         ; $4a3a: $2c
    ld l, h                                       ; $4a3b: $6c
    ld h, [hl]                                    ; $4a3c: $66
    ld d, l                                       ; $4a3d: $55
    inc de                                        ; $4a3e: $13
    dec e                                         ; $4a3f: $1d
    ld h, c                                       ; $4a40: $61
    sub [hl]                                      ; $4a41: $96
    ld e, d                                       ; $4a42: $5a
    jr c, jr_028_49fa                             ; $4a43: $38 $b5

    ld b, l                                       ; $4a45: $45
    cpl                                           ; $4a46: $2f
    sbc e                                         ; $4a47: $9b
    ld h, l                                       ; $4a48: $65
    inc l                                         ; $4a49: $2c
    xor c                                         ; $4a4a: $a9
    and $2b                                       ; $4a4b: $e6 $2b
    ld l, d                                       ; $4a4d: $6a
    db $fd                                        ; $4a4e: $fd
    ld a, c                                       ; $4a4f: $79
    ld d, c                                       ; $4a50: $51
    ld e, a                                       ; $4a51: $5f
    ld l, b                                       ; $4a52: $68
    xor d                                         ; $4a53: $aa
    add d                                         ; $4a54: $82
    jr nc, jr_028_4a94                            ; $4a55: $30 $3d

    adc d                                         ; $4a57: $8a
    ld a, d                                       ; $4a58: $7a
    dec c                                         ; $4a59: $0d
    and [hl]                                      ; $4a5a: $a6
    add e                                         ; $4a5b: $83
    and d                                         ; $4a5c: $a2
    pop hl                                        ; $4a5d: $e1
    and e                                         ; $4a5e: $a3
    ld [hl], l                                    ; $4a5f: $75
    set 6, b                                      ; $4a60: $cb $f0
    rst $10                                       ; $4a62: $d7
    sub $aa                                       ; $4a63: $d6 $aa

jr_028_4a65:
    ld a, $be                                     ; $4a65: $3e $be
    inc a                                         ; $4a67: $3c
    xor l                                         ; $4a68: $ad
    ld c, c                                       ; $4a69: $49
    inc sp                                        ; $4a6a: $33
    sub [hl]                                      ; $4a6b: $96
    ld l, b                                       ; $4a6c: $68
    sub [hl]                                      ; $4a6d: $96
    ld e, d                                       ; $4a6e: $5a
    adc h                                         ; $4a6f: $8c
    ld l, e                                       ; $4a70: $6b
    rst $38                                       ; $4a71: $ff
    db $e4                                        ; $4a72: $e4
    ld b, $c5                                     ; $4a73: $06 $c5
    ld d, a                                       ; $4a75: $57
    ld e, [hl]                                    ; $4a76: $5e
    ld e, $61                                     ; $4a77: $1e $61
    dec a                                         ; $4a79: $3d
    jp z, Jump_028_52af                           ; $4a7a: $ca $af $52

    ld h, c                                       ; $4a7d: $61
    xor e                                         ; $4a7e: $ab
    ld [de], a                                    ; $4a7f: $12
    inc e                                         ; $4a80: $1c
    sub $5f                                       ; $4a81: $d6 $5f
    cp a                                          ; $4a83: $bf
    ld l, e                                       ; $4a84: $6b
    cp c                                          ; $4a85: $b9
    ld d, l                                       ; $4a86: $55
    dec a                                         ; $4a87: $3d
    ld a, $ac                                     ; $4a88: $3e $ac
    ld l, l                                       ; $4a8a: $6d
    ld a, h                                       ; $4a8b: $7c
    sub [hl]                                      ; $4a8c: $96
    or c                                          ; $4a8d: $b1
    and h                                         ; $4a8e: $a4
    sbc d                                         ; $4a8f: $9a

jr_028_4a90:
    xor a                                         ; $4a90: $af
    xor b                                         ; $4a91: $a8
    push af                                       ; $4a92: $f5
    rst $20                                       ; $4a93: $e7

jr_028_4a94:
    ld b, l                                       ; $4a94: $45
    ld a, l                                       ; $4a95: $7d
    and c                                         ; $4a96: $a1
    xor c                                         ; $4a97: $a9
    ld a, [bc]                                    ; $4a98: $0a
    jp c, $29ba                                   ; $4a99: $da $ba $29

    call $a2b2                                    ; $4a9c: $cd $b2 $a2
    sub $5f                                       ; $4a9f: $d6 $5f
    ld a, a                                       ; $4aa1: $7f

jr_028_4aa2:
    db $fd                                        ; $4aa2: $fd
    xor [hl]                                      ; $4aa3: $ae
    push hl                                       ; $4aa4: $e5
    ld d, [hl]                                    ; $4aa5: $56
    push af                                       ; $4aa6: $f5
    ld hl, sp-$30                                 ; $4aa7: $f8 $d0
    dec d                                         ; $4aa9: $15
    inc bc                                        ; $4aaa: $03
    cp l                                          ; $4aab: $bd
    ld e, $10                                     ; $4aac: $1e $10
    ld b, $ad                                     ; $4aae: $06 $ad
    ret                                           ; $4ab0: $c9


    cpl                                           ; $4ab1: $2f

Call_028_4ab2:
    call nc, $9666                                ; $4ab2: $d4 $66 $96
    pop bc                                        ; $4ab5: $c1
    adc e                                         ; $4ab6: $8b
    push af                                       ; $4ab7: $f5
    rst $10                                       ; $4ab8: $d7
    and h                                         ; $4ab9: $a4
    jp hl                                         ; $4aba: $e9


    adc d                                         ; $4abb: $8a
    ld bc, $0b27                                  ; $4abc: $01 $27 $0b
    ld e, d                                       ; $4abf: $5a
    rst $30                                       ; $4ac0: $f7
    ld [hl], h                                    ; $4ac1: $74
    ld a, a                                       ; $4ac2: $7f
    ld e, c                                       ; $4ac3: $59
    ld d, c                                       ; $4ac4: $51
    sbc b                                         ; $4ac5: $98
    ld a, [de]                                    ; $4ac6: $1a
    cpl                                           ; $4ac7: $2f
    add hl, hl                                    ; $4ac8: $29
    rla                                           ; $4ac9: $17
    call nc, $d26f                                ; $4aca: $d4 $6f $d2
    inc a                                         ; $4acd: $3c
    rla                                           ; $4ace: $17
    db $e4                                        ; $4acf: $e4
    ld l, $79                                     ; $4ad0: $2e $79
    ld l, $6c                                     ; $4ad2: $2e $6c
    ld h, [hl]                                    ; $4ad4: $66
    ld d, l                                       ; $4ad5: $55
    inc de                                        ; $4ad6: $13
    sbc l                                         ; $4ad7: $9d
    cp e                                          ; $4ad8: $bb
    jp Jump_000_3b0e                              ; $4ad9: $c3 $0e $3b


    sub h                                         ; $4adc: $94
    dec sp                                        ; $4add: $3b
    dec h                                         ; $4ade: $25
    ld [hl], $f9                                  ; $4adf: $36 $f9
    jr nc, jr_028_4a90                            ; $4ae1: $30 $ad

    ccf                                           ; $4ae3: $3f
    db $dd                                        ; $4ae4: $dd
    ld [hl], c                                    ; $4ae5: $71
    ld a, [de]                                    ; $4ae6: $1a
    and [hl]                                      ; $4ae7: $a6
    add c                                         ; $4ae8: $81
    push af                                       ; $4ae9: $f5
    cp h                                          ; $4aea: $bc
    ld e, [hl]                                    ; $4aeb: $5e
    sub l                                         ; $4aec: $95
    add a                                         ; $4aed: $87
    add hl, hl                                    ; $4aee: $29
    or c                                          ; $4aef: $b1
    push af                                       ; $4af0: $f5
    cp h                                          ; $4af1: $bc
    inc e                                         ; $4af2: $1c
    ld d, l                                       ; $4af3: $55
    jr jr_028_4aa2                                ; $4af4: $18 $ac

    sbc e                                         ; $4af6: $9b
    ld a, [bc]                                    ; $4af7: $0a
    ld b, e                                       ; $4af8: $43
    jr jr_028_4b22                                ; $4af9: $18 $27

    ld l, e                                       ; $4afb: $6b
    inc sp                                        ; $4afc: $33
    set 4, b                                      ; $4afd: $cb $e0
    ld a, a                                       ; $4aff: $7f
    ld c, l                                       ; $4b00: $4d
    ld a, [de]                                    ; $4b01: $1a
    ld e, c                                       ; $4b02: $59
    db $fd                                        ; $4b03: $fd
    dec de                                        ; $4b04: $1b
    xor $e0                                       ; $4b05: $ee $e0
    ld c, d                                       ; $4b07: $4a
    ld d, a                                       ; $4b08: $57
    inc c                                         ; $4b09: $0c
    xor l                                         ; $4b0a: $ad
    cpl                                           ; $4b0b: $2f
    cp a                                          ; $4b0c: $bf
    db $eb                                        ; $4b0d: $eb
    cp e                                          ; $4b0e: $bb
    add b                                         ; $4b0f: $80
    halt                                          ; $4b10: $76
    or d                                          ; $4b11: $b2
    and b                                         ; $4b12: $a0
    ld [hl], l                                    ; $4b13: $75
    ld c, a                                       ; $4b14: $4f
    rst $30                                       ; $4b15: $f7
    sub a                                         ; $4b16: $97
    pop af                                        ; $4b17: $f1
    scf                                           ; $4b18: $37
    add $b5                                       ; $4b19: $c6 $b5
    ld a, a                                       ; $4b1b: $7f
    ld b, c                                       ; $4b1c: $41
    ld e, [hl]                                    ; $4b1d: $5e
    ld a, [bc]                                    ; $4b1e: $0a
    sub $6e                                       ; $4b1f: $d6 $6e
    ld d, [hl]                                    ; $4b21: $56

jr_028_4b22:
    ld l, [hl]                                    ; $4b22: $6e
    ld [$6d1f], sp                                ; $4b23: $08 $1f $6d
    or h                                          ; $4b26: $b4
    sub [hl]                                      ; $4b27: $96
    rst $38                                       ; $4b28: $ff
    dec [hl]                                      ; $4b29: $35
    ld l, c                                       ; $4b2a: $69
    ld d, $d5                                     ; $4b2b: $16 $d5
    ld e, a                                       ; $4b2d: $5f
    cp b                                          ; $4b2e: $b8
    ld l, e                                       ; $4b2f: $6b
    ld d, l                                       ; $4b30: $55
    sub c                                         ; $4b31: $91
    ld b, $61                                     ; $4b32: $06 $61
    ld h, a                                       ; $4b34: $67
    cp [hl]                                       ; $4b35: $be
    inc [hl]                                      ; $4b36: $34
    dec bc                                        ; $4b37: $0b
    ld [hl-], a                                   ; $4b38: $32
    add hl, de                                    ; $4b39: $19
    ld e, d                                       ; $4b3a: $5a
    rst $08                                       ; $4b3b: $cf
    xor a                                         ; $4b3c: $af
    push bc                                       ; $4b3d: $c5
    cp b                                          ; $4b3e: $b8
    or $2f                                        ; $4b3f: $f6 $2f
    ret z                                         ; $4b41: $c8

    ld c, e                                       ; $4b42: $4b
    pop bc                                        ; $4b43: $c1
    inc a                                         ; $4b44: $3c
    rst $20                                       ; $4b45: $e7
    push hl                                       ; $4b46: $e5
    ld b, a                                       ; $4b47: $47
    rst $08                                       ; $4b48: $cf
    rst $08                                       ; $4b49: $cf
    xor d                                         ; $4b4a: $aa
    ld h, $fa                                     ; $4b4b: $26 $fa
    ld d, h                                       ; $4b4d: $54
    ld e, [hl]                                    ; $4b4e: $5e
    pop de                                        ; $4b4f: $d1
    cp d                                          ; $4b50: $ba
    rst $00                                       ; $4b51: $c7
    ld d, a                                       ; $4b52: $57
    ld hl, sp-$27                                 ; $4b53: $f8 $d9
    add hl, de                                    ; $4b55: $19
    ld h, e                                       ; $4b56: $63
    ld a, [c]                                     ; $4b57: $f2
    dec bc                                        ; $4b58: $0b
    rra                                           ; $4b59: $1f
    ld h, c                                       ; $4b5a: $61
    ld h, a                                       ; $4b5b: $67
    xor d                                         ; $4b5c: $aa
    adc c                                         ; $4b5d: $89
    cp [hl]                                       ; $4b5e: $be
    jp Jump_000_3b0e                              ; $4b5f: $c3 $0e $3b


    ld [hl], h                                    ; $4b62: $74
    rla                                           ; $4b63: $17
    and $45                                       ; $4b64: $e6 $45
    jp nc, Jump_028_6504                          ; $4b66: $d2 $04 $65

    push hl                                       ; $4b69: $e5
    push hl                                       ; $4b6a: $e5
    pop de                                        ; $4b6b: $d1
    cp d                                          ; $4b6c: $ba
    rst $00                                       ; $4b6d: $c7
    ld d, a                                       ; $4b6e: $57
    ld hl, sp+$3d                                 ; $4b6f: $f8 $3d
    ld sp, hl                                     ; $4b71: $f9
    res 7, h                                      ; $4b72: $cb $bc
    db $fc                                        ; $4b74: $fc
    call nc, $4978                                ; $4b75: $d4 $78 $49
    cp c                                          ; $4b78: $b9
    ldh a, [$6c]                                  ; $4b79: $f0 $6c
    ld d, [hl]                                    ; $4b7b: $56
    dec [hl]                                      ; $4b7c: $35
    pop de                                        ; $4b7d: $d1
    sub a                                         ; $4b7e: $97
    inc d                                         ; $4b7f: $14
    dec de                                        ; $4b80: $1b
    or h                                          ; $4b81: $b4
    db $e3                                        ; $4b82: $e3
    push hl                                       ; $4b83: $e5
    ld d, d                                       ; $4b84: $52
    sub b                                         ; $4b85: $90
    xor $b0                                       ; $4b86: $ee $b0
    ld c, d                                       ; $4b88: $4a
    adc c                                         ; $4b89: $89
    jp nc, Jump_028_55a7                          ; $4b8a: $d2 $a7 $55

    push af                                       ; $4b8d: $f5
    dec e                                         ; $4b8e: $1d
    sbc a                                         ; $4b8f: $9f
    inc a                                         ; $4b90: $3c
    ld [hl], h                                    ; $4b91: $74
    sub d                                         ; $4b92: $92
    ldh [$b6], a                                  ; $4b93: $e0 $b6
    ld l, a                                       ; $4b95: $6f
    cp h                                          ; $4b96: $bc
    sbc $cc                                       ; $4b97: $de $cc
    ld c, [hl]                                    ; $4b99: $4e
    ld e, c                                       ; $4b9a: $59
    ld c, h                                       ; $4b9b: $4c
    ldh a, [$5d]                                  ; $4b9c: $f0 $5d
    rst $38                                       ; $4b9e: $ff
    db $10                                        ; $4b9f: $10
    sub [hl]                                      ; $4ba0: $96
    or d                                          ; $4ba1: $b2
    ld a, b                                       ; $4ba2: $78
    jp $2036                                      ; $4ba3: $c3 $36 $20


    inc c                                         ; $4ba6: $0c
    sub [hl]                                      ; $4ba7: $96
    ld e, d                                       ; $4ba8: $5a
    jr c, jr_028_4c2a                             ; $4ba9: $38 $7f

    sub c                                         ; $4bab: $91
    db $db                                        ; $4bac: $db
    adc [hl]                                      ; $4bad: $8e
    call Call_028_4520                            ; $4bae: $cd $20 $45
    ld a, [de]                                    ; $4bb1: $1a
    xor $e0                                       ; $4bb2: $ee $e0
    ld a, [bc]                                    ; $4bb4: $0a
    ld [hl], a                                    ; $4bb5: $77
    ld l, l                                       ; $4bb6: $6d
    db $e3                                        ; $4bb7: $e3
    or e                                          ; $4bb8: $b3
    inc l                                         ; $4bb9: $2c
    inc [hl]                                      ; $4bba: $34
    ldh [$93], a                                  ; $4bbb: $e0 $93
    ld [hl], a                                    ; $4bbd: $77
    inc hl                                        ; $4bbe: $23

Jump_028_4bbf:
    inc [hl]                                      ; $4bbf: $34
    rst $08                                       ; $4bc0: $cf
    ld a, c                                       ; $4bc1: $79
    ld sp, hl                                     ; $4bc2: $f9
    push bc                                       ; $4bc3: $c5
    ld l, h                                       ; $4bc4: $6c
    or a                                          ; $4bc5: $b7
    dec de                                        ; $4bc6: $1b
    add h                                         ; $4bc7: $84
    ld bc, $292d                                  ; $4bc8: $01 $2d $29
    jp nc, $e770                                  ; $4bcb: $d2 $70 $e7

    push hl                                       ; $4bce: $e5
    jp nz, Jump_028_4bf8                          ; $4bcf: $c2 $f8 $4b

    inc l                                         ; $4bd2: $2c
    ld sp, hl                                     ; $4bd3: $f9
    ld e, l                                       ; $4bd4: $5d
    ld e, b                                       ; $4bd5: $58
    dec d                                         ; $4bd6: $15
    inc de                                        ; $4bd7: $13
    sbc [hl]                                      ; $4bd8: $9e
    ld hl, $dd0c                                  ; $4bd9: $21 $0c $dd
    db $e3                                        ; $4bdc: $e3
    dec hl                                        ; $4bdd: $2b
    db $fc                                        ; $4bde: $fc
    ldh [$7f], a                                  ; $4bdf: $e0 $7f
    ld e, [hl]                                    ; $4be1: $5e
    ld a, [hl]                                    ; $4be2: $7e
    db $f4                                        ; $4be3: $f4
    inc e                                         ; $4be4: $1c
    ld a, h                                       ; $4be5: $7c
    cp $31                                        ; $4be6: $fe $31
    cp [hl]                                       ; $4be8: $be
    jr nz, jr_028_4bf7                            ; $4be9: $20 $0c

    db $dd                                        ; $4beb: $dd

Jump_028_4bec:
    db $e3                                        ; $4bec: $e3
    dec hl                                        ; $4bed: $2b
    db $fc                                        ; $4bee: $fc
    ldh [$7f], a                                  ; $4bef: $e0 $7f
    ld e, [hl]                                    ; $4bf1: $5e
    ld a, [hl]                                    ; $4bf2: $7e
    dec e                                         ; $4bf3: $1d
    ld a, c                                       ; $4bf4: $79
    db $eb                                        ; $4bf5: $eb
    ld c, l                                       ; $4bf6: $4d

Call_028_4bf7:
jr_028_4bf7:
    inc bc                                        ; $4bf7: $03

Jump_028_4bf8:
    di                                            ; $4bf8: $f3
    adc a                                         ; $4bf9: $8f
    pop af                                        ; $4bfa: $f1
    dec b                                         ; $4bfb: $05
    ld h, c                                       ; $4bfc: $61
    dec l                                         ; $4bfd: $2d
    add hl, hl                                    ; $4bfe: $29
    jp nc, $0770                                  ; $4bff: $d2 $70 $07

    ld d, a                                       ; $4c02: $57
    cp b                                          ; $4c03: $b8
    dec bc                                        ; $4c04: $0b
    sbc e                                         ; $4c05: $9b
    ld sp, hl                                     ; $4c06: $f9
    adc l                                         ; $4c07: $8d
    ld [hl], c                                    ; $4c08: $71
    rla                                           ; $4c09: $17
    sub $96                                       ; $4c0a: $d6 $96
    xor h                                         ; $4c0c: $ac
    ccf                                           ; $4c0d: $3f
    ld hl, $dd0c                                  ; $4c0e: $21 $0c $dd
    ld d, h                                       ; $4c11: $54
    sbc $36                                       ; $4c12: $de $36
    sub c                                         ; $4c14: $91
    dec sp                                        ; $4c15: $3b
    cp b                                          ; $4c16: $b8
    jp nz, $1a5d                                  ; $4c17: $c2 $5d $1a

    add hl, de                                    ; $4c1a: $19
    dec a                                         ; $4c1b: $3d
    ccf                                           ; $4c1c: $3f
    dec sp                                        ; $4c1d: $3b
    ld h, [hl]                                    ; $4c1e: $66
    jp z, $0c2e                                   ; $4c1f: $ca $2e $0c

    db $fc                                        ; $4c22: $fc
    add $38                                       ; $4c23: $c6 $38
    adc b                                         ; $4c25: $88
    or a                                          ; $4c26: $b7
    db $d3                                        ; $4c27: $d3
    ld a, c                                       ; $4c28: $79
    ld l, c                                       ; $4c29: $69

jr_028_4c2a:
    db $10                                        ; $4c2a: $10
    ld b, $c7                                     ; $4c2b: $06 $c7
    db $e4                                        ; $4c2d: $e4
    sbc d                                         ; $4c2e: $9a
    inc [hl]                                      ; $4c2f: $34
    dec hl                                        ; $4c30: $2b
    ld l, d                                       ; $4c31: $6a
    db $fd                                        ; $4c32: $fd
    ld a, c                                       ; $4c33: $79
    ld sp, hl                                     ; $4c34: $f9
    ld d, l                                       ; $4c35: $55
    ld a, [hl+]                                   ; $4c36: $2a
    xor h                                         ; $4c37: $ac
    dec hl                                        ; $4c38: $2b
    ld b, $a7                                     ; $4c39: $06 $a7
    inc h                                         ; $4c3b: $24
    jp nz, $3f3d                                  ; $4c3c: $c2 $3d $3f

    ld b, [hl]                                    ; $4c3f: $46
    xor $3a                                       ; $4c40: $ee $3a
    pop af                                        ; $4c42: $f1
    dec d                                         ; $4c43: $15
    ld a, [hl]                                    ; $4c44: $7e
    pop bc                                        ; $4c45: $c1
    ei                                            ; $4c46: $fb
    xor [hl]                                      ; $4c47: $ae
    rrca                                          ; $4c48: $0f
    ld [hl-], a                                   ; $4c49: $32
    add hl, bc                                    ; $4c4a: $09
    call Call_028_4ab2                            ; $4c4b: $cd $b2 $4a
    xor c                                         ; $4c4e: $a9
    and $e3                                       ; $4c4f: $e6 $e3
    push af                                       ; $4c51: $f5
    ld a, [$cbca]                                 ; $4c52: $fa $ca $cb
    ld c, a                                       ; $4c55: $4f
    ld h, e                                       ; $4c56: $63
    inc e                                         ; $4c57: $1c
    db $d3                                        ; $4c58: $d3
    ld b, $61                                     ; $4c59: $06 $61
    dec a                                         ; $4c5b: $3d
    set 2, e                                      ; $4c5c: $cb $d3
    sbc d                                         ; $4c5e: $9a
    inc [hl]                                      ; $4c5f: $34
    dec [hl]                                      ; $4c60: $35
    ld sp, hl                                     ; $4c61: $f9
    reti                                          ; $4c62: $d9


    sub a                                         ; $4c63: $97
    ld l, $94                                     ; $4c64: $2e $94
    ld h, a                                       ; $4c66: $67
    call c, $aab5                                 ; $4c67: $dc $b5 $aa
    ld c, b                                       ; $4c6a: $48
    jp $ff1d                                      ; $4c6b: $c3 $1d $ff


    xor e                                         ; $4c6e: $ab
    sub h                                         ; $4c6f: $94
    ld d, $6a                                     ; $4c70: $16 $6a
    db $fd                                        ; $4c72: $fd
    sub a                                         ; $4c73: $97
    ld b, [hl]                                    ; $4c74: $46
    add $6b                                       ; $4c75: $c6 $6b
    or e                                          ; $4c77: $b3
    or [hl]                                       ; $4c78: $b6
    ld d, [hl]                                    ; $4c79: $56
    push af                                       ; $4c7a: $f5
    ld a, c                                       ; $4c7b: $79
    xor [hl]                                      ; $4c7c: $ae
    dec [hl]                                      ; $4c7d: $35
    inc bc                                        ; $4c7e: $03
    ld e, [hl]                                    ; $4c7f: $5e
    push bc                                       ; $4c80: $c5
    ld bc, $bd61                                  ; $4c81: $01 $61 $bd
    jp nc, Jump_028_7f8c                          ; $4c84: $d2 $8c $7f

    ld sp, hl                                     ; $4c87: $f9
    or l                                          ; $4c88: $b5
    sub l                                         ; $4c89: $95
    push bc                                       ; $4c8a: $c5
    ld h, [hl]                                    ; $4c8b: $66
    push bc                                       ; $4c8c: $c5
    adc b                                         ; $4c8d: $88
    xor a                                         ; $4c8e: $af
    ld l, l                                       ; $4c8f: $6d

jr_028_4c90:
    ld a, h                                       ; $4c90: $7c
    sub h                                         ; $4c91: $94
    db $fc                                        ; $4c92: $fc
    sbc d                                         ; $4c93: $9a
    inc [hl]                                      ; $4c94: $34
    ld [hl-], a                                   ; $4c95: $32
    ld a, $0d                                     ; $4c96: $3e $0d
    ld sp, $ca98                                  ; $4c98: $31 $98 $ca
    cpl                                           ; $4c9b: $2f
    ld a, h                                       ; $4c9c: $7c
    ld h, d                                       ; $4c9d: $62
    rst $08                                       ; $4c9e: $cf
    db $10                                        ; $4c9f: $10
    ld b, $47                                     ; $4ca0: $06 $47
    rst $38                                       ; $4ca2: $ff
    db $d3                                        ; $4ca3: $d3
    inc a                                         ; $4ca4: $3c
    rst $20                                       ; $4ca5: $e7
    push hl                                       ; $4ca6: $e5
    ld d, a                                       ; $4ca7: $57
    ld e, [hl]                                    ; $4ca8: $5e
    db $e3                                        ; $4ca9: $e3
    dec bc                                        ; $4caa: $0b
    ld [hl], a                                    ; $4cab: $77
    sub [hl]                                      ; $4cac: $96
    pop bc                                        ; $4cad: $c1
    ccf                                           ; $4cae: $3f
    jp nz, $d2bd                                  ; $4caf: $c2 $bd $d2

    call nc, $17e4                                ; $4cb2: $d4 $e4 $17
    inc sp                                        ; $4cb5: $33
    db $eb                                        ; $4cb6: $eb
    sub a                                         ; $4cb7: $97
    add d                                         ; $4cb8: $82
    add l                                         ; $4cb9: $85
    and [hl]                                      ; $4cba: $a6
    ld a, [hl+]                                   ; $4cbb: $2a
    ld l, e                                       ; $4cbc: $6b
    cp a                                          ; $4cbd: $bf
    ei                                            ; $4cbe: $fb
    res 7, h                                      ; $4cbf: $cb $bc
    jr z, jr_028_4c90                             ; $4cc1: $28 $cd

    sra a                                         ; $4cc3: $cb $2f
    ld a, [hl+]                                   ; $4cc5: $2a
    ld hl, sp-$04                                 ; $4cc6: $f8 $fc
    add [hl]                                      ; $4cc8: $86
    ccf                                           ; $4cc9: $3f
    bit 0, b                                      ; $4cca: $cb $40
    ld sp, hl                                     ; $4ccc: $f9
    dec [hl]                                      ; $4ccd: $35
    ld l, c                                       ; $4cce: $69
    db $10                                        ; $4ccf: $10
    ld b, $96                                     ; $4cd0: $06 $96
    sub l                                         ; $4cd2: $95
    db $ec                                        ; $4cd3: $ec
    db $fc                                        ; $4cd4: $fc
    cp h                                          ; $4cd5: $bc
    db $fc                                        ; $4cd6: $fc
    db $ec                                        ; $4cd7: $ec
    dec de                                        ; $4cd8: $1b
    inc d                                         ; $4cd9: $14
    ld e, a                                       ; $4cda: $5f
    sub b                                         ; $4cdb: $90
    rrca                                          ; $4cdc: $0f
    ld l, e                                       ; $4cdd: $6b
    cp a                                          ; $4cde: $bf
    ei                                            ; $4cdf: $fb
    set 5, h                                      ; $4ce0: $cb $ec
    sub h                                         ; $4ce2: $94
    dec [hl]                                      ; $4ce3: $35
    ld l, c                                       ; $4ce4: $69
    and $e5                                       ; $4ce5: $e6 $e5
    jp nz, $86fc                                  ; $4ce7: $c2 $fc $86

    rst $08                                       ; $4cea: $cf
    dec e                                         ; $4ceb: $1d
    ld e, h                                       ; $4cec: $5c
    ld b, c                                       ; $4ced: $41
    jr jr_028_4d2d                                ; $4cee: $18 $3d

    cp a                                          ; $4cf0: $bf
    ld d, $e3                                     ; $4cf1: $16 $e3
    ld l, $80                                     ; $4cf3: $2e $80
    ld sp, hl                                     ; $4cf5: $f9
    jp hl                                         ; $4cf6: $e9


    xor d                                         ; $4cf7: $aa
    inc c                                         ; $4cf8: $0c
    jp $530f                                      ; $4cf9: $c3 $0f $53


    call nc, $f5af                                ; $4cfc: $d4 $af $f5
    ld d, a                                       ; $4cff: $57
    push hl                                       ; $4d00: $e5
    and l                                         ; $4d01: $a5
    ld e, l                                       ; $4d02: $5d
    ld e, d                                       ; $4d03: $5a
    sub e                                         ; $4d04: $93
    ld b, [hl]                                    ; $4d05: $46
    ld d, [hl]                                    ; $4d06: $56
    sub d                                         ; $4d07: $92
    jp nc, $aec8                                  ; $4d08: $d2 $c8 $ae

    cp l                                          ; $4d0b: $bd
    ld h, $cd                                     ; $4d0c: $26 $cd
    ld [$9dff], a                                 ; $4d0e: $ea $ff $9d
    push bc                                       ; $4d11: $c5
    add h                                         ; $4d12: $84
    ld c, e                                       ; $4d13: $4b
    ld bc, $47c2                                  ; $4d14: $01 $c2 $47
    cp a                                          ; $4d17: $bf
    ei                                            ; $4d18: $fb
    res 4, d                                      ; $4d19: $cb $a2
    xor c                                         ; $4d1b: $a9
    ld [$72f3], a                                 ; $4d1c: $ea $f3 $72
    ld h, c                                       ; $4d1f: $61
    ld a, [hl]                                    ; $4d20: $7e
    jp Jump_000_0ee7                              ; $4d21: $c3 $e7 $0e


    xor [hl]                                      ; $4d24: $ae
    jr nz, jr_028_4d33                            ; $4d25: $20 $0c

    sub [hl]                                      ; $4d27: $96
    sub l                                         ; $4d28: $95
    db $ec                                        ; $4d29: $ec
    db $fc                                        ; $4d2a: $fc
    sbc d                                         ; $4d2b: $9a
    inc [hl]                                      ; $4d2c: $34

jr_028_4d2d:
    ld d, e                                       ; $4d2d: $53

jr_028_4d2e:
    ld a, c                                       ; $4d2e: $79
    xor d                                         ; $4d2f: $aa
    ld sp, hl                                     ; $4d30: $f9
    ld l, $9d                                     ; $4d31: $2e $9d

jr_028_4d33:
    ld h, a                                       ; $4d33: $67
    db $e4                                        ; $4d34: $e4
    reti                                          ; $4d35: $d9


    inc d                                         ; $4d36: $14
    sub $56                                       ; $4d37: $d6 $56
    ld d, $9b                                     ; $4d39: $16 $9b
    ld a, c                                       ; $4d3b: $79
    cp c                                          ; $4d3c: $b9
    jr nc, @-$3f                                  ; $4d3d: $30 $bf

    pop hl                                        ; $4d3f: $e1
    ld [hl], e                                    ; $4d40: $73
    rlca                                          ; $4d41: $07
    ld d, a                                       ; $4d42: $57
    db $10                                        ; $4d43: $10
    ld b, $bd                                     ; $4d44: $06 $bd
    jp nc, $e54c                                  ; $4d46: $d2 $4c $e5

    ld [hl], a                                    ; $4d49: $77
    cp [hl]                                       ; $4d4a: $be
    cp c                                          ; $4d4b: $b9
    cp $6b                                        ; $4d4c: $fe $6b
    adc e                                         ; $4d4e: $8b
    ld e, d                                       ; $4d4f: $5a
    sbc a                                         ; $4d50: $9f
    dec sp                                        ; $4d51: $3b
    cp b                                          ; $4d52: $b8
    add d                                         ; $4d53: $82
    jr nc, jr_028_4d9d                            ; $4d54: $30 $47

    adc e                                         ; $4d56: $8b
    ld e, d                                       ; $4d57: $5a
    ld [hl], e                                    ; $4d58: $73
    halt                                          ; $4d59: $76
    jp z, $0caa                                   ; $4d5a: $ca $aa $0c

    cpl                                           ; $4d5d: $2f
    dec b                                         ; $4d5e: $05
    ld l, e                                       ; $4d5f: $6b
    ld l, e                                       ; $4d60: $6b
    ld d, l                                       ; $4d61: $55
    sbc a                                         ; $4d62: $9f
    sbc l                                         ; $4d63: $9d
    ld [hl-], a                                   ; $4d64: $32
    and l                                         ; $4d65: $a5
    db $f4                                        ; $4d66: $f4
    ld a, [c]                                     ; $4d67: $f2
    ld [hl-], a                                   ; $4d68: $32
    ei                                            ; $4d69: $fb
    ld b, $c5                                     ; $4d6a: $06 $c5
    cp c                                          ; $4d6c: $b9
    add e                                         ; $4d6d: $83
    dec hl                                        ; $4d6e: $2b
    jr jr_028_4d2e                                ; $4d6f: $18 $bd

    jp nc, $e4d4                                  ; $4d71: $d2 $d4 $e4

    ld d, a                                       ; $4d74: $57
    cp l                                          ; $4d75: $bd
    cp b                                          ; $4d76: $b8
    ld e, [hl]                                    ; $4d77: $5e
    adc d                                         ; $4d78: $8a
    call Call_028_7d28                            ; $4d79: $cd $28 $7d
    cp d                                          ; $4d7c: $ba
    di                                            ; $4d7d: $f3
    call Call_028_7f75                            ; $4d7e: $cd $75 $7f
    pop hl                                        ; $4d81: $e1
    ld c, $ae                                     ; $4d82: $0e $ae
    jr nz, jr_028_4d92                            ; $4d84: $20 $0c

jr_028_4d86:
    dec a                                         ; $4d86: $3d
    jp z, $bcaf                                   ; $4d87: $ca $af $bc

    add $97                                       ; $4d8a: $c6 $97
    add l                                         ; $4d8c: $85
    ld b, $7c                                     ; $4d8d: $06 $7c
    ld [hl], l                                    ; $4d8f: $75
    ld c, d                                       ; $4d90: $4a
    ld a, [hl]                                    ; $4d91: $7e

jr_028_4d92:
    ld c, l                                       ; $4d92: $4d
    sbc d                                         ; $4d93: $9a
    sbc l                                         ; $4d94: $9d
    ld l, a                                       ; $4d95: $6f
    xor [hl]                                      ; $4d96: $ae
    rst $38                                       ; $4d97: $ff
    ld hl, sp-$71                                 ; $4d98: $f8 $8f
    ld [hl], c                                    ; $4d9a: $71
    db $ed                                        ; $4d9b: $ed
    ld h, [hl]                                    ; $4d9c: $66

jr_028_4d9d:
    sub h                                         ; $4d9d: $94
    inc a                                         ; $4d9e: $3c
    ld [hl], a                                    ; $4d9f: $77
    ld [hl], b                                    ; $4da0: $70
    dec b                                         ; $4da1: $05
    ld h, c                                       ; $4da2: $61
    cp l                                          ; $4da3: $bd
    jp nc, $e4d4                                  ; $4da4: $d2 $d4 $e4

    rst $10                                       ; $4da7: $d7
    cp $2a                                        ; $4da8: $fe $2a
    jp $c14b                                      ; $4daa: $c3 $4b $c1


    jp nc, $6cc8                                  ; $4dad: $d2 $c8 $6c

    or l                                          ; $4db0: $b5
    and [hl]                                      ; $4db1: $a6
    sub c                                         ; $4db2: $91
    db $eb                                        ; $4db3: $eb
    cp a                                          ; $4db4: $bf
    jp z, Jump_028_6780                           ; $4db5: $ca $80 $67

    ld hl, sp-$3e                                 ; $4db8: $f8 $c2
    dec e                                         ; $4dba: $1d
    ld e, h                                       ; $4dbb: $5c
    ld b, c                                       ; $4dbc: $41
    jr jr_028_4d86                                ; $4dbd: $18 $c7

    ld e, h                                       ; $4dbf: $5c
    or [hl]                                       ; $4dc0: $b6
    ld h, $cd                                     ; $4dc1: $26 $cd
    add d                                         ; $4dc3: $82
    rst $30                                       ; $4dc4: $f7
    ld a, c                                       ; $4dc5: $79
    ld sp, hl                                     ; $4dc6: $f9
    ld d, l                                       ; $4dc7: $55
    ld a, [hl+]                                   ; $4dc8: $2a
    xor h                                         ; $4dc9: $ac
    dec hl                                        ; $4dca: $2b
    ld b, $bd                                     ; $4dcb: $06 $bd
    ld e, $b8                                     ; $4dcd: $1e $b8
    or e                                          ; $4dcf: $b3
    adc h                                         ; $4dd0: $8c
    ld e, l                                       ; $4dd1: $5d
    add [hl]                                      ; $4dd2: $86
    sub $fa                                       ; $4dd3: $d6 $fa
    ld a, [c]                                     ; $4dd5: $f2
    dec [hl]                                      ; $4dd6: $35
    ld e, b                                       ; $4dd7: $58
    sub e                                         ; $4dd8: $93
    ld b, [hl]                                    ; $4dd9: $46
    ld h, [hl]                                    ; $4dda: $66
    ld d, l                                       ; $4ddb: $55
    inc de                                        ; $4ddc: $13
    ld a, l                                       ; $4ddd: $7d
    push af                                       ; $4dde: $f5
    ld l, a                                       ; $4ddf: $6f
    ret nc                                        ; $4de0: $d0

    adc [hl]                                      ; $4de1: $8e
    ret                                           ; $4de2: $c9


    dec [hl]                                      ; $4de3: $35
    ld l, c                                       ; $4de4: $69
    ld d, [hl]                                    ; $4de5: $56
    and a                                         ; $4de6: $a7
    db $e4                                        ; $4de7: $e4
    rst $20                                       ; $4de8: $e7
    push hl                                       ; $4de9: $e5
    push hl                                       ; $4dea: $e5
    rst $00                                       ; $4deb: $c7
    dec hl                                        ; $4dec: $2b
    ld c, h                                       ; $4ded: $4c
    rla                                           ; $4dee: $17
    ld h, $81                                     ; $4def: $26 $81
    cp a                                          ; $4df1: $bf
    db $ec                                        ; $4df2: $ec
    jp nc, $349a                                  ; $4df3: $d2 $9a $34

    ld [hl-], a                                   ; $4df6: $32
    xor e                                         ; $4df7: $ab
    sbc d                                         ; $4df8: $9a
    add sp, $5d                                   ; $4df9: $e8 $5d
    ld sp, $4b3d                                  ; $4dfb: $31 $3d $4b
    jp $251d                                      ; $4dfe: $c3 $1d $25


    sbc d                                         ; $4e01: $9a
    ld h, l                                       ; $4e02: $65
    rst $08                                       ; $4e03: $cf
    and c                                         ; $4e04: $a1
    di                                            ; $4e05: $f3
    sub l                                         ; $4e06: $95
    ccf                                           ; $4e07: $3f
    ld e, e                                       ; $4e08: $5b
    ei                                            ; $4e09: $fb
    db $dd                                        ; $4e0a: $dd
    ld e, a                                       ; $4e0b: $5f
    sub $79                                       ; $4e0c: $d6 $79
    ldh a, [rHDMA5]                               ; $4e0e: $f0 $55
    ld c, c                                       ; $4e10: $49
    ld l, $19                                     ; $4e11: $2e $19
    and a                                         ; $4e13: $a7
    cp [hl]                                       ; $4e14: $be
    db $e3                                        ; $4e15: $e3
    push hl                                       ; $4e16: $e5
    ld d, d                                       ; $4e17: $52

jr_028_4e18:
    sub b                                         ; $4e18: $90
    xor $80                                       ; $4e19: $ee $80
    halt                                          ; $4e1b: $76
    xor d                                         ; $4e1c: $aa
    sub c                                         ; $4e1d: $91
    or c                                          ; $4e1e: $b1
    rst $10                                       ; $4e1f: $d7
    cp b                                          ; $4e20: $b8
    dec bc                                        ; $4e21: $0b
    xor e                                         ; $4e22: $ab
    ld [hl-], a                                   ; $4e23: $32
    db $ec                                        ; $4e24: $ec
    call nz, $47f7                                ; $4e25: $c4 $f7 $47
    ld l, e                                       ; $4e28: $6b
    ld d, l                                       ; $4e29: $55
    db $eb                                        ; $4e2a: $eb
    ld c, a                                       ; $4e2b: $4f
    rla                                           ; $4e2c: $17
    ld h, h                                       ; $4e2d: $64
    or d                                          ; $4e2e: $b2
    cp c                                          ; $4e2f: $b9
    call c, $dace                                 ; $4e30: $dc $ce $da

Call_028_4e33:
    ld e, d                                       ; $4e33: $5a
    push de                                       ; $4e34: $d5
    rst $20                                       ; $4e35: $e7
    cp c                                          ; $4e36: $b9
    sub $0c                                       ; $4e37: $d6 $0c
    ld a, b                                       ; $4e39: $78
    dec d                                         ; $4e3a: $15
    rlca                                          ; $4e3b: $07
    add h                                         ; $4e3c: $84
    ld bc, $c947                                  ; $4e3d: $01 $47 $c9
    adc a                                         ; $4e40: $8f
    rst $38                                       ; $4e41: $ff
    ld l, c                                       ; $4e42: $69
    adc h                                         ; $4e43: $8c
    or e                                          ; $4e44: $b3
    cpl                                           ; $4e45: $2f
    ld e, l                                       ; $4e46: $5d
    jr z, jr_028_4e18                             ; $4e47: $28 $cf

    cp b                                          ; $4e49: $b8
    ld l, e                                       ; $4e4a: $6b
    ld d, l                                       ; $4e4b: $55
    sub c                                         ; $4e4c: $91
    and [hl]                                      ; $4e4d: $a6
    dec hl                                        ; $4e4e: $2b
    ld b, $96                                     ; $4e4f: $06 $96
    ld a, c                                       ; $4e51: $79
    cp c                                          ; $4e52: $b9
    ld d, h                                       ; $4e53: $54
    rra                                           ; $4e54: $1f
    rst $38                                       ; $4e55: $ff
    ld d, e                                       ; $4e56: $53
    ld a, c                                       ; $4e57: $79
    inc [hl]                                      ; $4e58: $34
    adc e                                         ; $4e59: $8b
    ld c, a                                       ; $4e5a: $4f
    ld h, e                                       ; $4e5b: $63
    inc e                                         ; $4e5c: $1c
    db $fc                                        ; $4e5d: $fc
    add a                                         ; $4e5e: $87
    jr nc, @+$72                                  ; $4e5f: $30 $70

    ld d, c                                       ; $4e61: $51
    ld a, [bc]                                    ; $4e62: $0a
    sbc [hl]                                      ; $4e63: $9e
    dec sp                                        ; $4e64: $3b
    cpl                                           ; $4e65: $2f
    ld l, c                                       ; $4e66: $69
    add d                                         ; $4e67: $82
    add d                                         ; $4e68: $82
    db $10                                        ; $4e69: $10
    jp nz, $3727                                  ; $4e6a: $c2 $27 $37

    ld [hl], e                                    ; $4e6d: $73
    pop de                                        ; $4e6e: $d1
    adc $6c                                       ; $4e6f: $ce $6c
    cp l                                          ; $4e71: $bd
    pop af                                        ; $4e72: $f1
    add hl, de                                    ; $4e73: $19
    ld e, d                                       ; $4e74: $5a
    xor a                                         ; $4e75: $af
    inc [hl]                                      ; $4e76: $34
    ld d, e                                       ; $4e77: $53
    ld sp, hl                                     ; $4e78: $f9
    add c                                         ; $4e79: $81
    ld c, e                                       ; $4e7a: $4b
    ld d, d                                       ; $4e7b: $52
    ldh a, [$32]                                  ; $4e7c: $f0 $32
    cpl                                           ; $4e7e: $2f
    ld c, d                                       ; $4e7f: $4a
    or e                                          ; $4e80: $b3
    call z, $9a4b                                 ; $4e81: $cc $4b $9a
    and b                                         ; $4e84: $a0
    jr c, jr_028_4efe                             ; $4e85: $38 $77

    xor l                                         ; $4e87: $ad
    ld a, [hl+]                                   ; $4e88: $2a
    jp nc, Jump_028_7bac                          ; $4e89: $d2 $ac $7b

    cp d                                          ; $4e8c: $ba
    cp a                                          ; $4e8d: $bf
    jr nz, jr_028_4e9c                            ; $4e8e: $20 $0c

    daa                                           ; $4e90: $27
    and l                                         ; $4e91: $a5
    push af                                       ; $4e92: $f5
    ld h, e                                       ; $4e93: $63
    inc sp                                        ; $4e94: $33
    and [hl]                                      ; $4e95: $a6
    dec c                                         ; $4e96: $0d
    ld [hl], a                                    ; $4e97: $77
    rla                                           ; $4e98: $17

Jump_028_4e99:
    xor b                                         ; $4e99: $a8
    and $bb                                       ; $4e9a: $e6 $bb

jr_028_4e9c:
    sbc $15                                       ; $4e9c: $de $15
    inc bc                                        ; $4e9e: $03
    sub [hl]                                      ; $4e9f: $96
    ret                                           ; $4ea0: $c9


    add a                                         ; $4ea1: $87
    rra                                           ; $4ea2: $1f
    or [hl]                                       ; $4ea3: $b6
    ld e, a                                       ; $4ea4: $5f
    ld d, $36                                     ; $4ea5: $16 $36
    inc bc                                        ; $4ea7: $03
    scf                                           ; $4ea8: $37
    db $ec                                        ; $4ea9: $ec
    ret                                           ; $4eaa: $c9


    rst $00                                       ; $4eab: $c7

Jump_028_4eac:
    or h                                          ; $4eac: $b4
    add c                                         ; $4ead: $81
    xor c                                         ; $4eae: $a9
    xor a                                         ; $4eaf: $af
    dec [hl]                                      ; $4eb0: $35
    inc bc                                        ; $4eb1: $03
    ld e, [hl]                                    ; $4eb2: $5e
    push bc                                       ; $4eb3: $c5
    ld bc, $47ad                                  ; $4eb4: $01 $ad $47
    ld sp, hl                                     ; $4eb7: $f9
    pop bc                                        ; $4eb8: $c1
    ld d, a                                       ; $4eb9: $57
    ld a, [c]                                     ; $4eba: $f2
    cp [hl]                                       ; $4ebb: $be
    adc [hl]                                      ; $4ebc: $8e
    ld [bc], a                                    ; $4ebd: $02
    ld l, b                                       ; $4ebe: $68
    ldh a, [$b0]                                  ; $4ebf: $f0 $b0
    ld a, [c]                                     ; $4ec1: $f2
    or c                                          ; $4ec2: $b1
    di                                            ; $4ec3: $f3
    ld l, h                                       ; $4ec4: $6c
    pop hl                                        ; $4ec5: $e1
    cpl                                           ; $4ec6: $2f
    ld a, b                                       ; $4ec7: $78
    sbc a                                         ; $4ec8: $9f
    rst $20                                       ; $4ec9: $e7
    xor d                                         ; $4eca: $aa
    xor b                                         ; $4ecb: $a8
    nop                                           ; $4ecc: $00
    dec sp                                        ; $4ecd: $3b
    rst $18                                       ; $4ece: $df

Jump_028_4ecf:
    call c, $feaa                                 ; $4ecf: $dc $aa $fe
    add d                                         ; $4ed2: $82
    jr nc, jr_028_4eeb                            ; $4ed3: $30 $16

jr_028_4ed5:
    ret c                                         ; $4ed5: $d8

    ld l, c                                       ; $4ed6: $69
    and $8a                                       ; $4ed7: $e6 $8a
    ld a, h                                       ; $4ed9: $7c
    adc h                                         ; $4eda: $8c
    ld c, e                                       ; $4edb: $4b
    ld a, [$bda5]                                 ; $4edc: $fa $a5 $bd
    ld h, $8d                                     ; $4edf: $26 $8d
    xor h                                         ; $4ee1: $ac
    inc hl                                        ; $4ee2: $23
    ld l, c                                       ; $4ee3: $69
    ccf                                           ; $4ee4: $3f
    ld b, b                                       ; $4ee5: $40
    ld a, [bc]                                    ; $4ee6: $0a
    ld [hl], h                                    ; $4ee7: $74
    ld e, l                                       ; $4ee8: $5d
    db $eb                                        ; $4ee9: $eb
    adc a                                         ; $4eea: $8f

jr_028_4eeb:
    ld e, l                                       ; $4eeb: $5d
    ld b, [hl]                                    ; $4eec: $46
    dec [hl]                                      ; $4eed: $35
    rra                                           ; $4eee: $1f
    db $fc                                        ; $4eef: $fc
    add a                                         ; $4ef0: $87
    dec sp                                        ; $4ef1: $3b
    rst $18                                       ; $4ef2: $df
    ld e, h                                       ; $4ef3: $5c
    rst $38                                       ; $4ef4: $ff
    sub l                                         ; $4ef5: $95
    dec de                                        ; $4ef6: $1b
    jp nz, Jump_028_7b47                          ; $4ef7: $c2 $47 $7b

    ld e, [hl]                                    ; $4efa: $5e
    ld a, [hl]                                    ; $4efb: $7e
    ld d, c                                       ; $4efc: $51
    pop bc                                        ; $4efd: $c1

jr_028_4efe:
    rst $20                                       ; $4efe: $e7
    scf                                           ; $4eff: $37
    db $fc                                        ; $4f00: $fc
    ld e, c                                       ; $4f01: $59
    ld b, $ca                                     ; $4f02: $06 $ca
    xor a                                         ; $4f04: $af
    call c, Call_000_0310                         ; $4f05: $dc $10 $03
    sub [hl]                                      ; $4f08: $96
    add c                                         ; $4f09: $81
    ld a, [c]                                     ; $4f0a: $f2
    db $d3                                        ; $4f0b: $d3

jr_028_4f0c:
    ld sp, $fa95                                  ; $4f0c: $31 $95 $fa
    db $ec                                        ; $4f0f: $ec
    dec de                                        ; $4f10: $1b
    jr jr_028_4f0c                                ; $4f11: $18 $f9

    ld b, c                                       ; $4f13: $41
    db $dd                                        ; $4f14: $dd
    call nz, $a5fa                                ; $4f15: $c4 $fa $a5
    ld h, b                                       ; $4f18: $60
    ld a, [hl+]                                   ; $4f19: $2a
    ld l, c                                       ; $4f1a: $69
    adc b                                         ; $4f1b: $88
    xor l                                         ; $4f1c: $ad
    cp h                                          ; $4f1d: $bc
    db $fc                                        ; $4f1e: $fc
    cp h                                          ; $4f1f: $bc
    db $fc                                        ; $4f20: $fc
    jp nc, $cbcb                                  ; $4f21: $d2 $cb $cb

    add sp, $06                                   ; $4f24: $e8 $06
    push bc                                       ; $4f26: $c5
    pop de                                        ; $4f27: $d1
    adc [hl]                                      ; $4f28: $8e
    ld [hl], $be                                  ; $4f29: $36 $be
    ld d, b                                       ; $4f2b: $50
    sbc e                                         ; $4f2c: $9b
    or $cf                                        ; $4f2d: $f6 $cf
    ld [hl-], a                                   ; $4f2f: $32
    ld e, [hl]                                    ; $4f30: $5e
    ld h, c                                       ; $4f31: $61
    rst $20                                       ; $4f32: $e7
    add hl, de                                    ; $4f33: $19
    ldh a, [$c1]                                  ; $4f34: $f0 $c1
    rst $38                                       ; $4f36: $ff
    and l                                         ; $4f37: $a5
    ld h, b                                       ; $4f38: $60
    ld e, [hl]                                    ; $4f39: $5e
    ld l, $05                                     ; $4f3a: $2e $05
    add b                                         ; $4f3c: $80
    jr nc, jr_028_4ed5                            ; $4f3d: $30 $96

    pop af                                        ; $4f3f: $f1
    ld a, [bc]                                    ; $4f40: $0a
    adc e                                         ; $4f41: $8b
    sbc c                                         ; $4f42: $99
    push af                                       ; $4f43: $f5
    ld c, e                                       ; $4f44: $4b
    pop bc                                        ; $4f45: $c1
    cp h                                          ; $4f46: $bc
    ld c, b                                       ; $4f47: $48
    sbc d                                         ; $4f48: $9a
    and b                                         ; $4f49: $a0
    inc l                                         ; $4f4a: $2c
    ld l, h                                       ; $4f4b: $6c
    sub [hl]                                      ; $4f4c: $96
    sub c                                         ; $4f4d: $91
    db $ed                                        ; $4f4e: $ed
    cp b                                          ; $4f4f: $b8
    adc h                                         ; $4f50: $8c
    scf                                           ; $4f51: $37
    ld [hl], a                                    ; $4f52: $77
    or d                                          ; $4f53: $b2
    ld b, $77                                     ; $4f54: $06 $77
    ld e, [hl]                                    ; $4f56: $5e
    ld a, [hl]                                    ; $4f57: $7e
    jp hl                                         ; $4f58: $e9


    push hl                                       ; $4f59: $e5
    ld h, l                                       ; $4f5a: $65
    ld [hl], h                                    ; $4f5b: $74
    add e                                         ; $4f5c: $83
    ld [c], a                                     ; $4f5d: $e2
    ld l, b                                       ; $4f5e: $68
    sub [hl]                                      ; $4f5f: $96
    sbc d                                         ; $4f60: $9a
    push af                                       ; $4f61: $f5
    ld h, a                                       ; $4f62: $67
    and a                                         ; $4f63: $a7
    inc b                                         ; $4f64: $04
    jp hl                                         ; $4f65: $e9


    cp $34                                        ; $4f66: $fe $34
    adc l                                         ; $4f68: $8d
    ld [hl], c                                    ; $4f69: $71
    ld e, [hl]                                    ; $4f6a: $5e
    ld a, [hl]                                    ; $4f6b: $7e
    sub l                                         ; $4f6c: $95
    ld a, [bc]                                    ; $4f6d: $0a
    ld e, e                                       ; $4f6e: $5b
    xor b                                         ; $4f6f: $a8
    pop bc                                        ; $4f70: $c1
    xor l                                         ; $4f71: $ad
    ld d, [hl]                                    ; $4f72: $56
    ld h, l                                       ; $4f73: $65
    ret c                                         ; $4f74: $d8

Call_028_4f75:
    cp [hl]                                       ; $4f75: $be
    and h                                         ; $4f76: $a4
    ld a, [hl]                                    ; $4f77: $7e
    sub e                                         ; $4f78: $93
    add b                                         ; $4f79: $80
    dec sp                                        ; $4f7a: $3b
    cpl                                           ; $4f7b: $2f
    ld l, c                                       ; $4f7c: $69
    add d                                         ; $4f7d: $82
    add d                                         ; $4f7e: $82
    jr nc, @+$49                                  ; $4f7f: $30 $47

    ld l, e                                       ; $4f81: $6b
    ld d, l                                       ; $4f82: $55
    sbc a                                         ; $4f83: $9f
    ld b, $7a                                     ; $4f84: $06 $7a
    adc c                                         ; $4f86: $89
    cp e                                          ; $4f87: $bb
    ld d, [hl]                                    ; $4f88: $56
    dec d                                         ; $4f89: $15
    ld l, c                                       ; $4f8a: $69
    cp d                                          ; $4f8b: $ba
    adc $e2                                       ; $4f8c: $ce $e2
    dec [hl]                                      ; $4f8e: $35
    sbc b                                         ; $4f8f: $98
    ld b, [hl]                                    ; $4f90: $46
    ld e, [hl]                                    ; $4f91: $5e
    dec de                                        ; $4f92: $1b
    ld e, b                                       ; $4f93: $58
    sub b                                         ; $4f94: $90
    ret                                           ; $4f95: $c9


    and $39                                       ; $4f96: $e6 $39
    ld hl, sp-$61                                 ; $4f98: $f8 $9f
    xor [hl]                                      ; $4f9a: $ae
    ld a, e                                       ; $4f9b: $7b
    cp d                                          ; $4f9c: $ba
    cp a                                          ; $4f9d: $bf
    db $ec                                        ; $4f9e: $ec
    jp nc, $b98e                                  ; $4f9f: $d2 $8e $b9

    ld a, [de]                                    ; $4fa2: $1a
    inc h                                         ; $4fa3: $24
    db $ed                                        ; $4fa4: $ed
    xor b                                         ; $4fa5: $a8
    jr @-$3f                                      ; $4fa6: $18 $bf

    ld b, c                                       ; $4fa8: $41
    jr @+$2f                                      ; $4fa9: $18 $2d

    jp c, Jump_028_7cac                           ; $4fab: $da $ac $7c

    adc h                                         ; $4fae: $8c
    add hl, sp                                    ; $4faf: $39
    rst $08                                       ; $4fb0: $cf
    dec e                                         ; $4fb1: $1d
    ld h, e                                       ; $4fb2: $63
    jp nz, Jump_028_7c76                          ; $4fb3: $c2 $76 $7c

    sub [hl]                                      ; $4fb6: $96
    ld a, [c]                                     ; $4fb7: $f2
    or e                                          ; $4fb8: $b3
    ld d, e                                       ; $4fb9: $53
    ld d, $3e                                     ; $4fba: $16 $3e
    ld [hl], a                                    ; $4fbc: $77
    xor l                                         ; $4fbd: $ad
    ld a, [hl+]                                   ; $4fbe: $2a
    jp nc, $0c20                                  ; $4fbf: $d2 $20 $0c

    and a                                         ; $4fc2: $a7
    and h                                         ; $4fc3: $a4
    xor a                                         ; $4fc4: $af
    ld a, c                                       ; $4fc5: $79
    rst $20                                       ; $4fc6: $e7
    adc $32                                       ; $4fc7: $ce $32
    ld a, [$f367]                                 ; $4fc9: $fa $67 $f3
    ld e, h                                       ; $4fcc: $5c
    ld [hl], b                                    ; $4fcd: $70
    xor l                                         ; $4fce: $ad
    ccf                                           ; $4fcf: $3f
    cpl                                           ; $4fd0: $2f
    rla                                           ; $4fd1: $17
    ld d, [hl]                                    ; $4fd2: $56
    rst $38                                       ; $4fd3: $ff
    ld h, [hl]                                    ; $4fd4: $66
    ld l, l                                       ; $4fd5: $6d
    xor l                                         ; $4fd6: $ad
    ld [$0308], a                                 ; $4fd7: $ea $08 $03
    db $dd                                        ; $4fda: $dd
    dec h                                         ; $4fdb: $25
    db $ed                                        ; $4fdc: $ed
    rlca                                          ; $4fdd: $07
    ld c, b                                       ; $4fde: $48
    reti                                          ; $4fdf: $d9


    pop de                                        ; $4fe0: $d1
    sub a                                         ; $4fe1: $97
    ld [$62ba], sp                                ; $4fe2: $08 $ba $62
    ld h, a                                       ; $4fe5: $67
    ld [hl], e                                    ; $4fe6: $73
    db $e4                                        ; $4fe7: $e4
    ret z                                         ; $4fe8: $c8

    ld de, $a421                                  ; $4fe9: $11 $21 $a4
    call nz, $e5e6                                ; $4fec: $c4 $e6 $e5
    sbc e                                         ; $4fef: $9b
    sbc d                                         ; $4ff0: $9a
    push af                                       ; $4ff1: $f5
    ld b, a                                       ; $4ff2: $47
    ld l, a                                       ; $4ff3: $6f
    ld a, l                                       ; $4ff4: $7d
    sbc c                                         ; $4ff5: $99
    cp h                                          ; $4ff6: $bc
    add $cb                                       ; $4ff7: $c6 $cb
    pop af                                        ; $4ff9: $f1
    reti                                          ; $4ffa: $d9


    cp h                                          ; $4ffb: $bc
    xor b                                         ; $4ffc: $a8
    xor a                                         ; $4ffd: $af
    ld l, l                                       ; $4ffe: $6d
    jp c, $f8ed                                   ; $4fff: $da $ed $f8

    add c                                         ; $5002: $81
    add hl, bc                                    ; $5003: $09
    ld [hl], a                                    ; $5004: $77
    add c                                         ; $5005: $81
    cp e                                          ; $5006: $bb
    ld c, e                                       ; $5007: $4b
    or e                                          ; $5008: $b3
    or l                                          ; $5009: $b5
    ld [hl], d                                    ; $500a: $72
    xor $42                                       ; $500b: $ee $42
    dec c                                         ; $500d: $0d
    ld l, [hl]                                    ; $500e: $6e
    and l                                         ; $500f: $a5
    ld de, $b421                                  ; $5010: $11 $21 $b4
    ld d, e                                       ; $5013: $53
    dec bc                                        ; $5014: $0b
    ld [hl], a                                    ; $5015: $77
    push hl                                       ; $5016: $e5
    ld h, e                                       ; $5017: $63
    call z, $aab5                                 ; $5018: $cc $b5 $aa
    ld c, b                                       ; $501b: $48
    add e                                         ; $501c: $83
    jr nc, @-$68                                  ; $501d: $30 $96

    dec d                                         ; $501f: $15
    or l                                          ; $5020: $b5
    cp $bc                                        ; $5021: $fe $bc
    db $fc                                        ; $5023: $fc
    adc [hl]                                      ; $5024: $8e
    db $d3                                        ; $5025: $d3
    jr nc, @+$0f                                  ; $5026: $30 $0d

    xor h                                         ; $5028: $ac
    rst $20                                       ; $5029: $e7
    push af                                       ; $502a: $f5
    xor d                                         ; $502b: $aa
    inc a                                         ; $502c: $3c
    ld c, h                                       ; $502d: $4c
    adc c                                         ; $502e: $89
    xor l                                         ; $502f: $ad
    rst $20                                       ; $5030: $e7
    push hl                                       ; $5031: $e5
    xor b                                         ; $5032: $a8
    jp nz, $dd60                                  ; $5033: $c2 $60 $dd

    ld d, h                                       ; $5036: $54
    ret c                                         ; $5037: $d8

    ld hl, sp-$15                                 ; $5038: $f8 $eb
    ld h, l                                       ; $503a: $65
    db $dd                                        ; $503b: $dd
    xor [hl]                                      ; $503c: $ae
    ld d, h                                       ; $503d: $54
    cp a                                          ; $503e: $bf
    and h                                         ; $503f: $a4
    ld e, l                                       ; $5040: $5d
    ld b, a                                       ; $5041: $47
    jr @-$41                                      ; $5042: $18 $bd

    ld e, $b8                                     ; $5044: $1e $b8
    or e                                          ; $5046: $b3
    call z, $a5cb                                 ; $5047: $cc $cb $a5
    ld a, [$5cbc]                                 ; $504a: $fa $bc $5c
    ret c                                         ; $504d: $d8

    add l                                         ; $504e: $85
    ld a, c                                       ; $504f: $79
    ld sp, hl                                     ; $5050: $f9
    add c                                         ; $5051: $81
    add [hl]                                      ; $5052: $86
    cp a                                          ; $5053: $bf
    ld c, d                                       ; $5054: $4a
    add l                                         ; $5055: $85
    and c                                         ; $5056: $a1
    dec e                                         ; $5057: $1d
    ld l, l                                       ; $5058: $6d
    ld a, h                                       ; $5059: $7c
    sub [hl]                                      ; $505a: $96
    ld a, c                                       ; $505b: $79
    cp c                                          ; $505c: $b9
    ld d, h                                       ; $505d: $54
    ld e, a                                       ; $505e: $5f
    sub e                                         ; $505f: $93
    ld b, [hl]                                    ; $5060: $46
    ld h, [hl]                                    ; $5061: $66
    xor e                                         ; $5062: $ab
    sub a                                         ; $5063: $97
    sub a                                         ; $5064: $97
    pop af                                        ; $5065: $f1
    ld l, c                                       ; $5066: $69
    ld [hl+], a                                   ; $5067: $22
    dec de                                        ; $5068: $1b
    xor a                                         ; $5069: $af
    db $e4                                        ; $506a: $e4
    ld l, e                                       ; $506b: $6b
    jp nc, Jump_028_73cc                          ; $506c: $d2 $cc $73

    ld b, l                                       ; $506f: $45
    xor l                                         ; $5070: $ad
    cp a                                          ; $5071: $bf
    db $eb                                        ; $5072: $eb

Call_028_5073:
    ld [$3d03], sp                                ; $5073: $08 $03 $3d
    adc d                                         ; $5076: $8a
    ld d, d                                       ; $5077: $52
    ld a, l                                       ; $5078: $7d
    ld c, l                                       ; $5079: $4d
    ld a, [de]                                    ; $507a: $1a
    xor $ba                                       ; $507b: $ee $ba
    ld c, e                                       ; $507d: $4b
    jp c, $900f                                   ; $507e: $da $0f $90

    or d                                          ; $5081: $b2
    and e                                         ; $5082: $a3
    cpl                                           ; $5083: $2f
    ld de, $c174                                  ; $5084: $11 $74 $c1
    db $dd                                        ; $5087: $dd
    and d                                         ; $5088: $a2
    ld [bc], a                                    ; $5089: $02
    adc h                                         ; $508a: $8c
    ld e, l                                       ; $508b: $5d
    ld [$c02f], sp                                ; $508c: $08 $2f $c0
    inc sp                                        ; $508f: $33
    add h                                         ; $5090: $84
    db $10                                        ; $5091: $10
    ld [c], a                                     ; $5092: $e2
    ret z                                         ; $5093: $c8

    sub c                                         ; $5094: $91
    inc hl                                        ; $5095: $23
    ld b, a                                       ; $5096: $47
    adc [hl]                                      ; $5097: $8e
    inc e                                         ; $5098: $1c
    ld de, $0842                                  ; $5099: $11 $42 $08
    ld h, c                                       ; $509c: $61
    ld h, a                                       ; $509d: $67
    ld [hl], e                                    ; $509e: $73
    db $e4                                        ; $509f: $e4
    ret z                                         ; $50a0: $c8

    ld de, $8421                                  ; $50a1: $11 $21 $84
    jr nc, @+$18                                  ; $50a4: $30 $16

    sbc b                                         ; $50a6: $98
    sub a                                         ; $50a7: $97
    dec bc                                        ; $50a8: $0b
    db $d3                                        ; $50a9: $d3
    ld d, l                                       ; $50aa: $55
    ld d, c                                       ; $50ab: $51
    ld bc, $3296                                  ; $50ac: $01 $96 $32
    jp nc, $df8e                                  ; $50af: $d2 $8e $df

    ldh a, [$bb]                                  ; $50b2: $f0 $bb
    ld h, d                                       ; $50b4: $62
    dec a                                         ; $50b5: $3d
    adc e                                         ; $50b6: $8b
    ld a, [$cc74]                                 ; $50b7: $fa $74 $cc
    call nz, $2ab8                                ; $50ba: $c4 $b8 $2a
    ld a, [hl+]                                   ; $50bd: $2a
    nop                                           ; $50be: $00
    sbc d                                         ; $50bf: $9a
    ld h, l                                       ; $50c0: $65
    ld d, b                                       ; $50c1: $50
    jp nc, $b644                                  ; $50c2: $d2 $44 $b6

    and d                                         ; $50c5: $a2
    sub $5f                                       ; $50c6: $d6 $5f
    ld e, e                                       ; $50c8: $5b
    jp nc, $c504                                  ; $50c9: $d2 $04 $c5

    rlca                                          ; $50cc: $07
    add hl, de                                    ; $50cd: $19
    cp [hl]                                       ; $50ce: $be
    sub a                                         ; $50cf: $97
    ld c, e                                       ; $50d0: $4b
    pop bc                                        ; $50d1: $c1
    inc a                                         ; $50d2: $3c
    daa                                           ; $50d3: $27
    xor a                                         ; $50d4: $af
    inc c                                         ; $50d5: $0c
    ld h, c                                       ; $50d6: $61
    xor l                                         ; $50d7: $ad
    rra                                           ; $50d8: $1f
    ld h, e                                       ; $50d9: $63
    ld [hl], d                                    ; $50da: $72
    rst $10                                       ; $50db: $d7
    ld e, l                                       ; $50dc: $5d
    jp nc, $807e                                  ; $50dd: $d2 $7e $80

    sub h                                         ; $50e0: $94
    dec e                                         ; $50e1: $1d
    rla                                           ; $50e2: $17
    xor a                                         ; $50e3: $af
    di                                            ; $50e4: $f3
    or a                                          ; $50e5: $b7
    xor d                                         ; $50e6: $aa
    inc hl                                        ; $50e7: $23
    inc c                                         ; $50e8: $0c
    rst $00                                       ; $50e9: $c7
    and l                                         ; $50ea: $a5
    call z, $6993                                 ; $50eb: $cc $93 $69
    ld d, e                                       ; $50ee: $53
    add e                                         ; $50ef: $83
    dec a                                         ; $50f0: $3d
    add a                                         ; $50f1: $87
    sub a                                         ; $50f2: $97
    ld [$73c2], a                                 ; $50f3: $ea $c2 $73
    rst $00                                       ; $50f6: $c7
    ld a, a                                       ; $50f7: $7f
    dec l                                         ; $50f8: $2d
    add $ad                                       ; $50f9: $c6 $ad
    ld a, [hl+]                                   ; $50fb: $2a
    ld a, [hl+]                                   ; $50fc: $2a
    pop hl                                        ; $50fd: $e1
    ld [hl], h                                    ; $50fe: $74
    or $ab                                        ; $50ff: $f6 $ab
    sub a                                         ; $5101: $97
    sub a                                         ; $5102: $97
    ld a, c                                       ; $5103: $79

jr_028_5104:
    ld l, $d4                                     ; $5104: $2e $d4
    ld a, [$faef]                                 ; $5106: $fa $ef $fa
    db $ec                                        ; $5109: $ec
    sbc b                                         ; $510a: $98
    ld [$3b68], a                                 ; $510b: $ea $68 $3b
    ld a, [bc]                                    ; $510e: $0a
    ld d, $93                                     ; $510f: $16 $93
    add d                                         ; $5111: $82
    add hl, hl                                    ; $5112: $29
    xor h                                         ; $5113: $ac
    ld c, c                                       ; $5114: $49
    ld d, e                                       ; $5115: $53
    sub e                                         ; $5116: $93
    rra                                           ; $5117: $1f
    cp b                                          ; $5118: $b8
    ld [de], a                                    ; $5119: $12
    cp e                                          ; $511a: $bb
    inc d                                         ; $511b: $14
    xor h                                         ; $511c: $ac
    cp h                                          ; $511d: $bc
    inc a                                         ; $511e: $3c
    ld [hl], a                                    ; $511f: $77
    xor l                                         ; $5120: $ad
    ld a, [hl+]                                   ; $5121: $2a
    jp nc, Jump_028_6770                          ; $5122: $d2 $70 $67

    xor c                                         ; $5125: $a9
    push bc                                       ; $5126: $c5
    cp b                                          ; $5127: $b8
    adc $ad                                       ; $5128: $ce $ad
    ld [$d26b], a                                 ; $512a: $ea $6b $d2
    call z, $ec73                                 ; $512d: $cc $73 $ec
    jp Jump_028_7024                              ; $5130: $c3 $24 $70


    ld d, c                                       ; $5133: $51
    ld a, a                                       ; $5134: $7f
    add h                                         ; $5135: $84
    ld bc, $3fad                                  ; $5136: $01 $ad $3f
    jr z, jr_028_51a4                             ; $5139: $28 $69

    ld [hl+], a                                   ; $513b: $22
    ld e, e                                       ; $513c: $5b
    ld d, c                                       ; $513d: $51
    db $eb                                        ; $513e: $eb
    xor a                                         ; $513f: $af
    ld a, [hl+]                                   ; $5140: $2a
    add hl, bc                                    ; $5141: $09
    ld c, a                                       ; $5142: $4f
    dec bc                                        ; $5143: $0b
    rra                                           ; $5144: $1f
    call Call_028_4ab2                            ; $5145: $cd $b2 $4a
    ld l, c                                       ; $5148: $69
    ld a, [de]                                    ; $5149: $1a
    jp Jump_028_5f04                              ; $514a: $c3 $04 $5f


    xor b                                         ; $514d: $a8
    push af                                       ; $514e: $f5
    sbc a                                         ; $514f: $9f
    db $fd                                        ; $5150: $fd
    ld [$05e5], a                                 ; $5151: $ea $e5 $05
    ld h, [hl]                                    ; $5154: $66
    rst $00                                       ; $5155: $c7
    ld d, h                                       ; $5156: $54
    sbc a                                         ; $5157: $9f
    ld b, [hl]                                    ; $5158: $46
    ld a, c                                       ; $5159: $79
    ld h, l                                       ; $515a: $65
    dec c                                         ; $515b: $0d
    jp nz, Jump_028_66a7                          ; $515c: $c2 $a7 $66

    ld [hl], d                                    ; $515f: $72
    rst $10                                       ; $5160: $d7
    and h                                         ; $5161: $a4
    xor c                                         ; $5162: $a9
    ret                                           ; $5163: $c9


    ld c, a                                       ; $5164: $4f
    rst $10                                       ; $5165: $d7
    ld c, c                                       ; $5166: $49
    cp $c5                                        ; $5167: $fe $c5
    ld [hl], $71                                  ; $5169: $36 $71
    db $fc                                        ; $516b: $fc
    push hl                                       ; $516c: $e5
    xor b                                         ; $516d: $a8
    jp nz, $d3b8                                  ; $516e: $c2 $b8 $d3

    jr jr_028_519a                                ; $5171: $18 $27

    scf                                           ; $5173: $37
    jr z, jr_028_5104                             ; $5174: $28 $8e

    halt                                          ; $5176: $76
    ld d, d                                       ; $5177: $52
    ld h, [hl]                                    ; $5178: $66
    sbc l                                         ; $5179: $9d
    cp e                                          ; $517a: $bb
    ld h, $4d                                     ; $517b: $26 $4d
    ld c, l                                       ; $517d: $4d
    ld a, [hl]                                    ; $517e: $7e
    and c                                         ; $517f: $a1
    sub $2f                                       ; $5180: $d6 $2f
    dec b                                         ; $5182: $05
    dec bc                                        ; $5183: $0b
    ld a, a                                       ; $5184: $7f
    sub d                                         ; $5185: $92
    ld sp, $6c2e                                  ; $5186: $31 $2e $6c
    or $cd                                        ; $5189: $f6 $cd
    ld b, e                                       ; $518b: $43
    rla                                           ; $518c: $17
    inc c                                         ; $518d: $0c
    dec a                                         ; $518e: $3d
    ccf                                           ; $518f: $3f
    add $b1                                       ; $5190: $c6 $b1
    and h                                         ; $5192: $a4
    rst $20                                       ; $5193: $e7
    xor [hl]                                      ; $5194: $ae
    ld d, l                                       ; $5195: $55
    ld b, l                                       ; $5196: $45
    ld a, [de]                                    ; $5197: $1a
    or h                                          ; $5198: $b4
    add e                                         ; $5199: $83

jr_028_519a:
    ld d, [hl]                                    ; $519a: $56
    jp nc, $afc0                                  ; $519b: $d2 $c0 $af

    sub e                                         ; $519e: $93
    sub a                                         ; $519f: $97
    inc e                                         ; $51a0: $1c
    ld h, [hl]                                    ; $51a1: $66
    and a                                         ; $51a2: $a7
    ld c, h                                       ; $51a3: $4c

jr_028_51a4:
    ld h, a                                       ; $51a4: $67
    ld e, a                                       ; $51a5: $5f
    ld a, [$5e75]                                 ; $51a6: $fa $75 $5e
    db $ec                                        ; $51a9: $ec
    sub h                                         ; $51aa: $94
    ld d, b                                       ; $51ab: $50
    xor c                                         ; $51ac: $a9
    ld a, d                                       ; $51ad: $7a
    add h                                         ; $51ae: $84
    ld bc, $b23d                                  ; $51af: $01 $3d $b2
    or e                                          ; $51b2: $b3
    ld a, [hl-]                                   ; $51b3: $3a
    and l                                         ; $51b4: $a5
    ld d, a                                       ; $51b5: $57
    and l                                         ; $51b6: $a5
    res 1, [hl]                                   ; $51b7: $cb $8e
    sub d                                         ; $51b9: $92
    ld e, a                                       ; $51ba: $5f
    sub e                                         ; $51bb: $93
    ld h, [hl]                                    ; $51bc: $66
    ld h, b                                       ; $51bd: $60
    db $e4                                        ; $51be: $e4
    rst $10                                       ; $51bf: $d7
    and h                                         ; $51c0: $a4
    ld e, c                                       ; $51c1: $59
    ld d, c                                       ; $51c2: $51
    db $eb                                        ; $51c3: $eb
    ld d, e                                       ; $51c4: $53
    call $df17                                    ; $51c5: $cd $17 $df
    ld a, d                                       ; $51c8: $7a
    ld e, l                                       ; $51c9: $5d
    db $fd                                        ; $51ca: $fd
    reti                                          ; $51cb: $d9


    db $ec                                        ; $51cc: $ec
    ld d, a                                       ; $51cd: $57
    cpl                                           ; $51ce: $2f
    cpl                                           ; $51cf: $2f
    or b                                          ; $51d0: $b0
    or $db                                        ; $51d1: $f6 $db
    add hl, hl                                    ; $51d3: $29
    rst $18                                       ; $51d4: $df
    ld [hl], l                                    ; $51d5: $75
    db $fd                                        ; $51d6: $fd
    push af                                       ; $51d7: $f5
    cp e                                          ; $51d8: $bb
    sub d                                         ; $51d9: $92
    ld b, $7e                                     ; $51da: $06 $7e
    sbc l                                         ; $51dc: $9d
    cp h                                          ; $51dd: $bc
    db $e4                                        ; $51de: $e4
    jr nc, @+$3d                                  ; $51df: $30 $3b

    ld h, l                                       ; $51e1: $65
    cp d                                          ; $51e2: $ba
    di                                            ; $51e3: $f3
    or d                                          ; $51e4: $b2
    dec a                                         ; $51e5: $3d
    cp $63                                        ; $51e6: $fe $63
    inc e                                         ; $51e8: $1c
    ld c, e                                       ; $51e9: $4b
    ld a, [$182e]                                 ; $51ea: $fa $2e $18
    cp l                                          ; $51ed: $bd
    jp nc, $caac                                  ; $51ee: $d2 $ac $ca

    or b                                          ; $51f1: $b0
    inc de                                        ; $51f2: $13
    rst $18                                       ; $51f3: $df
    sbc a                                         ; $51f4: $9f
    call $efcb                                    ; $51f5: $cd $cb $ef
    add hl, sp                                    ; $51f8: $39
    cp h                                          ; $51f9: $bc
    ld d, h                                       ; $51fa: $54
    rla                                           ; $51fb: $17
    ld a, [hl]                                    ; $51fc: $7e
    sbc l                                         ; $51fd: $9d
    rla                                           ; $51fe: $17
    ei                                            ; $51ff: $fb
    dec hl                                        ; $5200: $2b
    adc a                                         ; $5201: $8f
    dec c                                         ; $5202: $0d
    ld [hl], a                                    ; $5203: $77
    xor l                                         ; $5204: $ad
    ld a, [hl+]                                   ; $5205: $2a
    jp nc, Jump_028_5974                          ; $5206: $d2 $74 $59

    ld a, a                                       ; $5209: $7f

jr_028_520a:
    rlca                                          ; $520a: $07
    xor l                                         ; $520b: $ad
    and h                                         ; $520c: $a4
    add c                                         ; $520d: $81
    ld e, a                                       ; $520e: $5f
    daa                                           ; $520f: $27
    cpl                                           ; $5210: $2f
    add hl, sp                                    ; $5211: $39
    call z, $d94e                                 ; $5212: $cc $4e $d9
    ld [hl], e                                    ; $5215: $73
    xor b                                         ; $5216: $a8
    ld a, $c6                                     ; $5217: $3e $c6
    and a                                         ; $5219: $a7
    ld [$60bb], a                                 ; $521a: $ea $bb $60
    xor l                                         ; $521d: $ad
    ld l, d                                       ; $521e: $6a
    ld a, l                                       ; $521f: $7d
    xor d                                         ; $5220: $aa
    ld sp, hl                                     ; $5221: $f9
    adc $37                                       ; $5222: $ce $37
    rst $10                                       ; $5224: $d7
    ld a, a                                       ; $5225: $7f
    ld b, c                                       ; $5226: $41
    ld a, [$fcbc]                                 ; $5227: $fa $bc $fc
    db $ec                                        ; $522a: $ec
    ld d, a                                       ; $522b: $57
    cpl                                           ; $522c: $2f
    cpl                                           ; $522d: $2f
    dec [hl]                                      ; $522e: $35
    sbc b                                         ; $522f: $98
    cp d                                          ; $5230: $ba
    ccf                                           ; $5231: $3f
    ld sp, hl                                     ; $5232: $f9
    ld c, l                                       ; $5233: $4d
    ld [c], a                                     ; $5234: $e2
    adc $52                                       ; $5235: $ce $52
    dec bc                                        ; $5237: $0b
    and a                                         ; $5238: $a7
    or [hl]                                       ; $5239: $b6
    add sp, $65                                   ; $523a: $e8 $65
    ld l, b                                       ; $523c: $68
    daa                                           ; $523d: $27
    cp l                                          ; $523e: $bd
    rst $10                                       ; $523f: $d7
    ld h, b                                       ; $5240: $60
    ld l, $cd                                     ; $5241: $2e $cd
    inc [hl]                                      ; $5243: $34
    ret nc                                        ; $5244: $d0

    ld c, e                                       ; $5245: $4b
    ld [$a703], sp                                ; $5246: $08 $03 $a7
    inc h                                         ; $5249: $24

Jump_028_524a:
    rst $08                                       ; $524a: $cf
    ld e, l                                       ; $524b: $5d
    xor e                                         ; $524c: $ab
    adc d                                         ; $524d: $8a
    inc [hl]                                      ; $524e: $34
    call c, $d331                                 ; $524f: $dc $31 $d3
    adc c                                         ; $5252: $89
    or a                                          ; $5253: $b7
    ld d, d                                       ; $5254: $52
    rst $38                                       ; $5255: $ff
    add l                                         ; $5256: $85
    call $2578                                    ; $5257: $cd $78 $25
    or [hl]                                       ; $525a: $b6
    jr nc, jr_028_520a                            ; $525b: $30 $ad

    rra                                           ; $525d: $1f
    ld a, $39                                     ; $525e: $3e $39
    db $ec                                        ; $5260: $ec
    add hl, sp                                    ; $5261: $39
    ld l, b                                       ; $5262: $68
    push hl                                       ; $5263: $e5
    or c                                          ; $5264: $b1
    ld b, c                                       ; $5265: $41
    db $eb                                        ; $5266: $eb
    ld d, c                                       ; $5267: $51
    ld a, [hl]                                    ; $5268: $7e
    ld a, [c]                                     ; $5269: $f2
    ldh [rWX], a                                  ; $526a: $e0 $4b
    ld a, e                                       ; $526c: $7b
    ld c, l                                       ; $526d: $4d
    sbc d                                         ; $526e: $9a
    pop af                                        ; $526f: $f1
    ld [$5955], a                                 ; $5270: $ea $55 $59
    and l                                         ; $5273: $a5
    ld a, [c]                                     ; $5274: $f2
    or [hl]                                       ; $5275: $b6
    adc c                                         ; $5276: $89
    or c                                          ; $5277: $b1
    ld b, c                                       ; $5278: $41
    jr @-$37                                      ; $5279: $18 $c7

    ld h, a                                       ; $527b: $67
    or d                                          ; $527c: $b2
    pop af                                        ; $527d: $f1
    add hl, hl                                    ; $527e: $29
    ld [hl], l                                    ; $527f: $75
    xor $5a                                       ; $5280: $ee $5a
    ld d, l                                       ; $5282: $55
    and h                                         ; $5283: $a4
    jp hl                                         ; $5284: $e9


    or d                                          ; $5285: $b2
    ld e, [hl]                                    ; $5286: $5e
    ld l, c                                       ; $5287: $69
    ld l, d                                       ; $5288: $6a
    sub $1f                                       ; $5289: $d6 $1f
    ld c, e                                       ; $528b: $4b
    ld a, [$2f1d]                                 ; $528c: $fa $1d $2f
    adc l                                         ; $528f: $8d
    ld l, l                                       ; $5290: $6d
    ld e, a                                       ; $5291: $5f
    ld h, d                                       ; $5292: $62
    add hl, hl                                    ; $5293: $29
    db $eb                                        ; $5294: $eb
    ld c, b                                       ; $5295: $48
    ld a, [de]                                    ; $5296: $1a
    sub $05                                       ; $5297: $d6 $05
    inc bc                                        ; $5299: $03
    cp l                                          ; $529a: $bd
    ld e, $b8                                     ; $529b: $1e $b8
    ld l, e                                       ; $529d: $6b
    ld d, l                                       ; $529e: $55
    sub c                                         ; $529f: $91
    add [hl]                                      ; $52a0: $86
    cp e                                          ; $52a1: $bb
    or a                                          ; $52a2: $b7
    ld a, $cd                                     ; $52a3: $3e $cd
    or d                                          ; $52a5: $b2
    ld a, [hl+]                                   ; $52a6: $2a
    ld c, l                                       ; $52a7: $4d
    ld h, h                                       ; $52a8: $64
    ld d, h                                       ; $52a9: $54
    di                                            ; $52aa: $f3
    dec d                                         ; $52ab: $15

Jump_028_52ac:
    or l                                          ; $52ac: $b5
    cp $58                                        ; $52ad: $fe $58

Jump_028_52af:
    jp nc, Jump_028_614f                          ; $52af: $d2 $4f $61

    db $fc                                        ; $52b2: $fc
    rst $00                                       ; $52b3: $c7
    adc b                                         ; $52b4: $88
    jr nc, jr_028_52e4                            ; $52b5: $30 $2d

    ld l, [hl]                                    ; $52b7: $6e
    ret c                                         ; $52b8: $d8

    sub e                                         ; $52b9: $93
    inc bc                                        ; $52ba: $03
    ld [hl], a                                    ; $52bb: $77
    sbc l                                         ; $52bc: $9d
    ld hl, sp+$0a                                 ; $52bd: $f8 $0a

jr_028_52bf:
    cp a                                          ; $52bf: $bf
    adc [hl]                                      ; $52c0: $8e
    ld l, b                                       ; $52c1: $68
    push hl                                       ; $52c2: $e5
    or a                                          ; $52c3: $b7
    ld a, [$f979]                                 ; $52c4: $fa $79 $f9
    pop af                                        ; $52c7: $f1
    ld c, d                                       ; $52c8: $4a
    ld l, h                                       ; $52c9: $6c
    ld h, c                                       ; $52ca: $61
    ld e, d                                       ; $52cb: $5a
    ccf                                           ; $52cc: $3f
    ld a, h                                       ; $52cd: $7c
    ld [hl], d                                    ; $52ce: $72
    ld e, b                                       ; $52cf: $58
    xor e                                         ; $52d0: $ab
    adc d                                         ; $52d1: $8a
    inc [hl]                                      ; $52d2: $34
    ld d, e                                       ; $52d3: $53
    ld h, d                                       ; $52d4: $62
    or e                                          ; $52d5: $b3
    xor h                                         ; $52d6: $ac
    xor b                                         ; $52d7: $a8
    push af                                       ; $52d8: $f5
    rlca                                          ; $52d9: $07
    dec h                                         ; $52da: $25
    ld a, c                                       ; $52db: $79
    ld e, d                                       ; $52dc: $5a
    sub e                                         ; $52dd: $93
    ld h, [hl]                                    ; $52de: $66
    ld c, d                                       ; $52df: $4a
    ld l, h                                       ; $52e0: $6c
    db $ed                                        ; $52e1: $ed
    ld e, a                                       ; $52e2: $5f

jr_028_52e3:
    ld b, a                                       ; $52e3: $47

jr_028_52e4:
    cp [hl]                                       ; $52e4: $be
    and e                                         ; $52e5: $a3
    ld a, [c]                                     ; $52e6: $f2
    ld l, h                                       ; $52e7: $6c
    sbc [hl]                                      ; $52e8: $9e
    adc e                                         ; $52e9: $8b
    ld l, a                                       ; $52ea: $6f
    cp l                                          ; $52eb: $bd
    xor [hl]                                      ; $52ec: $ae
    cp $d3                                        ; $52ed: $fe $d3
    reti                                          ; $52ef: $d9


Jump_028_52f0:
    xor a                                         ; $52f0: $af
    ld e, [hl]                                    ; $52f1: $5e
    ld e, [hl]                                    ; $52f2: $5e
    sub $6e                                       ; $52f3: $d6 $6e
    sub [hl]                                      ; $52f5: $96
    ld b, [hl]                                    ; $52f6: $46
    ld b, [hl]                                    ; $52f7: $46
    rst $08                                       ; $52f8: $cf
    pop bc                                        ; $52f9: $c1
    rlca                                          ; $52fa: $07
    rrca                                          ; $52fb: $0f
    ld [hl], b                                    ; $52fc: $70
    sub e                                         ; $52fd: $93
    ret nc                                        ; $52fe: $d0

    cp d                                          ; $52ff: $ba
    ld b, l                                       ; $5300: $45
    dec b                                         ; $5301: $05
    jr jr_028_52bf                                ; $5302: $18 $bb

    db $10                                        ; $5304: $10
    ld e, [hl]                                    ; $5305: $5e
    add b                                         ; $5306: $80
    ld h, a                                       ; $5307: $67
    ld [$ad03], sp                                ; $5308: $08 $03 $ad
    ld b, [hl]                                    ; $530b: $46
    and h                                         ; $530c: $a4
    sbc c                                         ; $530d: $99
    add $a4                                       ; $530e: $c6 $a4
    add b                                         ; $5310: $80
    cp e                                          ; $5311: $bb
    ld d, [hl]                                    ; $5312: $56
    dec d                                         ; $5313: $15
    ld l, c                                       ; $5314: $69
    ret nc                                        ; $5315: $d0

    inc l                                         ; $5316: $2c
    or $9a                                        ; $5317: $f6 $9a
    inc [hl]                                      ; $5319: $34
    dec [hl]                                      ; $531a: $35
    ld sp, hl                                     ; $531b: $f9
    ld b, l                                       ; $531c: $45
    push af                                       ; $531d: $f5
    rst $20                                       ; $531e: $e7
    xor [hl]                                      ; $531f: $ae
    ld c, c                                       ; $5320: $49
    or e                                          ; $5321: $b3
    ld d, b                                       ; $5322: $50
    sbc e                                         ; $5323: $9b
    push bc                                       ; $5324: $c5
    add h                                         ; $5325: $84
    sbc a                                         ; $5326: $9f
    sub a                                         ; $5327: $97
    add h                                         ; $5328: $84
    ld e, a                                       ; $5329: $5f
    ld c, c                                       ; $532a: $49
    inc bc                                        ; $532b: $03
    cp a                                          ; $532c: $bf
    ld c, [hl]                                    ; $532d: $4e
    ld e, [hl]                                    ; $532e: $5e
    ld [hl], d                                    ; $532f: $72
    ld e, b                                       ; $5330: $58
    sub e                                         ; $5331: $93
    ld h, [hl]                                    ; $5332: $66
    rst $20                                       ; $5333: $e7
    add hl, de                                    ; $5334: $19
    ldh a, [$bd]                                  ; $5335: $f0 $bd
    ld a, [bc]                                    ; $5337: $0a
    dec a                                         ; $5338: $3d
    ld b, e                                       ; $5339: $43
    jr jr_028_52e3                                ; $533a: $18 $a7

    jp nc, $d73c                                  ; $533c: $d2 $3c $d7

    and h                                         ; $533f: $a4
    sub c                                         ; $5340: $91
    pop de                                        ; $5341: $d1
    ld [hl], e                                    ; $5342: $73
    ldh a, [rHDMA5]                               ; $5343: $f0 $55
    ld d, c                                       ; $5345: $51
    ld bc, $6bb8                                  ; $5346: $01 $b8 $6b
    ld d, l                                       ; $5349: $55
    sub c                                         ; $534a: $91
    ld b, $61                                     ; $534b: $06 $61
    and a                                         ; $534d: $a7
    db $e4                                        ; $534e: $e4
    db $e4                                        ; $534f: $e4
    dec d                                         ; $5350: $15
    sub d                                         ; $5351: $92
    and $39                                       ; $5352: $e6 $39
    ld [hl], b                                    ; $5354: $70
    ld l, l                                       ; $5355: $6d
    sub [hl]                                      ; $5356: $96
    ld d, h                                       ; $5357: $54
    db $fd                                        ; $5358: $fd
    xor d                                         ; $5359: $aa
    xor b                                         ; $535a: $a8
    nop                                           ; $535b: $00
    cp e                                          ; $535c: $bb
    or b                                          ; $535d: $b0
    or h                                          ; $535e: $b4
    cp [hl]                                       ; $535f: $be
    and b                                         ; $5360: $a0
    push af                                       ; $5361: $f5
    jr z, @+$31                                   ; $5362: $28 $2f

    ld e, a                                       ; $5364: $5f
    add e                                         ; $5365: $83
    add l                                         ; $5366: $85
    add hl, hl                                    ; $5367: $29
    ccf                                           ; $5368: $3f
    rst $08                                       ; $5369: $cf
    push bc                                       ; $536a: $c5
    ld d, a                                       ; $536b: $57
    and c                                         ; $536c: $a1
    ld a, l                                       ; $536d: $7d
    add h                                         ; $536e: $84
    rst $20                                       ; $536f: $e7
    set 1, e                                      ; $5370: $cb $cb
    inc hl                                        ; $5372: $23
    inc c                                         ; $5373: $0c
    dec a                                         ; $5374: $3d
    ld c, e                                       ; $5375: $4b
    inc sp                                        ; $5376: $33
    sub [hl]                                      ; $5377: $96
    rrca                                          ; $5378: $0f
    db $eb                                        ; $5379: $eb
    ld l, $69                                     ; $537a: $2e $69
    ccf                                           ; $537c: $3f
    ld b, b                                       ; $537d: $40
    jp z, $334e                                   ; $537e: $ca $4e $33

    ld d, a                                       ; $5381: $57
    db $e4                                        ; $5382: $e4
    ld h, e                                       ; $5383: $63
    sbc h                                         ; $5384: $9c
    ld b, [hl]                                    ; $5385: $46
    ld e, [hl]                                    ; $5386: $5e
    dec de                                        ; $5387: $1b
    ld e, b                                       ; $5388: $58
    call z, Call_000_0fac                         ; $5389: $cc $ac $0f
    ld [hl], d                                    ; $538c: $72
    db $f4                                        ; $538d: $f4
    ld h, d                                       ; $538e: $62
    ld c, l                                       ; $538f: $4d
    inc bc                                        ; $5390: $03
    ld e, l                                       ; $5391: $5d
    ld sp, $99a7                                  ; $5392: $31 $a7 $99
    dec hl                                        ; $5395: $2b
    ld a, [c]                                     ; $5396: $f2
    ld sp, $234e                                  ; $5397: $31 $4e $23
    xor a                                         ; $539a: $af
    dec c                                         ; $539b: $0d
    xor h                                         ; $539c: $ac
    ld c, [hl]                                    ; $539d: $4e
    ret                                           ; $539e: $c9


    jp $a2f8                                      ; $539f: $c3 $f8 $a2


    cp [hl]                                       ; $53a2: $be
    ld h, $4d                                     ; $53a3: $26 $4d
    ld c, l                                       ; $53a5: $4d
    ld a, [hl]                                    ; $53a6: $7e
    and [hl]                                      ; $53a7: $a6
    inc sp                                        ; $53a8: $33
    ld c, a                                       ; $53a9: $4f
    inc [hl]                                      ; $53aa: $34
    adc e                                         ; $53ab: $8b
    rst $10                                       ; $53ac: $d7
    ld h, b                                       ; $53ad: $60
    pop af                                        ; $53ae: $f1
    sub $7f                                       ; $53af: $d6 $7f
    push hl                                       ; $53b1: $e5
    ld d, a                                       ; $53b2: $57
    inc d                                         ; $53b3: $14
    or $cd                                        ; $53b4: $f6 $cd
    jp $cd2e                                      ; $53b6: $c3 $2e $cd


    res 5, a                                      ; $53b9: $cb $af
    xor l                                         ; $53bb: $ad
    ld d, l                                       ; $53bc: $55
    ld a, l                                       ; $53bd: $7d
    ld l, c                                       ; $53be: $69
    xor a                                         ; $53bf: $af
    ld e, h                                       ; $53c0: $5c
    ld e, b                                       ; $53c1: $58
    ld a, c                                       ; $53c2: $79
    ld h, l                                       ; $53c3: $65
    ld [$9603], sp                                ; $53c4: $08 $03 $96
    pop af                                        ; $53c7: $f1
    ld c, c                                       ; $53c8: $49
    db $ec                                        ; $53c9: $ec
    ld h, l                                       ; $53ca: $65
    dec h                                         ; $53cb: $25
    ld sp, hl                                     ; $53cc: $f9
    ld e, c                                       ; $53cd: $59
    ld l, d                                       ; $53ce: $6a
    ld l, h                                       ; $53cf: $6c
    ld sp, $beb3                                  ; $53d0: $31 $b3 $be
    ld c, e                                       ; $53d3: $4b
    db $d3                                        ; $53d4: $d3
    cp c                                          ; $53d5: $b9
    sub c                                         ; $53d6: $91
    or [hl]                                       ; $53d7: $b6
    ld d, d                                       ; $53d8: $52
    ld d, a                                       ; $53d9: $57
    inc c                                         ; $53da: $0c
    dec a                                         ; $53db: $3d
    jp z, Jump_028_5585                           ; $53dc: $ca $85 $55

    ld d, c                                       ; $53df: $51
    ld bc, $3324                                  ; $53e0: $01 $24 $33
    call c, $e985                                 ; $53e3: $dc $85 $e9
    ld [c], a                                     ; $53e6: $e2
    ld [hl], l                                    ; $53e7: $75
    adc a                                         ; $53e8: $8f
    ccf                                           ; $53e9: $3f
    add sp, $64                                   ; $53ea: $e8 $64
    sub $1b                                       ; $53ec: $d6 $1b
    add h                                         ; $53ee: $84
    ld bc, $2aad                                  ; $53ef: $01 $ad $2a
    jp nc, Jump_028_7bac                          ; $53f2: $d2 $ac $7b

    cp d                                          ; $53f5: $ba
    cp a                                          ; $53f6: $bf
    ld [hl], h                                    ; $53f7: $74
    ld e, c                                       ; $53f8: $59
    adc a                                         ; $53f9: $8f
    and d                                         ; $53fa: $a2
    ld d, h                                       ; $53fb: $54
    ld e, a                                       ; $53fc: $5f
    sub b                                         ; $53fd: $90
    ret                                           ; $53fe: $c9


    add sp, $01                                   ; $53ff: $e8 $01
    sub $a4                                       ; $5401: $d6 $a4
    xor c                                         ; $5403: $a9
    ret                                           ; $5404: $c9


    xor a                                         ; $5405: $af
    cp h                                          ; $5406: $bc
    ld a, h                                       ; $5407: $7c
    rla                                           ; $5408: $17
    inc c                                         ; $5409: $0c
    dec a                                         ; $540a: $3d
    jp z, $d7cb                                   ; $540b: $ca $cb $d7

    ld h, b                                       ; $540e: $60
    db $ed                                        ; $540f: $ed
    ld a, a                                       ; $5410: $7f
    sbc d                                         ; $5411: $9a
    jp nc, $aab4                                  ; $5412: $d2 $b4 $aa

    ld l, $7b                                     ; $5415: $2e $7b
    ld a, [c]                                     ; $5417: $f2
    inc hl                                        ; $5418: $23
    and [hl]                                      ; $5419: $a6
    xor e                                         ; $541a: $ab
    sub h                                         ; $541b: $94
    ld e, b                                       ; $541c: $58
    db $fc                                        ; $541d: $fc
    dec d                                         ; $541e: $15
    add l                                         ; $541f: $85
    or l                                          ; $5420: $b5
    rst $38                                       ; $5421: $ff
    ld l, c                                       ; $5422: $69
    ld d, l                                       ; $5423: $55
    ld d, c                                       ; $5424: $51
    ld a, [bc]                                    ; $5425: $0a
    sbc [hl]                                      ; $5426: $9e
    db $ed                                        ; $5427: $ed
    sub d                                         ; $5428: $92
    rst $20                                       ; $5429: $e7
    ld [hl], h                                    ; $542a: $74
    and d                                         ; $542b: $a2
    db $ed                                        ; $542c: $ed
    or $75                                        ; $542d: $f6 $75
    add h                                         ; $542f: $84
    ld bc, $8a3d                                  ; $5430: $01 $3d $8a
    ld a, [$17aa]                                 ; $5433: $fa $aa $17
    rst $10                                       ; $5436: $d7
    ld c, e                                       ; $5437: $4b
    or c                                          ; $5438: $b1
    add hl, de                                    ; $5439: $19
    and h                                         ; $543a: $a4
    ld hl, $8b06                                  ; $543b: $21 $06 $8b
    or a                                          ; $543e: $b7
    cp $53                                        ; $543f: $fe $53
    sbc d                                         ; $5441: $9a
    ld d, [hl]                                    ; $5442: $56
    push de                                       ; $5443: $d5
    ld h, l                                       ; $5444: $65
    ld c, a                                       ; $5445: $4f
    adc [hl]                                      ; $5446: $8e
    jr nc, jr_028_545f                            ; $5447: $30 $16

    rra                                           ; $5449: $1f
    xor a                                         ; $544a: $af
    jr nc, jr_028_54aa                            ; $544b: $30 $5d

    cp h                                          ; $544d: $bc
    cp [hl]                                       ; $544e: $be
    ld c, d                                       ; $544f: $4a
    adc c                                         ; $5450: $89
    push bc                                       ; $5451: $c5
    ld b, a                                       ; $5452: $47
    ld [$b129], sp                                ; $5453: $08 $29 $b1
    ld e, l                                       ; $5456: $5d
    rst $18                                       ; $5457: $df
    ld b, e                                       ; $5458: $43
    and l                                         ; $5459: $a5
    sbc l                                         ; $545a: $9d
    ld h, a                                       ; $545b: $67
    ld e, l                                       ; $545c: $5d
    or [hl]                                       ; $545d: $b6
    ld e, c                                       ; $545e: $59

jr_028_545f:
    ld l, d                                       ; $545f: $6a
    pop hl                                        ; $5460: $e1
    call nc, $bd16                                ; $5461: $d4 $16 $bd
    ld l, h                                       ; $5464: $6c
    rst $10                                       ; $5465: $d7
    rla                                           ; $5466: $17
    sbc $a0                                       ; $5467: $de $a0
    ld hl, sp-$20                                 ; $5469: $f8 $e0
    ld a, l                                       ; $546b: $7d
    or $95                                        ; $546c: $f6 $95
    rlca                                          ; $546e: $07
    inc [hl]                                      ; $546f: $34
    set 5, b                                      ; $5470: $cb $e8
    sbc a                                         ; $5472: $9f
    dec c                                         ; $5473: $0d
    ld [hl-], a                                   ; $5474: $32
    db $fc                                        ; $5475: $fc
    and h                                         ; $5476: $a4
    sbc a                                         ; $5477: $9f
    rst $20                                       ; $5478: $e7
    ld a, [hl+]                                   ; $5479: $2a
    push af                                       ; $547a: $f5
    xor d                                         ; $547b: $aa
    db $ec                                        ; $547c: $ec
    ld a, [hl-]                                   ; $547d: $3a
    jp c, $c451                                   ; $547e: $da $51 $c4

    ld h, [hl]                                    ; $5481: $66
    xor c                                         ; $5482: $a9
    add l                                         ; $5483: $85
    ld d, e                                       ; $5484: $53
    add b                                         ; $5485: $80
    dec de                                        ; $5486: $1b
    ret nc                                        ; $5487: $d0

    and l                                         ; $5488: $a5
    ld h, b                                       ; $5489: $60
    ld c, l                                       ; $548a: $4d
    ld a, [de]                                    ; $548b: $1a
    add h                                         ; $548c: $84
    ld bc, $c9ad                                  ; $548d: $01 $ad $c9
    adc a                                         ; $5490: $8f
    cp a                                          ; $5491: $bf
    ld sp, $b2ce                                  ; $5492: $31 $ce $b2
    ld a, [hl-]                                   ; $5495: $3a
    dec h                                         ; $5496: $25
    ccf                                           ; $5497: $3f
    cpl                                           ; $5498: $2f
    ccf                                           ; $5499: $3f
    pop de                                        ; $549a: $d1
    halt                                          ; $549b: $76
    ei                                            ; $549c: $fb
    ld a, [$f2f8]                                 ; $549d: $fa $f8 $f2
    inc [hl]                                      ; $54a0: $34
    set 4, b                                      ; $54a1: $cb $e0
    ld a, a                                       ; $54a3: $7f
    rst $10                                       ; $54a4: $d7
    cp e                                          ; $54a5: $bb
    ld h, d                                       ; $54a6: $62
    ld d, $af                                     ; $54a7: $16 $af

Jump_028_54a9:
    pop bc                                        ; $54a9: $c1

jr_028_54aa:
    ld a, [hl-]                                   ; $54aa: $3a

Jump_028_54ab:
    ld b, [hl]                                    ; $54ab: $46
    ld a, [hl-]                                   ; $54ac: $3a
    pop af                                        ; $54ad: $f1
    pop de                                        ; $54ae: $d1
    ld a, d                                       ; $54af: $7a
    inc d                                         ; $54b0: $14
    push af                                       ; $54b1: $f5
    ld a, [de]                                    ; $54b2: $1a
    call z, $0190                                 ; $54b3: $cc $90 $01
    and e                                         ; $54b6: $a3
    sub c                                         ; $54b7: $91
    cp e                                          ; $54b8: $bb
    or a                                          ; $54b9: $b7
    ld a, $4d                                     ; $54ba: $3e $4d
    ld a, l                                       ; $54bc: $7d
    xor l                                         ; $54bd: $ad
    add hl, de                                    ; $54be: $19
    ldh a, [$2a]                                  ; $54bf: $f0 $2a
    ld c, $68                                     ; $54c1: $0e $68
    ld d, $7b                                     ; $54c3: $16 $7b

jr_028_54c5:
    ld c, l                                       ; $54c5: $4d
    sbc d                                         ; $54c6: $9a
    ld d, l                                       ; $54c7: $55
    ld [$d955], a                                 ; $54c8: $ea $55 $d9
    push af                                       ; $54cb: $f5
    add hl, hl                                    ; $54cc: $29
    or c                                          ; $54cd: $b1
    or l                                          ; $54ce: $b5
    push hl                                       ; $54cf: $e5
    ld d, d                                       ; $54d0: $52
    or b                                          ; $54d1: $b0
    db $eb                                        ; $54d2: $eb
    ld l, e                                       ; $54d3: $6b
    ld l, e                                       ; $54d4: $6b
    ld d, l                                       ; $54d5: $55
    rst $20                                       ; $54d6: $e7
    adc $52                                       ; $54d7: $ce $52
    adc e                                         ; $54d9: $8b
    ld [hl], c                                    ; $54da: $71
    cp $5a                                        ; $54db: $fe $5a
    sub l                                         ; $54dd: $95
    dec [hl]                                      ; $54de: $35
    ld l, c                                       ; $54df: $69
    and [hl]                                      ; $54e0: $a6
    and e                                         ; $54e1: $a3
    rst $20                                       ; $54e2: $e7
    rlca                                          ; $54e3: $07
    sbc l                                         ; $54e4: $9d
    adc a                                         ; $54e5: $8f
    ld de, $9661                                  ; $54e6: $11 $61 $96
    ld e, d                                       ; $54e9: $5a
    adc h                                         ; $54ea: $8c
    ld l, e                                       ; $54eb: $6b
    cp a                                          ; $54ec: $bf
    rst $28                                       ; $54ed: $ef
    ld a, [$1bf8]                                 ; $54ee: $fa $f8 $1b
    db $e3                                        ; $54f1: $e3
    ld e, h                                       ; $54f2: $5c
    sbc d                                         ; $54f3: $9a
    ld a, c                                       ; $54f4: $79
    ld l, $c8                                     ; $54f5: $2e $c8
    and l                                         ; $54f7: $a5
    ld [hl], c                                    ; $54f8: $71
    sub [hl]                                      ; $54f9: $96
    add hl, hl                                    ; $54fa: $29
    add b                                         ; $54fb: $80
    jr nc, jr_028_54c5                            ; $54fc: $30 $c7

    ld h, a                                       ; $54fe: $67
    or d                                          ; $54ff: $b2
    ld b, l                                       ; $5500: $45
    ld d, e                                       ; $5501: $53
    push de                                       ; $5502: $d5
    cp c                                          ; $5503: $b9
    ld l, e                                       ; $5504: $6b
    ld d, l                                       ; $5505: $55
    sub c                                         ; $5506: $91
    ld b, $ad                                     ; $5507: $06 $ad
    sbc e                                         ; $5509: $9b
    jp z, $26db                                   ; $550a: $ca $db $26

    xor [hl]                                      ; $550d: $ae
    ld c, c                                       ; $550e: $49
    inc sp                                        ; $550f: $33
    sub [hl]                                      ; $5510: $96
    ld d, h                                       ; $5511: $54
    di                                            ; $5512: $f3
    dec b                                         ; $5513: $05
    rst $28                                       ; $5514: $ef
    ld l, e                                       ; $5515: $6b
    dec de                                        ; $5516: $1b
    and c                                         ; $5517: $a1
    ld h, a                                       ; $5518: $67
    ld [$3d03], sp                                ; $5519: $08 $03 $3d
    jp z, $b44f                                   ; $551c: $ca $4f $b4

    db $dd                                        ; $551f: $dd
    cp [hl]                                       ; $5520: $be
    cp [hl]                                       ; $5521: $be
    dec bc                                        ; $5522: $0b
    ld d, h                                       ; $5523: $54
    di                                            ; $5524: $f3
    ld e, l                                       ; $5525: $5d
    ld e, d                                       ; $5526: $5a
    ld a, c                                       ; $5527: $79
    ld a, c                                       ; $5528: $79
    xor $5a                                       ; $5529: $ee $5a
    ld d, l                                       ; $552b: $55
    and h                                         ; $552c: $a4
    jp hl                                         ; $552d: $e9


    or d                                          ; $552e: $b2
    xor $f1                                       ; $552f: $ee $f1
    dec d                                         ; $5531: $15
    ld a, [hl]                                    ; $5532: $7e
    push bc                                       ; $5533: $c5
    adc b                                         ; $5534: $88
    inc [hl]                                      ; $5535: $34
    ld d, e                                       ; $5536: $53
    ld h, d                                       ; $5537: $62
    or e                                          ; $5538: $b3
    cpl                                           ; $5539: $2f
    or c                                          ; $553a: $b1
    ld e, l                                       ; $553b: $5d
    rst $28                                       ; $553c: $ef
    add d                                         ; $553d: $82
    ld bc, $6aad                                  ; $553e: $01 $ad $6a
    db $fd                                        ; $5541: $fd
    dec [hl]                                      ; $5542: $35
    ld l, c                                       ; $5543: $69
    ld b, $ff                                     ; $5544: $06 $ff
    inc [hl]                                      ; $5546: $34
    ld e, l                                       ; $5547: $5d
    rst $00                                       ; $5548: $c7
    ld c, b                                       ; $5549: $48

jr_028_554a:
    daa                                           ; $554a: $27
    cp $44                                        ; $554b: $fe $44
    db $db                                        ; $554d: $db
    db $ed                                        ; $554e: $ed
    db $eb                                        ; $554f: $eb
    ld e, l                                       ; $5550: $5d
    ld sp, $1ebd                                  ; $5551: $31 $bd $1e
    cp b                                          ; $5554: $b8
    cp e                                          ; $5555: $bb
    ld a, $51                                     ; $5556: $3e $51
    sbc d                                         ; $5558: $9a
    ld a, [c]                                     ; $5559: $f2
    jp c, $93cc                                   ; $555a: $da $cc $93

    ld d, a                                       ; $555d: $57
    ld h, c                                       ; $555e: $61
    di                                            ; $555f: $f3

Call_028_5560:
    ld a, [c]                                     ; $5560: $f2
    inc bc                                        ; $5561: $03
    rst $10                                       ; $5562: $d7
    dec hl                                        ; $5563: $2b
    add b                                         ; $5564: $80
    jr nc, @-$68                                  ; $5565: $30 $96

    add c                                         ; $5567: $81
    ld a, [c]                                     ; $5568: $f2
    db $d3                                        ; $5569: $d3
    adc c                                         ; $556a: $89
    or [hl]                                       ; $556b: $b6
    db $db                                        ; $556c: $db
    rst $10                                       ; $556d: $d7
    sub a                                         ; $556e: $97
    inc [hl]                                      ; $556f: $34
    cpl                                           ; $5570: $2f
    ccf                                           ; $5571: $3f
    ld [hl], b                                    ; $5572: $70

Call_028_5573:
    cp l                                          ; $5573: $bd
    ld [bc], a                                    ; $5574: $02
    adc e                                         ; $5575: $8b
    xor a                                         ; $5576: $af
    db $ec                                        ; $5577: $ec
    ld d, d                                       ; $5578: $52
    jr nc, jr_028_554a                            ; $5579: $30 $cf

    ld a, c                                       ; $557b: $79
    ld sp, hl                                     ; $557c: $f9
    dec b                                         ; $557d: $05
    sub d                                         ; $557e: $92
    add [hl]                                      ; $557f: $86
    ret c                                         ; $5580: $d8

    db $ec                                        ; $5581: $ec
    sbc b                                         ; $5582: $98
    add hl, hl                                    ; $5583: $29
    ld l, b                                       ; $5584: $68

Jump_028_5585:
    sub [hl]                                      ; $5585: $96
    or c                                          ; $5586: $b1
    and h                                         ; $5587: $a4
    sbc d                                         ; $5588: $9a
    ld c, a                                       ; $5589: $4f
    ld a, $fc                                     ; $558a: $3e $fc
    or b                                          ; $558c: $b0
    db $fd                                        ; $558d: $fd
    ld [hl-], a                                   ; $558e: $32
    cp [hl]                                       ; $558f: $be
    xor b                                         ; $5590: $a8
    xor a                                         ; $5591: $af
    jp z, Jump_028_4698                           ; $5592: $ca $98 $46

    halt                                          ; $5595: $76

Jump_028_5596:
    ld a, l                                       ; $5596: $7d
    cp h                                          ; $5597: $bc

jr_028_5598:
    ld [bc], a                                    ; $5598: $02
    jp nz, $d2bd                                  ; $5599: $c2 $bd $d2

    adc h                                         ; $559c: $8c
    dec h                                         ; $559d: $25
    push de                                       ; $559e: $d5
    ld a, h                                       ; $559f: $7c
    ldh a, [$1f]                                  ; $55a0: $f0 $1f
    adc $73                                       ; $55a2: $ce $73
    db $ed                                        ; $55a4: $ed
    rra                                           ; $55a5: $1f
    ld [hl], h                                    ; $55a6: $74

Jump_028_55a7:
    sbc [hl]                                      ; $55a7: $9e
    ret c                                         ; $55a8: $d8

    and l                                         ; $55a9: $a5
    ld h, b                                       ; $55aa: $60
    and c                                         ; $55ab: $a1
    xor c                                         ; $55ac: $a9
    jp z, $86fc                                   ; $55ad: $ca $fc $86

    cp a                                          ; $55b0: $bf
    ld c, e                                       ; $55b1: $4b
    xor e                                         ; $55b2: $ab
    and d                                         ; $55b3: $a2
    ld [bc], a                                    ; $55b4: $02
    ld [hl], b                                    ; $55b5: $70
    rst $10                                       ; $55b6: $d7
    xor d                                         ; $55b7: $aa
    ld [hl+], a                                   ; $55b8: $22
    dec c                                         ; $55b9: $0d
    jp nz, $5fdd                                  ; $55ba: $c2 $dd $5f

    xor d                                         ; $55bd: $aa
    add [hl]                                      ; $55be: $86
    cp e                                          ; $55bf: $bb
    and d                                         ; $55c0: $a2
    sub $5f                                       ; $55c1: $d6 $5f
    sub e                                         ; $55c3: $93
    ld h, [hl]                                    ; $55c4: $66
    ldh a, [rVBK]                                 ; $55c5: $f0 $4f
    db $d3                                        ; $55c7: $d3
    ld [hl], l                                    ; $55c8: $75
    adc h                                         ; $55c9: $8c
    ld [hl], h                                    ; $55ca: $74
    ld [c], a                                     ; $55cb: $e2
    ld c, a                                       ; $55cc: $4f
    or h                                          ; $55cd: $b4
    db $dd                                        ; $55ce: $dd
    cp [hl]                                       ; $55cf: $be
    ld a, $95                                     ; $55d0: $3e $95
    inc [hl]                                      ; $55d2: $34
    call nz, $5e56                                ; $55d3: $c4 $56 $5e
    cp [hl]                                       ; $55d6: $be
    dec hl                                        ; $55d7: $2b
    ld b, $bd                                     ; $55d8: $06 $bd
    ld e, $b8                                     ; $55da: $1e $b8
    cp e                                          ; $55dc: $bb
    cp [hl]                                       ; $55dd: $be
    sub d                                         ; $55de: $92
    sbc l                                         ; $55df: $9d
    adc $b3                                       ; $55e0: $ce $b3
    and l                                         ; $55e2: $a5
    pop af                                        ; $55e3: $f1

jr_028_55e4:
    ld a, c                                       ; $55e4: $79
    ld sp, hl                                     ; $55e5: $f9
    or c                                          ; $55e6: $b1
    ld c, h                                       ; $55e7: $4c
    ld e, c                                       ; $55e8: $59
    sub d                                         ; $55e9: $92
    rst $20                                       ; $55ea: $e7
    cp h                                          ; $55eb: $bc
    db $fc                                        ; $55ec: $fc
    ld [bc], a                                    ; $55ed: $02
    ld c, c                                       ; $55ee: $49
    ld b, e                                       ; $55ef: $43
    inc c                                         ; $55f0: $0c
    ret nc                                        ; $55f1: $d0

    ld a, d                                       ; $55f2: $7a
    sub [hl]                                      ; $55f3: $96
    ld h, [hl]                                    ; $55f4: $66
    rla                                           ; $55f5: $17
    halt                                          ; $55f6: $76
    ld a, l                                       ; $55f7: $7d
    dec e                                         ; $55f8: $1d
    inc hl                                        ; $55f9: $23
    sbc l                                         ; $55fa: $9d
    ld hl, sp+$5d                                 ; $55fb: $f8 $5d
    ld sp, $af16                                  ; $55fd: $31 $16 $af
    pop bc                                        ; $5600: $c1
    ld [hl], h                                    ; $5601: $74
    pop af                                        ; $5602: $f1
    ld a, [$252a]                                 ; $5603: $fa $2a $25
    ld d, $7f                                     ; $5606: $16 $7f
    ld e, [hl]                                    ; $5608: $5e
    call nc, Call_000_2bc7                        ; $5609: $d4 $c7 $2b
    ld c, h                                       ; $560c: $4c
    xor e                                         ; $560d: $ab
    ld [$27b2], a                                 ; $560e: $ea $b2 $27
    rst $10                                       ; $5611: $d7
    jr @-$63                                      ; $5612: $18 $9b

    cp c                                          ; $5614: $b9
    jr z, jr_028_5598                             ; $5615: $28 $81

    ld a, l                                       ; $5617: $7d
    inc bc                                        ; $5618: $03
    inc hl                                        ; $5619: $23
    rst $08                                       ; $561a: $cf
    halt                                          ; $561b: $76
    ret                                           ; $561c: $c9


    ld [hl], e                                    ; $561d: $73
    ld a, [hl-]                                   ; $561e: $3a
    pop de                                        ; $561f: $d1
    halt                                          ; $5620: $76
    ei                                            ; $5621: $fb
    ld a, [hl-]                                   ; $5622: $3a
    jp nz, $8a3d                                  ; $5623: $c2 $3d $8a

    ld a, [$439e]                                 ; $5626: $fa $9e $43
    daa                                           ; $5629: $27
    ld [$9825], a                                 ; $562a: $ea $25 $98
    sub a                                         ; $562d: $97
    rra                                           ; $562e: $1f
    xor a                                         ; $562f: $af
    inc e                                         ; $5630: $1c
    sub [hl]                                      ; $5631: $96
    inc [hl]                                      ; $5632: $34
    cpl                                           ; $5633: $2f
    ccf                                           ; $5634: $3f
    dec sp                                        ; $5635: $3b
    ld h, [hl]                                    ; $5636: $66
    ld a, [bc]                                    ; $5637: $0a
    jp nz, Jump_028_5727                          ; $5638: $c2 $27 $57

    rst $00                                       ; $563b: $c7
    daa                                           ; $563c: $27
    ld l, c                                       ; $563d: $69
    and b                                         ; $563e: $a0
    ld sp, $578e                                  ; $563f: $31 $8e $57
    ld [hl], d                                    ; $5642: $72
    ld e, b                                       ; $5643: $58
    ld hl, sp-$0d                                 ; $5644: $f8 $f3
    ld e, h                                       ; $5646: $5c
    and l                                         ; $5647: $a5
    ld e, [hl]                                    ; $5648: $5e
    sub l                                         ; $5649: $95
    ld e, l                                       ; $564a: $5d
    ld b, a                                       ; $564b: $47
    jr jr_028_55e4                                ; $564c: $18 $96

    add c                                         ; $564e: $81
    ld a, [c]                                     ; $564f: $f2
    ld c, e                                       ; $5650: $4b
    ld a, [$cd25]                                 ; $5651: $fa $25 $cd
    sra a                                         ; $5654: $cb $2f
    sub b                                         ; $5656: $90
    inc [hl]                                      ; $5657: $34
    call nz, $c766                                ; $5658: $c4 $66 $c7
    ld c, h                                       ; $565b: $4c
    reti                                          ; $565c: $d9


    ld a, c                                       ; $565d: $79
    ld b, $7c                                     ; $565e: $06 $7c
    sub h                                         ; $5660: $94
    inc a                                         ; $5661: $3c
    jp nz, Jump_000_24a7                          ; $5662: $c2 $a7 $24

    ld e, d                                       ; $5665: $5a
    xor e                                         ; $5666: $ab
    ld e, d                                       ; $5667: $5a
    ld a, a                                       ; $5668: $7f
    ld c, l                                       ; $5669: $4d
    sbc d                                         ; $566a: $9a
    xor [hl]                                      ; $566b: $ae
    jr @-$68                                      ; $566c: $18 $96

    or c                                          ; $566e: $b1
    and h                                         ; $566f: $a4
    sbc d                                         ; $5670: $9a
    xor a                                         ; $5671: $af
    ld c, [hl]                                    ; $5672: $4e
    ret                                           ; $5673: $c9


    ld c, a                                       ; $5674: $4f
    xor c                                         ; $5675: $a9
    pop af                                        ; $5676: $f1
    ld [hl], d                                    ; $5677: $72
    add hl, hl                                    ; $5678: $29
    sbc b                                         ; $5679: $98
    or [hl]                                       ; $567a: $b6
    db $d3                                        ; $567b: $d3
    ld hl, sp-$44                                 ; $567c: $f8 $bc
    xor b                                         ; $567e: $a8
    inc hl                                        ; $567f: $23
    inc c                                         ; $5680: $0c
    and a                                         ; $5681: $a7
    inc h                                         ; $5682: $24
    ld e, d                                       ; $5683: $5a
    ld c, e                                       ; $5684: $4b

jr_028_5685:
    ld c, c                                       ; $5685: $49
    inc de                                        ; $5686: $13
    reti                                          ; $5687: $d9


    inc l                                         ; $5688: $2c
    dec hl                                        ; $5689: $2b
    ld l, d                                       ; $568a: $6a
    db $fd                                        ; $568b: $fd
    xor [hl]                                      ; $568c: $ae
    jr @-$68                                      ; $568d: $18 $96

    dec d                                         ; $568f: $15
    or l                                          ; $5690: $b5
    ld a, $d5                                     ; $5691: $3e $d5
    ld a, h                                       ; $5693: $7c
    ldh a, [rVBK]                                 ; $5694: $f0 $4f
    db $d3                                        ; $5696: $d3
    adc c                                         ; $5697: $89
    or [hl]                                       ; $5698: $b6
    db $db                                        ; $5699: $db
    rst $10                                       ; $569a: $d7
    and a                                         ; $569b: $a7
    ld a, $8d                                     ; $569c: $3e $8d
    ld de, $4761                                  ; $569e: $11 $61 $47
    ret                                           ; $56a1: $c9


    xor a                                         ; $56a2: $af
    ld c, c                                       ; $56a3: $49
    inc sp                                        ; $56a4: $33
    adc l                                         ; $56a5: $8d
    ld [hl], c                                    ; $56a6: $71
    ld [hl], d                                    ; $56a7: $72
    add e                                         ; $56a8: $83
    ld [c], a                                     ; $56a9: $e2
    call c, $aab5                                 ; $56aa: $dc $b5 $aa
    ld c, b                                       ; $56ad: $48
    db $d3                                        ; $56ae: $d3
    dec d                                         ; $56af: $15
    inc bc                                        ; $56b0: $03
    ld b, a                                       ; $56b1: $47
    ld b, c                                       ; $56b2: $41
    ld a, l                                       ; $56b3: $7d
    ld c, l                                       ; $56b4: $4d
    ld a, [de]                                    ; $56b5: $1a
    add hl, de                                    ; $56b6: $19
    call c, $9b18                                 ; $56b7: $dc $18 $9b
    sbc l                                         ; $56ba: $9d
    ld l, a                                       ; $56bb: $6f
    ld e, $fc                                     ; $56bc: $1e $fc
    ld h, $c1                                     ; $56be: $26 $c1
    jr nz, jr_028_5685                            ; $56c0: $20 $c3

    rst $20                                       ; $56c2: $e7
    set 1, e                                      ; $56c3: $cb $cb
    rst $28                                       ; $56c5: $ef
    inc hl                                        ; $56c6: $23
    ld a, h                                       ; $56c7: $7c
    rla                                           ; $56c8: $17
    inc c                                         ; $56c9: $0c
    xor l                                         ; $56ca: $ad
    rla                                           ; $56cb: $17
    nop                                           ; $56cc: $00
    ld h, c                                       ; $56cd: $61
    and a                                         ; $56ce: $a7
    inc h                                         ; $56cf: $24
    ld [hl], a                                    ; $56d0: $77
    ld l, l                                       ; $56d1: $6d
    db $e3                                        ; $56d2: $e3
    or e                                          ; $56d3: $b3
    call nc, $aad8                                ; $56d4: $d4 $d8 $aa
    rla                                           ; $56d7: $17
    rst $10                                       ; $56d8: $d7
    ld c, e                                       ; $56d9: $4b
    or c                                          ; $56da: $b1
    ld e, c                                       ; $56db: $59
    cp h                                          ; $56dc: $bc
    push af                                       ; $56dd: $f5
    sbc a                                         ; $56de: $9f
    daa                                           ; $56df: $27
    jp nz, $b196                                  ; $56e0: $c2 $96 $b1

    and h                                         ; $56e3: $a4
    sbc d                                         ; $56e4: $9a
    xor a                                         ; $56e5: $af
    xor b                                         ; $56e6: $a8
    push af                                       ; $56e7: $f5
    rst $20                                       ; $56e8: $e7
    scf                                           ; $56e9: $37
    db $fc                                        ; $56ea: $fc
    reti                                          ; $56eb: $d9


    add hl, hl                                    ; $56ec: $29
    sub e                                         ; $56ed: $93
    bit 3, b                                      ; $56ee: $cb $58
    ld a, h                                       ; $56f0: $7c
    ldh [$ae], a                                  ; $56f1: $e0 $ae
    ld a, e                                       ; $56f3: $7b
    cp d                                          ; $56f4: $ba
    cp a                                          ; $56f5: $bf
    jr nz, jr_028_5704                            ; $56f6: $20 $0c

    ld b, a                                       ; $56f8: $47
    ld b, c                                       ; $56f9: $41
    ld a, l                                       ; $56fa: $7d
    xor l                                         ; $56fb: $ad
    ld a, [de]                                    ; $56fc: $1a
    ret z                                         ; $56fd: $c8

    ld h, l                                       ; $56fe: $65
    ld l, b                                       ; $56ff: $68
    xor l                                         ; $5700: $ad
    ccf                                           ; $5701: $3f
    adc l                                         ; $5702: $8d
    cp h                                          ; $5703: $bc

jr_028_5704:
    ld [hl], $b0                                  ; $5704: $36 $b0
    ld a, [hl-]                                   ; $5706: $3a
    dec h                                         ; $5707: $25
    rrca                                          ; $5708: $0f
    di                                            ; $5709: $f3
    ld a, [c]                                     ; $570a: $f2
    xor e                                         ; $570b: $ab
    ld [hl-], a                                   ; $570c: $32
    cp h                                          ; $570d: $bc
    inc d                                         ; $570e: $14
    ret nz                                        ; $570f: $c0

    sub h                                         ; $5710: $94
    ret c                                         ; $5711: $d8

    add d                                         ; $5712: $82
    cp h                                          ; $5713: $bc
    inc d                                         ; $5714: $14
    inc l                                         ; $5715: $2c
    db $ed                                        ; $5716: $ed
    ld a, c                                       ; $5717: $79
    ld sp, hl                                     ; $5718: $f9
    add hl, hl                                    ; $5719: $29
    db $dd                                        ; $571a: $dd
    ld d, b                                       ; $571b: $50
    inc hl                                        ; $571c: $23
    inc l                                         ; $571d: $2c
    ld l, c                                       ; $571e: $69
    ld d, b                                       ; $571f: $50
    sub l                                         ; $5720: $95
    call z, Call_028_40b8                         ; $5721: $cc $b8 $40
    jp nc, Jump_000_0310                          ; $5724: $d2 $10 $03

Jump_028_5727:
    add h                                         ; $5727: $84
    ld bc, $19c7                                  ; $5728: $01 $c7 $19
    and d                                         ; $572b: $a2
    ld h, [hl]                                    ; $572c: $66
    call Call_028_4197                            ; $572d: $cd $97 $41
    ld c, c                                       ; $5730: $49
    inc de                                        ; $5731: $13
    reti                                          ; $5732: $d9


    inc d                                         ; $5733: $14
    ld [$a768], a                                 ; $5734: $ea $68 $a7
    jp nc, $3cef                                  ; $5737: $d2 $ef $3c

    inc bc                                        ; $573a: $03
    cp [hl]                                       ; $573b: $be
    sub d                                         ; $573c: $92
    sbc l                                         ; $573d: $9d
    adc $b3                                       ; $573e: $ce $b3
    or l                                          ; $5740: $b5
    dec de                                        ; $5741: $1b
    or h                                          ; $5742: $b4
    db $e3                                        ; $5743: $e3
    sub h                                         ; $5744: $94
    add d                                         ; $5745: $82
    pop af                                        ; $5746: $f1
    ld l, c                                       ; $5747: $69

Jump_028_5748:
    ld [hl+], a                                   ; $5748: $22
    sbc e                                         ; $5749: $9b
    ld bc, $31a3                                  ; $574a: $01 $a3 $31
    ld [hl], $ab                                  ; $574d: $36 $ab
    adc d                                         ; $574f: $8a
    jp nz, $d74f                                  ; $5750: $c2 $4f $d7

    ld [hl], $44                                  ; $5753: $36 $44
    dec c                                         ; $5755: $0d
    ld [hl], a                                    ; $5756: $77
    ld l, l                                       ; $5757: $6d
    db $e3                                        ; $5758: $e3
    dec hl                                        ; $5759: $2b
    ccf                                           ; $575a: $3f
    ld [hl], b                                    ; $575b: $70
    ld l, l                                       ; $575c: $6d
    sbc [hl]                                      ; $575d: $9e
    xor l                                         ; $575e: $ad
    add $6b                                       ; $575f: $c6 $6b
    inc sp                                        ; $5761: $33
    ld e, e                                       ; $5762: $5b
    ld [hl-], a                                   ; $5763: $32
    sbc h                                         ; $5764: $9c
    sub a                                         ; $5765: $97
    dec bc                                        ; $5766: $0b
    xor e                                         ; $5767: $ab
    add hl, de                                    ; $5768: $19
    ld b, d                                       ; $5769: $42
    jr jr_028_5782                                ; $576a: $18 $16

    rra                                           ; $576c: $1f
    xor a                                         ; $576d: $af
    ld b, b                                       ; $576e: $40
    dec [hl]                                      ; $576f: $35
    sbc a                                         ; $5770: $9f
    cp h                                          ; $5771: $bc
    add $d8                                       ; $5772: $c6 $d8
    ld c, h                                       ; $5774: $4c
    daa                                           ; $5775: $27
    jp c, Jump_028_5f6e                           ; $5776: $da $6e $5f

    rst $20                                       ; $5779: $e7
    xor $fa                                       ; $577a: $ee $fa
    ld a, b                                       ; $577c: $78
    add l                                         ; $577d: $85
    jp hl                                         ; $577e: $e9


    ld [c], a                                     ; $577f: $e2
    push af                                       ; $5780: $f5
    ld d, l                                       ; $5781: $55

jr_028_5782:
    ld c, d                                       ; $5782: $4a
    inc l                                         ; $5783: $2c

jr_028_5784:
    cp $bc                                        ; $5784: $fe $bc
    xor b                                         ; $5786: $a8
    rst $10                                       ; $5787: $d7
    ld h, b                                       ; $5788: $60
    db $ed                                        ; $5789: $ed
    ld a, a                                       ; $578a: $7f
    sbc d                                         ; $578b: $9a

Jump_028_578c:
    adc e                                         ; $578c: $8b
    ld [de], a                                    ; $578d: $12
    ret c                                         ; $578e: $d8

    scf                                           ; $578f: $37
    jr nc, jr_028_5784                            ; $5790: $30 $f2

    xor h                                         ; $5792: $ac
    dec bc                                        ; $5793: $0b
    ld b, $3d                                     ; $5794: $06 $3d
    adc d                                         ; $5796: $8a
    ld a, [$439e]                                 ; $5797: $fa $9e $43
    daa                                           ; $579a: $27
    ld [$9825], a                                 ; $579b: $ea $25 $98
    sub a                                         ; $579e: $97
    ld e, a                                       ; $579f: $5f
    db $db                                        ; $57a0: $db
    ld [$aa5d], sp                                ; $57a1: $08 $5d $aa
    call Call_000_3236                            ; $57a4: $cd $36 $32
    ld [$463f], sp                                ; $57a7: $08 $3f $46
    add h                                         ; $57aa: $84
    ld bc, $cb3d                                  ; $57ab: $01 $3d $cb
    res 1, a                                      ; $57ae: $cb $8f
    ld e, l                                       ; $57b0: $5d
    or [hl]                                       ; $57b1: $b6
    db $eb                                        ; $57b2: $eb
    dec bc                                        ; $57b3: $0b
    or d                                          ; $57b4: $b2
    dec hl                                        ; $57b5: $2b
    ld b, $3d                                     ; $57b6: $06 $3d
    sub d                                         ; $57b8: $92
    ld d, a                                       ; $57b9: $57
    ld h, c                                       ; $57ba: $61
    di                                            ; $57bb: $f3
    ld a, [c]                                     ; $57bc: $f2
    dec bc                                        ; $57bd: $0b
    db $e4                                        ; $57be: $e4
    sbc a                                         ; $57bf: $9f
    ld c, d                                       ; $57c0: $4a
    ld a, [de]                                    ; $57c1: $1a
    ld a, b                                       ; $57c2: $78
    ld b, b                                       ; $57c3: $40
    dec sp                                        ; $57c4: $3b
    add hl, hl                                    ; $57c5: $29
    or e                                          ; $57c6: $b3
    ld a, [hl]                                    ; $57c7: $7e
    xor c                                         ; $57c8: $a9
    ld [hl], $3b                                  ; $57c9: $36 $3b
    ld h, l                                       ; $57cb: $65
    cp h                                          ; $57cc: $bc
    ld [hl], d                                    ; $57cd: $72
    sbc b                                         ; $57ce: $98
    push af                                       ; $57cf: $f5
    add e                                         ; $57d0: $83
    ld [hl], a                                    ; $57d1: $77
    ld l, l                                       ; $57d2: $6d
    rst $00                                       ; $57d3: $c7
    rlca                                          ; $57d4: $07
    xor $c2                                       ; $57d5: $ee $c2
    inc b                                         ; $57d7: $04
    ld e, a                                       ; $57d8: $5f
    cp h                                          ; $57d9: $bc
    push af                                       ; $57da: $f5
    adc a                                         ; $57db: $8f
    dec c                                         ; $57dc: $0d
    jp nz, $bf47                                  ; $57dd: $c2 $47 $bf

    ei                                            ; $57e0: $fb
    res 1, d                                      ; $57e1: $cb $8a
    ld de, $a669                                  ; $57e3: $11 $69 $a6

jr_028_57e6:
    ld d, h                                       ; $57e6: $54
    sbc e                                         ; $57e7: $9b
    ld a, l                                       ; $57e8: $7d
    adc c                                         ; $57e9: $89
    db $ed                                        ; $57ea: $ed
    ld a, [hl-]                                   ; $57eb: $3a
    ld [hl], a                                    ; $57ec: $77
    xor l                                         ; $57ed: $ad
    ld a, [hl+]                                   ; $57ee: $2a
    jp nc, $ada0                                  ; $57ef: $d2 $a0 $ad

    ld h, a                                       ; $57f2: $67
    sbc d                                         ; $57f3: $9a
    ret z                                         ; $57f4: $c8

    xor b                                         ; $57f5: $a8
    and $e3                                       ; $57f6: $e6 $e3
    sub l                                         ; $57f8: $95
    ld a, h                                       ; $57f9: $7c
    ld c, d                                       ; $57fa: $4a
    call $94ec                                    ; $57fb: $cd $ec $94
    rlca                                          ; $57fe: $07
    sbc a                                         ; $57ff: $9f
    ld a, l                                       ; $5800: $7d
    push hl                                       ; $5801: $e5
    ld bc, $ad61                                  ; $5802: $01 $61 $ad
    ld h, c                                       ; $5805: $61
    ret z                                         ; $5806: $c8

    ld e, l                                       ; $5807: $5d
    rst $20                                       ; $5808: $e7
    and l                                         ; $5809: $a5
    ld l, b                                       ; $580a: $68
    rlca                                          ; $580b: $07
    halt                                          ; $580c: $76
    ld a, l                                       ; $580d: $7d
    cp h                                          ; $580e: $bc
    jp nz, $fcbc                                  ; $580f: $c2 $bc $fc

    ld a, [hl-]                                   ; $5812: $3a
    ld b, [hl]                                    ; $5813: $46
    ld a, [hl-]                                   ; $5814: $3a
    pop af                                        ; $5815: $f1
    rst $20                                       ; $5816: $e7
    push hl                                       ; $5817: $e5
    ld d, d                                       ; $5818: $52
    jr nc, jr_028_57e6                            ; $5819: $30 $cb

    ld b, b                                       ; $581b: $40
    ld sp, hl                                     ; $581c: $f9
    ld sp, $7285                                  ; $581d: $31 $85 $72
    add hl, hl                                    ; $5820: $29
    sbc b                                         ; $5821: $98
    ld c, d                                       ; $5822: $4a
    ld a, [de]                                    ; $5823: $1a
    ld h, d                                       ; $5824: $62
    ld c, e                                       ; $5825: $4b
    db $e3                                        ; $5826: $e3
    dec hl                                        ; $5827: $2b
    cpl                                           ; $5828: $2f
    adc a                                         ; $5829: $8f
    ld h, [hl]                                    ; $582a: $66
    add c                                         ; $582b: $81
    ld e, l                                       ; $582c: $5d
    ld e, a                                       ; $582d: $5f
    sub e                                         ; $582e: $93
    ld b, [hl]                                    ; $582f: $46
    and b                                         ; $5830: $a0
    dec hl                                        ; $5831: $2b
    ld b, $a7                                     ; $5832: $06 $a7
    inc h                                         ; $5834: $24
    ld [hl], a                                    ; $5835: $77
    rst $10                                       ; $5836: $d7
    ld l, e                                       ; $5837: $6b
    jr nc, jr_028_5897                            ; $5838: $30 $5d

    xor b                                         ; $583a: $a8
    pop bc                                        ; $583b: $c1
    xor l                                         ; $583c: $ad
    inc [hl]                                      ; $583d: $34
    ld l, $bc                                     ; $583e: $2e $bc
    ldh [$5a], a                                  ; $5840: $e0 $5a
    rst $38                                       ; $5842: $ff
    ld [hl], l                                    ; $5843: $75
    sub a                                         ; $5844: $97
    or h                                          ; $5845: $b4
    rra                                           ; $5846: $1f
    jr nz, @+$67                                  ; $5847: $20 $65

    daa                                           ; $5849: $27
    ld d, a                                       ; $584a: $57
    rst $00                                       ; $584b: $c7
    daa                                           ; $584c: $27
    ld l, c                                       ; $584d: $69
    and b                                         ; $584e: $a0
    ld sp, $9e0e                                  ; $584f: $31 $0e $9e
    ld a, h                                       ; $5852: $7c
    pop hl                                        ; $5853: $e1
    rst $08                                       ; $5854: $cf
    ld [hl], e                                    ; $5855: $73
    ld l, $5a                                     ; $5856: $2e $5a
    push de                                       ; $5858: $d5

jr_028_5859:
    rst $00                                       ; $5859: $c7
    sub d                                         ; $585a: $92
    and a                                         ; $585b: $a7
    add hl, hl                                    ; $585c: $29
    or c                                          ; $585d: $b1
    ld d, l                                       ; $585e: $55
    ld [$4155], a                                 ; $585f: $ea $55 $41
    jr jr_028_58a1                                ; $5862: $18 $3d

    ccf                                           ; $5864: $3f
    ld b, [hl]                                    ; $5865: $46
    xor $82                                       ; $5866: $ee $82
    ld c, h                                       ; $5868: $4c
    or [hl]                                       ; $5869: $b6
    ld l, b                                       ; $586a: $68
    xor d                                         ; $586b: $aa
    ld a, [hl-]                                   ; $586c: $3a
    sbc d                                         ; $586d: $9a
    and l                                         ; $586e: $a5
    add $56                                       ; $586f: $c6 $56
    ld a, $76                                     ; $5871: $3e $76
    sub $a4                                       ; $5873: $d6 $a4
    pop hl                                        ; $5875: $e1
    xor [hl]                                      ; $5876: $ae
    ld l, l                                       ; $5877: $6d
    ld a, h                                       ; $5878: $7c
    sub [hl]                                      ; $5879: $96
    ld e, d                                       ; $587a: $5a
    cp b                                          ; $587b: $b8
    or [hl]                                       ; $587c: $b6
    add c                                         ; $587d: $81
    ld h, [hl]                                    ; $587e: $66
    xor [hl]                                      ; $587f: $ae
    pop hl                                        ; $5880: $e1
    and l                                         ; $5881: $a5
    ld h, b                                       ; $5882: $60
    sub b                                         ; $5883: $90
    pop hl                                        ; $5884: $e1
    adc a                                         ; $5885: $8f
    cp a                                          ; $5886: $bf
    sub c                                         ; $5887: $91
    ld c, l                                       ; $5888: $4d
    ld l, [hl]                                    ; $5889: $6e
    push af                                       ; $588a: $f5
    ld [$3d03], sp                                ; $588b: $08 $03 $3d
    adc d                                         ; $588e: $8a
    ld a, [$0342]                                 ; $588f: $fa $42 $03
    cp [hl]                                       ; $5892: $be
    or $ef                                        ; $5893: $f6 $ef
    ld a, d                                       ; $5895: $7a
    rla                                           ; $5896: $17

jr_028_5897:
    inc c                                         ; $5897: $0c
    dec a                                         ; $5898: $3d
    jp z, $afcb                                   ; $5899: $ca $cb $af

    ld c, c                                       ; $589c: $49
    or e                                          ; $589d: $b3
    jr nz, jr_028_5859                            ; $589e: $20 $b9

    ld l, e                                       ; $58a0: $6b

jr_028_58a1:
    ld d, l                                       ; $58a1: $55
    sub c                                         ; $58a2: $91
    add [hl]                                      ; $58a3: $86
    dec sp                                        ; $58a4: $3b
    adc l                                         ; $58a5: $8d
    ld [hl], c                                    ; $58a6: $71
    or $e5                                        ; $58a7: $f6 $e5
    ldh a, [$6c]                                  ; $58a9: $f0 $6c
    and [hl]                                      ; $58ab: $a6
    add e                                         ; $58ac: $83
    jr nc, jr_028_58ec                            ; $58ad: $30 $3d

    jp z, Jump_028_5d85                           ; $58af: $ca $85 $5d

    sbc b                                         ; $58b2: $98
    sub a                                         ; $58b3: $97
    ld e, a                                       ; $58b4: $5f
    ld d, d                                       ; $58b5: $52
    ld l, h                                       ; $58b6: $6c
    sub $31                                       ; $58b7: $d6 $31
    jp nc, $3f89                                  ; $58b9: $d2 $89 $3f

    pop de                                        ; $58bc: $d1
    halt                                          ; $58bd: $76
    ei                                            ; $58be: $fb
    ld a, [$ab2c]                                 ; $58bf: $fa $2c $ab
    jp nc, Jump_000_3644                          ; $58c2: $d2 $44 $36

    ei                                            ; $58c5: $fb
    ld [de], a                                    ; $58c6: $12
    ld b, e                                       ; $58c7: $43

Jump_028_58c8:
    jr @-$37                                      ; $58c8: $18 $c7

    ld h, a                                       ; $58ca: $67
    or d                                          ; $58cb: $b2
    sbc l                                         ; $58cc: $9d
    sub a                                         ; $58cd: $97
    ld l, l                                       ; $58ce: $6d
    xor $5a                                       ; $58cf: $ee $5a
    ld d, l                                       ; $58d1: $55
    and h                                         ; $58d2: $a4
    jp hl                                         ; $58d3: $e9


    ld [hl-], a                                   ; $58d4: $32
    ld c, e                                       ; $58d5: $4b
    dec l                                         ; $58d6: $2d
    sbc h                                         ; $58d7: $9c
    ld a, [c]                                     ; $58d8: $f2
    ld a, [hl+]                                   ; $58d9: $2a
    db $ec                                        ; $58da: $ec
    ld d, d                                       ; $58db: $52
    or b                                          ; $58dc: $b0
    cp $0f                                        ; $58dd: $fe $0f
    ld e, d                                       ; $58df: $5a
    ld c, c                                       ; $58e0: $49
    inc bc                                        ; $58e1: $03
    cp a                                          ; $58e2: $bf
    ld c, [hl]                                    ; $58e3: $4e
    ld e, [hl]                                    ; $58e4: $5e
    ld [hl], d                                    ; $58e5: $72
    sbc b                                         ; $58e6: $98
    rst $20                                       ; $58e7: $e7
    adc [hl]                                      ; $58e8: $8e
    sub a                                         ; $58e9: $97
    add $b6                                       ; $58ea: $c6 $b6

jr_028_58ec:
    cpl                                           ; $58ec: $2f
    or c                                          ; $58ed: $b1
    inc d                                         ; $58ee: $14
    xor $94                                       ; $58ef: $ee $94
    ret c                                         ; $58f1: $d8

    sbc d                                         ; $58f2: $9a
    inc [hl]                                      ; $58f3: $34
    or l                                          ; $58f4: $b5
    jr jr_028_595e                                ; $58f5: $18 $67

    ld e, a                                       ; $58f7: $5f
    ld h, d                                       ; $58f8: $62
    db $d3                                        ; $58f9: $d3
    pop de                                        ; $58fa: $d1
    di                                            ; $58fb: $f3
    add e                                         ; $58fc: $83
    adc $c7                                       ; $58fd: $ce $c7
    jr c, jr_028_5918                             ; $58ff: $38 $17

    dec h                                         ; $5901: $25
    xor b                                         ; $5902: $a8
    db $e4                                        ; $5903: $e4
    or [hl]                                       ; $5904: $b6
    sbc a                                         ; $5905: $9f
    db $ed                                        ; $5906: $ed
    sub d                                         ; $5907: $92
    rst $20                                       ; $5908: $e7
    sbc d                                         ; $5909: $9a
    inc [hl]                                      ; $590a: $34
    ld [hl-], a                                   ; $590b: $32
    add sp, $7c                                   ; $590c: $e8 $7c
    adc h                                         ; $590e: $8c
    db $ed                                        ; $590f: $ed
    call z, $c23a                                 ; $5910: $cc $3a $c2
    rst $00                                       ; $5913: $c7
    db $e4                                        ; $5914: $e4
    sbc d                                         ; $5915: $9a
    inc [hl]                                      ; $5916: $34
    dec hl                                        ; $5917: $2b

jr_028_5918:
    ld l, d                                       ; $5918: $6a
    db $fd                                        ; $5919: $fd
    ld a, c                                       ; $591a: $79
    ld sp, hl                                     ; $591b: $f9
    adc c                                         ; $591c: $89
    or [hl]                                       ; $591d: $b6
    db $db                                        ; $591e: $db
    rst $10                                       ; $591f: $d7
    cp c                                          ; $5920: $b9
    ld l, e                                       ; $5921: $6b
    ld d, l                                       ; $5922: $55
    sub c                                         ; $5923: $91
    and [hl]                                      ; $5924: $a6
    dec hl                                        ; $5925: $2b
    ld b, $a7                                     ; $5926: $06 $a7
    inc h                                         ; $5928: $24
    ld [hl], a                                    ; $5929: $77
    sub [hl]                                      ; $592a: $96
    ld d, l                                       ; $592b: $55

jr_028_592c:
    ld l, c                                       ; $592c: $69
    ld [hl+], a                                   ; $592d: $22
    and e                                         ; $592e: $a3
    sbc d                                         ; $592f: $9a
    rst $08                                       ; $5930: $cf
    cp [hl]                                       ; $5931: $be
    call nz, Call_000_1d76                        ; $5932: $c4 $76 $1d
    ld h, c                                       ; $5935: $61
    dec a                                         ; $5936: $3d
    ccf                                           ; $5937: $3f
    ld b, [hl]                                    ; $5938: $46
    xor $ea                                       ; $5939: $ee $ea
    rst $38                                       ; $593b: $ff
    sbc l                                         ; $593c: $9d
    cp c                                          ; $593d: $b9
    inc [hl]                                      ; $593e: $34
    sub a                                         ; $593f: $97
    ld [bc], a                                    ; $5940: $02
    inc [hl]                                      ; $5941: $34
    bit 3, b                                      ; $5942: $cb $58
    ld d, d                                       ; $5944: $52
    call Call_000_2bc7                            ; $5945: $cd $c7 $2b
    ld sp, hl                                     ; $5948: $f9
    xor [hl]                                      ; $5949: $ae
    rst $08                                       ; $594a: $cf
    ld [hl], e                                    ; $594b: $73
    ldh [$2a], a                                  ; $594c: $e0 $2a

Call_028_594e:
    ld a, $a5                                     ; $594e: $3e $a5
    ld h, [hl]                                    ; $5950: $66
    ldh a, [$72]                                  ; $5951: $f0 $72
    db $d3                                        ; $5953: $d3
    ret nz                                        ; $5954: $c0

    jp c, Jump_000_3951                           ; $5955: $da $51 $39

    ld a, $74                                     ; $5958: $3e $74
    pop bc                                        ; $595a: $c1
    rst $00                                       ; $595b: $c7
    ld e, h                                       ; $595c: $5c
    or [hl]                                       ; $595d: $b6

jr_028_595e:
    ld h, $cd                                     ; $595e: $26 $cd
    db $ec                                        ; $5960: $ec
    ld c, e                                       ; $5961: $4b
    ld l, h                                       ; $5962: $6c
    ld e, [hl]                                    ; $5963: $5e
    ld a, [hl]                                    ; $5964: $7e
    and d                                         ; $5965: $a2
    db $ed                                        ; $5966: $ed
    or $f5                                        ; $5967: $f6 $f5
    ld a, c                                       ; $5969: $79
    cp c                                          ; $596a: $b9
    jr nc, jr_028_592c                            ; $596b: $30 $bf

    pop hl                                        ; $596d: $e1
    ld [hl], e                                    ; $596e: $73
    rst $10                                       ; $596f: $d7
    xor d                                         ; $5970: $aa
    ld [hl+], a                                   ; $5971: $22
    ld c, l                                       ; $5972: $4d
    ld d, a                                       ; $5973: $57

Jump_028_5974:
    inc c                                         ; $5974: $0c
    and a                                         ; $5975: $a7
    inc h                                         ; $5976: $24
    ld [hl], a                                    ; $5977: $77
    rst $10                                       ; $5978: $d7
    ld l, e                                       ; $5979: $6b
    jr nc, @-$0e                                  ; $597a: $30 $f0

    dec de                                        ; $597c: $1b
    db $e3                                        ; $597d: $e3
    ld h, d                                       ; $597e: $62
    ld h, $fc                                     ; $597f: $26 $fc
    jr nz, @-$3b                                  ; $5981: $20 $c3

    rst $20                                       ; $5983: $e7
    set 1, e                                      ; $5984: $cb $cb
    inc hl                                        ; $5986: $23
    inc c                                         ; $5987: $0c
    cp l                                          ; $5988: $bd
    jp nc, Jump_000_342c                          ; $5989: $d2 $2c $34

    ldh [$b3], a                                  ; $598c: $e0 $b3
    cpl                                           ; $598e: $2f
    or c                                          ; $598f: $b1
    ld e, l                                       ; $5990: $5d
    ld b, a                                       ; $5991: $47
    db $eb                                        ; $5992: $eb
    ld e, $5f                                     ; $5993: $1e $5f
    pop hl                                        ; $5995: $e1
    rst $00                                       ; $5996: $c7
    sub d                                         ; $5997: $92
    ld l, d                                       ; $5998: $6a
    ld a, $76                                     ; $5999: $3e $76
    ld b, c                                       ; $599b: $41
    dec sp                                        ; $599c: $3b
    sbc l                                         ; $599d: $9d
    cp h                                          ; $599e: $bc
    db $e4                                        ; $599f: $e4
    dec bc                                        ; $59a0: $0b
    ld a, a                                       ; $59a1: $7f
    ld a, [de]                                    ; $59a2: $1a
    add sp, -$5b                                  ; $59a3: $e8 $a5
    ld l, $18                                     ; $59a5: $2e $18
    cp l                                          ; $59a7: $bd
    jp nc, $a8ac                                  ; $59a8: $d2 $ac $a8

    push af                                       ; $59ab: $f5
    ld b, a                                       ; $59ac: $47
    jp hl                                         ; $59ad: $e9


    xor e                                         ; $59ae: $ab
    ld [hl-], a                                   ; $59af: $32
    db $ec                                        ; $59b0: $ec
    call nz, Call_028_67f7                        ; $59b1: $c4 $f7 $67
    ld l, e                                       ; $59b4: $6b
    jp nc, Jump_000_14c8                          ; $59b5: $d2 $c8 $14

    ldh [rTMA], a                                 ; $59b8: $e0 $06
    inc d                                         ; $59ba: $14
    ld a, $39                                     ; $59bb: $3e $39
    sbc d                                         ; $59bd: $9a
    ld h, l                                       ; $59be: $65
    ld a, [de]                                    ; $59bf: $1a
    adc [hl]                                      ; $59c0: $8e
    dec a                                         ; $59c1: $3d
    inc sp                                        ; $59c2: $33
    sub l                                         ; $59c3: $95
    ld e, a                                       ; $59c4: $5f
    ld a, [bc]                                    ; $59c5: $0a
    sub [hl]                                      ; $59c6: $96
    db $f4                                        ; $59c7: $f4
    dec hl                                        ; $59c8: $2b
    ld l, c                                       ; $59c9: $69
    ldh [$d7], a                                  ; $59ca: $e0 $d7
    ret                                           ; $59cc: $c9


    ld c, e                                       ; $59cd: $4b
    ld a, $5b                                     ; $59ce: $3e $5b
    ld [hl-], a                                   ; $59d0: $32
    call c, $d2f1                                 ; $59d1: $dc $f1 $d2
    ret c                                         ; $59d4: $d8

    or $25                                        ; $59d5: $f6 $25
    sub [hl]                                      ; $59d7: $96
    add d                                         ; $59d8: $82
    jr nc, jr_028_59e3                            ; $59d9: $30 $08

    ld hl, $bf2f                                  ; $59db: $21 $2f $bf
    cp $0e                                        ; $59de: $fe $0e
    db $f4                                        ; $59e0: $f4
    or d                                          ; $59e1: $b2
    ld l, [hl]                                    ; $59e2: $6e

jr_028_59e3:
    ld c, a                                       ; $59e3: $4f
    ld l, [hl]                                    ; $59e4: $6e
    and h                                         ; $59e5: $a4
    reti                                          ; $59e6: $d9


    ld d, a                                       ; $59e7: $57
    ld c, c                                       ; $59e8: $49
    add hl, de                                    ; $59e9: $19
    sbc $6a                                       ; $59ea: $de $6a
    ld l, l                                       ; $59ec: $6d
    db $d3                                        ; $59ed: $d3
    ld l, [hl]                                    ; $59ee: $6e
    rst $00                                       ; $59ef: $c7
    ld e, a                                       ; $59f0: $5f
    db $db                                        ; $59f1: $db
    ld [$ecf8], sp                                ; $59f2: $08 $f8 $ec
    adc h                                         ; $59f5: $8c
    ld sp, $4bf9                                  ; $59f6: $31 $f9 $4b
    pop bc                                        ; $59f9: $c1
    cp h                                          ; $59fa: $bc
    db $fc                                        ; $59fb: $fc
    ld e, d                                       ; $59fc: $5a
    ld d, d                                       ; $59fd: $52
    dec sp                                        ; $59fe: $3b
    dec sp                                        ; $59ff: $3b
    ld a, [hl-]                                   ; $5a00: $3a
    ld e, [hl]                                    ; $5a01: $5e
    adc [hl]                                      ; $5a02: $8e
    inc e                                         ; $5a03: $1c
    ld d, l                                       ; $5a04: $55
    ret c                                         ; $5a05: $d8

    jp nc, $7f5e                                  ; $5a06: $d2 $5e $7f

    rlca                                          ; $5a09: $07
    inc e                                         ; $5a0a: $1c
    ld [hl], d                                    ; $5a0b: $72
    jr z, @+$44                                   ; $5a0c: $28 $42

    ld [$ad03], sp                                ; $5a0e: $08 $03 $ad
    ld a, [hl+]                                   ; $5a11: $2a
    jp nc, $d770                                  ; $5a12: $d2 $70 $d7

    and h                                         ; $5a15: $a4
    add hl, de                                    ; $5a16: $19
    cp b                                          ; $5a17: $b8
    adc d                                         ; $5a18: $8a
    rst $00                                       ; $5a19: $c7
    ld h, a                                       ; $5a1a: $67
    dec bc                                        ; $5a1b: $0b
    cp a                                          ; $5a1c: $bf
    res 1, [hl]                                   ; $5a1d: $cb $8e
    ld [hl], $3e                                  ; $5a1f: $36 $3e
    set 7, b                                      ; $5a21: $cb $f8
    and h                                         ; $5a23: $a4
    sbc d                                         ; $5a24: $9a
    adc a                                         ; $5a25: $8f
    dec a                                         ; $5a26: $3d
    inc sp                                        ; $5a27: $33
    sub l                                         ; $5a28: $95
    rst $28                                       ; $5a29: $ef
    add hl, sp                                    ; $5a2a: $39
    cp b                                          ; $5a2b: $b8
    add sp, $4a                                   ; $5a2c: $e8 $4a
    ld a, [de]                                    ; $5a2e: $1a
    ld hl, sp+$75                                 ; $5a2f: $f8 $75
    ld a, [c]                                     ; $5a31: $f2
    sub d                                         ; $5a32: $92
    inc bc                                        ; $5a33: $03
    ld [hl], a                                    ; $5a34: $77
    rst $20                                       ; $5a35: $e7
    add hl, de                                    ; $5a36: $19
    ldh a, [$79]                                  ; $5a37: $f0 $79
    ld sp, hl                                     ; $5a39: $f9
    add hl, de                                    ; $5a3a: $19
    jr nc, jr_028_5a57                            ; $5a3b: $30 $1a

    ld [hl], a                                    ; $5a3d: $77
    ret nc                                        ; $5a3e: $d0

    db $ec                                        ; $5a3f: $ec
    sub h                                         ; $5a40: $94
    ld e, l                                       ; $5a41: $5d
    ld a, [c]                                     ; $5a42: $f2
    rla                                           ; $5a43: $17
    ld sp, $bf1d                                  ; $5a44: $31 $1d $bf
    inc d                                         ; $5a47: $14
    jr nz, jr_028_5a56                            ; $5a48: $20 $0c

    ld b, a                                       ; $5a4a: $47
    ld b, l                                       ; $5a4b: $45
    ld e, [hl]                                    ; $5a4c: $5e
    dec de                                        ; $5a4d: $1b
    sbc b                                         ; $5a4e: $98
    jp nc, Jump_028_524a                          ; $5a4f: $d2 $4a $52

    ld a, [de]                                    ; $5a52: $1a
    sbc c                                         ; $5a53: $99
    rst $20                                       ; $5a54: $e7
    adc d                                         ; $5a55: $8a

jr_028_5a56:
    ld e, d                                       ; $5a56: $5a

jr_028_5a57:
    ld a, a                                       ; $5a57: $7f
    ld c, l                                       ; $5a58: $4d
    sbc d                                         ; $5a59: $9a

jr_028_5a5a:
    ld sp, $cec9                                  ; $5a5a: $31 $c9 $ce
    jp c, $c2cd                                   ; $5a5d: $da $cd $c2

    ld h, [hl]                                    ; $5a60: $66
    ld d, l                                       ; $5a61: $55
    ld d, h                                       ; $5a62: $54
    nop                                           ; $5a63: $00
    or h                                          ; $5a64: $b4
    sub [hl]                                      ; $5a65: $96
    inc d                                         ; $5a66: $14
    ld l, c                                       ; $5a67: $69
    and [hl]                                      ; $5a68: $a6
    db $ed                                        ; $5a69: $ed
    inc [hl]                                      ; $5a6a: $34
    ld a, $2f                                     ; $5a6b: $3e $2f
    cp a                                          ; $5a6d: $bf
    add e                                         ; $5a6e: $83
    sub $c9                                       ; $5a6f: $d6 $c9
    ld c, e                                       ; $5a71: $4b
    cp [hl]                                       ; $5a72: $be
    adc $93                                       ; $5a73: $ce $93
    ld b, [hl]                                    ; $5a75: $46
    ld l, a                                       ; $5a76: $6f
    ld h, [hl]                                    ; $5a77: $66
    and a                                         ; $5a78: $a7
    db $ec                                        ; $5a79: $ec
    sub d                                         ; $5a7a: $92
    cp a                                          ; $5a7b: $bf
    adc b                                         ; $5a7c: $88
    jp hl                                         ; $5a7d: $e9


    ld hl, sp-$5b                                 ; $5a7e: $f8 $a5
    ld h, b                                       ; $5a80: $60
    rst $10                                       ; $5a81: $d7
    ld de, $9606                                  ; $5a82: $11 $06 $96
    add c                                         ; $5a85: $81
    ld a, [c]                                     ; $5a86: $f2
    db $d3                                        ; $5a87: $d3
    adc c                                         ; $5a88: $89
    or [hl]                                       ; $5a89: $b6

Call_028_5a8a:
    db $db                                        ; $5a8a: $db
    rst $10                                       ; $5a8b: $d7
    rla                                           ; $5a8c: $17
    db $e4                                        ; $5a8d: $e4
    jp nc, $bcf8                                  ; $5a8e: $d2 $f8 $bc

jr_028_5a91:
    db $fc                                        ; $5a91: $fc
    ld l, h                                       ; $5a92: $6c
    ld c, c                                       ; $5a93: $49
    ld a, [c]                                     ; $5a94: $f2
    or c                                          ; $5a95: $b1

Jump_028_5a96:
    ld c, h                                       ; $5a96: $4c
    pop hl                                        ; $5a97: $e1
    xor [hl]                                      ; $5a98: $ae
    ld l, l                                       ; $5a99: $6d
    ld a, h                                       ; $5a9a: $7c
    sub [hl]                                      ; $5a9b: $96
    ld a, c                                       ; $5a9c: $79
    ld c, c                                       ; $5a9d: $49
    inc de                                        ; $5a9e: $13
    inc d                                         ; $5a9f: $14
    rst $18                                       ; $5aa0: $df
    push af                                       ; $5aa1: $f5
    pop af                                        ; $5aa2: $f1
    ld a, [bc]                                    ; $5aa3: $0a
    dec bc                                        ; $5aa4: $0b
    ld d, e                                       ; $5aa5: $53
    ld a, [hl]                                    ; $5aa6: $7e
    ld l, c                                       ; $5aa7: $69
    ld c, a                                       ; $5aa8: $4f
    rla                                           ; $5aa9: $17
    push de                                       ; $5aaa: $d5
    ld a, [$5ec4]                                 ; $5aab: $fa $c4 $5e
    db $10                                        ; $5aae: $10
    ld b, $a7                                     ; $5aaf: $06 $a7
    inc h                                         ; $5ab1: $24

jr_028_5ab2:
    ld [hl], a                                    ; $5ab2: $77
    ld l, l                                       ; $5ab3: $6d
    db $e3                                        ; $5ab4: $e3
    or e                                          ; $5ab5: $b3
    xor h                                         ; $5ab6: $ac
    xor b                                         ; $5ab7: $a8
    push af                                       ; $5ab8: $f5
    xor c                                         ; $5ab9: $a9
    and $93                                       ; $5aba: $e6 $93
    rst $10                                       ; $5abc: $d7
    jr jr_028_5a5a                                ; $5abd: $18 $9b

    or l                                          ; $5abf: $b5
    rst $38                                       ; $5ac0: $ff
    ld l, c                                       ; $5ac1: $69
    dec e                                         ; $5ac2: $1d
    ld l, l                                       ; $5ac3: $6d
    ld l, $05                                     ; $5ac4: $2e $05
    ld d, e                                       ; $5ac6: $53
    rst $30                                       ; $5ac7: $f7
    daa                                           ; $5ac8: $27
    cp a                                          ; $5ac9: $bf
    ld c, c                                       ; $5aca: $49
    ld [$a703], sp                                ; $5acb: $08 $03 $a7
    inc h                                         ; $5ace: $24
    jp c, $c6d1                                   ; $5acf: $da $d1 $c6

    ld [hl], a                                    ; $5ad2: $77
    db $ed                                        ; $5ad3: $ed
    ld a, c                                       ; $5ad4: $79
    ld a, c                                       ; $5ad5: $79
    ld sp, hl                                     ; $5ad6: $f9
    ld a, [de]                                    ; $5ad7: $1a
    inc l                                         ; $5ad8: $2c
    jp hl                                         ; $5ad9: $e9


Jump_028_5ada:
    ld [hl], a                                    ; $5ada: $77
    ld l, c                                       ; $5adb: $69
    ld e, [hl]                                    ; $5adc: $5e
    ld a, [hl]                                    ; $5add: $7e
    ld d, b                                       ; $5ade: $50
    sub l                                         ; $5adf: $95
    call z, $9dc8                                 ; $5ae0: $cc $c8 $9d
    ld h, l                                       ; $5ae3: $65
    db $ed                                        ; $5ae4: $ed
    rst $30                                       ; $5ae5: $f7
    ld e, l                                       ; $5ae6: $5d
    xor a                                         ; $5ae7: $af
    pop bc                                        ; $5ae8: $c1
    ld e, h                                       ; $5ae9: $5c
    sbc d                                         ; $5aea: $9a
    ld c, e                                       ; $5aeb: $4b
    pop bc                                        ; $5aec: $c1
    inc a                                         ; $5aed: $3c
    ld h, a                                       ; $5aee: $67
    ld e, a                                       ; $5aef: $5f
    ld h, d                                       ; $5af0: $62
    db $d3                                        ; $5af1: $d3

Jump_028_5af2:
jr_028_5af2:
    pop af                                        ; $5af2: $f1
    jp c, $8d2c                                   ; $5af3: $da $2c $8d

    jp $8f65                                      ; $5af6: $c3 $65 $8f


    jr nc, jr_028_5a91                            ; $5af9: $30 $96

    sbc d                                         ; $5afb: $9a
    push af                                       ; $5afc: $f5
    ld b, a                                       ; $5afd: $47
    ld l, a                                       ; $5afe: $6f
    ld a, l                                       ; $5aff: $7d
    add hl, de                                    ; $5b00: $19
    db $fc                                        ; $5b01: $fc
    db $d3                                        ; $5b02: $d3
    ld [hl], h                                    ; $5b03: $74
    dec e                                         ; $5b04: $1d
    inc hl                                        ; $5b05: $23
    sbc l                                         ; $5b06: $9d
    ld hl, sp+$13                                 ; $5b07: $f8 $13
    ld l, l                                       ; $5b09: $6d
    or a                                          ; $5b0a: $b7
    xor a                                         ; $5b0b: $af
    and e                                         ; $5b0c: $a3
    ld e, c                                       ; $5b0d: $59
    ld b, [hl]                                    ; $5b0e: $46
    ld l, a                                       ; $5b0f: $6f
    ld a, l                                       ; $5b10: $7d
    ld e, c                                       ; $5b11: $59
    ret                                           ; $5b12: $c9


    adc $cf                                       ; $5b13: $ce $cf
    ld [hl], e                                    ; $5b15: $73
    ldh a, [$bf]                                  ; $5b16: $f0 $bf
    and h                                         ; $5b18: $a4
    ld b, a                                       ; $5b19: $47
    jr jr_028_5ab2                                ; $5b1a: $18 $96

    add c                                         ; $5b1c: $81
    ld a, [c]                                     ; $5b1d: $f2
    ld c, e                                       ; $5b1e: $4b
    ld a, [$9a5d]                                 ; $5b1f: $fa $5d $9a
    adc [hl]                                      ; $5b22: $8e
    ret                                           ; $5b23: $c9


    ld l, e                                       ; $5b24: $6b
    jr c, jr_028_5af2                             ; $5b25: $38 $cb

    adc d                                         ; $5b27: $8a
    or d                                          ; $5b28: $b2
    xor c                                         ; $5b29: $a9
    db $ed                                        ; $5b2a: $ed
    cpl                                           ; $5b2b: $2f
    or e                                          ; $5b2c: $b3
    ld c, h                                       ; $5b2d: $4c
    db $fd                                        ; $5b2e: $fd
    rst $20                                       ; $5b2f: $e7
    sbc c                                         ; $5b30: $99
    dec bc                                        ; $5b31: $0b
    sub l                                         ; $5b32: $95
    sbc d                                         ; $5b33: $9a
    ld [hl], l                                    ; $5b34: $75
    ld c, h                                       ; $5b35: $4c
    ret c                                         ; $5b36: $d8

    xor c                                         ; $5b37: $a9
    ld e, a                                       ; $5b38: $5f
    ld e, d                                       ; $5b39: $5a
    ld b, a                                       ; $5b3a: $47
    pop bc                                        ; $5b3b: $c1
    rst $28                                       ; $5b3c: $ef
    inc bc                                        ; $5b3d: $03
    jp nz, Jump_000_24a7                          ; $5b3e: $c2 $a7 $24

    ld [hl], a                                    ; $5b41: $77
    rst $20                                       ; $5b42: $e7
    add hl, de                                    ; $5b43: $19
    ldh a, [$75]                                  ; $5b44: $f0 $75
    adc h                                         ; $5b46: $8c
    ld [hl], h                                    ; $5b47: $74
    ld [c], a                                     ; $5b48: $e2
    rst $08                                       ; $5b49: $cf
    ld d, e                                       ; $5b4a: $53
    add hl, de                                    ; $5b4b: $19
    jr nz, jr_028_5b5a                            ; $5b4c: $20 $0c

    and a                                         ; $5b4e: $a7
    inc h                                         ; $5b4f: $24
    jp c, Jump_028_54a9                           ; $5b50: $da $a9 $54

    db $fd                                        ; $5b53: $fd
    inc l                                         ; $5b54: $2c
    inc bc                                        ; $5b55: $03
    push hl                                       ; $5b56: $e5
    and a                                         ; $5b57: $a7
    or h                                          ; $5b58: $b4
    rrca                                          ; $5b59: $0f

jr_028_5b5a:
    add d                                         ; $5b5a: $82
    ld c, [hl]                                    ; $5b5b: $4e
    ld d, h                                       ; $5b5c: $54
    ld a, [c]                                     ; $5b5d: $f2
    ld b, c                                       ; $5b5e: $41
    pop de                                        ; $5b5f: $d1
    adc $b3                                       ; $5b60: $ce $b3
    push bc                                       ; $5b62: $c5
    ld e, e                                       ; $5b63: $5b
    rst $38                                       ; $5b64: $ff
    jp hl                                         ; $5b65: $e9


    ld b, h                                       ; $5b66: $44
    db $db                                        ; $5b67: $db
    db $ed                                        ; $5b68: $ed
    db $eb                                        ; $5b69: $eb
    call c, Call_028_4979                         ; $5b6a: $dc $79 $49
    inc de                                        ; $5b6d: $13
    inc d                                         ; $5b6e: $14
    add h                                         ; $5b6f: $84
    ld bc, $b196                                  ; $5b70: $01 $96 $b1
    and h                                         ; $5b73: $a4
    sbc d                                         ; $5b74: $9a
    xor a                                         ; $5b75: $af
    ld c, [hl]                                    ; $5b76: $4e
    ret                                           ; $5b77: $c9


    adc a                                         ; $5b78: $8f
    cpl                                           ; $5b79: $2f
    ld [$d26b], a                                 ; $5b7a: $ea $6b $d2
    call nc, $e7e4                                ; $5b7d: $d4 $e4 $e7
    ld a, [de]                                    ; $5b80: $1a
    db $eb                                        ; $5b81: $eb
    sub a                                         ; $5b82: $97
    add d                                         ; $5b83: $82
    ld l, c                                       ; $5b84: $69
    dec sp                                        ; $5b85: $3b
    adc l                                         ; $5b86: $8d
    inc hl                                        ; $5b87: $23
    inc c                                         ; $5b88: $0c
    xor l                                         ; $5b89: $ad
    ld l, d                                       ; $5b8a: $6a
    db $fd                                        ; $5b8b: $fd
    dec [hl]                                      ; $5b8c: $35
    ld l, c                                       ; $5b8d: $69
    ld b, $ff                                     ; $5b8e: $06 $ff
    inc [hl]                                      ; $5b90: $34
    ld e, l                                       ; $5b91: $5d
    rst $00                                       ; $5b92: $c7
    ld c, b                                       ; $5b93: $48
    daa                                           ; $5b94: $27
    cp $44                                        ; $5b95: $fe $44
    db $db                                        ; $5b97: $db
    db $ed                                        ; $5b98: $ed
    db $eb                                        ; $5b99: $eb
    ld e, l                                       ; $5b9a: $5d
    ld sp, $24a7                                  ; $5b9b: $31 $a7 $24
    jp c, $dac9                                   ; $5b9e: $da $c9 $da

    or h                                          ; $5ba1: $b4
    ld a, a                                       ; $5ba2: $7f
    ld c, l                                       ; $5ba3: $4d
    sbc d                                         ; $5ba4: $9a
    ld d, l                                       ; $5ba5: $55
    ld l, c                                       ; $5ba6: $69
    ld [hl+], a                                   ; $5ba7: $22
    sbc e                                         ; $5ba8: $9b
    ld a, l                                       ; $5ba9: $7d
    adc c                                         ; $5baa: $89
    dec l                                         ; $5bab: $2d
    jp hl                                         ; $5bac: $e9


    ld [hl], a                                    ; $5bad: $77
    db $ed                                        ; $5bae: $ed
    dec [hl]                                      ; $5baf: $35
    ld l, c                                       ; $5bb0: $69
    ld d, [hl]                                    ; $5bb1: $56
    sub h                                         ; $5bb2: $94
    ld c, l                                       ; $5bb3: $4d
    rst $10                                       ; $5bb4: $d7
    ld sp, $89d2                                  ; $5bb5: $31 $d2 $89
    cp a                                          ; $5bb8: $bf
    ld c, d                                       ; $5bb9: $4a
    ld b, l                                       ; $5bba: $45
    jp nc, $0611                                  ; $5bbb: $d2 $11 $06

    sub [hl]                                      ; $5bbe: $96
    add c                                         ; $5bbf: $81
    ld a, [c]                                     ; $5bc0: $f2
    ld c, e                                       ; $5bc1: $4b
    ld a, [$5179]                                 ; $5bc2: $fa $79 $51
    rra                                           ; $5bc5: $1f
    xor a                                         ; $5bc6: $af
    or b                                          ; $5bc7: $b0
    ld a, b                                       ; $5bc8: $78
    xor l                                         ; $5bc9: $ad
    sub a                                         ; $5bca: $97
    adc l                                         ; $5bcb: $8d
    cp a                                          ; $5bcc: $bf
    ld e, [hl]                                    ; $5bcd: $5e
    and [hl]                                      ; $5bce: $a6
    inc d                                         ; $5bcf: $14
    cp h                                          ; $5bd0: $bc
    inc l                                         ; $5bd1: $2c
    xor c                                         ; $5bd2: $a9
    ld a, d                                       ; $5bd3: $7a
    xor $da                                       ; $5bd4: $ee $da
    add $77                                       ; $5bd6: $c6 $77
    ld a, l                                       ; $5bd8: $7d
    cp h                                          ; $5bd9: $bc
    ld [bc], a                                    ; $5bda: $02
    push de                                       ; $5bdb: $d5
    ld a, h                                       ; $5bdc: $7c
    rst $20                                       ; $5bdd: $e7
    sbc e                                         ; $5bde: $9b
    db $eb                                        ; $5bdf: $eb
    cp a                                          ; $5be0: $bf
    adc [hl]                                      ; $5be1: $8e
    sub c                                         ; $5be2: $91
    ld c, [hl]                                    ; $5be3: $4e
    ld a, h                                       ; $5be4: $7c
    add h                                         ; $5be5: $84

jr_028_5be6:
    ld bc, $24a7                                  ; $5be6: $01 $a7 $24
    jp c, $dac9                                   ; $5be9: $da $c9 $da

    or h                                          ; $5bec: $b4
    ld a, a                                       ; $5bed: $7f
    ld c, l                                       ; $5bee: $4d
    sbc d                                         ; $5bef: $9a
    ld b, c                                       ; $5bf0: $41
    ld c, c                                       ; $5bf1: $49
    inc de                                        ; $5bf2: $13
    reti                                          ; $5bf3: $d9


    ld h, d                                       ; $5bf4: $62
    ld h, [hl]                                    ; $5bf5: $66
    ld a, l                                       ; $5bf6: $7d
    ld l, c                                       ; $5bf7: $69
    inc e                                         ; $5bf8: $1c
    ld l, $7b                                     ; $5bf9: $2e $7b
    or h                                          ; $5bfb: $b4
    db $d3                                        ; $5bfc: $d3
    or l                                          ; $5bfd: $b5
    db $dd                                        ; $5bfe: $dd
    cp [hl]                                       ; $5bff: $be
    ld c, $2b                                     ; $5c00: $0e $2b
    ld [$cf3f], a                                 ; $5c02: $ea $3f $cf
    ld d, l                                       ; $5c05: $55
    pop af                                        ; $5c06: $f1
    add [hl]                                      ; $5c07: $86
    db $ed                                        ; $5c08: $ed
    add c                                         ; $5c09: $81
    db $eb                                        ; $5c0a: $eb
    dec d                                         ; $5c0b: $15
    ld b, b                                       ; $5c0c: $40
    jr @-$57                                      ; $5c0d: $18 $a7

    inc h                                         ; $5c0f: $24
    ld e, d                                       ; $5c10: $5a
    ld c, e                                       ; $5c11: $4b
    ld c, c                                       ; $5c12: $49
    inc de                                        ; $5c13: $13
    reti                                          ; $5c14: $d9


    inc l                                         ; $5c15: $2c
    dec hl                                        ; $5c16: $2b
    ld l, d                                       ; $5c17: $6a
    db $fd                                        ; $5c18: $fd
    xor [hl]                                      ; $5c19: $ae
    jr @-$57                                      ; $5c1a: $18 $a7

    inc h                                         ; $5c1c: $24
    ld [hl], a                                    ; $5c1d: $77
    ld l, l                                       ; $5c1e: $6d
    db $e3                                        ; $5c1f: $e3
    cp e                                          ; $5c20: $bb
    or $2c                                        ; $5c21: $f6 $2c
    ld h, e                                       ; $5c23: $63
    ret                                           ; $5c24: $c9


    sbc l                                         ; $5c25: $9d
    and l                                         ; $5c26: $a5
    ld d, $e3                                     ; $5c27: $16 $e3
    db $fc                                        ; $5c29: $fc
    ld h, e                                       ; $5c2a: $63
    call c, $35f5                                 ; $5c2b: $dc $f5 $35
    ld l, c                                       ; $5c2e: $69
    ld l, d                                       ; $5c2f: $6a
    ld a, [c]                                     ; $5c30: $f2
    adc e                                         ; $5c31: $8b
    sbc c                                         ; $5c32: $99
    push af                                       ; $5c33: $f5
    ld c, e                                       ; $5c34: $4b
    pop bc                                        ; $5c35: $c1
    db $ec                                        ; $5c36: $ec
    sub h                                         ; $5c37: $94

Jump_028_5c38:
    sub l                                         ; $5c38: $95
    dec de                                        ; $5c39: $1b
    ld [hl+], a                                   ; $5c3a: $22
    inc c                                         ; $5c3b: $0c
    sub [hl]                                      ; $5c3c: $96
    ld b, c                                       ; $5c3d: $41
    ld c, c                                       ; $5c3e: $49
    inc de                                        ; $5c3f: $13
    reti                                          ; $5c40: $d9


    ld b, b                                       ; $5c41: $40
    sbc e                                         ; $5c42: $9b
    ld d, c                                       ; $5c43: $51
    ld a, d                                       ; $5c44: $7a
    rla                                           ; $5c45: $17
    inc c                                         ; $5c46: $0c
    dec a                                         ; $5c47: $3d
    adc e                                         ; $5c48: $8b
    ld a, [$34f8]                                 ; $5c49: $fa $f8 $34
    sub c                                         ; $5c4c: $91
    ld c, l                                       ; $5c4d: $4d
    daa                                           ; $5c4e: $27
    jp c, Jump_028_5f6e                           ; $5c4f: $da $6e $5f

    ld e, a                                       ; $5c52: $5f
    ei                                            ; $5c53: $fb
    rst $00                                       ; $5c54: $c7
    ld a, [c]                                     ; $5c55: $f2
    ld d, d                                       ; $5c56: $52
    jr nc, jr_028_5be6                            ; $5c57: $30 $8d

    ld [hl], c                                    ; $5c59: $71
    ld e, [hl]                                    ; $5c5a: $5e
    ld a, [hl]                                    ; $5c5b: $7e
    cp h                                          ; $5c5c: $bc
    ld [hl], $33                                  ; $5c5d: $36 $33
    sbc l                                         ; $5c5f: $9d
    sub l                                         ; $5c60: $95
    sub a                                         ; $5c61: $97
    rst $28                                       ; $5c62: $ef
    adc d                                         ; $5c63: $8a
    ld bc, $1596                                  ; $5c64: $01 $96 $15
    or l                                          ; $5c67: $b5
    ld a, $d5                                     ; $5c68: $3e $d5
    ld a, h                                       ; $5c6a: $7c
    ldh a, [rVBK]                                 ; $5c6b: $f0 $4f
    db $d3                                        ; $5c6d: $d3
    adc c                                         ; $5c6e: $89
    or [hl]                                       ; $5c6f: $b6
    db $db                                        ; $5c70: $db
    rst $10                                       ; $5c71: $d7
    and a                                         ; $5c72: $a7
    ld a, $8d                                     ; $5c73: $3e $8d
    ld de, $a761                                  ; $5c75: $11 $61 $a7
    inc h                                         ; $5c78: $24
    jp c, Jump_028_49e9                           ; $5c79: $da $e9 $49

    db $eb                                        ; $5c7c: $eb
    ld sp, hl                                     ; $5c7d: $f9
    ld a, [bc]                                    ; $5c7e: $0a
    pop af                                        ; $5c7f: $f1
    sbc e                                         ; $5c80: $9b
    dec d                                         ; $5c81: $15
    add l                                         ; $5c82: $85
    jp hl                                         ; $5c83: $e9


    ld [$d897], a                                 ; $5c84: $ea $97 $d8
    jp nc, $f35e                                  ; $5c87: $d2 $5e $f3

    ld sp, $7f26                                  ; $5c8a: $31 $26 $7f
    and c                                         ; $5c8d: $a1

jr_028_5c8e:
    ld c, h                                       ; $5c8e: $4c
    call nc, $7ad1                                ; $5c8f: $d4 $d1 $7a
    sbc $18                                       ; $5c92: $de $18
    rst $20                                       ; $5c94: $e7
    ld b, l                                       ; $5c95: $45
    ld a, l                                       ; $5c96: $7d
    inc l                                         ; $5c97: $2c
    cp e                                          ; $5c98: $bb
    ld h, d                                       ; $5c99: $62
    cp l                                          ; $5c9a: $bd
    jp nc, $4a0c                                  ; $5c9b: $d2 $0c $4a

    sbc d                                         ; $5c9e: $9a
    ret z                                         ; $5c9f: $c8

    ld d, $e4                                     ; $5ca0: $16 $e4
    jp nc, Jump_028_5c38                          ; $5ca2: $d2 $38 $5c

    or $68                                        ; $5ca5: $f6 $68
    cp l                                          ; $5ca7: $bd
    jp nc, $d20c                                  ; $5ca8: $d2 $0c $d2

    db $10                                        ; $5cab: $10
    ld e, e                                       ; $5cac: $5b
    cp h                                          ; $5cad: $bc
    push af                                       ; $5cae: $f5
    ld e, a                                       ; $5caf: $5f
    sub e                                         ; $5cb0: $93
    ld h, [hl]                                    ; $5cb1: $66
    db $f4                                        ; $5cb2: $f4
    rst $08                                       ; $5cb3: $cf
    ld b, $19                                     ; $5cb4: $06 $19
    cp $6c                                        ; $5cb6: $fe $6c
    ld a, c                                       ; $5cb8: $79
    jr z, jr_028_5c8e                             ; $5cb9: $28 $d3

    dec hl                                        ; $5cbb: $2b
    ld [$4703], sp                                ; $5cbc: $08 $03 $47
    ret                                           ; $5cbf: $c9


    xor a                                         ; $5cc0: $af
    ld c, c                                       ; $5cc1: $49
    inc sp                                        ; $5cc2: $33
    adc l                                         ; $5cc3: $8d
    ld [hl], c                                    ; $5cc4: $71
    ld [hl], d                                    ; $5cc5: $72
    add e                                         ; $5cc6: $83
    ld [c], a                                     ; $5cc7: $e2
    call c, $aab5                                 ; $5cc8: $dc $b5 $aa
    ld c, b                                       ; $5ccb: $48
    db $d3                                        ; $5ccc: $d3
    dec d                                         ; $5ccd: $15
    inc bc                                        ; $5cce: $03
    sub [hl]                                      ; $5ccf: $96
    sbc l                                         ; $5cd0: $9d
    ld h, a                                       ; $5cd1: $67
    ret nz                                        ; $5cd2: $c0

    rla                                           ; $5cd3: $17
    inc sp                                        ; $5cd4: $33
    db $eb                                        ; $5cd5: $eb
    rst $08                                       ; $5cd6: $cf
    sub [hl]                                      ; $5cd7: $96
    add $a7                                       ; $5cd8: $c6 $a7
    db $e3                                        ; $5cda: $e3
    cpl                                           ; $5cdb: $2f
    or c                                          ; $5cdc: $b1
    db $e4                                        ; $5cdd: $e4
    and a                                         ; $5cde: $a7
    call nz, $ca06                                ; $5cdf: $c4 $06 $ca
    rrca                                          ; $5ce2: $0f
    ld [hl-], a                                   ; $5ce3: $32
    ld a, h                                       ; $5ce4: $7c
    cpl                                           ; $5ce5: $2f
    sub a                                         ; $5ce6: $97
    add d                                         ; $5ce7: $82
    ld [hl], l                                    ; $5ce8: $75
    adc h                                         ; $5ce9: $8c
    ld [hl], h                                    ; $5cea: $74
    ld [c], a                                     ; $5ceb: $e2
    ld c, a                                       ; $5cec: $4f
    inc c                                         ; $5ced: $0c
    pop de                                        ; $5cee: $d1
    and l                                         ; $5cef: $a5
    ld h, b                                       ; $5cf0: $60
    ld a, [hl+]                                   ; $5cf1: $2a
    ld l, c                                       ; $5cf2: $69
    adc b                                         ; $5cf3: $88
    dec l                                         ; $5cf4: $2d
    adc l                                         ; $5cf5: $8d
    jp $8f65                                      ; $5cf6: $c3 $65 $8f


    jr nc, @+$18                                  ; $5cf9: $30 $16

    ld h, d                                       ; $5cfb: $62
    rst $38                                       ; $5cfc: $ff
    ld l, h                                       ; $5cfd: $6c
    sub [hl]                                      ; $5cfe: $96
    dec d                                         ; $5cff: $15
    or l                                          ; $5d00: $b5
    cp $28                                        ; $5d01: $fe $28
    cp l                                          ; $5d03: $bd
    dec bc                                        ; $5d04: $0b
    ld b, $2d                                     ; $5d05: $06 $2d
    and l                                         ; $5d07: $a5
    ld [hl], h                                    ; $5d08: $74
    sbc c                                         ; $5d09: $99
    and l                                         ; $5d0a: $a5
    ld d, $ce                                     ; $5d0b: $16 $ce
    and l                                         ; $5d0d: $a5
    cp c                                          ; $5d0e: $b9
    inc d                                         ; $5d0f: $14
    call z, $1d73                                 ; $5d10: $cc $73 $1d
    ld l, l                                       ; $5d13: $6d
    and [hl]                                      ; $5d14: $a6
    xor $4f                                       ; $5d15: $ee $4f

jr_028_5d17:
    ld a, [hl]                                    ; $5d17: $7e
    sub e                                         ; $5d18: $93
    and $39                                       ; $5d19: $e6 $39
    cpl                                           ; $5d1b: $2f
    cp a                                          ; $5d1c: $bf
    adc [hl]                                      ; $5d1d: $8e
    and h                                         ; $5d1e: $a4
    db $fd                                        ; $5d1f: $fd
    nop                                           ; $5d20: $00
    add hl, hl                                    ; $5d21: $29
    ld e, l                                       ; $5d22: $5d
    jr nc, @+$18                                  ; $5d23: $30 $16

    ld a, e                                       ; $5d25: $7b
    ld c, l                                       ; $5d26: $4d
    sbc d                                         ; $5d27: $9a
    push bc                                       ; $5d28: $c5
    ld e, e                                       ; $5d29: $5b
    ld a, a                                       ; $5d2a: $7f
    xor $2c                                       ; $5d2b: $ee $2c
    or l                                          ; $5d2d: $b5
    jr jr_028_5d17                                ; $5d2e: $18 $e7

    ld e, d                                       ; $5d30: $5a
    rst $38                                       ; $5d31: $ff
    ld d, c                                       ; $5d32: $51
    ld a, [$94c3]                                 ; $5d33: $fa $c3 $94
    ret c                                         ; $5d36: $d8

    sbc [hl]                                      ; $5d37: $9e
    ld b, e                                       ; $5d38: $43
    daa                                           ; $5d39: $27
    ld [$79a5], a                                 ; $5d3a: $ea $a5 $79
    ld sp, hl                                     ; $5d3d: $f9
    ld [hl], b                                    ; $5d3e: $70
    sbc [hl]                                      ; $5d3f: $9e
    ld l, e                                       ; $5d40: $6b
    jp nc, $aa2c                                  ; $5d41: $d2 $2c $aa

    cp a                                          ; $5d44: $bf
    jr nz, jr_028_5d53                            ; $5d45: $20 $0c

    ld d, $7b                                     ; $5d47: $16 $7b
    ld c, l                                       ; $5d49: $4d
    sbc d                                         ; $5d4a: $9a
    pop de                                        ; $5d4b: $d1
    ccf                                           ; $5d4c: $3f
    ld e, e                                       ; $5d4d: $5b
    ld hl, sp-$0d                                 ; $5d4e: $f8 $f3
    call c, $e873                                 ; $5d50: $dc $73 $e8

jr_028_5d53:
    ld b, h                                       ; $5d53: $44
    cp l                                          ; $5d54: $bd
    inc [hl]                                      ; $5d55: $34
    ret z                                         ; $5d56: $c8

    ldh a, [$bd]                                  ; $5d57: $f0 $bd
    ld e, h                                       ; $5d59: $5c
    ld a, [bc]                                    ; $5d5a: $0a
    and $b9                                       ; $5d5b: $e6 $b9
    ld h, $0d                                     ; $5d5d: $26 $0d
    ld [hl], a                                    ; $5d5f: $77
    cp h                                          ; $5d60: $bc
    ld e, [hl]                                    ; $5d61: $5e
    sbc a                                         ; $5d62: $9f
    ld hl, $71bf                                  ; $5d63: $21 $bf $71
    ld l, d                                       ; $5d66: $6a
    ei                                            ; $5d67: $fb
    res 5, d                                      ; $5d68: $cb $aa
    xor b                                         ; $5d6a: $a8
    nop                                           ; $5d6b: $00
    ld e, l                                       ; $5d6c: $5d
    jr nc, jr_028_5d9c                            ; $5d6d: $30 $2d

    and l                                         ; $5d6f: $a5
    ld [hl], h                                    ; $5d70: $74
    ld e, c                                       ; $5d71: $59
    adc a                                         ; $5d72: $8f
    ld a, [c]                                     ; $5d73: $f2
    db $eb                                        ; $5d74: $eb
    ld c, b                                       ; $5d75: $48
    jp c, $900f                                   ; $5d76: $da $0f $90

    or d                                          ; $5d79: $b2
    ldh a, [rTMA]                                 ; $5d7a: $f0 $06
    push bc                                       ; $5d7c: $c5
    rlca                                          ; $5d7d: $07
    jp c, Jump_000_320c                           ; $5d7e: $da $0c $32

    ld a, h                                       ; $5d81: $7c
    cpl                                           ; $5d82: $2f
    sub a                                         ; $5d83: $97
    add d                                         ; $5d84: $82

Jump_028_5d85:
    db $dd                                        ; $5d85: $dd
    or b                                          ; $5d86: $b0
    sub e                                         ; $5d87: $93
    ld [c], a                                     ; $5d88: $e2
    ld c, d                                       ; $5d89: $4a
    ld a, $25                                     ; $5d8a: $3e $25
    ld [hl], $cb                                  ; $5d8c: $36 $cb
    ld e, b                                       ; $5d8e: $58

Jump_028_5d8f:
jr_028_5d8f:
    ld d, d                                       ; $5d8f: $52
    call Call_000_2bc7                            ; $5d90: $cd $c7 $2b
    ld sp, hl                                     ; $5d93: $f9
    inc a                                         ; $5d94: $3c
    rla                                           ; $5d95: $17
    ld e, [hl]                                    ; $5d96: $5e
    add b                                         ; $5d97: $80
    ld e, l                                       ; $5d98: $5d
    ld b, a                                       ; $5d99: $47
    jr jr_028_5dc9                                ; $5d9a: $18 $2d

jr_028_5d9c:
    and l                                         ; $5d9c: $a5
    ld [hl], h                                    ; $5d9d: $74
    reti                                          ; $5d9e: $d9


    ld sp, $3549                                  ; $5d9f: $31 $49 $35
    ld e, a                                       ; $5da2: $5f
    sub e                                         ; $5da3: $93
    ld h, [hl]                                    ; $5da4: $66
    ld c, h                                       ; $5da5: $4c
    push hl                                       ; $5da6: $e5
    rla                                           ; $5da7: $17
    cp h                                          ; $5da8: $bc
    cpl                                           ; $5da9: $2f
    db $fc                                        ; $5daa: $fc
    ld e, l                                       ; $5dab: $5d
    ld a, [c]                                     ; $5dac: $f2
    sbc h                                         ; $5dad: $9c
    ld c, e                                       ; $5dae: $4b
    sbc d                                         ; $5daf: $9a
    halt                                          ; $5db0: $76
    db $fc                                        ; $5db1: $fc
    ld l, $18                                     ; $5db2: $2e $18
    sub [hl]                                      ; $5db4: $96
    or c                                          ; $5db5: $b1
    and h                                         ; $5db6: $a4
    sbc d                                         ; $5db7: $9a
    rst $08                                       ; $5db8: $cf
    res 4, l                                      ; $5db9: $cb $a5
    ld a, [$b52c]                                 ; $5dbb: $fa $2c $b5
    ld [hl], b                                    ; $5dbe: $70
    ld h, b                                       ; $5dbf: $60
    ld a, [hl-]                                   ; $5dc0: $3a
    sbc l                                         ; $5dc1: $9d
    add h                                         ; $5dc2: $84
    ld h, a                                       ; $5dc3: $67
    di                                            ; $5dc4: $f3
    sbc h                                         ; $5dc5: $9c
    ld l, e                                       ; $5dc6: $6b
    xor h                                         ; $5dc7: $ac
    adc a                                         ; $5dc8: $8f

jr_028_5dc9:
    add hl, de                                    ; $5dc9: $19
    cp c                                          ; $5dca: $b9
    inc d                                         ; $5dcb: $14
    xor h                                         ; $5dcc: $ac
    adc d                                         ; $5dcd: $8a
    ld a, [bc]                                    ; $5dce: $0a
    add b                                         ; $5dcf: $80
    jr nc, jr_028_5d8f                            ; $5dd0: $30 $bd

    jp nc, $fdac                                  ; $5dd2: $d2 $ac $fd

    xor $2f                                       ; $5dd5: $ee $2f
    dec bc                                        ; $5dd7: $0b
    sbc $17                                       ; $5dd8: $de $17
    db $e4                                        ; $5dda: $e4
    and l                                         ; $5ddb: $a5
    ld h, b                                       ; $5ddc: $60
    sub b                                         ; $5ddd: $90
    ld l, e                                       ; $5dde: $6b
    jp nc, Jump_000_258c                          ; $5ddf: $d2 $8c $25

    push de                                       ; $5de2: $d5
    ld a, h                                       ; $5de3: $7c
    pop bc                                        ; $5de4: $c1
    ei                                            ; $5de5: $fb
    ld l, $79                                     ; $5de6: $2e $79
    adc $25                                       ; $5de8: $ce $25
    ld c, l                                       ; $5dea: $4d
    dec sp                                        ; $5deb: $3b
    ld a, $c2                                     ; $5dec: $3e $c2
    dec l                                         ; $5dee: $2d
    and l                                         ; $5def: $a5
    ld [hl], h                                    ; $5df0: $74
    sbc c                                         ; $5df1: $99
    ld h, l                                       ; $5df2: $65
    ld e, [hl]                                    ; $5df3: $5e
    ld l, $d5                                     ; $5df4: $2e $d5
    rst $20                                       ; $5df6: $e7
    push hl                                       ; $5df7: $e5
    rst $20                                       ; $5df8: $e7
    xor a                                         ; $5df9: $af
    ld d, l                                       ; $5dfa: $55

jr_028_5dfb:
    ld a, c                                       ; $5dfb: $79
    reti                                          ; $5dfc: $d9


    add l                                         ; $5dfd: $85
    push bc                                       ; $5dfe: $c5
    call z, $a5fa                                 ; $5dff: $cc $fa $a5
    ld h, b                                       ; $5e02: $60
    ld [$8033], a                                 ; $5e03: $ea $33 $80
    jr nc, jr_028_5e45                            ; $5e06: $30 $3d

    ld a, a                                       ; $5e08: $7f
    db $ed                                        ; $5e09: $ed
    ld [hl], a                                    ; $5e0a: $77
    ld a, a                                       ; $5e0b: $7f
    add hl, de                                    ; $5e0c: $19
    and l                                         ; $5e0d: $a5
    rst $08                                       ; $5e0e: $cf
    dec [hl]                                      ; $5e0f: $35
    sub $c7                                       ; $5e10: $d6 $c7
    adc h                                         ; $5e12: $8c
    ld e, h                                       ; $5e13: $5c
    ld a, [bc]                                    ; $5e14: $0a
    ld d, [hl]                                    ; $5e15: $56
    ld b, l                                       ; $5e16: $45
    dec b                                         ; $5e17: $05
    ldh [$2e], a                                  ; $5e18: $e0 $2e
    ld h, l                                       ; $5e1a: $65
    db $fc                                        ; $5e1b: $fc
    cpl                                           ; $5e1c: $2f
    cp h                                          ; $5e1d: $bc
    ld b, c                                       ; $5e1e: $41
    pop af                                        ; $5e1f: $f1
    dec b                                         ; $5e20: $05
    rst $28                                       ; $5e21: $ef
    ld h, e                                       ; $5e22: $63
    rst $28                                       ; $5e23: $ef
    ld c, a                                       ; $5e24: $4f
    ld a, [hl]                                    ; $5e25: $7e
    sub e                                         ; $5e26: $93
    db $10                                        ; $5e27: $10
    ld b, $dd                                     ; $5e28: $06 $dd
    db $e3                                        ; $5e2a: $e3
    dec hl                                        ; $5e2b: $2b
    db $fc                                        ; $5e2c: $fc
    add d                                         ; $5e2d: $82
    sbc h                                         ; $5e2e: $9c
    ld a, [c]                                     ; $5e2f: $f2
    jp c, $9974                                   ; $5e30: $da $74 $99

    ld h, l                                       ; $5e33: $65
    inc l                                         ; $5e34: $2c
    xor c                                         ; $5e35: $a9
    and $e3                                       ; $5e36: $e6 $e3
    sub l                                         ; $5e38: $95
    ld a, h                                       ; $5e39: $7c
    sbc [hl]                                      ; $5e3a: $9e
    dec bc                                        ; $5e3b: $0b
    or l                                          ; $5e3c: $b5
    cp $f3                                        ; $5e3d: $fe $f3
    ld a, [c]                                     ; $5e3f: $f2
    di                                            ; $5e40: $f3
    rst $10                                       ; $5e41: $d7
    xor d                                         ; $5e42: $aa
    cp h                                          ; $5e43: $bc
    ld c, h                                       ; $5e44: $4c

jr_028_5e45:
    add hl, hl                                    ; $5e45: $29
    sub b                                         ; $5e46: $90
    ld b, $61                                     ; $5e47: $06 $61
    sub [hl]                                      ; $5e49: $96
    pop af                                        ; $5e4a: $f1
    rla                                           ; $5e4b: $17

Jump_028_5e4c:
    jp z, $ab2c                                   ; $5e4c: $ca $2c $ab

    jp nc, $b644                                  ; $5e4f: $d2 $44 $b6

    jr nz, jr_028_5dfb                            ; $5e52: $20 $a7

    ld sp, $9829                                  ; $5e54: $31 $29 $98
    ld [de], a                                    ; $5e57: $12

Jump_028_5e58:
    ld e, e                                       ; $5e58: $5b
    ld sp, hl                                     ; $5e59: $f9
    ret c                                         ; $5e5a: $d8

    pop hl                                        ; $5e5b: $e1
    xor [hl]                                      ; $5e5c: $ae
    ld l, l                                       ; $5e5d: $6d
    ld a, h                                       ; $5e5e: $7c
    sub [hl]                                      ; $5e5f: $96
    dec d                                         ; $5e60: $15
    or l                                          ; $5e61: $b5
    cp $3c                                        ; $5e62: $fe $3c
    rlca                                          ; $5e64: $07
    xor [hl]                                      ; $5e65: $ae
    call $cbca                                    ; $5e66: $cd $ca $cb
    inc hl                                        ; $5e69: $23
    inc c                                         ; $5e6a: $0c
    rst $00                                       ; $5e6b: $c7
    ld h, a                                       ; $5e6c: $67
    or d                                          ; $5e6d: $b2
    ld b, l                                       ; $5e6e: $45
    ld d, e                                       ; $5e6f: $53
    push de                                       ; $5e70: $d5
    cp c                                          ; $5e71: $b9
    ld l, e                                       ; $5e72: $6b
    ld d, l                                       ; $5e73: $55
    sub c                                         ; $5e74: $91
    ld b, $ad                                     ; $5e75: $06 $ad
    rst $00                                       ; $5e77: $c7
    rst $00                                       ; $5e78: $c7
    cp b                                          ; $5e79: $b8
    ldh a, [rNR22]                                ; $5e7a: $f0 $17
    push de                                       ; $5e7c: $d5
    ld e, a                                       ; $5e7d: $5f
    add $17                                       ; $5e7e: $c6 $17
    push af                                       ; $5e80: $f5

jr_028_5e81:
    dec d                                         ; $5e81: $15
    db $ed                                        ; $5e82: $ed
    ld [hl], h                                    ; $5e83: $74
    sbc [hl]                                      ; $5e84: $9e
    sbc [hl]                                      ; $5e85: $9e
    ld hl, $bd0c                                  ; $5e86: $21 $0c $bd
    jp nc, $fdac                                  ; $5e89: $d2 $ac $fd

    xor $2f                                       ; $5e8c: $ee $2f
    dec bc                                        ; $5e8e: $0b
    sbc $17                                       ; $5e8f: $de $17
    and [hl]                                      ; $5e91: $a6
    push af                                       ; $5e92: $f5
    ld d, d                                       ; $5e93: $52
    or b                                          ; $5e94: $b0
    or $db                                        ; $5e95: $f6 $db
    add hl, hl                                    ; $5e97: $29
    ccf                                           ; $5e98: $3f
    cpl                                           ; $5e99: $2f
    ccf                                           ; $5e9a: $3f
    ld a, a                                       ; $5e9b: $7f
    xor l                                         ; $5e9c: $ad
    jp z, $82cb                                   ; $5e9d: $ca $cb $82

    ld [hl], a                                    ; $5ea0: $77
    ld e, b                                       ; $5ea1: $58
    xor b                                         ; $5ea2: $a8

jr_028_5ea3:
    inc c                                         ; $5ea3: $0c
    ld h, c                                       ; $5ea4: $61
    rst $00                                       ; $5ea5: $c7
    ld h, a                                       ; $5ea6: $67
    or d                                          ; $5ea7: $b2
    ld b, l                                       ; $5ea8: $45
    ld d, e                                       ; $5ea9: $53
    push de                                       ; $5eaa: $d5
    cp c                                          ; $5eab: $b9
    ld l, e                                       ; $5eac: $6b
    ld d, l                                       ; $5ead: $55
    sub c                                         ; $5eae: $91
    add [hl]                                      ; $5eaf: $86
    dec sp                                        ; $5eb0: $3b
    set 5, d                                      ; $5eb1: $cb $ea
    sub h                                         ; $5eb3: $94
    db $fc                                        ; $5eb4: $fc
    sbc d                                         ; $5eb5: $9a
    inc [hl]                                      ; $5eb6: $34
    or l                                          ; $5eb7: $b5
    jr jr_028_5e81                                ; $5eb8: $18 $c7

    ld [hl], d                                    ; $5eba: $72
    db $fc                                        ; $5ebb: $fc
    rst $00                                       ; $5ebc: $c7
    adc b                                         ; $5ebd: $88
    jr nc, jr_028_5f07                            ; $5ebe: $30 $47

    cp a                                          ; $5ec0: $bf
    ei                                            ; $5ec1: $fb
    res 0, d                                      ; $5ec2: $cb $82
    rst $30                                       ; $5ec4: $f7
    dec b                                         ; $5ec5: $05
    ld a, c                                       ; $5ec6: $79
    add hl, hl                                    ; $5ec7: $29
    ldh [$ce], a                                  ; $5ec8: $e0 $ce
    set 1, a                                      ; $5eca: $cb $cf
    ld e, a                                       ; $5ecc: $5f
    xor e                                         ; $5ecd: $ab
    ld a, [c]                                     ; $5ece: $f2
    or d                                          ; $5ecf: $b2
    dec bc                                        ; $5ed0: $0b
    adc e                                         ; $5ed1: $8b
    sbc c                                         ; $5ed2: $99
    push af                                       ; $5ed3: $f5
    ld c, e                                       ; $5ed4: $4b
    pop bc                                        ; $5ed5: $c1
    call nc, $a4d7                                ; $5ed6: $d4 $d7 $a4
    ld b, c                                       ; $5ed9: $41
    jr jr_028_5ea3                                ; $5eda: $18 $c7

    srl a                                         ; $5edc: $cb $3f
    sub l                                         ; $5ede: $95
    inc [hl]                                      ; $5edf: $34
    ldh a, [rSVBK]                                ; $5ee0: $f0 $70
    ld hl, sp+$76                                 ; $5ee2: $f8 $76
    ld c, d                                       ; $5ee4: $4a
    adc d                                         ; $5ee5: $8a
    rla                                           ; $5ee6: $17
    cp $c1                                        ; $5ee7: $fe $c1
    pop de                                        ; $5ee9: $d1
    sub $aa                                       ; $5eea: $d6 $aa
    add c                                         ; $5eec: $81
    ld e, h                                       ; $5eed: $5c
    ld d, [hl]                                    ; $5eee: $56
    add e                                         ; $5eef: $83
    or l                                          ; $5ef0: $b5
    ld a, [de]                                    ; $5ef1: $1a
    ccf                                           ; $5ef2: $3f
    ld a, h                                       ; $5ef3: $7c
    ld l, e                                       ; $5ef4: $6b
    ld c, c                                       ; $5ef5: $49
    db $e3                                        ; $5ef6: $e3
    add l                                         ; $5ef7: $85
    ld a, a                                       ; $5ef8: $7f
    ld [hl], b                                    ; $5ef9: $70
    add h                                         ; $5efa: $84
    ld bc, $d2bd                                  ; $5efb: $01 $bd $d2
    ret z                                         ; $5efe: $c8

    xor d                                         ; $5eff: $aa
    xor b                                         ; $5f00: $a8
    nop                                           ; $5f01: $00
    rrca                                          ; $5f02: $0f
    ld d, e                                       ; $5f03: $53

Jump_028_5f04:
    ld sp, hl                                     ; $5f04: $f9
    and l                                         ; $5f05: $a5
    push af                                       ; $5f06: $f5

jr_028_5f07:
    ld h, l                                       ; $5f07: $65
    halt                                          ; $5f08: $76
    jp z, $fcbc                                   ; $5f09: $ca $bc $fc

    sbc b                                         ; $5f0c: $98
    ld [hl], $68                                  ; $5f0d: $36 $68
    db $eb                                        ; $5f0f: $eb
    ld e, $5f                                     ; $5f10: $1e $5f
    pop hl                                        ; $5f12: $e1
    rla                                           ; $5f13: $17
    db $e4                                        ; $5f14: $e4
    inc a                                         ; $5f15: $3c

jr_028_5f16:
    rst $20                                       ; $5f16: $e7
    push hl                                       ; $5f17: $e5
    ld [hl], a                                    ; $5f18: $77
    cp h                                          ; $5f19: $bc

jr_028_5f1a:
    cp h                                          ; $5f1a: $bc
    ld a, [$355a]                                 ; $5f1b: $fa $5a $35

jr_028_5f1e:
    ld b, [hl]                                    ; $5f1e: $46
    xor $d8                                       ; $5f1f: $ee $d8
    dec h                                         ; $5f21: $25
    ld a, d                                       ; $5f22: $7a
    reti                                          ; $5f23: $d9


    add l                                         ; $5f24: $85
    ld l, c                                       ; $5f25: $69
    dec sp                                        ; $5f26: $3b
    adc l                                         ; $5f27: $8d
    rst $08                                       ; $5f28: $cf
    ld [hl], e                                    ; $5f29: $73
    db $ed                                        ; $5f2a: $ed
    rra                                           ; $5f2b: $1f
    cp h                                          ; $5f2c: $bc
    ld e, b                                       ; $5f2d: $58
    sbc a                                         ; $5f2e: $9f
    ld hl, $bd0c                                  ; $5f2f: $21 $0c $bd
    jp nc, $e4d4                                  ; $5f32: $d2 $d4 $e4

    ld b, a                                       ; $5f35: $47
    jp hl                                         ; $5f36: $e9


    dec bc                                        ; $5f37: $0b
    ld a, [c]                                     ; $5f38: $f2
    ld d, d                                       ; $5f39: $52
    jr nc, @-$2f                                  ; $5f3a: $30 $cf

    dec b                                         ; $5f3c: $05
    rst $28                                       ; $5f3d: $ef
    ld d, e                                       ; $5f3e: $53
    ld e, [hl]                                    ; $5f3f: $5e
    sbc e                                         ; $5f40: $9b
    pop af                                        ; $5f41: $f1
    rst $10                                       ; $5f42: $d7
    set 7, b                                      ; $5f43: $cb $f8
    and d                                         ; $5f45: $a2
    cp [hl]                                       ; $5f46: $be
    and d                                         ; $5f47: $a2
    sbc l                                         ; $5f48: $9d
    adc $d3                                       ; $5f49: $ce $d3
    or e                                          ; $5f4b: $b3
    ld e, l                                       ; $5f4c: $5d
    jp c, $b171                                   ; $5f4d: $da $71 $b1

    cp c                                          ; $5f50: $b9
    inc d                                         ; $5f51: $14
    xor h                                         ; $5f52: $ac
    adc d                                         ; $5f53: $8a
    ld a, [bc]                                    ; $5f54: $0a
    ret nz                                        ; $5f55: $c0

    ld e, l                                       ; $5f56: $5d
    rst $30                                       ; $5f57: $f7
    ld [hl], h                                    ; $5f58: $74
    ld a, a                                       ; $5f59: $7f
    ld b, c                                       ; $5f5a: $41
    jr jr_028_5f1a                                ; $5f5b: $18 $bd

    jp nc, $e4d4                                  ; $5f5d: $d2 $d4 $e4

    and a                                         ; $5f60: $a7
    adc e                                         ; $5f61: $8b
    jp hl                                         ; $5f62: $e9


    ld l, e                                       ; $5f63: $6b
    adc e                                         ; $5f64: $8b
    ld e, d                                       ; $5f65: $5a
    ld e, a                                       ; $5f66: $5f
    sub $d6                                       ; $5f67: $d6 $d6
    xor d                                         ; $5f69: $aa
    cp [hl]                                       ; $5f6a: $be
    and h                                         ; $5f6b: $a4
    ld a, c                                       ; $5f6c: $79
    ld sp, hl                                     ; $5f6d: $f9

Jump_028_5f6e:
    dec b                                         ; $5f6e: $05
    sub d                                         ; $5f6f: $92
    add [hl]                                      ; $5f70: $86
    ret c                                         ; $5f71: $d8

    ld hl, sp-$15                                 ; $5f72: $f8 $eb
    ld h, l                                       ; $5f74: $65
    ld c, l                                       ; $5f75: $4d
    ld a, [de]                                    ; $5f76: $1a
    ld e, c                                       ; $5f77: $59
    cp h                                          ; $5f78: $bc
    xor $f1                                       ; $5f79: $ee $f1
    ld h, a                                       ; $5f7b: $67
    bit 7, l                                      ; $5f7c: $cb $7d
    ld h, d                                       ; $5f7e: $62
    jr nc, jr_028_5f16                            ; $5f7f: $30 $95

    inc [hl]                                      ; $5f81: $34
    call nz, $a4d6                                ; $5f82: $c4 $d6 $a4
    ld b, c                                       ; $5f85: $41
    jr jr_028_5f1e                                ; $5f86: $18 $96

    ld e, d                                       ; $5f88: $5a
    adc h                                         ; $5f89: $8c
    dec bc                                        ; $5f8a: $0b
    and d                                         ; $5f8b: $a2
    or d                                          ; $5f8c: $b2
    ret c                                         ; $5f8d: $d8

    call z, Call_028_41be                         ; $5f8e: $cc $be $41
    pop af                                        ; $5f91: $f1
    dec [hl]                                      ; $5f92: $35
    ld l, c                                       ; $5f93: $69

Jump_028_5f94:
    sub [hl]                                      ; $5f94: $96
    or h                                          ; $5f95: $b4
    or b                                          ; $5f96: $b0
    ld e, c                                       ; $5f97: $59
    ld a, [c]                                     ; $5f98: $f2
    add h                                         ; $5f99: $84
    sub $9a                                       ; $5f9a: $d6 $9a
    db $fc                                        ; $5f9c: $fc

jr_028_5f9d:
    or h                                          ; $5f9d: $b4
    sbc l                                         ; $5f9e: $9d
    add $a7                                       ; $5f9f: $c6 $a7
    db $eb                                        ; $5fa1: $eb
    ld a, c                                       ; $5fa2: $79
    add hl, sp                                    ; $5fa3: $39
    xor d                                         ; $5fa4: $aa
    or b                                          ; $5fa5: $b0
    ld a, [de]                                    ; $5fa6: $1a
    db $ec                                        ; $5fa7: $ec
    jr jr_028_5f9d                                ; $5fa8: $18 $f3

    sub c                                         ; $5faa: $91
    dec sp                                        ; $5fab: $3b
    push af                                       ; $5fac: $f5

Jump_028_5fad:
    add l                                         ; $5fad: $85
    sub a                                         ; $5fae: $97
    pop de                                        ; $5faf: $d1
    dec c                                         ; $5fb0: $0d
    adc d                                         ; $5fb1: $8a
    ld [hl], a                                    ; $5fb2: $77
    ld e, l                                       ; $5fb3: $5d
    ld c, a                                       ; $5fb4: $4f
    dec h                                         ; $5fb5: $25
    ld b, $4b                                     ; $5fb6: $06 $4b
    adc d                                         ; $5fb8: $8a
    dec c                                         ; $5fb9: $0d
    jp nz, $8d47                                  ; $5fba: $c2 $47 $8d

    cpl                                           ; $5fbd: $2f
    ld [$315d], a                                 ; $5fbe: $ea $5d $31
    cp l                                          ; $5fc1: $bd
    jp nc, $e4d4                                  ; $5fc2: $d2 $d4 $e4

    sub a                                         ; $5fc5: $97
    add h                                         ; $5fc6: $84

Jump_028_5fc7:
    ld h, [hl]                                    ; $5fc7: $66
    xor c                                         ; $5fc8: $a9
    push bc                                       ; $5fc9: $c5
    cp b                                          ; $5fca: $b8
    or $af                                        ; $5fcb: $f6 $af
    ld e, h                                       ; $5fcd: $5c
    jr jr_028_604c                                ; $5fce: $18 $7c

    sub l                                         ; $5fd0: $95
    call nz, $0610                                ; $5fd1: $c4 $10 $06
    db $dd                                        ; $5fd4: $dd
    ld b, h                                       ; $5fd5: $44
    db $db                                        ; $5fd6: $db
    db $ed                                        ; $5fd7: $ed
    rst $18                                       ; $5fd8: $df
    add l                                         ; $5fd9: $85
    add l                                         ; $5fda: $85
    call $abe0                                    ; $5fdb: $cd $e0 $ab
    inc h                                         ; $5fde: $24
    add [hl]                                      ; $5fdf: $86
    sub $f2                                       ; $5fe0: $d6 $f2
    cp a                                          ; $5fe2: $bf
    ld h, $cd                                     ; $5fe3: $26 $cd
    ld l, $cd                                     ; $5fe5: $2e $cd
    set 1, a                                      ; $5fe7: $cb $cf
    dec h                                         ; $5fe9: $25
    dec sp                                        ; $5fea: $3b
    and l                                         ; $5feb: $a5
    sbc c                                         ; $5fec: $99
    ld h, h                                       ; $5fed: $64
    add [hl]                                      ; $5fee: $86
    call c, $d279                                 ; $5fef: $dc $79 $d2
    dec c                                         ; $5ff2: $0d
    adc d                                         ; $5ff3: $8a
    inc hl                                        ; $5ff4: $23
    inc c                                         ; $5ff5: $0c
    dec a                                         ; $5ff6: $3d
    adc e                                         ; $5ff7: $8b
    ld a, [$cd2e]                                 ; $5ff8: $fa $2e $cd
    res 1, a                                      ; $5ffb: $cb $8f
    ld c, a                                       ; $5ffd: $4f

jr_028_5ffe:
    adc c                                         ; $5ffe: $89
    ld l, h                                       ; $5fff: $6c
    rla                                           ; $6000: $17
    and [hl]                                      ; $6001: $a6
    db $eb                                        ; $6002: $eb
    ld a, c                                       ; $6003: $79
    add hl, sp                                    ; $6004: $39
    xor d                                         ; $6005: $aa
    or b                                          ; $6006: $b0
    ld a, [de]                                    ; $6007: $1a
    db $ec                                        ; $6008: $ec
    jr jr_028_5ffe                                ; $6009: $18 $f3

    or c                                          ; $600b: $b1
    dec hl                                        ; $600c: $2b
    ld b, $47                                     ; $600d: $06 $47
    call Call_028_41be                            ; $600f: $cd $be $41
    pop af                                        ; $6012: $f1
    add hl, de                                    ; $6013: $19
    cp b                                          ; $6014: $b8
    inc d                                         ; $6015: $14
    inc l                                         ; $6016: $2c
    add hl, hl                                    ; $6017: $29
    ld [hl], $83                                  ; $6018: $36 $83
    adc $c7                                       ; $601a: $ce $c7
    ld [$a768], sp                                ; $601c: $08 $68 $a7
    db $fc                                        ; $601f: $fc
    push af                                       ; $6020: $f5
    ld a, [c]                                     ; $6021: $f2
    or d                                          ; $6022: $b2
    or h                                          ; $6023: $b4
    rst $10                                       ; $6024: $d7
    and h                                         ; $6025: $a4
    ld e, c                                       ; $6026: $59
    sbc l                                         ; $6027: $9d
    sub d                                         ; $6028: $92
    add a                                         ; $6029: $87
    dec a                                         ; $602a: $3d
    and l                                         ; $602b: $a5
    add hl, bc                                    ; $602c: $09
    jp z, $0d42                                   ; $602d: $ca $42 $0d

    ld l, [hl]                                    ; $6030: $6e
    dec [hl]                                      ; $6031: $35
    rst $08                                       ; $6032: $cf
    or c                                          ; $6033: $b1
    sbc h                                         ; $6034: $9c
    ld d, d                                       ; $6035: $52
    inc sp                                        ; $6036: $33
    ld a, c                                       ; $6037: $79
    adc l                                         ; $6038: $8d
    ld h, e                                       ; $6039: $63
    ld a, [de]                                    ; $603a: $1a
    ld l, d                                       ; $603b: $6a
    ldh a, [rBCPS]                                ; $603c: $f0 $68
    ld b, a                                       ; $603e: $47
    pop bc                                        ; $603f: $c1
    sbc d                                         ; $6040: $9a
    inc [hl]                                      ; $6041: $34
    ld [hl-], a                                   ; $6042: $32
    ld hl, sp+$2a                                 ; $6043: $f8 $2a
    adc c                                         ; $6045: $89
    ld [hl], c                                    ; $6046: $71
    ld h, a                                       ; $6047: $67
    xor c                                         ; $6048: $a9
    push bc                                       ; $6049: $c5
    cp b                                          ; $604a: $b8
    or [hl]                                       ; $604b: $b6

jr_028_604c:
    ld d, [hl]                                    ; $604c: $56
    push af                                       ; $604d: $f5
    dec [hl]                                      ; $604e: $35
    ld l, c                                       ; $604f: $69
    ld h, [hl]                                    ; $6050: $66
    ld a, [hl-]                                   ; $6051: $3a
    ld [$9603], sp                                ; $6052: $08 $03 $96
    and l                                         ; $6055: $a5
    push af                                       ; $6056: $f5
    and l                                         ; $6057: $a5
    cp h                                          ; $6058: $bc
    ld a, [bc]                                    ; $6059: $0a
    ld e, e                                       ; $605a: $5b
    sub e                                         ; $605b: $93
    ld b, $ad                                     ; $605c: $06 $ad
    ld d, a                                       ; $605e: $57
    sbc d                                         ; $605f: $9a

jr_028_6060:
    ld e, d                                       ; $6060: $5a
    adc h                                         ; $6061: $8c
    dec bc                                        ; $6062: $0b
    sbc $e7                                       ; $6063: $de $e7
    push hl                                       ; $6065: $e5
    ld d, a                                       ; $6066: $57
    jp nc, $efc0                                  ; $6067: $d2 $c0 $ef

    sub d                                         ; $606a: $92
    rst $20                                       ; $606b: $e7
    ld e, h                                       ; $606c: $5c
    jp nc, $e3b4                                  ; $606d: $d2 $b4 $e3

    inc hl                                        ; $6070: $23
    inc c                                         ; $6071: $0c
    ld d, $af                                     ; $6072: $16 $af
    pop bc                                        ; $6074: $c1
    jr z, jr_028_6060                             ; $6075: $28 $e9

    sub a                                         ; $6077: $97
    or $9a                                        ; $6078: $f6 $9a
    inc [hl]                                      ; $607a: $34
    or d                                          ; $607b: $b2
    or [hl]                                       ; $607c: $b6
    add c                                         ; $607d: $81
    ld c, e                                       ; $607e: $4b
    rrca                                          ; $607f: $0f
    add b                                         ; $6080: $80
    sub $f3                                       ; $6081: $d6 $f3
    rst $10                                       ; $6083: $d7
    ld a, [hl]                                    ; $6084: $7e
    rst $30                                       ; $6085: $f7
    sub a                                         ; $6086: $97
    dec b                                         ; $6087: $05
    rst $28                                       ; $6088: $ef
    inc sp                                        ; $6089: $33
    dec e                                         ; $608a: $1d
    ld [hl], b                                    ; $608b: $70
    cp l                                          ; $608c: $bd
    ld [bc], a                                    ; $608d: $02
    ld d, e                                       ; $608e: $53
    ld h, d                                       ; $608f: $62
    db $eb                                        ; $6090: $eb
    ret z                                         ; $6091: $c8

    ld [hl], a                                    ; $6092: $77
    ld d, h                                       ; $6093: $54
    ld e, $61                                     ; $6094: $1e $61
    xor l                                         ; $6096: $ad
    ld a, [de]                                    ; $6097: $1a
    db $ed                                        ; $6098: $ed
    ld [hl], l                                    ; $6099: $75
    inc d                                         ; $609a: $14
    ld a, h                                       ; $609b: $7c
    rra                                           ; $609c: $1f
    rst $18                                       ; $609d: $df
    ld a, [$d684]                                 ; $609e: $fa $84 $d6
    di                                            ; $60a1: $f3
    ld l, e                                       ; $60a2: $6b
    ld l, h                                       ; $60a3: $6c
    db $ed                                        ; $60a4: $ed
    ld [hl], a                                    ; $60a5: $77
    ld a, a                                       ; $60a6: $7f
    ld e, c                                       ; $60a7: $59
    ld sp, $0d22                                  ; $60a8: $31 $22 $0d
    jp nz, Jump_028_5596                          ; $60ab: $c2 $96 $55

    ld c, d                                       ; $60ae: $4a
    dec [hl]                                      ; $60af: $35
    ld e, a                                       ; $60b0: $5f
    ei                                            ; $60b1: $fb
    db $e3                                        ; $60b2: $e3
    ld a, l                                       ; $60b3: $7d
    db $eb                                        ; $60b4: $eb
    xor a                                         ; $60b5: $af
    ld c, c                                       ; $60b6: $49
    ld d, e                                       ; $60b7: $53
    sub e                                         ; $60b8: $93
    ld e, a                                       ; $60b9: $5f
    sub b                                         ; $60ba: $90
    sub a                                         ; $60bb: $97

jr_028_60bc:
    add d                                         ; $60bc: $82
    ld a, c                                       ; $60bd: $79
    adc [hl]                                      ; $60be: $8e
    push hl                                       ; $60bf: $e5

jr_028_60c0:
    cp h                                          ; $60c0: $bc
    ld e, h                                       ; $60c1: $5c
    ldh [$ae], a                                  ; $60c2: $e0 $ae
    ld d, l                                       ; $60c4: $55
    ld b, l                                       ; $60c5: $45
    ld a, [de]                                    ; $60c6: $1a
    add h                                         ; $60c7: $84
    ld bc, $d2bd                                  ; $60c8: $01 $bd $d2
    ld [hl], h                                    ; $60cb: $74
    reti                                          ; $60cc: $d9


    pop af                                        ; $60cd: $f1
    cp c                                          ; $60ce: $b9
    or [hl]                                       ; $60cf: $b6
    ld d, [hl]                                    ; $60d0: $56
    push af                                       ; $60d1: $f5
    ld a, c                                       ; $60d2: $79
    xor [hl]                                      ; $60d3: $ae
    db $fd                                        ; $60d4: $fd
    xor h                                         ; $60d5: $ac
    dec bc                                        ; $60d6: $0b
    ld b, $bd                                     ; $60d7: $06 $bd
    jp nc, Jump_028_62d4                          ; $60d9: $d2 $d4 $62

    ld e, h                                       ; $60dc: $5c
    ld c, h                                       ; $60dd: $4c
    ld hl, sp+$69                                 ; $60de: $f8 $69
    adc h                                         ; $60e0: $8c
    di                                            ; $60e1: $f3
    ld a, [c]                                     ; $60e2: $f2
    db $eb                                        ; $60e3: $eb
    db $e4                                        ; $60e4: $e4
    dec h                                         ; $60e5: $25
    add a                                         ; $60e6: $87
    pop af                                        ; $60e7: $f1
    cp a                                          ; $60e8: $bf
    and d                                         ; $60e9: $a2
    sub $1f                                       ; $60ea: $d6 $1f
    ld e, a                                       ; $60ec: $5f
    sbc [hl]                                      ; $60ed: $9e
    sub $a4                                       ; $60ee: $d6 $a4
    xor c                                         ; $60f0: $a9
    ret                                           ; $60f1: $c9


    xor a                                         ; $60f2: $af
    ld d, d                                       ; $60f3: $52
    inc de                                        ; $60f4: $13
    inc d                                         ; $60f5: $14
    ld b, a                                       ; $60f6: $47
    jr jr_028_60c0                                ; $60f7: $18 $c7

    rst $20                                       ; $60f9: $e7
    sub h                                         ; $60fa: $94
    rst $10                                       ; $60fb: $d7
    and [hl]                                      ; $60fc: $a6
    dec bc                                        ; $60fd: $0b
    ld b, $47                                     ; $60fe: $06 $47
    push bc                                       ; $6100: $c5
    jr c, jr_028_60bc                             ; $6101: $38 $b9

    ld b, c                                       ; $6103: $41
    ld [hl], c                                    ; $6104: $71
    xor $da                                       ; $6105: $ee $da
    add $67                                       ; $6107: $c6 $67
    add hl, de                                    ; $6109: $19
    xor a                                         ; $610a: $af
    ld b, d                                       ; $610b: $42
    rst $08                                       ; $610c: $cf
    sub $a4                                       ; $610d: $d6 $a4
    ld b, c                                       ; $610f: $41

Call_028_6110:
    jr jr_028_614f                                ; $6110: $18 $3d

    jp z, Jump_000_38ef                           ; $6112: $ca $ef $38

    push af                                       ; $6115: $f5
    sbc l                                         ; $6116: $9d
    and h                                         ; $6117: $a4
    xor h                                         ; $6118: $ac
    ld b, c                                       ; $6119: $41
    ld [$f941], sp                                ; $611a: $08 $41 $f9
    ld e, l                                       ; $611d: $5d
    and b                                         ; $611e: $a0
    sbc d                                         ; $611f: $9a
    rst $08                                       ; $6120: $cf
    set 1, e                                      ; $6121: $cb $cb
    ld [hl], a                                    ; $6123: $77
    sbc c                                         ; $6124: $99
    and l                                         ; $6125: $a5
    ld h, [hl]                                    ; $6126: $66
    db $fd                                        ; $6127: $fd
    sub l                                         ; $6128: $95
    ld d, a                                       ; $6129: $57
    ld h, c                                       ; $612a: $61

jr_028_612b:
    add e                                         ; $612b: $83
    ld a, [c]                                     ; $612c: $f2
    dec bc                                        ; $612d: $0b
    ld a, [c]                                     ; $612e: $f2
    ld h, c                                       ; $612f: $61
    cp h                                          ; $6130: $bc
    ld [de], a                                    ; $6131: $12
    ld a, e                                       ; $6132: $7b
    cp c                                          ; $6133: $b9
    inc d                                         ; $6134: $14
    ld c, h                                       ; $6135: $4c
    ld a, l                                       ; $6136: $7d
    ld [hl], h                                    ; $6137: $74
    add e                                         ; $6138: $83
    ld [c], a                                     ; $6139: $e2
    add e                                         ; $613a: $83
    inc c                                         ; $613b: $0c
    rst $18                                       ; $613c: $df
    ld l, a                                       ; $613d: $6f
    ld hl, sp-$80                                 ; $613e: $f8 $80
    ld h, [hl]                                    ; $6140: $66
    ld e, c                                       ; $6141: $59
    and l                                         ; $6142: $a5
    ld d, h                                       ; $6143: $54
    di                                            ; $6144: $f3
    dec b                                         ; $6145: $05
    rst $28                                       ; $6146: $ef
    ld l, e                                       ; $6147: $6b
    ld l, e                                       ; $6148: $6b
    ld d, l                                       ; $6149: $55
    rst $18                                       ; $614a: $df
    and l                                         ; $614b: $a5
    ld l, $18                                     ; $614c: $2e $18
    dec a                                         ; $614e: $3d

Jump_028_614f:
jr_028_614f:
    adc d                                         ; $614f: $8a
    ld a, d                                       ; $6150: $7a
    dec c                                         ; $6151: $0d
    sub $eb                                       ; $6152: $d6 $eb
    call nc, Call_028_4e33                        ; $6154: $d4 $33 $4e
    ld e, a                                       ; $6157: $5f
    ld b, a                                       ; $6158: $47
    or d                                          ; $6159: $b2
    dec e                                         ; $615a: $1d
    ccf                                           ; $615b: $3f
    ld b, h                                       ; $615c: $44
    jr @-$57                                      ; $615d: $18 $a7

    sbc c                                         ; $615f: $99
    ei                                            ; $6160: $fb
    sbc $65                                       ; $6161: $de $65
    sub [hl]                                      ; $6163: $96
    sub l                                         ; $6164: $95
    ld d, a                                       ; $6165: $57
    ld h, c                                       ; $6166: $61
    add e                                         ; $6167: $83
    inc c                                         ; $6168: $0c
    rst $18                                       ; $6169: $df
    res 4, l                                      ; $616a: $cb $a5
    nop                                           ; $616c: $00

jr_028_616d:
    ld h, c                                       ; $616d: $61
    sub [hl]                                      ; $616e: $96
    sbc d                                         ; $616f: $9a
    push af                                       ; $6170: $f5
    rst $10                                       ; $6171: $d7
    cp $a7                                        ; $6172: $fe $a7
    and l                                         ; $6174: $a5
    pop af                                        ; $6175: $f1
    sub l                                         ; $6176: $95
    sub a                                         ; $6177: $97
    sbc a                                         ; $6178: $9f
    sbc l                                         ; $6179: $9d
    or d                                          ; $617a: $b2
    sub d                                         ; $617b: $92
    ld b, [hl]                                    ; $617c: $46
    nop                                           ; $617d: $00
    call $2ab2                                    ; $617e: $cd $b2 $2a
    ld c, l                                       ; $6181: $4d
    ld h, h                                       ; $6182: $64
    ld d, h                                       ; $6183: $54
    di                                            ; $6184: $f3

jr_028_6185:
    ret                                           ; $6185: $c9


    add a                                         ; $6186: $87
    rra                                           ; $6187: $1f
    or [hl]                                       ; $6188: $b6
    ld e, a                                       ; $6189: $5f
    and $e5                                       ; $618a: $e6 $e5
    ld b, a                                       ; $618c: $47
    rst $08                                       ; $618d: $cf
    xor a                                         ; $618e: $af
    and e                                         ; $618f: $a3
    nop                                           ; $6190: $00

jr_028_6191:
    ld a, h                                       ; $6191: $7c
    ld a, [bc]                                    ; $6192: $0a
    ld b, e                                       ; $6193: $43
    jr @+$18                                      ; $6194: $18 $16

    xor a                                         ; $6196: $af
    pop bc                                        ; $6197: $c1
    ld l, d                                       ; $6198: $6a
    sbc l                                         ; $6199: $9d
    dec de                                        ; $619a: $1b
    inc c                                         ; $619b: $0c
    jr z, jr_028_612b                             ; $619c: $28 $8d

    rst $10                                       ; $619e: $d7
    ret nc                                        ; $619f: $d0

    ld a, d                                       ; $61a0: $7a
    cp $8a                                        ; $61a1: $fe $8a
    ld e, d                                       ; $61a3: $5a
    ld a, a                                       ; $61a4: $7f
    sbc [hl]                                      ; $61a5: $9e
    ld l, e                                       ; $61a6: $6b
    rst $38                                       ; $61a7: $ff
    jr nz, jr_028_616d                            ; $61a8: $20 $c3

    rst $20                                       ; $61aa: $e7
    set 1, e                                      ; $61ab: $cb $cb
    ld [hl], e                                    ; $61ad: $73
    ld [hl], a                                    ; $61ae: $77
    jp z, Jump_028_6f5b                           ; $61af: $ca $5b $6f

    adc h                                         ; $61b2: $8c
    rst $08                                       ; $61b3: $cf
    dec e                                         ; $61b4: $1d
    db $fc                                        ; $61b5: $fc
    xor a                                         ; $61b6: $af
    ld c, c                                       ; $61b7: $49
    or e                                          ; $61b8: $b3
    xor b                                         ; $61b9: $a8
    cp $82                                        ; $61ba: $fe $82

jr_028_61bc:
    jr nc, jr_028_6185                            ; $61bc: $30 $c7

    inc h                                         ; $61be: $24
    push de                                       ; $61bf: $d5
    ld a, h                                       ; $61c0: $7c
    rst $20                                       ; $61c1: $e7
    add hl, de                                    ; $61c2: $19
    ldh a, [$c5]                                  ; $61c3: $f0 $c5
    ld d, a                                       ; $61c5: $57
    db $eb                                        ; $61c6: $eb
    cpl                                           ; $61c7: $2f
    db $fc                                        ; $61c8: $fc
    sub l                                         ; $61c9: $95
    sub a                                         ; $61ca: $97
    rst $28                                       ; $61cb: $ef
    add d                                         ; $61cc: $82
    ld bc, $caa7                                  ; $61cd: $01 $a7 $ca
    jp nz, $82ef                                  ; $61d0: $c2 $ef $82

    ld bc, $c547                                  ; $61d3: $01 $47 $c5
    jr c, jr_028_6191                             ; $61d6: $38 $b9

    ld b, c                                       ; $61d8: $41
    ld [hl], c                                    ; $61d9: $71
    xor $aa                                       ; $61da: $ee $aa
    inc c                                         ; $61dc: $0c
    ld a, a                                       ; $61dd: $7f
    ld a, [de]                                    ; $61de: $1a
    sub e                                         ; $61df: $93
    add d                                         ; $61e0: $82
    or l                                          ; $61e1: $b5
    adc l                                         ; $61e2: $8d
    xor a                                         ; $61e3: $af
    db $fd                                        ; $61e4: $fd
    dec sp                                        ; $61e5: $3b
    rst $18                                       ; $61e6: $df
    call c, $8477                                 ; $61e7: $dc $77 $84
    ld bc, $ca3d                                  ; $61ea: $01 $3d $ca
    add l                                         ; $61ed: $85
    ld e, l                                       ; $61ee: $5d
    ret c                                         ; $61ef: $d8

    ld [hl], l                                    ; $61f0: $75
    or h                                          ; $61f1: $b4
    inc de                                        ; $61f2: $13
    rst $38                                       ; $61f3: $ff
    dec sp                                        ; $61f4: $3b
    ld d, e                                       ; $61f5: $53
    jp c, $bf37                                   ; $61f6: $da $37 $bf

    inc [hl]                                      ; $61f9: $34
    ld a, $3b                                     ; $61fa: $3e $3b
    ld h, l                                       ; $61fc: $65
    daa                                           ; $61fd: $27
    ld l, e                                       ; $61fe: $6b
    or h                                          ; $61ff: $b4
    or e                                          ; $6200: $b3
    sbc c                                         ; $6201: $99
    ld [de], a                                    ; $6202: $12
    ld e, e                                       ; $6203: $5b
    scf                                           ; $6204: $37
    pop de                                        ; $6205: $d1
    halt                                          ; $6206: $76
    ei                                            ; $6207: $fb
    ld de, $2d06                                  ; $6208: $11 $06 $2d
    ld [hl], h                                    ; $620b: $74
    ld l, l                                       ; $620c: $6d
    ld a, e                                       ; $620d: $7b
    ld a, [hl+]                                   ; $620e: $2a
    ld l, c                                       ; $620f: $69
    adc b                                         ; $6210: $88
    ld [hl], c                                    ; $6211: $71
    rla                                           ; $6212: $17
    ld [hl], $03                                  ; $6213: $36 $03
    cp $df                                        ; $6215: $fe $df
    cp c                                          ; $6217: $b9
    di                                            ; $6218: $f3
    ld [hl], d                                    ; $6219: $72
    ld h, c                                       ; $621a: $61
    rla                                           ; $621b: $17
    add $97                                       ; $621c: $c6 $97
    sub a                                         ; $621e: $97
    ld e, a                                       ; $621f: $5f
    sub e                                         ; $6220: $93
    add [hl]                                      ; $6221: $86
    add d                                         ; $6222: $82
    sbc l                                         ; $6223: $9d
    xor h                                         ; $6224: $ac
    pop de                                        ; $6225: $d1
    adc $66                                       ; $6226: $ce $66
    and b                                         ; $6228: $a0
    sub a                                         ; $6229: $97
    call Call_000_37cb                            ; $622a: $cd $cb $37
    dec [hl]                                      ; $622d: $35
    or [hl]                                       ; $622e: $b6
    or $23                                        ; $622f: $f6 $23
    inc c                                         ; $6231: $0c
    and a                                         ; $6232: $a7
    daa                                           ; $6233: $27
    rst $08                                       ; $6234: $cf
    adc e                                         ; $6235: $8b
    jr nz, jr_028_61bc                            ; $6236: $20 $84

    db $10                                        ; $6238: $10
    ld b, $3d                                     ; $6239: $06 $3d
    jp z, $afcb                                   ; $623b: $ca $cb $af

    ld c, c                                       ; $623e: $49
    inc sp                                        ; $623f: $33
    sub l                                         ; $6240: $95
    rst $20                                       ; $6241: $e7
    xor [hl]                                      ; $6242: $ae
    ld c, c                                       ; $6243: $49
    ld d, e                                       ; $6244: $53
    sub e                                         ; $6245: $93
    rst $18                                       ; $6246: $df
    and l                                         ; $6247: $a5
    reti                                          ; $6248: $d9


    add hl, hl                                    ; $6249: $29
    cp e                                          ; $624a: $bb
    ld a, $4a                                     ; $624b: $3e $4a
    cp [hl]                                       ; $624d: $be
    dec bc                                        ; $624e: $0b
    ld b, $3d                                     ; $624f: $06 $3d
    adc e                                         ; $6251: $8b
    ld a, [$97f8]                                 ; $6252: $fa $f8 $97
    ld e, a                                       ; $6255: $5f
    sub e                                         ; $6256: $93
    ld h, [hl]                                    ; $6257: $66
    ld a, [de]                                    ; $6258: $1a
    db $e3                                        ; $6259: $e3
    ld e, b                                       ; $625a: $58
    ld e, [hl]                                    ; $625b: $5e
    ld a, [bc]                                    ; $625c: $0a
    sub [hl]                                      ; $625d: $96
    add $97                                       ; $625e: $c6 $97
    or $9a                                        ; $6260: $f6 $9a
    inc [hl]                                      ; $6262: $34
    ld [hl-], a                                   ; $6263: $32
    sub [hl]                                      ; $6264: $96
    ld [de], a                                    ; $6265: $12
    ld e, [hl]                                    ; $6266: $5e
    ld c, a                                       ; $6267: $4f
    ld l, c                                       ; $6268: $69
    and [hl]                                      ; $6269: $a6
    ld a, $2f                                     ; $626a: $3e $2f
    rla                                           ; $626c: $17
    ld d, [hl]                                    ; $626d: $56

jr_028_626e:
    jp nc, Jump_028_5748                          ; $626e: $d2 $48 $57

    inc c                                         ; $6271: $0c
    dec a                                         ; $6272: $3d
    ccf                                           ; $6273: $3f
    ld b, [hl]                                    ; $6274: $46
    xor $2c                                       ; $6275: $ee $2c
    or e                                          ; $6277: $b3
    ld d, e                                       ; $6278: $53
    add d                                         ; $6279: $82
    db $f4                                        ; $627a: $f4
    ld a, c                                       ; $627b: $79
    ld sp, hl                                     ; $627c: $f9
    ld [hl], l                                    ; $627d: $75
    inc d                                         ; $627e: $14
    add b                                         ; $627f: $80
    ld c, a                                       ; $6280: $4f
    ld h, c                                       ; $6281: $61
    ld [$0c21], sp                                ; $6282: $08 $21 $0c
    dec l                                         ; $6285: $2d
    scf                                           ; $6286: $37
    ld a, $55                                     ; $6287: $3e $55
    rst $18                                       ; $6289: $df
    ld h, l                                       ; $628a: $65
    dec a                                         ; $628b: $3d
    jp z, Jump_028_5d85                           ; $628c: $ca $85 $5d

    sbc b                                         ; $628f: $98
    ld c, $5e                                     ; $6290: $0e $5e
    ld l, [hl]                                    ; $6292: $6e
    ld a, [de]                                    ; $6293: $1a
    ret c                                         ; $6294: $d8

    dec h                                         ; $6295: $25
    ld e, e                                       ; $6296: $5b
    or h                                          ; $6297: $b4
    ld a, [c]                                     ; $6298: $f2
    sbc e                                         ; $6299: $9b
    add h                                         ; $629a: $84
    sub $5f                                       ; $629b: $d6 $5f
    cp a                                          ; $629d: $bf
    db $eb                                        ; $629e: $eb
    db $e4                                        ; $629f: $e4
    dec h                                         ; $62a0: $25

jr_028_62a1:
    add a                                         ; $62a1: $87
    reti                                          ; $62a2: $d9


    sub d                                         ; $62a3: $92
    pop hl                                        ; $62a4: $e1
    adc [hl]                                      ; $62a5: $8e
    sub a                                         ; $62a6: $97
    add $b6                                       ; $62a7: $c6 $b6
    cpl                                           ; $62a9: $2f
    or c                                          ; $62aa: $b1
    inc d                                         ; $62ab: $14
    xor $94                                       ; $62ac: $ee $94
    ret c                                         ; $62ae: $d8

    ret c                                         ; $62af: $d8

    ei                                            ; $62b0: $fb
    sub e                                         ; $62b1: $93
    rst $18                                       ; $62b2: $df

jr_028_62b3:
    inc h                                         ; $62b3: $24
    inc [hl]                                      ; $62b4: $34
    ld c, e                                       ; $62b5: $4b
    dec l                                         ; $62b6: $2d
    inc e                                         ; $62b7: $1c
    jr jr_028_62b3                                ; $62b8: $18 $f9

    sbc l                                         ; $62ba: $9d
    xor h                                         ; $62bb: $ac
    ld c, h                                       ; $62bc: $4c
    jp $cf75                                      ; $62bd: $c3 $75 $cf


    ret nc                                        ; $62c0: $d0

    sub [hl]                                      ; $62c1: $96
    ld l, a                                       ; $62c2: $6f
    add $df                                       ; $62c3: $c6 $df
    jr jr_028_626e                                ; $62c5: $18 $a7

    sbc l                                         ; $62c7: $9d
    adc [hl]                                      ; $62c8: $8e
    ld a, h                                       ; $62c9: $7c
    ld [hl], l                                    ; $62ca: $75
    push de                                       ; $62cb: $d5
    ld a, a                                       ; $62cc: $7f
    ld c, l                                       ; $62cd: $4d
    ld a, [de]                                    ; $62ce: $1a
    ld e, c                                       ; $62cf: $59
    ld sp, hl                                     ; $62d0: $f9
    ret c                                         ; $62d1: $d8

    sbc c                                         ; $62d2: $99
    ld h, a                                       ; $62d3: $67

Jump_028_62d4:
    sbc b                                         ; $62d4: $98
    ld [hl+], a                                   ; $62d5: $22
    ret                                           ; $62d6: $c9


    inc hl                                        ; $62d7: $23
    add h                                         ; $62d8: $84
    xor d                                         ; $62d9: $aa
    ld hl, sp+$4a                                 ; $62da: $f8 $4a
    sub a                                         ; $62dc: $97
    add d                                         ; $62dd: $82
    ld a, c                                       ; $62de: $79
    ld sp, hl                                     ; $62df: $f9
    or l                                          ; $62e0: $b5
    sbc a                                         ; $62e1: $9f
    ld [hl], l                                    ; $62e2: $75
    sub h                                         ; $62e3: $94
    ld h, $99                                     ; $62e4: $26 $99
    ld hl, $3dc2                                  ; $62e6: $21 $c2 $3d
    jp z, $fdaf                                   ; $62e9: $ca $af $fd

    xor h                                         ; $62ec: $ac
    and e                                         ; $62ed: $a3
    inc [hl]                                      ; $62ee: $34
    ret                                           ; $62ef: $c9


    inc c                                         ; $62f0: $0c

jr_028_62f1:
    cp e                                          ; $62f1: $bb
    ld h, b                                       ; $62f2: $60
    rst $00                                       ; $62f3: $c7
    ld a, [de]                                    ; $62f4: $1a
    cp [hl]                                       ; $62f5: $be
    dec bc                                        ; $62f6: $0b
    ld b, $a7                                     ; $62f7: $06 $a7
    inc h                                         ; $62f9: $24
    cp a                                          ; $62fa: $bf
    or [hl]                                       ; $62fb: $b6
    ld d, [hl]                                    ; $62fc: $56

jr_028_62fd:
    push af                                       ; $62fd: $f5
    ld a, c                                       ; $62fe: $79
    xor [hl]                                      ; $62ff: $ae
    ld c, c                                       ; $6300: $49
    inc hl                                        ; $6301: $23
    ld h, e                                       ; $6302: $63
    add hl, hl                                    ; $6303: $29
    pop hl                                        ; $6304: $e1
    push af                                       ; $6305: $f5
    sub h                                         ; $6306: $94
    ei                                            ; $6307: $fb
    add b                                         ; $6308: $80
    jr nc, jr_028_62a1                            ; $6309: $30 $96

    pop af                                        ; $630b: $f1
    scf                                           ; $630c: $37
    add $15                                       ; $630d: $c6 $15
    or l                                          ; $630f: $b5
    cp $28                                        ; $6310: $fe $28
    rla                                           ; $6312: $17
    and [hl]                                      ; $6313: $a6
    db $fc                                        ; $6314: $fc
    jp nc, $979e                                  ; $6315: $d2 $9e $97

    dec bc                                        ; $6318: $0b
    ld e, l                                       ; $6319: $5d
    or [hl]                                       ; $631a: $b6
    cp $fa                                        ; $631b: $fe $fa
    ld e, l                                       ; $631d: $5d
    daa                                           ; $631e: $27
    cpl                                           ; $631f: $2f
    ld sp, hl                                     ; $6320: $f9
    ret c                                         ; $6321: $d8

    inc sp                                        ; $6322: $33
    ld d, e                                       ; $6323: $53
    ld sp, hl                                     ; $6324: $f9
    ld c, l                                       ; $6325: $4d
    sbc d                                         ; $6326: $9a
    sbc l                                         ; $6327: $9d
    or d                                          ; $6328: $b2
    db $e3                                        ; $6329: $e3
    and l                                         ; $632a: $a5
    or c                                          ; $632b: $b1
    db $ed                                        ; $632c: $ed
    ld c, e                                       ; $632d: $4b
    inc l                                         ; $632e: $2c
    dec b                                         ; $632f: $05
    ld l, l                                       ; $6330: $6d
    and a                                         ; $6331: $a7
    inc h                                         ; $6332: $24
    cp a                                          ; $6333: $bf
    or [hl]                                       ; $6334: $b6
    ld d, [hl]                                    ; $6335: $56
    push af                                       ; $6336: $f5
    ld a, c                                       ; $6337: $79
    xor [hl]                                      ; $6338: $ae
    ld c, c                                       ; $6339: $49
    inc hl                                        ; $633a: $23
    ld h, e                                       ; $633b: $63
    add hl, hl                                    ; $633c: $29
    pop hl                                        ; $633d: $e1
    push af                                       ; $633e: $f5
    sub h                                         ; $633f: $94

Jump_028_6340:
    ei                                            ; $6340: $fb
    add b                                         ; $6341: $80
    jr nc, jr_028_62f1                            ; $6342: $30 $ad

    ld l, d                                       ; $6344: $6a
    db $fd                                        ; $6345: $fd
    dec [hl]                                      ; $6346: $35
    ld l, c                                       ; $6347: $69
    ld h, [hl]                                    ; $6348: $66
    and a                                         ; $6349: $a7
    ld hl, $1d36                                  ; $634a: $21 $36 $1d
    xor a                                         ; $634d: $af
    call Call_000_173c                            ; $634e: $cd $3c $17
    cp h                                          ; $6351: $bc
    rst $08                                       ; $6352: $cf
    ld [hl], e                                    ; $6353: $73
    ld e, [hl]                                    ; $6354: $5e
    ld a, [hl]                                    ; $6355: $7e
    db $dd                                        ; $6356: $dd
    res 1, l                                      ; $6357: $cb $8d
    add hl, bc                                    ; $6359: $09
    reti                                          ; $635a: $d9


    add hl, hl                                    ; $635b: $29

Jump_028_635c:
    cpl                                           ; $635c: $2f
    dec [hl]                                      ; $635d: $35
    ld e, b                                       ; $635e: $58
    adc e                                         ; $635f: $8b
    daa                                           ; $6360: $27
    db $fd                                        ; $6361: $fd
    sbc d                                         ; $6362: $9a
    rst $30                                       ; $6363: $f7
    xor [hl]                                      ; $6364: $ae
    jr jr_028_62fd                                ; $6365: $18 $96

    or c                                          ; $6367: $b1
    cp [hl]                                       ; $6368: $be
    ld e, c                                       ; $6369: $59
    rst $18                                       ; $636a: $df
    inc l                                         ; $636b: $2c
    xor c                                         ; $636c: $a9
    and $08                                       ; $636d: $e6 $08
    ld hl, $aacb                                  ; $636f: $21 $cb $aa
    cp [hl]                                       ; $6372: $be
    xor e                                         ; $6373: $ab
    cp [hl]                                       ; $6374: $be
    dec hl                                        ; $6375: $2b
    and l                                         ; $6376: $a5
    sbc d                                         ; $6377: $9a
    inc hl                                        ; $6378: $23
    add h                                         ; $6379: $84
    jr nc, jr_028_63c3                            ; $637a: $30 $47

    ld sp, hl                                     ; $637c: $f9
    ld [c], a                                     ; $637d: $e2
    dec hl                                        ; $637e: $2b
    ld hl, sp-$04                                 ; $637f: $f8 $fc
    ld h, e                                       ; $6381: $63
    ld e, h                                       ; $6382: $5c
    ld hl, sp+$2b                                 ; $6383: $f8 $2b
    ret                                           ; $6385: $c9


    rst $08                                       ; $6386: $cf
    ld [hl], e                                    ; $6387: $73
    pop bc                                        ; $6388: $c1
    ei                                            ; $6389: $fb
    ld a, [hl-]                                   ; $638a: $3a
    ld a, [bc]                                    ; $638b: $0a
    cp [hl]                                       ; $638c: $be
    ld h, $8d                                     ; $638d: $26 $8d
    inc l                                         ; $638f: $2c
    ld e, [hl]                                    ; $6390: $5e
    rst $30                                       ; $6391: $f7
    ld hl, sp+$2b                                 ; $6392: $f8 $2b
    ld e, c                                       ; $6394: $59
    add hl, de                                    ; $6395: $19
    ld e, b                                       ; $6396: $58
    daa                                           ; $6397: $27
    dec hl                                        ; $6398: $2b
    inc bc                                        ; $6399: $03
    ld [$4703], sp                                ; $639a: $08 $03 $47
    rst $30                                       ; $639d: $f7
    db $dd                                        ; $639e: $dd
    xor $bb                                       ; $639f: $ee $bb
    ld l, l                                       ; $63a1: $6d
    ld a, h                                       ; $63a2: $7c
    rst $10                                       ; $63a3: $d7
    rst $00                                       ; $63a4: $c7
    and a                                         ; $63a5: $a7
    adc c                                         ; $63a6: $89
    ld l, h                                       ; $63a7: $6c
    db $ed                                        ; $63a8: $ed
    sbc a                                         ; $63a9: $9f
    xor [hl]                                      ; $63aa: $ae
    db $dd                                        ; $63ab: $dd
    ld [hl], a                                    ; $63ac: $77
    cp e                                          ; $63ad: $bb
    rst $28                                       ; $63ae: $ef
    or $bb                                        ; $63af: $f6 $bb
    ld l, b                                       ; $63b1: $68
    and e                                         ; $63b2: $a3
    ld de, $8421                                  ; $63b3: $11 $21 $84
    ld bc, $bf3d                                  ; $63b6: $01 $3d $bf
    ld d, $e3                                     ; $63b9: $16 $e3
    and b                                         ; $63bb: $a0
    di                                            ; $63bc: $f3
    ld e, d                                       ; $63bd: $5a
    sbc a                                         ; $63be: $9f
    ld b, $7a                                     ; $63bf: $06 $7a
    ld l, c                                       ; $63c1: $69
    ld a, h                                       ; $63c2: $7c

jr_028_63c3:
    ld a, c                                       ; $63c3: $79
    ld e, d                                       ; $63c4: $5a
    sub e                                         ; $63c5: $93
    and [hl]                                      ; $63c6: $a6
    ld h, [hl]                                    ; $63c7: $66
    db $fd                                        ; $63c8: $fd
    or c                                          ; $63c9: $b1
    xor a                                         ; $63ca: $af
    ld l, $7b                                     ; $63cb: $2e $7b
    ld [hl], $be                                  ; $63cd: $36 $be
    cp h                                          ; $63cf: $bc
    db $fc                                        ; $63d0: $fc
    sbc d                                         ; $63d1: $9a
    inc [hl]                                      ; $63d2: $34
    or d                                          ; $63d3: $b2
    sbc b                                         ; $63d4: $98
    adc l                                         ; $63d5: $8d
    ld b, [hl]                                    ; $63d6: $46
    cp a                                          ; $63d7: $bf
    rrca                                          ; $63d8: $0f
    adc e                                         ; $63d9: $8b
    rst $30                                       ; $63da: $f7
    ld de, $3d06                                  ; $63db: $11 $06 $3d
    adc d                                         ; $63de: $8a
    ld d, d                                       ; $63df: $52
    ld a, l                                       ; $63e0: $7d
    ld b, c                                       ; $63e1: $41
    ld h, $a3                                     ; $63e2: $26 $a3
    rlca                                          ; $63e4: $07
    sbc b                                         ; $63e5: $98
    sub a                                         ; $63e6: $97
    ld l, a                                       ; $63e7: $6f

jr_028_63e8:
    add $2e                                       ; $63e8: $c6 $2e
    and e                                         ; $63ea: $a3
    sbc d                                         ; $63eb: $9a
    rrca                                          ; $63ec: $0f
    cp $67                                        ; $63ed: $fe $67
    nop                                           ; $63ef: $00
    ld h, c                                       ; $63f0: $61
    dec a                                         ; $63f1: $3d
    adc e                                         ; $63f2: $8b
    ld a, d                                       ; $63f3: $7a
    dec c                                         ; $63f4: $0d
    and $e5                                       ; $63f5: $e6 $e5
    rst $10                                       ; $63f7: $d7
    cp l                                          ; $63f8: $bd
    call c, $9098                                 ; $63f9: $dc $98 $90
    sbc l                                         ; $63fc: $9d
    ld a, [c]                                     ; $63fd: $f2
    ld d, d                                       ; $63fe: $52
    add e                                         ; $63ff: $83
    or l                                          ; $6400: $b5
    ld a, b                                       ; $6401: $78
    jp nc, $c577                                  ; $6402: $d2 $77 $c5

    sub [hl]                                      ; $6405: $96
    or c                                          ; $6406: $b1
    and h                                         ; $6407: $a4
    sbc d                                         ; $6408: $9a
    xor a                                         ; $6409: $af
    ld c, [hl]                                    ; $640a: $4e
    ret                                           ; $640b: $c9


    ld [hl], e                                    ; $640c: $73
    rst $10                                       ; $640d: $d7
    ld [hl], $be                                  ; $640e: $36 $be
    ld d, $d2                                     ; $6410: $16 $d2
    adc $8f                                       ; $6412: $ce $8f
    ld d, a                                       ; $6414: $57
    ld [hl], d                                    ; $6415: $72
    sbc b                                         ; $6416: $98
    rst $20                                       ; $6417: $e7
    ret nz                                        ; $6418: $c0

    ld e, a                                       ; $6419: $5f
    db $e3                                        ; $641a: $e3
    xor [hl]                                      ; $641b: $ae
    ld [hl], a                                    ; $641c: $77
    pop bc                                        ; $641d: $c1
    rst $00                                       ; $641e: $c7
    db $dd                                        ; $641f: $dd
    ld e, b                                       ; $6420: $58
    sub l                                         ; $6421: $95
    ld l, $eb                                     ; $6422: $2e $eb
    ld sp, hl                                     ; $6424: $f9
    or e                                          ; $6425: $b3
    ld d, e                                       ; $6426: $53
    add d                                         ; $6427: $82
    db $f4                                        ; $6428: $f4
    ld l, c                                       ; $6429: $69
    dec sp                                        ; $642a: $3b
    adc l                                         ; $642b: $8d
    xor a                                         ; $642c: $af
    call c, Call_028_6110                         ; $642d: $dc $10 $61
    and a                                         ; $6430: $a7
    sbc c                                         ; $6431: $99
    ld e, e                                       ; $6432: $5b
    push de                                       ; $6433: $d5
    ld de, $e542                                  ; $6434: $11 $42 $e5
    or d                                          ; $6437: $b2
    ld b, a                                       ; $6438: $47
    jr jr_028_63e8                                ; $6439: $18 $ad

    ld a, l                                       ; $643b: $7d
    or a                                          ; $643c: $b7
    or $dd                                        ; $643d: $f6 $dd
    xor d                                         ; $643f: $aa
    ld [hl+], a                                   ; $6440: $22
    dec c                                         ; $6441: $0d
    ld b, d                                       ; $6442: $42
    ld [$bec5], sp                                ; $6443: $08 $c5 $be
    ld h, e                                       ; $6446: $63
    rst $18                                       ; $6447: $df
    ld sp, $deb3                                  ; $6448: $31 $b3 $de
    dec b                                         ; $644b: $05
    inc bc                                        ; $644c: $03
    cp l                                          ; $644d: $bd
    jp nc, Jump_028_5e4c                          ; $644e: $d2 $4c $5e

    ld h, e                                       ; $6451: $63
    ld l, h                                       ; $6452: $6c
    ld b, $25                                     ; $6453: $06 $25
    ld c, l                                       ; $6455: $4d
    ld h, h                                       ; $6456: $64
    ld d, h                                       ; $6457: $54
    di                                            ; $6458: $f3
    add l                                         ; $6459: $85
    ld e, d                                       ; $645a: $5a
    rst $38                                       ; $645b: $ff
    reti                                          ; $645c: $d9


    add [hl]                                      ; $645d: $86
    sub [hl]                                      ; $645e: $96
    or $bc                                        ; $645f: $f6 $bc
    db $fc                                        ; $6461: $fc
    ld a, b                                       ; $6462: $78
    ld l, l                                       ; $6463: $6d
    halt                                          ; $6464: $76
    sbc d                                         ; $6465: $9a
    cp c                                          ; $6466: $b9
    ld [hl+], a                                   ; $6467: $22
    rra                                           ; $6468: $1f
    db $e3                                        ; $6469: $e3
    ld e, h                                       ; $646a: $5c
    ld h, e                                       ; $646b: $63
    dec e                                         ; $646c: $1d
    db $10                                        ; $646d: $10
    ld b, $a7                                     ; $646e: $06 $a7
    ld h, h                                       ; $6470: $64
    sub a                                         ; $6471: $97
    sbc l                                         ; $6472: $9d
    sub h                                         ; $6473: $94
    ld e, c                                       ; $6474: $59
    rst $28                                       ; $6475: $ef
    add d                                         ; $6476: $82
    ld bc, $1aa7                                  ; $6477: $01 $a7 $1a
    rst $28                                       ; $647a: $ef
    ld [hl-], a                                   ; $647b: $32
    ld c, e                                       ; $647c: $4b
    adc l                                         ; $647d: $8d
    ld c, l                                       ; $647e: $4d
    call nc, $cbcb                                ; $647f: $d4 $cb $cb
    ld l, h                                       ; $6482: $6c
    xor l                                         ; $6483: $ad
    ld a, [hl]                                    ; $6484: $7e
    rst $00                                       ; $6485: $c7
    db $dd                                        ; $6486: $dd
    ld e, b                                       ; $6487: $58
    sub l                                         ; $6488: $95
    ld a, c                                       ; $6489: $79
    ld d, c                                       ; $648a: $51
    sbc d                                         ; $648b: $9a
    rla                                           ; $648c: $17
    push af                                       ; $648d: $f5
    ld a, c                                       ; $648e: $79
    cp c                                          ; $648f: $b9
    inc d                                         ; $6490: $14
    ld [hl], h                                    ; $6491: $74
    pop bc                                        ; $6492: $c1
    dec a                                         ; $6493: $3d
    ld c, e                                       ; $6494: $4b
    inc sp                                        ; $6495: $33
    sub l                                         ; $6496: $95
    sbc a                                         ; $6497: $9f
    sub a                                         ; $6498: $97
    ld l, a                                       ; $6499: $6f
    ld d, [hl]                                    ; $649a: $56
    rst $38                                       ; $649b: $ff
    rst $28                                       ; $649c: $ef
    ld e, h                                       ; $649d: $5c
    ld a, [bc]                                    ; $649e: $0a
    and $45                                       ; $649f: $e6 $45
    ld a, l                                       ; $64a1: $7d

jr_028_64a2:
    ld e, [hl]                                    ; $64a2: $5e
    ld l, $05                                     ; $64a3: $2e $05
    adc e                                         ; $64a5: $8b
    ld e, c                                       ; $64a6: $59
    push de                                       ; $64a7: $d5
    sbc a                                         ; $64a8: $9f
    call Call_028_7674                            ; $64a9: $cd $74 $76
    ld l, c                                       ; $64ac: $69
    ld e, [hl]                                    ; $64ad: $5e
    ld a, [hl]                                    ; $64ae: $7e
    ld d, b                                       ; $64af: $50
    sub l                                         ; $64b0: $95
    call z, $15d8                                 ; $64b1: $cc $d8 $15
    inc bc                                        ; $64b4: $03
    rst $00                                       ; $64b5: $c7
    ld e, h                                       ; $64b6: $5c
    ld b, [hl]                                    ; $64b7: $46
    dec [hl]                                      ; $64b8: $35
    ld e, a                                       ; $64b9: $5f
    sub e                                         ; $64ba: $93
    ld h, [hl]                                    ; $64bb: $66
    ldh a, [$3f]                                  ; $64bc: $f0 $3f
    cpl                                           ; $64be: $2f
    ccf                                           ; $64bf: $3f
    rla                                           ; $64c0: $17
    db $ed                                        ; $64c1: $ed
    or b                                          ; $64c2: $b0
    ld c, h                                       ; $64c3: $4c
    reti                                          ; $64c4: $d9


    push af                                       ; $64c5: $f5
    pop af                                        ; $64c6: $f1
    ld a, [bc]                                    ; $64c7: $0a
    inc bc                                        ; $64c8: $03
    ld d, a                                       ; $64c9: $57
    ld h, d                                       ; $64ca: $62
    sub a                                         ; $64cb: $97
    add d                                         ; $64cc: $82
    dec h                                         ; $64cd: $25
    ld [hl], l                                    ; $64ce: $75
    sbc l                                         ; $64cf: $9d
    push bc                                       ; $64d0: $c5
    rst $00                                       ; $64d1: $c7
    dec hl                                        ; $64d2: $2b
    inc l                                         ; $64d3: $2c
    jr nc, jr_028_6500                            ; $64d4: $30 $2a

    db $ec                                        ; $64d6: $ec
    ld d, d                                       ; $64d7: $52
    jr nc, jr_028_64a2                            ; $64d8: $30 $c8

    ldh a, [$bd]                                  ; $64da: $f0 $bd
    ld e, h                                       ; $64dc: $5c
    ld a, [bc]                                    ; $64dd: $0a
    db $10                                        ; $64de: $10
    ld b, $96                                     ; $64df: $06 $96
    or l                                          ; $64e1: $b5
    rst $18                                       ; $64e2: $df
    ld [hl], a                                    ; $64e3: $77
    cp l                                          ; $64e4: $bd
    ld b, $0b                                     ; $64e5: $06 $0b
    adc h                                         ; $64e7: $8c
    ld a, [bc]                                    ; $64e8: $0a
    cp e                                          ; $64e9: $bb
    inc d                                         ; $64ea: $14
    call z, $afcb                                 ; $64eb: $cc $cb $af
    ld a, e                                       ; $64ee: $7b
    cp c                                          ; $64ef: $b9
    ld sp, $3b21                                  ; $64f0: $31 $21 $3b
    push hl                                       ; $64f3: $e5
    and l                                         ; $64f4: $a5
    ld b, $6b                                     ; $64f5: $06 $6b
    pop af                                        ; $64f7: $f1
    and h                                         ; $64f8: $a4
    rst $28                                       ; $64f9: $ef
    add d                                         ; $64fa: $82
    ld bc, $ca3d                                  ; $64fb: $01 $3d $ca
    add l                                         ; $64fe: $85
    ld e, l                                       ; $64ff: $5d

jr_028_6500:
    jr @+$55                                      ; $6500: $18 $53

    ld a, [bc]                                    ; $6502: $0a
    ld e, [hl]                                    ; $6503: $5e

Jump_028_6504:
    jp nc, $94c0                                  ; $6504: $d2 $c0 $94

    ret c                                         ; $6507: $d8

    xor [hl]                                      ; $6508: $ae

jr_028_6509:
    rst $10                                       ; $6509: $d7
    ld h, b                                       ; $650a: $60
    pop bc                                        ; $650b: $c1
    cp e                                          ; $650c: $bb
    ld e, a                                       ; $650d: $5f
    ld a, [bc]                                    ; $650e: $0a
    ld d, $d5                                     ; $650f: $16 $d5
    rra                                           ; $6511: $1f
    db $ed                                        ; $6512: $ed
    and h                                         ; $6513: $a4
    rst $30                                       ; $6514: $f7
    ld a, [de]                                    ; $6515: $1a
    inc l                                         ; $6516: $2c
    ret z                                         ; $6517: $c8

    pop bc                                        ; $6518: $c1
    rst $38                                       ; $6519: $ff
    xor [hl]                                      ; $651a: $ae

jr_028_651b:
    dec a                                         ; $651b: $3d
    cpl                                           ; $651c: $2f
    cp a                                          ; $651d: $bf
    db $e3                                        ; $651e: $e3
    call nc, $9277                                ; $651f: $d4 $77 $92
    or d                                          ; $6522: $b2
    ld h, [hl]                                    ; $6523: $66
    sub a                                         ; $6524: $97
    and $e5                                       ; $6525: $e6 $e5
    rst $10                                       ; $6527: $d7
    db $fd                                        ; $6528: $fd
    ld d, d                                       ; $6529: $52
    ld a, l                                       ; $652a: $7d
    rst $00                                       ; $652b: $c7
    ret z                                         ; $652c: $c8

    inc bc                                        ; $652d: $03
    db $ec                                        ; $652e: $ec
    jp nz, Jump_028_5ada                          ; $652f: $c2 $da $5a

    push de                                       ; $6532: $d5
    rst $10                                       ; $6533: $d7
    cp h                                          ; $6534: $bc
    inc hl                                        ; $6535: $23
    inc c                                         ; $6536: $0c
    dec a                                         ; $6537: $3d
    set 1, e                                      ; $6538: $cb $cb
    cpl                                           ; $653a: $2f
    ld l, c                                       ; $653b: $69
    xor a                                         ; $653c: $af
    ld [c], a                                     ; $653d: $e2
    ld h, l                                       ; $653e: $65
    ld b, l                                       ; $653f: $45
    xor l                                         ; $6540: $ad
    cp a                                          ; $6541: $bf
    ld h, $cd                                     ; $6542: $26 $cd
    inc [hl]                                      ; $6544: $34
    add $b5                                       ; $6545: $c6 $b5
    rst $38                                       ; $6547: $ff

jr_028_6548:
    xor c                                         ; $6548: $a9
    dec hl                                        ; $6549: $2b
    ld b, $a7                                     ; $654a: $06 $a7
    cp h                                          ; $654c: $bc
    push af                                       ; $654d: $f5
    ld h, l                                       ; $654e: $65
    pop hl                                        ; $654f: $e1
    dec h                                         ; $6550: $25
    ld [hl], $2f                                  ; $6551: $36 $2f
    ld [$d65d], a                                 ; $6553: $ea $5d $d6
    db $fd                                        ; $6556: $fd
    ld b, $03                                     ; $6557: $06 $03
    ld c, d                                       ; $6559: $4a
    db $e3                                        ; $655a: $e3
    ld e, l                                       ; $655b: $5d
    jr nc, jr_028_651b                            ; $655c: $30 $bd

    jp nc, $a8ac                                  ; $655e: $d2 $ac $a8

    push af                                       ; $6561: $f5
    rst $20                                       ; $6562: $e7
    add hl, sp                                    ; $6563: $39
    ldh a, [$ec]                                  ; $6564: $f0 $ec
    call z, Call_028_7eb5                         ; $6566: $cc $b5 $7e
    add hl, hl                                    ; $6569: $29
    jr jr_028_6548                                ; $656a: $18 $dc

Jump_028_656c:
    jr jr_028_6509                                ; $656c: $18 $9b

    ld d, l                                       ; $656e: $55
    ld b, l                                       ; $656f: $45
    xor c                                         ; $6570: $a9
    ld a, d                                       ; $6571: $7a
    ld e, b                                       ; $6572: $58
    cp h                                          ; $6573: $bc
    push af                                       ; $6574: $f5
    sbc a                                         ; $6575: $9f
    sub a                                         ; $6576: $97
    dec bc                                        ; $6577: $0b
    ld l, b                                       ; $6578: $68
    and a                                         ; $6579: $a7
    inc h                                         ; $657a: $24
    rst $08                                       ; $657b: $cf
    db $dd                                        ; $657c: $dd
    or l                                          ; $657d: $b5
    rst $10                                       ; $657e: $d7
    and h                                         ; $657f: $a4
    add hl, de                                    ; $6580: $19
    ld c, e                                       ; $6581: $4b
    xor d                                         ; $6582: $aa
    ld sp, hl                                     ; $6583: $f9
    jp nz, $8c4b                                  ; $6584: $c2 $4b $8c

    dec sp                                        ; $6587: $3b
    ld c, e                                       ; $6588: $4b
    dec l                                         ; $6589: $2d
    ld e, h                                       ; $658a: $5c
    sub b                                         ; $658b: $90
    sub a                                         ; $658c: $97
    add d                                         ; $658d: $82
    ld a, c                                       ; $658e: $79
    xor [hl]                                      ; $658f: $ae

jr_028_6590:
    db $fd                                        ; $6590: $fd
    inc c                                         ; $6591: $0c
    ld h, c                                       ; $6592: $61
    daa                                           ; $6593: $27
    ccf                                           ; $6594: $3f
    ld [hl], a                                    ; $6595: $77
    sbc [hl]                                      ; $6596: $9e
    adc c                                         ; $6597: $89
    sub $43                                       ; $6598: $d6 $43
    sbc $9a                                       ; $659a: $de $9a
    or d                                          ; $659c: $b2
    ld c, d                                       ; $659d: $4a
    xor c                                         ; $659e: $a9
    and $83                                       ; $659f: $e6 $83
    ld hl, sp-$21                                 ; $65a1: $f8 $df
    reti                                          ; $65a3: $d9


    or l                                          ; $65a4: $b5
    ld h, a                                       ; $65a5: $67
    xor c                                         ; $65a6: $a9
    add l                                         ; $65a7: $85
    and e                                         ; $65a8: $a3
    db $f4                                        ; $65a9: $f4
    ld a, c                                       ; $65aa: $79
    ld a, c                                       ; $65ab: $79
    ld a, c                                       ; $65ac: $79
    add h                                         ; $65ad: $84
    ld bc, $7f3d                                  ; $65ae: $01 $3d $7f
    ld d, b                                       ; $65b1: $50
    jp nc, Jump_000_3644                          ; $65b2: $d2 $44 $36

    rst $38                                       ; $65b5: $ff
    jr jr_028_662f                                ; $65b6: $18 $77

    ld [hl], d                                    ; $65b8: $72
    ld [hl], l                                    ; $65b9: $75
    ld a, h                                       ; $65ba: $7c
    sub d                                         ; $65bb: $92
    ld b, $1a                                     ; $65bc: $06 $1a
    db $e3                                        ; $65be: $e3
    or h                                          ; $65bf: $b4
    sbc l                                         ; $65c0: $9d
    add $d7                                       ; $65c1: $c6 $d7
    ld b, d                                       ; $65c3: $42
    jp c, $8479                                   ; $65c4: $da $79 $84

    ld bc, $b196                                  ; $65c7: $01 $96 $b1
    and h                                         ; $65ca: $a4
    sbc d                                         ; $65cb: $9a
    rst $08                                       ; $65cc: $cf
    res 4, l                                      ; $65cd: $cb $a5
    ld a, [$7ca0]                                 ; $65cf: $fa $a0 $7c
    adc l                                         ; $65d2: $8d
    xor l                                         ; $65d3: $ad
    db $fd                                        ; $65d4: $fd
    pop af                                        ; $65d5: $f1
    cp [hl]                                       ; $65d6: $be
    push af                                       ; $65d7: $f5
    ld h, a                                       ; $65d8: $67
    nop                                           ; $65d9: $00
    db $ed                                        ; $65da: $ed
    jr z, jr_028_663f                             ; $65db: $28 $62

    cp e                                          ; $65dd: $bb
    or $a0                                        ; $65de: $f6 $a0
    db $fc                                        ; $65e0: $fc
    ret c                                         ; $65e1: $d8

    ld h, l                                       ; $65e2: $65
    call c, $1f5d                                 ; $65e3: $dc $5d $1f
    sbc a                                         ; $65e6: $9f
    ld h, $b2                                     ; $65e7: $26 $b2
    ld [hl], l                                    ; $65e9: $75
    inc h                                         ; $65ea: $24
    xor l                                         ; $65eb: $ad
    ccf                                           ; $65ec: $3f
    cp $c7                                        ; $65ed: $fe $c7
    cp a                                          ; $65ef: $bf

Jump_028_65f0:
    db $fc                                        ; $65f0: $fc
    ld a, b                                       ; $65f1: $78
    dec h                                         ; $65f2: $25
    or $72                                        ; $65f3: $f6 $72
    add hl, hl                                    ; $65f5: $29
    sbc b                                         ; $65f6: $98
    sub a                                         ; $65f7: $97
    ld e, a                                       ; $65f8: $5f
    pop de                                        ; $65f9: $d1
    jr jr_028_665d                                ; $65fa: $18 $61

    ld d, c                                       ; $65fc: $51
    pop bc                                        ; $65fd: $c1
    ld b, a                                       ; $65fe: $47
    scf                                           ; $65ff: $37
    jr z, jr_028_6590                             ; $6600: $28 $8e

    jr nc, jr_028_662b                            ; $6602: $30 $27

    ld l, e                                       ; $6604: $6b
    db $d3                                        ; $6605: $d3
    ld a, [hl]                                    ; $6606: $7e
    or h                                          ; $6607: $b4
    and e                                         ; $6608: $a3
    adc l                                         ; $6609: $8d
    adc a                                         ; $660a: $8f
    rst $38                                       ; $660b: $ff
    dec d                                         ; $660c: $15
    or l                                          ; $660d: $b5
    cp $3c                                        ; $660e: $fe $3c
    rst $00                                       ; $6610: $c7
    ld [hl], d                                    ; $6611: $72
    sub b                                         ; $6612: $90
    pop hl                                        ; $6613: $e1
    ld a, e                                       ; $6614: $7b
    cp c                                          ; $6615: $b9
    inc d                                         ; $6616: $14
    ld [hl], h                                    ; $6617: $74
    pop bc                                        ; $6618: $c1
    dec a                                         ; $6619: $3d
    ld a, a                                       ; $661a: $7f
    db $f4                                        ; $661b: $f4
    rst $08                                       ; $661c: $cf
    ld d, $a6                                     ; $661d: $16 $a6
    db $fc                                        ; $661f: $fc
    ld a, [hl-]                                   ; $6620: $3a
    sub d                                         ; $6621: $92
    ld l, c                                       ; $6622: $69
    rst $28                                       ; $6623: $ef
    jp c, $bfe3                                   ; $6624: $da $e3 $bf

    ld h, $bf                                     ; $6627: $26 $bf
    jr nz, jr_028_665a                            ; $6629: $20 $2f

jr_028_662b:
    dec b                                         ; $662b: $05
    di                                            ; $662c: $f3
    ld e, h                                       ; $662d: $5c
    sub l                                         ; $662e: $95

jr_028_662f:
    ld h, h                                       ; $662f: $64
    cp l                                          ; $6630: $bd
    ld d, h                                       ; $6631: $54
    db $fd                                        ; $6632: $fd
    ld c, [hl]                                    ; $6633: $4e
    xor [hl]                                      ; $6634: $ae
    adc [hl]                                      ; $6635: $8e
    ld c, a                                       ; $6636: $4f
    jp nc, Jump_028_6340                          ; $6637: $d2 $40 $63

    ld b, h                                       ; $663a: $44
    db $eb                                        ; $663b: $eb
    ld sp, hl                                     ; $663c: $f9

jr_028_663d:
    dec bc                                        ; $663d: $0b
    dec c                                         ; $663e: $0d

jr_028_663f:
    ld hl, sp-$14                                 ; $663f: $f8 $ec
    dec de                                        ; $6641: $1b
    jr jr_028_663d                                ; $6642: $18 $f9

    and l                                         ; $6644: $a5
    pop af                                        ; $6645: $f1
    pop af                                        ; $6646: $f1
    ld b, l                                       ; $6647: $45
    ld a, l                                       ; $6648: $7d
    ld e, [hl]                                    ; $6649: $5e
    ld l, $ac                                     ; $664a: $2e $ac
    ld a, e                                       ; $664c: $7b
    cp c                                          ; $664d: $b9
    ld sp, $3b21                                  ; $664e: $31 $21 $3b
    push hl                                       ; $6651: $e5
    and l                                         ; $6652: $a5
    ld b, $6b                                     ; $6653: $06 $6b
    pop af                                        ; $6655: $f1
    and h                                         ; $6656: $a4
    rst $18                                       ; $6657: $df
    dec b                                         ; $6658: $05
    add h                                         ; $6659: $84

jr_028_665a:
    ld bc, $67c7                                  ; $665a: $01 $c7 $67

jr_028_665d:
    or d                                          ; $665d: $b2
    ld e, l                                       ; $665e: $5d

jr_028_665f:
    or $8a                                        ; $665f: $f6 $8a
    halt                                          ; $6661: $76
    jp nc, $0d7b                                  ; $6662: $d2 $7b $0d

    ld b, $ae                                     ; $6665: $06 $ae
    ld [c], a                                     ; $6667: $e2
    di                                            ; $6668: $f3
    inc c                                         ; $6669: $0c
    ld d, e                                       ; $666a: $53
    inc h                                         ; $666b: $24
    ld a, c                                       ; $666c: $79
    xor $bc                                       ; $666d: $ee $bc
    and h                                         ; $666f: $a4
    add hl, bc                                    ; $6670: $09
    ld a, [bc]                                    ; $6671: $0a
    sbc d                                         ; $6672: $9a
    and l                                         ; $6673: $a5
    ld h, [hl]                                    ; $6674: $66
    db $fd                                        ; $6675: $fd
    dec d                                         ; $6676: $15
    ld h, l                                       ; $6677: $65
    ld a, e                                       ; $6678: $7b
    ld c, d                                       ; $6679: $4a
    inc de                                        ; $667a: $13
    sub h                                         ; $667b: $94
    add hl, hl                                    ; $667c: $29
    or e                                          ; $667d: $b3
    ld a, $b9                                     ; $667e: $3e $b9
    sub c                                         ; $6680: $91
    add a                                         ; $6681: $87
    reti                                          ; $6682: $d9


    add hl, hl                                    ; $6683: $29
    ld c, e                                       ; $6684: $4b
    ld a, [$0dd1]                                 ; $6685: $fa $d1 $0d
    adc d                                         ; $6688: $8a
    and e                                         ; $6689: $a3
    dec e                                         ; $668a: $1d
    sbc a                                         ; $668b: $9f
    ret                                           ; $668c: $c9


    ld b, [hl]                                    ; $668d: $46
    scf                                           ; $668e: $37
    jr z, jr_028_665f                             ; $668f: $28 $ce

    ld e, l                                       ; $6691: $5d
    xor e                                         ; $6692: $ab
    adc d                                         ; $6693: $8a
    inc [hl]                                      ; $6694: $34
    ld [$c703], sp                                ; $6695: $08 $03 $c7
    ld h, a                                       ; $6698: $67
    or d                                          ; $6699: $b2
    pop de                                        ; $669a: $d1
    dec c                                         ; $669b: $0d
    adc d                                         ; $669c: $8a
    ld [hl], e                                    ; $669d: $73
    ld [hl], a                                    ; $669e: $77
    ld a, d                                       ; $669f: $7a
    ld [de], a                                    ; $66a0: $12
    jp nz, Jump_000_32dd                          ; $66a1: $c2 $dd $32

    db $fc                                        ; $66a4: $fc
    dec h                                         ; $66a5: $25
    and c                                         ; $66a6: $a1

Jump_028_66a7:
    xor l                                         ; $66a7: $ad
    rst $20                                       ; $66a8: $e7
    xor a                                         ; $66a9: $af
    xor b                                         ; $66aa: $a8
    push af                                       ; $66ab: $f5
    rst $20                                       ; $66ac: $e7
    add hl, sp                                    ; $66ad: $39
    sub a                                         ; $66ae: $97
    ld h, [hl]                                    ; $66af: $66
    sbc [hl]                                      ; $66b0: $9e
    or e                                          ; $66b1: $b3
    cpl                                           ; $66b2: $2f
    or c                                          ; $66b3: $b1
    sbc l                                         ; $66b4: $9d
    xor h                                         ; $66b5: $ac
    pop de                                        ; $66b6: $d1
    adc $66                                       ; $66b7: $ce $66
    sub a                                         ; $66b9: $97
    and $e5                                       ; $66ba: $e6 $e5
    rst $10                                       ; $66bc: $d7
    ld b, e                                       ; $66bd: $43
    or d                                          ; $66be: $b2
    ld d, e                                       ; $66bf: $53
    sbc d                                         ; $66c0: $9a
    sbc l                                         ; $66c1: $9d
    sbc [hl]                                      ; $66c2: $9e
    add hl, de                                    ; $66c3: $19
    ld c, [hl]                                    ; $66c4: $4e
    inc bc                                        ; $66c5: $03
    cp l                                          ; $66c6: $bd
    add h                                         ; $66c7: $84
    jr nc, jr_028_6707                            ; $66c8: $30 $3d

    ld a, a                                       ; $66ca: $7f
    ld d, b                                       ; $66cb: $50
    jp nc, Jump_000_3644                          ; $66cc: $d2 $44 $36

    ld [hl], b                                    ; $66cf: $70
    ld l, l                                       ; $66d0: $6d
    ld h, [hl]                                    ; $66d1: $66
    ld a, [hl-]                                   ; $66d2: $3a
    dec hl                                        ; $66d3: $2b
    cpl                                           ; $66d4: $2f
    rst $08                                       ; $66d5: $cf
    ld e, l                                       ; $66d6: $5d
    xor e                                         ; $66d7: $ab
    adc d                                         ; $66d8: $8a
    inc [hl]                                      ; $66d9: $34
    ld l, b                                       ; $66da: $68
    db $eb                                        ; $66db: $eb
    ld d, c                                       ; $66dc: $51
    ld a, [hl]                                    ; $66dd: $7e
    dec a                                         ; $66de: $3d
    inc h                                         ; $66df: $24
    dec sp                                        ; $66e0: $3b
    and l                                         ; $66e1: $a5
    reti                                          ; $66e2: $d9


    jp hl                                         ; $66e3: $e9


    sbc c                                         ; $66e4: $99
    pop hl                                        ; $66e5: $e1
    ld l, $2c                                     ; $66e6: $2e $2c
    ld l, c                                       ; $66e8: $69
    ld e, [hl]                                    ; $66e9: $5e
    ld a, [hl]                                    ; $66ea: $7e
    ld e, [hl]                                    ; $66eb: $5e
    xor [hl]                                      ; $66ec: $ae
    or b                                          ; $66ed: $b0
    reti                                          ; $66ee: $d9


    ld sp, $1053                                  ; $66ef: $31 $53 $10
    ld b, $3d                                     ; $66f2: $06 $3d
    jp z, $afcb                                   ; $66f4: $ca $cb $af

    ld c, c                                       ; $66f7: $49
    inc sp                                        ; $66f8: $33
    sub l                                         ; $66f9: $95
    rst $20                                       ; $66fa: $e7
    xor [hl]                                      ; $66fb: $ae
    ld d, l                                       ; $66fc: $55
    ld b, l                                       ; $66fd: $45
    ld a, [de]                                    ; $66fe: $1a
    or h                                          ; $66ff: $b4
    sbc l                                         ; $6700: $9d
    db $f4                                        ; $6701: $f4
    ld e, [hl]                                    ; $6702: $5e
    add e                                         ; $6703: $83
    dec b                                         ; $6704: $05
    add hl, sp                                    ; $6705: $39
    rst $08                                       ; $6706: $cf

jr_028_6707:
    and l                                         ; $6707: $a5
    sub c                                         ; $6708: $91
    cp c                                          ; $6709: $b9
    or [hl]                                       ; $670a: $b6
    db $e3                                        ; $670b: $e3
    inc hl                                        ; $670c: $23

Jump_028_670d:
    inc c                                         ; $670d: $0c
    db $dd                                        ; $670e: $dd
    ld l, a                                       ; $670f: $6f
    or b                                          ; $6710: $b0
    ld d, $4a                                     ; $6711: $16 $4a
    db $e3                                        ; $6713: $e3
    ld [$9603], sp                                ; $6714: $08 $03 $96
    or l                                          ; $6717: $b5
    rst $18                                       ; $6718: $df
    db $fd                                        ; $6719: $fd
    ld h, l                                       ; $671a: $65
    sub h                                         ; $671b: $94
    cp [hl]                                       ; $671c: $be
    jr nz, jr_028_6796                            ; $671d: $20 $77

    ld l, c                                       ; $671f: $69
    ld e, [hl]                                    ; $6720: $5e
    ld e, [hl]                                    ; $6721: $5e
    ld e, $6d                                     ; $6722: $1e $6d
    ld d, $af                                     ; $6724: $16 $af
    pop bc                                        ; $6726: $c1
    db $ec                                        ; $6727: $ec
    sub h                                         ; $6728: $94
    or $65                                        ; $6729: $f6 $65
    db $ec                                        ; $672b: $ec
    add hl, bc                                    ; $672c: $09
    ld h, c                                       ; $672d: $61
    daa                                           ; $672e: $27
    cp a                                          ; $672f: $bf
    ld c, b                                       ; $6730: $48
    or e                                          ; $6731: $b3
    ld l, [hl]                                    ; $6732: $6e
    ld b, l                                       ; $6733: $45
    ld l, $78                                     ; $6734: $2e $78
    xor b                                         ; $6736: $a8
    ret nz                                        ; $6737: $c0

    ld e, l                                       ; $6738: $5d
    xor e                                         ; $6739: $ab
    adc d                                         ; $673a: $8a
    inc [hl]                                      ; $673b: $34
    ld e, l                                       ; $673c: $5d
    jr nc, jr_028_6766                            ; $673d: $30 $27

    cp a                                          ; $673f: $bf
    ld c, b                                       ; $6740: $48
    or e                                          ; $6741: $b3
    ld l, [hl]                                    ; $6742: $6e
    ld b, l                                       ; $6743: $45
    ld l, $78                                     ; $6744: $2e $78
    xor b                                         ; $6746: $a8
    ret nz                                        ; $6747: $c0

    db $dd                                        ; $6748: $dd
    jp hl                                         ; $6749: $e9


    ld c, c                                       ; $674a: $49
    ld e, l                                       ; $674b: $5d
    halt                                          ; $674c: $76
    ld d, d                                       ; $674d: $52
    ld h, [hl]                                    ; $674e: $66
    sbc l                                         ; $674f: $9d
    dec sp                                        ; $6750: $3b
    cp $6b                                        ; $6751: $fe $6b
    sub $5f                                       ; $6753: $d6 $5f
    sub b                                         ; $6755: $90
    cp [hl]                                       ; $6756: $be
    ld l, [hl]                                    ; $6757: $6e
    ld b, l                                       ; $6758: $45
    ld l, $78                                     ; $6759: $2e $78
    xor b                                         ; $675b: $a8
    or b                                          ; $675c: $b0
    adc [hl]                                      ; $675d: $8e
    ld d, [hl]                                    ; $675e: $56
    ld [hl], l                                    ; $675f: $75
    dec c                                         ; $6760: $0d
    ld e, $10                                     ; $6761: $1e $10
    ld b, $c7                                     ; $6763: $06 $c7
    ld e, d                                       ; $6765: $5a

jr_028_6766:
    sbc a                                         ; $6766: $9f
    and $25                                       ; $6767: $e6 $25
    ld c, l                                       ; $6769: $4d
    ld d, b                                       ; $676a: $50
    ld d, $26                                     ; $676b: $16 $26
    ld hl, sp-$2e                                 ; $676d: $f8 $d2
    sbc [hl]                                      ; $676f: $9e

Jump_028_6770:
    sub a                                         ; $6770: $97
    ld e, a                                       ; $6771: $5f
    ld a, d                                       ; $6772: $7a
    ld a, c                                       ; $6773: $79
    add hl, de                                    ; $6774: $19
    cp b                                          ; $6775: $b8
    ld h, c                                       ; $6776: $61
    ld c, a                                       ; $6777: $4f
    ld c, $53                                     ; $6778: $0e $53
    ld sp, hl                                     ; $677a: $f9
    dec b                                         ; $677b: $05
    ld c, c                                       ; $677c: $49
    rst $08                                       ; $677d: $cf
    dec e                                         ; $677e: $1d
    rst $38                                       ; $677f: $ff

Jump_028_6780:
    xor e                                         ; $6780: $ab
    sub h                                         ; $6781: $94
    ld b, $7e                                     ; $6782: $06 $7e
    ld h, e                                       ; $6784: $63
    ld e, h                                       ; $6785: $5c
    ld d, c                                       ; $6786: $51
    db $eb                                        ; $6787: $eb
    ld c, a                                       ; $6788: $4f
    rla                                           ; $6789: $17
    ld h, h                                       ; $678a: $64
    or d                                          ; $678b: $b2
    ld sp, hl                                     ; $678c: $f9
    dec c                                         ; $678d: $0d
    cp a                                          ; $678e: $bf
    dec bc                                        ; $678f: $0b
    ld b, $ad                                     ; $6790: $06 $ad
    jp c, Jump_000_34e9                           ; $6792: $da $e9 $34

    ld l, e                                       ; $6795: $6b

jr_028_6796:
    call $9978                                    ; $6796: $cd $78 $99
    ld [hl], $c0                                  ; $6799: $36 $c0
    ld e, l                                       ; $679b: $5d
    ret c                                         ; $679c: $d8

    inc l                                         ; $679d: $2c
    ld h, $7d                                     ; $679e: $26 $7d
    ld l, h                                       ; $67a0: $6c
    ld d, $af                                     ; $67a1: $16 $af
    ld a, e                                       ; $67a3: $7b
    db $fc                                        ; $67a4: $fc
    reti                                          ; $67a5: $d9


    ld d, a                                       ; $67a6: $57
    ret nz                                        ; $67a7: $c0

    rst $28                                       ; $67a8: $ef
    inc bc                                        ; $67a9: $03
    jp nz, $8b3d                                  ; $67aa: $c2 $3d $8b

    ld a, [$ae58]                                 ; $67ad: $fa $58 $ae
    ld c, c                                       ; $67b0: $49
    inc sp                                        ; $67b1: $33
    ld e, [hl]                                    ; $67b2: $5e
    ret                                           ; $67b3: $c9


    cp c                                          ; $67b4: $b9
    db $eb                                        ; $67b5: $eb
    cp $6f                                        ; $67b6: $fe $6f
    ld a, l                                       ; $67b8: $7d
    add sp, -$76                                  ; $67b9: $e8 $8a
    ld bc, $e5dd                                  ; $67bb: $01 $dd $e5
    pop hl                                        ; $67be: $e1
    ret                                           ; $67bf: $c9


    add c                                         ; $67c0: $81
    cp e                                          ; $67c1: $bb
    adc [hl]                                      ; $67c2: $8e
    inc a                                         ; $67c3: $3c
    inc a                                         ; $67c4: $3c
    add hl, sp                                    ; $67c5: $39
    ld [hl], b                                    ; $67c6: $70
    rst $10                                       ; $67c7: $d7
    sub c                                         ; $67c8: $91
    add a                                         ; $67c9: $87
    daa                                           ; $67ca: $27
    add a                                         ; $67cb: $87
    ld l, $eb                                     ; $67cc: $2e $eb
    ld d, c                                       ; $67ce: $51
    ld e, $7e                                     ; $67cf: $1e $7e
    ld sp, $0eb3                                  ; $67d1: $31 $b3 $0e
    and e                                         ; $67d4: $a3
    ld e, e                                       ; $67d5: $5b
    dec a                                         ; $67d6: $3d
    jp nz, Jump_028_5fc7                          ; $67d7: $c2 $c7 $5f

    db $eb                                        ; $67da: $eb
    rst $08                                       ; $67db: $cf
    ld c, e                                       ; $67dc: $4b
    jp nz, $adaf                                  ; $67dd: $c2 $af $ad

    ld d, l                                       ; $67e0: $55
    sbc l                                         ; $67e1: $9d
    cp e                                          ; $67e2: $bb
    xor $ff                                       ; $67e3: $ee $ff
    sub $87                                       ; $67e5: $d6 $87
    ld l, $18                                     ; $67e7: $2e $18
    ld d, $9f                                     ; $67e9: $16 $9f
    and l                                         ; $67eb: $a5
    ld h, l                                       ; $67ec: $65
    db $ed                                        ; $67ed: $ed
    ld [hl], a                                    ; $67ee: $77
    ld a, a                                       ; $67ef: $7f
    sbc c                                         ; $67f0: $99
    rst $20                                       ; $67f1: $e7
    add d                                         ; $67f2: $82
    ld l, e                                       ; $67f3: $6b
    db $fd                                        ; $67f4: $fd
    ld a, c                                       ; $67f5: $79
    ld d, c                                       ; $67f6: $51

Call_028_67f7:
    sbc d                                         ; $67f7: $9a
    rst $20                                       ; $67f8: $e7
    db $e4                                        ; $67f9: $e4
    xor e                                         ; $67fa: $ab
    cp a                                          ; $67fb: $bf
    sub $47                                       ; $67fc: $d6 $47
    dec sp                                        ; $67fe: $3b
    jp c, $aef8                                   ; $67ff: $da $f8 $ae

    rst $10                                       ; $6802: $d7
    ld h, b                                       ; $6803: $60
    db $ed                                        ; $6804: $ed
    rlca                                          ; $6805: $07
    ld e, a                                       ; $6806: $5f
    jp c, Jump_000_18d3                           ; $6807: $da $d3 $18

    rst $20                                       ; $680a: $e7
    cp c                                          ; $680b: $b9
    ld [hl], d                                    ; $680c: $72
    reti                                          ; $680d: $d9


    rst $08                                       ; $680e: $cf
    res 4, l                                      ; $680f: $cb $a5
    nop                                           ; $6811: $00
    cp d                                          ; $6812: $ba
    xor h                                         ; $6813: $ac
    ld d, a                                       ; $6814: $57
    sbc d                                         ; $6815: $9a
    ld d, l                                       ; $6816: $55
    ld c, d                                       ; $6817: $4a
    dec hl                                        ; $6818: $2b
    ld l, d                                       ; $6819: $6a
    db $fd                                        ; $681a: $fd
    ld a, c                                       ; $681b: $79
    ld sp, hl                                     ; $681c: $f9
    ld [hl], b                                    ; $681d: $70
    ld l, l                                       ; $681e: $6d
    xor l                                         ; $681f: $ad
    ld [$a108], a                                 ; $6820: $ea $08 $a1
    ld l, e                                       ; $6823: $6b
    xor a                                         ; $6824: $af
    ld c, c                                       ; $6825: $49
    or e                                          ; $6826: $b3
    ld c, d                                       ; $6827: $4a
    ld l, c                                       ; $6828: $69
    or $25                                        ; $6829: $f6 $25
    ld [hl], $2f                                  ; $682b: $36 $2f
    rra                                           ; $682d: $1f
    ld [hl+], a                                   ; $682e: $22
    inc c                                         ; $682f: $0c
    db $dd                                        ; $6830: $dd
    rst $38                                       ; $6831: $ff
    xor l                                         ; $6832: $ad
    rrca                                          ; $6833: $0f
    cp e                                          ; $6834: $bb
    ld b, b                                       ; $6835: $40
    dec [hl]                                      ; $6836: $35
    ld e, a                                       ; $6837: $5f
    sub b                                         ; $6838: $90
    sub a                                         ; $6839: $97
    add d                                         ; $683a: $82
    ld a, c                                       ; $683b: $79
    ld c, [hl]                                    ; $683c: $4e
    call z, Call_028_75a5                         ; $683d: $cc $a5 $75
    dec hl                                        ; $6840: $2b
    ld [hl], d                                    ; $6841: $72
    pop bc                                        ; $6842: $c1
    ld b, e                                       ; $6843: $43
    add l                                         ; $6844: $85
    reti                                          ; $6845: $d9


    add hl, hl                                    ; $6846: $29
    dec bc                                        ; $6847: $0b
    rra                                           ; $6848: $1f
    call $0b52                                    ; $6849: $cd $52 $0b
    rla                                           ; $684c: $17
    db $e4                                        ; $684d: $e4
    and l                                         ; $684e: $a5
    ld h, b                                       ; $684f: $60
    sbc [hl]                                      ; $6850: $9e
    dec bc                                        ; $6851: $0b
    ld [hl], d                                    ; $6852: $72
    or $25                                        ; $6853: $f6 $25
    or [hl]                                       ; $6855: $b6
    or b                                          ; $6856: $b0
    ld e, c                                       ; $6857: $59
    ld [hl], b                                    ; $6858: $70
    ld l, l                                       ; $6859: $6d
    add a                                         ; $685a: $87
    ld l, $18                                     ; $685b: $2e $18
    cp l                                          ; $685d: $bd
    jp nc, $a8ac                                  ; $685e: $d2 $ac $a8

    push af                                       ; $6861: $f5
    and a                                         ; $6862: $a7
    ld l, e                                       ; $6863: $6b
    rst $18                                       ; $6864: $df
    add b                                         ; $6865: $80
    cp e                                          ; $6866: $bb
    rrca                                          ; $6867: $0f
    dec sp                                        ; $6868: $3b
    sbc $0c                                       ; $6869: $de $0c
    xor d                                         ; $686b: $aa
    sub d                                         ; $686c: $92
    add hl, de                                    ; $686d: $19
    rst $20                                       ; $686e: $e7
    cp c                                          ; $686f: $b9
    sbc b                                         ; $6870: $98

jr_028_6871:
    ld e, c                                       ; $6871: $59
    sbc a                                         ; $6872: $9f
    sbc l                                         ; $6873: $9d
    ld [hl-], a                                   ; $6874: $32
    cpl                                           ; $6875: $2f
    rra                                           ; $6876: $1f
    xor $12                                       ; $6877: $ee $12
    sbc d                                         ; $6879: $9a
    and l                                         ; $687a: $a5
    ld d, $e3                                     ; $687b: $16 $e3
    ret nz                                        ; $687d: $c0

    or l                                          ; $687e: $b5
    ld e, c                                       ; $687f: $59
    ld a, c                                       ; $6880: $79
    ld sp, hl                                     ; $6881: $f9
    ld a, c                                       ; $6882: $79
    ld l, $d4                                     ; $6883: $2e $d4
    ld a, [$8c0f]                                 ; $6885: $fa $0f $8c

jr_028_6888:
    db $fc                                        ; $6888: $fc
    jp z, $e58f                                   ; $6889: $ca $8f $e5

    inc bc                                        ; $688c: $03
    push de                                       ; $688d: $d5
    ld a, h                                       ; $688e: $7c
    xor [hl]                                      ; $688f: $ae
    push af                                       ; $6890: $f5
    sbc a                                         ; $6891: $9f
    ld d, d                                       ; $6892: $52
    db $e3                                        ; $6893: $e3
    push hl                                       ; $6894: $e5
    ld d, d                                       ; $6895: $52
    or b                                          ; $6896: $b0
    adc a                                         ; $6897: $8f
    ldh a, [$08]                                  ; $6898: $f0 $08
    inc bc                                        ; $689a: $03
    xor l                                         ; $689b: $ad
    ld h, c                                       ; $689c: $61
    ret z                                         ; $689d: $c8

    sbc l                                         ; $689e: $9d
    sub a                                         ; $689f: $97
    sub a                                         ; $68a0: $97
    xor a                                         ; $68a1: $af
    pop bc                                        ; $68a2: $c1
    ld [hl], h                                    ; $68a3: $74
    sub h                                         ; $68a4: $94
    cp $2b                                        ; $68a5: $fe $2b
    cpl                                           ; $68a7: $2f
    adc a                                         ; $68a8: $8f
    jr nc, jr_028_6888                            ; $68a9: $30 $dd

    call nc, Call_000_32ab                        ; $68ab: $d4 $ab $32
    db $d3                                        ; $68ae: $d3
    ld e, c                                       ; $68af: $59
    jp nc, $349a                                  ; $68b0: $d2 $9a $34

    ld [hl-], a                                   ; $68b3: $32
    ld a, c                                       ; $68b4: $79
    ld h, l                                       ; $68b5: $65

jr_028_68b6:
    sub a                                         ; $68b6: $97
    add d                                         ; $68b7: $82
    or l                                          ; $68b8: $b5
    rst $18                                       ; $68b9: $df
    ld c, [hl]                                    ; $68ba: $4e
    ld sp, hl                                     ; $68bb: $f9
    dec [hl]                                      ; $68bc: $35
    ld l, c                                       ; $68bd: $69
    ld d, $5f                                     ; $68be: $16 $5f
    xor l                                         ; $68c0: $ad
    adc a                                         ; $68c1: $8f
    jr nc, jr_028_6871                            ; $68c2: $30 $ad

    ld c, d                                       ; $68c4: $4a
    inc c                                         ; $68c5: $0c
    ld [hl-], a                                   ; $68c6: $32
    db $fc                                        ; $68c7: $fc
    ld [hl], l                                    ; $68c8: $75
    rst $08                                       ; $68c9: $cf
    add sp, $2f                                   ; $68ca: $e8 $2f
    pop bc                                        ; $68cc: $c1
    ld e, a                                       ; $68cd: $5f
    ldh a, [$b5]                                  ; $68ce: $f0 $b5
    ld l, b                                       ; $68d0: $68
    inc bc                                        ; $68d1: $03
    dec sp                                        ; $68d2: $3b
    ld a, b                                       ; $68d3: $78
    ld d, $d8                                     ; $68d4: $16 $d8
    ld d, c                                       ; $68d6: $51
    dec sp                                        ; $68d7: $3b
    ret                                           ; $68d8: $c9


    ld d, h                                       ; $68d9: $54
    push af                                       ; $68da: $f5
    ld h, [hl]                                    ; $68db: $66
    and a                                         ; $68dc: $a7
    sbc b                                         ; $68dd: $98
    or b                                          ; $68de: $b0
    db $fd                                        ; $68df: $fd
    add d                                         ; $68e0: $82
    jr nc, @-$37                                  ; $68e1: $30 $c7

    ret                                           ; $68e3: $c9


    rst $38                                       ; $68e4: $ff
    cp d                                          ; $68e5: $ba
    dec d                                         ; $68e6: $15
    cp c                                          ; $68e7: $b9
    ldh [$a1], a                                  ; $68e8: $e0 $a1
    jp nz, Jump_028_6b82                          ; $68ea: $c2 $82 $6b

    ei                                            ; $68ed: $fb
    ld a, l                                       ; $68ee: $7d
    ld b, b                                       ; $68ef: $40
    ld l, e                                       ; $68f0: $6b
    pop af                                        ; $68f1: $f1
    dec de                                        ; $68f2: $1b
    db $e3                                        ; $68f3: $e3
    ld a, b                                       ; $68f4: $78
    pop de                                        ; $68f5: $d1
    ld c, [hl]                                    ; $68f6: $4e
    rst $20                                       ; $68f7: $e7
    add hl, de                                    ; $68f8: $19
    ld e, d                                       ; $68f9: $5a
    set 7, a                                      ; $68fa: $cb $ff
    cp d                                          ; $68fc: $ba
    rst $38                                       ; $68fd: $ff
    ld e, e                                       ; $68fe: $5b
    rra                                           ; $68ff: $1f
    ld h, [hl]                                    ; $6900: $66
    and a                                         ; $6901: $a7
    adc h                                         ; $6902: $8c
    cp l                                          ; $6903: $bd
    db $eb                                        ; $6904: $eb
    adc l                                         ; $6905: $8d
    add b                                         ; $6906: $80
    jr nc, jr_028_68b6                            ; $6907: $30 $ad

    ld l, d                                       ; $6909: $6a
    db $fd                                        ; $690a: $fd
    dec [hl]                                      ; $690b: $35
    ld l, c                                       ; $690c: $69
    ld b, $ff                                     ; $690d: $06 $ff
    or h                                          ; $690f: $b4
    xor $ff                                       ; $6910: $ee $ff
    sub $87                                       ; $6912: $d6 $87
    xor [hl]                                      ; $6914: $ae
    ld l, e                                       ; $6915: $6b
    db $fd                                        ; $6916: $fd
    add c                                         ; $6917: $81
    ld h, a                                       ; $6918: $67
    db $fc                                        ; $6919: $fc
    add l                                         ; $691a: $85
    call Call_000_15ba                            ; $691b: $cd $ba $15
    cp c                                          ; $691e: $b9
    ldh [$a1], a                                  ; $691f: $e0 $a1
    jp nz, Jump_028_6b82                          ; $6921: $c2 $82 $6b

    dec sp                                        ; $6924: $3b
    jr nz, jr_028_6933                            ; $6925: $20 $0c

    sub [hl]                                      ; $6927: $96
    dec d                                         ; $6928: $15
    or l                                          ; $6929: $b5
    ld a, $d5                                     ; $692a: $3e $d5
    ld a, h                                       ; $692c: $7c
    ldh a, [rVBK]                                 ; $692d: $f0 $4f
    dec hl                                        ; $692f: $2b
    scf                                           ; $6930: $37
    ld b, h                                       ; $6931: $44
    or e                                          ; $6932: $b3

jr_028_6933:
    xor h                                         ; $6933: $ac
    ld c, [hl]                                    ; $6934: $4e
    ret                                           ; $6935: $c9


    xor a                                         ; $6936: $af
    db $fc                                        ; $6937: $fc
    ld [c], a                                     ; $6938: $e2
    xor l                                         ; $6939: $ad
    ccf                                           ; $693a: $3f
    call z, $e573                                 ; $693b: $cc $73 $e5
    or d                                          ; $693e: $b2

jr_028_693f:
    sbc a                                         ; $693f: $9f
    sub a                                         ; $6940: $97
    ld c, e                                       ; $6941: $4b
    ld bc, $fdac                                  ; $6942: $01 $ac $fd
    push hl                                       ; $6945: $e5
    ld [de], a                                    ; $6946: $12
    ld e, e                                       ; $6947: $5b
    call z, $feaa                                 ; $6948: $cc $aa $fe
    ld l, h                                       ; $694b: $6c
    inc l                                         ; $694c: $2c
    ld d, e                                       ; $694d: $53
    add b                                         ; $694e: $80
    dec sp                                        ; $694f: $3b
    cpl                                           ; $6950: $2f
    ld l, c                                       ; $6951: $69
    add d                                         ; $6952: $82
    add d                                         ; $6953: $82
    jr nc, @-$68                                  ; $6954: $30 $96

    dec d                                         ; $6956: $15
    or l                                          ; $6957: $b5
    ld a, $d5                                     ; $6958: $3e $d5
    ld a, h                                       ; $695a: $7c
    ldh a, [rVBK]                                 ; $695b: $f0 $4f
    dec hl                                        ; $695d: $2b
    scf                                           ; $695e: $37
    ld b, h                                       ; $695f: $44
    jr jr_028_693f                                ; $6960: $18 $dd

    rst $38                                       ; $6962: $ff
    xor l                                         ; $6963: $ad
    rrca                                          ; $6964: $0f
    ld e, l                                       ; $6965: $5d
    sub $7a                                       ; $6966: $d6 $7a
    ld h, c                                       ; $6968: $61
    push af                                       ; $6969: $f5
    ld c, e                                       ; $696a: $4b
    ld l, h                                       ; $696b: $6c
    pop bc                                        ; $696c: $c1
    or l                                          ; $696d: $b5
    cp $8a                                        ; $696e: $fe $8a
    ld a, [de]                                    ; $6970: $1a
    ld a, [c]                                     ; $6971: $f2
    ld c, e                                       ; $6972: $4b
    pop bc                                        ; $6973: $c1
    ld [hl], h                                    ; $6974: $74
    ld l, l                                       ; $6975: $6d

Call_028_6976:
    ld h, l                                       ; $6976: $65
    inc hl                                        ; $6977: $23
    dec c                                         ; $6978: $0d
    rra                                           ; $6979: $1f
    call $a2b2                                    ; $697a: $cd $b2 $a2
    sub $a7                                       ; $697d: $d6 $a7
    sbc d                                         ; $697f: $9a
    rrca                                          ; $6980: $0f
    cp $69                                        ; $6981: $fe $69
    push hl                                       ; $6983: $e5
    add [hl]                                      ; $6984: $86
    adc e                                         ; $6985: $8b
    ld [$1b1f], a                                 ; $6986: $ea $1f $1b
    xor $bc                                       ; $6989: $ee $bc
    and h                                         ; $698b: $a4
    add hl, bc                                    ; $698c: $09
    ld a, [bc]                                    ; $698d: $0a
    jp nz, Jump_000_1596                          ; $698e: $c2 $96 $15

    or l                                          ; $6991: $b5
    ld a, $d5                                     ; $6992: $3e $d5
    ld a, h                                       ; $6994: $7c
    ldh a, [rVBK]                                 ; $6995: $f0 $4f
    dec hl                                        ; $6997: $2b
    scf                                           ; $6998: $37
    ld e, h                                       ; $6999: $5c
    jp z, $349a                                   ; $699a: $ca $9a $34

    or d                                          ; $699d: $b2
    adc [hl]                                      ; $699e: $8e
    ld d, [hl]                                    ; $699f: $56
    ld [hl], l                                    ; $69a0: $75
    dec c                                         ; $69a1: $0d
    ld e, $cd                                     ; $69a2: $1e $cd
    or d                                          ; $69a4: $b2
    sub d                                         ; $69a5: $92
    sbc l                                         ; $69a6: $9d
    sbc a                                         ; $69a7: $9f
    sub a                                         ; $69a8: $97
    sub a                                         ; $69a9: $97
    rra                                           ; $69aa: $1f
    xor a                                         ; $69ab: $af
    ld b, b                                       ; $69ac: $40
    dec [hl]                                      ; $69ad: $35
    sbc a                                         ; $69ae: $9f
    ld d, d                                       ; $69af: $52
    db $e3                                        ; $69b0: $e3
    push hl                                       ; $69b1: $e5
    ld d, d                                       ; $69b2: $52
    or b                                          ; $69b3: $b0
    jr nz, @-$6b                                  ; $69b4: $20 $93

    call $af73                                    ; $69b6: $cd $73 $af
    cp [hl]                                       ; $69b9: $be
    ld c, e                                       ; $69ba: $4b
    cp e                                          ; $69bb: $bb
    adc [hl]                                      ; $69bc: $8e
    jr nc, @-$68                                  ; $69bd: $30 $96

    pop af                                        ; $69bf: $f1
    ld c, c                                       ; $69c0: $49
    db $ec                                        ; $69c1: $ec
    push hl                                       ; $69c2: $e5
    reti                                          ; $69c3: $d9


    ld hl, sp-$5e                                 ; $69c4: $f8 $a2
    ld a, $2f                                     ; $69c6: $3e $2f
    ld [$68eb], a                                 ; $69c8: $ea $eb $68
    ld d, l                                       ; $69cb: $55
    rst $10                                       ; $69cc: $d7
    ldh [$57], a                                  ; $69cd: $e0 $57
    ld a, [hl]                                    ; $69cf: $7e
    ld b, l                                       ; $69d0: $45
    reti                                          ; $69d1: $d9


    ld a, b                                       ; $69d2: $78
    dec b                                         ; $69d3: $05
    add h                                         ; $69d4: $84
    ld bc, $7f3d                                  ; $69d5: $01 $3d $7f
    and b                                         ; $69d8: $a0
    db $fc                                        ; $69d9: $fc
    jp z, Jump_028_670d                           ; $69da: $ca $0d $67

    rst $00                                       ; $69dd: $c7
    ld d, h                                       ; $69de: $54
    sbc a                                         ; $69df: $9f
    rla                                           ; $69e0: $17
    ld c, c                                       ; $69e1: $49
    inc de                                        ; $69e2: $13
    sub h                                         ; $69e3: $94
    ld a, c                                       ; $69e4: $79
    ld sp, hl                                     ; $69e5: $f9
    push bc                                       ; $69e6: $c5
    xor h                                         ; $69e7: $ac
    ld [$c6cf], a                                 ; $69e8: $ea $cf $c6
    ld [hl-], a                                   ; $69eb: $32
    ld h, l                                       ; $69ec: $65
    ld e, d                                       ; $69ed: $5a
    ld c, c                                       ; $69ee: $49
    ld [bc], a                                    ; $69ef: $02
    call z, $0c96                                 ; $69f0: $cc $96 $0c
    rst $20                                       ; $69f3: $e7
    push hl                                       ; $69f4: $e5
    ld [hl], a                                    ; $69f5: $77
    inc d                                         ; $69f6: $14
    ld d, l                                       ; $69f7: $55
    rst $30                                       ; $69f8: $f7
    ret                                           ; $69f9: $c9


jr_028_69fa:
    ld [hl], a                                    ; $69fa: $77
    cp d                                          ; $69fb: $ba
    and c                                         ; $69fc: $a1
    add a                                         ; $69fd: $87
    ld d, l                                       ; $69fe: $55
    ld d, c                                       ; $69ff: $51
    ld bc, $3324                                  ; $6a00: $01 $24 $33
    ld b, h                                       ; $6a03: $44
    jr @-$68                                      ; $6a04: $18 $96

    add c                                         ; $6a06: $81
    ld a, [c]                                     ; $6a07: $f2
    dec hl                                        ; $6a08: $2b
    scf                                           ; $6a09: $37
    ld e, h                                       ; $6a0a: $5c
    sub l                                         ; $6a0b: $95
    pop hl                                        ; $6a0c: $e1
    and l                                         ; $6a0d: $a5
    ld h, b                                       ; $6a0e: $60
    inc l                                         ; $6a0f: $2c
    ld a, c                                       ; $6a10: $79
    sbc d                                         ; $6a11: $9a
    dec l                                         ; $6a12: $2d
    add hl, de                                    ; $6a13: $19
    adc $cb                                       ; $6a14: $ce $cb
    rrca                                          ; $6a16: $0f
    ld l, $07                                     ; $6a17: $2e $07
    cpl                                           ; $6a19: $2f
    or e                                          ; $6a1a: $b3
    ld h, e                                       ; $6a1b: $63
    and [hl]                                      ; $6a1c: $a6
    ld [hl], b                                    ; $6a1d: $70
    rst $10                                       ; $6a1e: $d7
    ld [hl], $be                                  ; $6a1f: $36 $be
    ld a, [c]                                     ; $6a21: $f2
    db $e3                                        ; $6a22: $e3
    dec d                                         ; $6a23: $15
    xor b                                         ; $6a24: $a8
    and $ab                                       ; $6a25: $e6 $ab
    ld d, h                                       ; $6a27: $54
    and h                                         ; $6a28: $a4
    cp c                                          ; $6a29: $b9
    inc d                                         ; $6a2a: $14
    ld c, h                                       ; $6a2b: $4c
    xor c                                         ; $6a2c: $a9
    pop af                                        ; $6a2d: $f1
    ld [hl], d                                    ; $6a2e: $72
    add hl, hl                                    ; $6a2f: $29
    ld b, b                                       ; $6a30: $40
    jr jr_028_69fa                                ; $6a31: $18 $c7

    and a                                         ; $6a33: $a7
    ld d, a                                       ; $6a34: $57
    ld b, l                                       ; $6a35: $45
    cp e                                          ; $6a36: $bb
    xor h                                         ; $6a37: $ac
    ld d, a                                       ; $6a38: $57
    sbc d                                         ; $6a39: $9a
    sbc d                                         ; $6a3a: $9a
    db $fc                                        ; $6a3b: $fc
    ld [hl], h                                    ; $6a3c: $74
    rst $00                                       ; $6a3d: $c7
    ld c, e                                       ; $6a3e: $4b
    ld h, e                                       ; $6a3f: $63
    db $db                                        ; $6a40: $db
    sub a                                         ; $6a41: $97
    ld e, b                                       ; $6a42: $58
    ld a, [bc]                                    ; $6a43: $0a
    ld b, d                                       ; $6a44: $42
    ld [$fc72], sp                                ; $6a45: $08 $72 $fc
    rst $10                                       ; $6a48: $d7
    db $e4                                        ; $6a49: $e4
    sub a                                         ; $6a4a: $97
    or [hl]                                       ; $6a4b: $b6
    dec a                                         ; $6a4c: $3d
    rst $08                                       ; $6a4d: $cf
    ld [hl], l                                    ; $6a4e: $75
    sub a                                         ; $6a4f: $97
    or h                                          ; $6a50: $b4
    rra                                           ; $6a51: $1f
    jr nz, jr_028_6ab9                            ; $6a52: $20 $65

    daa                                           ; $6a54: $27
    ld d, a                                       ; $6a55: $57
    rst $00                                       ; $6a56: $c7
    daa                                           ; $6a57: $27
    ld l, c                                       ; $6a58: $69

Call_028_6a59:
    and b                                         ; $6a59: $a0
    ld sp, $0c22                                  ; $6a5a: $31 $22 $0c
    rst $00                                       ; $6a5d: $c7
    sub d                                         ; $6a5e: $92
    cp a                                          ; $6a5f: $bf
    ld e, h                                       ; $6a60: $5c
    ld a, [bc]                                    ; $6a61: $0a
    halt                                          ; $6a62: $76
    or d                                          ; $6a63: $b2
    and b                                         ; $6a64: $a0
    dec e                                         ; $6a65: $1d
    ld [hl], a                                    ; $6a66: $77
    ld h, e                                       ; $6a67: $63
    ld d, l                                       ; $6a68: $55
    ld l, d                                       ; $6a69: $6a
    jr nc, @-$0e                                  ; $6a6a: $30 $f0

    sub h                                         ; $6a6c: $94
    sub a                                         ; $6a6d: $97
    call z, Call_000_1770                         ; $6a6e: $cc $70 $17
    and [hl]                                      ; $6a71: $a6
    add e                                         ; $6a72: $83
    sub a                                         ; $6a73: $97
    sbc e                                         ; $6a74: $9b
    ld b, $16                                     ; $6a75: $06 $16
    xor d                                         ; $6a77: $aa
    ei                                            ; $6a78: $fb
    dec bc                                        ; $6a79: $0b
    ld [hl], a                                    ; $6a7a: $77
    xor l                                         ; $6a7b: $ad
    ld a, [hl+]                                   ; $6a7c: $2a
    jp nc, $0c20                                  ; $6a7d: $d2 $20 $0c

    ld b, a                                       ; $6a80: $47
    dec de                                        ; $6a81: $1b
    ld e, a                                       ; $6a82: $5f
    ld [hl], a                                    ; $6a83: $77
    ld c, c                                       ; $6a84: $49
    ei                                            ; $6a85: $fb
    ld bc, $7652                                  ; $6a86: $01 $52 $76
    ld [hl], d                                    ; $6a89: $72
    ld [hl], l                                    ; $6a8a: $75
    ld a, h                                       ; $6a8b: $7c
    sub d                                         ; $6a8c: $92
    ld b, $1a                                     ; $6a8d: $06 $1a
    inc hl                                        ; $6a8f: $23
    ld b, d                                       ; $6a90: $42
    ld [$a703], sp                                ; $6a91: $08 $03 $a7
    db $e4                                        ; $6a94: $e4
    sbc [hl]                                      ; $6a95: $9e
    ld b, e                                       ; $6a96: $43
    ld h, l                                       ; $6a97: $65
    ldh [$a1], a                                  ; $6a98: $e0 $a1
    bit 3, d                                      ; $6a9a: $cb $5a
    ld l, $55                                     ; $6a9c: $2e $55
    cp a                                          ; $6a9e: $bf
    db $eb                                        ; $6a9f: $eb
    dec [hl]                                      ; $6aa0: $35
    ld e, b                                       ; $6aa1: $58
    or a                                          ; $6aa2: $b7
    ld [hl+], a                                   ; $6aa3: $22
    rla                                           ; $6aa4: $17
    inc a                                         ; $6aa5: $3c
    ld d, h                                       ; $6aa6: $54
    ldh [$ce], a                                  ; $6aa7: $e0 $ce
    ld d, d                                       ; $6aa9: $52
    adc e                                         ; $6aaa: $8b
    ld [hl], c                                    ; $6aab: $71

Call_028_6aac:
    db $ec                                        ; $6aac: $ec

Jump_028_6aad:
    sbc c                                         ; $6aad: $99
    xor c                                         ; $6aae: $a9
    ld a, h                                       ; $6aaf: $7c
    ld c, c                                       ; $6ab0: $49
    or c                                          ; $6ab1: $b1
    ld e, c                                       ; $6ab2: $59
    ld a, a                                       ; $6ab3: $7f
    dec hl                                        ; $6ab4: $2b
    ld l, c                                       ; $6ab5: $69
    ldh [$d7], a                                  ; $6ab6: $e0 $d7
    ret                                           ; $6ab8: $c9


jr_028_6ab9:
    ld c, e                                       ; $6ab9: $4b
    ld a, $5b                                     ; $6aba: $3e $5b
    ld [hl-], a                                   ; $6abc: $32
    call c, $d2f1                                 ; $6abd: $dc $f1 $d2
    ret c                                         ; $6ac0: $d8

    or $25                                        ; $6ac1: $f6 $25
    sub [hl]                                      ; $6ac3: $96
    add d                                         ; $6ac4: $82
    halt                                          ; $6ac5: $76
    ld c, d                                       ; $6ac6: $4a
    ld a, [c]                                     ; $6ac7: $f2
    ld l, e                                       ; $6ac8: $6b
    rst $38                                       ; $6ac9: $ff
    sub d                                         ; $6aca: $92
    sub $a4                                       ; $6acb: $d6 $a4
    sub c                                         ; $6acd: $91
    pop af                                        ; $6ace: $f1
    jp c, $c174                                   ; $6acf: $da $74 $c1

jr_028_6ad2:
    ld b, a                                       ; $6ad2: $47
    ld de, $b81b                                  ; $6ad3: $11 $1b $b8
    ld [hl], $4b                                  ; $6ad6: $36 $4b
    db $e3                                        ; $6ad8: $e3
    ld c, e                                       ; $6ad9: $4b
    ld a, e                                       ; $6ada: $7b
    ld a, h                                       ; $6adb: $7c
    ld a, c                                       ; $6adc: $79
    ld sp, hl                                     ; $6add: $f9
    dec [hl]                                      ; $6ade: $35
    ld l, c                                       ; $6adf: $69
    add $92                                       ; $6ae0: $c6 $92
    ld l, d                                       ; $6ae2: $6a
    cp [hl]                                       ; $6ae3: $be
    or $c7                                        ; $6ae4: $f6 $c7
    and h                                         ; $6ae6: $a4
    and b                                         ; $6ae7: $a0
    dec bc                                        ; $6ae8: $0b
    ld b, $c7                                     ; $6ae9: $06 $c7
    ld e, h                                       ; $6aeb: $5c
    or [hl]                                       ; $6aec: $b6
    ld h, $cd                                     ; $6aed: $26 $cd
    db $ec                                        ; $6aef: $ec
    ld c, e                                       ; $6af0: $4b
    ld l, h                                       ; $6af1: $6c
    ld c, l                                       ; $6af2: $4d
    ld a, [de]                                    ; $6af3: $1a
    ld e, c                                       ; $6af4: $59
    ld [hl], b                                    ; $6af5: $70
    ld l, l                                       ; $6af6: $6d
    rlca                                          ; $6af7: $07
    xor $5a                                       ; $6af8: $ee $5a
    ld d, l                                       ; $6afa: $55
    and h                                         ; $6afb: $a4
    jp hl                                         ; $6afc: $e9


    adc d                                         ; $6afd: $8a
    ld bc, $24a7                                  ; $6afe: $01 $a7 $24
    jp nz, $3f3d                                  ; $6b01: $c2 $3d $3f

    ld b, [hl]                                    ; $6b04: $46
    xor $5c                                       ; $6b05: $ee $5c
    sbc d                                         ; $6b07: $9a
    ld l, c                                       ; $6b08: $69
    and b                                         ; $6b09: $a0
    sub a                                         ; $6b0a: $97
    ret nc                                        ; $6b0b: $d0

    inc l                                         ; $6b0c: $2c
    or l                                          ; $6b0d: $b5
    ld [hl], b                                    ; $6b0e: $70
    sub h                                         ; $6b0f: $94
    cp [hl]                                       ; $6b10: $be
    jr nz, jr_028_6b42                            ; $6b11: $20 $2f

    dec b                                         ; $6b13: $05
    di                                            ; $6b14: $f3
    ld e, h                                       ; $6b15: $5c
    halt                                          ; $6b16: $76
    sbc [hl]                                      ; $6b17: $9e
    ld d, $5e                                     ; $6b18: $16 $5e
    ld a, [$f219]                                 ; $6b1a: $fa $19 $f2
    dec de                                        ; $6b1d: $1b
    rst $10                                       ; $6b1e: $d7
    and h                                         ; $6b1f: $a4
    ld e, c                                       ; $6b20: $59
    and l                                         ; $6b21: $a5
    or h                                          ; $6b22: $b4
    db $ec                                        ; $6b23: $ec
    inc a                                         ; $6b24: $3c
    xor l                                         ; $6b25: $ad
    ld c, c                                       ; $6b26: $49
    inc hl                                        ; $6b27: $23
    add b                                         ; $6b28: $80
    jr nc, jr_028_6ad2                            ; $6b29: $30 $a7

    daa                                           ; $6b2b: $27
    ld [hl], l                                    ; $6b2c: $75
    sbc c                                         ; $6b2d: $99
    ld h, l                                       ; $6b2e: $65
    ld b, c                                       ; $6b2f: $41
    ld a, [$66c2]                                 ; $6b30: $fa $c2 $66
    dec e                                         ; $6b33: $1d
    ld a, c                                       ; $6b34: $79
    ld a, b                                       ; $6b35: $78
    ld [hl], d                                    ; $6b36: $72
    ld e, b                                       ; $6b37: $58
    ld e, e                                       ; $6b38: $5b
    xor e                                         ; $6b39: $ab
    ld a, d                                       ; $6b3a: $7a
    rla                                           ; $6b3b: $17
    inc c                                         ; $6b3c: $0c
    rst $00                                       ; $6b3d: $c7
    res 5, e                                      ; $6b3e: $cb $ab
    ld [hl], a                                    ; $6b40: $77
    reti                                          ; $6b41: $d9


jr_028_6b42:
    ld c, c                                       ; $6b42: $49
    rst $28                                       ; $6b43: $ef
    dec [hl]                                      ; $6b44: $35
    ld e, b                                       ; $6b45: $58
    halt                                          ; $6b46: $76
    sbc [hl]                                      ; $6b47: $9e
    and $e5                                       ; $6b48: $e6 $e5
    ld b, e                                       ; $6b4a: $43
    add h                                         ; $6b4b: $84
    ld bc, $723d                                  ; $6b4c: $01 $3d $72
    xor l                                         ; $6b4f: $ad
    ld a, [hl+]                                   ; $6b50: $2a
    jp nc, Jump_028_6770                          ; $6b51: $d2 $70 $67

    ld c, e                                       ; $6b54: $4b
    add [hl]                                      ; $6b55: $86
    ld l, e                                       ; $6b56: $6b
    push de                                       ; $6b57: $d5
    ld b, b                                       ; $6b58: $40
    ld l, $43                                     ; $6b59: $2e $43
    jr jr_028_6ba4                                ; $6b5b: $18 $47

    adc l                                         ; $6b5d: $8d
    rst $08                                       ; $6b5e: $cf
    ld h, h                                       ; $6b5f: $64
    ld c, a                                       ; $6b60: $4f
    or e                                          ; $6b61: $b3
    and e                                         ; $6b62: $a3
    pop af                                        ; $6b63: $f1
    rst $28                                       ; $6b64: $ef
    ld [hl-], a                                   ; $6b65: $32
    adc e                                         ; $6b66: $8b
    cpl                                           ; $6b67: $2f
    ld h, [hl]                                    ; $6b68: $66
    sub $61                                       ; $6b69: $d6 $61
    pop af                                        ; $6b6b: $f1
    sub $7f                                       ; $6b6c: $d6 $7f
    push hl                                       ; $6b6e: $e5
    ld d, a                                       ; $6b6f: $57
    xor c                                         ; $6b70: $a9
    ld e, b                                       ; $6b71: $58
    sbc a                                         ; $6b72: $9f
    db $ed                                        ; $6b73: $ed
    ld a, [$0dca]                                 ; $6b74: $fa $ca $0d

jr_028_6b77:
    pop hl                                        ; $6b77: $e1
    and e                                         ; $6b78: $a3
    adc l                                         ; $6b79: $8d
    jr nc, jr_028_6ba9                            ; $6b7a: $30 $2d

    ld l, c                                       ; $6b7c: $69
    adc b                                         ; $6b7d: $88
    pop bc                                        ; $6b7e: $c1
    ld [hl], h                                    ; $6b7f: $74
    pop af                                        ; $6b80: $f1
    cp d                                          ; $6b81: $ba

Jump_028_6b82:
    rst $00                                       ; $6b82: $c7
    ld e, a                                       ; $6b83: $5f
    cp h                                          ; $6b84: $bc
    push af                                       ; $6b85: $f5
    sbc a                                         ; $6b86: $9f
    jp nc, $8f92                                  ; $6b87: $d2 $92 $8f

    ld [$6703], sp                                ; $6b8a: $08 $03 $67
    sub h                                         ; $6b8d: $94
    ld h, l                                       ; $6b8e: $65
    pop hl                                        ; $6b8f: $e1
    ld c, [hl]                                    ; $6b90: $4e
    add hl, hl                                    ; $6b91: $29
    cp l                                          ; $6b92: $bd
    cp h                                          ; $6b93: $bc
    inc l                                         ; $6b94: $2c
    ld d, h                                       ; $6b95: $54
    ret                                           ; $6b96: $c9


    and h                                         ; $6b97: $a4
    ld bc, $eaff                                  ; $6b98: $01 $ff $ea
    cpl                                           ; $6b9b: $2f
    ld l, b                                       ; $6b9c: $68
    sub [hl]                                      ; $6b9d: $96
    dec d                                         ; $6b9e: $15
    push af                                       ; $6b9f: $f5
    ld e, a                                       ; $6ba0: $5f
    xor b                                         ; $6ba1: $a8
    sub d                                         ; $6ba2: $92
    ld c, c                                       ; $6ba3: $49

jr_028_6ba4:
    ld [$ad03], sp                                ; $6ba4: $08 $03 $ad
    cpl                                           ; $6ba7: $2f
    ld e, a                                       ; $6ba8: $5f

jr_028_6ba9:
    add e                                         ; $6ba9: $83
    jp hl                                         ; $6baa: $e9


    ld a, [hl+]                                   ; $6bab: $2a
    dec d                                         ; $6bac: $15
    add [hl]                                      ; $6bad: $86

Jump_028_6bae:
    jr nc, jr_028_6b77                            ; $6bae: $30 $c7

    ld c, c                                       ; $6bb0: $49
    add [hl]                                      ; $6bb1: $86
    dec sp                                        ; $6bb2: $3b
    add e                                         ; $6bb3: $83
    xor d                                         ; $6bb4: $aa
    ld hl, sp+$3b                                 ; $6bb5: $f8 $3b
    di                                            ; $6bb7: $f3
    add l                                         ; $6bb8: $85
    sub d                                         ; $6bb9: $92
    and [hl]                                      ; $6bba: $a6
    call nz, $9476                                ; $6bbb: $c4 $76 $94
    ld hl, $f75f                                  ; $6bbe: $21 $5f $f7
    ld [hl], a                                    ; $6bc1: $77
    ld b, e                                       ; $6bc2: $43
    ld d, a                                       ; $6bc3: $57
    ld de, $4706                                  ; $6bc4: $11 $06 $47
    db $ed                                        ; $6bc7: $ed
    and b                                         ; $6bc8: $a0
    ld a, [hl]                                    ; $6bc9: $7e
    rst $10                                       ; $6bca: $d7
    ld a, c                                       ; $6bcb: $79
    xor d                                         ; $6bcc: $aa
    ld a, [hl]                                    ; $6bcd: $7e
    sbc l                                         ; $6bce: $9d
    ei                                            ; $6bcf: $fb
    push de                                       ; $6bd0: $d5
    and e                                         ; $6bd1: $a3

jr_028_6bd2:
    push af                                       ; $6bd2: $f5
    jr z, @-$14                                   ; $6bd3: $28 $ea

    dec [hl]                                      ; $6bd5: $35
    ld e, b                                       ; $6bd6: $58
    ldh a, [$f4]                                  ; $6bd7: $f0 $f4
    sub d                                         ; $6bd9: $92
    ld b, $b8                                     ; $6bda: $06 $b8
    or e                                          ; $6bdc: $b3
    ld d, e                                       ; $6bdd: $53
    and $e5                                       ; $6bde: $e6 $e5
    ld b, e                                       ; $6be0: $43
    add h                                         ; $6be1: $84
    ld bc, $6527                                  ; $6be2: $01 $27 $65
    sub $b9                                       ; $6be5: $d6 $b9
    db $d3                                        ; $6be7: $d3
    or l                                          ; $6be8: $b5
    ld l, a                                       ; $6be9: $6f
    or b                                          ; $6bea: $b0
    adc [hl]                                      ; $6beb: $8e
    ld d, [hl]                                    ; $6bec: $56
    ld [hl], l                                    ; $6bed: $75
    dec c                                         ; $6bee: $0d
    ld a, [hl]                                    ; $6bef: $7e
    ld l, c                                       ; $6bf0: $69
    xor a                                         ; $6bf1: $af
    ld e, e                                       ; $6bf2: $5b
    ret                                           ; $6bf3: $c9


    ld a, [hl+]                                   ; $6bf4: $2a
    and e                                         ; $6bf5: $a3
    ld a, [$38ef]                                 ; $6bf6: $fa $ef $38
    ret                                           ; $6bf9: $c9


    nop                                           ; $6bfa: $00
    ret nc                                        ; $6bfb: $d0

    ld a, d                                       ; $6bfc: $7a
    sub h                                         ; $6bfd: $94
    sbc a                                         ; $6bfe: $9f
    ld l, e                                       ; $6bff: $6b
    jr nc, jr_028_6bd2                            ; $6c00: $30 $d0

    ld b, $76                                     ; $6c02: $06 $76
    cp l                                          ; $6c04: $bd
    ld b, $b3                                     ; $6c05: $06 $b3
    dec h                                         ; $6c07: $25
    jp $beb5                                      ; $6c08: $c3 $b5 $be


    add h                                         ; $6c0b: $84
    scf                                           ; $6c0c: $37
    jp hl                                         ; $6c0d: $e9


    pop de                                        ; $6c0e: $d1
    adc [hl]                                      ; $6c0f: $8e
    ld [hl+], a                                   ; $6c10: $22
    or [hl]                                       ; $6c11: $b6
    ld h, e                                       ; $6c12: $63
    ld c, h                                       ; $6c13: $4c
    ret c                                         ; $6c14: $d8

    adc [hl]                                      ; $6c15: $8e
    rst $08                                       ; $6c16: $cf
    ld d, d                                       ; $6c17: $52
    cp [hl]                                       ; $6c18: $be
    ld b, $3b                                     ; $6c19: $06 $3b
    ld c, [hl]                                    ; $6c1b: $4e
    jp $b034                                      ; $6c1c: $c3 $34 $b0


    sbc [hl]                                      ; $6c1f: $9e
    rst $10                                       ; $6c20: $d7
    xor e                                         ; $6c21: $ab
    ld a, [c]                                     ; $6c22: $f2
    or b                                          ; $6c23: $b0
    sbc $d7                                       ; $6c24: $de $d7
    di                                            ; $6c26: $f3
    ld [hl], d                                    ; $6c27: $72
    ld d, h                                       ; $6c28: $54
    ld h, c                                       ; $6c29: $61
    dec [hl]                                      ; $6c2a: $35
    ld e, b                                       ; $6c2b: $58
    scf                                           ; $6c2c: $37
    dec d                                         ; $6c2d: $15
    or [hl]                                       ; $6c2e: $b6
    dec bc                                        ; $6c2f: $0b
    cp e                                          ; $6c30: $bb
    or h                                          ; $6c31: $b4
    db $eb                                        ; $6c32: $eb
    ld e, l                                       ; $6c33: $5d
    jr nc, jr_028_6c73                            ; $6c34: $30 $3d

    adc d                                         ; $6c36: $8a
    ld a, d                                       ; $6c37: $7a
    dec c                                         ; $6c38: $0d
    ld b, $a6                                     ; $6c39: $06 $a6
    db $d3                                        ; $6c3b: $d3
    ld c, c                                       ; $6c3c: $49
    ld a, b                                       ; $6c3d: $78
    ld [hl], $cf                                  ; $6c3e: $36 $cf
    or l                                          ; $6c40: $b5
    ld a, a                                       ; $6c41: $7f
    cp d                                          ; $6c42: $ba
    jr nz, @-$6b                                  ; $6c43: $20 $93

    xor l                                         ; $6c45: $ad
    ld d, d                                       ; $6c46: $52
    ld h, c                                       ; $6c47: $61
    di                                            ; $6c48: $f3
    ld e, h                                       ; $6c49: $5c
    ld d, c                                       ; $6c4a: $51
    db $eb                                        ; $6c4b: $eb
    inc hl                                        ; $6c4c: $23
    inc c                                         ; $6c4d: $0c
    and a                                         ; $6c4e: $a7
    daa                                           ; $6c4f: $27
    ld [hl], c                                    ; $6c50: $71
    rla                                           ; $6c51: $17
    cpl                                           ; $6c52: $2f
    ld hl, sp-$2d                                 ; $6c53: $f8 $d3
    inc a                                         ; $6c55: $3c
    rst $20                                       ; $6c56: $e7
    push hl                                       ; $6c57: $e5
    jp nz, $abe1                                  ; $6c58: $c2 $e1 $ab

    or l                                          ; $6c5b: $b5
    cp [hl]                                       ; $6c5c: $be
    or d                                          ; $6c5d: $b2
    ld d, b                                       ; $6c5e: $50
    pop bc                                        ; $6c5f: $c1
    ld e, a                                       ; $6c60: $5f
    sub [hl]                                      ; $6c61: $96
    or $5a                                        ; $6c62: $f6 $5a
    inc sp                                        ; $6c64: $33
    ldh [rHDMA5], a                               ; $6c65: $e0 $55
    inc e                                         ; $6c67: $1c
    ret nc                                        ; $6c68: $d0

    adc [hl]                                      ; $6c69: $8e
    sub e                                         ; $6c6a: $93
    ei                                            ; $6c6b: $fb
    call nz, $b9e6                                ; $6c6c: $c4 $e6 $b9
    ld d, e                                       ; $6c6f: $53
    ld l, [hl]                                    ; $6c70: $6e
    sub l                                         ; $6c71: $95
    ld d, c                                       ; $6c72: $51

jr_028_6c73:
    ld h, c                                       ; $6c73: $61
    rst $00                                       ; $6c74: $c7
    ld b, l                                       ; $6c75: $45
    dec c                                         ; $6c76: $0d
    ccf                                           ; $6c77: $3f
    xor [hl]                                      ; $6c78: $ae
    rst $28                                       ; $6c79: $ef
    ld [hl], l                                    ; $6c7a: $75
    sub e                                         ; $6c7b: $93
    ld d, a                                       ; $6c7c: $57
    ld c, a                                       ; $6c7d: $4f
    ld e, c                                       ; $6c7e: $59
    jp c, $f2f3                                   ; $6c7f: $da $f3 $f2

    db $eb                                        ; $6c82: $eb
    ld e, [hl]                                    ; $6c83: $5e
    ld l, [hl]                                    ; $6c84: $6e
    ld c, h                                       ; $6c85: $4c
    ret z                                         ; $6c86: $c8

    ld c, [hl]                                    ; $6c87: $4e
    ld a, c                                       ; $6c88: $79
    xor c                                         ; $6c89: $a9
    pop bc                                        ; $6c8a: $c1
    ld e, d                                       ; $6c8b: $5a
    inc a                                         ; $6c8c: $3c
    jp hl                                         ; $6c8d: $e9


    ld d, c                                       ; $6c8e: $51
    ld l, l                                       ; $6c8f: $6d
    dec l                                         ; $6c90: $2d
    add hl, sp                                    ; $6c91: $39
    cpl                                           ; $6c92: $2f
    ld [$1835], a                                 ; $6c93: $ea $35 $18
    ld e, a                                       ; $6c96: $5f
    ld [hl], d                                    ; $6c97: $72
    and a                                         ; $6c98: $a7
    call c, $a32a                                 ; $6c99: $dc $2a $a3
    jp nz, $8b8e                                  ; $6c9c: $c2 $8e $8b

    ld a, [de]                                    ; $6c9f: $1a
    ld a, [hl]                                    ; $6ca0: $7e
    call c, $2e85                                 ; $6ca1: $dc $85 $2e
    jr @+$49                                      ; $6ca4: $18 $47

    ld de, $979b                                  ; $6ca6: $11 $9b $97
    ld e, a                                       ; $6ca9: $5f
    rst $30                                       ; $6caa: $f7
    ld [hl], d                                    ; $6cab: $72
    ld h, e                                       ; $6cac: $63
    ld b, d                                       ; $6cad: $42
    halt                                          ; $6cae: $76
    jp z, Jump_000_0d4b                           ; $6caf: $ca $4b $0d

    sub $e2                                       ; $6cb2: $d6 $e2
    ld c, c                                       ; $6cb4: $49
    adc a                                         ; $6cb5: $8f
    db $10                                        ; $6cb6: $10
    ld a, [bc]                                    ; $6cb7: $0a
    or l                                          ; $6cb8: $b5
    ld l, c                                       ; $6cb9: $69
    rst $38                                       ; $6cba: $ff
    cp h                                          ; $6cbb: $bc
    xor b                                         ; $6cbc: $a8
    rst $10                                       ; $6cbd: $d7
    ld h, b                                       ; $6cbe: $60
    ld a, h                                       ; $6cbf: $7c
    ld d, c                                       ; $6cc0: $51
    sbc a                                         ; $6cc1: $9f
    sub a                                         ; $6cc2: $97
    rra                                           ; $6cc3: $1f
    bit 4, b                                      ; $6cc4: $cb $60
    rla                                           ; $6cc6: $17
    ld d, $18                                     ; $6cc7: $16 $18
    dec d                                         ; $6cc9: $15
    halt                                          ; $6cca: $76
    add hl, hl                                    ; $6ccb: $29
    ld b, b                                       ; $6ccc: $40
    jr jr_028_6d0c                                ; $6ccd: $18 $3d

    ld a, a                                       ; $6ccf: $7f
    ld d, b                                       ; $6cd0: $50
    jp nc, Jump_000_3644                          ; $6cd1: $d2 $44 $36

    sub a                                         ; $6cd4: $97
    ld h, [hl]                                    ; $6cd5: $66
    sbc [hl]                                      ; $6cd6: $9e
    or e                                          ; $6cd7: $b3
    cpl                                           ; $6cd8: $2f
    or c                                          ; $6cd9: $b1
    and l                                         ; $6cda: $a5
    pop af                                        ; $6cdb: $f1
    add l                                         ; $6cdc: $85
    add hl, hl                                    ; $6cdd: $29
    adc a                                         ; $6cde: $8f
    db $10                                        ; $6cdf: $10
    ld d, d                                       ; $6ce0: $52
    db $db                                        ; $6ce1: $db
    ld e, a                                       ; $6ce2: $5f
    add $ff                                       ; $6ce3: $c6 $ff
    or d                                          ; $6ce5: $b2
    di                                            ; $6ce6: $f3
    or h                                          ; $6ce7: $b4
    adc [hl]                                      ; $6ce8: $8e
    inc a                                         ; $6ce9: $3c
    inc a                                         ; $6cea: $3c
    add hl, sp                                    ; $6ceb: $39
    jr nz, @+$0e                                  ; $6cec: $20 $0c

    and a                                         ; $6cee: $a7
    halt                                          ; $6cef: $76
    sbc [hl]                                      ; $6cf0: $9e
    and $45                                       ; $6cf1: $e6 $45
    ld a, l                                       ; $6cf3: $7d
    ld c, c                                       ; $6cf4: $49
    ccf                                           ; $6cf5: $3f
    ld c, d                                       ; $6cf6: $4a
    ld e, $61                                     ; $6cf7: $1e $61
    ld d, $7b                                     ; $6cf9: $16 $7b
    ld e, [hl]                                    ; $6cfb: $5e
    call nc, Call_000_306b                        ; $6cfc: $d4 $6b $30
    cp [hl]                                       ; $6cff: $be
    xor b                                         ; $6d00: $a8
    rst $08                                       ; $6d01: $cf
    ld [hl-], a                                   ; $6d02: $32
    cpl                                           ; $6d03: $2f
    sub a                                         ; $6d04: $97
    ld [$bebb], a                                 ; $6d05: $ea $bb $be
    dec bc                                        ; $6d08: $0b
    call c, $af5d                                 ; $6d09: $dc $5d $af

jr_028_6d0c:
    pop bc                                        ; $6d0c: $c1
    db $e4                                        ; $6d0d: $e4
    dec [hl]                                      ; $6d0e: $35
    add $66                                       ; $6d0f: $c6 $66
    and d                                         ; $6d11: $a2
    ld a, [c]                                     ; $6d12: $f2
    call c, $b129                                 ; $6d13: $dc $29 $b1
    ret                                           ; $6d16: $c9


    ld l, e                                       ; $6d17: $6b
    adc h                                         ; $6d18: $8c
    call $1aac                                    ; $6d19: $cd $ac $1a
    adc l                                         ; $6d1c: $8d
    or [hl]                                       ; $6d1d: $b6
    db $e3                                        ; $6d1e: $e3
    inc hl                                        ; $6d1f: $23
    inc c                                         ; $6d20: $0c
    dec a                                         ; $6d21: $3d
    adc e                                         ; $6d22: $8b
    ld a, [$ec2e]                                 ; $6d23: $fa $2e $ec
    ld a, d                                       ; $6d26: $7a
    ld d, a                                       ; $6d27: $57
    inc c                                         ; $6d28: $0c
    ld d, $af                                     ; $6d29: $16 $af
    pop bc                                        ; $6d2b: $c1
    sub h                                         ; $6d2c: $94
    ld h, [hl]                                    ; $6d2d: $66
    ld hl, $85eb                                  ; $6d2e: $21 $eb $85
    db $db                                        ; $6d31: $db
    cp [hl]                                       ; $6d32: $be
    pop af                                        ; $6d33: $f1
    ld a, d                                       ; $6d34: $7a
    or e                                          ; $6d35: $b3
    ld l, [hl]                                    ; $6d36: $6e
    ld sp, $8eb5                                  ; $6d37: $31 $b5 $8e
    ld h, [hl]                                    ; $6d3a: $66
    xor c                                         ; $6d3b: $a9
    add l                                         ; $6d3c: $85
    inc bc                                        ; $6d3d: $03
    inc hl                                        ; $6d3e: $23
    cp a                                          ; $6d3f: $bf
    db $eb                                        ; $6d40: $eb
    cp e                                          ; $6d41: $bb
    or b                                          ; $6d42: $b0
    cp [hl]                                       ; $6d43: $be
    rst $20                                       ; $6d44: $e7
    jp nc, $faec                                  ; $6d45: $d2 $ec $fa

    sub d                                         ; $6d48: $92
    db $10                                        ; $6d49: $10
    ld b, $16                                     ; $6d4a: $06 $16
    rst $18                                       ; $6d4c: $df
    add l                                         ; $6d4d: $85
    ld l, $3b                                     ; $6d4e: $2e $3b
    add hl, hl                                    ; $6d50: $29
    or e                                          ; $6d51: $b3
    ld a, $96                                     ; $6d52: $3e $96
    inc a                                         ; $6d54: $3c
    ld [hl], l                                    ; $6d55: $75
    pop bc                                        ; $6d56: $c1
    sub [hl]                                      ; $6d57: $96
    ld e, d                                       ; $6d58: $5a
    cp b                                          ; $6d59: $b8
    ld c, e                                       ; $6d5a: $4b
    sub $0b                                       ; $6d5b: $d6 $0b
    or a                                          ; $6d5d: $b7
    dec e                                         ; $6d5e: $1d
    cp a                                          ; $6d5f: $bf
    bit 1, [hl]                                   ; $6d60: $cb $4e
    jp z, Jump_028_73ac                           ; $6d62: $ca $ac $73

    ld d, a                                       ; $6d65: $57
    ld e, [hl]                                    ; $6d66: $5e
    cp [hl]                                       ; $6d67: $be
    ld b, $d3                                     ; $6d68: $06 $d3
    ld d, c                                       ; $6d6a: $51
    ld a, [$0c23]                                 ; $6d6b: $fa $23 $0c
    cp l                                          ; $6d6e: $bd
    jp nc, $6cc8                                  ; $6d6f: $d2 $c8 $6c

    push af                                       ; $6d72: $f5
    ld a, [c]                                     ; $6d73: $f2
    or d                                          ; $6d74: $b2
    ld hl, sp-$4a                                 ; $6d75: $f8 $b6
    rst $08                                       ; $6d77: $cf
    res 0, l                                      ; $6d78: $cb $85
    ld e, l                                       ; $6d7a: $5d
    ld e, d                                       ; $6d7b: $5a
    ret c                                         ; $6d7c: $d8

    xor h                                         ; $6d7d: $ac
    sub e                                         ; $6d7e: $93
    nop                                           ; $6d7f: $00
    rrca                                          ; $6d80: $0f
    ld [hl], b                                    ; $6d81: $70
    sub e                                         ; $6d82: $93
    sub $7e                                       ; $6d83: $d6 $7e
    dec sp                                        ; $6d85: $3b
    push hl                                       ; $6d86: $e5
    ld d, a                                       ; $6d87: $57
    ld a, [hl]                                    ; $6d88: $7e
    db $ec                                        ; $6d89: $ec
    ld a, $43                                     ; $6d8a: $3e $43
    or e                                          ; $6d8c: $b3
    ld hl, sp+$2e                                 ; $6d8d: $f8 $2e
    call z, $f86f                                 ; $6d8f: $cc $6f $f8
    cp e                                          ; $6d92: $bb
    ld a, $5e                                     ; $6d93: $3e $5e
    ld h, c                                       ; $6d95: $61
    ld a, [c]                                     ; $6d96: $f2
    ld l, [hl]                                    ; $6d97: $6e
    add h                                         ; $6d98: $84
    sbc [hl]                                      ; $6d99: $9e
    call $4d73                                    ; $6d9a: $cd $73 $4d
    ld a, [de]                                    ; $6d9d: $1a
    or h                                          ; $6d9e: $b4
    inc sp                                        ; $6d9f: $33
    ldh [rPCM34], a                               ; $6da0: $e0 $77
    ld a, l                                       ; $6da2: $7d
    db $fc                                        ; $6da3: $fc
    rst $00                                       ; $6da4: $c7
    adc b                                         ; $6da5: $88
    halt                                          ; $6da6: $76
    call nc, $7cce                                ; $6da7: $d4 $ce $7c
    ld l, c                                       ; $6daa: $69
    halt                                          ; $6dab: $76
    ld a, [c]                                     ; $6dac: $f2
    adc e                                         ; $6dad: $8b
    inc [hl]                                      ; $6dae: $34
    db $eb                                        ; $6daf: $eb
    ld d, [hl]                                    ; $6db0: $56
    db $e4                                        ; $6db1: $e4
    add d                                         ; $6db2: $82
    add a                                         ; $6db3: $87
    ld a, [bc]                                    ; $6db4: $0a
    di                                            ; $6db5: $f3
    ld e, h                                       ; $6db6: $5c
    sub e                                         ; $6db7: $93
    ld b, $61                                     ; $6db8: $06 $61
    sub [hl]                                      ; $6dba: $96
    ld a, [de]                                    ; $6dbb: $1a
    ld e, e                                       ; $6dbc: $5b
    ld [hl], b                                    ; $6dbd: $70
    xor l                                         ; $6dbe: $ad
    ccf                                           ; $6dbf: $3f
    and l                                         ; $6dc0: $a5
    add $cb                                       ; $6dc1: $c6 $cb
    and l                                         ; $6dc3: $a5
    ld h, b                                       ; $6dc4: $60
    sbc [hl]                                      ; $6dc5: $9e
    dec hl                                        ; $6dc6: $2b
    ld l, d                                       ; $6dc7: $6a
    db $fd                                        ; $6dc8: $fd
    dec h                                         ; $6dc9: $25
    db $fd                                        ; $6dca: $fd
    jp nc, $979e                                  ; $6dcb: $d2 $9e $97

    add h                                         ; $6dce: $84
    rst $28                                       ; $6dcf: $ef
    add d                                         ; $6dd0: $82
    ld bc, $1b47                                  ; $6dd1: $01 $47 $1b
    ld b, a                                       ; $6dd4: $47
    ld [$25f1], sp                                ; $6dd5: $08 $f1 $25
    rla                                           ; $6dd8: $17
    xor b                                         ; $6dd9: $a8
    push af                                       ; $6dda: $f5
    ld [hl], a                                    ; $6ddb: $77
    ld a, l                                       ; $6ddc: $7d
    sbc [hl]                                      ; $6ddd: $9e
    dec bc                                        ; $6dde: $0b
    cp a                                          ; $6ddf: $bf
    dec hl                                        ; $6de0: $2b
    ld b, $96                                     ; $6de1: $06 $96
    ld a, c                                       ; $6de3: $79
    cp c                                          ; $6de4: $b9
    ld d, h                                       ; $6de5: $54
    sbc a                                         ; $6de6: $9f
    and l                                         ; $6de7: $a5
    ld d, $e3                                     ; $6de8: $16 $e3
    ld e, h                                       ; $6dea: $5c
    sbc d                                         ; $6deb: $9a
    and l                                         ; $6dec: $a5
    pop af                                        ; $6ded: $f1
    ld a, c                                       ; $6dee: $79
    ld sp, hl                                     ; $6def: $f9
    ld d, l                                       ; $6df0: $55
    ld sp, $deb5                                  ; $6df1: $31 $b5 $de
    dec b                                         ; $6df4: $05
    inc bc                                        ; $6df5: $03
    sub [hl]                                      ; $6df6: $96
    ld d, l                                       ; $6df7: $55
    ld c, d                                       ; $6df8: $4a
    dec bc                                        ; $6df9: $0b
    ld [hl], d                                    ; $6dfa: $72
    sub a                                         ; $6dfb: $97
    and $e5                                       ; $6dfc: $e6 $e5
    ld [hl], a                                    ; $6dfe: $77
    ld a, [$cb83]                                 ; $6dff: $fa $83 $cb
    xor l                                         ; $6e02: $ad
    db $fc                                        ; $6e03: $fc

jr_028_6e04:
    reti                                          ; $6e04: $d9


    ld e, d                                       ; $6e05: $5a
    cp [hl]                                       ; $6e06: $be
    ld a, [c]                                     ; $6e07: $f2
    sbc e                                         ; $6e08: $9b
    inc [hl]                                      ; $6e09: $34
    cp $7a                                        ; $6e0a: $fe $7a
    ld c, c                                       ; $6e0c: $49
    db $e3                                        ; $6e0d: $e3
    ld l, e                                       ; $6e0e: $6b
    rst $38                                       ; $6e0f: $ff
    and l                                         ; $6e10: $a5
    ld h, b                                       ; $6e11: $60
    ldh a, [rVBK]                                 ; $6e12: $f0 $4f
    ld e, l                                       ; $6e14: $5d
    jr nc, jr_028_6e54                            ; $6e15: $30 $3d

    ld c, e                                       ; $6e17: $4b
    sub $60                                       ; $6e18: $d6 $60
    sub a                                         ; $6e1a: $97
    ld d, [hl]                                    ; $6e1b: $56
    ld e, [hl]                                    ; $6e1c: $5e
    cp [hl]                                       ; $6e1d: $be
    dec hl                                        ; $6e1e: $2b
    ld b, $96                                     ; $6e1f: $06 $96
    dec d                                         ; $6e21: $15
    or l                                          ; $6e22: $b5
    cp $9a                                        ; $6e23: $fe $9a
    inc [hl]                                      ; $6e25: $34
    ld e, l                                       ; $6e26: $5d
    jr nc, @-$51                                  ; $6e27: $30 $ad

    ld a, [hl+]                                   ; $6e29: $2a
    jp nc, Jump_028_7bac                          ; $6e2a: $d2 $ac $7b

    cp d                                          ; $6e2d: $ba
    cp a                                          ; $6e2e: $bf
    ld [hl], h                                    ; $6e2f: $74
    reti                                          ; $6e30: $d9


    xor c                                         ; $6e31: $a9
    add $a7                                       ; $6e32: $c6 $a7
    ld a, $ba                                     ; $6e34: $3e $ba
    ld b, c                                       ; $6e36: $41
    pop af                                        ; $6e37: $f1
    dec e                                         ; $6e38: $1d
    ld [hl], l                                    ; $6e39: $75
    jp z, $bb31                                   ; $6e3a: $ca $31 $bb

    inc [hl]                                      ; $6e3d: $34
    cpl                                           ; $6e3e: $2f
    cp a                                          ; $6e3f: $bf
    db $d3                                        ; $6e40: $d3
    rra                                           ; $6e41: $1f
    ld e, h                                       ; $6e42: $5c
    ld l, [hl]                                    ; $6e43: $6e
    push hl                                       ; $6e44: $e5
    rst $08                                       ; $6e45: $cf
    sub $f2                                       ; $6e46: $d6 $f2
    sub l                                         ; $6e48: $95
    rst $18                                       ; $6e49: $df
    and h                                         ; $6e4a: $a4
    ld l, $eb                                     ; $6e4b: $2e $eb
    xor a                                         ; $6e4d: $af
    rst $18                                       ; $6e4e: $df
    sub l                                         ; $6e4f: $95
    inc [hl]                                      ; $6e50: $34
    ldh a, [$eb]                                  ; $6e51: $f0 $eb
    db $e4                                        ; $6e53: $e4

jr_028_6e54:
    dec h                                         ; $6e54: $25
    ld e, a                                       ; $6e55: $5f
    rst $20                                       ; $6e56: $e7
    ld c, c                                       ; $6e57: $49
    and e                                         ; $6e58: $a3
    scf                                           ; $6e59: $37

jr_028_6e5a:
    ld l, b                                       ; $6e5a: $68
    and a                                         ; $6e5b: $a7
    inc h                                         ; $6e5c: $24
    rst $08                                       ; $6e5d: $cf
    ld e, l                                       ; $6e5e: $5d
    ld e, e                                       ; $6e5f: $5b
    xor e                                         ; $6e60: $ab
    ld a, [$d73c]                                 ; $6e61: $fa $3c $d7
    and h                                         ; $6e64: $a4
    sub c                                         ; $6e65: $91
    or c                                          ; $6e66: $b1
    sub h                                         ; $6e67: $94
    ldh a, [$7a]                                  ; $6e68: $f0 $7a
    ld c, d                                       ; $6e6a: $4a
    add e                                         ; $6e6b: $83
    jr nc, jr_028_6e04                            ; $6e6c: $30 $96

    ld e, d                                       ; $6e6e: $5a
    adc h                                         ; $6e6f: $8c
    ld l, e                                       ; $6e70: $6b
    rst $38                                       ; $6e71: $ff
    jp nz, Jump_028_5f94                          ; $6e72: $c2 $94 $5f

    and l                                         ; $6e75: $a5
    ld a, [c]                                     ; $6e76: $f2
    or [hl]                                       ; $6e77: $b6
    adc c                                         ; $6e78: $89
    di                                            ; $6e79: $f3
    ld [hl], d                                    ; $6e7a: $72
    ld h, c                                       ; $6e7b: $61
    ld a, [hl]                                    ; $6e7c: $7e
    jp Jump_000_1847                              ; $6e7d: $c3 $47 $18


    dec a                                         ; $6e80: $3d
    adc e                                         ; $6e81: $8b
    ld a, d                                       ; $6e82: $7a
    dec c                                         ; $6e83: $0d
    ld d, $e4                                     ; $6e84: $16 $e4
    and l                                         ; $6e86: $a5
    ld h, b                                       ; $6e87: $60
    ld c, c                                       ; $6e88: $49
    ld e, l                                       ; $6e89: $5d
    ld sp, $a7c7                                  ; $6e8a: $31 $c7 $a7
    ld d, a                                       ; $6e8d: $57
    ld b, l                                       ; $6e8e: $45
    cp e                                          ; $6e8f: $bb
    ld h, b                                       ; $6e90: $60
    dec a                                         ; $6e91: $3d

jr_028_6e92:
    ccf                                           ; $6e92: $3f
    ld b, [hl]                                    ; $6e93: $46
    xor $f8                                       ; $6e94: $ee $f8
    adc a                                         ; $6e96: $8f
    sub c                                         ; $6e97: $91
    cp e                                          ; $6e98: $bb
    ld d, [hl]                                    ; $6e99: $56
    dec d                                         ; $6e9a: $15
    ld l, c                                       ; $6e9b: $69
    sub $3d                                       ; $6e9c: $d6 $3d
    db $dd                                        ; $6e9e: $dd
    ld e, a                                       ; $6e9f: $5f
    cp d                                          ; $6ea0: $ba
    call z, $a2b2                                 ; $6ea1: $cc $b2 $a2
    sub $5f                                       ; $6ea4: $d6 $5f
    cp c                                          ; $6ea6: $b9
    ld hl, $2777                                  ; $6ea7: $21 $77 $27
    dec hl                                        ; $6eaa: $2b
    db $d3                                        ; $6eab: $d3
    ld [hl], b                                    ; $6eac: $70
    db $dd                                        ; $6ead: $dd
    cpl                                           ; $6eae: $2f
    ld d, l                                       ; $6eaf: $55
    adc a                                         ; $6eb0: $8f
    jr nc, jr_028_6e5a                            ; $6eb1: $30 $a7

    ld a, [de]                                    ; $6eb3: $1a
    sbc a                                         ; $6eb4: $9f
    ld a, [$06e8]                                 ; $6eb5: $fa $e8 $06
    push bc                                       ; $6eb8: $c5
    ld [hl], a                                    ; $6eb9: $77
    call nc, $c729                                ; $6eba: $d4 $29 $c7
    db $ec                                        ; $6ebd: $ec
    jp nc, $fcbc                                  ; $6ebe: $d2 $bc $fc

    ld c, [hl]                                    ; $6ec1: $4e
    ld a, a                                       ; $6ec2: $7f
    ld [hl], b                                    ; $6ec3: $70
    cp c                                          ; $6ec4: $b9
    sub l                                         ; $6ec5: $95
    ccf                                           ; $6ec6: $3f
    ld e, e                                       ; $6ec7: $5b
    bit 2, a                                      ; $6ec8: $cb $57
    ld a, [hl]                                    ; $6eca: $7e
    sub e                                         ; $6ecb: $93
    cp b                                          ; $6ecc: $b8
    cp e                                          ; $6ecd: $bb
    or $2c                                        ; $6ece: $f6 $2c
    or l                                          ; $6ed0: $b5
    ld [hl], b                                    ; $6ed1: $70
    sub h                                         ; $6ed2: $94
    cp [hl]                                       ; $6ed3: $be
    ldh a, [$82]                                  ; $6ed4: $f0 $82
    ld l, e                                       ; $6ed6: $6b
    db $fd                                        ; $6ed7: $fd
    add hl, bc                                    ; $6ed8: $09
    xor l                                         ; $6ed9: $ad
    cp a                                          ; $6eda: $bf
    ld a, [hl]                                    ; $6edb: $7e
    rst $10                                       ; $6edc: $d7
    sbc d                                         ; $6edd: $9a
    ld b, $7e                                     ; $6ede: $06 $7e
    db $dd                                        ; $6ee0: $dd
    di                                            ; $6ee1: $f3
    sub d                                         ; $6ee2: $92
    xor a                                         ; $6ee3: $af
    di                                            ; $6ee4: $f3
    and h                                         ; $6ee5: $a4
    pop de                                        ; $6ee6: $d1
    dec de                                        ; $6ee7: $1b
    or h                                          ; $6ee8: $b4
    ld d, e                                       ; $6ee9: $53
    sub d                                         ; $6eea: $92
    rst $20                                       ; $6eeb: $e7
    xor [hl]                                      ; $6eec: $ae
    xor l                                         ; $6eed: $ad
    ld d, l                                       ; $6eee: $55
    ld a, l                                       ; $6eef: $7d
    sbc [hl]                                      ; $6ef0: $9e
    ld l, e                                       ; $6ef1: $6b
    jp nc, Jump_028_58c8                          ; $6ef2: $d2 $c8 $58

    ld c, d                                       ; $6ef5: $4a
    ld a, b                                       ; $6ef6: $78
    dec a                                         ; $6ef7: $3d
    and l                                         ; $6ef8: $a5
    ld b, c                                       ; $6ef9: $41
    jr jr_028_6e92                                ; $6efa: $18 $96

    push de                                       ; $6efc: $d5
    add hl, hl                                    ; $6efd: $29
    ld sp, hl                                     ; $6efe: $f9
    ld a, c                                       ; $6eff: $79
    ld a, c                                       ; $6f00: $79
    ld sp, hl                                     ; $6f01: $f9
    ld a, [de]                                    ; $6f02: $1a
    inc c                                         ; $6f03: $0c
    ld [hl-], a                                   ; $6f04: $32
    db $fc                                        ; $6f05: $fc
    and h                                         ; $6f06: $a4
    sbc a                                         ; $6f07: $9f
    ld c, d                                       ; $6f08: $4a
    ld a, [de]                                    ; $6f09: $1a
    ld h, d                                       ; $6f0a: $62
    ld [$cb21], sp                                ; $6f0b: $08 $21 $cb
    ld a, [hl+]                                   ; $6f0e: $2a
    and l                                         ; $6f0f: $a5
    sub l                                         ; $6f10: $95
    ld d, a                                       ; $6f11: $57
    sbc c                                         ; $6f12: $99
    sub a                                         ; $6f13: $97
    rrca                                          ; $6f14: $0f
    ld de, $dd06                                  ; $6f15: $11 $06 $dd
    ld [hl-], a                                   ; $6f18: $32
    db $fc                                        ; $6f19: $fc
    and l                                         ; $6f1a: $a5
    ld [hl], c                                    ; $6f1b: $71
    xor $aa                                       ; $6f1c: $ee $aa
    inc c                                         ; $6f1e: $0c
    ld a, a                                       ; $6f1f: $7f
    ld l, c                                       ; $6f20: $69
    sbc h                                         ; $6f21: $9c
    dec sp                                        ; $6f22: $3b
    cp [hl]                                       ; $6f23: $be
    cp h                                          ; $6f24: $bc
    cp h                                          ; $6f25: $bc
    push af                                       ; $6f26: $f5
    ld h, l                                       ; $6f27: $65
    ld c, l                                       ; $6f28: $4d
    sbc d                                         ; $6f29: $9a
    xor c                                         ; $6f2a: $a9
    inc a                                         ; $6f2b: $3c
    jp nz, $ca3d                                  ; $6f2c: $c2 $3d $ca

    res 5, a                                      ; $6f2f: $cb $af
    ld c, c                                       ; $6f31: $49
    inc sp                                        ; $6f32: $33
    sub l                                         ; $6f33: $95
    rst $28                                       ; $6f34: $ef
    add d                                         ; $6f35: $82
    ld bc, $1aa7                                  ; $6f36: $01 $a7 $1a
    sbc a                                         ; $6f39: $9f
    sbc l                                         ; $6f3a: $9d
    ld [hl-], a                                   ; $6f3b: $32
    dec e                                         ; $6f3c: $1d
    cp b                                          ; $6f3d: $b8
    ld h, h                                       ; $6f3e: $64
    adc h                                         ; $6f3f: $8c
    call c, $e17d                                 ; $6f40: $dc $7d $e1
    xor [hl]                                      ; $6f43: $ae
    ld a, e                                       ; $6f44: $7b
    cp d                                          ; $6f45: $ba
    cp a                                          ; $6f46: $bf
    ld [hl], h                                    ; $6f47: $74
    ld e, l                                       ; $6f48: $5d
    adc a                                         ; $6f49: $8f
    and d                                         ; $6f4a: $a2
    ld a, $fe                                     ; $6f4b: $3e $fe
    add $b8                                       ; $6f4d: $c6 $b8
    ld a, [hl+]                                   ; $6f4f: $2a
    pop bc                                        ; $6f50: $c1
    rst $10                                       ; $6f51: $d7
    and h                                         ; $6f52: $a4
    reti                                          ; $6f53: $d9


    ld b, c                                       ; $6f54: $41
    dec hl                                        ; $6f55: $2b
    ld l, c                                       ; $6f56: $69
    ldh [$d7], a                                  ; $6f57: $e0 $d7
    ret                                           ; $6f59: $c9


    ld c, e                                       ; $6f5a: $4b

Jump_028_6f5b:
    ld c, $68                                     ; $6f5b: $0e $68
    and a                                         ; $6f5d: $a7
    inc h                                         ; $6f5e: $24
    cp a                                          ; $6f5f: $bf
    or [hl]                                       ; $6f60: $b6
    ld d, [hl]                                    ; $6f61: $56
    push af                                       ; $6f62: $f5
    ld a, c                                       ; $6f63: $79
    xor [hl]                                      ; $6f64: $ae
    db $fd                                        ; $6f65: $fd
    xor h                                         ; $6f66: $ac
    dec bc                                        ; $6f67: $0b
    ld b, $47                                     ; $6f68: $06 $47
    ret                                           ; $6f6a: $c9


    rst $08                                       ; $6f6b: $cf
    swap a                                        ; $6f6c: $cb $37
    inc bc                                        ; $6f6e: $03
    cp a                                          ; $6f6f: $bf
    ld sp, $692e                                  ; $6f70: $31 $2e $69
    ld e, [hl]                                    ; $6f73: $5e
    ld l, $cc                                     ; $6f74: $2e $cc
    adc [hl]                                      ; $6f76: $8e
    sbc c                                         ; $6f77: $99
    jp nc, $9675                                  ; $6f78: $d2 $75 $96

    ld d, l                                       ; $6f7b: $55
    ld c, d                                       ; $6f7c: $4a
    dec [hl]                                      ; $6f7d: $35
    rra                                           ; $6f7e: $1f
    db $fc                                        ; $6f7f: $fc
    rst $08                                       ; $6f80: $cf
    res 0, a                                      ; $6f81: $cb $87
    ld [$bd03], sp                                ; $6f83: $08 $03 $bd
    jp nc, Jump_028_52ac                          ; $6f86: $d2 $ac $52

    xor d                                         ; $6f89: $aa
    ld sp, hl                                     ; $6f8a: $f9
    call nc, $979a                                ; $6f8b: $d4 $9a $97
    dec l                                         ; $6f8e: $2d
    db $fc                                        ; $6f8f: $fc
    reti                                          ; $6f90: $d9


    add hl, hl                                    ; $6f91: $29
    ld l, a                                       ; $6f92: $6f
    ld a, l                                       ; $6f93: $7d
    ld b, c                                       ; $6f94: $41
    jr @-$68                                      ; $6f95: $18 $96

    ld e, d                                       ; $6f97: $5a
    adc h                                         ; $6f98: $8c
    or e                                          ; $6f99: $b3
    cpl                                           ; $6f9a: $2f
    or c                                          ; $6f9b: $b1
    dec [hl]                                      ; $6f9c: $35
    ld l, c                                       ; $6f9d: $69
    sub $bc                                       ; $6f9e: $d6 $bc
    ld [hl], a                                    ; $6fa0: $77
    pop bc                                        ; $6fa1: $c1
    ld d, $af                                     ; $6fa2: $16 $af
    push bc                                       ; $6fa4: $c5
    cp b                                          ; $6fa5: $b8
    jr nz, @-$07                                  ; $6fa6: $20 $f7

    ld a, [bc]                                    ; $6fa8: $0a
    rst $30                                       ; $6fa9: $f7
    ld h, l                                       ; $6faa: $65
    ld c, c                                       ; $6fab: $49
    ld l, e                                       ; $6fac: $6b
    jp nc, $daec                                  ; $6fad: $d2 $ec $da

    ld l, e                                       ; $6fb0: $6b
    jp nc, $b82c                                  ; $6fb1: $d2 $2c $b8

    sub $9f                                       ; $6fb4: $d6 $9f
    jp hl                                         ; $6fb6: $e9


    ld [hl], b                                    ; $6fb7: $70
    rst $00                                       ; $6fb8: $c7
    sub a                                         ; $6fb9: $97
    ld a, h                                       ; $6fba: $7c
    db $eb                                        ; $6fbb: $eb
    res 3, d                                      ; $6fbc: $cb $9a
    inc [hl]                                      ; $6fbe: $34
    ld d, e                                       ; $6fbf: $53
    ld a, c                                       ; $6fc0: $79
    add h                                         ; $6fc1: $84
    ld bc, $b196                                  ; $6fc2: $01 $96 $b1
    res 5, b                                      ; $6fc5: $cb $a8
    and $83                                       ; $6fc7: $e6 $83
    rst $38                                       ; $6fc9: $ff
    add hl, hl                                    ; $6fca: $29
    dec [hl]                                      ; $6fcb: $35
    ld c, c                                       ; $6fcc: $49
    rst $08                                       ; $6fcd: $cf
    ld e, l                                       ; $6fce: $5d
    ld [hl], a                                    ; $6fcf: $77
    ld c, c                                       ; $6fd0: $49
    ei                                            ; $6fd1: $fb
    ld bc, $1052                                  ; $6fd2: $01 $52 $10
    ld b, $a7                                     ; $6fd5: $06 $a7
    db $fc                                        ; $6fd7: $fc
    push af                                       ; $6fd8: $f5
    ld a, [c]                                     ; $6fd9: $f2
    ld [hl-], a                                   ; $6fda: $32
    halt                                          ; $6fdb: $76
    reti                                          ; $6fdc: $d9


    inc l                                         ; $6fdd: $2c
    ld l, b                                       ; $6fde: $68
    ld b, a                                       ; $6fdf: $47
    dec de                                        ; $6fe0: $1b
    rra                                           ; $6fe1: $1f
    ld h, h                                       ; $6fe2: $64
    ld hl, sp+$49                                 ; $6fe3: $f8 $49
    cp a                                          ; $6fe5: $bf
    dec bc                                        ; $6fe6: $0b
    add e                                         ; $6fe7: $83
    cp d                                          ; $6fe8: $ba
    adc c                                         ; $6fe9: $89
    push af                                       ; $6fea: $f5
    ld c, e                                       ; $6feb: $4b
    pop bc                                        ; $6fec: $c1
    ld d, h                                       ; $6fed: $54
    jp nc, $9b10                                  ; $6fee: $d2 $10 $9b

    ld h, l                                       ; $6ff1: $65
    cp h                                          ; $6ff2: $bc
    sub d                                         ; $6ff3: $92
    rst $08                                       ; $6ff4: $cf
    ld [hl], e                                    ; $6ff5: $73
    ld [hl], l                                    ; $6ff6: $75
    ld c, d                                       ; $6ff7: $4a
    ld a, [hl]                                    ; $6ff8: $7e
    ld a, h                                       ; $6ff9: $7c
    ld c, c                                       ; $6ffa: $49
    add h                                         ; $6ffb: $84
    ld bc, $ca3d                                  ; $6ffc: $01 $3d $ca
    scf                                           ; $6fff: $37
    dec hl                                        ; $7000: $2b
    ld l, d                                       ; $7001: $6a
    db $fd                                        ; $7002: $fd
    ld a, c                                       ; $7003: $79
    cp c                                          ; $7004: $b9
    or b                                          ; $7005: $b0
    ld a, [hl+]                                   ; $7006: $2a
    ld b, l                                       ; $7007: $45
    ld l, $4b                                     ; $7008: $2e $4b
    ld e, c                                       ; $700a: $59
    dec sp                                        ; $700b: $3b
    ld h, [hl]                                    ; $700c: $66
    ld d, l                                       ; $700d: $55
    ld a, a                                       ; $700e: $7f
    add [hl]                                      ; $700f: $86
    db $10                                        ; $7010: $10
    or d                                          ; $7011: $b2
    adc h                                         ; $7012: $8c
    dec h                                         ; $7013: $25
    push de                                       ; $7014: $d5
    ld a, h                                       ; $7015: $7c
    ld e, [hl]                                    ; $7016: $5e
    ld l, $d5                                     ; $7017: $2e $d5
    ld h, a                                       ; $7019: $67
    ld e, c                                       ; $701a: $59
    and l                                         ; $701b: $a5
    or h                                          ; $701c: $b4
    ldh [$7d], a                                  ; $701d: $e0 $7d
    dec e                                         ; $701f: $1d
    dec b                                         ; $7020: $05
    sbc a                                         ; $7021: $9f
    sub a                                         ; $7022: $97
    rrca                                          ; $7023: $0f

Jump_028_7024:
    ld de, $c706                                  ; $7024: $11 $06 $c7
    sub [hl]                                      ; $7027: $96
    xor [hl]                                      ; $7028: $ae

jr_028_7029:
    ld l, e                                       ; $7029: $6b
    ret                                           ; $702a: $c9


    ldh a, [$bd]                                  ; $702b: $f0 $bd
    ld e, h                                       ; $702d: $5c
    ld a, [bc]                                    ; $702e: $0a
    sub $36                                       ; $702f: $d6 $36
    ld h, c                                       ; $7031: $61
    rst $20                                       ; $7032: $e7
    reti                                          ; $7033: $d9


    ld l, $79                                     ; $7034: $2e $79
    ld l, $7c                                     ; $7036: $2e $7c
    add h                                         ; $7038: $84
    ld bc, $c92d                                  ; $7039: $01 $2d $c9
    ld e, l                                       ; $703c: $5d
    xor e                                         ; $703d: $ab
    adc d                                         ; $703e: $8a
    inc [hl]                                      ; $703f: $34
    db $eb                                        ; $7040: $eb
    sbc [hl]                                      ; $7041: $9e
    xor $2f                                       ; $7042: $ee $2f
    ld l, b                                       ; $7044: $68
    cp l                                          ; $7045: $bd
    jp nc, $acd4                                  ; $7046: $d2 $d4 $ac

    cp a                                          ; $7049: $bf
    jr nz, jr_028_7029                            ; $704a: $20 $dd

    sbc a                                         ; $704c: $9f
    sub $a4                                       ; $704d: $d6 $a4
    sub c                                         ; $704f: $91
    reti                                          ; $7050: $d9


    ld [$a5e5], a                                 ; $7051: $ea $e5 $a5
    ld b, $ab                                     ; $7054: $06 $ab
    ld h, d                                       ; $7056: $62
    ld l, d                                       ; $7057: $6a
    sbc l                                         ; $7058: $9d
    dec sp                                        ; $7059: $3b
    dec h                                         ; $705a: $25
    or [hl]                                       ; $705b: $b6
    ld h, $4d                                     ; $705c: $26 $4d
    ld c, l                                       ; $705e: $4d
    ld a, [hl]                                    ; $705f: $7e
    ld b, $2e                                     ; $7060: $06 $2e
    dec b                                         ; $7062: $05
    cp e                                          ; $7063: $bb
    cp [hl]                                       ; $7064: $be
    di                                            ; $7065: $f3
    inc c                                         ; $7066: $0c
    ld hl, sp-$1e                                 ; $7067: $f8 $e2
    xor l                                         ; $7069: $ad
    rst $38                                       ; $706a: $ff
    jp z, Jump_028_5d8f                           ; $706b: $ca $8f $5d

    add [hl]                                      ; $706e: $86
    halt                                          ; $706f: $76
    ret nc                                        ; $7070: $d0

    ld e, d                                       ; $7071: $5a
    db $d3                                        ; $7072: $d3
    ret nz                                        ; $7073: $c0

    xor a                                         ; $7074: $af
    ld a, e                                       ; $7075: $7b
    ld e, [hl]                                    ; $7076: $5e
    ld a, [c]                                     ; $7077: $f2
    ld [hl], l                                    ; $7078: $75
    sbc [hl]                                      ; $7079: $9e
    inc [hl]                                      ; $707a: $34
    ld a, d                                       ; $707b: $7a
    inc sp                                        ; $707c: $33
    dec sp                                        ; $707d: $3b
    ld h, l                                       ; $707e: $65
    db $ed                                        ; $707f: $ed
    cp a                                          ; $7080: $bf
    inc d                                         ; $7081: $14
    inc l                                         ; $7082: $2c
    adc l                                         ; $7083: $8d
    ld c, a                                       ; $7084: $4f
    ld a, l                                       ; $7085: $7d
    ld [hl], h                                    ; $7086: $74
    add e                                         ; $7087: $83
    ld [c], a                                     ; $7088: $e2
    ld [$4703], sp                                ; $7089: $08 $03 $47
    pop de                                        ; $708c: $d1
    ld [hl-], a                                   ; $708d: $32
    or d                                          ; $708e: $b2
    add l                                         ; $708f: $85
    ld d, a                                       ; $7090: $57
    inc h                                         ; $7091: $24
    dec b                                         ; $7092: $05
    xor l                                         ; $7093: $ad
    ld h, a                                       ; $7094: $67
    ld l, c                                       ; $7095: $69
    halt                                          ; $7096: $76
    ld h, c                                       ; $7097: $61
    rst $10                                       ; $7098: $d7
    ld [hl], a                                    ; $7099: $77
    ld l, c                                       ; $709a: $69
    ld e, [hl]                                    ; $709b: $5e
    ld l, $ec                                     ; $709c: $2e $ec
    jp Jump_000_378e                              ; $709e: $c3 $8e $37


    xor e                                         ; $70a1: $ab
    and d                                         ; $70a2: $a2
    ld [bc], a                                    ; $70a3: $02
    ld c, b                                       ; $70a4: $48
    ld h, [hl]                                    ; $70a5: $66
    ret c                                         ; $70a6: $d8

    dec d                                         ; $70a7: $15
    inc bc                                        ; $70a8: $03
    xor l                                         ; $70a9: $ad
    cpl                                           ; $70aa: $2f
    ei                                            ; $70ab: $fb
    and $61                                       ; $70ac: $e6 $61
    ld a, [hl+]                                   ; $70ae: $2a
    cp a                                          ; $70af: $bf
    ld a, b                                       ; $70b0: $78
    db $eb                                        ; $70b1: $eb
    cp a                                          ; $70b2: $bf
    ldh a, [$d2]                                  ; $70b3: $f0 $d2
    inc hl                                        ; $70b5: $23
    add h                                         ; $70b6: $84
    sub b                                         ; $70b7: $90
    ld [de], a                                    ; $70b8: $12
    ld e, e                                       ; $70b9: $5b
    ld sp, hl                                     ; $70ba: $f9
    dec d                                         ; $70bb: $15
    add l                                         ; $70bc: $85
    add l                                         ; $70bd: $85
    call $5e8a                                    ; $70be: $cd $8a $5e
    ld b, c                                       ; $70c1: $41
    dec sp                                        ; $70c2: $3b
    reti                                          ; $70c3: $d9


    add h                                         ; $70c4: $84
    ld e, l                                       ; $70c5: $5d
    ld [hl], a                                    ; $70c6: $77
    adc h                                         ; $70c7: $8c
    or d                                          ; $70c8: $b2
    xor [hl]                                      ; $70c9: $ae
    jr jr_028_70f9                                ; $70ca: $18 $2d

    ret                                           ; $70cc: $c9


    ld e, l                                       ; $70cd: $5d
    sub e                                         ; $70ce: $93
    ld h, [hl]                                    ; $70cf: $66
    ld b, l                                       ; $70d0: $45
    xor l                                         ; $70d1: $ad
    ccf                                           ; $70d2: $3f
    halt                                          ; $70d3: $76
    and c                                         ; $70d4: $a1
    ld c, d                                       ; $70d5: $4a
    db $eb                                        ; $70d6: $eb
    res 6, e                                      ; $70d7: $cb $b3
    ld a, c                                       ; $70d9: $79
    ld sp, hl                                     ; $70da: $f9
    ld [hl], l                                    ; $70db: $75
    sub d                                         ; $70dc: $92
    ld a, a                                       ; $70dd: $7f
    add c                                         ; $70de: $81
    and l                                         ; $70df: $a5
    dec a                                         ; $70e0: $3d
    cpl                                           ; $70e1: $2f
    cp a                                          ; $70e2: $bf
    sub e                                         ; $70e3: $93
    xor a                                         ; $70e4: $af
    ld c, b                                       ; $70e5: $48
    jp z, $ded2                                   ; $70e6: $ca $d2 $de

    or c                                          ; $70e9: $b1
    ld [hl], d                                    ; $70ea: $72
    pop hl                                        ; $70eb: $e1
    add hl, de                                    ; $70ec: $19
    jp nz, $25dd                                  ; $70ed: $c2 $dd $25

    db $ed                                        ; $70f0: $ed
    rlca                                          ; $70f1: $07
    ld c, b                                       ; $70f2: $48
    reti                                          ; $70f3: $d9


    ld sp, $6c26                                  ; $70f4: $31 $26 $6c
    rst $00                                       ; $70f7: $c7
    ld h, a                                       ; $70f8: $67

jr_028_70f9:
    add hl, hl                                    ; $70f9: $29
    rst $18                                       ; $70fa: $df
    ld h, l                                       ; $70fb: $65
    dec a                                         ; $70fc: $3d
    set 1, e                                      ; $70fd: $cb $cb
    adc a                                         ; $70ff: $8f
    ld e, l                                       ; $7100: $5d
    or [hl]                                       ; $7101: $b6
    ld h, $cd                                     ; $7102: $26 $cd
    xor d                                         ; $7104: $aa
    inc c                                         ; $7105: $0c
    ld a, a                                       ; $7106: $7f
    or [hl]                                       ; $7107: $b6
    ld h, h                                       ; $7108: $64
    ret c                                         ; $7109: $d8

    dec d                                         ; $710a: $15
    inc bc                                        ; $710b: $03
    sub [hl]                                      ; $710c: $96
    or c                                          ; $710d: $b1
    and h                                         ; $710e: $a4
    sbc d                                         ; $710f: $9a
    adc a                                         ; $7110: $8f
    cp $d9                                        ; $7111: $fe $d9
    ld [hl], h                                    ; $7113: $74
    ld d, l                                       ; $7114: $55
    ld c, h                                       ; $7115: $4c
    xor l                                         ; $7116: $ad
    rst $08                                       ; $7117: $cf
    ld [hl], e                                    ; $7118: $73
    db $ed                                        ; $7119: $ed
    xor a                                         ; $711a: $af
    ld [hl-], a                                   ; $711b: $32
    db $fc                                        ; $711c: $fc
    ld e, l                                       ; $711d: $5d
    or d                                          ; $711e: $b2
    ld e, [hl]                                    ; $711f: $5e
    cp b                                          ; $7120: $b8
    db $ed                                        ; $7121: $ed
    ld hl, sp+$68                                 ; $7122: $f8 $68
    rst $00                                       ; $7124: $c7
    db $e4                                        ; $7125: $e4
    sbc d                                         ; $7126: $9a
    inc [hl]                                      ; $7127: $34
    inc sp                                        ; $7128: $33
    call nz, $c05e                                ; $7129: $c4 $5e $c0
    sub l                                         ; $712c: $95
    ret c                                         ; $712d: $d8

    ld hl, sp-$5e                                 ; $712e: $f8 $a2
    ld a, $2f                                     ; $7130: $3e $2f
    cp a                                          ; $7132: $bf
    sub e                                         ; $7133: $93
    xor a                                         ; $7134: $af
    ld c, b                                       ; $7135: $48
    jp z, $ded2                                   ; $7136: $ca $d2 $de

    or c                                          ; $7139: $b1
    ld [hl], d                                    ; $713a: $72
    pop hl                                        ; $713b: $e1
    reti                                          ; $713c: $d9


    and b                                         ; $713d: $a0
    inc h                                         ; $713e: $24
    rst $38                                       ; $713f: $ff
    ld l, h                                       ; $7140: $6c
    ld c, l                                       ; $7141: $4d
    sbc d                                         ; $7142: $9a
    xor [hl]                                      ; $7143: $ae
    jr @+$29                                      ; $7144: $18 $27

    scf                                           ; $7146: $37
    db $eb                                        ; $7147: $eb
    xor b                                         ; $7148: $a8
    inc a                                         ; $7149: $3c
    add hl, sp                                    ; $714a: $39
    ld [hl], h                                    ; $714b: $74
    push bc                                       ; $714c: $c5
    ld d, $1f                                     ; $714d: $16 $1f
    sub h                                         ; $714f: $94
    db $e4                                        ; $7150: $e4
    ld h, c                                       ; $7151: $61
    ld c, l                                       ; $7152: $4d
    ld a, [de]                                    ; $7153: $1a
    ld e, c                                       ; $7154: $59
    ld a, c                                       ; $7155: $79
    dec d                                         ; $7156: $15
    xor a                                         ; $7157: $af
    pop bc                                        ; $7158: $c1
    ret c                                         ; $7159: $d8

    ld a, a                                       ; $715a: $7f
    rst $20                                       ; $715b: $e7
    pop bc                                        ; $715c: $c1
    rst $00                                       ; $715d: $c7
    ld e, $ae                                     ; $715e: $1e $ae
    inc a                                         ; $7160: $3c
    ld [hl], a                                    ; $7161: $77
    ld l, l                                       ; $7162: $6d
    db $e3                                        ; $7163: $e3
    and e                                         ; $7164: $a3
    db $f4                                        ; $7165: $f4
    ld a, c                                       ; $7166: $79
    ld sp, hl                                     ; $7167: $f9
    cp c                                          ; $7168: $b9
    jr jr_028_719a                                ; $7169: $18 $2f

    ld l, b                                       ; $716b: $68
    ld d, $1f                                     ; $716c: $16 $1f
    ld a, a                                       ; $716e: $7f
    ld h, e                                       ; $716f: $63
    ld e, h                                       ; $7170: $5c
    ei                                            ; $7171: $fb
    rla                                           ; $7172: $17
    and [hl]                                      ; $7173: $a6
    push af                                       ; $7174: $f5
    reti                                          ; $7175: $d9


    inc a                                         ; $7176: $3c
    jp Jump_028_4914                              ; $7177: $c3 $14 $49


    sbc [hl]                                      ; $717a: $9e
    dec sp                                        ; $717b: $3b
    dec sp                                        ; $717c: $3b
    ld h, l                                       ; $717d: $65
    ld a, [c]                                     ; $717e: $f2
    ld a, [bc]                                    ; $717f: $0a
    ld c, c                                       ; $7180: $49
    jr nc, @-$33                                  ; $7181: $30 $cb

    ld a, [hl+]                                   ; $7183: $2a
    dec h                                         ; $7184: $25
    ld c, d                                       ; $7185: $4a
    sbc a                                         ; $7186: $9f
    ld a, a                                       ; $7187: $7f
    adc h                                         ; $7188: $8c
    ld l, e                                       ; $7189: $6b
    jp nc, Jump_000_1da0                          ; $718a: $d2 $a0 $1d

    sub a                                         ; $718d: $97
    ld [hl-], a                                   ; $718e: $32
    ld c, d                                       ; $718f: $4a
    sbc [hl]                                      ; $7190: $9e
    cp e                                          ; $7191: $bb
    ld h, $cd                                     ; $7192: $26 $cd
    and b                                         ; $7194: $a0
    and h                                         ; $7195: $a4
    adc c                                         ; $7196: $89
    ld l, h                                       ; $7197: $6c
    ld b, c                                       ; $7198: $41
    xor [hl]                                      ; $7199: $ae

jr_028_719a:
    xor l                                         ; $719a: $ad
    ld d, l                                       ; $719b: $55
    ld a, l                                       ; $719c: $7d
    sbc [hl]                                      ; $719d: $9e
    ld l, e                                       ; $719e: $6b
    ccf                                           ; $719f: $3f
    ld b, e                                       ; $71a0: $43
    dec sp                                        ; $71a1: $3b
    adc d                                         ; $71a2: $8a
    ret c                                         ; $71a3: $d8

    inc c                                         ; $71a4: $0c
    db $fc                                        ; $71a5: $fc
    cp h                                          ; $71a6: $bc
    db $fc                                        ; $71a7: $fc
    xor d                                         ; $71a8: $aa
    sbc b                                         ; $71a9: $98
    ld e, d                                       ; $71aa: $5a
    ld b, a                                       ; $71ab: $47
    db $eb                                        ; $71ac: $eb
    sub l                                         ; $71ad: $95
    ld h, [hl]                                    ; $71ae: $66
    sub l                                         ; $71af: $95
    jp nc, $f782                                  ; $71b0: $d2 $82 $f7

    ld e, l                                       ; $71b3: $5d
    ld a, [c]                                     ; $71b4: $f2
    sbc h                                         ; $71b5: $9c
    ld c, e                                       ; $71b6: $4b
    sbc d                                         ; $71b7: $9a
    halt                                          ; $71b8: $76
    db $fc                                        ; $71b9: $fc
    reti                                          ; $71ba: $d9


    add hl, hl                                    ; $71bb: $29
    ld l, e                                       ; $71bc: $6b
    rst $38                                       ; $71bd: $ff
    and l                                         ; $71be: $a5
    ld h, b                                       ; $71bf: $60
    ld l, c                                       ; $71c0: $69
    ld a, h                                       ; $71c1: $7c
    ld [$1ba3], a                                 ; $71c2: $ea $a3 $1b
    inc d                                         ; $71c5: $14
    ld b, a                                       ; $71c6: $47
    jr jr_028_7210                                ; $71c7: $18 $47

    dec de                                        ; $71c9: $1b
    ld e, a                                       ; $71ca: $5f
    dec bc                                        ; $71cb: $0b
    ld l, c                                       ; $71cc: $69
    rst $20                                       ; $71cd: $e7
    ld de, $1842                                  ; $71ce: $11 $42 $18
    sub [hl]                                      ; $71d1: $96
    pop bc                                        ; $71d2: $c1
    sub e                                         ; $71d3: $93
    xor a                                         ; $71d4: $af
    call c, $9e70                                 ; $71d5: $dc $70 $9e
    ld l, e                                       ; $71d8: $6b
    ccf                                           ; $71d9: $3f
    db $e3                                        ; $71da: $e3
    adc $33                                       ; $71db: $ce $33
    ld de, $9606                                  ; $71dd: $11 $06 $96
    pop af                                        ; $71e0: $f1
    ld c, c                                       ; $71e1: $49
    db $ec                                        ; $71e2: $ec
    ld h, l                                       ; $71e3: $65
    ld a, h                                       ; $71e4: $7c
    ld d, c                                       ; $71e5: $51
    sbc a                                         ; $71e6: $9f
    sub a                                         ; $71e7: $97
    dec bc                                        ; $71e8: $0b
    ld l, e                                       ; $71e9: $6b
    ld h, a                                       ; $71ea: $67
    sub $77                                       ; $71eb: $d6 $77
    ld h, c                                       ; $71ed: $61
    jp c, $e34e                                   ; $71ee: $da $4e $e3

    ld [$c703], sp                                ; $71f1: $08 $03 $c7
    ld h, a                                       ; $71f4: $67
    or d                                          ; $71f5: $b2
    pop af                                        ; $71f6: $f1
    add hl, hl                                    ; $71f7: $29
    ld [hl], l                                    ; $71f8: $75
    xor $4e                                       ; $71f9: $ee $4e
    ld d, $40                                     ; $71fb: $16 $40
    dec sp                                        ; $71fd: $3b
    dec h                                         ; $71fe: $25
    ld b, l                                       ; $71ff: $45
    ld l, $20                                     ; $7200: $2e $20
    inc c                                         ; $7202: $0c
    rst $00                                       ; $7203: $c7
    ld a, [hl+]                                   ; $7204: $2a
    ld hl, sp-$35                                 ; $7205: $f8 $cb
    jp c, Jump_028_5af2                           ; $7207: $da $f2 $5a

    rst $18                                       ; $720a: $df
    dec b                                         ; $720b: $05
    xor d                                         ; $720c: $aa
    ld sp, hl                                     ; $720d: $f9
    inc d                                         ; $720e: $14
    ld h, [hl]                                    ; $720f: $66

jr_028_7210:
    dec de                                        ; $7210: $1b
    sbc d                                         ; $7211: $9a
    jp nz, Jump_000_15ba                          ; $7212: $c2 $ba $15

    cp c                                          ; $7215: $b9
    ldh [$a1], a                                  ; $7216: $e0 $a1
    ld [bc], a                                    ; $7218: $02
    jp c, $3151                                   ; $7219: $da $51 $31

    adc [hl]                                      ; $721c: $8e
    rst $38                                       ; $721d: $ff
    or c                                          ; $721e: $b1
    call c, $8185                                 ; $721f: $dc $85 $81
    dec de                                        ; $7222: $1b
    sub $74                                       ; $7223: $d6 $74
    pop bc                                        ; $7225: $c1
    rst $00                                       ; $7226: $c7
    ld [hl], d                                    ; $7227: $72
    ret nc                                        ; $7228: $d0

    db $10                                        ; $7229: $10
    and [hl]                                      ; $722a: $a6
    ld a, [c]                                     ; $722b: $f2
    xor e                                         ; $722c: $ab
    ld [hl-], a                                   ; $722d: $32
    cp h                                          ; $722e: $bc
    inc d                                         ; $722f: $14
    call z, $b874                                 ; $7230: $cc $74 $b8
    add e                                         ; $7233: $83
    inc e                                         ; $7234: $1c
    rst $38                                       ; $7235: $ff
    and e                                         ; $7236: $a3
    ld a, a                                       ; $7237: $7f
    ld [hl], $cf                                  ; $7238: $36 $cf
    add c                                         ; $723a: $81
    dec de                                        ; $723b: $1b
    sub $74                                       ; $723c: $d6 $74
    ld e, c                                       ; $723e: $59
    rst $08                                       ; $723f: $cf
    ld e, a                                       ; $7240: $5f
    ld d, c                                       ; $7241: $51
    db $eb                                        ; $7242: $eb
    rst $08                                       ; $7243: $cf
    ld [hl], e                                    ; $7244: $73
    dec e                                         ; $7245: $1d
    dec b                                         ; $7246: $05
    sbc b                                         ; $7247: $98
    rst $20                                       ; $7248: $e7
    sub h                                         ; $7249: $94
    ld e, c                                       ; $724a: $59
    sub l                                         ; $724b: $95
    xor d                                         ; $724c: $aa
    sbc a                                         ; $724d: $9f
    rst $20                                       ; $724e: $e7
    cp h                                          ; $724f: $bc
    db $fc                                        ; $7250: $fc
    ldh [$ab], a                                  ; $7251: $e0 $ab
    inc h                                         ; $7253: $24
    or [hl]                                       ; $7254: $b6
    and $55                                       ; $7255: $e6 $55
    db $10                                        ; $7257: $10
    ld b, $ad                                     ; $7258: $06 $ad
    ld a, [de]                                    ; $725a: $1a
    ret z                                         ; $725b: $c8

    ld h, l                                       ; $725c: $65
    ld e, l                                       ; $725d: $5d
    sub $b3                                       ; $725e: $d6 $b3
    xor b                                         ; $7260: $a8
    ld c, a                                       ; $7261: $4f
    push hl                                       ; $7262: $e5
    rst $10                                       ; $7263: $d7
    and h                                         ; $7264: $a4
    add hl, de                                    ; $7265: $19
    bit 1, e                                      ; $7266: $cb $4b
    pop bc                                        ; $7268: $c1
    jp z, Jump_028_77cb                           ; $7269: $ca $cb $77

    push bc                                       ; $726c: $c5
    rst $00                                       ; $726d: $c7
    ld a, [bc]                                    ; $726e: $0a
    ld b, d                                       ; $726f: $42
    ret z                                         ; $7270: $c8

    add h                                         ; $7271: $84
    ld [$f3a1], sp                                ; $7272: $08 $a1 $f3
    inc c                                         ; $7275: $0c
    ld hl, sp+$62                                 ; $7276: $f8 $62
    ld h, [hl]                                    ; $7278: $66
    db $fd                                        ; $7279: $fd
    ld d, d                                       ; $727a: $52
    dec c                                         ; $727b: $0d
    xor l                                         ; $727c: $ad
    rst $10                                       ; $727d: $d7
    sub a                                         ; $727e: $97
    xor c                                         ; $727f: $a9
    inc a                                         ; $7280: $3c
    push de                                       ; $7281: $d5
    ld a, h                                       ; $7282: $7c
    ldh [$37], a                                  ; $7283: $e0 $37
    add $c9                                       ; $7285: $c6 $c9
    jp Jump_028_54ab                              ; $7287: $c3 $ab $54


    push hl                                       ; $728a: $e5
    ld d, d                                       ; $728b: $52
    ld l, l                                       ; $728c: $6d
    and a                                         ; $728d: $a7
    call c, $a32a                                 ; $728e: $dc $2a $a3
    jp nz, $8b8e                                  ; $7291: $c2 $8e $8b

    ld a, [de]                                    ; $7294: $1a
    ld a, [hl]                                    ; $7295: $7e
    db $e4                                        ; $7296: $e4
    ld c, [hl]                                    ; $7297: $4e
    push hl                                       ; $7298: $e5
    rst $10                                       ; $7299: $d7
    ld a, h                                       ; $729a: $7c
    jp hl                                         ; $729b: $e9


    adc d                                         ; $729c: $8a
    ld bc, $7f3d                                  ; $729d: $01 $3d $7f
    halt                                          ; $72a0: $76
    ld a, [de]                                    ; $72a1: $1a
    ld h, d                                       ; $72a2: $62
    ld c, e                                       ; $72a3: $4b
    db $e3                                        ; $72a4: $e3
    db $e3                                        ; $72a5: $e3
    ld c, e                                       ; $72a6: $4b
    xor [hl]                                      ; $72a7: $ae
    db $fc                                        ; $72a8: $fc
    ld l, $70                                     ; $72a9: $2e $70

Call_028_72ab:
    and a                                         ; $72ab: $a7
    call nz, $ffc6                                ; $72ac: $c4 $c6 $ff
    ld [$fc94], a                                 ; $72af: $ea $94 $fc
    cp h                                          ; $72b2: $bc
    xor b                                         ; $72b3: $a8
    rst $28                                       ; $72b4: $ef
    cp b                                          ; $72b5: $b8
    ld l, b                                       ; $72b6: $68
    ld l, h                                       ; $72b7: $6c
    cp e                                          ; $72b8: $bb
    reti                                          ; $72b9: $d9


    add l                                         ; $72ba: $85
    dec b                                         ; $72bb: $05
    ld b, [hl]                                    ; $72bc: $46
    add l                                         ; $72bd: $85
    ld e, l                                       ; $72be: $5d
    ld a, [bc]                                    ; $72bf: $0a
    and $e5                                       ; $72c0: $e6 $e5
    rst $10                                       ; $72c2: $d7
    cp l                                          ; $72c3: $bd
    call c, $9098                                 ; $72c4: $dc $98 $90
    sbc l                                         ; $72c7: $9d
    ld a, [c]                                     ; $72c8: $f2
    ld d, d                                       ; $72c9: $52
    add e                                         ; $72ca: $83
    or l                                          ; $72cb: $b5
    ld a, b                                       ; $72cc: $78
    ld [hl+], a                                   ; $72cd: $22
    add h                                         ; $72ce: $84
    jr nc, jr_028_72fe                            ; $72cf: $30 $2d

    and l                                         ; $72d1: $a5
    ld [hl], b                                    ; $72d2: $70
    rst $00                                       ; $72d3: $c7
    sub d                                         ; $72d4: $92
    ld l, d                                       ; $72d5: $6a
    cp [hl]                                       ; $72d6: $be
    jr nz, @+$09                                  ; $72d7: $20 $07

    jp c, $aa5c                                   ; $72d9: $da $5c $aa

    call $fa8b                                    ; $72dc: $cd $8b $fa
    jp nc, $62f8                                  ; $72df: $d2 $f8 $62

    ld a, [de]                                    ; $72e2: $1a
    sub $05                                       ; $72e3: $d6 $05
    inc bc                                        ; $72e5: $03
    dec a                                         ; $72e6: $3d
    ld c, e                                       ; $72e7: $4b
    xor [hl]                                      ; $72e8: $ae
    db $fd                                        ; $72e9: $fd
    ld [hl], b                                    ; $72ea: $70
    reti                                          ; $72eb: $d9


    jp $8b8e                                      ; $72ec: $c3 $8e $8b


    add $b6                                       ; $72ef: $c6 $b6
    sbc e                                         ; $72f1: $9b
    ld e, l                                       ; $72f2: $5d
    ld e, b                                       ; $72f3: $58
    ld h, b                                       ; $72f4: $60
    ld d, h                                       ; $72f5: $54
    ret c                                         ; $72f6: $d8

    and l                                         ; $72f7: $a5
    ld h, b                                       ; $72f8: $60
    ld e, [hl]                                    ; $72f9: $5e
    ld a, [hl]                                    ; $72fa: $7e
    dec l                                         ; $72fb: $2d
    sbc [hl]                                      ; $72fc: $9e
    db $f4                                        ; $72fd: $f4

jr_028_72fe:
    ld e, l                                       ; $72fe: $5d
    ld sp, $a52d                                  ; $72ff: $31 $2d $a5
    ld [hl], h                                    ; $7302: $74

jr_028_7303:
    ld e, c                                       ; $7303: $59
    xor a                                         ; $7304: $af
    cpl                                           ; $7305: $2f
    and e                                         ; $7306: $a3
    or a                                          ; $7307: $b7
    cp [hl]                                       ; $7308: $be
    xor h                                         ; $7309: $ac
    ld c, [hl]                                    ; $730a: $4e
    ret                                           ; $730b: $c9


    adc a                                         ; $730c: $8f
    cpl                                           ; $730d: $2f
    ld e, c                                       ; $730e: $59
    add e                                         ; $730f: $83
    push bc                                       ; $7310: $c5
    dec bc                                        ; $7311: $0b
    cp $74                                        ; $7312: $fe $74
    xor c                                         ; $7314: $a9
    ld [hl], $95                                  ; $7315: $36 $95
    inc [hl]                                      ; $7317: $34
    call nz, $5e56                                ; $7318: $c4 $56 $5e
    ld e, $ad                                     ; $731b: $1e $ad
    ld e, e                                       ; $731d: $5b
    add [hl]                                      ; $731e: $86
    ccf                                           ; $731f: $3f
    and l                                         ; $7320: $a5
    jp c, Jump_028_635c                           ; $7321: $da $5c $63

    ld a, l                                       ; $7324: $7d
    sbc [hl]                                      ; $7325: $9e
    dec bc                                        ; $7326: $0b
    ld a, a                                       ; $7327: $7f
    ld d, c                                       ; $7328: $51
    db $fd                                        ; $7329: $fd
    dec b                                         ; $732a: $05
    ld h, c                                       ; $732b: $61
    dec a                                         ; $732c: $3d
    ld c, e                                       ; $732d: $4b
    inc sp                                        ; $732e: $33
    sub [hl]                                      ; $732f: $96
    ld l, e                                       ; $7330: $6b
    jp nc, $cbcc                                  ; $7331: $d2 $cc $cb

    and l                                         ; $7334: $a5
    ld a, [$355a]                                 ; $7335: $fa $5a $35
    sub b                                         ; $7338: $90
    set 0, [hl]                                   ; $7339: $cb $c6
    dec hl                                        ; $733b: $2b
    inc l                                         ; $733c: $2c
    xor l                                         ; $733d: $ad
    cpl                                           ; $733e: $2f
    cp e                                          ; $733f: $bb
    inc [hl]                                      ; $7340: $34
    cpl                                           ; $7341: $2f
    ccf                                           ; $7342: $3f
    ld h, $1a                                     ; $7343: $26 $1a
    inc h                                         ; $7345: $24
    dec c                                         ; $7346: $0d
    cp [hl]                                       ; $7347: $be
    ld a, [c]                                     ; $7348: $f2
    sbc e                                         ; $7349: $9b
    or h                                          ; $734a: $b4
    or h                                          ; $734b: $b4
    rst $20                                       ; $734c: $e7
    push hl                                       ; $734d: $e5
    rla                                           ; $734e: $17
    ld l, a                                       ; $734f: $6f
    ld e, e                                       ; $7350: $5b
    ld d, h                                       ; $7351: $54
    sbc d                                         ; $7352: $9a
    xor [hl]                                      ; $7353: $ae
    jr jr_028_7303                                ; $7354: $18 $ad

    ccf                                           ; $7356: $3f
    rst $08                                       ; $7357: $cf
    ret z                                         ; $7358: $c8

    ld d, $fe                                     ; $7359: $16 $fe
    jp c, $a76f                                   ; $735b: $da $6f $a7

    db $fc                                        ; $735e: $fc
    cp h                                          ; $735f: $bc
    xor b                                         ; $7360: $a8
    xor a                                         ; $7361: $af
    ld a, h                                       ; $7362: $7c
    dec c                                         ; $7363: $0d
    and [hl]                                      ; $7364: $a6
    sub c                                         ; $7365: $91
    rst $10                                       ; $7366: $d7

Jump_028_7367:
    ld b, $c6                                     ; $7367: $06 $c6
    dec hl                                        ; $7369: $2b
    ld sp, hl                                     ; $736a: $f9
    or e                                          ; $736b: $b3
    jp hl                                         ; $736c: $e9


    sbc b                                         ; $736d: $98
    ld l, b                                       ; $736e: $68
    sub b                                         ; $736f: $90
    add h                                         ; $7370: $84
    jr nc, jr_028_73a0                            ; $7371: $30 $2d

    and l                                         ; $7373: $a5
    ld [hl], h                                    ; $7374: $74
    reti                                          ; $7375: $d9


    ret                                           ; $7376: $c9


    ld a, [de]                                    ; $7377: $1a
    db $ed                                        ; $7378: $ed
    ld l, h                                       ; $7379: $6c
    ld l, d                                       ; $737a: $6a
    or b                                          ; $737b: $b0
    ld a, b                                       ; $737c: $78
    pop bc                                        ; $737d: $c1
    sbc a                                         ; $737e: $9f
    ld l, $05                                     ; $737f: $2e $05
    ld e, l                                       ; $7381: $5d
    halt                                          ; $7382: $76
    jp nc, $0d7b                                  ; $7383: $d2 $7b $0d

    ld d, $e4                                     ; $7386: $16 $e4
    inc a                                         ; $7388: $3c
    rst $10                                       ; $7389: $d7
    xor d                                         ; $738a: $aa
    add c                                         ; $738b: $81
    ld e, h                                       ; $738c: $5c
    ld d, [hl]                                    ; $738d: $56
    add e                                         ; $738e: $83
    ld d, c                                       ; $738f: $51
    ld a, [c]                                     ; $7390: $f2
    ld [$ad03], sp                                ; $7391: $08 $03 $ad
    ld h, c                                       ; $7394: $61
    adc b                                         ; $7395: $88
    db $10                                        ; $7396: $10
    jp nz, $f147                                  ; $7397: $c2 $47 $f1

    dec [hl]                                      ; $739a: $35
    cp c                                          ; $739b: $b9
    ld b, c                                       ; $739c: $41
    ld [hl], c                                    ; $739d: $71
    xor $fc                                       ; $739e: $ee $fc

jr_028_73a0:
    ld h, l                                       ; $73a0: $65
    ld c, d                                       ; $73a1: $4a
    ret nz                                        ; $73a2: $c0

    cp a                                          ; $73a3: $bf
    xor h                                         ; $73a4: $ac
    ld c, c                                       ; $73a5: $49
    inc hl                                        ; $73a6: $23
    dec sp                                        ; $73a7: $3b
    rst $18                                       ; $73a8: $df
    inc a                                         ; $73a9: $3c
    ld hl, sp+$4d                                 ; $73aa: $f8 $4d

Jump_028_73ac:
    ld [c], a                                     ; $73ac: $e2
    ld c, $32                                     ; $73ad: $0e $32
    db $fc                                        ; $73af: $fc
    and l                                         ; $73b0: $a5
    dec a                                         ; $73b1: $3d
    cpl                                           ; $73b2: $2f
    ccf                                           ; $73b3: $3f
    ld a, a                                       ; $73b4: $7f
    xor l                                         ; $73b5: $ad
    jp z, $ac0b                                   ; $73b6: $ca $0b $ac

    ld d, d                                       ; $73b9: $52
    ldh a, [$3d]                                  ; $73ba: $f0 $3d
    ld d, l                                       ; $73bc: $55
    ld b, l                                       ; $73bd: $45
    ret                                           ; $73be: $c9


    jp $8727                                      ; $73bf: $c3 $27 $87


    ld a, c                                       ; $73c2: $79
    ld l, $30                                     ; $73c3: $2e $30
    ld a, [hl+]                                   ; $73c5: $2a
    ld l, h                                       ; $73c6: $6c
    ld e, [hl]                                    ; $73c7: $5e
    ld a, [hl]                                    ; $73c8: $7e
    ldh [rOBP1], a                                ; $73c9: $e0 $49
    cp a                                          ; $73cb: $bf

Jump_028_73cc:
    cp [hl]                                       ; $73cc: $be
    ld [hl], a                                    ; $73cd: $77
    ld [hl], d                                    ; $73ce: $72
    ld [hl], l                                    ; $73cf: $75
    ld a, h                                       ; $73d0: $7c
    sub d                                         ; $73d1: $92
    ld b, $1a                                     ; $73d2: $06 $1a
    inc hl                                        ; $73d4: $23
    ld [hl], a                                    ; $73d5: $77
    rst $00                                       ; $73d6: $c7
    push bc                                       ; $73d7: $c5
    db $eb                                        ; $73d8: $eb
    db $fc                                        ; $73d9: $fc
    xor l                                         ; $73da: $ad
    ld [$b5dc], a                                 ; $73db: $ea $dc $b5
    ld [hl], h                                    ; $73de: $74
    inc h                                         ; $73df: $24
    adc l                                         ; $73e0: $8d
    ld [hl], e                                    ; $73e1: $73
    ld [hl], a                                    ; $73e2: $77
    sbc d                                         ; $73e3: $9a
    cp c                                          ; $73e4: $b9
    ld [hl+], a                                   ; $73e5: $22
    rra                                           ; $73e6: $1f
    inc hl                                        ; $73e7: $23
    ld [hl], a                                    ; $73e8: $77
    ld c, d                                       ; $73e9: $4a
    ld l, h                                       ; $73ea: $6c
    dec l                                         ; $73eb: $2d
    and h                                         ; $73ec: $a4
    sbc l                                         ; $73ed: $9d
    ld b, a                                       ; $73ee: $47
    jr jr_028_741e                                ; $73ef: $18 $2d

    and h                                         ; $73f1: $a4
    sbc l                                         ; $73f2: $9d
    rst $28                                       ; $73f3: $ef
    add d                                         ; $73f4: $82
    ld bc, $a42d                                  ; $73f5: $01 $2d $a4
    sbc l                                         ; $73f8: $9d
    ld e, a                                       ; $73f9: $5f
    ld sp, hl                                     ; $73fa: $f9
    ret c                                         ; $73fb: $d8

    ld a, c                                       ; $73fc: $79
    or [hl]                                       ; $73fd: $b6
    adc [hl]                                      ; $73fe: $8e
    and h                                         ; $73ff: $a4
    ld a, a                                       ; $7400: $7f
    push hl                                       ; $7401: $e5
    di                                            ; $7402: $f3
    ld a, [c]                                     ; $7403: $f2
    inc bc                                        ; $7404: $03

jr_028_7405:
    ld c, a                                       ; $7405: $4f
    ld a, d                                       ; $7406: $7a
    xor $de                                       ; $7407: $ee $de
    ld a, [$2f34]                                 ; $7409: $fa $34 $2f
    ld l, c                                       ; $740c: $69
    add d                                         ; $740d: $82
    or d                                          ; $740e: $b2
    and $65                                       ; $740f: $e6 $65
    ld e, [hl]                                    ; $7411: $5e
    ld l, $d5                                     ; $7412: $2e $d5
    ld d, a                                       ; $7414: $57
    cp [hl]                                       ; $7415: $be
    ld b, $0b                                     ; $7416: $06 $0b
    ld a, [c]                                     ; $7418: $f2
    ld d, d                                       ; $7419: $52
    jr nc, jr_028_749b                            ; $741a: $30 $7f

    sbc c                                         ; $741c: $99
    ld c, e                                       ; $741d: $4b

jr_028_741e:
    inc sp                                        ; $741e: $33
    ld a, a                                       ; $741f: $7f
    add hl, de                                    ; $7420: $19
    ld hl, sp+$6b                                 ; $7421: $f8 $6b
    call c, $8475                                 ; $7423: $dc $75 $84
    ld bc, $a42d                                  ; $7426: $01 $2d $a4
    sbc l                                         ; $7429: $9d
    rra                                           ; $742a: $1f
    sbc a                                         ; $742b: $9f
    ld d, h                                       ; $742c: $54
    di                                            ; $742d: $f3
    cp c                                          ; $742e: $b9
    inc [hl]                                      ; $742f: $34
    inc sp                                        ; $7430: $33
    db $e4                                        ; $7431: $e4
    scf                                           ; $7432: $37
    xor [hl]                                      ; $7433: $ae
    db $fc                                        ; $7434: $fc
    ld [c], a                                     ; $7435: $e2
    xor e                                         ; $7436: $ab
    db $10                                        ; $7437: $10
    xor h                                         ; $7438: $ac

jr_028_7439:
    inc h                                         ; $7439: $24
    ccf                                           ; $743a: $3f
    rst $08                                       ; $743b: $cf
    dec b                                         ; $743c: $05
    rst $28                                       ; $743d: $ef
    db $eb                                        ; $743e: $eb
    jr z, jr_028_7439                             ; $743f: $28 $f8

    adc [hl]                                      ; $7441: $8e
    adc e                                         ; $7442: $8b
    add $b6                                       ; $7443: $c6 $b6
    dec de                                        ; $7445: $1b
    add h                                         ; $7446: $84
    ld bc, $4b3d                                  ; $7447: $01 $3d $4b
    or e                                          ; $744a: $b3
    dec bc                                        ; $744b: $0b
    cp e                                          ; $744c: $bb
    ld a, $c8                                     ; $744d: $3e $c8
    sub l                                         ; $744f: $95
    db $f4                                        ; $7450: $f4
    ld e, l                                       ; $7451: $5d
    ld e, d                                       ; $7452: $5a
    ld a, c                                       ; $7453: $79
    ld sp, hl                                     ; $7454: $f9
    xor [hl]                                      ; $7455: $ae
    jr jr_028_7405                                ; $7456: $18 $ad

    ld a, [de]                                    ; $7458: $1a
    ret z                                         ; $7459: $c8

    ld h, l                                       ; $745a: $65
    ld [$be21], sp                                ; $745b: $08 $21 $be
    xor b                                         ; $745e: $a8
    rst $10                                       ; $745f: $d7
    ld h, b                                       ; $7460: $60
    ld e, [hl]                                    ; $7461: $5e
    ld l, $74                                     ; $7462: $2e $74
    push bc                                       ; $7464: $c5
    dec a                                         ; $7465: $3d
    adc d                                         ; $7466: $8a
    ld a, d                                       ; $7467: $7a
    rst $10                                       ; $7468: $d7
    dec e                                         ; $7469: $1d
    dec hl                                        ; $746a: $2b
    call c, $1099                                 ; $746b: $dc $99 $10
    ld hl, $0184                                  ; $746e: $21 $84 $01
    ld d, $af                                     ; $7471: $16 $af
    pop bc                                        ; $7473: $c1
    ld [hl], h                                    ; $7474: $74
    ld c, h                                       ; $7475: $4c
    inc [hl]                                      ; $7476: $34
    ld c, b                                       ; $7477: $48
    xor d                                         ; $7478: $aa
    pop bc                                        ; $7479: $c1
    ld a, $08                                     ; $747a: $3e $08
    cp d                                          ; $747c: $ba
    xor h                                         ; $747d: $ac
    ld h, a                                       ; $747e: $67
    ld a, c                                       ; $747f: $79
    ld sp, hl                                     ; $7480: $f9
    or c                                          ; $7481: $b1
    set 2, [hl]                                   ; $7482: $cb $d6
    and h                                         ; $7484: $a4
    ld e, c                                       ; $7485: $59
    ldh a, [$be]                                  ; $7486: $f0 $be
    db $eb                                        ; $7488: $eb
    ld e, l                                       ; $7489: $5d
    ld sp, $f196                                  ; $748a: $31 $96 $f1
    ld c, c                                       ; $748d: $49
    cp e                                          ; $748e: $bb
    ld a, $5b                                     ; $748f: $3e $5b
    ld [hl-], a                                   ; $7491: $32
    sbc h                                         ; $7492: $9c
    ld c, $5c                                     ; $7493: $0e $5c
    sub h                                         ; $7495: $94
    add d                                         ; $7496: $82
    rla                                           ; $7497: $17
    xor $f8                                       ; $7498: $ee $f8
    sub d                                         ; $749a: $92

jr_028_749b:
    add e                                         ; $749b: $83
    rst $38                                       ; $749c: $ff
    ldh a, [$d9]                                  ; $749d: $f0 $d9
    add d                                         ; $749f: $82
    xor b                                         ; $74a0: $a8
    ld l, h                                       ; $74a1: $6c
    sbc [hl]                                      ; $74a2: $9e
    ld l, e                                       ; $74a3: $6b
    rst $38                                       ; $74a4: $ff
    db $e4                                        ; $74a5: $e4
    or d                                          ; $74a6: $b2
    and l                                         ; $74a7: $a5
    cp l                                          ; $74a8: $bd
    db $eb                                        ; $74a9: $eb
    ld l, b                                       ; $74aa: $68
    sub [hl]                                      ; $74ab: $96
    sbc d                                         ; $74ac: $9a
    push af                                       ; $74ad: $f5
    rst $10                                       ; $74ae: $d7
    cp $a7                                        ; $74af: $fe $a7
    ret                                           ; $74b1: $c9


    dec hl                                        ; $74b2: $2b
    cp e                                          ; $74b3: $bb
    ld d, h                                       ; $74b4: $54
    sbc e                                         ; $74b5: $9b
    jp hl                                         ; $74b6: $e9


    inc l                                         ; $74b7: $2c
    ld l, c                                       ; $74b8: $69
    xor [hl]                                      ; $74b9: $ae
    push af                                       ; $74ba: $f5
    ld c, e                                       ; $74bb: $4b
    or l                                          ; $74bc: $b5
    ld d, l                                       ; $74bd: $55
    ld a, [hl+]                                   ; $74be: $2a
    cp a                                          ; $74bf: $bf
    or h                                          ; $74c0: $b4
    ld [hl], a                                    ; $74c1: $77
    dec e                                         ; $74c2: $1d
    db $ed                                        ; $74c3: $ed
    sub h                                         ; $74c4: $94
    inc d                                         ; $74c5: $14
    cp $83                                        ; $74c6: $fe $83
    xor e                                         ; $74c8: $ab
    or h                                          ; $74c9: $b4
    db $d3                                        ; $74ca: $d3
    cpl                                           ; $74cb: $2f
    dec bc                                        ; $74cc: $0b
    cp [hl]                                       ; $74cd: $be
    xor l                                         ; $74ce: $ad
    ld d, l                                       ; $74cf: $55
    sbc l                                         ; $74d0: $9d
    dec sp                                        ; $74d1: $3b
    db $eb                                        ; $74d2: $eb
    ld c, e                                       ; $74d3: $4b
    inc sp                                        ; $74d4: $33
    ld d, c                                       ; $74d5: $51
    ld a, c                                       ; $74d6: $79
    add h                                         ; $74d7: $84
    ld bc, $ca3d                                  ; $74d8: $01 $3d $ca
    rst $28                                       ; $74db: $ef
    add e                                         ; $74dc: $83
    ld h, b                                       ; $74dd: $60

jr_028_74de:
    rla                                           ; $74de: $17
    ld d, [hl]                                    ; $74df: $56
    call nc, Call_028_72ab                        ; $74e0: $d4 $ab $72
    add hl, hl                                    ; $74e3: $29
    add sp, -$7e                                  ; $74e4: $e8 $82
    ld bc, $7996                                  ; $74e6: $01 $96 $79
    cp c                                          ; $74e9: $b9
    ld d, h                                       ; $74ea: $54
    sbc a                                         ; $74eb: $9f
    ld h, l                                       ; $74ec: $65
    db $fc                                        ; $74ed: $fc
    adc l                                         ; $74ee: $8d
    ld [hl], c                                    ; $74ef: $71
    and h                                         ; $74f0: $a4
    pop hl                                        ; $74f1: $e1
    xor a                                         ; $74f2: $af
    call c, $a770                                 ; $74f3: $dc $70 $a7
    and h                                         ; $74f6: $a4
    or h                                          ; $74f7: $b4
    ld e, a                                       ; $74f8: $5f
    inc e                                         ; $74f9: $1c
    ld h, c                                       ; $74fa: $61
    and a                                         ; $74fb: $a7
    and h                                         ; $74fc: $a4
    or h                                          ; $74fd: $b4
    ld e, a                                       ; $74fe: $5f
    cp h                                          ; $74ff: $bc
    dec hl                                        ; $7500: $2b
    ld b, $3d                                     ; $7501: $06 $3d
    ld a, a                                       ; $7503: $7f
    ld b, l                                       ; $7504: $45
    xor l                                         ; $7505: $ad
    ccf                                           ; $7506: $3f
    rst $08                                       ; $7507: $cf
    or l                                          ; $7508: $b5
    ld a, a                                       ; $7509: $7f
    sub l                                         ; $750a: $95
    jp z, $26db                                   ; $750b: $ca $db $26

    ld [hl], d                                    ; $750e: $72
    rst $10                                       ; $750f: $d7
    xor d                                         ; $7510: $aa
    add c                                         ; $7511: $81
    ld e, h                                       ; $7512: $5c
    add [hl]                                      ; $7513: $86
    ld h, [hl]                                    ; $7514: $66
    sbc c                                         ; $7515: $99
    sub a                                         ; $7516: $97
    ld c, e                                       ; $7517: $4b
    push af                                       ; $7518: $f5
    sbc l                                         ; $7519: $9d
    xor h                                         ; $751a: $ac
    pop de                                        ; $751b: $d1
    adc $66                                       ; $751c: $ce $66
    pop hl                                        ; $751e: $e1
    dec c                                         ; $751f: $0d
    adc d                                         ; $7520: $8a
    xor a                                         ; $7521: $af
    ld c, [hl]                                    ; $7522: $4e
    ret                                           ; $7523: $c9


    adc a                                         ; $7524: $8f
    cpl                                           ; $7525: $2f
    ld [$d26b], a                                 ; $7526: $ea $6b $d2
    call nc, $c7e4                                ; $7529: $d4 $e4 $c7
    ld a, [c]                                     ; $752c: $f2
    ld d, d                                       ; $752d: $52
    add b                                         ; $752e: $80
    jr nc, jr_028_74de                            ; $752f: $30 $ad

    ccf                                           ; $7531: $3f
    adc l                                         ; $7532: $8d
    ld h, c                                       ; $7533: $61
    add d                                         ; $7534: $82
    xor a                                         ; $7535: $af
    ld a, l                                       ; $7536: $7d
    ld a, l                                       ; $7537: $7d
    ld e, [hl]                                    ; $7538: $5e
    inc h                                         ; $7539: $24
    ld c, l                                       ; $753a: $4d
    ld d, b                                       ; $753b: $50
    ld d, $36                                     ; $753c: $16 $36
    ld l, e                                       ; $753e: $6b
    ld h, a                                       ; $753f: $67
    ld a, [$33ce]                                 ; $7540: $fa $ce $33
    ldh [$a3], a                                  ; $7543: $e0 $a3
    db $e4                                        ; $7545: $e4
    pop de                                        ; $7546: $d1
    ld a, d                                       ; $7547: $7a
    sub h                                         ; $7548: $94
    ld e, a                                       ; $7549: $5f
    daa                                           ; $754a: $27
    ld d, e                                       ; $754b: $53
    ld d, $6f                                     ; $754c: $16 $6f
    dec l                                         ; $754e: $2d
    adc $fe                                       ; $754f: $ce $fe
    jr jr_028_75c8                                ; $7551: $18 $75

    and c                                         ; $7553: $a1
    ld bc, $fb5f                                  ; $7554: $01 $5f $fb
    ld d, a                                       ; $7557: $57
    inc c                                         ; $7558: $0c
    dec b                                         ; $7559: $05
    jp nc, $0c20                                  ; $755a: $d2 $20 $0c

    dec a                                         ; $755d: $3d
    adc e                                         ; $755e: $8b
    ld a, [$3e58]                                 ; $755f: $fa $58 $3e
    xor h                                         ; $7562: $ac
    db $fc                                        ; $7563: $fc
    ld [c], a                                     ; $7564: $e2
    xor l                                         ; $7565: $ad
    rst $38                                       ; $7566: $ff
    inc a                                         ; $7567: $3c
    rst $30                                       ; $7568: $f7
    ld [$d75d], a                                 ; $7569: $ea $5d $d7
    ld [de], a                                    ; $756c: $12
    dec de                                        ; $756d: $1b
    cpl                                           ; $756e: $2f
    cpl                                           ; $756f: $2f
    sub a                                         ; $7570: $97
    add b                                         ; $7571: $80
    dec sp                                        ; $7572: $3b
    bit 1, d                                      ; $7573: $cb $4a
    halt                                          ; $7575: $76
    ld e, $61                                     ; $7576: $1e $61
    and a                                         ; $7578: $a7
    ld l, b                                       ; $7579: $68
    pop hl                                        ; $757a: $e1
    adc $cb                                       ; $757b: $ce $cb
    scf                                           ; $757d: $37
    dec [hl]                                      ; $757e: $35
    or [hl]                                       ; $757f: $b6
    ld d, b                                       ; $7580: $50
    db $eb                                        ; $7581: $eb
    cp a                                          ; $7582: $bf
    ld [hl], d                                    ; $7583: $72
    jp $adc1                                      ; $7584: $c3 $c1 $ad


    ld [$3d68], a                                 ; $7587: $ea $68 $3d
    jp z, $9daf                                   ; $758a: $ca $af $9d

    ld e, c                                       ; $758d: $59
    add a                                         ; $758e: $87
    ld e, c                                       ; $758f: $59
    ld h, $af                                     ; $7590: $26 $af
    ld l, h                                       ; $7592: $6c
    and b                                         ; $7593: $a0
    call Call_000_2fca                            ; $7594: $cd $ca $2f
    sbc $fa                                       ; $7597: $de $fa
    jp $72aa                                      ; $7599: $c3 $aa $72


    xor e                                         ; $759c: $ab
    ld a, [$a013]                                 ; $759d: $fa $13 $a0
    ld [hl], l                                    ; $75a0: $75
    ld c, e                                       ; $75a1: $4b
    inc de                                        ; $75a2: $13
    reti                                          ; $75a3: $d9


    sbc d                                         ; $75a4: $9a

Call_028_75a5:
    cpl                                           ; $75a5: $2f
    dec bc                                        ; $75a6: $0b
    ld [hl], d                                    ; $75a7: $72
    ld l, c                                       ; $75a8: $69
    ld a, h                                       ; $75a9: $7c
    ld c, d                                       ; $75aa: $4a
    ld l, h                                       ; $75ab: $6c
    or $7b                                        ; $75ac: $f6 $7b
    ld d, l                                       ; $75ae: $55
    ld d, $fe                                     ; $75af: $16 $fe
    ld c, $5a                                     ; $75b1: $0e $5a
    jp c, $f2f3                                   ; $75b3: $da $f3 $f2

    ld h, c                                       ; $75b6: $61
    rst $10                                       ; $75b7: $d7
    or l                                          ; $75b8: $b5
    ld h, h                                       ; $75b9: $64
    ld hl, sp+$7e                                 ; $75ba: $f8 $7e
    jp $7987                                      ; $75bc: $c3 $87 $79


    ld a, c                                       ; $75bf: $79
    ld sp, hl                                     ; $75c0: $f9
    ld a, [de]                                    ; $75c1: $1a
    adc h                                         ; $75c2: $8c
    cp a                                          ; $75c3: $bf
    sub c                                         ; $75c4: $91
    dec l                                         ; $75c5: $2d
    jp hl                                         ; $75c6: $e9


    ld h, c                                       ; $75c7: $61

jr_028_75c8:
    ld c, c                                       ; $75c8: $49
    di                                            ; $75c9: $f3
    ld a, [c]                                     ; $75ca: $f2
    dec bc                                        ; $75cb: $0b
    inc h                                         ; $75cc: $24
    dec c                                         ; $75cd: $0d
    ld sp, $1840                                  ; $75ce: $31 $40 $18
    dec l                                         ; $75d1: $2d
    ld b, [hl]                                    ; $75d2: $46
    ld e, $ad                                     ; $75d3: $1e $ad
    dec [hl]                                      ; $75d5: $35
    ld sp, hl                                     ; $75d6: $f9
    dec d                                         ; $75d7: $15
    dec d                                         ; $75d8: $15
    or [hl]                                       ; $75d9: $b6
    ld a, [hl+]                                   ; $75da: $2a
    ld c, l                                       ; $75db: $4d
    ld h, h                                       ; $75dc: $64
    xor e                                         ; $75dd: $ab
    call nc, Call_028_72ab                        ; $75de: $d4 $ab $72
    add hl, hl                                    ; $75e1: $29
    ld e, b                                       ; $75e2: $58
    ld d, l                                       ; $75e3: $55
    ld l, [hl]                                    ; $75e4: $6e
    ld d, l                                       ; $75e5: $55
    ld a, a                                       ; $75e6: $7f
    add d                                         ; $75e7: $82
    or l                                          ; $75e8: $b5
    cp a                                          ; $75e9: $bf
    dec hl                                        ; $75ea: $2b
    ld b, $ad                                     ; $75eb: $06 $ad
    cpl                                           ; $75ed: $2f
    ccf                                           ; $75ee: $3f
    sub l                                         ; $75ef: $95
    sbc a                                         ; $75f0: $9f
    sub a                                         ; $75f1: $97
    ld e, a                                       ; $75f2: $5f
    ld d, l                                       ; $75f3: $55
    ld l, [hl]                                    ; $75f4: $6e
    ld d, l                                       ; $75f5: $55
    ld a, a                                       ; $75f6: $7f
    ld [bc], a                                    ; $75f7: $02
    xor $5a                                       ; $75f8: $ee $5a
    dec [hl]                                      ; $75fa: $35
    sub b                                         ; $75fb: $90
    rl b                                          ; $75fc: $cb $10
    ld b, $3d                                     ; $75fe: $06 $3d
    adc d                                         ; $7600: $8a
    ld d, d                                       ; $7601: $52
    dec e                                         ; $7602: $1d

jr_028_7603:
    cp b                                          ; $7603: $b8
    ld l, e                                       ; $7604: $6b
    ld d, l                                       ; $7605: $55
    sub c                                         ; $7606: $91
    ld b, $ed                                     ; $7607: $06 $ed
    and h                                         ; $7609: $a4
    db $eb                                        ; $760a: $eb
    ld e, $7f                                     ; $760b: $1e $7f
    and a                                         ; $760d: $a7
    and h                                         ; $760e: $a4
    or h                                          ; $760f: $b4
    ld e, a                                       ; $7610: $5f
    ld a, h                                       ; $7611: $7c
    cp h                                          ; $7612: $bc
    jp nz, Jump_028_656c                          ; $7613: $c2 $6c $65

    sub a                                         ; $7616: $97
    add d                                         ; $7617: $82
    add hl, hl                                    ; $7618: $29
    xor a                                         ; $7619: $af
    call Call_028_473c                            ; $761a: $cd $3c $47
    jp hl                                         ; $761d: $e9


    push hl                                       ; $761e: $e5
    ld d, d                                       ; $761f: $52
    add b                                         ; $7620: $80
    jr nc, @-$51                                  ; $7621: $30 $ad

    ld a, [de]                                    ; $7623: $1a
    ret z                                         ; $7624: $c8

    ld h, l                                       ; $7625: $65

jr_028_7626:
    call c, $af95                                 ; $7626: $dc $95 $af
    pop bc                                        ; $7629: $c1
    ld [bc], a                                    ; $762a: $02
    ld c, c                                       ; $762b: $49

jr_028_762c:
    sbc [hl]                                      ; $762c: $9e
    halt                                          ; $762d: $76
    ld l, c                                       ; $762e: $69
    ld e, [hl]                                    ; $762f: $5e
    ld a, [hl]                                    ; $7630: $7e
    ld d, b                                       ; $7631: $50
    ld d, d                                       ; $7632: $52
    ld a, h                                       ; $7633: $7c
    ld a, h                                       ; $7634: $7c
    cp c                                          ; $7635: $b9
    pop af                                        ; $7636: $f1
    ld h, a                                       ; $7637: $67
    add hl, de                                    ; $7638: $19
    xor a                                         ; $7639: $af
    or b                                          ; $763a: $b0
    jr nz, jr_028_7626                            ; $763b: $20 $e9

    cp e                                          ; $763d: $bb
    call z, $d342                                 ; $763e: $cc $42 $d3
    pop af                                        ; $7641: $f1
    rst $38                                       ; $7642: $ff
    push af                                       ; $7643: $f5
    sub l                                         ; $7644: $95
    xor a                                         ; $7645: $af
    push bc                                       ; $7646: $c5
    cp b                                          ; $7647: $b8
    or $4f                                        ; $7648: $f6 $4f
    ld h, c                                       ; $764a: $61
    db $ed                                        ; $764b: $ed
    dec de                                        ; $764c: $1b
    ld c, h                                       ; $764d: $4c
    ld h, c                                       ; $764e: $61
    ld c, l                                       ; $764f: $4d
    ld a, [de]                                    ; $7650: $1a
    ld e, c                                       ; $7651: $59
    ld sp, $768e                                  ; $7652: $31 $8e $76
    or d                                          ; $7655: $b2
    ld b, [hl]                                    ; $7656: $46
    dec sp                                        ; $7657: $3b
    sbc e                                         ; $7658: $9b
    ld d, l                                       ; $7659: $55
    ld l, c                                       ; $765a: $69
    ld [hl+], a                                   ; $765b: $22
    db $db                                        ; $765c: $db
    ld [hl], e                                    ; $765d: $73
    add sp, $24                                   ; $765e: $e8 $24
    db $fc                                        ; $7660: $fc
    sbc d                                         ; $7661: $9a
    inc [hl]                                      ; $7662: $34
    ld d, e                                       ; $7663: $53
    sbc a                                         ; $7664: $9f
    ld d, d                                       ; $7665: $52
    or e                                          ; $7666: $b3
    jr nc, jr_028_762c                            ; $7667: $30 $c3

    daa                                           ; $7669: $27
    ld b, a                                       ; $766a: $47
    jr jr_028_7603                                ; $766b: $18 $96

    push de                                       ; $766d: $d5
    add hl, hl                                    ; $766e: $29
    ld sp, hl                                     ; $766f: $f9
    ld e, c                                       ; $7670: $59
    ld d, [hl]                                    ; $7671: $56
    add hl, hl                                    ; $7672: $29
    push de                                       ; $7673: $d5

Call_028_7674:
    ld a, h                                       ; $7674: $7c
    push af                                       ; $7675: $f5
    rst $38                                       ; $7676: $ff
    adc $ca                                       ; $7677: $ce $ca
    dec c                                         ; $7679: $0d
    ld h, a                                       ; $767a: $67
    and a                                         ; $767b: $a7
    cp h                                          ; $767c: $bc
    push af                                       ; $767d: $f5
    add l                                         ; $767e: $85
    cp e                                          ; $767f: $bb
    or [hl]                                       ; $7680: $b6
    pop af                                        ; $7681: $f1
    ld e, c                                       ; $7682: $59
    ld d, [hl]                                    ; $7683: $56
    add hl, hl                                    ; $7684: $29
    push de                                       ; $7685: $d5
    ld a, h                                       ; $7686: $7c
    ld l, [hl]                                    ; $7687: $6e
    add h                                         ; $7688: $84
    ld d, [hl]                                    ; $7689: $56
    ld l, [hl]                                    ; $768a: $6e
    cp b                                          ; $768b: $b8
    sbc b                                         ; $768c: $98
    add hl, bc                                    ; $768d: $09
    cp a                                          ; $768e: $bf
    and h                                         ; $768f: $a4
    sub l                                         ; $7690: $95
    dec bc                                        ; $7691: $0b
    ld c, e                                       ; $7692: $4b
    sbc [hl]                                      ; $7693: $9e
    cp b                                          ; $7694: $b8
    ei                                            ; $7695: $fb
    db $eb                                        ; $7696: $eb
    push hl                                       ; $7697: $e5
    dec b                                         ; $7698: $05
    ld h, c                                       ; $7699: $61
    daa                                           ; $769a: $27
    scf                                           ; $769b: $37
    ld l, e                                       ; $769c: $6b
    ld c, e                                       ; $769d: $4b
    ld a, d                                       ; $769e: $7a
    ld a, c                                       ; $769f: $79
    ld e, c                                       ; $76a0: $59
    or a                                          ; $76a1: $b7
    and d                                         ; $76a2: $a2
    ld [de], a                                    ; $76a3: $12
    rst $28                                       ; $76a4: $ef
    rst $28                                       ; $76a5: $ef
    jp nz, Jump_028_5e58                          ; $76a6: $c2 $58 $5e

    ld a, [bc]                                    ; $76a9: $0a
    add $44                                       ; $76aa: $c6 $44
    add e                                         ; $76ac: $83
    and h                                         ; $76ad: $a4
    ret                                           ; $76ae: $c9


    jp Jump_028_54ab                              ; $76af: $c3 $ab $54


    ld h, l                                       ; $76b2: $65
    sub a                                         ; $76b3: $97
    halt                                          ; $76b4: $76
    ld a, d                                       ; $76b5: $7a
    add [hl]                                      ; $76b6: $86
    ld c, d                                       ; $76b7: $4a
    ld d, a                                       ; $76b8: $57
    pop de                                        ; $76b9: $d1
    ld c, [hl]                                    ; $76ba: $4e
    sub $a6                                       ; $76bb: $d6 $a6
    db $fd                                        ; $76bd: $fd
    dec hl                                        ; $76be: $2b
    cp a                                          ; $76bf: $bf
    ld c, d                                       ; $76c0: $4a
    ld l, c                                       ; $76c1: $69
    or $25                                        ; $76c2: $f6 $25
    ld [hl], $5d                                  ; $76c4: $36 $5d
    daa                                           ; $76c6: $27
    ld l, d                                       ; $76c7: $6a
    push af                                       ; $76c8: $f5
    or e                                          ; $76c9: $b3
    ld d, e                                       ; $76ca: $53
    ld d, [hl]                                    ; $76cb: $56
    ld l, [hl]                                    ; $76cc: $6e
    adc b                                         ; $76cd: $88
    jr nc, @+$29                                  ; $76ce: $30 $27

    cp l                                          ; $76d0: $bd
    rst $10                                       ; $76d1: $d7
    ld h, b                                       ; $76d2: $60
    ldh a, [$c4]                                  ; $76d3: $f0 $c4
    sub $fa                                       ; $76d5: $d6 $fa
    adc h                                         ; $76d7: $8c
    cp a                                          ; $76d8: $bf
    pop bc                                        ; $76d9: $c1
    inc a                                         ; $76da: $3c
    ld d, a                                       ; $76db: $57
    ld l, [hl]                                    ; $76dc: $6e

jr_028_76dd:
    jr c, jr_028_76dd                             ; $76dd: $38 $fe

    ld a, d                                       ; $76df: $7a
    sbc c                                         ; $76e0: $99
    adc [hl]                                      ; $76e1: $8e
    jp nc, $ad1f                                  ; $76e2: $d2 $1f $ad

    dec [hl]                                      ; $76e5: $35
    ld sp, hl                                     ; $76e6: $f9
    ld l, c                                       ; $76e7: $69
    dec sp                                        ; $76e8: $3b
    adc l                                         ; $76e9: $8d
    rst $28                                       ; $76ea: $ef
    ld a, [hl-]                                   ; $76eb: $3a
    ld [hl], a                                    ; $76ec: $77
    xor l                                         ; $76ed: $ad
    ld a, [de]                                    ; $76ee: $1a
    ret z                                         ; $76ef: $c8

    ld h, l                                       ; $76f0: $65
    ld e, l                                       ; $76f1: $5d
    ld sp, $3f3d                                  ; $76f2: $31 $3d $3f
    ld b, [hl]                                    ; $76f5: $46
    xor $2c                                       ; $76f6: $ee $2c
    inc bc                                        ; $76f8: $03
    db $d3                                        ; $76f9: $d3
    jp hl                                         ; $76fa: $e9


    inc h                                         ; $76fb: $24
    db $fc                                        ; $76fc: $fc
    cp h                                          ; $76fd: $bc
    xor b                                         ; $76fe: $a8
    rst $10                                       ; $76ff: $d7
    ld h, b                                       ; $7700: $60
    ld e, [hl]                                    ; $7701: $5e
    ld a, [hl]                                    ; $7702: $7e
    cp h                                          ; $7703: $bc
    ld [hl], $bb                                  ; $7704: $36 $bb
    cp [hl]                                       ; $7706: $be
    and d                                         ; $7707: $a2
    jr nc, jr_028_7789                            ; $7708: $30 $7f

    ld e, c                                       ; $770a: $59
    ei                                            ; $770b: $fb
    ld de, $c706                                  ; $770c: $11 $06 $c7
    ld e, h                                       ; $770f: $5c
    or [hl]                                       ; $7710: $b6

jr_028_7711:
    ld h, $cd                                     ; $7711: $26 $cd
    db $ec                                        ; $7713: $ec
    ld c, e                                       ; $7714: $4b
    ld l, h                                       ; $7715: $6c
    pop hl                                        ; $7716: $e1
    rst $28                                       ; $7717: $ef
    and b                                         ; $7718: $a0
    ld d, l                                       ; $7719: $55

jr_028_771a:
    push hl                                       ; $771a: $e5
    ld d, [hl]                                    ; $771b: $56
    push af                                       ; $771c: $f5
    daa                                           ; $771d: $27
    ld e, b                                       ; $771e: $58
    di                                            ; $771f: $f3
    adc $5d                                       ; $7720: $ce $5d
    xor e                                         ; $7722: $ab
    adc d                                         ; $7723: $8a
    inc [hl]                                      ; $7724: $34
    ld e, l                                       ; $7725: $5d
    ld sp, $a4a7                                  ; $7726: $31 $a7 $a4
    xor a                                         ; $7729: $af
    ld a, c                                       ; $772a: $79
    ld b, a                                       ; $772b: $47
    jr jr_028_776b                                ; $772c: $18 $3d

    ccf                                           ; $772e: $3f
    ld b, [hl]                                    ; $772f: $46
    xor $8a                                       ; $7730: $ee $8a
    ld de, $ba69                                  ; $7732: $11 $69 $ba
    ld l, h                                       ; $7735: $6c
    xor l                                         ; $7736: $ad
    cp a                                          ; $7737: $bf
    dec bc                                        ; $7738: $0b
    dec bc                                        ; $7739: $0b
    sub d                                         ; $773a: $92
    ld c, b                                       ; $773b: $48
    rst $20                                       ; $773c: $e7
    jp nc, $5fcc                                  ; $773d: $d2 $cc $5f

    or $ea                                        ; $7740: $f6 $ea
    dec sp                                        ; $7742: $3b
    dec a                                         ; $7743: $3d
    ld l, c                                       ; $7744: $69
    rst $10                                       ; $7745: $d7
    ld e, [hl]                                    ; $7746: $5e
    di                                            ; $7747: $f3
    ld h, l                                       ; $7748: $65
    inc l                                         ; $7749: $2c
    xor c                                         ; $774a: $a9
    and $0b                                       ; $774b: $e6 $0b

jr_028_774d:
    sbc $57                                       ; $774d: $de $57
    ld l, [hl]                                    ; $774f: $6e
    jr c, jr_028_771a                             ; $7750: $38 $c8

    ldh a, [$67]                                  ; $7752: $f0 $67
    ld h, a                                       ; $7754: $67
    or d                                          ; $7755: $b2
    reti                                          ; $7756: $d9


    ld a, [bc]                                    ; $7757: $0a
    sbc $05                                       ; $7758: $de $05
    inc bc                                        ; $775a: $03
    dec a                                         ; $775b: $3d
    jp z, $afcb                                   ; $775c: $ca $cb $af

    ld c, c                                       ; $775f: $49
    inc sp                                        ; $7760: $33
    sub l                                         ; $7761: $95
    rst $20                                       ; $7762: $e7
    xor [hl]                                      ; $7763: $ae
    ld d, l                                       ; $7764: $55
    ld b, l                                       ; $7765: $45
    ld a, [de]                                    ; $7766: $1a
    or h                                          ; $7767: $b4
    push af                                       ; $7768: $f5
    db $fc                                        ; $7769: $fc
    dec d                                         ; $776a: $15

jr_028_776b:
    or l                                          ; $776b: $b5
    cp $da                                        ; $776c: $fe $da
    rst $38                                       ; $776e: $ff
    inc [hl]                                      ; $776f: $34
    ld e, [hl]                                    ; $7770: $5e
    xor a                                         ; $7771: $af
    ld e, a                                       ; $7772: $5f
    ld a, [bc]                                    ; $7773: $0a
    ld h, [hl]                                    ; $7774: $66
    and a                                         ; $7775: $a7
    xor h                                         ; $7776: $ac
    ld c, c                                       ; $7777: $49
    add e                                         ; $7778: $83
    jr nc, jr_028_7711                            ; $7779: $30 $96

    or l                                          ; $777b: $b5
    rst $18                                       ; $777c: $df
    rst $10                                       ; $777d: $d7
    xor d                                         ; $777e: $aa
    add c                                         ; $777f: $81
    ld e, h                                       ; $7780: $5c
    or [hl]                                       ; $7781: $b6
    and d                                         ; $7782: $a2
    jr nc, jr_028_774d                            ; $7783: $30 $c8

    ldh a, [rPCM34]                               ; $7785: $f0 $77
    ret                                           ; $7787: $c9


    ld e, a                                       ; $7788: $5f

jr_028_7789:
    ld e, $fc                                     ; $7789: $1e $fc
    ld d, d                                       ; $778b: $52
    jr nc, jr_028_77bd                            ; $778c: $30 $2f

    sub a                                         ; $778e: $97
    ld [bc], a                                    ; $778f: $02
    sbc b                                         ; $7790: $98
    rst $20                                       ; $7791: $e7
    db $fc                                        ; $7792: $fc
    ld h, e                                       ; $7793: $63
    sbc h                                         ; $7794: $9c
    add c                                         ; $7795: $81
    ld l, c                                       ; $7796: $69
    dec sp                                        ; $7797: $3b
    adc l                                         ; $7798: $8d
    rst $08                                       ; $7799: $cf
    res 5, a                                      ; $779a: $cb $af
    push bc                                       ; $779c: $c5
    sub e                                         ; $779d: $93
    ld e, $61                                     ; $779e: $1e $61
    dec a                                         ; $77a0: $3d
    adc e                                         ; $77a1: $8b
    ld a, [$7e54]                                 ; $77a2: $fa $54 $7e
    ld c, l                                       ; $77a5: $4d
    sbc d                                         ; $77a6: $9a
    or c                                          ; $77a7: $b1
    cp h                                          ; $77a8: $bc
    inc d                                         ; $77a9: $14
    xor h                                         ; $77aa: $ac
    cp h                                          ; $77ab: $bc
    inc a                                         ; $77ac: $3c
    ld [hl], a                                    ; $77ad: $77
    daa                                           ; $77ae: $27
    ld l, e                                       ; $77af: $6b
    or h                                          ; $77b0: $b4
    or e                                          ; $77b1: $b3
    jp hl                                         ; $77b2: $e9


    adc d                                         ; $77b3: $8a
    ld bc, $5a96                                  ; $77b4: $01 $96 $5a
    cp b                                          ; $77b7: $b8
    ld b, b                                       ; $77b8: $40
    cp l                                          ; $77b9: $bd
    cp h                                          ; $77ba: $bc
    ld e, h                                       ; $77bb: $5c
    ld a, [bc]                                    ; $77bc: $0a

jr_028_77bd:
    and [hl]                                      ; $77bd: $a6
    ld l, e                                       ; $77be: $6b
    and a                                         ; $77bf: $a7
    add hl, sp                                    ; $77c0: $39
    rst $18                                       ; $77c1: $df
    cp h                                          ; $77c2: $bc
    rst $08                                       ; $77c3: $cf
    ld c, [hl]                                    ; $77c4: $4e
    sbc c                                         ; $77c5: $99
    ld c, $32                                     ; $77c6: $0e $32
    xor c                                         ; $77c8: $a9
    ld l, a                                       ; $77c9: $6f
    rst $08                                       ; $77ca: $cf

Jump_028_77cb:
    cp [hl]                                       ; $77cb: $be
    db $db                                        ; $77cc: $db
    rst $18                                       ; $77cd: $df
    scf                                           ; $77ce: $37
    ei                                            ; $77cf: $fb
    adc [hl]                                      ; $77d0: $8e
    adc d                                         ; $77d1: $8a
    ld e, a                                       ; $77d2: $5f
    ld a, [bc]                                    ; $77d3: $0a
    ld b, $6e                                     ; $77d4: $06 $6e
    ret c                                         ; $77d6: $d8

    sub e                                         ; $77d7: $93
    ld c, a                                       ; $77d8: $4f
    adc c                                         ; $77d9: $89
    xor l                                         ; $77da: $ad
    ld e, h                                       ; $77db: $5c
    sbc b                                         ; $77dc: $98
    dec l                                         ; $77dd: $2d
    rst $30                                       ; $77de: $f7
    adc c                                         ; $77df: $89
    ld bc, $27c2                                  ; $77e0: $01 $c2 $27
    ld h, l                                       ; $77e3: $65
    sub $b9                                       ; $77e4: $d6 $b9
    ld l, e                                       ; $77e6: $6b
    ld a, l                                       ; $77e7: $7d
    add $df                                       ; $77e8: $c6 $df
    ld h, b                                       ; $77ea: $60
    rla                                           ; $77eb: $17
    sub $d6                                       ; $77ec: $d6 $d6
    xor d                                         ; $77ee: $aa
    sbc $05                                       ; $77ef: $de $05
    inc bc                                        ; $77f1: $03
    dec l                                         ; $77f2: $2d
    push hl                                       ; $77f3: $e5
    ld d, a                                       ; $77f4: $57
    inc d                                         ; $77f5: $14
    and [hl]                                      ; $77f6: $a6
    dec bc                                        ; $77f7: $0b
    rra                                           ; $77f8: $1f
    ld b, b                                       ; $77f9: $40
    add e                                         ; $77fa: $83
    sbc a                                         ; $77fb: $9f
    dec l                                         ; $77fc: $2d
    add hl, de                                    ; $77fd: $19
    xor [hl]                                      ; $77fe: $ae
    ld e, e                                       ; $77ff: $5b
    ld d, c                                       ; $7800: $51
    adc c                                         ; $7801: $89
    rst $30                                       ; $7802: $f7
    pop de                                        ; $7803: $d1
    ld c, [hl]                                    ; $7804: $4e
    ld a, a                                       ; $7805: $7f
    ld h, l                                       ; $7806: $65
    cp e                                          ; $7807: $bb
    adc $dd                                       ; $7808: $ce $dd
    jp hl                                         ; $780a: $e9


    ld c, c                                       ; $780b: $49
    ld [$b503], sp                                ; $780c: $08 $03 $b5
    ld h, e                                       ; $780f: $63
    ld e, [hl]                                    ; $7810: $5e
    ld h, l                                       ; $7811: $65
    and a                                         ; $7812: $a7
    daa                                           ; $7813: $27
    ld [hl], c                                    ; $7814: $71
    ld l, e                                       ; $7815: $6b
    jr jr_028_784d                                ; $7816: $18 $35

    ld c, e                                       ; $7818: $4b
    adc l                                         ; $7819: $8d
    xor l                                         ; $781a: $ad
    db $fd                                        ; $781b: $fd
    dec bc                                        ; $781c: $0b
    and d                                         ; $781d: $a2
    or d                                          ; $781e: $b2
    ld a, c                                       ; $781f: $79
    adc $b5                                       ; $7820: $ce $b5
    cp $f3                                        ; $7822: $fe $f3
    ld a, [c]                                     ; $7824: $f2
    ld h, e                                       ; $7825: $63
    and d                                         ; $7826: $a2
    ld b, c                                       ; $7827: $41
    ld [de], a                                    ; $7828: $12
    ld [hl], a                                    ; $7829: $77
    ld l, l                                       ; $782a: $6d
    db $e3                                        ; $782b: $e3
    cp e                                          ; $782c: $bb
    ld a, $3e                                     ; $782d: $3e $3e

Jump_028_782f:
    xor c                                         ; $782f: $a9
    and $6b                                       ; $7830: $e6 $6b
    rst $38                                       ; $7832: $ff
    ld e, [hl]                                    ; $7833: $5e
    and c                                         ; $7834: $a1
    ld b, c                                       ; $7835: $41
    db $eb                                        ; $7836: $eb
    ld d, c                                       ; $7837: $51
    ld a, [hl]                                    ; $7838: $7e
    db $ed                                        ; $7839: $ed
    rlca                                          ; $783a: $07
    sbc a                                         ; $783b: $9f
    sub a                                         ; $783c: $97
    ld c, e                                       ; $783d: $4b
    pop bc                                        ; $783e: $c1
    ld hl, sp+$1b                                 ; $783f: $f8 $1b
    db $e3                                        ; $7841: $e3
    jp c, $cf3f                                   ; $7842: $da $3f $cf

    pop bc                                        ; $7845: $c1
    inc de                                        ; $7846: $13
    ld e, e                                       ; $7847: $5b
    cp c                                          ; $7848: $b9
    pop hl                                        ; $7849: $e1
    jp nc, $32fa                                  ; $784a: $d2 $fa $32

jr_028_784d:
    cp $7a                                        ; $784d: $fe $7a
    add hl, de                                    ; $784f: $19
    ld h, h                                       ; $7850: $64
    ld hl, sp-$4d                                 ; $7851: $f8 $b3
    push hl                                       ; $7853: $e5
    ld a, $31                                     ; $7854: $3e $31
    ld e, b                                       ; $7856: $58
    jp c, $2f0b                                   ; $7857: $da $0b $2f

    db $fd                                        ; $785a: $fd
    ld hl, sp-$6e                                 ; $785b: $f8 $92
    ld d, e                                       ; $785d: $53
    ld sp, hl                                     ; $785e: $f9
    ld d, l                                       ; $785f: $55
    add hl, de                                    ; $7860: $19
    ld e, [hl]                                    ; $7861: $5e
    ld a, [bc]                                    ; $7862: $0a
    ld b, [hl]                                    ; $7863: $46
    rst $08                                       ; $7864: $cf
    pop bc                                        ; $7865: $c1
    rst $00                                       ; $7866: $c7
    rst $38                                       ; $7867: $ff
    rst $10                                       ; $7868: $d7
    pop de                                        ; $7869: $d1
    cp d                                          ; $786a: $ba
    and l                                         ; $786b: $a5
    adc c                                         ; $786c: $89
    ld l, h                                       ; $786d: $6c
    ld c, l                                       ; $786e: $4d
    sbc d                                         ; $786f: $9a
    dec b                                         ; $7870: $05
    rst $28                                       ; $7871: $ef
    di                                            ; $7872: $f3
    ld a, [c]                                     ; $7873: $f2
    dec sp                                        ; $7874: $3b
    db $fd                                        ; $7875: $fd
    or d                                          ; $7876: $b2
    ldh [$db], a                                  ; $7877: $e0 $db
    ld e, d                                       ; $7879: $5a
    push de                                       ; $787a: $d5
    ld h, a                                       ; $787b: $67
    ld a, [hl-]                                   ; $787c: $3a
    di                                            ; $787d: $f3
    sbc h                                         ; $787e: $9c
    sub a                                         ; $787f: $97
    sbc a                                         ; $7880: $9f
    ld l, e                                       ; $7881: $6b
    adc h                                         ; $7882: $8c
    rrca                                          ; $7883: $0f
    ld a, $4f                                     ; $7884: $3e $4f
    cp $65                                        ; $7886: $fe $65
    ld [$2f0b], a                                 ; $7888: $ea $0b $2f
    and e                                         ; $788b: $a3
    dec de                                        ; $788c: $1b
    inc d                                         ; $788d: $14
    ld e, a                                       ; $788e: $5f
    jp nc, $d45a                                  ; $788f: $d2 $5a $d4

    adc l                                         ; $7892: $8d
    jr nc, jr_028_7902                            ; $7893: $30 $6d

    cp d                                          ; $7895: $ba
    xor [hl]                                      ; $7896: $ae
    ld b, a                                       ; $7897: $47
    ld sp, hl                                     ; $7898: $f9
    ld h, [hl]                                    ; $7899: $66
    sub l                                         ; $789a: $95
    jp nc, Jump_028_7fc2                          ; $789b: $d2 $c2 $7f

    ld e, a                                       ; $789e: $5f
    sub e                                         ; $789f: $93
    ld h, [hl]                                    ; $78a0: $66
    ld e, [hl]                                    ; $78a1: $5e
    ld e, [hl]                                    ; $78a2: $5e
    ld a, [hl]                                    ; $78a3: $7e
    ld c, d                                       ; $78a4: $4a
    ld l, h                                       ; $78a5: $6c
    xor [hl]                                      ; $78a6: $ae
    push af                                       ; $78a7: $f5
    ld e, a                                       ; $78a8: $5f
    cp c                                          ; $78a9: $b9
    pop hl                                        ; $78aa: $e1
    ld hl, sp+$72                                 ; $78ab: $f8 $72
    db $e3                                        ; $78ad: $e3
    rst $28                                       ; $78ae: $ef
    ld a, d                                       ; $78af: $7a
    dec c                                         ; $78b0: $0d
    ld b, $7e                                     ; $78b1: $06 $7e
    ld h, e                                       ; $78b3: $63
    inc e                                         ; $78b4: $1c
    ld d, e                                       ; $78b5: $53
    xor c                                         ; $78b6: $a9
    and e                                         ; $78b7: $a3
    or l                                          ; $78b8: $b5
    inc a                                         ; $78b9: $3c
    or c                                          ; $78ba: $b1
    add l                                         ; $78bb: $85
    ccf                                           ; $78bc: $3f
    and l                                         ; $78bd: $a5
    add hl, hl                                    ; $78be: $29
    ld bc, $32ff                                  ; $78bf: $01 $ff $32
    add l                                         ; $78c2: $85
    ld b, c                                       ; $78c3: $41
    ld h, $4d                                     ; $78c4: $26 $4d
    ld h, c                                       ; $78c6: $61
    sbc l                                         ; $78c7: $9d
    inc b                                         ; $78c8: $04
    cp b                                          ; $78c9: $b8
    db $ed                                        ; $78ca: $ed
    ld hl, sp-$58                                 ; $78cb: $f8 $a8
    add [hl]                                      ; $78cd: $86
    ld bc, $93b5                                  ; $78ce: $01 $b5 $93
    jp nc, $dcfa                                  ; $78d1: $d2 $fa $dc

    ld [hl], l                                    ; $78d4: $75
    dec hl                                        ; $78d5: $2b
    ld a, [hl+]                                   ; $78d6: $2a
    pop af                                        ; $78d7: $f1
    ld a, [hl]                                    ; $78d8: $7e
    dec c                                         ; $78d9: $0d
    ld h, c                                       ; $78da: $61
    dec a                                         ; $78db: $3d
    ld a, a                                       ; $78dc: $7f
    sub l                                         ; $78dd: $95
    jp nc, $fc0c                                  ; $78de: $d2 $0c $fc

    cp h                                          ; $78e1: $bc
    db $fc                                        ; $78e2: $fc
    inc l                                         ; $78e3: $2c
    ld h, h                                       ; $78e4: $64
    cp l                                          ; $78e5: $bd
    ld [hl], b                                    ; $78e6: $70
    db $db                                        ; $78e7: $db
    scf                                           ; $78e8: $37
    ld e, [hl]                                    ; $78e9: $5e
    ld l, a                                       ; $78ea: $6f
    sub $2d                                       ; $78eb: $d6 $2d
    and [hl]                                      ; $78ed: $a6
    sub $e7                                       ; $78ee: $d6 $e7
    cp c                                          ; $78f0: $b9
    ldh [$7d], a                                  ; $78f1: $e0 $7d
    push hl                                       ; $78f3: $e5
    add [hl]                                      ; $78f4: $86
    di                                            ; $78f5: $f3
    sbc h                                         ; $78f6: $9c
    sub a                                         ; $78f7: $97
    sbc a                                         ; $78f8: $9f
    daa                                           ; $78f9: $27
    rst $38                                       ; $78fa: $ff
    add d                                         ; $78fb: $82
    ld h, [hl]                                    ; $78fc: $66
    sbc c                                         ; $78fd: $99
    sub a                                         ; $78fe: $97
    ld c, e                                       ; $78ff: $4b
    push af                                       ; $7900: $f5
    ld e, l                                       ; $7901: $5d

jr_028_7902:
    xor a                                         ; $7902: $af
    pop bc                                        ; $7903: $c1
    jp c, $d837                                   ; $7904: $da $37 $d8

    ld d, e                                       ; $7907: $53
    sbc d                                         ; $7908: $9a
    and b                                         ; $7909: $a0
    call z, Call_028_5573                         ; $790a: $cc $73 $55
    ld e, d                                       ; $790d: $5a
    ld e, a                                       ; $790e: $5f
    and $7c                                       ; $790f: $e6 $7c
    ld l, $ed                                     ; $7911: $2e $ed
    add hl, de                                    ; $7913: $19
    sbc b                                         ; $7914: $98
    ld [de], a                                    ; $7915: $12
    db $db                                        ; $7916: $db
    add hl, hl                                    ; $7917: $29
    add hl, hl                                    ; $7918: $29
    db $ed                                        ; $7919: $ed
    rla                                           ; $791a: $17
    ld b, a                                       ; $791b: $47
    or e                                          ; $791c: $b3
    call nc, Call_000_1c62                        ; $791d: $d4 $62 $1c
    inc a                                         ; $7920: $3c
    or c                                          ; $7921: $b1
    or l                                          ; $7922: $b5
    ld a, $e3                                     ; $7923: $3e $e3
    ld l, a                                       ; $7925: $6f
    or b                                          ; $7926: $b0
    or [hl]                                       ; $7927: $b6
    ld d, [hl]                                    ; $7928: $56
    push af                                       ; $7929: $f5
    pop af                                        ; $792a: $f1
    rst $10                                       ; $792b: $d7
    bit 6, h                                      ; $792c: $cb $74
    ld a, [c]                                     ; $792e: $f2
    sbc l                                         ; $792f: $9d
    ret c                                         ; $7930: $d8

    and b                                         ; $7931: $a0
    sbc l                                         ; $7932: $9d
    sub d                                         ; $7933: $92
    db $fc                                        ; $7934: $fc
    ld [c], a                                     ; $7935: $e2
    ld a, e                                       ; $7936: $7b
    dec c                                         ; $7937: $0d
    ld d, $e4                                     ; $7938: $16 $e4
    db $fc                                        ; $793a: $fc
    ld h, e                                       ; $793b: $63
    ld e, h                                       ; $793c: $5c
    xor e                                         ; $793d: $ab
    ld b, $72                                     ; $793e: $06 $72
    add hl, de                                    ; $7940: $19
    jp nz, $a4a7                                  ; $7941: $c2 $a7 $a4

    or h                                          ; $7944: $b4
    ld e, a                                       ; $7945: $5f
    cp h                                          ; $7946: $bc
    bit 3, d                                      ; $7947: $cb $5a
    ld a, a                                       ; $7949: $7f
    ld b, c                                       ; $794a: $41
    ld a, [$d794]                                 ; $794b: $fa $94 $d7
    and [hl]                                      ; $794e: $a6
    bit 3, d                                      ; $794f: $cb $5a
    adc l                                         ; $7951: $8d
    ld c, b                                       ; $7952: $48
    or e                                          ; $7953: $b3
    ld d, [hl]                                    ; $7954: $56
    dec d                                         ; $7955: $15
    ld l, c                                       ; $7956: $69
    cp b                                          ; $7957: $b8

jr_028_7958:
    xor e                                         ; $7958: $ab
    call nc, $b2ab                                ; $7959: $d4 $ab $b2
    ld [hl], d                                    ; $795c: $72
    jp $182e                                      ; $795d: $c3 $2e $18


    xor l                                         ; $7960: $ad
    cpl                                           ; $7961: $2f
    cp a                                          ; $7962: $bf
    ld a, [c]                                     ; $7963: $f2
    cp e                                          ; $7964: $bb
    add b                                         ; $7965: $80
    sub $2b                                       ; $7966: $d6 $2b
    call $94ea                                    ; $7968: $cd $ea $94
    db $fc                                        ; $796b: $fc
    cp h                                          ; $796c: $bc
    ld e, h                                       ; $796d: $5c
    jr jr_028_79ef                                ; $796e: $18 $7f

    ld h, e                                       ; $7970: $63
    call c, Call_000_0679                         ; $7971: $dc $79 $06
    ld a, h                                       ; $7974: $7c
    push af                                       ; $7975: $f5
    rst $38                                       ; $7976: $ff
    adc $8a                                       ; $7977: $ce $8a
    halt                                          ; $7979: $76
    ld a, [hl-]                                   ; $797a: $3a
    ld c, a                                       ; $797b: $4f
    sub a                                         ; $797c: $97
    ld [bc], a                                    ; $797d: $02
    xor $58                                       ; $797e: $ee $58
    ld d, d                                       ; $7980: $52
    call $a4d7                                    ; $7981: $cd $d7 $a4
    jp hl                                         ; $7984: $e9


    adc d                                         ; $7985: $8a
    ld bc, $d596                                  ; $7986: $01 $96 $d5
    add hl, hl                                    ; $7989: $29
    ld a, c                                       ; $798a: $79
    inc [hl]                                      ; $798b: $34
    ld c, e                                       ; $798c: $4b
    dec l                                         ; $798d: $2d
    add $15                                       ; $798e: $c6 $15
    or l                                          ; $7990: $b5
    cp $fc                                        ; $7991: $fe $fc
    ld h, l                                       ; $7993: $65
    ld a, l                                       ; $7994: $7d
    nop                                           ; $7995: $00
    ld e, l                                       ; $7996: $5d
    db $db                                        ; $7997: $db
    adc [hl]                                      ; $7998: $8e
    rst $18                                       ; $7999: $df
    rst $20                                       ; $799a: $e7
    ldh [$89], a                                  ; $799b: $e0 $89
    dec l                                         ; $799d: $2d
    ld e, [hl]                                    ; $799e: $5e
    rst $30                                       ; $799f: $f7
    ld hl, sp+$3b                                 ; $79a0: $f8 $3b
    dec h                                         ; $79a2: $25
    and l                                         ; $79a3: $a5
    db $fd                                        ; $79a4: $fd
    ld [c], a                                     ; $79a5: $e2
    ld d, e                                       ; $79a6: $53
    ld e, [hl]                                    ; $79a7: $5e
    dec de                                        ; $79a8: $1b
    add h                                         ; $79a9: $84
    ld bc, $7f3d                                  ; $79aa: $01 $3d $7f
    ld b, c                                       ; $79ad: $41
    ld a, [$f174]                                 ; $79ae: $fa $74 $f1
    db $dd                                        ; $79b1: $dd
    ld e, a                                       ; $79b2: $5f
    ld h, [hl]                                    ; $79b3: $66
    ld c, e                                       ; $79b4: $4b
    add [hl]                                      ; $79b5: $86
    db $eb                                        ; $79b6: $eb
    ld d, [hl]                                    ; $79b7: $56
    ld d, h                                       ; $79b8: $54
    ld [c], a                                     ; $79b9: $e2
    db $fd                                        ; $79ba: $fd
    push af                                       ; $79bb: $f5
    ld a, h                                       ; $79bc: $7c
    add l                                         ; $79bd: $85
    ld hl, sp+$0d                                 ; $79be: $f8 $0d
    ld e, d                                       ; $79c0: $5a
    db $eb                                        ; $79c1: $eb
    xor a                                         ; $79c2: $af
    jr z, jr_028_79d1                             ; $79c3: $28 $0c

    ld [hl-], a                                   ; $79c5: $32
    db $fc                                        ; $79c6: $fc
    reti                                          ; $79c7: $d9


    ld [hl], d                                    ; $79c8: $72
    sbc a                                         ; $79c9: $9f
    jr jr_028_7958                                ; $79ca: $18 $8c

    cpl                                           ; $79cc: $2f
    cp c                                          ; $79cd: $b9

jr_028_79ce:
    ld c, d                                       ; $79ce: $4a
    ld l, c                                       ; $79cf: $69
    sbc l                                         ; $79d0: $9d

jr_028_79d1:
    ld e, e                                       ; $79d1: $5b
    push de                                       ; $79d2: $d5
    ld h, a                                       ; $79d3: $67
    ld a, [hl-]                                   ; $79d4: $3a
    dec sp                                        ; $79d5: $3b
    dec h                                         ; $79d6: $25
    and l                                         ; $79d7: $a5
    db $fd                                        ; $79d8: $fd
    ld [c], a                                     ; $79d9: $e2
    and e                                         ; $79da: $a3
    rst $20                                       ; $79db: $e7
    ldh [rOCPD], a                                ; $79dc: $e0 $6b
    ld d, c                                       ; $79de: $51
    scf                                           ; $79df: $37
    jp nz, $99b4                                  ; $79e0: $c2 $b4 $99

    ld a, [$cbc2]                                 ; $79e3: $fa $c2 $cb
    add sp, $06                                   ; $79e6: $e8 $06
    push bc                                       ; $79e8: $c5
    ld de, $4706                                  ; $79e9: $11 $06 $47
    pop af                                        ; $79ec: $f1
    ld [hl], d                                    ; $79ed: $72
    add e                                         ; $79ee: $83

jr_028_79ef:
    ld [c], a                                     ; $79ef: $e2
    ld l, b                                       ; $79f0: $68
    sub [hl]                                      ; $79f1: $96
    ld e, d                                       ; $79f2: $5a
    adc h                                         ; $79f3: $8c
    add e                                         ; $79f4: $83
    rst $38                                       ; $79f5: $ff
    dec [hl]                                      ; $79f6: $35
    ld l, c                                       ; $79f7: $69
    and $e5                                       ; $79f8: $e6 $e5
    add hl, bc                                    ; $79fa: $09
    ld h, c                                       ; $79fb: $61
    rst $00                                       ; $79fc: $c7
    ld e, h                                       ; $79fd: $5c
    or [hl]                                       ; $79fe: $b6
    and $cb                                       ; $79ff: $e6 $cb
    ld a, [hl+]                                   ; $7a01: $2a
    push af                                       ; $7a02: $f5
    xor d                                         ; $7a03: $aa
    xor h                                         ; $7a04: $ac
    call c, $2bb0                                 ; $7a05: $dc $b0 $2b
    ld b, $a7                                     ; $7a08: $06 $a7
    and h                                         ; $7a0a: $a4
    xor a                                         ; $7a0b: $af
    ld a, c                                       ; $7a0c: $79
    ld b, a                                       ; $7a0d: $47
    jr jr_028_7a4d                                ; $7a0e: $18 $3d

    and h                                         ; $7a10: $a4
    sbc c                                         ; $7a11: $99
    ld b, $7a                                     ; $7a12: $06 $7a
    adc c                                         ; $7a14: $89
    cp e                                          ; $7a15: $bb
    ld d, [hl]                                    ; $7a16: $56
    dec d                                         ; $7a17: $15
    ld l, c                                       ; $7a18: $69
    cp d                                          ; $7a19: $ba
    ld l, h                                       ; $7a1a: $6c
    dec a                                         ; $7a1b: $3d
    ld a, a                                       ; $7a1c: $7f
    and c                                         ; $7a1d: $a1
    ld bc, $f05f                                  ; $7a1e: $01 $5f $f0
    cp [hl]                                       ; $7a21: $be
    ld [hl], d                                    ; $7a22: $72

jr_028_7a23:
    jp $b5b5                                      ; $7a23: $c3 $b5 $b5


    xor d                                         ; $7a26: $aa
    ld [hl], a                                    ; $7a27: $77
    pop bc                                        ; $7a28: $c1
    dec a                                         ; $7a29: $3d
    cp a                                          ; $7a2a: $bf
    add $d6                                       ; $7a2b: $c6 $d6
    ld a, [hl]                                    ; $7a2d: $7e
    rst $30                                       ; $7a2e: $f7
    sub a                                         ; $7a2f: $97
    dec b                                         ; $7a30: $05
    rst $28                                       ; $7a31: $ef
    dec bc                                        ; $7a32: $0b
    ld a, [c]                                     ; $7a33: $f2
    ld d, d                                       ; $7a34: $52
    add b                                         ; $7a35: $80
    jr nc, jr_028_79ce                            ; $7a36: $30 $96

    add c                                         ; $7a38: $81
    rst $18                                       ; $7a39: $df
    jr jr_028_7a23                                ; $7a3a: $18 $e7

    push hl                                       ; $7a3c: $e5
    ld d, d                                       ; $7a3d: $52
    ld a, l                                       ; $7a3e: $7d
    sub [hl]                                      ; $7a3f: $96
    ld b, c                                       ; $7a40: $41
    ld c, c                                       ; $7a41: $49
    inc de                                        ; $7a42: $13
    reti                                          ; $7a43: $d9


    add d                                         ; $7a44: $82
    call c, $f025                                 ; $7a45: $dc $25 $f0
    ld d, a                                       ; $7a48: $57
    or [hl]                                       ; $7a49: $b6
    or h                                          ; $7a4a: $b4
    rst $10                                       ; $7a4b: $d7
    and h                                         ; $7a4c: $a4

jr_028_7a4d:
    pop hl                                        ; $7a4d: $e1
    xor [hl]                                      ; $7a4e: $ae
    push af                                       ; $7a4f: $f5
    dec h                                         ; $7a50: $25
    cp h                                          ; $7a51: $bc
    ld c, c                                       ; $7a52: $49
    adc a                                         ; $7a53: $8f
    jr nc, @-$41                                  ; $7a54: $30 $bd

    jp nc, $acd4                                  ; $7a56: $d2 $d4 $ac

    cp a                                          ; $7a59: $bf
    or $3f                                        ; $7a5a: $f6 $3f
    db $ed                                        ; $7a5c: $ed
    add $88                                       ; $7a5d: $c6 $88
    halt                                          ; $7a5f: $76
    inc d                                         ; $7a60: $14
    or c                                          ; $7a61: $b1
    ld e, c                                       ; $7a62: $59
    ld d, [hl]                                    ; $7a63: $56
    add hl, hl                                    ; $7a64: $29
    adc l                                         ; $7a65: $8d
    push hl                                       ; $7a66: $e5
    xor [hl]                                      ; $7a67: $ae
    rst $28                                       ; $7a68: $ef
    xor l                                         ; $7a69: $ad
    cpl                                           ; $7a6a: $2f
    call $d7da                                    ; $7a6b: $cd $da $d7
    and a                                         ; $7a6e: $a7

jr_028_7a6f:
    jr nc, jr_028_7a6f                            ; $7a6f: $30 $fe

    ld h, e                                       ; $7a71: $63
    sbc h                                         ; $7a72: $9c
    jp nz, $349a                                  ; $7a73: $c2 $9a $34

    xor e                                         ; $7a76: $ab
    jp nc, $8644                                  ; $7a77: $d2 $44 $86

    jr nc, jr_028_7a92                            ; $7a7a: $30 $16

    xor a                                         ; $7a7c: $af
    pop bc                                        ; $7a7d: $c1
    ldh [$dd], a                                  ; $7a7e: $e0 $dd
    db $e3                                        ; $7a80: $e3
    or e                                          ; $7a81: $b3
    ld l, $eb                                     ; $7a82: $2e $eb
    sub [hl]                                      ; $7a84: $96
    pop hl                                        ; $7a85: $e1
    cpl                                           ; $7a86: $2f
    adc c                                         ; $7a87: $89
    cp e                                          ; $7a88: $bb
    sub $97                                       ; $7a89: $d6 $97
    ldh a, [rNR52]                                ; $7a8b: $f0 $26
    dec a                                         ; $7a8d: $3d
    jp nz, $af16                                  ; $7a8e: $c2 $16 $af

    pop bc                                        ; $7a91: $c1

jr_028_7a92:
    db $fc                                        ; $7a92: $fc
    add [hl]                                      ; $7a93: $86
    rst $08                                       ; $7a94: $cf
    ld e, l                                       ; $7a95: $5d
    xor e                                         ; $7a96: $ab
    ld b, $72                                     ; $7a97: $06 $72
    add hl, de                                    ; $7a99: $19
    jp nz, Jump_028_5fad                          ; $7a9a: $c2 $ad $5f

    add e                                         ; $7a9d: $83
    dec b                                         ; $7a9e: $05
    jp hl                                         ; $7a9f: $e9


    adc e                                         ; $7aa0: $8b
    jp hl                                         ; $7aa1: $e9


    or b                                          ; $7aa2: $b0
    or h                                          ; $7aa3: $b4
    ld h, a                                       ; $7aa4: $67
    ld h, a                                       ; $7aa5: $67
    or d                                          ; $7aa6: $b2
    reti                                          ; $7aa7: $d9


    cpl                                           ; $7aa8: $2f
    di                                            ; $7aa9: $f3
    ld a, [c]                                     ; $7aaa: $f2
    dec sp                                        ; $7aab: $3b
    cpl                                           ; $7aac: $2f
    adc l                                         ; $7aad: $8d
    ret nc                                        ; $7aae: $d0

    scf                                           ; $7aaf: $37
    ld l, b                                       ; $7ab0: $68
    ld b, a                                       ; $7ab1: $47
    ld de, $a59b                                  ; $7ab2: $11 $9b $a5
    ld h, [hl]                                    ; $7ab5: $66
    db $fd                                        ; $7ab6: $fd
    ld [hl], l                                    ; $7ab7: $75
    or h                                          ; $7ab8: $b4
    xor d                                         ; $7ab9: $aa
    ccf                                           ; $7aba: $3f
    ld e, e                                       ; $7abb: $5b
    cp c                                          ; $7abc: $b9
    jr nc, jr_028_7b3e                            ; $7abd: $30 $7f

    add $9a                                       ; $7abf: $c6 $9a
    or l                                          ; $7ac1: $b5
    ld e, a                                       ; $7ac2: $5f
    ld h, l                                       ; $7ac3: $65
    sub a                                         ; $7ac4: $97
    ld d, [hl]                                    ; $7ac5: $56
    add hl, hl                                    ; $7ac6: $29
    db $fc                                        ; $7ac7: $fc
    jp z, Jump_028_782f                           ; $7ac8: $ca $2f $78

    add a                                         ; $7acb: $87
    push bc                                       ; $7acc: $c5
    and h                                         ; $7acd: $a4
    adc a                                         ; $7ace: $8f
    dec c                                         ; $7acf: $0d
    jp nz, Jump_028_5fad                          ; $7ad0: $c2 $ad $5f

    adc e                                         ; $7ad3: $8b
    ld [hl], c                                    ; $7ad4: $71
    dec e                                         ; $7ad5: $1d
    ret                                           ; $7ad6: $c9


    or [hl]                                       ; $7ad7: $b6
    or [hl]                                       ; $7ad8: $b6
    ld h, e                                       ; $7ad9: $63
    or e                                          ; $7ada: $b3
    ld d, a                                       ; $7adb: $57
    sbc a                                         ; $7adc: $9f
    rla                                           ; $7add: $17
    push af                                       ; $7ade: $f5
    ld sp, hl                                     ; $7adf: $f9
    inc sp                                        ; $7ae0: $33
    sub $ac                                       ; $7ae1: $d6 $ac
    db $fd                                        ; $7ae3: $fd

jr_028_7ae4:
    ld a, [hl+]                                   ; $7ae4: $2a
    or e                                          ; $7ae5: $b3
    xor a                                         ; $7ae6: $af
    add b                                         ; $7ae7: $80
    inc hl                                        ; $7ae8: $23
    inc c                                         ; $7ae9: $0c
    dec a                                         ; $7aea: $3d
    cp a                                          ; $7aeb: $bf
    add $d6                                       ; $7aec: $c6 $d6
    ld a, [hl]                                    ; $7aee: $7e
    ldh a, [$85]                                  ; $7aef: $f0 $85
    ld l, c                                       ; $7af1: $69
    db $fd                                        ; $7af2: $fd
    ld l, c                                       ; $7af3: $69
    ld c, h                                       ; $7af4: $4c
    ld a, [bc]                                    ; $7af5: $0a
    halt                                          ; $7af6: $76
    db $ed                                        ; $7af7: $ed
    pop af                                        ; $7af8: $f1
    ccf                                           ; $7af9: $3f
    ld e, [hl]                                    ; $7afa: $5e
    ret                                           ; $7afb: $c9


    rst $20                                       ; $7afc: $e7
    add hl, sp                                    ; $7afd: $39
    ld a, c                                       ; $7afe: $79
    xor l                                         ; $7aff: $ad
    jp z, $e5e6                                   ; $7b00: $ca $e6 $e5

    rst $20                                       ; $7b03: $e7
    reti                                          ; $7b04: $d9


    ld e, c                                       ; $7b05: $59
    jp c, $f2f3                                   ; $7b06: $da $f3 $f2

    di                                            ; $7b09: $f3
    db $e4                                        ; $7b0a: $e4
    ld e, a                                       ; $7b0b: $5f
    halt                                          ; $7b0c: $76
    ld l, c                                       ; $7b0d: $69
    ld a, [hl]                                    ; $7b0e: $7e
    jp Jump_000_1847                              ; $7b0f: $c3 $47 $18


    ld b, a                                       ; $7b12: $47
    scf                                           ; $7b13: $37
    cp a                                          ; $7b14: $bf
    halt                                          ; $7b15: $76
    di                                            ; $7b16: $f3
    call c, $929d                                 ; $7b17: $dc $9d $92
    jp nc, $f17e                                  ; $7b1a: $d2 $7e $f1

    ld l, $b3                                     ; $7b1d: $2e $b3
    call nc, Call_000_1c62                        ; $7b1f: $d4 $62 $1c
    cp l                                          ; $7b22: $bd
    push af                                       ; $7b23: $f5
    ld h, l                                       ; $7b24: $65
    halt                                          ; $7b25: $76
    ld c, d                                       ; $7b26: $4a
    ldh a, [$be]                                  ; $7b27: $f0 $be
    ld h, $4d                                     ; $7b29: $26 $4d
    rla                                           ; $7b2b: $17
    inc c                                         ; $7b2c: $0c
    rst $00                                       ; $7b2d: $c7
    cp h                                          ; $7b2e: $bc
    ccf                                           ; $7b2f: $3f
    ld sp, hl                                     ; $7b30: $f9
    ld c, l                                       ; $7b31: $4d
    ld [c], a                                     ; $7b32: $e2
    ld c, [hl]                                    ; $7b33: $4e
    adc c                                         ; $7b34: $89
    xor l                                         ; $7b35: $ad
    rst $38                                       ; $7b36: $ff
    ld a, [hl]                                    ; $7b37: $7e
    rst $10                                       ; $7b38: $d7
    ret                                           ; $7b39: $c9


    ld c, e                                       ; $7b3a: $4b
    ld c, $b3                                     ; $7b3b: $0e $b3
    dec h                                         ; $7b3d: $25

jr_028_7b3e:
    jp $c4b5                                      ; $7b3e: $c3 $b5 $c4


    add $cb                                       ; $7b41: $c6 $cb
    sla l                                         ; $7b43: $cb $25
    xor $ec                                       ; $7b45: $ee $ec

Jump_028_7b47:
    sub h                                         ; $7b47: $94
    pop af                                        ; $7b48: $f1
    ld c, d                                       ; $7b49: $4a
    db $ec                                        ; $7b4a: $ec
    push hl                                       ; $7b4b: $e5
    ld d, d                                       ; $7b4c: $52
    jr nc, jr_028_7ae4                            ; $7b4d: $30 $95

    inc [hl]                                      ; $7b4f: $34
    call nz, Call_028_6976                        ; $7b50: $c4 $76 $69
    ld e, [hl]                                    ; $7b53: $5e
    ld a, [hl]                                    ; $7b54: $7e
    pop hl                                        ; $7b55: $e1
    ld h, l                                       ; $7b56: $65
    inc l                                         ; $7b57: $2c
    cp $d2                                        ; $7b58: $fe $d2
    sbc [hl]                                      ; $7b5a: $9e
    sub a                                         ; $7b5b: $97
    rra                                           ; $7b5c: $1f

Call_028_7b5d:
    db $dd                                        ; $7b5d: $dd
    and b                                         ; $7b5e: $a0
    ld a, b                                       ; $7b5f: $78
    rla                                           ; $7b60: $17
    inc c                                         ; $7b61: $0c
    cp l                                          ; $7b62: $bd
    jp nc, Jump_000_258c                          ; $7b63: $d2 $8c $25

    push de                                       ; $7b66: $d5
    ld a, h                                       ; $7b67: $7c
    add [hl]                                      ; $7b68: $86
    ret c                                         ; $7b69: $d8

    dec bc                                        ; $7b6a: $0b
    cp b                                          ; $7b6b: $b8
    ld [de], a                                    ; $7b6c: $12
    db $e3                                        ; $7b6d: $e3
    xor [hl]                                      ; $7b6e: $ae
    cp e                                          ; $7b6f: $bb
    and h                                         ; $7b70: $a4
    db $fd                                        ; $7b71: $fd
    nop                                           ; $7b72: $00
    add hl, hl                                    ; $7b73: $29
    ld l, b                                       ; $7b74: $68
    xor l                                         ; $7b75: $ad
    ld a, [hl+]                                   ; $7b76: $2a
    jp nc, Jump_028_7bac                          ; $7b77: $d2 $ac $7b

    cp d                                          ; $7b7a: $ba
    cp a                                          ; $7b7b: $bf
    call nc, Call_028_5560                        ; $7b7c: $d4 $60 $55
    add [hl]                                      ; $7b7f: $86
    sub a                                         ; $7b80: $97
    add d                                         ; $7b81: $82
    add hl, hl                                    ; $7b82: $29
    or c                                          ; $7b83: $b1
    sub l                                         ; $7b84: $95
    xor a                                         ; $7b85: $af
    pop bc                                        ; $7b86: $c1
    add d                                         ; $7b87: $82
    db $f4                                        ; $7b88: $f4
    jp hl                                         ; $7b89: $e9


    sbc b                                         ; $7b8a: $98
    ld l, b                                       ; $7b8b: $68
    sub b                                         ; $7b8c: $90
    call nc, $0305                                ; $7b8d: $d4 $05 $03
    and a                                         ; $7b90: $a7
    ld e, a                                       ; $7b91: $5f
    halt                                          ; $7b92: $76
    dec hl                                        ; $7b93: $2b
    inc de                                        ; $7b94: $13
    db $d3                                        ; $7b95: $d3
    ld b, b                                       ; $7b96: $40
    sub a                                         ; $7b97: $97
    ld [hl], l                                    ; $7b98: $75
    sub a                                         ; $7b99: $97
    or h                                          ; $7b9a: $b4
    rra                                           ; $7b9b: $1f
    jr nz, jr_028_7c03                            ; $7b9c: $20 $65

    dec l                                         ; $7b9e: $2d
    and h                                         ; $7b9f: $a4
    sbc l                                         ; $7ba0: $9d
    rra                                           ; $7ba1: $1f
    inc d                                         ; $7ba2: $14
    adc l                                         ; $7ba3: $8d
    ld [hl], c                                    ; $7ba4: $71
    push hl                                       ; $7ba5: $e5
    ld d, l                                       ; $7ba6: $55
    and [hl]                                      ; $7ba7: $a6
    db $ed                                        ; $7ba8: $ed
    inc [hl]                                      ; $7ba9: $34
    ld a, $2f                                     ; $7baa: $3e $2f

Jump_028_7bac:
    rla                                           ; $7bac: $17
    cp d                                          ; $7bad: $ba
    ld h, b                                       ; $7bae: $60
    daa                                           ; $7baf: $27
    ld h, l                                       ; $7bb0: $65
    sub $b9                                       ; $7bb1: $d6 $b9
    di                                            ; $7bb3: $f3
    ld a, [c]                                     ; $7bb4: $f2
    ld a, [c]                                     ; $7bb5: $f2
    di                                            ; $7bb6: $f3
    ld a, [c]                                     ; $7bb7: $f2
    call $be54                                    ; $7bb8: $cd $54 $be
    dec bc                                        ; $7bbb: $0b
    ld b, $3d                                     ; $7bbc: $06 $3d
    cp a                                          ; $7bbe: $bf
    ld h, $3f                                     ; $7bbf: $26 $3f
    sub [hl]                                      ; $7bc1: $96
    inc a                                         ; $7bc2: $3c
    xor l                                         ; $7bc3: $ad
    cp h                                          ; $7bc4: $bc
    ld a, h                                       ; $7bc5: $7c
    rla                                           ; $7bc6: $17
    inc c                                         ; $7bc7: $0c
    dec a                                         ; $7bc8: $3d
    adc d                                         ; $7bc9: $8a
    ld d, d                                       ; $7bca: $52
    ld a, l                                       ; $7bcb: $7d
    ld b, c                                       ; $7bcc: $41
    ld h, $a3                                     ; $7bcd: $26 $a3
    rlca                                          ; $7bcf: $07
    sbc b                                         ; $7bd0: $98
    rla                                           ; $7bd1: $17
    push af                                       ; $7bd2: $f5
    ld a, [de]                                    ; $7bd3: $1a
    inc l                                         ; $7bd4: $2c
    xor l                                         ; $7bd5: $ad
    cpl                                           ; $7bd6: $2f
    db $e3                                        ; $7bd7: $e3
    xor a                                         ; $7bd8: $af
    rla                                           ; $7bd9: $17
    add h                                         ; $7bda: $84
    ld bc, $df16                                  ; $7bdb: $01 $16 $df
    dec b                                         ; $7bde: $05
    xor d                                         ; $7bdf: $aa
    ld sp, hl                                     ; $7be0: $f9
    jp nc, $b2fa                                  ; $7be1: $d2 $fa $b2

    and $1d                                       ; $7be4: $e6 $1d
    xor l                                         ; $7be6: $ad
    rst $20                                       ; $7be7: $e7
    rrca                                          ; $7be8: $0f
    db $fc                                        ; $7be9: $fc
    add $b8                                       ; $7bea: $c6 $b8
    and d                                         ; $7bec: $a2
    sub $9f                                       ; $7bed: $d6 $9f
    rst $20                                       ; $7bef: $e7
    add d                                         ; $7bf0: $82
    rst $30                                       ; $7bf1: $f7
    or l                                          ; $7bf2: $b5
    or l                                          ; $7bf3: $b5
    xor d                                         ; $7bf4: $aa
    rst $08                                       ; $7bf5: $cf
    ld [hl], e                                    ; $7bf6: $73
    rst $00                                       ; $7bf7: $c7
    ld c, e                                       ; $7bf8: $4b
    ld h, e                                       ; $7bf9: $63
    db $db                                        ; $7bfa: $db
    sub a                                         ; $7bfb: $97
    ld e, b                                       ; $7bfc: $58
    ld a, [bc]                                    ; $7bfd: $0a
    jp nz, Jump_000_2fad                          ; $7bfe: $c2 $ad $2f

    pop hl                                        ; $7c01: $e1
    ld c, l                                       ; $7c02: $4d

jr_028_7c03:
    ld a, d                                       ; $7c03: $7a
    add h                                         ; $7c04: $84
    sub b                                         ; $7c05: $90
    ld h, l                                       ; $7c06: $65
    pop af                                        ; $7c07: $f1
    ld l, l                                       ; $7c08: $6d
    ld e, a                                       ; $7c09: $5f
    ret c                                         ; $7c0a: $d8

    call z, $d642                                 ; $7c0b: $cc $42 $d6
    dec bc                                        ; $7c0e: $0b
    or a                                          ; $7c0f: $b7
    ld a, l                                       ; $7c10: $7d
    db $e3                                        ; $7c11: $e3
    push af                                       ; $7c12: $f5
    ld h, [hl]                                    ; $7c13: $66
    db $dd                                        ; $7c14: $dd
    ld h, d                                       ; $7c15: $62
    ld l, d                                       ; $7c16: $6a
    ld a, l                                       ; $7c17: $7d
    and [hl]                                      ; $7c18: $a6
    or e                                          ; $7c19: $b3
    ld c, e                                       ; $7c1a: $4b
    di                                            ; $7c1b: $f3
    ld a, [c]                                     ; $7c1c: $f2
    di                                            ; $7c1d: $f3
    db $e4                                        ; $7c1e: $e4
    ld e, a                                       ; $7c1f: $5f
    cp d                                          ; $7c20: $ba
    ld h, b                                       ; $7c21: $60
    rst $00                                       ; $7c22: $c7
    and a                                         ; $7c23: $a7
    ld d, a                                       ; $7c24: $57
    ld b, l                                       ; $7c25: $45
    cp e                                          ; $7c26: $bb
    ld h, b                                       ; $7c27: $60
    ld b, a                                       ; $7c28: $47
    ld sp, hl                                     ; $7c29: $f9
    and d                                         ; $7c2a: $a2
    add d                                         ; $7c2b: $82
    ld [hl], e                                    ; $7c2c: $73
    rst $30                                       ; $7c2d: $f7
    inc e                                         ; $7c2e: $1c
    inc [hl]                                      ; $7c2f: $34
    add h                                         ; $7c30: $84
    xor c                                         ; $7c31: $a9
    db $fc                                        ; $7c32: $fc
    jp nc, $d2fa                                  ; $7c33: $d2 $fa $d2

    ld h, l                                       ; $7c36: $65
    dec a                                         ; $7c37: $3d
    cp a                                          ; $7c38: $bf
    ld d, $e3                                     ; $7c39: $16 $e3
    adc d                                         ; $7c3b: $8a
    ld e, d                                       ; $7c3c: $5a
    ld a, a                                       ; $7c3d: $7f
    ld e, [hl]                                    ; $7c3e: $5e
    ld a, [hl]                                    ; $7c3f: $7e
    ld h, b                                       ; $7c40: $60
    jp nz, Jump_028_65f0                          ; $7c41: $c2 $f0 $65

    ld l, c                                       ; $7c44: $69
    db $db                                        ; $7c45: $db
    add e                                         ; $7c46: $83
    ld c, h                                       ; $7c47: $4c
    ld [$0182], a                                 ; $7c48: $ea $82 $01
    cp l                                          ; $7c4b: $bd
    ld e, $b8                                     ; $7c4c: $1e $b8
    db $d3                                        ; $7c4e: $d3
    jr jr_028_7c77                                ; $7c4f: $18 $26

    ld hl, sp+$28                                 ; $7c51: $f8 $28
    sub a                                         ; $7c53: $97
    db $f4                                        ; $7c54: $f4
    db $e3                                        ; $7c55: $e3
    ld l, a                                       ; $7c56: $6f
    adc h                                         ; $7c57: $8c
    ld l, e                                       ; $7c58: $6b
    rst $38                                       ; $7c59: $ff
    jp z, $a3cb                                   ; $7c5a: $ca $cb $a3

    sbc l                                         ; $7c5d: $9d
    ld h, b                                       ; $7c5e: $60
    ret nz                                        ; $7c5f: $c0

    rst $00                                       ; $7c60: $c7
    rla                                           ; $7c61: $17
    push af                                       ; $7c62: $f5
    or l                                          ; $7c63: $b5
    sub b                                         ; $7c64: $90
    halt                                          ; $7c65: $76
    ld a, [hl]                                    ; $7c66: $7e
    rla                                           ; $7c67: $17
    add $eb                                       ; $7c68: $c6 $eb
    push af                                       ; $7c6a: $f5
    ld c, e                                       ; $7c6b: $4b
    pop bc                                        ; $7c6c: $c1
    db $ec                                        ; $7c6d: $ec
    inc d                                         ; $7c6e: $14
    add h                                         ; $7c6f: $84
    ld bc, $2aad                                  ; $7c70: $01 $ad $2a
    jp nc, $c770                                  ; $7c73: $d2 $70 $c7

Jump_028_7c76:
    ld a, a                                       ; $7c76: $7f

jr_028_7c77:
    ld c, l                                       ; $7c77: $4d
    ld a, [hl]                                    ; $7c78: $7e
    sub h                                         ; $7c79: $94
    cp [hl]                                       ; $7c7a: $be
    or a                                          ; $7c7b: $b7
    ld a, $0d                                     ; $7c7c: $3e $0d
    adc h                                         ; $7c7e: $8c
    db $fc                                        ; $7c7f: $fc
    xor [hl]                                      ; $7c80: $ae
    cp l                                          ; $7c81: $bd
    ld a, [c]                                     ; $7c82: $f2
    xor e                                         ; $7c83: $ab
    ld d, e                                       ; $7c84: $53
    ld a, [c]                                     ; $7c85: $f2
    or b                                          ; $7c86: $b0
    sub d                                         ; $7c87: $92
    db $fc                                        ; $7c88: $fc
    inc a                                         ; $7c89: $3c
    rla                                           ; $7c8a: $17
    cp h                                          ; $7c8b: $bc
    xor a                                         ; $7c8c: $af
    and e                                         ; $7c8d: $a3
    ldh [$3b], a                                  ; $7c8e: $e0 $3b
    ld l, $1a                                     ; $7c90: $2e $1a
    db $db                                        ; $7c92: $db
    ld l, [hl]                                    ; $7c93: $6e
    sub $bc                                       ; $7c94: $d6 $bc

jr_028_7c96:
    inc hl                                        ; $7c96: $23
    inc c                                         ; $7c97: $0c
    ld b, a                                       ; $7c98: $47
    dec de                                        ; $7c99: $1b
    ld e, a                                       ; $7c9a: $5f
    ret c                                         ; $7c9b: $d8

    inc c                                         ; $7c9c: $0c
    ld a, [hl+]                                   ; $7c9d: $2a
    sub l                                         ; $7c9e: $95
    dec d                                         ; $7c9f: $15
    inc hl                                        ; $7ca0: $23
    ld c, $0b                                     ; $7ca1: $0e $0b
    ld d, e                                       ; $7ca3: $53
    ld a, [hl]                                    ; $7ca4: $7e
    ld e, [hl]                                    ; $7ca5: $5e
    sub h                                         ; $7ca6: $94
    or $d6                                        ; $7ca7: $f6 $d6
    sub a                                         ; $7ca9: $97
    or l                                          ; $7caa: $b5
    rst $18                                       ; $7cab: $df

Jump_028_7cac:
    ld c, [hl]                                    ; $7cac: $4e
    ld a, c                                       ; $7cad: $79
    inc [hl]                                      ; $7cae: $34
    res 7, h                                      ; $7caf: $cb $bc
    ld e, h                                       ; $7cb1: $5c
    xor d                                         ; $7cb2: $aa
    rst $28                                       ; $7cb3: $ef
    ld a, d                                       ; $7cb4: $7a
    dec c                                         ; $7cb5: $0d
    and [hl]                                      ; $7cb6: $a6
    add e                                         ; $7cb7: $83
    dec de                                        ; $7cb8: $1b
    ret nc                                        ; $7cb9: $d0

    sbc b                                         ; $7cba: $98
    ld d, d                                       ; $7cbb: $52
    ldh a, [$b2]                                  ; $7cbc: $f0 $b2
    dec bc                                        ; $7cbe: $0b
    xor e                                         ; $7cbf: $ab
    ld [hl-], a                                   ; $7cc0: $32
    cp h                                          ; $7cc1: $bc
    inc d                                         ; $7cc2: $14
    jr nz, jr_028_7cd1                            ; $7cc3: $20 $0c

    xor l                                         ; $7cc5: $ad
    rra                                           ; $7cc6: $1f
    ld h, e                                       ; $7cc7: $63
    halt                                          ; $7cc8: $76
    reti                                          ; $7cc9: $d9


    or c                                          ; $7cca: $b1
    ld [hl], h                                    ; $7ccb: $74
    ld e, [hl]                                    ; $7ccc: $5e
    ld [hl], $97                                  ; $7ccd: $36 $97
    ld l, d                                       ; $7ccf: $6a
    di                                            ; $7cd0: $f3

jr_028_7cd1:
    ld a, [c]                                     ; $7cd1: $f2
    inc bc                                        ; $7cd2: $03
    ld b, e                                       ; $7cd3: $43
    xor e                                         ; $7cd4: $ab
    reti                                          ; $7cd5: $d9


    add hl, hl                                    ; $7cd6: $29
    cp a                                          ; $7cd7: $bf
    ld h, $4d                                     ; $7cd8: $26 $4d
    ld c, l                                       ; $7cda: $4d
    ld a, [hl]                                    ; $7cdb: $7e
    ld l, c                                       ; $7cdc: $69
    db $db                                        ; $7cdd: $db
    di                                            ; $7cde: $f3
    sub a                                         ; $7cdf: $97
    sub l                                         ; $7ce0: $95
    inc c                                         ; $7ce1: $0c
    ld a, a                                       ; $7ce2: $7f
    ld a, [de]                                    ; $7ce3: $1a
    add sp, -$5b                                  ; $7ce4: $e8 $a5
    xor [hl]                                      ; $7ce6: $ae
    jr jr_028_7c96                                ; $7ce7: $18 $ad

    ld a, [de]                                    ; $7ce9: $1a
    ret z                                         ; $7cea: $c8

    ld h, l                                       ; $7ceb: $65
    call c, Call_028_7b5d                         ; $7cec: $dc $5d $7b
    sub b                                         ; $7cef: $90
    pop hl                                        ; $7cf0: $e1
    daa                                           ; $7cf1: $27
    db $fd                                        ; $7cf2: $fd
    ld a, b                                       ; $7cf3: $78
    dec h                                         ; $7cf4: $25

jr_028_7cf5:
    ld a, a                                       ; $7cf5: $7f
    ld [hl], $cf                                  ; $7cf6: $36 $cf
    dec b                                         ; $7cf8: $05
    rst $28                                       ; $7cf9: $ef
    db $eb                                        ; $7cfa: $eb
    jr z, jr_028_7cf5                             ; $7cfb: $28 $f8

    adc [hl]                                      ; $7cfd: $8e
    adc e                                         ; $7cfe: $8b
    add $b6                                       ; $7cff: $c6 $b6
    dec de                                        ; $7d01: $1b
    xor $4a                                       ; $7d02: $ee $4a
    ld a, [c]                                     ; $7d04: $f2
    db $e3                                        ; $7d05: $e3
    db $d3                                        ; $7d06: $d3
    ld b, h                                       ; $7d07: $44
    ld [hl], $2f                                  ; $7d08: $36 $2f
    rst $18                                       ; $7d0a: $df
    adc h                                         ; $7d0b: $8c
    push hl                                       ; $7d0c: $e5
    xor [hl]                                      ; $7d0d: $ae
    ld [hl], a                                    ; $7d0e: $77
    push bc                                       ; $7d0f: $c5
    daa                                           ; $7d10: $27
    db $dd                                        ; $7d11: $dd
    ld a, [$32cf]                                 ; $7d12: $fa $cf $32
    rst $08                                       ; $7d15: $cf
    ld e, b                                       ; $7d16: $58
    sbc e                                         ; $7d17: $9b
    rla                                           ; $7d18: $17
    push af                                       ; $7d19: $f5
    add c                                         ; $7d1a: $81
    adc e                                         ; $7d1b: $8b
    ld d, d                                       ; $7d1c: $52
    ldh a, [$c2]                                  ; $7d1d: $f0 $c2
    db $dd                                        ; $7d1f: $dd
    ld a, c                                       ; $7d20: $79
    ld b, $6a                                     ; $7d21: $06 $6a
    db $eb                                        ; $7d23: $eb
    ld b, h                                       ; $7d24: $44
    ld l, l                                       ; $7d25: $6d
    halt                                          ; $7d26: $76
    ld e, h                                       ; $7d27: $5c

Call_028_7d28:
    inc [hl]                                      ; $7d28: $34
    or [hl]                                       ; $7d29: $b6
    db $dd                                        ; $7d2a: $dd
    call z, $4fcb                                 ; $7d2b: $cc $cb $4f
    ld l, [hl]                                    ; $7d2e: $6e
    ld d, b                                       ; $7d2f: $50
    ld a, h                                       ; $7d30: $7c
    ld l, e                                       ; $7d31: $6b
    ld e, a                                       ; $7d32: $5f
    ld e, a                                       ; $7d33: $5f
    sub $16                                       ; $7d34: $d6 $16
    ld a, [de]                                    ; $7d36: $1a
    cp b                                          ; $7d37: $b8
    push de                                       ; $7d38: $d5
    sub h                                         ; $7d39: $94
    ld l, d                                       ; $7d3a: $6a
    dec hl                                        ; $7d3b: $2b
    ld e, a                                       ; $7d3c: $5f
    adc e                                         ; $7d3d: $8b
    ld [hl], c                                    ; $7d3e: $71
    or [hl]                                       ; $7d3f: $b6
    add $38                                       ; $7d40: $c6 $38
    add l                                         ; $7d42: $85
    ld hl, sp-$21                                 ; $7d43: $f8 $df
    ld b, c                                       ; $7d45: $41
    dec sp                                        ; $7d46: $3b
    adc $10                                       ; $7d47: $ce $10
    dec [hl]                                      ; $7d49: $35
    dec hl                                        ; $7d4a: $2b
    scf                                           ; $7d4b: $37
    inc e                                         ; $7d4c: $1c
    sub h                                         ; $7d4d: $94
    db $e4                                        ; $7d4e: $e4
    cpl                                           ; $7d4f: $2f
    push de                                       ; $7d50: $d5
    ld h, [hl]                                    ; $7d51: $66
    ld a, [hl-]                                   ; $7d52: $3a
    db $e3                                        ; $7d53: $e3
    xor a                                         ; $7d54: $af
    sub a                                         ; $7d55: $97
    ld a, c                                       ; $7d56: $79
    ld d, c                                       ; $7d57: $51
    rst $18                                       ; $7d58: $df
    rlca                                          ; $7d59: $07
    pop bc                                        ; $7d5a: $c1
    ld hl, sp-$0e                                 ; $7d5b: $f8 $f2
    inc [hl]                                      ; $7d5d: $34
    bit 7, b                                      ; $7d5e: $cb $78
    dec h                                         ; $7d60: $25
    ld a, a                                       ; $7d61: $7f
    or [hl]                                       ; $7d62: $b6
    db $eb                                        ; $7d63: $eb
    add e                                         ; $7d64: $83
    ld e, h                                       ; $7d65: $5c
    ld l, b                                       ; $7d66: $68
    xor d                                         ; $7d67: $aa
    add d                                         ; $7d68: $82
    jr nc, jr_028_7da8                            ; $7d69: $30 $3d

    ld a, a                                       ; $7d6b: $7f
    ld b, l                                       ; $7d6c: $45
    xor l                                         ; $7d6d: $ad
    ccf                                           ; $7d6e: $3f
    rst $08                                       ; $7d6f: $cf
    ld sp, hl                                     ; $7d70: $f9
    rst $00                                       ; $7d71: $c7
    cp b                                          ; $7d72: $b8
    ld h, e                                       ; $7d73: $63
    ld c, h                                       ; $7d74: $4c
    ret c                                         ; $7d75: $d8

    adc [hl]                                      ; $7d76: $8e
    rst $08                                       ; $7d77: $cf
    ld d, d                                       ; $7d78: $52
    ld a, [hl]                                    ; $7d79: $7e
    sub h                                         ; $7d7a: $94
    inc a                                         ; $7d7b: $3c
    sbc d                                         ; $7d7c: $9a
    push bc                                       ; $7d7d: $c5
    rst $00                                       ; $7d7e: $c7
    dec hl                                        ; $7d7f: $2b
    xor h                                         ; $7d80: $ac
    add l                                         ; $7d81: $85
    or h                                          ; $7d82: $b4
    di                                            ; $7d83: $f3
    db $e3                                        ; $7d84: $e3
    ld c, e                                       ; $7d85: $4b
    ld c, $32                                     ; $7d86: $0e $32
    or d                                          ; $7d88: $b2
    sbc l                                         ; $7d89: $9d
    sub d                                         ; $7d8a: $92
    jp nc, $f17e                                  ; $7d8b: $d2 $7e $f1

    ld a, c                                       ; $7d8e: $79
    xor [hl]                                      ; $7d8f: $ae
    ld d, l                                       ; $7d90: $55
    inc bc                                        ; $7d91: $03
    cp c                                          ; $7d92: $b9
    inc c                                         ; $7d93: $0c
    ld h, c                                       ; $7d94: $61
    ld b, a                                       ; $7d95: $47
    dec de                                        ; $7d96: $1b
    rra                                           ; $7d97: $1f
    rst $38                                       ; $7d98: $ff
    ld h, e                                       ; $7d99: $63

jr_028_7d9a:
    ld c, c                                       ; $7d9a: $49
    dec [hl]                                      ; $7d9b: $35
    ld e, a                                       ; $7d9c: $5f
    sbc l                                         ; $7d9d: $9d
    sub d                                         ; $7d9e: $92
    rra                                           ; $7d9f: $1f
    ld e, a                                       ; $7da0: $5f
    ld e, [hl]                                    ; $7da1: $5e
    ld a, [hl]                                    ; $7da2: $7e
    rst $00                                       ; $7da3: $c7
    sbc b                                         ; $7da4: $98

jr_028_7da5:
    or b                                          ; $7da5: $b0
    dec e                                         ; $7da6: $1d
    sbc a                                         ; $7da7: $9f

jr_028_7da8:
    and l                                         ; $7da8: $a5
    ld a, h                                       ; $7da9: $7c
    dec c                                         ; $7daa: $0d
    sub [hl]                                      ; $7dab: $96
    or [hl]                                       ; $7dac: $b6
    ld a, l                                       ; $7dad: $7d
    xor e                                         ; $7dae: $ab
    rst $18                                       ; $7daf: $df
    dec b                                         ; $7db0: $05
    add h                                         ; $7db1: $84
    ld bc, $ca3d                                  ; $7db2: $01 $3d $ca
    db $d3                                        ; $7db5: $d3
    ld hl, sp-$51                                 ; $7db6: $f8 $af
    push bc                                       ; $7db8: $c5
    cp b                                          ; $7db9: $b8
    and d                                         ; $7dba: $a2
    sub $9f                                       ; $7dbb: $d6 $9f
    rst $20                                       ; $7dbd: $e7
    ld h, d                                       ; $7dbe: $62
    ld h, [hl]                                    ; $7dbf: $66
    dec e                                         ; $7dc0: $1d
    ld l, l                                       ; $7dc1: $6d
    daa                                           ; $7dc2: $27
    cp l                                          ; $7dc3: $bd
    rst $10                                       ; $7dc4: $d7
    ld h, b                                       ; $7dc5: $60
    ret nc                                        ; $7dc6: $d0

    adc c                                         ; $7dc7: $89
    rst $10                                       ; $7dc8: $d7
    ld h, a                                       ; $7dc9: $67
    ld a, [hl-]                                   ; $7dca: $3a
    ld d, e                                       ; $7dcb: $53
    ld h, d                                       ; $7dcc: $62
    dec bc                                        ; $7dcd: $0b
    rst $38                                       ; $7dce: $ff
    ld a, l                                       ; $7dcf: $7d
    ld l, l                                       ; $7dd0: $6d
    xor l                                         ; $7dd1: $ad
    ld [$df53], a                                 ; $7dd2: $ea $53 $df
    pop af                                        ; $7dd5: $f1
    jp nc, $f6d8                                  ; $7dd6: $d2 $d8 $f6

    dec h                                         ; $7dd9: $25
    sub [hl]                                      ; $7dda: $96
    add d                                         ; $7ddb: $82
    jr nc, jr_028_7da5                            ; $7ddc: $30 $c7

    db $e4                                        ; $7dde: $e4
    sbc d                                         ; $7ddf: $9a
    inc [hl]                                      ; $7de0: $34
    xor e                                         ; $7de1: $ab
    ld d, e                                       ; $7de2: $53
    ld a, [c]                                     ; $7de3: $f2
    db $e3                                        ; $7de4: $e3
    set 1, e                                      ; $7de5: $cb $cb
    rst $28                                       ; $7de7: $ef
    jr jr_028_7dfd                                ; $7de8: $18 $13

    or [hl]                                       ; $7dea: $b6
    db $e3                                        ; $7deb: $e3
    or e                                          ; $7dec: $b3
    sub h                                         ; $7ded: $94
    rst $18                                       ; $7dee: $df
    add l                                         ; $7def: $85
    xor [hl]                                      ; $7df0: $ae
    jr jr_028_7d9a                                ; $7df1: $18 $a7

    inc h                                         ; $7df3: $24
    ld [hl], a                                    ; $7df4: $77
    sub [hl]                                      ; $7df5: $96
    dec d                                         ; $7df6: $15
    or l                                          ; $7df7: $b5
    ld a, $d5                                     ; $7df8: $3e $d5
    ld a, h                                       ; $7dfa: $7c
    ldh a, [rVBK]                                 ; $7dfb: $f0 $4f

jr_028_7dfd:
    dec hl                                        ; $7dfd: $2b
    scf                                           ; $7dfe: $37
    sbc h                                         ; $7dff: $9c
    add $38                                       ; $7e00: $c6 $38
    and [hl]                                      ; $7e02: $a6
    dec c                                         ; $7e03: $0d
    jp nz, $9596                                  ; $7e04: $c2 $96 $95

    ld d, a                                       ; $7e07: $57
    ld h, c                                       ; $7e08: $61
    add e                                         ; $7e09: $83
    inc c                                         ; $7e0a: $0c
    sbc a                                         ; $7e0b: $9f
    cpl                                           ; $7e0c: $2f
    cpl                                           ; $7e0d: $2f
    ccf                                           ; $7e0e: $3f
    cpl                                           ; $7e0f: $2f
    ld [$3f2b], a                                 ; $7e10: $ea $2b $3f
    ld e, [hl]                                    ; $7e13: $5e
    ld h, c                                       ; $7e14: $61
    sub l                                         ; $7e15: $95
    add $f8                                       ; $7e16: $c6 $f8
    ld l, h                                       ; $7e18: $6c
    jp z, $b36b                                   ; $7e19: $ca $6b $b3

jr_028_7e1c:
    and h                                         ; $7e1c: $a4
    add hl, de                                    ; $7e1d: $19
    add hl, bc                                    ; $7e1e: $09
    sbc [hl]                                      ; $7e1f: $9e
    ld a, h                                       ; $7e20: $7c
    ld l, l                                       ; $7e21: $6d
    inc bc                                        ; $7e22: $03
    sub a                                         ; $7e23: $97
    ld e, $00                                     ; $7e24: $1e $00
    ld h, c                                       ; $7e26: $61
    rst $00                                       ; $7e27: $c7
    db $e4                                        ; $7e28: $e4
    sbc d                                         ; $7e29: $9a
    inc [hl]                                      ; $7e2a: $34
    xor e                                         ; $7e2b: $ab
    ld d, e                                       ; $7e2c: $53

jr_028_7e2d:
    ld a, [c]                                     ; $7e2d: $f2
    db $e3                                        ; $7e2e: $e3
    set 1, e                                      ; $7e2f: $cb $cb
    adc a                                         ; $7e31: $8f
    rst $38                                       ; $7e32: $ff
    ld d, l                                       ; $7e33: $55
    ld c, d                                       ; $7e34: $4a
    or e                                          ; $7e35: $b3
    cpl                                           ; $7e36: $2f
    or c                                          ; $7e37: $b1
    dec e                                         ; $7e38: $1d
    ld h, e                                       ; $7e39: $63
    jp nz, Jump_028_7c76                          ; $7e3a: $c2 $76 $7c

    sub [hl]                                      ; $7e3d: $96
    ld a, [c]                                     ; $7e3e: $f2
    call c, $e275                                 ; $7e3f: $dc $75 $e2
    dec hl                                        ; $7e42: $2b
    ld a, h                                       ; $7e43: $7c
    ld d, a                                       ; $7e44: $57
    inc c                                         ; $7e45: $0c
    sub [hl]                                      ; $7e46: $96
    pop af                                        ; $7e47: $f1
    ld l, c                                       ; $7e48: $69
    ld [hl+], a                                   ; $7e49: $22
    and e                                         ; $7e4a: $a3
    sbc d                                         ; $7e4b: $9a
    rst $08                                       ; $7e4c: $cf
    ccf                                           ; $7e4d: $3f
    add $35                                       ; $7e4e: $c6 $35
    ld l, c                                       ; $7e50: $69
    halt                                          ; $7e51: $76
    db $ed                                        ; $7e52: $ed
    ld e, c                                       ; $7e53: $59
    add $2e                                       ; $7e54: $c6 $2e
    ld e, e                                       ; $7e56: $5b
    sbc l                                         ; $7e57: $9d
    sub d                                         ; $7e58: $92
    ld b, a                                       ; $7e59: $47
    ld l, e                                       ; $7e5a: $6b
    db $fd                                        ; $7e5b: $fd
    ld a, [de]                                    ; $7e5c: $1a
    ld c, h                                       ; $7e5d: $4c
    rst $10                                       ; $7e5e: $d7
    ld [hl], $d0                                  ; $7e5f: $36 $d0
    inc l                                         ; $7e61: $2c
    ld d, h                                       ; $7e62: $54
    ld b, d                                       ; $7e63: $42
    jr jr_028_7e2d                                ; $7e64: $18 $c7

    db $e4                                        ; $7e66: $e4
    sbc d                                         ; $7e67: $9a
    inc [hl]                                      ; $7e68: $34
    xor e                                         ; $7e69: $ab
    ld d, e                                       ; $7e6a: $53
    ld a, [c]                                     ; $7e6b: $f2
    db $e3                                        ; $7e6c: $e3
    set 1, e                                      ; $7e6d: $cb $cb
    adc a                                         ; $7e6f: $8f
    rst $38                                       ; $7e70: $ff
    ld d, l                                       ; $7e71: $55
    ld c, d                                       ; $7e72: $4a
    or e                                          ; $7e73: $b3
    cpl                                           ; $7e74: $2f
    or c                                          ; $7e75: $b1
    dec e                                         ; $7e76: $1d
    ld h, e                                       ; $7e77: $63
    jp nz, Jump_028_7c76                          ; $7e78: $c2 $76 $7c

    sub [hl]                                      ; $7e7b: $96
    ld a, [c]                                     ; $7e7c: $f2
    call c, $2475                                 ; $7e7d: $dc $75 $24
    db $ed                                        ; $7e80: $ed
    rlca                                          ; $7e81: $07
    ld c, b                                       ; $7e82: $48
    ld b, c                                       ; $7e83: $41
    jr jr_028_7e1c                                ; $7e84: $18 $96

    sub l                                         ; $7e86: $95
    ld d, a                                       ; $7e87: $57
    ld h, c                                       ; $7e88: $61
    dec hl                                        ; $7e89: $2b
    ccf                                           ; $7e8a: $3f
    ld e, [hl]                                    ; $7e8b: $5e
    ld h, c                                       ; $7e8c: $61
    sub l                                         ; $7e8d: $95
    add $f8                                       ; $7e8e: $c6 $f8
    ld l, h                                       ; $7e90: $6c
    jp z, $836b                                   ; $7e91: $ca $6b $83

    ld h, [hl]                                    ; $7e94: $66
    add hl, de                                    ; $7e95: $19
    ld c, e                                       ; $7e96: $4b
    xor d                                         ; $7e97: $aa
    ld sp, hl                                     ; $7e98: $f9
    ld [$fc94], a                                 ; $7e99: $ea $94 $fc
    xor [hl]                                      ; $7e9c: $ae
    cp l                                          ; $7e9d: $bd
    ld a, [c]                                     ; $7e9e: $f2
    dec [hl]                                      ; $7e9f: $35
    ld e, b                                       ; $7ea0: $58
    ld a, h                                       ; $7ea1: $7c
    db $db                                        ; $7ea2: $db
    rst $10                                       ; $7ea3: $d7
    cp h                                          ; $7ea4: $bc
    inc hl                                        ; $7ea5: $23
    inc c                                         ; $7ea6: $0c
    sub [hl]                                      ; $7ea7: $96
    pop de                                        ; $7ea8: $d1
    ccf                                           ; $7ea9: $3f
    sbc e                                         ; $7eaa: $9b
    rst $20                                       ; $7eab: $e7
    and b                                         ; $7eac: $a0
    di                                            ; $7ead: $f3
    ld e, d                                       ; $7eae: $5a
    sbc a                                         ; $7eaf: $9f
    rst $20                                       ; $7eb0: $e7
    adc [hl]                                      ; $7eb1: $8e
    ld sp, $3b61                                  ; $7eb2: $31 $61 $3b

Call_028_7eb5:
    ld a, $4b                                     ; $7eb5: $3e $4b
    ld a, c                                       ; $7eb7: $79
    inc [hl]                                      ; $7eb8: $34
    adc e                                         ; $7eb9: $8b
    rst $10                                       ; $7eba: $d7
    ld h, b                                       ; $7ebb: $60
    ld c, d                                       ; $7ebc: $4a
    ei                                            ; $7ebd: $fb
    ldh a, [rNR51]                                ; $7ebe: $f0 $25
    ld a, b                                       ; $7ec0: $78
    xor d                                         ; $7ec1: $aa
    sbc d                                         ; $7ec2: $9a
    ld l, $18                                     ; $7ec3: $2e $18
    db $dd                                        ; $7ec5: $dd
    dec h                                         ; $7ec6: $25
    db $ed                                        ; $7ec7: $ed
    rlca                                          ; $7ec8: $07
    ld c, b                                       ; $7ec9: $48
    reti                                          ; $7eca: $d9


    ld sp, $6c26                                  ; $7ecb: $31 $26 $6c
    rst $00                                       ; $7ece: $c7
    ld h, a                                       ; $7ecf: $67
    add hl, hl                                    ; $7ed0: $29
    cp a                                          ; $7ed1: $bf
    dec bc                                        ; $7ed2: $0b
    cp e                                          ; $7ed3: $bb
    or h                                          ; $7ed4: $b4
    sub e                                         ; $7ed5: $93
    sub d                                         ; $7ed6: $92
    ld e, b                                       ; $7ed7: $58
    ld [de], a                                    ; $7ed8: $12
    ld e, d                                       ; $7ed9: $5a
    db $eb                                        ; $7eda: $eb
    cpl                                           ; $7edb: $2f
    ld c, b                                       ; $7edc: $48
    sbc a                                         ; $7edd: $9f
    jp nc, $048c                                  ; $7ede: $d2 $8c $04

    ld c, a                                       ; $7ee1: $4f
    ld a, $30                                     ; $7ee2: $3e $30
    ld h, c                                       ; $7ee4: $61
    sbc b                                         ; $7ee5: $98
    inc b                                         ; $7ee6: $04
    or e                                          ; $7ee7: $b3
    dec h                                         ; $7ee8: $25
    jp $f979                                      ; $7ee9: $c3 $79 $f9


    sbc l                                         ; $7eec: $9d
    ld a, h                                       ; $7eed: $7c
    jp hl                                         ; $7eee: $e9


    add d                                         ; $7eef: $82
    ld c, e                                       ; $7ef0: $4b
    or e                                          ; $7ef1: $b3
    or h                                          ; $7ef2: $b4
    ld [hl], a                                    ; $7ef3: $77
    or d                                          ; $7ef4: $b2
    ld b, $b7                                     ; $7ef5: $06 $b7
    ld b, d                                       ; $7ef7: $42
    db $eb                                        ; $7ef8: $eb
    ld e, c                                       ; $7ef9: $59
    sbc d                                         ; $7efa: $9a
    or c                                          ; $7efb: $b1
    ld e, h                                       ; $7efc: $5c
    sub e                                         ; $7efd: $93
    ld h, [hl]                                    ; $7efe: $66
    cp h                                          ; $7eff: $bc
    sub d                                         ; $7f00: $92
    rst $08                                       ; $7f01: $cf
    ld [hl], e                                    ; $7f02: $73
    ldh a, [$bf]                                  ; $7f03: $f0 $bf
    ld [hl], d                                    ; $7f05: $72
    jp Jump_000_18ae                              ; $7f06: $c3 $ae $18


    ld d, $af                                     ; $7f09: $16 $af
    ld bc, $4842                                  ; $7f0b: $01 $42 $48
    db $db                                        ; $7f0e: $db
    ld l, c                                       ; $7f0f: $69
    ld a, h                                       ; $7f10: $7c
    ld e, [hl]                                    ; $7f11: $5e
    ld a, [hl]                                    ; $7f12: $7e
    db $dd                                        ; $7f13: $dd
    res 1, l                                      ; $7f14: $cb $8d
    add hl, bc                                    ; $7f16: $09
    reti                                          ; $7f17: $d9


    add hl, hl                                    ; $7f18: $29
    cpl                                           ; $7f19: $2f
    dec [hl]                                      ; $7f1a: $35
    ld e, b                                       ; $7f1b: $58

jr_028_7f1c:
    adc e                                         ; $7f1c: $8b
    daa                                           ; $7f1d: $27
    dec a                                         ; $7f1e: $3d
    jp nz, $c9ad                                  ; $7f1f: $c2 $ad $c9

    adc a                                         ; $7f22: $8f
    push hl                                       ; $7f23: $e5
    sbc d                                         ; $7f24: $9a
    inc [hl]                                      ; $7f25: $34
    xor e                                         ; $7f26: $ab
    ld d, e                                       ; $7f27: $53
    ld a, [c]                                     ; $7f28: $f2
    db $d3                                        ; $7f29: $d3
    halt                                          ; $7f2a: $76
    ld a, [de]                                    ; $7f2b: $1a
    sbc a                                         ; $7f2c: $9f
    rla                                           ; $7f2d: $17
    push af                                       ; $7f2e: $f5
    ld l, $18                                     ; $7f2f: $2e $18
    ld d, $af                                     ; $7f31: $16 $af
    pop bc                                        ; $7f33: $c1
    jr z, @+$7f                                   ; $7f34: $28 $7d

    scf                                           ; $7f36: $37
    db $ec                                        ; $7f37: $ec
    and h                                         ; $7f38: $a4
    cp b                                          ; $7f39: $b8
    sub d                                         ; $7f3a: $92
    and e                                         ; $7f3b: $a3
    or l                                          ; $7f3c: $b5
    sub b                                         ; $7f3d: $90
    ld [hl+], a                                   ; $7f3e: $22
    add h                                         ; $7f3f: $84
    ld c, h                                       ; $7f40: $4c
    ret z                                         ; $7f41: $c8

    dec e                                         ; $7f42: $1d
    ld h, h                                       ; $7f43: $64
    ld hl, sp+$49                                 ; $7f44: $f8 $49
    cp a                                          ; $7f46: $bf
    dec bc                                        ; $7f47: $0b
    dec bc                                        ; $7f48: $0b
    ld a, [c]                                     ; $7f49: $f2
    ld d, d                                       ; $7f4a: $52
    jr nc, jr_028_7f1c                            ; $7f4b: $30 $cf

    cp c                                          ; $7f4d: $b9
    inc [hl]                                      ; $7f4e: $34
    di                                            ; $7f4f: $f3
    inc e                                         ; $7f50: $1c
    ld hl, sp+$6b                                 ; $7f51: $f8 $6b
    call c, $8475                                 ; $7f53: $dc $75 $84
    ld bc, $e4a7                                  ; $7f56: $01 $a7 $e4
    sub d                                         ; $7f59: $92
    ld a, [hl]                                    ; $7f5a: $7e
    sub l                                         ; $7f5b: $95
    jp nc, $093a                                  ; $7f5c: $d2 $3a $09

    ld [hl], b                                    ; $7f5f: $70
    db $db                                        ; $7f60: $db
    or c                                          ; $7f61: $b1
    add hl, de                                    ; $7f62: $19
    ld hl, sp+$6b                                 ; $7f63: $f8 $6b
    sbc h                                         ; $7f65: $9c
    sub a                                         ; $7f66: $97
    ld e, a                                       ; $7f67: $5f
    adc e                                         ; $7f68: $8b
    daa                                           ; $7f69: $27
    dec a                                         ; $7f6a: $3d
    jp c, Jump_000_2631                           ; $7f6b: $da $31 $26

    ld l, h                                       ; $7f6e: $6c
    rst $00                                       ; $7f6f: $c7
    ld h, a                                       ; $7f70: $67
    add hl, hl                                    ; $7f71: $29
    ccf                                           ; $7f72: $3f
    cp $c6                                        ; $7f73: $fe $c6

Call_028_7f75:
    cp b                                          ; $7f75: $b8
    or $af                                        ; $7f76: $f6 $af
    xor l                                         ; $7f78: $ad
    ld d, l                                       ; $7f79: $55
    ld a, l                                       ; $7f7a: $7d
    sbc [hl]                                      ; $7f7b: $9e
    ld h, c                                       ; $7f7c: $61
    adc d                                         ; $7f7d: $8a
    inc h                                         ; $7f7e: $24
    adc a                                         ; $7f7f: $8f
    ld h, [hl]                                    ; $7f80: $66
    xor c                                         ; $7f81: $a9
    add l                                         ; $7f82: $85
    inc bc                                        ; $7f83: $03
    inc hl                                        ; $7f84: $23
    cp a                                          ; $7f85: $bf
    ld a, [c]                                     ; $7f86: $f2
    db $e3                                        ; $7f87: $e3
    ld l, a                                       ; $7f88: $6f
    adc h                                         ; $7f89: $8c
    db $e3                                        ; $7f8a: $e3
    sub l                                         ; $7f8b: $95

Jump_028_7f8c:
    ld a, h                                       ; $7f8c: $7c
    sbc [hl]                                      ; $7f8d: $9e
    dec hl                                        ; $7f8e: $2b
    ld l, d                                       ; $7f8f: $6a
    db $fd                                        ; $7f90: $fd
    jp hl                                         ; $7f91: $e9


    ld h, d                                       ; $7f92: $62

jr_028_7f93:
    ld d, d                                       ; $7f93: $52
    jr nc, @-$27                                  ; $7f94: $30 $d7

    ld e, b                                       ; $7f96: $58
    rra                                           ; $7f97: $1f
    ld a, a                                       ; $7f98: $7f
    cp l                                          ; $7f99: $bd
    xor h                                         ; $7f9a: $ac
    ld c, c                                       ; $7f9b: $49
    inc sp                                        ; $7f9c: $33

jr_028_7f9d:
    ld l, l                                       ; $7f9d: $6d
    and a                                         ; $7f9e: $a7
    pop af                                        ; $7f9f: $f1
    ld a, c                                       ; $7fa0: $79
    cp c                                          ; $7fa1: $b9
    add b                                         ; $7fa2: $80
    jr nc, jr_028_7fbb                            ; $7fa3: $30 $16

    ld a, e                                       ; $7fa5: $7b
    ld d, b                                       ; $7fa6: $50
    ld a, [hl]                                    ; $7fa7: $7e
    ld [hl], l                                    ; $7fa8: $75
    ld c, d                                       ; $7fa9: $4a
    ld e, $76                                     ; $7faa: $1e $76
    adc h                                         ; $7fac: $8c
    add hl, bc                                    ; $7fad: $09
    db $db                                        ; $7fae: $db
    pop af                                        ; $7faf: $f1
    ld e, c                                       ; $7fb0: $59
    jp z, $c2ef                                   ; $7fb1: $ca $ef $c2

    add d                                         ; $7fb4: $82
    and h                                         ; $7fb5: $a4
    rst $20                                       ; $7fb6: $e7
    ld c, $72                                     ; $7fb7: $0e $72
    inc l                                         ; $7fb9: $2c
    rra                                           ; $7fba: $1f

jr_028_7fbb:
    sub $42                                       ; $7fbb: $d6 $42
    jp c, $b479                                   ; $7fbd: $da $79 $b4

    sub $af                                       ; $7fc0: $d6 $af

Jump_028_7fc2:
    push bc                                       ; $7fc2: $c5
    cp b                                          ; $7fc3: $b8
    jr nz, @+$69                                  ; $7fc4: $20 $67

    and a                                         ; $7fc6: $a7
    call z, $afcb                                 ; $7fc7: $cc $cb $af
    push bc                                       ; $7fca: $c5
    sub e                                         ; $7fcb: $93
    ld a, [hl]                                    ; $7fcc: $7e
    sbc [hl]                                      ; $7fcd: $9e
    ld [hl], h                                    ; $7fce: $74
    add e                                         ; $7fcf: $83
    ld [c], a                                     ; $7fd0: $e2
    ld e, l                                       ; $7fd1: $5d
    jr nc, @+$3f                                  ; $7fd2: $30 $3d

    jp z, $2cd3                                   ; $7fd4: $ca $d3 $2c

    or l                                          ; $7fd7: $b5
    jr @+$59                                      ; $7fd8: $18 $57

    call nc, $f3fa                                ; $7fda: $d4 $fa $f3
    ld e, h                                       ; $7fdd: $5c
    ldh a, [$3e]                                  ; $7fde: $f0 $3e
    rst $08                                       ; $7fe0: $cf
    ld a, c                                       ; $7fe1: $79
    ld sp, hl                                     ; $7fe2: $f9
    or l                                          ; $7fe3: $b5
    ld a, b                                       ; $7fe4: $78
    jp nc, $becf                                  ; $7fe5: $d2 $cf $be

    ld [bc], a                                    ; $7fe8: $02
    adc [hl]                                      ; $7fe9: $8e
    jr nc, jr_028_7f93                            ; $7fea: $30 $a7

    and h                                         ; $7fec: $a4
    adc a                                         ; $7fed: $8f
    cp a                                          ; $7fee: $bf
    ld e, [hl]                                    ; $7fef: $5e
    jp nc, $c2f8                                  ; $7ff0: $d2 $f8 $c2

    ld b, a                                       ; $7ff3: $47
    jr jr_028_7f9d                                ; $7ff4: $18 $a7

    and h                                         ; $7ff6: $a4
    inc l                                         ; $7ff7: $2c
    db $fc                                        ; $7ff8: $fc
    ld l, $18                                     ; $7ff9: $2e $18
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
