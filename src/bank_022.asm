; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    ld [hl+], a                                   ; $4000: $22
    rst $00                                       ; $4001: $c7
    db $dd                                        ; $4002: $dd
    jr jr_022_4034                                ; $4003: $18 $2f

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
    ret                                           ; $401f: $c9


    ret c                                         ; $4020: $d8

    call c, Call_000_0ed8                         ; $4021: $dc $d8 $0e
    set 3, d                                      ; $4024: $cb $da
    ld [bc], a                                    ; $4026: $02
    ld d, c                                       ; $4027: $51
    add b                                         ; $4028: $80
    dec [hl]                                      ; $4029: $35
    ld e, a                                       ; $402a: $5f
    ld b, $ff                                     ; $402b: $06 $ff
    dec hl                                        ; $402d: $2b
    cpl                                           ; $402e: $2f
    ccf                                           ; $402f: $3f
    and l                                         ; $4030: $a5
    jp c, $bcbc                                   ; $4031: $da $bc $bc

jr_022_4034:
    inc a                                         ; $4034: $3c
    sbc d                                         ; $4035: $9a
    ld h, l                                       ; $4036: $65
    and b                                         ; $4037: $a0
    db $fc                                        ; $4038: $fc
    db $20, $c3                                   ; $4039: $20 $c3
    rra                                           ; $403b: $1f
    cp e                                          ; $403c: $bb
    xor $4a                                       ; $403d: $ee $4a
    call $d254                                    ; $403f: $cd $54 $d2
    db $10                                        ; $4042: $10
    db $e3                                        ; $4043: $e3
    xor [hl]                                      ; $4044: $ae
    ld l, l                                       ; $4045: $6d
    ld a, h                                       ; $4046: $7c
    rst $10                                       ; $4047: $d7
    rla                                           ; $4048: $17
    ld l, d                                       ; $4049: $6a
    db $fd                                        ; $404a: $fd
    ld h, c                                       ; $404b: $61
    ld c, h                                       ; $404c: $4c
    inc [hl]                                      ; $404d: $34
    ld c, b                                       ; $404e: $48
    add d                                         ; $404f: $82
    ld bc, $73fd                                  ; $4050: $01 $fd $73
    db $fc                                        ; $4053: $fc
    ld b, c                                       ; $4054: $41
    adc $32                                       ; $4055: $ce $32
    ld h, [hl]                                    ; $4057: $66
    add d                                         ; $4058: $82
    ld e, l                                       ; $4059: $5d
    sbc a                                         ; $405a: $9f
    jp hl                                         ; $405b: $e9


    jr nz, @+$0e                                  ; $405c: $20 $0c

    rst $00                                       ; $405e: $c7
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

jr_022_408b:
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

Call_022_40b8:
    or e                                          ; $40b8: $b3
    ld d, b                                       ; $40b9: $50
    jr nz, jr_022_408b                            ; $40ba: $20 $cf

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
    jr nc, jr_022_411d                            ; $40d4: $30 $47

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

jr_022_4116:
    sub [hl]                                      ; $4116: $96
    pop af                                        ; $4117: $f1
    ld a, [bc]                                    ; $4118: $0a
    sub e                                         ; $4119: $93
    dec de                                        ; $411a: $1b
    inc d                                         ; $411b: $14
    ld b, a                                       ; $411c: $47

jr_022_411d:
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
    jr jr_022_4116                                ; $417e: $18 $96

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

Call_022_4197:
    jp nz, $c69e                                  ; $4197: $c2 $9e $c6

    dec hl                                        ; $419a: $2b
    call z, Call_000_3136                         ; $419b: $cc $36 $31
    ld l, $ed                                     ; $419e: $2e $ed
    ld e, l                                       ; $41a0: $5d
    ld b, a                                       ; $41a1: $47
    jr jr_022_41e1                                ; $41a2: $18 $3d

    jp z, Jump_022_5d85                           ; $41a4: $ca $85 $5d

    jr @-$46                                      ; $41a7: $18 $b8

    jr z, jr_022_41b0                             ; $41a9: $28 $05

    cp a                                          ; $41ab: $bf
    sbc b                                         ; $41ac: $98
    ld e, c                                       ; $41ad: $59
    cp a                                          ; $41ae: $bf
    inc d                                         ; $41af: $14

jr_022_41b0:
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

Call_022_41be:
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

jr_022_41e1:
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
    jr jr_022_423a                                ; $420b: $18 $2d

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
    jp z, Jump_022_4bec                           ; $4227: $ca $ec $4b

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

jr_022_423a:
    dec bc                                        ; $423a: $0b
    ld [de], a                                    ; $423b: $12
    ld h, c                                       ; $423c: $61
    dec a                                         ; $423d: $3d
    jp z, Jump_022_5d85                           ; $423e: $ca $85 $5d

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

jr_022_4255:
    jp z, Jump_022_5d85                           ; $4255: $ca $85 $5d

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
    jr nc, jr_022_4255                            ; $4266: $30 $ed

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

jr_022_427b:
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
    call nz, Call_022_4bf7                        ; $42a5: $c4 $f7 $4b
    pop bc                                        ; $42a8: $c1
    sbc d                                         ; $42a9: $9a
    inc [hl]                                      ; $42aa: $34
    ld [hl-], a                                   ; $42ab: $32
    dec b                                         ; $42ac: $05
    cp b                                          ; $42ad: $b8
    ld bc, $4f85                                  ; $42ae: $01 $85 $4f
    adc [hl]                                      ; $42b1: $8e
    jr nc, jr_022_427b                            ; $42b2: $30 $c7

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
    call nz, $67f7                                ; $42de: $c4 $f7 $67
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
    jp Jump_022_6bae                              ; $4335: $c3 $ae $6b


    db $fd                                        ; $4338: $fd
    ld b, c                                       ; $4339: $41
    ld c, c                                       ; $433a: $49
    inc de                                        ; $433b: $13
    reti                                          ; $433c: $d9


    jp c, $4bbf                                   ; $433d: $da $bf $4b

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
    call nz, Call_022_5dd6                        ; $4383: $c4 $d6 $5d
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
    jr nc, jr_022_4412                            ; $43d3: $30 $3d

    jp z, Jump_022_4fcb                           ; $43d5: $ca $cb $4f

    push hl                                       ; $43d8: $e5
    rst $10                                       ; $43d9: $d7
    and h                                         ; $43da: $a4
    sub c                                         ; $43db: $91
    reti                                          ; $43dc: $d9


    add hl, hl                                    ; $43dd: $29
    and c                                         ; $43de: $a1
    adc c                                         ; $43df: $89
    ld a, [bc]                                    ; $43e0: $0a
    call c, Call_022_4f75                         ; $43e1: $dc $75 $4f
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

jr_022_4412:
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
    jp nc, Jump_022_578c                          ; $4424: $d2 $8c $57

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
    call z, Call_022_594e                         ; $4448: $cc $4e $59
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
    jp nc, Jump_022_4eac                          ; $445c: $d2 $ac $4e

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

jr_022_4496:
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
    jr z, jr_022_4496                             ; $44d4: $28 $c0

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
    jp z, Jump_022_4ecf                           ; $4506: $ca $cf $4e

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

jr_022_451a:
    sbc [hl]                                      ; $451a: $9e
    db $dd                                        ; $451b: $dd
    daa                                           ; $451c: $27
    rlca                                          ; $451d: $07
    xor $da                                       ; $451e: $ee $da

Call_022_4520:
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
    jp z, Jump_022_6f5b                           ; $4542: $ca $5b $6f

    adc h                                         ; $4545: $8c
    adc a                                         ; $4546: $8f
    jr nc, jr_022_4576                            ; $4547: $30 $2d

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
    jr jr_022_451a                                ; $4560: $18 $b8

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

jr_022_4576:
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
    jr nc, jr_022_45ee                            ; $4585: $30 $67

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
    jp Jump_022_4e99                              ; $459f: $c3 $99 $4e


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
    call Call_022_5073                            ; $45c4: $cd $73 $50
    or h                                          ; $45c7: $b4
    cp $2b                                        ; $45c8: $fe $2b
    scf                                           ; $45ca: $37
    db $e4                                        ; $45cb: $e4
    xor [hl]                                      ; $45cc: $ae
    ld c, c                                       ; $45cd: $49
    inc hl                                        ; $45ce: $23

jr_022_45cf:
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
    jp nz, Jump_022_7367                          ; $45df: $c2 $67 $73

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

jr_022_45ee:
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
    jp z, $52f0                                   ; $45fb: $ca $f0 $52

    jr nc, jr_022_45cf                            ; $45fe: $30 $cf

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
    call Call_022_5a8a                            ; $4625: $cd $8a $5a
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

jr_022_4651:
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
    ld [hl], d                                    ; $4698: $72
    add hl, sp                                    ; $4699: $39
    ld a, $db                                     ; $469a: $3e $db
    push af                                       ; $469c: $f5
    sbc l                                         ; $469d: $9d
    ld l, a                                       ; $469e: $6f
    xor [hl]                                      ; $469f: $ae
    rst $38                                       ; $46a0: $ff
    jp z, Jump_022_4a0d                           ; $46a1: $ca $0d $4a

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
    jr nc, jr_022_4651                            ; $46b9: $30 $96

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

jr_022_4739:
    xor l                                         ; $4739: $ad
    ld a, [de]                                    ; $473a: $1a
    db $ed                                        ; $473b: $ed

Call_022_473c:
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

jr_022_476b:
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

jr_022_4783:
    inc hl                                        ; $4783: $23
    dec c                                         ; $4784: $0d
    ld a, a                                       ; $4785: $7f
    ld a, [de]                                    ; $4786: $1a
    add sp, -$5b                                  ; $4787: $e8 $a5
    xor [hl]                                      ; $4789: $ae
    jr jr_022_4739                                ; $478a: $18 $ad

    ld a, [hl+]                                   ; $478c: $2a
    jp nc, Jump_022_7bac                          ; $478d: $d2 $ac $7b

    cp d                                          ; $4790: $ba
    cp a                                          ; $4791: $bf
    jr nz, jr_022_47a0                            ; $4792: $20 $0c

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

jr_022_47a0:
    sbc b                                         ; $47a0: $98
    adc a                                         ; $47a1: $8f
    scf                                           ; $47a2: $37
    jr z, jr_022_4813                             ; $47a3: $28 $6e

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
    jp z, Jump_022_770d                           ; $47b4: $ca $0d $77

    sbc [hl]                                      ; $47b7: $9e
    ld bc, $251f                                  ; $47b8: $01 $1f $25
    adc a                                         ; $47bb: $8f
    jr nc, jr_022_476b                            ; $47bc: $30 $ad

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
    jr nc, jr_022_4783                            ; $47d4: $30 $ad

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
    jr nc, jr_022_4815                            ; $47f6: $30 $1d

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

jr_022_4807:
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

jr_022_4813:
    reti                                          ; $4813: $d9


    pop de                                        ; $4814: $d1

jr_022_4815:
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
    jr nz, jr_022_4873                            ; $4842: $20 $2f

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
    jr jr_022_4807                                ; $4859: $18 $ac

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

jr_022_4873:
    rrc e                                         ; $4873: $cb $0b
    jp nz, Jump_022_5a96                          ; $4875: $c2 $96 $5a

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

jr_022_48b0:
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
    jp nz, Jump_022_6aad                          ; $48c0: $c2 $ad $6a

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

jr_022_48f1:
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
    jr jr_022_48b0                                ; $4907: $18 $a7

    db $e4                                        ; $4909: $e4
    inc l                                         ; $490a: $2c
    dec hl                                        ; $490b: $2b
    ld l, d                                       ; $490c: $6a
    ld a, l                                       ; $490d: $7d
    xor d                                         ; $490e: $aa
    add hl, sp                                    ; $490f: $39
    jp nz, $b196                                  ; $4910: $c2 $96 $b1

    and h                                         ; $4913: $a4

Jump_022_4914:
    sbc d                                         ; $4914: $9a
    xor a                                         ; $4915: $af
    ld c, [hl]                                    ; $4916: $4e
    ret                                           ; $4917: $c9


    ld c, a                                       ; $4918: $4f
    xor c                                         ; $4919: $a9

jr_022_491a:
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


jr_022_4934:
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
    jr jr_022_48f1                                ; $4943: $18 $ac

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

jr_022_4950:
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

Call_022_4979:
    ld l, b                                       ; $4979: $68
    ld [hl], e                                    ; $497a: $73
    add hl, hl                                    ; $497b: $29
    sbc b                                         ; $497c: $98
    cp d                                          ; $497d: $ba
    ccf                                           ; $497e: $3f
    ld sp, hl                                     ; $497f: $f9
    ld c, l                                       ; $4980: $4d
    ld b, d                                       ; $4981: $42
    jr jr_022_491a                                ; $4982: $18 $96

    ld a, c                                       ; $4984: $79
    cp c                                          ; $4985: $b9
    ld d, h                                       ; $4986: $54
    sbc a                                         ; $4987: $9f
    ld h, l                                       ; $4988: $65
    and b                                         ; $4989: $a0
    db $fc                                        ; $498a: $fc
    jr nz, jr_022_4950                            ; $498b: $20 $c3

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
    jr nc, jr_022_4934                            ; $499c: $30 $96

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
    jr nc, jr_022_4a11                            ; $49b7: $30 $58

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
    call Call_022_6aac                            ; $49c9: $cd $ac $6a
    and d                                         ; $49cc: $a2
    rst $28                                       ; $49cd: $ef
    jp nc, $978e                                  ; $49ce: $d2 $8e $97

    ld c, e                                       ; $49d1: $4b
    ld b, c                                       ; $49d2: $41
    cp d                                          ; $49d3: $ba
    inc bc                                        ; $49d4: $03
    sbc d                                         ; $49d5: $9a

jr_022_49d6:
    push bc                                       ; $49d6: $c5
    ld e, [hl]                                    ; $49d7: $5e
    sub e                                         ; $49d8: $93
    ld h, [hl]                                    ; $49d9: $66
    ld b, c                                       ; $49da: $41
    ld c, [hl]                                    ; $49db: $4e

jr_022_49dc:
    adc c                                         ; $49dc: $89
    dec l                                         ; $49dd: $2d
    ld a, b                                       ; $49de: $78
    rst $18                                       ; $49df: $df
    push af                                       ; $49e0: $f5
    dec [hl]                                      ; $49e1: $35
    ld l, c                                       ; $49e2: $69
    inc b                                         ; $49e3: $04
    ld a, $da                                     ; $49e4: $3e $da
    call c, Call_022_6a59                         ; $49e6: $dc $59 $6a

Jump_022_49e9:
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
    jr c, jr_022_49d6                             ; $49f7: $38 $dd

    pop de                                        ; $49f9: $d1
    rst $08                                       ; $49fa: $cf

jr_022_49fb:
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

Jump_022_4a0d:
    cpl                                           ; $4a0d: $2f
    cp a                                          ; $4a0e: $bf
    ld h, $cd                                     ; $4a0f: $26 $cd

jr_022_4a11:
    add d                                         ; $4a11: $82
    ld b, h                                       ; $4a12: $44
    jr jr_022_49dc                                ; $4a13: $18 $c7

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
    jr c, @+$37                                   ; $4a2e: $38 $35

    ld e, [hl]                                    ; $4a30: $5e
    ld d, d                                       ; $4a31: $52
    ld l, $c7                                     ; $4a32: $2e $c7
    ld e, a                                       ; $4a34: $5f
    sub e                                         ; $4a35: $93
    ld h, [hl]                                    ; $4a36: $66
    sbc [hl]                                      ; $4a37: $9e
    ld a, e                                       ; $4a38: $7b
    ld a, [c]                                     ; $4a39: $f2
    sub a                                         ; $4a3a: $97
    add l                                         ; $4a3b: $85
    call Call_022_6aac                            ; $4a3c: $cd $ac $6a
    and d                                         ; $4a3f: $a2
    inc hl                                        ; $4a40: $23
    inc c                                         ; $4a41: $0c
    sub [hl]                                      ; $4a42: $96
    ld e, d                                       ; $4a43: $5a
    jr c, jr_022_49fb                             ; $4a44: $38 $b5

    ld b, l                                       ; $4a46: $45
    cpl                                           ; $4a47: $2f
    sbc e                                         ; $4a48: $9b
    ld h, l                                       ; $4a49: $65
    inc l                                         ; $4a4a: $2c
    xor c                                         ; $4a4b: $a9
    and $2b                                       ; $4a4c: $e6 $2b
    ld l, d                                       ; $4a4e: $6a
    db $fd                                        ; $4a4f: $fd
    ld a, c                                       ; $4a50: $79
    ld d, c                                       ; $4a51: $51
    ld e, a                                       ; $4a52: $5f
    ld l, b                                       ; $4a53: $68
    xor d                                         ; $4a54: $aa
    add d                                         ; $4a55: $82
    jr nc, jr_022_4a95                            ; $4a56: $30 $3d

    adc d                                         ; $4a58: $8a
    ld a, d                                       ; $4a59: $7a
    dec c                                         ; $4a5a: $0d
    and [hl]                                      ; $4a5b: $a6
    add e                                         ; $4a5c: $83
    and d                                         ; $4a5d: $a2
    pop hl                                        ; $4a5e: $e1
    and e                                         ; $4a5f: $a3
    ld [hl], l                                    ; $4a60: $75
    set 6, b                                      ; $4a61: $cb $f0
    rst $10                                       ; $4a63: $d7
    sub $aa                                       ; $4a64: $d6 $aa
    ld a, $be                                     ; $4a66: $3e $be
    inc a                                         ; $4a68: $3c
    xor l                                         ; $4a69: $ad
    ld c, c                                       ; $4a6a: $49
    inc sp                                        ; $4a6b: $33
    sub [hl]                                      ; $4a6c: $96
    ld l, b                                       ; $4a6d: $68
    sub [hl]                                      ; $4a6e: $96
    ld e, d                                       ; $4a6f: $5a
    adc h                                         ; $4a70: $8c
    ld l, e                                       ; $4a71: $6b
    rst $38                                       ; $4a72: $ff
    db $e4                                        ; $4a73: $e4
    ld b, $c5                                     ; $4a74: $06 $c5
    ld d, a                                       ; $4a76: $57
    ld e, [hl]                                    ; $4a77: $5e
    ld e, $61                                     ; $4a78: $1e $61
    dec a                                         ; $4a7a: $3d
    jp z, Jump_022_52af                           ; $4a7b: $ca $af $52

    ld h, c                                       ; $4a7e: $61
    xor e                                         ; $4a7f: $ab
    ld [de], a                                    ; $4a80: $12
    inc e                                         ; $4a81: $1c
    sub $5f                                       ; $4a82: $d6 $5f
    cp a                                          ; $4a84: $bf
    ld l, e                                       ; $4a85: $6b
    cp c                                          ; $4a86: $b9
    ld d, l                                       ; $4a87: $55
    dec a                                         ; $4a88: $3d
    ld a, $ac                                     ; $4a89: $3e $ac
    ld l, l                                       ; $4a8b: $6d
    ld a, h                                       ; $4a8c: $7c
    sub [hl]                                      ; $4a8d: $96
    or c                                          ; $4a8e: $b1
    and h                                         ; $4a8f: $a4
    sbc d                                         ; $4a90: $9a
    xor a                                         ; $4a91: $af
    xor b                                         ; $4a92: $a8
    push af                                       ; $4a93: $f5
    rst $20                                       ; $4a94: $e7

jr_022_4a95:
    ld b, l                                       ; $4a95: $45
    ld a, l                                       ; $4a96: $7d
    and c                                         ; $4a97: $a1
    xor c                                         ; $4a98: $a9
    ld a, [bc]                                    ; $4a99: $0a
    jp c, $29ba                                   ; $4a9a: $da $ba $29

    call $a2b2                                    ; $4a9d: $cd $b2 $a2
    sub $5f                                       ; $4aa0: $d6 $5f
    ld a, a                                       ; $4aa2: $7f
    db $fd                                        ; $4aa3: $fd
    xor [hl]                                      ; $4aa4: $ae
    push hl                                       ; $4aa5: $e5
    ld d, [hl]                                    ; $4aa6: $56
    push af                                       ; $4aa7: $f5
    ld hl, sp-$30                                 ; $4aa8: $f8 $d0
    dec d                                         ; $4aaa: $15
    inc bc                                        ; $4aab: $03
    cp l                                          ; $4aac: $bd
    ld e, $10                                     ; $4aad: $1e $10
    ld b, $ad                                     ; $4aaf: $06 $ad
    ret                                           ; $4ab1: $c9


Call_022_4ab2:
    cpl                                           ; $4ab2: $2f
    call nc, $9666                                ; $4ab3: $d4 $66 $96
    pop bc                                        ; $4ab6: $c1
    adc e                                         ; $4ab7: $8b
    push af                                       ; $4ab8: $f5
    rst $10                                       ; $4ab9: $d7
    and h                                         ; $4aba: $a4
    jp hl                                         ; $4abb: $e9


    adc d                                         ; $4abc: $8a
    ld bc, $0b27                                  ; $4abd: $01 $27 $0b
    ld e, d                                       ; $4ac0: $5a
    rst $30                                       ; $4ac1: $f7
    ld [hl], h                                    ; $4ac2: $74
    ld a, a                                       ; $4ac3: $7f
    ld e, c                                       ; $4ac4: $59
    ld d, c                                       ; $4ac5: $51
    sbc b                                         ; $4ac6: $98
    ld a, [de]                                    ; $4ac7: $1a
    cpl                                           ; $4ac8: $2f
    add hl, hl                                    ; $4ac9: $29
    sub a                                         ; $4aca: $97
    and e                                         ; $4acb: $a3
    ld a, [$9a4d]                                 ; $4acc: $fa $4d $9a
    rst $20                                       ; $4acf: $e7
    add d                                         ; $4ad0: $82
    call c, $cf25                                 ; $4ad1: $dc $25 $cf
    add l                                         ; $4ad4: $85
    call Call_022_6aac                            ; $4ad5: $cd $ac $6a
    and d                                         ; $4ad8: $a2
    ld [hl], e                                    ; $4ad9: $73
    ld [hl], a                                    ; $4ada: $77
    ret c                                         ; $4adb: $d8

    ld h, c                                       ; $4adc: $61
    add a                                         ; $4add: $87
    ld [hl], d                                    ; $4ade: $72
    and a                                         ; $4adf: $a7
    call nz, Call_000_1f26                        ; $4ae0: $c4 $26 $1f
    and [hl]                                      ; $4ae3: $a6
    push af                                       ; $4ae4: $f5
    and a                                         ; $4ae5: $a7
    dec sp                                        ; $4ae6: $3b
    ld c, [hl]                                    ; $4ae7: $4e
    jp $b034                                      ; $4ae8: $c3 $34 $b0


    sbc [hl]                                      ; $4aeb: $9e
    rst $10                                       ; $4aec: $d7
    xor e                                         ; $4aed: $ab
    ld a, [c]                                     ; $4aee: $f2
    jr nc, jr_022_4b16                            ; $4aef: $30 $25

    or [hl]                                       ; $4af1: $b6
    sbc [hl]                                      ; $4af2: $9e
    sub a                                         ; $4af3: $97
    and e                                         ; $4af4: $a3
    ld a, [bc]                                    ; $4af5: $0a
    add e                                         ; $4af6: $83
    ld [hl], l                                    ; $4af7: $75
    ld d, e                                       ; $4af8: $53
    ld h, c                                       ; $4af9: $61
    ld [$2703], sp                                ; $4afa: $08 $03 $27
    ld l, e                                       ; $4afd: $6b
    inc sp                                        ; $4afe: $33
    set 4, b                                      ; $4aff: $cb $e0
    ld a, a                                       ; $4b01: $7f
    ld c, l                                       ; $4b02: $4d
    ld a, [de]                                    ; $4b03: $1a
    ld e, c                                       ; $4b04: $59
    db $fd                                        ; $4b05: $fd
    dec de                                        ; $4b06: $1b
    xor $e0                                       ; $4b07: $ee $e0
    ld c, d                                       ; $4b09: $4a
    ld d, a                                       ; $4b0a: $57
    inc c                                         ; $4b0b: $0c
    xor l                                         ; $4b0c: $ad
    cpl                                           ; $4b0d: $2f
    cp a                                          ; $4b0e: $bf
    db $eb                                        ; $4b0f: $eb
    cp e                                          ; $4b10: $bb
    add b                                         ; $4b11: $80
    halt                                          ; $4b12: $76
    or d                                          ; $4b13: $b2
    and b                                         ; $4b14: $a0
    ld [hl], l                                    ; $4b15: $75

jr_022_4b16:
    ld c, a                                       ; $4b16: $4f
    rst $30                                       ; $4b17: $f7
    sub a                                         ; $4b18: $97
    pop af                                        ; $4b19: $f1
    scf                                           ; $4b1a: $37
    add $b5                                       ; $4b1b: $c6 $b5
    ld a, a                                       ; $4b1d: $7f
    ld b, c                                       ; $4b1e: $41
    ld e, [hl]                                    ; $4b1f: $5e
    ld a, [bc]                                    ; $4b20: $0a
    sub $6e                                       ; $4b21: $d6 $6e
    ld d, [hl]                                    ; $4b23: $56
    ld l, [hl]                                    ; $4b24: $6e
    ld [$6d1f], sp                                ; $4b25: $08 $1f $6d
    or h                                          ; $4b28: $b4
    sub [hl]                                      ; $4b29: $96
    rst $38                                       ; $4b2a: $ff
    dec [hl]                                      ; $4b2b: $35
    ld l, c                                       ; $4b2c: $69
    ld d, $d5                                     ; $4b2d: $16 $d5
    ld e, a                                       ; $4b2f: $5f
    cp b                                          ; $4b30: $b8
    ld l, e                                       ; $4b31: $6b
    ld d, l                                       ; $4b32: $55
    sub c                                         ; $4b33: $91
    ld b, $61                                     ; $4b34: $06 $61
    ld h, a                                       ; $4b36: $67
    cp [hl]                                       ; $4b37: $be
    inc [hl]                                      ; $4b38: $34
    dec bc                                        ; $4b39: $0b
    ld [hl-], a                                   ; $4b3a: $32
    add hl, de                                    ; $4b3b: $19
    ld e, d                                       ; $4b3c: $5a
    rst $08                                       ; $4b3d: $cf
    xor a                                         ; $4b3e: $af
    push bc                                       ; $4b3f: $c5
    cp b                                          ; $4b40: $b8
    or $2f                                        ; $4b41: $f6 $2f
    ret z                                         ; $4b43: $c8

    ld c, e                                       ; $4b44: $4b
    pop bc                                        ; $4b45: $c1
    inc a                                         ; $4b46: $3c
    rst $20                                       ; $4b47: $e7
    push hl                                       ; $4b48: $e5
    ld b, a                                       ; $4b49: $47
    rst $08                                       ; $4b4a: $cf
    rst $08                                       ; $4b4b: $cf
    xor d                                         ; $4b4c: $aa
    ld h, $fa                                     ; $4b4d: $26 $fa
    ld d, h                                       ; $4b4f: $54
    ld e, [hl]                                    ; $4b50: $5e
    pop de                                        ; $4b51: $d1
    cp d                                          ; $4b52: $ba
    rst $00                                       ; $4b53: $c7
    ld d, a                                       ; $4b54: $57
    ld hl, sp-$27                                 ; $4b55: $f8 $d9
    add hl, de                                    ; $4b57: $19
    ld h, e                                       ; $4b58: $63
    ld a, [c]                                     ; $4b59: $f2
    dec bc                                        ; $4b5a: $0b
    rra                                           ; $4b5b: $1f
    ld h, c                                       ; $4b5c: $61
    ld h, a                                       ; $4b5d: $67
    xor d                                         ; $4b5e: $aa
    adc c                                         ; $4b5f: $89
    cp [hl]                                       ; $4b60: $be
    jp Jump_000_3b0e                              ; $4b61: $c3 $0e $3b


    ld [hl], h                                    ; $4b64: $74
    rla                                           ; $4b65: $17
    and $45                                       ; $4b66: $e6 $45
    jp nc, Jump_022_6504                          ; $4b68: $d2 $04 $65

    push hl                                       ; $4b6b: $e5
    push hl                                       ; $4b6c: $e5
    pop de                                        ; $4b6d: $d1
    cp d                                          ; $4b6e: $ba
    rst $00                                       ; $4b6f: $c7
    ld d, a                                       ; $4b70: $57
    ld hl, sp+$3d                                 ; $4b71: $f8 $3d
    ld sp, hl                                     ; $4b73: $f9
    res 7, h                                      ; $4b74: $cb $bc
    db $fc                                        ; $4b76: $fc
    call nc, $4978                                ; $4b77: $d4 $78 $49
    cp c                                          ; $4b7a: $b9
    inc e                                         ; $4b7b: $1c
    sbc a                                         ; $4b7c: $9f
    call Call_000_26aa                            ; $4b7d: $cd $aa $26
    ld a, [$6292]                                 ; $4b80: $fa $92 $62
    add e                                         ; $4b83: $83
    halt                                          ; $4b84: $76
    cp h                                          ; $4b85: $bc
    ld e, h                                       ; $4b86: $5c
    ld a, [bc]                                    ; $4b87: $0a
    jp nc, Jump_022_561d                          ; $4b88: $d2 $1d $56

    add hl, hl                                    ; $4b8b: $29
    ld d, c                                       ; $4b8c: $51
    ld a, [$aab4]                                 ; $4b8d: $fa $b4 $aa
    cp [hl]                                       ; $4b90: $be
    db $e3                                        ; $4b91: $e3
    sub e                                         ; $4b92: $93
    add a                                         ; $4b93: $87
    ld c, [hl]                                    ; $4b94: $4e
    ld [de], a                                    ; $4b95: $12
    call c, $8df6                                 ; $4b96: $dc $f6 $8d
    rst $10                                       ; $4b99: $d7
    sbc e                                         ; $4b9a: $9b
    reti                                          ; $4b9b: $d9


    add hl, hl                                    ; $4b9c: $29
    adc e                                         ; $4b9d: $8b
    add hl, bc                                    ; $4b9e: $09
    cp [hl]                                       ; $4b9f: $be
    db $eb                                        ; $4ba0: $eb
    rra                                           ; $4ba1: $1f
    jp nz, $1652                                  ; $4ba2: $c2 $52 $16

    ld l, a                                       ; $4ba5: $6f
    ret c                                         ; $4ba6: $d8

    ld b, $84                                     ; $4ba7: $06 $84
    ld bc, $5a96                                  ; $4ba9: $01 $96 $5a
    jr c, jr_022_4c2d                             ; $4bac: $38 $7f

    sub c                                         ; $4bae: $91
    db $db                                        ; $4baf: $db
    adc [hl]                                      ; $4bb0: $8e
    call Call_022_4520                            ; $4bb1: $cd $20 $45
    ld a, [de]                                    ; $4bb4: $1a
    xor $e0                                       ; $4bb5: $ee $e0
    ld a, [bc]                                    ; $4bb7: $0a
    ld [hl], a                                    ; $4bb8: $77
    ld l, l                                       ; $4bb9: $6d
    db $e3                                        ; $4bba: $e3
    or e                                          ; $4bbb: $b3
    inc l                                         ; $4bbc: $2c
    inc [hl]                                      ; $4bbd: $34
    ldh [$93], a                                  ; $4bbe: $e0 $93
    ld [hl], a                                    ; $4bc0: $77
    inc hl                                        ; $4bc1: $23
    inc [hl]                                      ; $4bc2: $34
    rst $08                                       ; $4bc3: $cf
    ld a, c                                       ; $4bc4: $79
    ld sp, hl                                     ; $4bc5: $f9
    push bc                                       ; $4bc6: $c5
    ld l, h                                       ; $4bc7: $6c
    or a                                          ; $4bc8: $b7
    dec de                                        ; $4bc9: $1b
    add h                                         ; $4bca: $84
    ld bc, $292d                                  ; $4bcb: $01 $2d $29
    jp nc, $e770                                  ; $4bce: $d2 $70 $e7

    push hl                                       ; $4bd1: $e5
    jp nz, Jump_022_4bf8                          ; $4bd2: $c2 $f8 $4b

    inc l                                         ; $4bd5: $2c
    ld sp, hl                                     ; $4bd6: $f9
    ld e, l                                       ; $4bd7: $5d
    ld e, b                                       ; $4bd8: $58
    dec d                                         ; $4bd9: $15
    inc de                                        ; $4bda: $13
    sbc [hl]                                      ; $4bdb: $9e
    ld hl, $dd0c                                  ; $4bdc: $21 $0c $dd
    db $e3                                        ; $4bdf: $e3
    dec hl                                        ; $4be0: $2b
    db $fc                                        ; $4be1: $fc
    ldh [$7f], a                                  ; $4be2: $e0 $7f
    ld e, [hl]                                    ; $4be4: $5e
    ld a, [hl]                                    ; $4be5: $7e
    db $f4                                        ; $4be6: $f4
    inc e                                         ; $4be7: $1c
    ld a, h                                       ; $4be8: $7c
    cp $31                                        ; $4be9: $fe $31
    cp [hl]                                       ; $4beb: $be

Jump_022_4bec:
    jr nz, jr_022_4bfa                            ; $4bec: $20 $0c

    db $dd                                        ; $4bee: $dd
    db $e3                                        ; $4bef: $e3
    dec hl                                        ; $4bf0: $2b
    db $fc                                        ; $4bf1: $fc
    ldh [$7f], a                                  ; $4bf2: $e0 $7f
    ld e, [hl]                                    ; $4bf4: $5e
    ld a, [hl]                                    ; $4bf5: $7e
    dec e                                         ; $4bf6: $1d

Call_022_4bf7:
    ld a, c                                       ; $4bf7: $79

Jump_022_4bf8:
    db $eb                                        ; $4bf8: $eb
    ld c, l                                       ; $4bf9: $4d

jr_022_4bfa:
    inc bc                                        ; $4bfa: $03
    di                                            ; $4bfb: $f3
    adc a                                         ; $4bfc: $8f
    pop af                                        ; $4bfd: $f1
    dec b                                         ; $4bfe: $05
    ld h, c                                       ; $4bff: $61
    dec l                                         ; $4c00: $2d
    add hl, hl                                    ; $4c01: $29
    jp nc, $0770                                  ; $4c02: $d2 $70 $07

    ld d, a                                       ; $4c05: $57
    cp b                                          ; $4c06: $b8
    dec bc                                        ; $4c07: $0b
    sbc e                                         ; $4c08: $9b
    ld sp, hl                                     ; $4c09: $f9
    adc l                                         ; $4c0a: $8d
    ld [hl], c                                    ; $4c0b: $71
    rla                                           ; $4c0c: $17
    sub $96                                       ; $4c0d: $d6 $96
    xor h                                         ; $4c0f: $ac
    ccf                                           ; $4c10: $3f
    ld hl, $dd0c                                  ; $4c11: $21 $0c $dd
    ld d, h                                       ; $4c14: $54
    sbc $36                                       ; $4c15: $de $36
    sub c                                         ; $4c17: $91
    dec sp                                        ; $4c18: $3b
    cp b                                          ; $4c19: $b8
    jp nz, $1a5d                                  ; $4c1a: $c2 $5d $1a

    add hl, de                                    ; $4c1d: $19
    dec a                                         ; $4c1e: $3d
    ccf                                           ; $4c1f: $3f
    dec sp                                        ; $4c20: $3b
    ld h, [hl]                                    ; $4c21: $66
    jp z, $0c2e                                   ; $4c22: $ca $2e $0c

    db $fc                                        ; $4c25: $fc
    add $38                                       ; $4c26: $c6 $38
    adc b                                         ; $4c28: $88
    or a                                          ; $4c29: $b7
    db $d3                                        ; $4c2a: $d3
    ld a, c                                       ; $4c2b: $79
    ld l, c                                       ; $4c2c: $69

jr_022_4c2d:
    db $10                                        ; $4c2d: $10
    ld b, $c7                                     ; $4c2e: $06 $c7
    db $e4                                        ; $4c30: $e4
    sbc d                                         ; $4c31: $9a
    inc [hl]                                      ; $4c32: $34
    dec hl                                        ; $4c33: $2b
    ld l, d                                       ; $4c34: $6a
    db $fd                                        ; $4c35: $fd
    ld a, c                                       ; $4c36: $79
    ld sp, hl                                     ; $4c37: $f9
    ld d, l                                       ; $4c38: $55
    ld a, [hl+]                                   ; $4c39: $2a
    xor h                                         ; $4c3a: $ac
    dec hl                                        ; $4c3b: $2b
    ld b, $a7                                     ; $4c3c: $06 $a7
    inc h                                         ; $4c3e: $24
    jp nz, $3f3d                                  ; $4c3f: $c2 $3d $3f

    ld b, [hl]                                    ; $4c42: $46
    xor $3a                                       ; $4c43: $ee $3a
    pop af                                        ; $4c45: $f1
    dec d                                         ; $4c46: $15
    ld a, [hl]                                    ; $4c47: $7e
    pop bc                                        ; $4c48: $c1
    ei                                            ; $4c49: $fb
    xor [hl]                                      ; $4c4a: $ae
    rrca                                          ; $4c4b: $0f
    ld [hl-], a                                   ; $4c4c: $32
    add hl, bc                                    ; $4c4d: $09
    call Call_022_4ab2                            ; $4c4e: $cd $b2 $4a
    xor c                                         ; $4c51: $a9
    and $e3                                       ; $4c52: $e6 $e3
    push af                                       ; $4c54: $f5
    ld a, [$cbca]                                 ; $4c55: $fa $ca $cb
    ld c, a                                       ; $4c58: $4f
    ld h, e                                       ; $4c59: $63
    inc e                                         ; $4c5a: $1c
    db $d3                                        ; $4c5b: $d3
    ld b, $61                                     ; $4c5c: $06 $61
    dec a                                         ; $4c5e: $3d
    set 2, e                                      ; $4c5f: $cb $d3
    sbc d                                         ; $4c61: $9a
    inc [hl]                                      ; $4c62: $34
    dec [hl]                                      ; $4c63: $35
    ld sp, hl                                     ; $4c64: $f9
    reti                                          ; $4c65: $d9


    sub a                                         ; $4c66: $97
    ld l, $94                                     ; $4c67: $2e $94
    ld h, a                                       ; $4c69: $67
    call c, $aab5                                 ; $4c6a: $dc $b5 $aa
    ld c, b                                       ; $4c6d: $48
    jp $ff1d                                      ; $4c6e: $c3 $1d $ff


    xor e                                         ; $4c71: $ab
    sub h                                         ; $4c72: $94
    ld d, $6a                                     ; $4c73: $16 $6a
    db $fd                                        ; $4c75: $fd
    sub a                                         ; $4c76: $97
    ld b, [hl]                                    ; $4c77: $46
    add $6b                                       ; $4c78: $c6 $6b
    or e                                          ; $4c7a: $b3
    or [hl]                                       ; $4c7b: $b6
    ld d, [hl]                                    ; $4c7c: $56
    push af                                       ; $4c7d: $f5
    ld a, c                                       ; $4c7e: $79
    xor [hl]                                      ; $4c7f: $ae
    dec [hl]                                      ; $4c80: $35
    inc bc                                        ; $4c81: $03
    ld e, [hl]                                    ; $4c82: $5e
    push bc                                       ; $4c83: $c5
    ld bc, $bd61                                  ; $4c84: $01 $61 $bd
    jp nc, Jump_022_7f8c                          ; $4c87: $d2 $8c $7f

    ld sp, hl                                     ; $4c8a: $f9
    or l                                          ; $4c8b: $b5
    sub l                                         ; $4c8c: $95
    push bc                                       ; $4c8d: $c5
    ld h, [hl]                                    ; $4c8e: $66
    push bc                                       ; $4c8f: $c5
    adc b                                         ; $4c90: $88
    xor a                                         ; $4c91: $af
    ld l, l                                       ; $4c92: $6d

jr_022_4c93:
    ld a, h                                       ; $4c93: $7c
    sub h                                         ; $4c94: $94
    db $fc                                        ; $4c95: $fc
    sbc d                                         ; $4c96: $9a
    inc [hl]                                      ; $4c97: $34
    ld [hl-], a                                   ; $4c98: $32
    ld a, $0d                                     ; $4c99: $3e $0d
    ld sp, $ca98                                  ; $4c9b: $31 $98 $ca
    cpl                                           ; $4c9e: $2f
    ld a, h                                       ; $4c9f: $7c
    ld h, d                                       ; $4ca0: $62
    rst $08                                       ; $4ca1: $cf
    db $10                                        ; $4ca2: $10
    ld b, $47                                     ; $4ca3: $06 $47
    rst $38                                       ; $4ca5: $ff
    db $d3                                        ; $4ca6: $d3
    inc a                                         ; $4ca7: $3c
    rst $20                                       ; $4ca8: $e7
    push hl                                       ; $4ca9: $e5
    ld d, a                                       ; $4caa: $57
    ld e, [hl]                                    ; $4cab: $5e
    db $e3                                        ; $4cac: $e3
    dec bc                                        ; $4cad: $0b
    ld [hl], a                                    ; $4cae: $77
    sub [hl]                                      ; $4caf: $96
    pop bc                                        ; $4cb0: $c1
    ccf                                           ; $4cb1: $3f
    jp nz, $d2bd                                  ; $4cb2: $c2 $bd $d2

    call nc, $17e4                                ; $4cb5: $d4 $e4 $17
    inc sp                                        ; $4cb8: $33
    db $eb                                        ; $4cb9: $eb
    sub a                                         ; $4cba: $97
    add d                                         ; $4cbb: $82
    add l                                         ; $4cbc: $85
    and [hl]                                      ; $4cbd: $a6
    ld a, [hl+]                                   ; $4cbe: $2a
    ld l, e                                       ; $4cbf: $6b
    cp a                                          ; $4cc0: $bf
    ei                                            ; $4cc1: $fb
    res 7, h                                      ; $4cc2: $cb $bc
    jr z, jr_022_4c93                             ; $4cc4: $28 $cd

    sra a                                         ; $4cc6: $cb $2f
    ld a, [hl+]                                   ; $4cc8: $2a
    ld hl, sp-$04                                 ; $4cc9: $f8 $fc
    add [hl]                                      ; $4ccb: $86
    ccf                                           ; $4ccc: $3f
    bit 0, b                                      ; $4ccd: $cb $40
    ld sp, hl                                     ; $4ccf: $f9
    dec [hl]                                      ; $4cd0: $35
    ld l, c                                       ; $4cd1: $69
    db $10                                        ; $4cd2: $10
    ld b, $96                                     ; $4cd3: $06 $96
    sub l                                         ; $4cd5: $95
    db $ec                                        ; $4cd6: $ec
    db $fc                                        ; $4cd7: $fc
    cp h                                          ; $4cd8: $bc
    db $fc                                        ; $4cd9: $fc
    db $ec                                        ; $4cda: $ec
    dec de                                        ; $4cdb: $1b
    inc d                                         ; $4cdc: $14
    ld e, a                                       ; $4cdd: $5f
    sub b                                         ; $4cde: $90
    rrca                                          ; $4cdf: $0f
    ld l, e                                       ; $4ce0: $6b
    cp a                                          ; $4ce1: $bf
    ei                                            ; $4ce2: $fb
    set 5, h                                      ; $4ce3: $cb $ec
    sub h                                         ; $4ce5: $94
    dec [hl]                                      ; $4ce6: $35
    ld l, c                                       ; $4ce7: $69
    and $e5                                       ; $4ce8: $e6 $e5
    jp nz, $86fc                                  ; $4cea: $c2 $fc $86

    rst $08                                       ; $4ced: $cf
    dec e                                         ; $4cee: $1d
    ld e, h                                       ; $4cef: $5c
    ld b, c                                       ; $4cf0: $41
    jr jr_022_4d30                                ; $4cf1: $18 $3d

    cp a                                          ; $4cf3: $bf
    ld d, $e3                                     ; $4cf4: $16 $e3
    ld l, $80                                     ; $4cf6: $2e $80
    ld sp, hl                                     ; $4cf8: $f9
    jp hl                                         ; $4cf9: $e9


    xor d                                         ; $4cfa: $aa
    inc c                                         ; $4cfb: $0c
    jp Jump_022_530f                              ; $4cfc: $c3 $0f $53


    call nc, $f5af                                ; $4cff: $d4 $af $f5
    ld d, a                                       ; $4d02: $57
    push hl                                       ; $4d03: $e5
    and l                                         ; $4d04: $a5
    ld e, l                                       ; $4d05: $5d
    ld e, d                                       ; $4d06: $5a
    sub e                                         ; $4d07: $93
    ld b, [hl]                                    ; $4d08: $46
    ld d, [hl]                                    ; $4d09: $56
    sub d                                         ; $4d0a: $92
    ld d, d                                       ; $4d0b: $52
    halt                                          ; $4d0c: $76
    db $ed                                        ; $4d0d: $ed
    dec [hl]                                      ; $4d0e: $35
    ld l, c                                       ; $4d0f: $69
    ld d, [hl]                                    ; $4d10: $56
    rst $38                                       ; $4d11: $ff
    rst $28                                       ; $4d12: $ef
    inc l                                         ; $4d13: $2c
    ld h, $5c                                     ; $4d14: $26 $5c
    ld a, [bc]                                    ; $4d16: $0a
    db $10                                        ; $4d17: $10
    ld b, $47                                     ; $4d18: $06 $47
    cp a                                          ; $4d1a: $bf
    ei                                            ; $4d1b: $fb
    res 4, d                                      ; $4d1c: $cb $a2
    xor c                                         ; $4d1e: $a9
    ld [$72f3], a                                 ; $4d1f: $ea $f3 $72
    ld h, c                                       ; $4d22: $61
    ld a, [hl]                                    ; $4d23: $7e
    jp Jump_000_0ee7                              ; $4d24: $c3 $e7 $0e


    xor [hl]                                      ; $4d27: $ae
    jr nz, jr_022_4d36                            ; $4d28: $20 $0c

    sub [hl]                                      ; $4d2a: $96
    sub l                                         ; $4d2b: $95
    db $ec                                        ; $4d2c: $ec
    db $fc                                        ; $4d2d: $fc
    sbc d                                         ; $4d2e: $9a
    inc [hl]                                      ; $4d2f: $34

jr_022_4d30:
    ld d, e                                       ; $4d30: $53

jr_022_4d31:
    ld a, c                                       ; $4d31: $79
    xor d                                         ; $4d32: $aa
    ld sp, hl                                     ; $4d33: $f9
    ld l, $9d                                     ; $4d34: $2e $9d

jr_022_4d36:
    ld h, a                                       ; $4d36: $67
    db $e4                                        ; $4d37: $e4
    reti                                          ; $4d38: $d9


    inc d                                         ; $4d39: $14
    sub $56                                       ; $4d3a: $d6 $56
    ld d, $9b                                     ; $4d3c: $16 $9b
    ld a, c                                       ; $4d3e: $79
    cp c                                          ; $4d3f: $b9
    jr nc, @-$3f                                  ; $4d40: $30 $bf

    pop hl                                        ; $4d42: $e1
    ld [hl], e                                    ; $4d43: $73
    rlca                                          ; $4d44: $07
    ld d, a                                       ; $4d45: $57
    db $10                                        ; $4d46: $10
    ld b, $bd                                     ; $4d47: $06 $bd
    jp nc, $e54c                                  ; $4d49: $d2 $4c $e5

    ld [hl], a                                    ; $4d4c: $77
    cp [hl]                                       ; $4d4d: $be
    cp c                                          ; $4d4e: $b9
    cp $6b                                        ; $4d4f: $fe $6b
    adc e                                         ; $4d51: $8b
    ld e, d                                       ; $4d52: $5a
    sbc a                                         ; $4d53: $9f
    dec sp                                        ; $4d54: $3b
    cp b                                          ; $4d55: $b8
    add d                                         ; $4d56: $82
    jr nc, jr_022_4da0                            ; $4d57: $30 $47

    adc e                                         ; $4d59: $8b
    ld e, d                                       ; $4d5a: $5a
    ld [hl], e                                    ; $4d5b: $73
    halt                                          ; $4d5c: $76
    jp z, $0caa                                   ; $4d5d: $ca $aa $0c

    cpl                                           ; $4d60: $2f
    dec b                                         ; $4d61: $05
    ld l, e                                       ; $4d62: $6b
    ld l, e                                       ; $4d63: $6b
    ld d, l                                       ; $4d64: $55
    sbc a                                         ; $4d65: $9f
    sbc l                                         ; $4d66: $9d
    ld [hl-], a                                   ; $4d67: $32
    and l                                         ; $4d68: $a5
    db $f4                                        ; $4d69: $f4
    ld a, [c]                                     ; $4d6a: $f2
    ld [hl-], a                                   ; $4d6b: $32
    ei                                            ; $4d6c: $fb
    ld b, $c5                                     ; $4d6d: $06 $c5
    cp c                                          ; $4d6f: $b9
    add e                                         ; $4d70: $83
    dec hl                                        ; $4d71: $2b
    jr jr_022_4d31                                ; $4d72: $18 $bd

    jp nc, $e4d4                                  ; $4d74: $d2 $d4 $e4

    ld d, a                                       ; $4d77: $57
    cp l                                          ; $4d78: $bd
    cp b                                          ; $4d79: $b8
    ld e, [hl]                                    ; $4d7a: $5e
    adc d                                         ; $4d7b: $8a
    call Call_022_7d28                            ; $4d7c: $cd $28 $7d
    cp d                                          ; $4d7f: $ba
    di                                            ; $4d80: $f3
    call Call_022_7f75                            ; $4d81: $cd $75 $7f
    pop hl                                        ; $4d84: $e1
    ld c, $ae                                     ; $4d85: $0e $ae
    jr nz, jr_022_4d95                            ; $4d87: $20 $0c

    dec a                                         ; $4d89: $3d
    jp z, $bcaf                                   ; $4d8a: $ca $af $bc

    add $97                                       ; $4d8d: $c6 $97
    add l                                         ; $4d8f: $85
    ld b, $7c                                     ; $4d90: $06 $7c
    ld [hl], l                                    ; $4d92: $75
    ld c, d                                       ; $4d93: $4a
    ld a, [hl]                                    ; $4d94: $7e

jr_022_4d95:
    ld c, l                                       ; $4d95: $4d
    sbc d                                         ; $4d96: $9a
    sbc l                                         ; $4d97: $9d
    ld l, a                                       ; $4d98: $6f
    xor [hl]                                      ; $4d99: $ae
    rst $38                                       ; $4d9a: $ff
    ld hl, sp-$71                                 ; $4d9b: $f8 $8f
    ld [hl], c                                    ; $4d9d: $71
    db $ed                                        ; $4d9e: $ed
    ld h, [hl]                                    ; $4d9f: $66

jr_022_4da0:
    sub h                                         ; $4da0: $94
    inc a                                         ; $4da1: $3c
    ld [hl], a                                    ; $4da2: $77
    ld [hl], b                                    ; $4da3: $70
    dec b                                         ; $4da4: $05
    ld h, c                                       ; $4da5: $61
    cp l                                          ; $4da6: $bd
    jp nc, $e4d4                                  ; $4da7: $d2 $d4 $e4

    rst $10                                       ; $4daa: $d7
    cp $2a                                        ; $4dab: $fe $2a
    jp $c14b                                      ; $4dad: $c3 $4b $c1


    jp nc, Jump_022_6cc8                          ; $4db0: $d2 $c8 $6c

    or l                                          ; $4db3: $b5
    and [hl]                                      ; $4db4: $a6
    ld e, h                                       ; $4db5: $5c
    rst $38                                       ; $4db6: $ff
    ld d, l                                       ; $4db7: $55
    ld b, $3c                                     ; $4db8: $06 $3c
    jp $ee17                                      ; $4dba: $c3 $17 $ee


    ldh [$0a], a                                  ; $4dbd: $e0 $0a
    jp nz, Jump_022_5cc7                          ; $4dbf: $c2 $c7 $5c

    or [hl]                                       ; $4dc2: $b6
    ld h, $cd                                     ; $4dc3: $26 $cd
    add d                                         ; $4dc5: $82
    rst $30                                       ; $4dc6: $f7
    ld a, c                                       ; $4dc7: $79
    ld sp, hl                                     ; $4dc8: $f9
    ld d, l                                       ; $4dc9: $55
    ld a, [hl+]                                   ; $4dca: $2a
    xor h                                         ; $4dcb: $ac
    dec hl                                        ; $4dcc: $2b
    ld b, $bd                                     ; $4dcd: $06 $bd
    ld e, $b8                                     ; $4dcf: $1e $b8
    or e                                          ; $4dd1: $b3
    adc h                                         ; $4dd2: $8c
    ld e, l                                       ; $4dd3: $5d
    add [hl]                                      ; $4dd4: $86
    sub $fa                                       ; $4dd5: $d6 $fa
    ld a, [c]                                     ; $4dd7: $f2
    dec [hl]                                      ; $4dd8: $35
    ld e, b                                       ; $4dd9: $58
    sub e                                         ; $4dda: $93
    ld b, [hl]                                    ; $4ddb: $46
    ld h, [hl]                                    ; $4ddc: $66
    ld d, l                                       ; $4ddd: $55
    inc de                                        ; $4dde: $13
    ld a, l                                       ; $4ddf: $7d
    push af                                       ; $4de0: $f5
    ld l, a                                       ; $4de1: $6f
    ret nc                                        ; $4de2: $d0

    adc [hl]                                      ; $4de3: $8e
    ret                                           ; $4de4: $c9


    dec [hl]                                      ; $4de5: $35
    ld l, c                                       ; $4de6: $69
    ld d, [hl]                                    ; $4de7: $56
    and a                                         ; $4de8: $a7
    db $e4                                        ; $4de9: $e4
    rst $20                                       ; $4dea: $e7
    push hl                                       ; $4deb: $e5
    push hl                                       ; $4dec: $e5
    rst $00                                       ; $4ded: $c7
    dec hl                                        ; $4dee: $2b
    ld c, h                                       ; $4def: $4c
    rla                                           ; $4df0: $17
    ld h, $81                                     ; $4df1: $26 $81
    cp a                                          ; $4df3: $bf
    db $ec                                        ; $4df4: $ec
    jp nc, $349a                                  ; $4df5: $d2 $9a $34

    ld [hl-], a                                   ; $4df8: $32
    xor e                                         ; $4df9: $ab
    sbc d                                         ; $4dfa: $9a
    add sp, $5d                                   ; $4dfb: $e8 $5d
    ld sp, $4b3d                                  ; $4dfd: $31 $3d $4b
    jp $251d                                      ; $4e00: $c3 $1d $25


    sbc d                                         ; $4e03: $9a
    ld h, l                                       ; $4e04: $65
    rst $08                                       ; $4e05: $cf
    and c                                         ; $4e06: $a1
    di                                            ; $4e07: $f3
    sub l                                         ; $4e08: $95
    ccf                                           ; $4e09: $3f
    ld e, e                                       ; $4e0a: $5b
    ei                                            ; $4e0b: $fb
    db $dd                                        ; $4e0c: $dd
    ld e, a                                       ; $4e0d: $5f
    sub $79                                       ; $4e0e: $d6 $79
    ldh a, [rHDMA5]                               ; $4e10: $f0 $55
    ld c, c                                       ; $4e12: $49
    ld l, $19                                     ; $4e13: $2e $19
    and a                                         ; $4e15: $a7
    cp [hl]                                       ; $4e16: $be
    db $e3                                        ; $4e17: $e3
    push hl                                       ; $4e18: $e5
    ld d, d                                       ; $4e19: $52

jr_022_4e1a:
    sub b                                         ; $4e1a: $90
    xor $80                                       ; $4e1b: $ee $80
    halt                                          ; $4e1d: $76
    xor d                                         ; $4e1e: $aa
    sub c                                         ; $4e1f: $91
    or c                                          ; $4e20: $b1
    rst $10                                       ; $4e21: $d7
    cp b                                          ; $4e22: $b8
    dec bc                                        ; $4e23: $0b
    xor e                                         ; $4e24: $ab
    ld [hl-], a                                   ; $4e25: $32
    db $ec                                        ; $4e26: $ec
    call nz, $47f7                                ; $4e27: $c4 $f7 $47
    ld l, e                                       ; $4e2a: $6b
    ld d, l                                       ; $4e2b: $55
    db $eb                                        ; $4e2c: $eb
    ld c, a                                       ; $4e2d: $4f
    rla                                           ; $4e2e: $17
    ld h, h                                       ; $4e2f: $64
    or d                                          ; $4e30: $b2
    cp c                                          ; $4e31: $b9
    call c, $dace                                 ; $4e32: $dc $ce $da
    ld e, d                                       ; $4e35: $5a
    push de                                       ; $4e36: $d5
    rst $20                                       ; $4e37: $e7
    cp c                                          ; $4e38: $b9
    sub $0c                                       ; $4e39: $d6 $0c
    ld a, b                                       ; $4e3b: $78
    dec d                                         ; $4e3c: $15
    rlca                                          ; $4e3d: $07
    add h                                         ; $4e3e: $84
    ld bc, $c947                                  ; $4e3f: $01 $47 $c9
    adc a                                         ; $4e42: $8f
    rst $38                                       ; $4e43: $ff
    ld l, c                                       ; $4e44: $69
    adc h                                         ; $4e45: $8c
    or e                                          ; $4e46: $b3
    cpl                                           ; $4e47: $2f
    ld e, l                                       ; $4e48: $5d
    jr z, jr_022_4e1a                             ; $4e49: $28 $cf

    cp b                                          ; $4e4b: $b8
    ld l, e                                       ; $4e4c: $6b
    ld d, l                                       ; $4e4d: $55
    sub c                                         ; $4e4e: $91
    and [hl]                                      ; $4e4f: $a6
    dec hl                                        ; $4e50: $2b
    ld b, $96                                     ; $4e51: $06 $96
    ld a, c                                       ; $4e53: $79
    cp c                                          ; $4e54: $b9
    ld d, h                                       ; $4e55: $54
    rra                                           ; $4e56: $1f
    rst $38                                       ; $4e57: $ff
    ld d, e                                       ; $4e58: $53
    ld a, c                                       ; $4e59: $79
    inc [hl]                                      ; $4e5a: $34
    adc e                                         ; $4e5b: $8b
    ld c, a                                       ; $4e5c: $4f
    ld h, e                                       ; $4e5d: $63
    inc e                                         ; $4e5e: $1c
    db $fc                                        ; $4e5f: $fc
    add a                                         ; $4e60: $87
    jr nc, @+$72                                  ; $4e61: $30 $70

    ld d, c                                       ; $4e63: $51
    ld a, [bc]                                    ; $4e64: $0a
    sbc [hl]                                      ; $4e65: $9e
    dec sp                                        ; $4e66: $3b
    cpl                                           ; $4e67: $2f
    ld l, c                                       ; $4e68: $69
    add d                                         ; $4e69: $82
    add d                                         ; $4e6a: $82
    db $10                                        ; $4e6b: $10
    jp nz, $3727                                  ; $4e6c: $c2 $27 $37

    ld [hl], e                                    ; $4e6f: $73
    pop de                                        ; $4e70: $d1
    adc $6c                                       ; $4e71: $ce $6c
    cp l                                          ; $4e73: $bd
    pop af                                        ; $4e74: $f1
    add hl, de                                    ; $4e75: $19
    ld e, d                                       ; $4e76: $5a
    xor a                                         ; $4e77: $af
    inc [hl]                                      ; $4e78: $34
    ld d, e                                       ; $4e79: $53
    ld sp, hl                                     ; $4e7a: $f9
    add c                                         ; $4e7b: $81
    ld c, e                                       ; $4e7c: $4b
    ld d, d                                       ; $4e7d: $52
    ldh a, [$32]                                  ; $4e7e: $f0 $32
    cpl                                           ; $4e80: $2f
    ld c, d                                       ; $4e81: $4a
    or e                                          ; $4e82: $b3
    call z, $9a4b                                 ; $4e83: $cc $4b $9a
    and b                                         ; $4e86: $a0
    jr c, jr_022_4f00                             ; $4e87: $38 $77

    xor l                                         ; $4e89: $ad
    ld a, [hl+]                                   ; $4e8a: $2a
    jp nc, Jump_022_7bac                          ; $4e8b: $d2 $ac $7b

    cp d                                          ; $4e8e: $ba
    cp a                                          ; $4e8f: $bf
    jr nz, jr_022_4e9e                            ; $4e90: $20 $0c

    daa                                           ; $4e92: $27
    and l                                         ; $4e93: $a5
    push af                                       ; $4e94: $f5
    ld h, e                                       ; $4e95: $63
    inc sp                                        ; $4e96: $33
    and [hl]                                      ; $4e97: $a6
    dec c                                         ; $4e98: $0d

Jump_022_4e99:
    ld [hl], a                                    ; $4e99: $77
    rla                                           ; $4e9a: $17
    xor b                                         ; $4e9b: $a8
    and $bb                                       ; $4e9c: $e6 $bb

jr_022_4e9e:
    sbc $15                                       ; $4e9e: $de $15
    inc bc                                        ; $4ea0: $03
    sub [hl]                                      ; $4ea1: $96
    ret                                           ; $4ea2: $c9


    add a                                         ; $4ea3: $87
    rra                                           ; $4ea4: $1f
    or [hl]                                       ; $4ea5: $b6
    ld e, a                                       ; $4ea6: $5f
    ld d, $36                                     ; $4ea7: $16 $36
    inc bc                                        ; $4ea9: $03
    scf                                           ; $4eaa: $37
    db $ec                                        ; $4eab: $ec

Jump_022_4eac:
    ret                                           ; $4eac: $c9


    rst $00                                       ; $4ead: $c7
    or h                                          ; $4eae: $b4
    add c                                         ; $4eaf: $81
    xor c                                         ; $4eb0: $a9
    xor a                                         ; $4eb1: $af
    dec [hl]                                      ; $4eb2: $35
    inc bc                                        ; $4eb3: $03
    ld e, [hl]                                    ; $4eb4: $5e
    push bc                                       ; $4eb5: $c5
    ld bc, $47ad                                  ; $4eb6: $01 $ad $47
    ld sp, hl                                     ; $4eb9: $f9
    pop bc                                        ; $4eba: $c1
    ld d, a                                       ; $4ebb: $57
    ld a, [c]                                     ; $4ebc: $f2
    cp [hl]                                       ; $4ebd: $be
    adc [hl]                                      ; $4ebe: $8e
    ld [bc], a                                    ; $4ebf: $02
    ld l, b                                       ; $4ec0: $68
    ldh a, [$b0]                                  ; $4ec1: $f0 $b0
    ld a, [c]                                     ; $4ec3: $f2
    or c                                          ; $4ec4: $b1
    di                                            ; $4ec5: $f3
    ld l, h                                       ; $4ec6: $6c
    pop hl                                        ; $4ec7: $e1
    cpl                                           ; $4ec8: $2f
    ld a, b                                       ; $4ec9: $78
    sbc a                                         ; $4eca: $9f
    rst $20                                       ; $4ecb: $e7
    xor d                                         ; $4ecc: $aa
    xor b                                         ; $4ecd: $a8
    nop                                           ; $4ece: $00

Jump_022_4ecf:
    dec sp                                        ; $4ecf: $3b
    rst $18                                       ; $4ed0: $df
    call c, $feaa                                 ; $4ed1: $dc $aa $fe
    add d                                         ; $4ed4: $82
    jr nc, jr_022_4eed                            ; $4ed5: $30 $16

jr_022_4ed7:
    ret c                                         ; $4ed7: $d8

    ld l, c                                       ; $4ed8: $69
    and $8a                                       ; $4ed9: $e6 $8a
    ld a, h                                       ; $4edb: $7c
    adc h                                         ; $4edc: $8c
    ld c, e                                       ; $4edd: $4b
    ld a, [$bda5]                                 ; $4ede: $fa $a5 $bd
    ld h, $8d                                     ; $4ee1: $26 $8d
    xor h                                         ; $4ee3: $ac
    inc hl                                        ; $4ee4: $23
    ld l, c                                       ; $4ee5: $69
    ccf                                           ; $4ee6: $3f
    ld b, b                                       ; $4ee7: $40
    ld a, [bc]                                    ; $4ee8: $0a
    ld [hl], h                                    ; $4ee9: $74
    ld e, l                                       ; $4eea: $5d
    db $eb                                        ; $4eeb: $eb
    adc a                                         ; $4eec: $8f

jr_022_4eed:
    ld e, l                                       ; $4eed: $5d
    ld b, [hl]                                    ; $4eee: $46
    dec [hl]                                      ; $4eef: $35
    rra                                           ; $4ef0: $1f
    db $fc                                        ; $4ef1: $fc
    add a                                         ; $4ef2: $87
    dec sp                                        ; $4ef3: $3b
    rst $18                                       ; $4ef4: $df
    ld e, h                                       ; $4ef5: $5c
    rst $38                                       ; $4ef6: $ff
    sub l                                         ; $4ef7: $95
    dec de                                        ; $4ef8: $1b
    jp nz, Jump_022_7b47                          ; $4ef9: $c2 $47 $7b

    ld e, [hl]                                    ; $4efc: $5e
    ld a, [hl]                                    ; $4efd: $7e
    ld d, c                                       ; $4efe: $51
    pop bc                                        ; $4eff: $c1

jr_022_4f00:
    rst $20                                       ; $4f00: $e7
    scf                                           ; $4f01: $37
    db $fc                                        ; $4f02: $fc
    ld e, c                                       ; $4f03: $59
    ld b, $ca                                     ; $4f04: $06 $ca
    xor a                                         ; $4f06: $af
    call c, Call_000_0310                         ; $4f07: $dc $10 $03
    sub [hl]                                      ; $4f0a: $96
    add c                                         ; $4f0b: $81
    ld a, [c]                                     ; $4f0c: $f2
    db $d3                                        ; $4f0d: $d3

jr_022_4f0e:
    ld sp, $fa95                                  ; $4f0e: $31 $95 $fa
    db $ec                                        ; $4f11: $ec
    dec de                                        ; $4f12: $1b
    jr jr_022_4f0e                                ; $4f13: $18 $f9

    ld b, c                                       ; $4f15: $41
    db $dd                                        ; $4f16: $dd
    call nz, $a5fa                                ; $4f17: $c4 $fa $a5
    ld h, b                                       ; $4f1a: $60
    ld a, [hl+]                                   ; $4f1b: $2a
    ld l, c                                       ; $4f1c: $69
    adc b                                         ; $4f1d: $88
    xor l                                         ; $4f1e: $ad
    cp h                                          ; $4f1f: $bc
    db $fc                                        ; $4f20: $fc
    cp h                                          ; $4f21: $bc
    db $fc                                        ; $4f22: $fc
    jp nc, $cbcb                                  ; $4f23: $d2 $cb $cb

    add sp, $06                                   ; $4f26: $e8 $06
    push bc                                       ; $4f28: $c5
    pop de                                        ; $4f29: $d1
    adc [hl]                                      ; $4f2a: $8e
    ld [hl], $be                                  ; $4f2b: $36 $be
    ld d, b                                       ; $4f2d: $50
    sbc e                                         ; $4f2e: $9b
    or $cf                                        ; $4f2f: $f6 $cf
    ld [hl-], a                                   ; $4f31: $32
    ld e, [hl]                                    ; $4f32: $5e
    ld h, c                                       ; $4f33: $61
    rst $20                                       ; $4f34: $e7
    add hl, de                                    ; $4f35: $19
    ldh a, [$c1]                                  ; $4f36: $f0 $c1
    rst $38                                       ; $4f38: $ff
    and l                                         ; $4f39: $a5
    ld h, b                                       ; $4f3a: $60
    ld e, [hl]                                    ; $4f3b: $5e
    ld l, $05                                     ; $4f3c: $2e $05
    add b                                         ; $4f3e: $80
    jr nc, jr_022_4ed7                            ; $4f3f: $30 $96

    pop af                                        ; $4f41: $f1
    ld a, [bc]                                    ; $4f42: $0a
    adc e                                         ; $4f43: $8b
    sbc c                                         ; $4f44: $99
    push af                                       ; $4f45: $f5
    ld c, e                                       ; $4f46: $4b
    pop bc                                        ; $4f47: $c1
    cp h                                          ; $4f48: $bc
    ld c, b                                       ; $4f49: $48
    sbc d                                         ; $4f4a: $9a
    and b                                         ; $4f4b: $a0
    inc l                                         ; $4f4c: $2c
    ld l, h                                       ; $4f4d: $6c
    sub [hl]                                      ; $4f4e: $96
    sub c                                         ; $4f4f: $91
    db $ed                                        ; $4f50: $ed
    cp b                                          ; $4f51: $b8
    adc h                                         ; $4f52: $8c
    scf                                           ; $4f53: $37
    ld [hl], a                                    ; $4f54: $77
    or d                                          ; $4f55: $b2
    ld b, $77                                     ; $4f56: $06 $77
    ld e, [hl]                                    ; $4f58: $5e
    ld a, [hl]                                    ; $4f59: $7e
    jp hl                                         ; $4f5a: $e9


    push hl                                       ; $4f5b: $e5
    ld h, l                                       ; $4f5c: $65
    ld [hl], h                                    ; $4f5d: $74
    add e                                         ; $4f5e: $83
    ld [c], a                                     ; $4f5f: $e2
    ld l, b                                       ; $4f60: $68
    sub [hl]                                      ; $4f61: $96
    sbc d                                         ; $4f62: $9a
    push af                                       ; $4f63: $f5
    ld h, a                                       ; $4f64: $67
    and a                                         ; $4f65: $a7
    inc b                                         ; $4f66: $04
    jp hl                                         ; $4f67: $e9


    cp $34                                        ; $4f68: $fe $34
    adc l                                         ; $4f6a: $8d
    ld [hl], c                                    ; $4f6b: $71
    ld e, [hl]                                    ; $4f6c: $5e
    ld a, [hl]                                    ; $4f6d: $7e
    sub l                                         ; $4f6e: $95
    ld a, [bc]                                    ; $4f6f: $0a
    ld e, e                                       ; $4f70: $5b
    xor b                                         ; $4f71: $a8
    pop bc                                        ; $4f72: $c1
    xor l                                         ; $4f73: $ad
    ld d, [hl]                                    ; $4f74: $56

Call_022_4f75:
    ld h, l                                       ; $4f75: $65
    ret c                                         ; $4f76: $d8

    cp [hl]                                       ; $4f77: $be
    and h                                         ; $4f78: $a4
    ld a, [hl]                                    ; $4f79: $7e
    sub e                                         ; $4f7a: $93
    add b                                         ; $4f7b: $80
    dec sp                                        ; $4f7c: $3b
    cpl                                           ; $4f7d: $2f
    ld l, c                                       ; $4f7e: $69
    add d                                         ; $4f7f: $82
    add d                                         ; $4f80: $82
    jr nc, @+$49                                  ; $4f81: $30 $47

    ld l, e                                       ; $4f83: $6b
    ld d, l                                       ; $4f84: $55
    sbc a                                         ; $4f85: $9f
    ld b, $7a                                     ; $4f86: $06 $7a
    adc c                                         ; $4f88: $89
    cp e                                          ; $4f89: $bb
    ld d, [hl]                                    ; $4f8a: $56
    dec d                                         ; $4f8b: $15
    ld l, c                                       ; $4f8c: $69
    cp d                                          ; $4f8d: $ba
    adc $e2                                       ; $4f8e: $ce $e2
    dec [hl]                                      ; $4f90: $35
    sbc b                                         ; $4f91: $98
    ld b, [hl]                                    ; $4f92: $46
    ld e, [hl]                                    ; $4f93: $5e
    dec de                                        ; $4f94: $1b
    ld e, b                                       ; $4f95: $58
    sub b                                         ; $4f96: $90
    ret                                           ; $4f97: $c9


    and $39                                       ; $4f98: $e6 $39
    ld hl, sp-$61                                 ; $4f9a: $f8 $9f
    xor [hl]                                      ; $4f9c: $ae
    ld a, e                                       ; $4f9d: $7b
    cp d                                          ; $4f9e: $ba
    cp a                                          ; $4f9f: $bf
    db $ec                                        ; $4fa0: $ec
    jp nc, $b98e                                  ; $4fa1: $d2 $8e $b9

    ld a, [de]                                    ; $4fa4: $1a
    inc h                                         ; $4fa5: $24
    db $ed                                        ; $4fa6: $ed
    xor b                                         ; $4fa7: $a8
    jr @-$3f                                      ; $4fa8: $18 $bf

    ld b, c                                       ; $4faa: $41
    jr @+$2f                                      ; $4fab: $18 $2d

    jp c, Jump_022_7cac                           ; $4fad: $da $ac $7c

    adc h                                         ; $4fb0: $8c
    add hl, sp                                    ; $4fb1: $39
    rst $08                                       ; $4fb2: $cf
    dec e                                         ; $4fb3: $1d
    ld h, e                                       ; $4fb4: $63
    jp nz, Jump_022_7c76                          ; $4fb5: $c2 $76 $7c

    sub [hl]                                      ; $4fb8: $96
    ld a, [c]                                     ; $4fb9: $f2
    or e                                          ; $4fba: $b3
    ld d, e                                       ; $4fbb: $53
    ld d, $3e                                     ; $4fbc: $16 $3e
    ld [hl], a                                    ; $4fbe: $77
    xor l                                         ; $4fbf: $ad
    ld a, [hl+]                                   ; $4fc0: $2a
    jp nc, $0c20                                  ; $4fc1: $d2 $20 $0c

    and a                                         ; $4fc4: $a7
    and h                                         ; $4fc5: $a4
    xor a                                         ; $4fc6: $af
    ld a, c                                       ; $4fc7: $79
    rst $20                                       ; $4fc8: $e7
    adc $32                                       ; $4fc9: $ce $32

Call_022_4fcb:
Jump_022_4fcb:
    ld a, [$f367]                                 ; $4fcb: $fa $67 $f3
    ld e, h                                       ; $4fce: $5c
    ld [hl], b                                    ; $4fcf: $70
    xor l                                         ; $4fd0: $ad
    ccf                                           ; $4fd1: $3f
    cpl                                           ; $4fd2: $2f
    rla                                           ; $4fd3: $17
    ld d, [hl]                                    ; $4fd4: $56
    rst $38                                       ; $4fd5: $ff
    ld h, [hl]                                    ; $4fd6: $66
    ld l, l                                       ; $4fd7: $6d
    xor l                                         ; $4fd8: $ad
    ld [$0308], a                                 ; $4fd9: $ea $08 $03
    db $dd                                        ; $4fdc: $dd
    dec h                                         ; $4fdd: $25
    db $ed                                        ; $4fde: $ed
    rlca                                          ; $4fdf: $07
    ld c, b                                       ; $4fe0: $48
    reti                                          ; $4fe1: $d9


    pop de                                        ; $4fe2: $d1
    sub a                                         ; $4fe3: $97
    ld [$62ba], sp                                ; $4fe4: $08 $ba $62
    ld h, a                                       ; $4fe7: $67
    ld [hl], e                                    ; $4fe8: $73
    db $e4                                        ; $4fe9: $e4
    ret z                                         ; $4fea: $c8

    ld de, $a421                                  ; $4feb: $11 $21 $a4
    call nz, $e5e6                                ; $4fee: $c4 $e6 $e5
    sbc e                                         ; $4ff1: $9b
    sbc d                                         ; $4ff2: $9a
    push af                                       ; $4ff3: $f5
    ld b, a                                       ; $4ff4: $47
    ld l, a                                       ; $4ff5: $6f
    ld a, l                                       ; $4ff6: $7d
    sbc c                                         ; $4ff7: $99
    cp h                                          ; $4ff8: $bc
    add $cb                                       ; $4ff9: $c6 $cb
    pop af                                        ; $4ffb: $f1
    reti                                          ; $4ffc: $d9


    cp h                                          ; $4ffd: $bc
    xor b                                         ; $4ffe: $a8
    xor a                                         ; $4fff: $af
    ld l, l                                       ; $5000: $6d
    jp c, $f8ed                                   ; $5001: $da $ed $f8

    add c                                         ; $5004: $81
    add hl, bc                                    ; $5005: $09
    ld [hl], a                                    ; $5006: $77
    add c                                         ; $5007: $81
    cp e                                          ; $5008: $bb
    ld c, e                                       ; $5009: $4b
    or e                                          ; $500a: $b3
    or l                                          ; $500b: $b5
    ld [hl], d                                    ; $500c: $72
    xor $42                                       ; $500d: $ee $42
    dec c                                         ; $500f: $0d
    ld l, [hl]                                    ; $5010: $6e
    and l                                         ; $5011: $a5
    ld de, $b421                                  ; $5012: $11 $21 $b4
    ld d, e                                       ; $5015: $53
    dec bc                                        ; $5016: $0b
    ld [hl], a                                    ; $5017: $77
    push hl                                       ; $5018: $e5
    ld h, e                                       ; $5019: $63
    call z, $aab5                                 ; $501a: $cc $b5 $aa
    ld c, b                                       ; $501d: $48
    add e                                         ; $501e: $83
    jr nc, @-$68                                  ; $501f: $30 $96

    dec d                                         ; $5021: $15
    or l                                          ; $5022: $b5
    cp $bc                                        ; $5023: $fe $bc
    db $fc                                        ; $5025: $fc
    adc [hl]                                      ; $5026: $8e
    db $d3                                        ; $5027: $d3
    jr nc, @+$0f                                  ; $5028: $30 $0d

    xor h                                         ; $502a: $ac
    rst $20                                       ; $502b: $e7
    push af                                       ; $502c: $f5
    xor d                                         ; $502d: $aa
    inc a                                         ; $502e: $3c
    ld c, h                                       ; $502f: $4c
    adc c                                         ; $5030: $89
    xor l                                         ; $5031: $ad
    rst $20                                       ; $5032: $e7
    push hl                                       ; $5033: $e5
    xor b                                         ; $5034: $a8
    jp nz, $dd60                                  ; $5035: $c2 $60 $dd

    ld d, h                                       ; $5038: $54
    ret c                                         ; $5039: $d8

    ld hl, sp-$15                                 ; $503a: $f8 $eb
    ld h, l                                       ; $503c: $65
    db $dd                                        ; $503d: $dd
    xor [hl]                                      ; $503e: $ae
    ld d, h                                       ; $503f: $54
    cp a                                          ; $5040: $bf
    and h                                         ; $5041: $a4
    ld e, l                                       ; $5042: $5d
    ld b, a                                       ; $5043: $47
    jr @-$41                                      ; $5044: $18 $bd

    ld e, $b8                                     ; $5046: $1e $b8
    or e                                          ; $5048: $b3
    call z, $a5cb                                 ; $5049: $cc $cb $a5
    ld a, [$5cbc]                                 ; $504c: $fa $bc $5c
    ret c                                         ; $504f: $d8

    add l                                         ; $5050: $85
    ld a, c                                       ; $5051: $79
    ld sp, hl                                     ; $5052: $f9
    add c                                         ; $5053: $81
    add [hl]                                      ; $5054: $86
    cp a                                          ; $5055: $bf
    ld c, d                                       ; $5056: $4a
    add l                                         ; $5057: $85
    and c                                         ; $5058: $a1
    dec e                                         ; $5059: $1d
    ld l, l                                       ; $505a: $6d
    ld a, h                                       ; $505b: $7c
    sub [hl]                                      ; $505c: $96
    ld a, c                                       ; $505d: $79
    cp c                                          ; $505e: $b9
    ld d, h                                       ; $505f: $54
    ld e, a                                       ; $5060: $5f
    sub e                                         ; $5061: $93
    ld b, [hl]                                    ; $5062: $46
    ld h, [hl]                                    ; $5063: $66
    xor e                                         ; $5064: $ab
    sub a                                         ; $5065: $97
    sub a                                         ; $5066: $97
    pop af                                        ; $5067: $f1
    ld l, c                                       ; $5068: $69
    ld [hl+], a                                   ; $5069: $22
    dec de                                        ; $506a: $1b
    xor a                                         ; $506b: $af
    db $e4                                        ; $506c: $e4
    ld l, e                                       ; $506d: $6b
    jp nc, Jump_022_73cc                          ; $506e: $d2 $cc $73

    ld b, l                                       ; $5071: $45
    xor l                                         ; $5072: $ad

Call_022_5073:
    cp a                                          ; $5073: $bf
    db $eb                                        ; $5074: $eb
    ld [$3d03], sp                                ; $5075: $08 $03 $3d
    adc d                                         ; $5078: $8a
    ld d, d                                       ; $5079: $52
    ld a, l                                       ; $507a: $7d
    ld c, l                                       ; $507b: $4d
    ld a, [de]                                    ; $507c: $1a
    xor $ba                                       ; $507d: $ee $ba
    ld c, e                                       ; $507f: $4b
    jp c, $900f                                   ; $5080: $da $0f $90

    or d                                          ; $5083: $b2
    and e                                         ; $5084: $a3
    cpl                                           ; $5085: $2f
    ld de, $c174                                  ; $5086: $11 $74 $c1
    db $dd                                        ; $5089: $dd
    and d                                         ; $508a: $a2
    ld [bc], a                                    ; $508b: $02
    adc h                                         ; $508c: $8c
    ld e, l                                       ; $508d: $5d
    ld [$c02f], sp                                ; $508e: $08 $2f $c0
    inc sp                                        ; $5091: $33
    add h                                         ; $5092: $84
    db $10                                        ; $5093: $10
    ld [c], a                                     ; $5094: $e2
    ret z                                         ; $5095: $c8

    sub c                                         ; $5096: $91
    inc hl                                        ; $5097: $23
    ld b, a                                       ; $5098: $47
    adc [hl]                                      ; $5099: $8e
    inc e                                         ; $509a: $1c
    ld de, $0842                                  ; $509b: $11 $42 $08
    ld h, c                                       ; $509e: $61
    ld h, a                                       ; $509f: $67
    ld [hl], e                                    ; $50a0: $73
    db $e4                                        ; $50a1: $e4
    ret z                                         ; $50a2: $c8

    ld de, $8421                                  ; $50a3: $11 $21 $84
    jr nc, @+$18                                  ; $50a6: $30 $16

    sbc b                                         ; $50a8: $98
    sub a                                         ; $50a9: $97
    dec bc                                        ; $50aa: $0b
    db $d3                                        ; $50ab: $d3
    ld d, l                                       ; $50ac: $55
    ld d, c                                       ; $50ad: $51
    ld bc, $3296                                  ; $50ae: $01 $96 $32
    jp nc, $df8e                                  ; $50b1: $d2 $8e $df

    ldh a, [$bb]                                  ; $50b4: $f0 $bb
    ld h, d                                       ; $50b6: $62
    dec a                                         ; $50b7: $3d
    adc e                                         ; $50b8: $8b
    ld a, [$cc74]                                 ; $50b9: $fa $74 $cc
    call nz, $2ab8                                ; $50bc: $c4 $b8 $2a
    ld a, [hl+]                                   ; $50bf: $2a
    nop                                           ; $50c0: $00
    sbc d                                         ; $50c1: $9a
    ld h, l                                       ; $50c2: $65
    ld d, b                                       ; $50c3: $50
    jp nc, $b644                                  ; $50c4: $d2 $44 $b6

    and d                                         ; $50c7: $a2
    sub $5f                                       ; $50c8: $d6 $5f
    ld e, e                                       ; $50ca: $5b
    jp nc, $c504                                  ; $50cb: $d2 $04 $c5

    rlca                                          ; $50ce: $07
    add hl, de                                    ; $50cf: $19
    cp [hl]                                       ; $50d0: $be
    sub a                                         ; $50d1: $97
    ld c, e                                       ; $50d2: $4b
    pop bc                                        ; $50d3: $c1
    inc a                                         ; $50d4: $3c
    daa                                           ; $50d5: $27
    xor a                                         ; $50d6: $af
    inc c                                         ; $50d7: $0c
    ld h, c                                       ; $50d8: $61
    xor l                                         ; $50d9: $ad
    rra                                           ; $50da: $1f
    ld h, e                                       ; $50db: $63
    ld [hl], d                                    ; $50dc: $72
    rst $10                                       ; $50dd: $d7
    ld e, l                                       ; $50de: $5d
    jp nc, $807e                                  ; $50df: $d2 $7e $80

    sub h                                         ; $50e2: $94
    dec e                                         ; $50e3: $1d
    rla                                           ; $50e4: $17
    xor a                                         ; $50e5: $af
    di                                            ; $50e6: $f3
    or a                                          ; $50e7: $b7
    xor d                                         ; $50e8: $aa
    inc hl                                        ; $50e9: $23
    inc c                                         ; $50ea: $0c
    rst $00                                       ; $50eb: $c7
    and l                                         ; $50ec: $a5
    call z, $6993                                 ; $50ed: $cc $93 $69
    ld d, e                                       ; $50f0: $53
    add e                                         ; $50f1: $83
    dec a                                         ; $50f2: $3d
    add a                                         ; $50f3: $87
    sub a                                         ; $50f4: $97
    ld [$73c2], a                                 ; $50f5: $ea $c2 $73
    rst $00                                       ; $50f8: $c7
    ld a, a                                       ; $50f9: $7f
    dec l                                         ; $50fa: $2d
    add $ad                                       ; $50fb: $c6 $ad
    ld a, [hl+]                                   ; $50fd: $2a
    ld a, [hl+]                                   ; $50fe: $2a
    pop hl                                        ; $50ff: $e1
    ld [hl], h                                    ; $5100: $74
    or $ab                                        ; $5101: $f6 $ab
    sub a                                         ; $5103: $97
    sub a                                         ; $5104: $97
    ld a, c                                       ; $5105: $79

jr_022_5106:
    ld l, $d4                                     ; $5106: $2e $d4
    ld a, [$faef]                                 ; $5108: $fa $ef $fa
    db $ec                                        ; $510b: $ec
    sbc b                                         ; $510c: $98
    ld [$3b68], a                                 ; $510d: $ea $68 $3b
    ld a, [bc]                                    ; $5110: $0a
    ld d, $93                                     ; $5111: $16 $93
    add d                                         ; $5113: $82
    add hl, hl                                    ; $5114: $29
    xor h                                         ; $5115: $ac
    ld c, c                                       ; $5116: $49
    ld d, e                                       ; $5117: $53
    sub e                                         ; $5118: $93
    rra                                           ; $5119: $1f
    cp b                                          ; $511a: $b8
    ld [de], a                                    ; $511b: $12
    cp e                                          ; $511c: $bb
    inc d                                         ; $511d: $14
    xor h                                         ; $511e: $ac
    cp h                                          ; $511f: $bc
    inc a                                         ; $5120: $3c
    ld [hl], a                                    ; $5121: $77
    xor l                                         ; $5122: $ad
    ld a, [hl+]                                   ; $5123: $2a
    jp nc, $6770                                  ; $5124: $d2 $70 $67

    xor c                                         ; $5127: $a9
    push bc                                       ; $5128: $c5
    cp b                                          ; $5129: $b8
    adc $ad                                       ; $512a: $ce $ad
    ld [$d26b], a                                 ; $512c: $ea $6b $d2
    call z, $ec73                                 ; $512f: $cc $73 $ec
    jp Jump_022_7024                              ; $5132: $c3 $24 $70


    ld d, c                                       ; $5135: $51
    ld a, a                                       ; $5136: $7f
    add h                                         ; $5137: $84
    ld bc, $3fad                                  ; $5138: $01 $ad $3f
    jr z, jr_022_51a6                             ; $513b: $28 $69

    ld [hl+], a                                   ; $513d: $22
    ld e, e                                       ; $513e: $5b
    ld d, c                                       ; $513f: $51
    db $eb                                        ; $5140: $eb
    xor a                                         ; $5141: $af
    ld a, [hl+]                                   ; $5142: $2a
    add hl, bc                                    ; $5143: $09
    ld c, a                                       ; $5144: $4f
    dec bc                                        ; $5145: $0b
    rra                                           ; $5146: $1f
    call Call_022_4ab2                            ; $5147: $cd $b2 $4a
    ld l, c                                       ; $514a: $69
    ld a, [de]                                    ; $514b: $1a
    jp Jump_022_5f04                              ; $514c: $c3 $04 $5f


    xor b                                         ; $514f: $a8
    push af                                       ; $5150: $f5
    sbc a                                         ; $5151: $9f
    db $fd                                        ; $5152: $fd
    ld [$05e5], a                                 ; $5153: $ea $e5 $05
    ld h, [hl]                                    ; $5156: $66
    rst $00                                       ; $5157: $c7
    ld d, h                                       ; $5158: $54
    sbc a                                         ; $5159: $9f
    ld b, [hl]                                    ; $515a: $46
    ld a, c                                       ; $515b: $79
    ld h, l                                       ; $515c: $65
    dec c                                         ; $515d: $0d
    jp nz, Jump_022_66a7                          ; $515e: $c2 $a7 $66

    ld [hl], d                                    ; $5161: $72
    rst $10                                       ; $5162: $d7
    and h                                         ; $5163: $a4
    xor c                                         ; $5164: $a9
    ret                                           ; $5165: $c9


    ld c, a                                       ; $5166: $4f
    rst $10                                       ; $5167: $d7
    ld c, c                                       ; $5168: $49
    cp $c5                                        ; $5169: $fe $c5
    ld [hl], $71                                  ; $516b: $36 $71
    db $fc                                        ; $516d: $fc
    push hl                                       ; $516e: $e5
    xor b                                         ; $516f: $a8
    jp nz, $d3b8                                  ; $5170: $c2 $b8 $d3

    jr jr_022_519c                                ; $5173: $18 $27

    scf                                           ; $5175: $37
    jr z, jr_022_5106                             ; $5176: $28 $8e

    halt                                          ; $5178: $76
    ld d, d                                       ; $5179: $52
    ld h, [hl]                                    ; $517a: $66
    sbc l                                         ; $517b: $9d
    cp e                                          ; $517c: $bb
    ld h, $4d                                     ; $517d: $26 $4d
    ld c, l                                       ; $517f: $4d
    ld a, [hl]                                    ; $5180: $7e
    and c                                         ; $5181: $a1
    sub $2f                                       ; $5182: $d6 $2f
    dec b                                         ; $5184: $05
    dec bc                                        ; $5185: $0b
    ld a, a                                       ; $5186: $7f
    sub d                                         ; $5187: $92
    ld sp, $6c2e                                  ; $5188: $31 $2e $6c
    or $cd                                        ; $518b: $f6 $cd
    ld b, e                                       ; $518d: $43
    rla                                           ; $518e: $17
    inc c                                         ; $518f: $0c
    dec a                                         ; $5190: $3d
    ccf                                           ; $5191: $3f
    add $b1                                       ; $5192: $c6 $b1
    and h                                         ; $5194: $a4
    rst $20                                       ; $5195: $e7
    xor [hl]                                      ; $5196: $ae
    ld d, l                                       ; $5197: $55
    ld b, l                                       ; $5198: $45
    ld a, [de]                                    ; $5199: $1a
    or h                                          ; $519a: $b4
    add e                                         ; $519b: $83

jr_022_519c:
    ld d, [hl]                                    ; $519c: $56
    jp nc, $afc0                                  ; $519d: $d2 $c0 $af

    sub e                                         ; $51a0: $93
    sub a                                         ; $51a1: $97
    inc e                                         ; $51a2: $1c
    ld h, [hl]                                    ; $51a3: $66
    and a                                         ; $51a4: $a7
    ld c, h                                       ; $51a5: $4c

jr_022_51a6:
    ld h, a                                       ; $51a6: $67
    ld e, a                                       ; $51a7: $5f
    ld a, [$5e75]                                 ; $51a8: $fa $75 $5e
    db $ec                                        ; $51ab: $ec
    sub h                                         ; $51ac: $94
    ld d, b                                       ; $51ad: $50
    xor c                                         ; $51ae: $a9
    ld a, d                                       ; $51af: $7a
    add h                                         ; $51b0: $84
    ld bc, $b23d                                  ; $51b1: $01 $3d $b2
    or e                                          ; $51b4: $b3
    ld a, [hl-]                                   ; $51b5: $3a
    and l                                         ; $51b6: $a5
    ld d, a                                       ; $51b7: $57
    and l                                         ; $51b8: $a5
    res 1, [hl]                                   ; $51b9: $cb $8e
    sub d                                         ; $51bb: $92
    ld e, a                                       ; $51bc: $5f
    sub e                                         ; $51bd: $93
    ld h, [hl]                                    ; $51be: $66
    ld h, b                                       ; $51bf: $60
    db $e4                                        ; $51c0: $e4
    rst $10                                       ; $51c1: $d7
    and h                                         ; $51c2: $a4
    ld e, c                                       ; $51c3: $59
    ld d, c                                       ; $51c4: $51
    db $eb                                        ; $51c5: $eb
    ld d, e                                       ; $51c6: $53
    call $df17                                    ; $51c7: $cd $17 $df
    ld a, d                                       ; $51ca: $7a
    ld e, l                                       ; $51cb: $5d
    db $fd                                        ; $51cc: $fd
    reti                                          ; $51cd: $d9


    db $ec                                        ; $51ce: $ec
    ld d, a                                       ; $51cf: $57
    cpl                                           ; $51d0: $2f
    cpl                                           ; $51d1: $2f
    or b                                          ; $51d2: $b0
    or $db                                        ; $51d3: $f6 $db
    add hl, hl                                    ; $51d5: $29
    rst $18                                       ; $51d6: $df
    ld [hl], l                                    ; $51d7: $75
    db $fd                                        ; $51d8: $fd
    push af                                       ; $51d9: $f5
    cp e                                          ; $51da: $bb
    sub d                                         ; $51db: $92
    ld b, $7e                                     ; $51dc: $06 $7e
    sbc l                                         ; $51de: $9d
    cp h                                          ; $51df: $bc
    db $e4                                        ; $51e0: $e4
    jr nc, @+$3d                                  ; $51e1: $30 $3b

    ld h, l                                       ; $51e3: $65
    cp d                                          ; $51e4: $ba
    di                                            ; $51e5: $f3
    or d                                          ; $51e6: $b2
    dec a                                         ; $51e7: $3d
    cp $63                                        ; $51e8: $fe $63
    inc e                                         ; $51ea: $1c
    ld c, e                                       ; $51eb: $4b
    ld a, [$182e]                                 ; $51ec: $fa $2e $18
    cp l                                          ; $51ef: $bd
    jp nc, $caac                                  ; $51f0: $d2 $ac $ca

    or b                                          ; $51f3: $b0
    inc de                                        ; $51f4: $13
    rst $18                                       ; $51f5: $df
    sbc a                                         ; $51f6: $9f
    call $efcb                                    ; $51f7: $cd $cb $ef
    add hl, sp                                    ; $51fa: $39
    cp h                                          ; $51fb: $bc
    ld d, h                                       ; $51fc: $54
    rla                                           ; $51fd: $17
    ld a, [hl]                                    ; $51fe: $7e
    sbc l                                         ; $51ff: $9d
    rla                                           ; $5200: $17
    ei                                            ; $5201: $fb
    dec hl                                        ; $5202: $2b
    adc a                                         ; $5203: $8f
    dec c                                         ; $5204: $0d
    ld [hl], a                                    ; $5205: $77
    xor l                                         ; $5206: $ad
    ld a, [hl+]                                   ; $5207: $2a
    jp nc, Jump_022_5974                          ; $5208: $d2 $74 $59

    ld a, a                                       ; $520b: $7f

jr_022_520c:
    rlca                                          ; $520c: $07
    xor l                                         ; $520d: $ad
    and h                                         ; $520e: $a4
    add c                                         ; $520f: $81
    ld e, a                                       ; $5210: $5f
    daa                                           ; $5211: $27
    cpl                                           ; $5212: $2f
    add hl, sp                                    ; $5213: $39
    call z, $d94e                                 ; $5214: $cc $4e $d9
    ld [hl], e                                    ; $5217: $73
    xor b                                         ; $5218: $a8
    ld a, $c6                                     ; $5219: $3e $c6
    and a                                         ; $521b: $a7
    ld [$60bb], a                                 ; $521c: $ea $bb $60
    xor l                                         ; $521f: $ad
    ld l, d                                       ; $5220: $6a
    ld a, l                                       ; $5221: $7d
    xor d                                         ; $5222: $aa
    ld sp, hl                                     ; $5223: $f9
    adc $37                                       ; $5224: $ce $37
    rst $10                                       ; $5226: $d7
    ld a, a                                       ; $5227: $7f
    ld b, c                                       ; $5228: $41
    ld a, [$fcbc]                                 ; $5229: $fa $bc $fc
    db $ec                                        ; $522c: $ec
    ld d, a                                       ; $522d: $57
    cpl                                           ; $522e: $2f
    cpl                                           ; $522f: $2f
    dec [hl]                                      ; $5230: $35
    sbc b                                         ; $5231: $98
    cp d                                          ; $5232: $ba
    ccf                                           ; $5233: $3f
    ld sp, hl                                     ; $5234: $f9
    ld c, l                                       ; $5235: $4d
    ld [c], a                                     ; $5236: $e2
    adc $52                                       ; $5237: $ce $52
    dec bc                                        ; $5239: $0b
    and a                                         ; $523a: $a7
    or [hl]                                       ; $523b: $b6
    add sp, $65                                   ; $523c: $e8 $65
    ld l, b                                       ; $523e: $68
    daa                                           ; $523f: $27
    cp l                                          ; $5240: $bd
    rst $10                                       ; $5241: $d7
    ld h, b                                       ; $5242: $60
    ld l, $cd                                     ; $5243: $2e $cd
    inc [hl]                                      ; $5245: $34
    ret nc                                        ; $5246: $d0

    ld c, e                                       ; $5247: $4b
    ld [$a703], sp                                ; $5248: $08 $03 $a7
    inc h                                         ; $524b: $24
    rst $08                                       ; $524c: $cf
    ld e, l                                       ; $524d: $5d
    xor e                                         ; $524e: $ab
    adc d                                         ; $524f: $8a
    inc [hl]                                      ; $5250: $34
    call c, $d331                                 ; $5251: $dc $31 $d3
    adc c                                         ; $5254: $89
    or a                                          ; $5255: $b7
    ld d, d                                       ; $5256: $52
    rst $38                                       ; $5257: $ff
    add l                                         ; $5258: $85
    call $2578                                    ; $5259: $cd $78 $25
    or [hl]                                       ; $525c: $b6
    jr nc, jr_022_520c                            ; $525d: $30 $ad

    rra                                           ; $525f: $1f
    ld a, $39                                     ; $5260: $3e $39
    db $ec                                        ; $5262: $ec
    add hl, sp                                    ; $5263: $39
    ld l, b                                       ; $5264: $68
    push hl                                       ; $5265: $e5
    or c                                          ; $5266: $b1
    ld b, c                                       ; $5267: $41
    db $eb                                        ; $5268: $eb
    ld d, c                                       ; $5269: $51
    ld a, [hl]                                    ; $526a: $7e
    ld a, [c]                                     ; $526b: $f2
    ldh [rWX], a                                  ; $526c: $e0 $4b
    ld a, e                                       ; $526e: $7b
    ld c, l                                       ; $526f: $4d
    sbc d                                         ; $5270: $9a
    pop af                                        ; $5271: $f1
    ld [$5955], a                                 ; $5272: $ea $55 $59
    and l                                         ; $5275: $a5
    ld a, [c]                                     ; $5276: $f2
    or [hl]                                       ; $5277: $b6
    adc c                                         ; $5278: $89
    or c                                          ; $5279: $b1
    ld b, c                                       ; $527a: $41
    jr @-$37                                      ; $527b: $18 $c7

    ld h, a                                       ; $527d: $67
    or d                                          ; $527e: $b2
    pop af                                        ; $527f: $f1
    add hl, hl                                    ; $5280: $29
    ld [hl], l                                    ; $5281: $75
    xor $5a                                       ; $5282: $ee $5a
    ld d, l                                       ; $5284: $55
    and h                                         ; $5285: $a4
    jp hl                                         ; $5286: $e9


    or d                                          ; $5287: $b2
    ld e, [hl]                                    ; $5288: $5e
    ld l, c                                       ; $5289: $69
    ld l, d                                       ; $528a: $6a
    sub $1f                                       ; $528b: $d6 $1f
    ld c, e                                       ; $528d: $4b
    ld a, [$2f1d]                                 ; $528e: $fa $1d $2f
    adc l                                         ; $5291: $8d
    ld l, l                                       ; $5292: $6d
    ld e, a                                       ; $5293: $5f
    ld h, d                                       ; $5294: $62
    add hl, hl                                    ; $5295: $29
    db $eb                                        ; $5296: $eb
    ld c, b                                       ; $5297: $48
    ld a, [de]                                    ; $5298: $1a
    sub $05                                       ; $5299: $d6 $05
    inc bc                                        ; $529b: $03
    cp l                                          ; $529c: $bd
    ld e, $b8                                     ; $529d: $1e $b8
    ld l, e                                       ; $529f: $6b
    ld d, l                                       ; $52a0: $55
    sub c                                         ; $52a1: $91
    add [hl]                                      ; $52a2: $86
    cp e                                          ; $52a3: $bb
    or a                                          ; $52a4: $b7
    ld a, $cd                                     ; $52a5: $3e $cd
    or d                                          ; $52a7: $b2
    ld a, [hl+]                                   ; $52a8: $2a
    ld c, l                                       ; $52a9: $4d
    ld h, h                                       ; $52aa: $64
    ld d, h                                       ; $52ab: $54

Jump_022_52ac:
    di                                            ; $52ac: $f3
    dec d                                         ; $52ad: $15
    or l                                          ; $52ae: $b5

Jump_022_52af:
    cp $58                                        ; $52af: $fe $58
    jp nc, Jump_022_614f                          ; $52b1: $d2 $4f $61

    db $fc                                        ; $52b4: $fc
    rst $00                                       ; $52b5: $c7
    adc b                                         ; $52b6: $88
    jr nc, jr_022_52e6                            ; $52b7: $30 $2d

    ld l, [hl]                                    ; $52b9: $6e
    ret c                                         ; $52ba: $d8

    sub e                                         ; $52bb: $93
    inc bc                                        ; $52bc: $03
    ld [hl], a                                    ; $52bd: $77
    sbc l                                         ; $52be: $9d
    ld hl, sp+$0a                                 ; $52bf: $f8 $0a

jr_022_52c1:
    cp a                                          ; $52c1: $bf
    adc [hl]                                      ; $52c2: $8e
    ld l, b                                       ; $52c3: $68
    push hl                                       ; $52c4: $e5
    or a                                          ; $52c5: $b7
    ld a, [$f979]                                 ; $52c6: $fa $79 $f9
    pop af                                        ; $52c9: $f1
    ld c, d                                       ; $52ca: $4a
    ld l, h                                       ; $52cb: $6c
    ld h, c                                       ; $52cc: $61
    ld e, d                                       ; $52cd: $5a
    ccf                                           ; $52ce: $3f
    ld a, h                                       ; $52cf: $7c
    ld [hl], d                                    ; $52d0: $72
    ld e, b                                       ; $52d1: $58
    xor e                                         ; $52d2: $ab
    adc d                                         ; $52d3: $8a
    inc [hl]                                      ; $52d4: $34
    ld d, e                                       ; $52d5: $53
    ld h, d                                       ; $52d6: $62
    or e                                          ; $52d7: $b3
    xor h                                         ; $52d8: $ac
    xor b                                         ; $52d9: $a8
    push af                                       ; $52da: $f5
    rlca                                          ; $52db: $07
    dec h                                         ; $52dc: $25
    ld a, c                                       ; $52dd: $79
    ld e, d                                       ; $52de: $5a
    sub e                                         ; $52df: $93
    ld h, [hl]                                    ; $52e0: $66
    ld c, d                                       ; $52e1: $4a
    ld l, h                                       ; $52e2: $6c
    db $ed                                        ; $52e3: $ed
    ld e, a                                       ; $52e4: $5f

jr_022_52e5:
    ld b, a                                       ; $52e5: $47

jr_022_52e6:
    cp [hl]                                       ; $52e6: $be
    and e                                         ; $52e7: $a3
    ld a, [c]                                     ; $52e8: $f2
    ld l, h                                       ; $52e9: $6c
    sbc [hl]                                      ; $52ea: $9e
    adc e                                         ; $52eb: $8b
    ld l, a                                       ; $52ec: $6f
    cp l                                          ; $52ed: $bd
    xor [hl]                                      ; $52ee: $ae
    cp $d3                                        ; $52ef: $fe $d3
    reti                                          ; $52f1: $d9


    xor a                                         ; $52f2: $af
    ld e, [hl]                                    ; $52f3: $5e
    ld e, [hl]                                    ; $52f4: $5e
    sub $6e                                       ; $52f5: $d6 $6e
    sub [hl]                                      ; $52f7: $96
    ld b, [hl]                                    ; $52f8: $46
    ld b, [hl]                                    ; $52f9: $46
    rst $08                                       ; $52fa: $cf
    pop bc                                        ; $52fb: $c1
    rlca                                          ; $52fc: $07
    rrca                                          ; $52fd: $0f
    ld [hl], b                                    ; $52fe: $70
    sub e                                         ; $52ff: $93
    ret nc                                        ; $5300: $d0

    cp d                                          ; $5301: $ba
    ld b, l                                       ; $5302: $45
    dec b                                         ; $5303: $05
    jr jr_022_52c1                                ; $5304: $18 $bb

    db $10                                        ; $5306: $10
    ld e, [hl]                                    ; $5307: $5e
    add b                                         ; $5308: $80
    ld h, a                                       ; $5309: $67
    ld [$ad03], sp                                ; $530a: $08 $03 $ad
    ld b, [hl]                                    ; $530d: $46
    and h                                         ; $530e: $a4

Jump_022_530f:
    sbc c                                         ; $530f: $99
    add $a4                                       ; $5310: $c6 $a4
    add b                                         ; $5312: $80
    cp e                                          ; $5313: $bb
    ld d, [hl]                                    ; $5314: $56
    dec d                                         ; $5315: $15
    ld l, c                                       ; $5316: $69
    ret nc                                        ; $5317: $d0

    inc l                                         ; $5318: $2c
    or $9a                                        ; $5319: $f6 $9a
    inc [hl]                                      ; $531b: $34
    dec [hl]                                      ; $531c: $35
    ld sp, hl                                     ; $531d: $f9
    ld b, l                                       ; $531e: $45
    push af                                       ; $531f: $f5
    rst $20                                       ; $5320: $e7
    xor [hl]                                      ; $5321: $ae
    ld c, c                                       ; $5322: $49
    or e                                          ; $5323: $b3
    ld d, b                                       ; $5324: $50
    sbc e                                         ; $5325: $9b
    push bc                                       ; $5326: $c5
    add h                                         ; $5327: $84
    sbc a                                         ; $5328: $9f
    sub a                                         ; $5329: $97
    add h                                         ; $532a: $84
    ld e, a                                       ; $532b: $5f
    ld c, c                                       ; $532c: $49
    inc bc                                        ; $532d: $03
    cp a                                          ; $532e: $bf
    ld c, [hl]                                    ; $532f: $4e
    ld e, [hl]                                    ; $5330: $5e
    ld [hl], d                                    ; $5331: $72
    ld e, b                                       ; $5332: $58
    sub e                                         ; $5333: $93
    ld h, [hl]                                    ; $5334: $66
    rst $20                                       ; $5335: $e7
    add hl, de                                    ; $5336: $19
    ldh a, [$bd]                                  ; $5337: $f0 $bd
    ld a, [bc]                                    ; $5339: $0a
    dec a                                         ; $533a: $3d
    ld b, e                                       ; $533b: $43
    jr jr_022_52e5                                ; $533c: $18 $a7

    jp nc, $d73c                                  ; $533e: $d2 $3c $d7

    and h                                         ; $5341: $a4
    sub c                                         ; $5342: $91
    pop de                                        ; $5343: $d1
    ld [hl], e                                    ; $5344: $73
    ldh a, [rHDMA5]                               ; $5345: $f0 $55
    ld d, c                                       ; $5347: $51
    ld bc, $6bb8                                  ; $5348: $01 $b8 $6b
    ld d, l                                       ; $534b: $55
    sub c                                         ; $534c: $91
    ld b, $61                                     ; $534d: $06 $61
    and a                                         ; $534f: $a7
    db $e4                                        ; $5350: $e4
    db $e4                                        ; $5351: $e4
    dec d                                         ; $5352: $15
    sub d                                         ; $5353: $92
    and $39                                       ; $5354: $e6 $39
    ld [hl], b                                    ; $5356: $70
    ld l, l                                       ; $5357: $6d
    sub [hl]                                      ; $5358: $96
    ld d, h                                       ; $5359: $54
    db $fd                                        ; $535a: $fd
    xor d                                         ; $535b: $aa
    xor b                                         ; $535c: $a8
    nop                                           ; $535d: $00
    cp e                                          ; $535e: $bb
    or b                                          ; $535f: $b0
    or h                                          ; $5360: $b4
    cp [hl]                                       ; $5361: $be
    and b                                         ; $5362: $a0
    push af                                       ; $5363: $f5
    jr z, @+$31                                   ; $5364: $28 $2f

    ld e, a                                       ; $5366: $5f
    add e                                         ; $5367: $83
    add l                                         ; $5368: $85
    add hl, hl                                    ; $5369: $29
    ccf                                           ; $536a: $3f
    rst $08                                       ; $536b: $cf
    push bc                                       ; $536c: $c5
    ld d, a                                       ; $536d: $57
    and c                                         ; $536e: $a1
    ld a, l                                       ; $536f: $7d
    add h                                         ; $5370: $84
    rst $20                                       ; $5371: $e7
    set 1, e                                      ; $5372: $cb $cb
    inc hl                                        ; $5374: $23
    inc c                                         ; $5375: $0c
    dec a                                         ; $5376: $3d
    ld c, e                                       ; $5377: $4b
    inc sp                                        ; $5378: $33
    sub [hl]                                      ; $5379: $96
    rrca                                          ; $537a: $0f
    db $eb                                        ; $537b: $eb
    ld l, $69                                     ; $537c: $2e $69
    ccf                                           ; $537e: $3f
    ld b, b                                       ; $537f: $40
    jp z, $334e                                   ; $5380: $ca $4e $33

    ld d, a                                       ; $5383: $57
    db $e4                                        ; $5384: $e4
    ld h, e                                       ; $5385: $63
    sbc h                                         ; $5386: $9c
    ld b, [hl]                                    ; $5387: $46
    ld e, [hl]                                    ; $5388: $5e
    dec de                                        ; $5389: $1b
    ld e, b                                       ; $538a: $58
    call z, Call_000_0fac                         ; $538b: $cc $ac $0f
    ld [hl], d                                    ; $538e: $72
    db $f4                                        ; $538f: $f4
    ld h, d                                       ; $5390: $62
    ld c, l                                       ; $5391: $4d
    inc bc                                        ; $5392: $03
    ld e, l                                       ; $5393: $5d
    ld sp, $99a7                                  ; $5394: $31 $a7 $99
    dec hl                                        ; $5397: $2b
    ld a, [c]                                     ; $5398: $f2
    ld sp, $234e                                  ; $5399: $31 $4e $23
    xor a                                         ; $539c: $af
    dec c                                         ; $539d: $0d
    xor h                                         ; $539e: $ac
    ld c, [hl]                                    ; $539f: $4e
    ret                                           ; $53a0: $c9


    jp $a2f8                                      ; $53a1: $c3 $f8 $a2


    cp [hl]                                       ; $53a4: $be
    ld h, $4d                                     ; $53a5: $26 $4d
    ld c, l                                       ; $53a7: $4d
    ld a, [hl]                                    ; $53a8: $7e
    and [hl]                                      ; $53a9: $a6
    inc sp                                        ; $53aa: $33
    ld c, a                                       ; $53ab: $4f
    inc [hl]                                      ; $53ac: $34
    adc e                                         ; $53ad: $8b
    rst $10                                       ; $53ae: $d7
    ld h, b                                       ; $53af: $60
    pop af                                        ; $53b0: $f1
    sub $7f                                       ; $53b1: $d6 $7f
    push hl                                       ; $53b3: $e5
    ld d, a                                       ; $53b4: $57
    inc d                                         ; $53b5: $14
    or $cd                                        ; $53b6: $f6 $cd
    jp $cd2e                                      ; $53b8: $c3 $2e $cd


    res 5, a                                      ; $53bb: $cb $af
    xor l                                         ; $53bd: $ad
    ld d, l                                       ; $53be: $55
    ld a, l                                       ; $53bf: $7d
    ld l, c                                       ; $53c0: $69
    xor a                                         ; $53c1: $af
    ld e, h                                       ; $53c2: $5c
    ld e, b                                       ; $53c3: $58
    ld a, c                                       ; $53c4: $79
    ld h, l                                       ; $53c5: $65
    ld [$9603], sp                                ; $53c6: $08 $03 $96
    pop af                                        ; $53c9: $f1
    ld c, c                                       ; $53ca: $49
    db $ec                                        ; $53cb: $ec
    ld h, l                                       ; $53cc: $65
    dec h                                         ; $53cd: $25
    ld sp, hl                                     ; $53ce: $f9
    ld e, c                                       ; $53cf: $59
    ld l, d                                       ; $53d0: $6a
    ld l, h                                       ; $53d1: $6c
    ld sp, $beb3                                  ; $53d2: $31 $b3 $be
    ld c, e                                       ; $53d5: $4b
    db $d3                                        ; $53d6: $d3
    cp c                                          ; $53d7: $b9
    sub c                                         ; $53d8: $91
    or [hl]                                       ; $53d9: $b6
    ld d, d                                       ; $53da: $52
    ld d, a                                       ; $53db: $57
    inc c                                         ; $53dc: $0c
    dec a                                         ; $53dd: $3d
    jp z, Jump_022_5585                           ; $53de: $ca $85 $55

    ld d, c                                       ; $53e1: $51
    ld bc, $3324                                  ; $53e2: $01 $24 $33
    call c, $e985                                 ; $53e5: $dc $85 $e9
    ld [c], a                                     ; $53e8: $e2
    ld [hl], l                                    ; $53e9: $75
    adc a                                         ; $53ea: $8f
    ccf                                           ; $53eb: $3f
    add sp, $64                                   ; $53ec: $e8 $64
    sub $1b                                       ; $53ee: $d6 $1b
    add h                                         ; $53f0: $84
    ld bc, $2aad                                  ; $53f1: $01 $ad $2a
    jp nc, Jump_022_7bac                          ; $53f4: $d2 $ac $7b

    cp d                                          ; $53f7: $ba
    cp a                                          ; $53f8: $bf
    ld [hl], h                                    ; $53f9: $74
    ld e, c                                       ; $53fa: $59
    adc a                                         ; $53fb: $8f
    and d                                         ; $53fc: $a2
    ld d, h                                       ; $53fd: $54
    ld e, a                                       ; $53fe: $5f
    sub b                                         ; $53ff: $90
    ret                                           ; $5400: $c9


    add sp, $01                                   ; $5401: $e8 $01
    sub $a4                                       ; $5403: $d6 $a4
    xor c                                         ; $5405: $a9
    ret                                           ; $5406: $c9


    xor a                                         ; $5407: $af
    cp h                                          ; $5408: $bc
    ld a, h                                       ; $5409: $7c
    rla                                           ; $540a: $17
    inc c                                         ; $540b: $0c
    dec a                                         ; $540c: $3d
    jp z, $d7cb                                   ; $540d: $ca $cb $d7

    ld h, b                                       ; $5410: $60
    db $ed                                        ; $5411: $ed
    ld a, a                                       ; $5412: $7f
    sbc d                                         ; $5413: $9a
    jp nc, $aab4                                  ; $5414: $d2 $b4 $aa

    ld l, $7b                                     ; $5417: $2e $7b
    ld a, [c]                                     ; $5419: $f2
    inc hl                                        ; $541a: $23
    and [hl]                                      ; $541b: $a6
    xor e                                         ; $541c: $ab
    sub h                                         ; $541d: $94
    ld e, b                                       ; $541e: $58
    db $fc                                        ; $541f: $fc
    dec d                                         ; $5420: $15
    add l                                         ; $5421: $85
    or l                                          ; $5422: $b5
    rst $38                                       ; $5423: $ff
    ld l, c                                       ; $5424: $69
    ld d, l                                       ; $5425: $55
    ld d, c                                       ; $5426: $51
    ld a, [bc]                                    ; $5427: $0a
    sbc [hl]                                      ; $5428: $9e
    db $ed                                        ; $5429: $ed
    sub d                                         ; $542a: $92
    rst $20                                       ; $542b: $e7
    ld [hl], h                                    ; $542c: $74
    and d                                         ; $542d: $a2
    db $ed                                        ; $542e: $ed
    or $75                                        ; $542f: $f6 $75
    add h                                         ; $5431: $84
    ld bc, $8a3d                                  ; $5432: $01 $3d $8a
    ld a, [$17aa]                                 ; $5435: $fa $aa $17
    rst $10                                       ; $5438: $d7
    ld c, e                                       ; $5439: $4b
    or c                                          ; $543a: $b1
    add hl, de                                    ; $543b: $19
    and h                                         ; $543c: $a4
    ld hl, $8b06                                  ; $543d: $21 $06 $8b
    or a                                          ; $5440: $b7
    cp $53                                        ; $5441: $fe $53
    sbc d                                         ; $5443: $9a
    ld d, [hl]                                    ; $5444: $56
    push de                                       ; $5445: $d5
    ld h, l                                       ; $5446: $65
    ld c, a                                       ; $5447: $4f
    adc [hl]                                      ; $5448: $8e
    jr nc, jr_022_5461                            ; $5449: $30 $16

    rra                                           ; $544b: $1f
    xor a                                         ; $544c: $af
    jr nc, jr_022_54ac                            ; $544d: $30 $5d

    cp h                                          ; $544f: $bc
    cp [hl]                                       ; $5450: $be
    ld c, d                                       ; $5451: $4a
    adc c                                         ; $5452: $89
    push bc                                       ; $5453: $c5
    ld b, a                                       ; $5454: $47
    ld [$b129], sp                                ; $5455: $08 $29 $b1
    ld e, l                                       ; $5458: $5d
    rst $18                                       ; $5459: $df
    ld b, e                                       ; $545a: $43
    and l                                         ; $545b: $a5
    sbc l                                         ; $545c: $9d
    ld h, a                                       ; $545d: $67
    ld e, l                                       ; $545e: $5d
    or [hl]                                       ; $545f: $b6
    ld e, c                                       ; $5460: $59

jr_022_5461:
    ld l, d                                       ; $5461: $6a
    pop hl                                        ; $5462: $e1
    call nc, $bd16                                ; $5463: $d4 $16 $bd
    ld l, h                                       ; $5466: $6c
    rst $10                                       ; $5467: $d7
    rla                                           ; $5468: $17
    sbc $a0                                       ; $5469: $de $a0
    ld hl, sp-$20                                 ; $546b: $f8 $e0
    ld a, l                                       ; $546d: $7d
    or $95                                        ; $546e: $f6 $95
    rlca                                          ; $5470: $07
    inc [hl]                                      ; $5471: $34
    set 5, b                                      ; $5472: $cb $e8
    sbc a                                         ; $5474: $9f
    dec c                                         ; $5475: $0d
    ld [hl-], a                                   ; $5476: $32
    db $fc                                        ; $5477: $fc
    and h                                         ; $5478: $a4
    sbc a                                         ; $5479: $9f
    rst $20                                       ; $547a: $e7
    ld a, [hl+]                                   ; $547b: $2a
    push af                                       ; $547c: $f5
    xor d                                         ; $547d: $aa
    db $ec                                        ; $547e: $ec
    ld a, [hl-]                                   ; $547f: $3a
    jp c, $c451                                   ; $5480: $da $51 $c4

    ld h, [hl]                                    ; $5483: $66
    xor c                                         ; $5484: $a9
    add l                                         ; $5485: $85
    ld d, e                                       ; $5486: $53
    add b                                         ; $5487: $80
    dec de                                        ; $5488: $1b
    ret nc                                        ; $5489: $d0

    and l                                         ; $548a: $a5
    ld h, b                                       ; $548b: $60
    ld c, l                                       ; $548c: $4d
    ld a, [de]                                    ; $548d: $1a
    add h                                         ; $548e: $84
    ld bc, $c9ad                                  ; $548f: $01 $ad $c9
    adc a                                         ; $5492: $8f
    cp a                                          ; $5493: $bf
    ld sp, $b2ce                                  ; $5494: $31 $ce $b2
    ld a, [hl-]                                   ; $5497: $3a
    dec h                                         ; $5498: $25
    ccf                                           ; $5499: $3f
    cpl                                           ; $549a: $2f
    ccf                                           ; $549b: $3f
    pop de                                        ; $549c: $d1
    halt                                          ; $549d: $76
    ei                                            ; $549e: $fb
    ld a, [$f2f8]                                 ; $549f: $fa $f8 $f2
    inc [hl]                                      ; $54a2: $34
    set 4, b                                      ; $54a3: $cb $e0
    ld a, a                                       ; $54a5: $7f
    rst $10                                       ; $54a6: $d7
    cp e                                          ; $54a7: $bb
    ld h, d                                       ; $54a8: $62

Jump_022_54a9:
    ld d, $af                                     ; $54a9: $16 $af

Jump_022_54ab:
    pop bc                                        ; $54ab: $c1

jr_022_54ac:
    ld a, [hl-]                                   ; $54ac: $3a
    ld b, [hl]                                    ; $54ad: $46
    ld a, [hl-]                                   ; $54ae: $3a
    pop af                                        ; $54af: $f1
    pop de                                        ; $54b0: $d1
    ld a, d                                       ; $54b1: $7a
    inc d                                         ; $54b2: $14
    push af                                       ; $54b3: $f5
    ld a, [de]                                    ; $54b4: $1a
    call z, $0190                                 ; $54b5: $cc $90 $01
    and e                                         ; $54b8: $a3
    sub c                                         ; $54b9: $91
    cp e                                          ; $54ba: $bb
    or a                                          ; $54bb: $b7
    ld a, $4d                                     ; $54bc: $3e $4d
    ld a, l                                       ; $54be: $7d
    xor l                                         ; $54bf: $ad
    add hl, de                                    ; $54c0: $19
    ldh a, [$2a]                                  ; $54c1: $f0 $2a
    ld c, $68                                     ; $54c3: $0e $68
    ld d, $7b                                     ; $54c5: $16 $7b

jr_022_54c7:
    ld c, l                                       ; $54c7: $4d
    sbc d                                         ; $54c8: $9a
    ld d, l                                       ; $54c9: $55
    ld [$d955], a                                 ; $54ca: $ea $55 $d9
    push af                                       ; $54cd: $f5
    add hl, hl                                    ; $54ce: $29
    or c                                          ; $54cf: $b1
    or l                                          ; $54d0: $b5
    push hl                                       ; $54d1: $e5
    ld d, d                                       ; $54d2: $52
    or b                                          ; $54d3: $b0
    db $eb                                        ; $54d4: $eb
    ld l, e                                       ; $54d5: $6b
    ld l, e                                       ; $54d6: $6b
    ld d, l                                       ; $54d7: $55
    rst $20                                       ; $54d8: $e7
    adc $52                                       ; $54d9: $ce $52
    adc e                                         ; $54db: $8b
    ld [hl], c                                    ; $54dc: $71
    cp $5a                                        ; $54dd: $fe $5a
    sub l                                         ; $54df: $95
    dec [hl]                                      ; $54e0: $35
    ld l, c                                       ; $54e1: $69
    and [hl]                                      ; $54e2: $a6
    and e                                         ; $54e3: $a3
    rst $20                                       ; $54e4: $e7
    rlca                                          ; $54e5: $07
    sbc l                                         ; $54e6: $9d
    adc a                                         ; $54e7: $8f
    ld de, $9661                                  ; $54e8: $11 $61 $96
    ld e, d                                       ; $54eb: $5a
    adc h                                         ; $54ec: $8c
    ld l, e                                       ; $54ed: $6b
    cp a                                          ; $54ee: $bf
    rst $28                                       ; $54ef: $ef
    ld a, [$1bf8]                                 ; $54f0: $fa $f8 $1b
    db $e3                                        ; $54f3: $e3
    ld e, h                                       ; $54f4: $5c
    sbc d                                         ; $54f5: $9a
    ld a, c                                       ; $54f6: $79
    ld l, $c8                                     ; $54f7: $2e $c8
    and l                                         ; $54f9: $a5
    ld [hl], c                                    ; $54fa: $71
    sub [hl]                                      ; $54fb: $96
    add hl, hl                                    ; $54fc: $29
    add b                                         ; $54fd: $80
    jr nc, jr_022_54c7                            ; $54fe: $30 $c7

    ld h, a                                       ; $5500: $67
    or d                                          ; $5501: $b2
    ld b, l                                       ; $5502: $45
    ld d, e                                       ; $5503: $53
    push de                                       ; $5504: $d5
    cp c                                          ; $5505: $b9
    ld l, e                                       ; $5506: $6b
    ld d, l                                       ; $5507: $55
    sub c                                         ; $5508: $91
    ld b, $ad                                     ; $5509: $06 $ad
    sbc e                                         ; $550b: $9b
    jp z, $26db                                   ; $550c: $ca $db $26

    xor [hl]                                      ; $550f: $ae
    ld c, c                                       ; $5510: $49
    inc sp                                        ; $5511: $33
    sub [hl]                                      ; $5512: $96
    ld d, h                                       ; $5513: $54
    di                                            ; $5514: $f3
    dec b                                         ; $5515: $05
    rst $28                                       ; $5516: $ef
    ld l, e                                       ; $5517: $6b
    dec de                                        ; $5518: $1b
    and c                                         ; $5519: $a1
    ld h, a                                       ; $551a: $67
    ld [$3d03], sp                                ; $551b: $08 $03 $3d
    jp z, $b44f                                   ; $551e: $ca $4f $b4

    db $dd                                        ; $5521: $dd
    cp [hl]                                       ; $5522: $be
    cp [hl]                                       ; $5523: $be
    dec bc                                        ; $5524: $0b
    ld d, h                                       ; $5525: $54
    di                                            ; $5526: $f3
    ld e, l                                       ; $5527: $5d
    ld e, d                                       ; $5528: $5a
    ld a, c                                       ; $5529: $79
    ld a, c                                       ; $552a: $79
    xor $5a                                       ; $552b: $ee $5a
    ld d, l                                       ; $552d: $55
    and h                                         ; $552e: $a4
    jp hl                                         ; $552f: $e9


    or d                                          ; $5530: $b2
    xor $f1                                       ; $5531: $ee $f1
    dec d                                         ; $5533: $15
    ld a, [hl]                                    ; $5534: $7e
    push bc                                       ; $5535: $c5
    adc b                                         ; $5536: $88
    inc [hl]                                      ; $5537: $34
    ld d, e                                       ; $5538: $53
    ld h, d                                       ; $5539: $62
    or e                                          ; $553a: $b3
    cpl                                           ; $553b: $2f
    or c                                          ; $553c: $b1
    ld e, l                                       ; $553d: $5d
    rst $28                                       ; $553e: $ef
    add d                                         ; $553f: $82
    ld bc, $6aad                                  ; $5540: $01 $ad $6a
    db $fd                                        ; $5543: $fd
    dec [hl]                                      ; $5544: $35
    ld l, c                                       ; $5545: $69
    ld b, $ff                                     ; $5546: $06 $ff
    inc [hl]                                      ; $5548: $34
    ld e, l                                       ; $5549: $5d
    rst $00                                       ; $554a: $c7
    ld c, b                                       ; $554b: $48

jr_022_554c:
    daa                                           ; $554c: $27
    cp $44                                        ; $554d: $fe $44
    db $db                                        ; $554f: $db
    db $ed                                        ; $5550: $ed
    db $eb                                        ; $5551: $eb
    ld e, l                                       ; $5552: $5d
    ld sp, $1ebd                                  ; $5553: $31 $bd $1e
    cp b                                          ; $5556: $b8
    cp e                                          ; $5557: $bb
    ld a, $51                                     ; $5558: $3e $51
    sbc d                                         ; $555a: $9a
    ld a, [c]                                     ; $555b: $f2
    jp c, $93cc                                   ; $555c: $da $cc $93

    ld d, a                                       ; $555f: $57

Call_022_5560:
    ld h, c                                       ; $5560: $61
    di                                            ; $5561: $f3
    ld a, [c]                                     ; $5562: $f2
    inc bc                                        ; $5563: $03
    rst $10                                       ; $5564: $d7
    dec hl                                        ; $5565: $2b
    add b                                         ; $5566: $80
    jr nc, @-$68                                  ; $5567: $30 $96

    add c                                         ; $5569: $81
    ld a, [c]                                     ; $556a: $f2
    db $d3                                        ; $556b: $d3
    adc c                                         ; $556c: $89
    or [hl]                                       ; $556d: $b6
    db $db                                        ; $556e: $db
    rst $10                                       ; $556f: $d7
    sub a                                         ; $5570: $97
    inc [hl]                                      ; $5571: $34
    cpl                                           ; $5572: $2f

Call_022_5573:
    ccf                                           ; $5573: $3f
    ld [hl], b                                    ; $5574: $70
    cp l                                          ; $5575: $bd
    ld [bc], a                                    ; $5576: $02
    adc e                                         ; $5577: $8b
    xor a                                         ; $5578: $af
    db $ec                                        ; $5579: $ec
    ld d, d                                       ; $557a: $52
    jr nc, jr_022_554c                            ; $557b: $30 $cf

    ld a, c                                       ; $557d: $79
    ld sp, hl                                     ; $557e: $f9
    dec b                                         ; $557f: $05
    sub d                                         ; $5580: $92
    add [hl]                                      ; $5581: $86
    ret c                                         ; $5582: $d8

    db $ec                                        ; $5583: $ec
    sbc b                                         ; $5584: $98

Jump_022_5585:
    add hl, hl                                    ; $5585: $29
    ld l, b                                       ; $5586: $68
    sub [hl]                                      ; $5587: $96
    or c                                          ; $5588: $b1
    and h                                         ; $5589: $a4
    sbc d                                         ; $558a: $9a
    ld c, a                                       ; $558b: $4f
    ld a, $fc                                     ; $558c: $3e $fc
    or b                                          ; $558e: $b0
    db $fd                                        ; $558f: $fd
    ld [hl-], a                                   ; $5590: $32
    cp [hl]                                       ; $5591: $be
    xor b                                         ; $5592: $a8
    xor a                                         ; $5593: $af
    jp z, $b298                                   ; $5594: $ca $98 $b2

    db $eb                                        ; $5597: $eb
    db $e3                                        ; $5598: $e3
    dec d                                         ; $5599: $15

jr_022_559a:
    db $10                                        ; $559a: $10
    ld b, $bd                                     ; $559b: $06 $bd
    jp nc, Jump_000_258c                          ; $559d: $d2 $8c $25

    push de                                       ; $55a0: $d5
    ld a, h                                       ; $55a1: $7c
    ldh a, [$1f]                                  ; $55a2: $f0 $1f
    adc $73                                       ; $55a4: $ce $73
    db $ed                                        ; $55a6: $ed
    rra                                           ; $55a7: $1f
    ld [hl], h                                    ; $55a8: $74
    sbc [hl]                                      ; $55a9: $9e
    ret c                                         ; $55aa: $d8

    and l                                         ; $55ab: $a5
    ld h, b                                       ; $55ac: $60
    and c                                         ; $55ad: $a1
    xor c                                         ; $55ae: $a9
    jp z, $86fc                                   ; $55af: $ca $fc $86

    cp a                                          ; $55b2: $bf
    ld c, e                                       ; $55b3: $4b
    xor e                                         ; $55b4: $ab
    and d                                         ; $55b5: $a2
    ld [bc], a                                    ; $55b6: $02
    ld [hl], b                                    ; $55b7: $70
    rst $10                                       ; $55b8: $d7
    xor d                                         ; $55b9: $aa
    ld [hl+], a                                   ; $55ba: $22
    dec c                                         ; $55bb: $0d
    jp nz, $5fdd                                  ; $55bc: $c2 $dd $5f

    xor d                                         ; $55bf: $aa
    add [hl]                                      ; $55c0: $86
    cp e                                          ; $55c1: $bb
    and d                                         ; $55c2: $a2
    sub $5f                                       ; $55c3: $d6 $5f
    sub e                                         ; $55c5: $93
    ld h, [hl]                                    ; $55c6: $66
    ldh a, [rVBK]                                 ; $55c7: $f0 $4f
    db $d3                                        ; $55c9: $d3
    ld [hl], l                                    ; $55ca: $75
    adc h                                         ; $55cb: $8c
    ld [hl], h                                    ; $55cc: $74
    ld [c], a                                     ; $55cd: $e2
    ld c, a                                       ; $55ce: $4f
    or h                                          ; $55cf: $b4
    db $dd                                        ; $55d0: $dd
    cp [hl]                                       ; $55d1: $be
    ld a, $95                                     ; $55d2: $3e $95
    inc [hl]                                      ; $55d4: $34
    call nz, $5e56                                ; $55d5: $c4 $56 $5e
    cp [hl]                                       ; $55d8: $be
    dec hl                                        ; $55d9: $2b
    ld b, $bd                                     ; $55da: $06 $bd
    ld e, $b8                                     ; $55dc: $1e $b8
    cp e                                          ; $55de: $bb
    cp [hl]                                       ; $55df: $be
    sub d                                         ; $55e0: $92
    sbc l                                         ; $55e1: $9d
    adc $b3                                       ; $55e2: $ce $b3
    and l                                         ; $55e4: $a5
    pop af                                        ; $55e5: $f1

jr_022_55e6:
    ld a, c                                       ; $55e6: $79
    ld sp, hl                                     ; $55e7: $f9
    or c                                          ; $55e8: $b1
    ld c, h                                       ; $55e9: $4c
    ld e, c                                       ; $55ea: $59
    sub d                                         ; $55eb: $92
    rst $20                                       ; $55ec: $e7
    cp h                                          ; $55ed: $bc
    db $fc                                        ; $55ee: $fc
    ld [bc], a                                    ; $55ef: $02
    ld c, c                                       ; $55f0: $49
    ld b, e                                       ; $55f1: $43
    inc c                                         ; $55f2: $0c
    ret nc                                        ; $55f3: $d0

    ld a, d                                       ; $55f4: $7a
    sub [hl]                                      ; $55f5: $96
    ld h, [hl]                                    ; $55f6: $66
    rla                                           ; $55f7: $17
    halt                                          ; $55f8: $76
    ld a, l                                       ; $55f9: $7d
    dec e                                         ; $55fa: $1d
    inc hl                                        ; $55fb: $23
    sbc l                                         ; $55fc: $9d
    ld hl, sp+$5d                                 ; $55fd: $f8 $5d
    ld sp, $af16                                  ; $55ff: $31 $16 $af
    pop bc                                        ; $5602: $c1
    ld [hl], h                                    ; $5603: $74
    pop af                                        ; $5604: $f1
    ld a, [$252a]                                 ; $5605: $fa $2a $25
    ld d, $7f                                     ; $5608: $16 $7f
    ld e, [hl]                                    ; $560a: $5e
    call nc, Call_000_2bc7                        ; $560b: $d4 $c7 $2b
    ld c, h                                       ; $560e: $4c
    xor e                                         ; $560f: $ab
    ld [$27b2], a                                 ; $5610: $ea $b2 $27
    rst $10                                       ; $5613: $d7
    jr @-$63                                      ; $5614: $18 $9b

    cp c                                          ; $5616: $b9
    jr z, jr_022_559a                             ; $5617: $28 $81

    ld a, l                                       ; $5619: $7d
    inc bc                                        ; $561a: $03
    inc hl                                        ; $561b: $23
    rst $08                                       ; $561c: $cf

Jump_022_561d:
    halt                                          ; $561d: $76
    ret                                           ; $561e: $c9


    ld [hl], e                                    ; $561f: $73
    ld a, [hl-]                                   ; $5620: $3a
    pop de                                        ; $5621: $d1
    halt                                          ; $5622: $76
    ei                                            ; $5623: $fb
    ld a, [hl-]                                   ; $5624: $3a
    jp nz, $8a3d                                  ; $5625: $c2 $3d $8a

    ld a, [$439e]                                 ; $5628: $fa $9e $43
    daa                                           ; $562b: $27
    ld [$9825], a                                 ; $562c: $ea $25 $98
    sub a                                         ; $562f: $97
    rra                                           ; $5630: $1f
    xor a                                         ; $5631: $af
    inc e                                         ; $5632: $1c
    sub [hl]                                      ; $5633: $96
    inc [hl]                                      ; $5634: $34
    cpl                                           ; $5635: $2f
    ccf                                           ; $5636: $3f
    dec sp                                        ; $5637: $3b
    ld h, [hl]                                    ; $5638: $66
    ld a, [bc]                                    ; $5639: $0a
    jp nz, $5727                                  ; $563a: $c2 $27 $57

    rst $00                                       ; $563d: $c7
    daa                                           ; $563e: $27
    ld l, c                                       ; $563f: $69
    and b                                         ; $5640: $a0
    ld sp, $578e                                  ; $5641: $31 $8e $57
    ld [hl], d                                    ; $5644: $72
    ld e, b                                       ; $5645: $58
    ld hl, sp-$0d                                 ; $5646: $f8 $f3
    ld e, h                                       ; $5648: $5c
    and l                                         ; $5649: $a5
    ld e, [hl]                                    ; $564a: $5e
    sub l                                         ; $564b: $95
    ld e, l                                       ; $564c: $5d
    ld b, a                                       ; $564d: $47
    jr jr_022_55e6                                ; $564e: $18 $96

    add c                                         ; $5650: $81
    ld a, [c]                                     ; $5651: $f2
    ld c, e                                       ; $5652: $4b
    ld a, [$cd25]                                 ; $5653: $fa $25 $cd
    sra a                                         ; $5656: $cb $2f
    sub b                                         ; $5658: $90
    inc [hl]                                      ; $5659: $34
    call nz, $c766                                ; $565a: $c4 $66 $c7
    ld c, h                                       ; $565d: $4c
    reti                                          ; $565e: $d9


    ld a, c                                       ; $565f: $79
    ld b, $7c                                     ; $5660: $06 $7c
    sub h                                         ; $5662: $94
    inc a                                         ; $5663: $3c
    jp nz, Jump_000_24a7                          ; $5664: $c2 $a7 $24

    ld e, d                                       ; $5667: $5a
    xor e                                         ; $5668: $ab
    ld e, d                                       ; $5669: $5a
    ld a, a                                       ; $566a: $7f
    ld c, l                                       ; $566b: $4d
    sbc d                                         ; $566c: $9a
    xor [hl]                                      ; $566d: $ae
    jr @-$68                                      ; $566e: $18 $96

    or c                                          ; $5670: $b1
    and h                                         ; $5671: $a4
    sbc d                                         ; $5672: $9a
    xor a                                         ; $5673: $af
    ld c, [hl]                                    ; $5674: $4e
    ret                                           ; $5675: $c9


    ld c, a                                       ; $5676: $4f
    xor c                                         ; $5677: $a9
    pop af                                        ; $5678: $f1
    ld [hl], d                                    ; $5679: $72
    add hl, hl                                    ; $567a: $29
    sbc b                                         ; $567b: $98
    or [hl]                                       ; $567c: $b6
    db $d3                                        ; $567d: $d3
    ld hl, sp-$44                                 ; $567e: $f8 $bc
    xor b                                         ; $5680: $a8
    inc hl                                        ; $5681: $23
    inc c                                         ; $5682: $0c
    and a                                         ; $5683: $a7
    inc h                                         ; $5684: $24
    ld e, d                                       ; $5685: $5a
    ld c, e                                       ; $5686: $4b

jr_022_5687:
    ld c, c                                       ; $5687: $49
    inc de                                        ; $5688: $13
    reti                                          ; $5689: $d9


    inc l                                         ; $568a: $2c
    dec hl                                        ; $568b: $2b
    ld l, d                                       ; $568c: $6a
    db $fd                                        ; $568d: $fd
    xor [hl]                                      ; $568e: $ae
    jr @-$68                                      ; $568f: $18 $96

    dec d                                         ; $5691: $15
    or l                                          ; $5692: $b5
    ld a, $d5                                     ; $5693: $3e $d5
    ld a, h                                       ; $5695: $7c
    ldh a, [rVBK]                                 ; $5696: $f0 $4f
    db $d3                                        ; $5698: $d3
    adc c                                         ; $5699: $89
    or [hl]                                       ; $569a: $b6
    db $db                                        ; $569b: $db
    rst $10                                       ; $569c: $d7
    and a                                         ; $569d: $a7
    ld a, $8d                                     ; $569e: $3e $8d
    ld de, $4761                                  ; $56a0: $11 $61 $47
    ret                                           ; $56a3: $c9


    xor a                                         ; $56a4: $af
    ld c, c                                       ; $56a5: $49
    inc sp                                        ; $56a6: $33
    adc l                                         ; $56a7: $8d
    ld [hl], c                                    ; $56a8: $71
    ld [hl], d                                    ; $56a9: $72
    add e                                         ; $56aa: $83
    ld [c], a                                     ; $56ab: $e2
    call c, $aab5                                 ; $56ac: $dc $b5 $aa
    ld c, b                                       ; $56af: $48
    db $d3                                        ; $56b0: $d3
    dec d                                         ; $56b1: $15
    inc bc                                        ; $56b2: $03
    ld b, a                                       ; $56b3: $47
    ld b, c                                       ; $56b4: $41
    ld a, l                                       ; $56b5: $7d
    ld c, l                                       ; $56b6: $4d
    ld a, [de]                                    ; $56b7: $1a
    add hl, de                                    ; $56b8: $19
    call c, $9b18                                 ; $56b9: $dc $18 $9b
    sbc l                                         ; $56bc: $9d
    ld l, a                                       ; $56bd: $6f
    ld e, $fc                                     ; $56be: $1e $fc
    ld h, $c1                                     ; $56c0: $26 $c1
    jr nz, jr_022_5687                            ; $56c2: $20 $c3

    rst $20                                       ; $56c4: $e7
    set 1, e                                      ; $56c5: $cb $cb
    rst $28                                       ; $56c7: $ef
    inc hl                                        ; $56c8: $23
    ld a, h                                       ; $56c9: $7c
    rla                                           ; $56ca: $17
    inc c                                         ; $56cb: $0c
    xor l                                         ; $56cc: $ad
    rla                                           ; $56cd: $17
    nop                                           ; $56ce: $00
    ld h, c                                       ; $56cf: $61
    and a                                         ; $56d0: $a7
    inc h                                         ; $56d1: $24
    ld [hl], a                                    ; $56d2: $77
    ld l, l                                       ; $56d3: $6d
    db $e3                                        ; $56d4: $e3
    or e                                          ; $56d5: $b3
    call nc, $aad8                                ; $56d6: $d4 $d8 $aa
    rla                                           ; $56d9: $17
    rst $10                                       ; $56da: $d7
    ld c, e                                       ; $56db: $4b
    or c                                          ; $56dc: $b1
    ld e, c                                       ; $56dd: $59
    cp h                                          ; $56de: $bc
    push af                                       ; $56df: $f5
    sbc a                                         ; $56e0: $9f
    daa                                           ; $56e1: $27
    jp nz, $b196                                  ; $56e2: $c2 $96 $b1

    and h                                         ; $56e5: $a4
    sbc d                                         ; $56e6: $9a
    xor a                                         ; $56e7: $af
    xor b                                         ; $56e8: $a8
    push af                                       ; $56e9: $f5
    rst $20                                       ; $56ea: $e7
    scf                                           ; $56eb: $37
    db $fc                                        ; $56ec: $fc
    reti                                          ; $56ed: $d9


    add hl, hl                                    ; $56ee: $29
    sub e                                         ; $56ef: $93
    bit 3, b                                      ; $56f0: $cb $58
    ld a, h                                       ; $56f2: $7c
    ldh [$ae], a                                  ; $56f3: $e0 $ae
    ld a, e                                       ; $56f5: $7b
    cp d                                          ; $56f6: $ba
    cp a                                          ; $56f7: $bf
    jr nz, jr_022_5706                            ; $56f8: $20 $0c

    ld b, a                                       ; $56fa: $47
    ld b, c                                       ; $56fb: $41
    ld a, l                                       ; $56fc: $7d
    xor l                                         ; $56fd: $ad
    ld a, [de]                                    ; $56fe: $1a
    ret z                                         ; $56ff: $c8

    ld h, l                                       ; $5700: $65
    ld l, b                                       ; $5701: $68
    xor l                                         ; $5702: $ad
    ccf                                           ; $5703: $3f
    adc l                                         ; $5704: $8d
    cp h                                          ; $5705: $bc

jr_022_5706:
    ld [hl], $b0                                  ; $5706: $36 $b0
    ld a, [hl-]                                   ; $5708: $3a
    dec h                                         ; $5709: $25
    rrca                                          ; $570a: $0f
    di                                            ; $570b: $f3
    ld a, [c]                                     ; $570c: $f2
    xor e                                         ; $570d: $ab
    ld [hl-], a                                   ; $570e: $32
    cp h                                          ; $570f: $bc
    inc d                                         ; $5710: $14
    ret nz                                        ; $5711: $c0

    sub h                                         ; $5712: $94
    ret c                                         ; $5713: $d8

    add d                                         ; $5714: $82
    cp h                                          ; $5715: $bc
    inc d                                         ; $5716: $14
    inc l                                         ; $5717: $2c
    db $ed                                        ; $5718: $ed
    ld a, c                                       ; $5719: $79
    ld sp, hl                                     ; $571a: $f9
    add hl, hl                                    ; $571b: $29
    db $dd                                        ; $571c: $dd
    ld d, b                                       ; $571d: $50
    inc hl                                        ; $571e: $23
    inc l                                         ; $571f: $2c
    ld l, c                                       ; $5720: $69
    ld d, b                                       ; $5721: $50
    sub l                                         ; $5722: $95
    call z, Call_022_40b8                         ; $5723: $cc $b8 $40
    jp nc, Jump_000_0310                          ; $5726: $d2 $10 $03

    add h                                         ; $5729: $84
    ld bc, $19c7                                  ; $572a: $01 $c7 $19
    and d                                         ; $572d: $a2
    ld h, [hl]                                    ; $572e: $66
    call Call_022_4197                            ; $572f: $cd $97 $41
    ld c, c                                       ; $5732: $49
    inc de                                        ; $5733: $13
    reti                                          ; $5734: $d9


    inc d                                         ; $5735: $14
    ld [$a768], a                                 ; $5736: $ea $68 $a7
    jp nc, $3cef                                  ; $5739: $d2 $ef $3c

Jump_022_573c:
    inc bc                                        ; $573c: $03
    cp [hl]                                       ; $573d: $be
    sub d                                         ; $573e: $92
    sbc l                                         ; $573f: $9d
    adc $b3                                       ; $5740: $ce $b3
    or l                                          ; $5742: $b5
    dec de                                        ; $5743: $1b
    or h                                          ; $5744: $b4
    db $e3                                        ; $5745: $e3
    sub h                                         ; $5746: $94
    add d                                         ; $5747: $82

Jump_022_5748:
    pop af                                        ; $5748: $f1
    ld l, c                                       ; $5749: $69
    ld [hl+], a                                   ; $574a: $22
    sbc e                                         ; $574b: $9b
    ld bc, $31a3                                  ; $574c: $01 $a3 $31
    ld [hl], $ab                                  ; $574f: $36 $ab
    adc d                                         ; $5751: $8a
    jp nz, $d74f                                  ; $5752: $c2 $4f $d7

    ld [hl], $44                                  ; $5755: $36 $44
    dec c                                         ; $5757: $0d
    ld [hl], a                                    ; $5758: $77
    ld l, l                                       ; $5759: $6d
    db $e3                                        ; $575a: $e3
    dec hl                                        ; $575b: $2b
    ccf                                           ; $575c: $3f
    ld [hl], b                                    ; $575d: $70
    ld l, l                                       ; $575e: $6d
    sbc [hl]                                      ; $575f: $9e
    xor l                                         ; $5760: $ad
    add $6b                                       ; $5761: $c6 $6b
    inc sp                                        ; $5763: $33
    ld e, e                                       ; $5764: $5b
    ld [hl-], a                                   ; $5765: $32
    sbc h                                         ; $5766: $9c
    sub a                                         ; $5767: $97
    dec bc                                        ; $5768: $0b
    xor e                                         ; $5769: $ab
    add hl, de                                    ; $576a: $19
    ld b, d                                       ; $576b: $42
    jr jr_022_5784                                ; $576c: $18 $16

    rra                                           ; $576e: $1f
    xor a                                         ; $576f: $af
    ld b, b                                       ; $5770: $40
    dec [hl]                                      ; $5771: $35
    sbc a                                         ; $5772: $9f
    cp h                                          ; $5773: $bc
    add $d8                                       ; $5774: $c6 $d8
    ld c, h                                       ; $5776: $4c
    daa                                           ; $5777: $27
    jp c, Jump_022_5f6e                           ; $5778: $da $6e $5f

    rst $20                                       ; $577b: $e7
    xor $fa                                       ; $577c: $ee $fa
    ld a, b                                       ; $577e: $78
    add l                                         ; $577f: $85
    jp hl                                         ; $5780: $e9


    ld [c], a                                     ; $5781: $e2
    push af                                       ; $5782: $f5
    ld d, l                                       ; $5783: $55

jr_022_5784:
    ld c, d                                       ; $5784: $4a
    inc l                                         ; $5785: $2c

jr_022_5786:
    cp $bc                                        ; $5786: $fe $bc
    xor b                                         ; $5788: $a8
    rst $10                                       ; $5789: $d7
    ld h, b                                       ; $578a: $60
    db $ed                                        ; $578b: $ed

Jump_022_578c:
    ld a, a                                       ; $578c: $7f
    sbc d                                         ; $578d: $9a
    adc e                                         ; $578e: $8b
    ld [de], a                                    ; $578f: $12
    ret c                                         ; $5790: $d8

    scf                                           ; $5791: $37
    jr nc, jr_022_5786                            ; $5792: $30 $f2

    xor h                                         ; $5794: $ac
    dec bc                                        ; $5795: $0b
    ld b, $3d                                     ; $5796: $06 $3d
    adc d                                         ; $5798: $8a
    ld a, [$439e]                                 ; $5799: $fa $9e $43
    daa                                           ; $579c: $27
    ld [$9825], a                                 ; $579d: $ea $25 $98
    sub a                                         ; $57a0: $97
    ld e, a                                       ; $57a1: $5f
    db $db                                        ; $57a2: $db
    ld [$aa5d], sp                                ; $57a3: $08 $5d $aa
    call Call_000_3236                            ; $57a6: $cd $36 $32
    ld [$463f], sp                                ; $57a9: $08 $3f $46
    add h                                         ; $57ac: $84
    ld bc, $cb3d                                  ; $57ad: $01 $3d $cb
    res 1, a                                      ; $57b0: $cb $8f
    ld e, l                                       ; $57b2: $5d
    or [hl]                                       ; $57b3: $b6
    db $eb                                        ; $57b4: $eb
    dec bc                                        ; $57b5: $0b
    or d                                          ; $57b6: $b2
    dec hl                                        ; $57b7: $2b
    ld b, $3d                                     ; $57b8: $06 $3d
    sub d                                         ; $57ba: $92
    ld d, a                                       ; $57bb: $57
    ld h, c                                       ; $57bc: $61
    di                                            ; $57bd: $f3
    ld a, [c]                                     ; $57be: $f2
    dec bc                                        ; $57bf: $0b
    db $e4                                        ; $57c0: $e4
    sbc a                                         ; $57c1: $9f
    ld c, d                                       ; $57c2: $4a
    ld a, [de]                                    ; $57c3: $1a
    ld a, b                                       ; $57c4: $78
    ld b, b                                       ; $57c5: $40
    dec sp                                        ; $57c6: $3b
    add hl, hl                                    ; $57c7: $29
    or e                                          ; $57c8: $b3
    ld a, [hl]                                    ; $57c9: $7e
    xor c                                         ; $57ca: $a9
    ld [hl], $3b                                  ; $57cb: $36 $3b
    ld h, l                                       ; $57cd: $65
    cp h                                          ; $57ce: $bc
    ld [hl], d                                    ; $57cf: $72
    sbc b                                         ; $57d0: $98
    push af                                       ; $57d1: $f5
    add e                                         ; $57d2: $83
    ld [hl], a                                    ; $57d3: $77
    ld l, l                                       ; $57d4: $6d
    rst $00                                       ; $57d5: $c7
    rlca                                          ; $57d6: $07
    xor $c2                                       ; $57d7: $ee $c2
    inc b                                         ; $57d9: $04
    ld e, a                                       ; $57da: $5f
    cp h                                          ; $57db: $bc
    push af                                       ; $57dc: $f5
    adc a                                         ; $57dd: $8f
    dec c                                         ; $57de: $0d
    jp nz, $bf47                                  ; $57df: $c2 $47 $bf

    ei                                            ; $57e2: $fb
    res 1, d                                      ; $57e3: $cb $8a
    ld de, $a669                                  ; $57e5: $11 $69 $a6

jr_022_57e8:
    ld d, h                                       ; $57e8: $54
    sbc e                                         ; $57e9: $9b
    ld a, l                                       ; $57ea: $7d
    adc c                                         ; $57eb: $89
    db $ed                                        ; $57ec: $ed
    ld a, [hl-]                                   ; $57ed: $3a
    ld [hl], a                                    ; $57ee: $77
    xor l                                         ; $57ef: $ad
    ld a, [hl+]                                   ; $57f0: $2a
    jp nc, $ada0                                  ; $57f1: $d2 $a0 $ad

    ld h, a                                       ; $57f4: $67
    sbc d                                         ; $57f5: $9a
    ret z                                         ; $57f6: $c8

    xor b                                         ; $57f7: $a8
    and $e3                                       ; $57f8: $e6 $e3
    sub l                                         ; $57fa: $95
    ld a, h                                       ; $57fb: $7c
    ld c, d                                       ; $57fc: $4a
    call $94ec                                    ; $57fd: $cd $ec $94
    rlca                                          ; $5800: $07
    sbc a                                         ; $5801: $9f
    ld a, l                                       ; $5802: $7d
    push hl                                       ; $5803: $e5
    ld bc, $ad61                                  ; $5804: $01 $61 $ad
    ld h, c                                       ; $5807: $61
    ret z                                         ; $5808: $c8

    ld e, l                                       ; $5809: $5d
    rst $20                                       ; $580a: $e7
    and l                                         ; $580b: $a5
    ld l, b                                       ; $580c: $68
    rlca                                          ; $580d: $07
    halt                                          ; $580e: $76
    ld a, l                                       ; $580f: $7d
    cp h                                          ; $5810: $bc
    jp nz, $fcbc                                  ; $5811: $c2 $bc $fc

    ld a, [hl-]                                   ; $5814: $3a
    ld b, [hl]                                    ; $5815: $46
    ld a, [hl-]                                   ; $5816: $3a
    pop af                                        ; $5817: $f1
    rst $20                                       ; $5818: $e7
    push hl                                       ; $5819: $e5
    ld d, d                                       ; $581a: $52
    jr nc, jr_022_57e8                            ; $581b: $30 $cb

    ld b, b                                       ; $581d: $40
    ld sp, hl                                     ; $581e: $f9
    ld sp, $7285                                  ; $581f: $31 $85 $72
    add hl, hl                                    ; $5822: $29
    sbc b                                         ; $5823: $98
    ld c, d                                       ; $5824: $4a
    ld a, [de]                                    ; $5825: $1a
    ld h, d                                       ; $5826: $62
    ld c, e                                       ; $5827: $4b
    db $e3                                        ; $5828: $e3
    dec hl                                        ; $5829: $2b
    cpl                                           ; $582a: $2f
    adc a                                         ; $582b: $8f
    ld h, [hl]                                    ; $582c: $66
    add c                                         ; $582d: $81
    ld e, l                                       ; $582e: $5d
    ld e, a                                       ; $582f: $5f
    sub e                                         ; $5830: $93
    ld b, [hl]                                    ; $5831: $46
    and b                                         ; $5832: $a0
    dec hl                                        ; $5833: $2b
    ld b, $a7                                     ; $5834: $06 $a7
    inc h                                         ; $5836: $24
    ld [hl], a                                    ; $5837: $77
    rst $10                                       ; $5838: $d7
    ld l, e                                       ; $5839: $6b
    jr nc, jr_022_5899                            ; $583a: $30 $5d

    xor b                                         ; $583c: $a8
    pop bc                                        ; $583d: $c1
    xor l                                         ; $583e: $ad
    inc [hl]                                      ; $583f: $34
    ld l, $bc                                     ; $5840: $2e $bc
    ldh [$5a], a                                  ; $5842: $e0 $5a
    rst $38                                       ; $5844: $ff
    ld [hl], l                                    ; $5845: $75
    sub a                                         ; $5846: $97
    or h                                          ; $5847: $b4
    rra                                           ; $5848: $1f
    jr nz, @+$67                                  ; $5849: $20 $65

    daa                                           ; $584b: $27
    ld d, a                                       ; $584c: $57
    rst $00                                       ; $584d: $c7
    daa                                           ; $584e: $27
    ld l, c                                       ; $584f: $69
    and b                                         ; $5850: $a0
    ld sp, $9e0e                                  ; $5851: $31 $0e $9e
    ld a, h                                       ; $5854: $7c
    pop hl                                        ; $5855: $e1
    rst $08                                       ; $5856: $cf
    ld [hl], e                                    ; $5857: $73
    ld l, $5a                                     ; $5858: $2e $5a
    push de                                       ; $585a: $d5

jr_022_585b:
    rst $00                                       ; $585b: $c7
    sub d                                         ; $585c: $92
    and a                                         ; $585d: $a7
    add hl, hl                                    ; $585e: $29
    or c                                          ; $585f: $b1
    ld d, l                                       ; $5860: $55
    ld [$4155], a                                 ; $5861: $ea $55 $41
    jr jr_022_58a3                                ; $5864: $18 $3d

    ccf                                           ; $5866: $3f
    ld b, [hl]                                    ; $5867: $46
    xor $82                                       ; $5868: $ee $82
    ld c, h                                       ; $586a: $4c
    or [hl]                                       ; $586b: $b6
    ld l, b                                       ; $586c: $68
    xor d                                         ; $586d: $aa
    ld a, [hl-]                                   ; $586e: $3a
    sbc d                                         ; $586f: $9a
    and l                                         ; $5870: $a5
    add $56                                       ; $5871: $c6 $56
    ld a, $76                                     ; $5873: $3e $76
    sub $a4                                       ; $5875: $d6 $a4
    pop hl                                        ; $5877: $e1
    xor [hl]                                      ; $5878: $ae
    ld l, l                                       ; $5879: $6d
    ld a, h                                       ; $587a: $7c
    sub [hl]                                      ; $587b: $96
    ld e, d                                       ; $587c: $5a
    cp b                                          ; $587d: $b8
    or [hl]                                       ; $587e: $b6
    add c                                         ; $587f: $81
    ld h, [hl]                                    ; $5880: $66
    xor [hl]                                      ; $5881: $ae
    pop hl                                        ; $5882: $e1
    and l                                         ; $5883: $a5
    ld h, b                                       ; $5884: $60
    sub b                                         ; $5885: $90
    pop hl                                        ; $5886: $e1
    adc a                                         ; $5887: $8f
    cp a                                          ; $5888: $bf
    sub c                                         ; $5889: $91
    ld c, l                                       ; $588a: $4d
    ld l, [hl]                                    ; $588b: $6e
    push af                                       ; $588c: $f5
    ld [$3d03], sp                                ; $588d: $08 $03 $3d
    adc d                                         ; $5890: $8a
    ld a, [$0342]                                 ; $5891: $fa $42 $03
    cp [hl]                                       ; $5894: $be
    or $ef                                        ; $5895: $f6 $ef
    ld a, d                                       ; $5897: $7a
    rla                                           ; $5898: $17

jr_022_5899:
    inc c                                         ; $5899: $0c
    dec a                                         ; $589a: $3d
    jp z, $afcb                                   ; $589b: $ca $cb $af

    ld c, c                                       ; $589e: $49
    or e                                          ; $589f: $b3
    jr nz, jr_022_585b                            ; $58a0: $20 $b9

    ld l, e                                       ; $58a2: $6b

jr_022_58a3:
    ld d, l                                       ; $58a3: $55
    sub c                                         ; $58a4: $91
    add [hl]                                      ; $58a5: $86
    dec sp                                        ; $58a6: $3b
    adc l                                         ; $58a7: $8d
    ld [hl], c                                    ; $58a8: $71
    or $e5                                        ; $58a9: $f6 $e5
    ldh a, [$6c]                                  ; $58ab: $f0 $6c
    and [hl]                                      ; $58ad: $a6
    add e                                         ; $58ae: $83
    jr nc, jr_022_58ee                            ; $58af: $30 $3d

    jp z, Jump_022_5d85                           ; $58b1: $ca $85 $5d

    sbc b                                         ; $58b4: $98
    sub a                                         ; $58b5: $97
    ld e, a                                       ; $58b6: $5f
    ld d, d                                       ; $58b7: $52
    ld l, h                                       ; $58b8: $6c
    sub $31                                       ; $58b9: $d6 $31
    jp nc, $3f89                                  ; $58bb: $d2 $89 $3f

    pop de                                        ; $58be: $d1
    halt                                          ; $58bf: $76
    ei                                            ; $58c0: $fb
    ld a, [$ab2c]                                 ; $58c1: $fa $2c $ab
    jp nc, Jump_000_3644                          ; $58c4: $d2 $44 $36

    ei                                            ; $58c7: $fb

Jump_022_58c8:
    ld [de], a                                    ; $58c8: $12
    ld b, e                                       ; $58c9: $43
    jr @-$37                                      ; $58ca: $18 $c7

    ld h, a                                       ; $58cc: $67
    or d                                          ; $58cd: $b2
    sbc l                                         ; $58ce: $9d
    sub a                                         ; $58cf: $97
    ld l, l                                       ; $58d0: $6d
    xor $5a                                       ; $58d1: $ee $5a
    ld d, l                                       ; $58d3: $55
    and h                                         ; $58d4: $a4
    jp hl                                         ; $58d5: $e9


    ld [hl-], a                                   ; $58d6: $32
    ld c, e                                       ; $58d7: $4b
    dec l                                         ; $58d8: $2d
    sbc h                                         ; $58d9: $9c
    ld a, [c]                                     ; $58da: $f2
    ld a, [hl+]                                   ; $58db: $2a
    db $ec                                        ; $58dc: $ec
    ld d, d                                       ; $58dd: $52
    or b                                          ; $58de: $b0
    cp $0f                                        ; $58df: $fe $0f
    ld e, d                                       ; $58e1: $5a
    ld c, c                                       ; $58e2: $49
    inc bc                                        ; $58e3: $03
    cp a                                          ; $58e4: $bf
    ld c, [hl]                                    ; $58e5: $4e
    ld e, [hl]                                    ; $58e6: $5e
    ld [hl], d                                    ; $58e7: $72
    sbc b                                         ; $58e8: $98
    rst $20                                       ; $58e9: $e7
    adc [hl]                                      ; $58ea: $8e
    sub a                                         ; $58eb: $97
    add $b6                                       ; $58ec: $c6 $b6

jr_022_58ee:
    cpl                                           ; $58ee: $2f
    or c                                          ; $58ef: $b1
    inc d                                         ; $58f0: $14
    xor $94                                       ; $58f1: $ee $94
    ret c                                         ; $58f3: $d8

    sbc d                                         ; $58f4: $9a
    inc [hl]                                      ; $58f5: $34
    or l                                          ; $58f6: $b5
    jr jr_022_5960                                ; $58f7: $18 $67

    ld e, a                                       ; $58f9: $5f
    ld h, d                                       ; $58fa: $62
    db $d3                                        ; $58fb: $d3
    pop de                                        ; $58fc: $d1
    di                                            ; $58fd: $f3
    add e                                         ; $58fe: $83
    adc $c7                                       ; $58ff: $ce $c7
    jr c, jr_022_591a                             ; $5901: $38 $17

    dec h                                         ; $5903: $25
    xor b                                         ; $5904: $a8
    db $e4                                        ; $5905: $e4
    or [hl]                                       ; $5906: $b6
    sbc a                                         ; $5907: $9f
    db $ed                                        ; $5908: $ed
    sub d                                         ; $5909: $92
    rst $20                                       ; $590a: $e7
    sbc d                                         ; $590b: $9a
    inc [hl]                                      ; $590c: $34
    ld [hl-], a                                   ; $590d: $32
    add sp, $7c                                   ; $590e: $e8 $7c
    adc h                                         ; $5910: $8c
    db $ed                                        ; $5911: $ed
    call z, $c23a                                 ; $5912: $cc $3a $c2
    rst $00                                       ; $5915: $c7
    db $e4                                        ; $5916: $e4
    sbc d                                         ; $5917: $9a
    inc [hl]                                      ; $5918: $34
    dec hl                                        ; $5919: $2b

jr_022_591a:
    ld l, d                                       ; $591a: $6a
    db $fd                                        ; $591b: $fd
    ld a, c                                       ; $591c: $79
    ld sp, hl                                     ; $591d: $f9
    adc c                                         ; $591e: $89
    or [hl]                                       ; $591f: $b6
    db $db                                        ; $5920: $db
    rst $10                                       ; $5921: $d7
    cp c                                          ; $5922: $b9
    ld l, e                                       ; $5923: $6b
    ld d, l                                       ; $5924: $55
    sub c                                         ; $5925: $91
    and [hl]                                      ; $5926: $a6
    dec hl                                        ; $5927: $2b
    ld b, $a7                                     ; $5928: $06 $a7
    inc h                                         ; $592a: $24
    ld [hl], a                                    ; $592b: $77
    sub [hl]                                      ; $592c: $96
    ld d, l                                       ; $592d: $55

jr_022_592e:
    ld l, c                                       ; $592e: $69
    ld [hl+], a                                   ; $592f: $22
    and e                                         ; $5930: $a3
    sbc d                                         ; $5931: $9a
    rst $08                                       ; $5932: $cf
    cp [hl]                                       ; $5933: $be
    call nz, Call_000_1d76                        ; $5934: $c4 $76 $1d
    ld h, c                                       ; $5937: $61
    dec a                                         ; $5938: $3d
    ccf                                           ; $5939: $3f
    ld b, [hl]                                    ; $593a: $46
    xor $ea                                       ; $593b: $ee $ea
    rst $38                                       ; $593d: $ff
    sbc l                                         ; $593e: $9d
    cp c                                          ; $593f: $b9
    inc [hl]                                      ; $5940: $34
    sub a                                         ; $5941: $97
    ld [bc], a                                    ; $5942: $02
    inc [hl]                                      ; $5943: $34
    bit 3, b                                      ; $5944: $cb $58
    ld d, d                                       ; $5946: $52
    call Call_000_2bc7                            ; $5947: $cd $c7 $2b
    ld sp, hl                                     ; $594a: $f9
    xor [hl]                                      ; $594b: $ae
    rst $08                                       ; $594c: $cf
    ld [hl], e                                    ; $594d: $73

Call_022_594e:
    ldh [$2a], a                                  ; $594e: $e0 $2a
    ld a, $a5                                     ; $5950: $3e $a5
    ld h, [hl]                                    ; $5952: $66
    ldh a, [$72]                                  ; $5953: $f0 $72
    db $d3                                        ; $5955: $d3
    ret nz                                        ; $5956: $c0

    jp c, Jump_000_3951                           ; $5957: $da $51 $39

    ld a, $74                                     ; $595a: $3e $74
    pop bc                                        ; $595c: $c1
    rst $00                                       ; $595d: $c7
    ld e, h                                       ; $595e: $5c
    or [hl]                                       ; $595f: $b6

jr_022_5960:
    ld h, $cd                                     ; $5960: $26 $cd
    db $ec                                        ; $5962: $ec
    ld c, e                                       ; $5963: $4b
    ld l, h                                       ; $5964: $6c
    ld e, [hl]                                    ; $5965: $5e
    ld a, [hl]                                    ; $5966: $7e
    and d                                         ; $5967: $a2
    db $ed                                        ; $5968: $ed
    or $f5                                        ; $5969: $f6 $f5
    ld a, c                                       ; $596b: $79
    cp c                                          ; $596c: $b9
    jr nc, jr_022_592e                            ; $596d: $30 $bf

    pop hl                                        ; $596f: $e1
    ld [hl], e                                    ; $5970: $73
    rst $10                                       ; $5971: $d7
    xor d                                         ; $5972: $aa
    ld [hl+], a                                   ; $5973: $22

Jump_022_5974:
    ld c, l                                       ; $5974: $4d
    ld d, a                                       ; $5975: $57
    inc c                                         ; $5976: $0c
    and a                                         ; $5977: $a7
    inc h                                         ; $5978: $24
    ld [hl], a                                    ; $5979: $77
    rst $10                                       ; $597a: $d7
    ld l, e                                       ; $597b: $6b
    jr nc, @-$0e                                  ; $597c: $30 $f0

    dec de                                        ; $597e: $1b
    db $e3                                        ; $597f: $e3
    ld h, d                                       ; $5980: $62
    ld h, $fc                                     ; $5981: $26 $fc
    jr nz, @-$3b                                  ; $5983: $20 $c3

    rst $20                                       ; $5985: $e7
    set 1, e                                      ; $5986: $cb $cb
    inc hl                                        ; $5988: $23
    inc c                                         ; $5989: $0c
    cp l                                          ; $598a: $bd
    jp nc, Jump_000_342c                          ; $598b: $d2 $2c $34

    ldh [$b3], a                                  ; $598e: $e0 $b3
    cpl                                           ; $5990: $2f
    or c                                          ; $5991: $b1
    ld e, l                                       ; $5992: $5d
    ld b, a                                       ; $5993: $47
    db $eb                                        ; $5994: $eb
    ld e, $5f                                     ; $5995: $1e $5f
    pop hl                                        ; $5997: $e1
    rst $00                                       ; $5998: $c7
    sub d                                         ; $5999: $92
    ld l, d                                       ; $599a: $6a
    ld a, $76                                     ; $599b: $3e $76
    ld b, c                                       ; $599d: $41
    dec sp                                        ; $599e: $3b
    sbc l                                         ; $599f: $9d
    cp h                                          ; $59a0: $bc
    db $e4                                        ; $59a1: $e4
    dec bc                                        ; $59a2: $0b
    ld a, a                                       ; $59a3: $7f
    ld a, [de]                                    ; $59a4: $1a
    add sp, -$5b                                  ; $59a5: $e8 $a5
    ld l, $18                                     ; $59a7: $2e $18
    cp l                                          ; $59a9: $bd
    jp nc, $a8ac                                  ; $59aa: $d2 $ac $a8

    push af                                       ; $59ad: $f5
    ld b, a                                       ; $59ae: $47
    jp hl                                         ; $59af: $e9


    xor e                                         ; $59b0: $ab
    ld [hl-], a                                   ; $59b1: $32
    db $ec                                        ; $59b2: $ec
    call nz, $67f7                                ; $59b3: $c4 $f7 $67
    ld l, e                                       ; $59b6: $6b
    jp nc, Jump_000_14c8                          ; $59b7: $d2 $c8 $14

    ldh [rTMA], a                                 ; $59ba: $e0 $06
    inc d                                         ; $59bc: $14
    ld a, $39                                     ; $59bd: $3e $39
    sbc d                                         ; $59bf: $9a
    ld h, l                                       ; $59c0: $65
    ld a, [de]                                    ; $59c1: $1a
    adc [hl]                                      ; $59c2: $8e
    dec a                                         ; $59c3: $3d
    inc sp                                        ; $59c4: $33
    sub l                                         ; $59c5: $95
    ld e, a                                       ; $59c6: $5f
    ld a, [bc]                                    ; $59c7: $0a
    sub [hl]                                      ; $59c8: $96
    db $f4                                        ; $59c9: $f4
    dec hl                                        ; $59ca: $2b
    ld l, c                                       ; $59cb: $69
    ldh [$d7], a                                  ; $59cc: $e0 $d7
    ret                                           ; $59ce: $c9


    ld c, e                                       ; $59cf: $4b
    ld a, $5b                                     ; $59d0: $3e $5b
    ld [hl-], a                                   ; $59d2: $32
    call c, $d2f1                                 ; $59d3: $dc $f1 $d2
    ret c                                         ; $59d6: $d8

    or $25                                        ; $59d7: $f6 $25
    sub [hl]                                      ; $59d9: $96
    add d                                         ; $59da: $82
    jr nc, jr_022_59e5                            ; $59db: $30 $08

    ld hl, $bf2f                                  ; $59dd: $21 $2f $bf
    cp $0e                                        ; $59e0: $fe $0e
    db $f4                                        ; $59e2: $f4
    or d                                          ; $59e3: $b2
    ld l, [hl]                                    ; $59e4: $6e

jr_022_59e5:
    ld c, a                                       ; $59e5: $4f
    ld l, [hl]                                    ; $59e6: $6e
    and h                                         ; $59e7: $a4
    reti                                          ; $59e8: $d9


    ld d, a                                       ; $59e9: $57
    ld c, c                                       ; $59ea: $49
    add hl, de                                    ; $59eb: $19
    sbc $6a                                       ; $59ec: $de $6a
    ld l, l                                       ; $59ee: $6d
    db $d3                                        ; $59ef: $d3
    ld l, [hl]                                    ; $59f0: $6e
    rst $00                                       ; $59f1: $c7
    ld e, a                                       ; $59f2: $5f
    db $db                                        ; $59f3: $db
    ld [$ecf8], sp                                ; $59f4: $08 $f8 $ec
    adc h                                         ; $59f7: $8c
    ld sp, $4bf9                                  ; $59f8: $31 $f9 $4b
    pop bc                                        ; $59fb: $c1
    cp h                                          ; $59fc: $bc
    db $fc                                        ; $59fd: $fc
    ld e, d                                       ; $59fe: $5a
    ld d, d                                       ; $59ff: $52
    dec sp                                        ; $5a00: $3b
    dec sp                                        ; $5a01: $3b
    ld a, [hl-]                                   ; $5a02: $3a
    ld e, [hl]                                    ; $5a03: $5e
    adc [hl]                                      ; $5a04: $8e
    inc e                                         ; $5a05: $1c
    ld d, l                                       ; $5a06: $55
    ret c                                         ; $5a07: $d8

    jp nc, Jump_022_7f5e                          ; $5a08: $d2 $5e $7f

    rlca                                          ; $5a0b: $07
    inc e                                         ; $5a0c: $1c
    ld [hl], d                                    ; $5a0d: $72
    jr z, @+$44                                   ; $5a0e: $28 $42

    ld [$ad03], sp                                ; $5a10: $08 $03 $ad
    ld a, [hl+]                                   ; $5a13: $2a
    jp nc, $d770                                  ; $5a14: $d2 $70 $d7

    and h                                         ; $5a17: $a4
    add hl, de                                    ; $5a18: $19
    cp b                                          ; $5a19: $b8
    adc d                                         ; $5a1a: $8a
    rst $00                                       ; $5a1b: $c7

jr_022_5a1c:
    ld h, a                                       ; $5a1c: $67
    dec bc                                        ; $5a1d: $0b
    cp a                                          ; $5a1e: $bf
    res 1, [hl]                                   ; $5a1f: $cb $8e
    ld [hl], $3e                                  ; $5a21: $36 $3e
    set 7, b                                      ; $5a23: $cb $f8
    and h                                         ; $5a25: $a4
    sbc d                                         ; $5a26: $9a
    adc a                                         ; $5a27: $8f
    dec a                                         ; $5a28: $3d
    inc sp                                        ; $5a29: $33
    sub l                                         ; $5a2a: $95
    rst $28                                       ; $5a2b: $ef
    add hl, sp                                    ; $5a2c: $39
    cp b                                          ; $5a2d: $b8
    add sp, $4a                                   ; $5a2e: $e8 $4a
    ld a, [de]                                    ; $5a30: $1a
    ld hl, sp+$75                                 ; $5a31: $f8 $75
    ld a, [c]                                     ; $5a33: $f2
    sub d                                         ; $5a34: $92
    inc bc                                        ; $5a35: $03
    ld [hl], a                                    ; $5a36: $77
    rst $20                                       ; $5a37: $e7
    add hl, de                                    ; $5a38: $19
    ldh a, [$79]                                  ; $5a39: $f0 $79
    ld sp, hl                                     ; $5a3b: $f9
    add hl, de                                    ; $5a3c: $19
    jr nc, @+$1c                                  ; $5a3d: $30 $1a

    ld [hl], a                                    ; $5a3f: $77
    ret nc                                        ; $5a40: $d0

    db $ec                                        ; $5a41: $ec
    sub h                                         ; $5a42: $94
    ld e, l                                       ; $5a43: $5d
    ld a, [c]                                     ; $5a44: $f2
    rla                                           ; $5a45: $17
    ld sp, $bf1d                                  ; $5a46: $31 $1d $bf
    inc d                                         ; $5a49: $14
    jr nz, @+$0e                                  ; $5a4a: $20 $0c

    ld b, a                                       ; $5a4c: $47
    ld b, l                                       ; $5a4d: $45
    ld e, [hl]                                    ; $5a4e: $5e
    dec de                                        ; $5a4f: $1b
    sbc b                                         ; $5a50: $98
    jp nc, $524a                                  ; $5a51: $d2 $4a $52

    jp z, Jump_022_573c                           ; $5a54: $ca $3c $57

    call nc, $6bfa                                ; $5a57: $d4 $fa $6b
    jp nc, $498c                                  ; $5a5a: $d2 $8c $49

    halt                                          ; $5a5d: $76
    sub $6e                                       ; $5a5e: $d6 $6e
    ld d, $36                                     ; $5a60: $16 $36
    xor e                                         ; $5a62: $ab
    and d                                         ; $5a63: $a2
    ld [bc], a                                    ; $5a64: $02
    and b                                         ; $5a65: $a0
    or l                                          ; $5a66: $b5
    and h                                         ; $5a67: $a4
    ld c, b                                       ; $5a68: $48
    inc sp                                        ; $5a69: $33
    ld l, l                                       ; $5a6a: $6d
    and a                                         ; $5a6b: $a7
    pop af                                        ; $5a6c: $f1
    ld a, c                                       ; $5a6d: $79
    ld sp, hl                                     ; $5a6e: $f9
    dec e                                         ; $5a6f: $1d
    or h                                          ; $5a70: $b4
    ld c, [hl]                                    ; $5a71: $4e
    ld e, [hl]                                    ; $5a72: $5e
    ld a, [c]                                     ; $5a73: $f2
    ld [hl], l                                    ; $5a74: $75
    sbc [hl]                                      ; $5a75: $9e
    inc [hl]                                      ; $5a76: $34
    ld a, d                                       ; $5a77: $7a
    inc sp                                        ; $5a78: $33
    dec sp                                        ; $5a79: $3b
    ld h, l                                       ; $5a7a: $65
    sub a                                         ; $5a7b: $97
    db $fc                                        ; $5a7c: $fc
    ld b, l                                       ; $5a7d: $45
    ld c, h                                       ; $5a7e: $4c
    rst $00                                       ; $5a7f: $c7
    cpl                                           ; $5a80: $2f
    dec b                                         ; $5a81: $05
    cp e                                          ; $5a82: $bb
    adc [hl]                                      ; $5a83: $8e
    jr nc, jr_022_5a1c                            ; $5a84: $30 $96

    add c                                         ; $5a86: $81
    ld a, [c]                                     ; $5a87: $f2
    db $d3                                        ; $5a88: $d3
    adc c                                         ; $5a89: $89

Call_022_5a8a:
    or [hl]                                       ; $5a8a: $b6
    db $db                                        ; $5a8b: $db
    rst $10                                       ; $5a8c: $d7
    rla                                           ; $5a8d: $17
    db $e4                                        ; $5a8e: $e4
    jp nc, $bcf8                                  ; $5a8f: $d2 $f8 $bc

jr_022_5a92:
    db $fc                                        ; $5a92: $fc
    ld l, h                                       ; $5a93: $6c
    ld c, c                                       ; $5a94: $49
    ld a, [c]                                     ; $5a95: $f2

Jump_022_5a96:
    or c                                          ; $5a96: $b1
    ld c, h                                       ; $5a97: $4c
    pop hl                                        ; $5a98: $e1
    xor [hl]                                      ; $5a99: $ae
    ld l, l                                       ; $5a9a: $6d
    ld a, h                                       ; $5a9b: $7c
    sub [hl]                                      ; $5a9c: $96
    ld a, c                                       ; $5a9d: $79
    ld c, c                                       ; $5a9e: $49
    inc de                                        ; $5a9f: $13
    inc d                                         ; $5aa0: $14
    rst $18                                       ; $5aa1: $df
    push af                                       ; $5aa2: $f5
    pop af                                        ; $5aa3: $f1
    ld a, [bc]                                    ; $5aa4: $0a
    dec bc                                        ; $5aa5: $0b
    ld d, e                                       ; $5aa6: $53
    ld a, [hl]                                    ; $5aa7: $7e
    ld l, c                                       ; $5aa8: $69
    ld c, a                                       ; $5aa9: $4f
    rla                                           ; $5aaa: $17
    push de                                       ; $5aab: $d5
    ld a, [$5ec4]                                 ; $5aac: $fa $c4 $5e
    db $10                                        ; $5aaf: $10
    ld b, $a7                                     ; $5ab0: $06 $a7
    inc h                                         ; $5ab2: $24

jr_022_5ab3:
    ld [hl], a                                    ; $5ab3: $77
    ld l, l                                       ; $5ab4: $6d
    db $e3                                        ; $5ab5: $e3
    or e                                          ; $5ab6: $b3
    xor h                                         ; $5ab7: $ac
    xor b                                         ; $5ab8: $a8
    push af                                       ; $5ab9: $f5
    xor c                                         ; $5aba: $a9
    and $93                                       ; $5abb: $e6 $93
    rst $10                                       ; $5abd: $d7
    jr @-$63                                      ; $5abe: $18 $9b

    or l                                          ; $5ac0: $b5
    rst $38                                       ; $5ac1: $ff
    ld l, c                                       ; $5ac2: $69
    dec e                                         ; $5ac3: $1d
    ld l, l                                       ; $5ac4: $6d
    ld l, $05                                     ; $5ac5: $2e $05
    ld d, e                                       ; $5ac7: $53
    rst $30                                       ; $5ac8: $f7
    daa                                           ; $5ac9: $27
    cp a                                          ; $5aca: $bf
    ld c, c                                       ; $5acb: $49
    ld [$a703], sp                                ; $5acc: $08 $03 $a7
    inc h                                         ; $5acf: $24
    jp c, $c6d1                                   ; $5ad0: $da $d1 $c6

    ld [hl], a                                    ; $5ad3: $77
    db $ed                                        ; $5ad4: $ed
    ld a, c                                       ; $5ad5: $79
    ld a, c                                       ; $5ad6: $79
    ld sp, hl                                     ; $5ad7: $f9
    ld a, [de]                                    ; $5ad8: $1a
    inc l                                         ; $5ad9: $2c

Jump_022_5ada:
    jp hl                                         ; $5ada: $e9


    ld [hl], a                                    ; $5adb: $77
    ld l, c                                       ; $5adc: $69
    ld e, [hl]                                    ; $5add: $5e
    ld a, [hl]                                    ; $5ade: $7e
    ld d, b                                       ; $5adf: $50
    sub l                                         ; $5ae0: $95
    call z, $9dc8                                 ; $5ae1: $cc $c8 $9d
    ld h, l                                       ; $5ae4: $65
    db $ed                                        ; $5ae5: $ed
    rst $30                                       ; $5ae6: $f7
    ld e, l                                       ; $5ae7: $5d
    xor a                                         ; $5ae8: $af
    pop bc                                        ; $5ae9: $c1
    ld e, h                                       ; $5aea: $5c
    sbc d                                         ; $5aeb: $9a
    ld c, e                                       ; $5aec: $4b
    pop bc                                        ; $5aed: $c1
    inc a                                         ; $5aee: $3c
    ld h, a                                       ; $5aef: $67
    ld e, a                                       ; $5af0: $5f
    ld h, d                                       ; $5af1: $62

Jump_022_5af2:
    db $d3                                        ; $5af2: $d3

jr_022_5af3:
    pop af                                        ; $5af3: $f1
    jp c, $8d2c                                   ; $5af4: $da $2c $8d

    jp $8f65                                      ; $5af7: $c3 $65 $8f


    jr nc, jr_022_5a92                            ; $5afa: $30 $96

    sbc d                                         ; $5afc: $9a
    push af                                       ; $5afd: $f5
    ld b, a                                       ; $5afe: $47
    ld l, a                                       ; $5aff: $6f
    ld a, l                                       ; $5b00: $7d
    add hl, de                                    ; $5b01: $19
    db $fc                                        ; $5b02: $fc
    db $d3                                        ; $5b03: $d3
    ld [hl], h                                    ; $5b04: $74
    dec e                                         ; $5b05: $1d
    inc hl                                        ; $5b06: $23
    sbc l                                         ; $5b07: $9d
    ld hl, sp+$13                                 ; $5b08: $f8 $13
    ld l, l                                       ; $5b0a: $6d
    or a                                          ; $5b0b: $b7
    xor a                                         ; $5b0c: $af
    and e                                         ; $5b0d: $a3
    ld e, c                                       ; $5b0e: $59
    ld b, [hl]                                    ; $5b0f: $46
    ld l, a                                       ; $5b10: $6f
    ld a, l                                       ; $5b11: $7d
    ld e, c                                       ; $5b12: $59
    ret                                           ; $5b13: $c9


    adc $cf                                       ; $5b14: $ce $cf
    ld [hl], e                                    ; $5b16: $73
    ldh a, [$bf]                                  ; $5b17: $f0 $bf
    and h                                         ; $5b19: $a4
    ld b, a                                       ; $5b1a: $47
    jr jr_022_5ab3                                ; $5b1b: $18 $96

    add c                                         ; $5b1d: $81
    ld a, [c]                                     ; $5b1e: $f2
    ld c, e                                       ; $5b1f: $4b
    ld a, [$9a5d]                                 ; $5b20: $fa $5d $9a
    adc [hl]                                      ; $5b23: $8e
    ret                                           ; $5b24: $c9


    ld l, e                                       ; $5b25: $6b
    jr c, jr_022_5af3                             ; $5b26: $38 $cb

    adc d                                         ; $5b28: $8a
    or d                                          ; $5b29: $b2
    xor c                                         ; $5b2a: $a9
    db $ed                                        ; $5b2b: $ed
    cpl                                           ; $5b2c: $2f
    or e                                          ; $5b2d: $b3
    ld c, h                                       ; $5b2e: $4c
    db $fd                                        ; $5b2f: $fd
    rst $20                                       ; $5b30: $e7
    sbc c                                         ; $5b31: $99
    dec bc                                        ; $5b32: $0b
    sub l                                         ; $5b33: $95
    sbc d                                         ; $5b34: $9a
    ld [hl], l                                    ; $5b35: $75
    ld c, h                                       ; $5b36: $4c
    ret c                                         ; $5b37: $d8

    xor c                                         ; $5b38: $a9
    ld e, a                                       ; $5b39: $5f
    ld e, d                                       ; $5b3a: $5a
    ld b, a                                       ; $5b3b: $47
    pop bc                                        ; $5b3c: $c1
    rst $28                                       ; $5b3d: $ef
    inc bc                                        ; $5b3e: $03
    jp nz, Jump_000_24a7                          ; $5b3f: $c2 $a7 $24

    ld [hl], a                                    ; $5b42: $77
    rst $20                                       ; $5b43: $e7
    add hl, de                                    ; $5b44: $19
    ldh a, [$75]                                  ; $5b45: $f0 $75
    adc h                                         ; $5b47: $8c
    ld [hl], h                                    ; $5b48: $74
    ld [c], a                                     ; $5b49: $e2
    rst $08                                       ; $5b4a: $cf
    ld d, e                                       ; $5b4b: $53
    add hl, de                                    ; $5b4c: $19
    jr nz, jr_022_5b5b                            ; $5b4d: $20 $0c

    and a                                         ; $5b4f: $a7
    inc h                                         ; $5b50: $24
    jp c, Jump_022_54a9                           ; $5b51: $da $a9 $54

    db $fd                                        ; $5b54: $fd
    inc l                                         ; $5b55: $2c
    inc bc                                        ; $5b56: $03
    push hl                                       ; $5b57: $e5
    and a                                         ; $5b58: $a7
    or h                                          ; $5b59: $b4
    rrca                                          ; $5b5a: $0f

jr_022_5b5b:
    add d                                         ; $5b5b: $82
    ld c, [hl]                                    ; $5b5c: $4e
    ld d, h                                       ; $5b5d: $54
    ld a, [c]                                     ; $5b5e: $f2
    ld b, c                                       ; $5b5f: $41
    pop de                                        ; $5b60: $d1
    adc $b3                                       ; $5b61: $ce $b3
    push bc                                       ; $5b63: $c5
    ld e, e                                       ; $5b64: $5b
    rst $38                                       ; $5b65: $ff
    jp hl                                         ; $5b66: $e9


    ld b, h                                       ; $5b67: $44
    db $db                                        ; $5b68: $db
    db $ed                                        ; $5b69: $ed
    db $eb                                        ; $5b6a: $eb
    call c, Call_022_4979                         ; $5b6b: $dc $79 $49
    inc de                                        ; $5b6e: $13
    inc d                                         ; $5b6f: $14
    add h                                         ; $5b70: $84
    ld bc, $b196                                  ; $5b71: $01 $96 $b1
    and h                                         ; $5b74: $a4
    sbc d                                         ; $5b75: $9a
    xor a                                         ; $5b76: $af
    ld c, [hl]                                    ; $5b77: $4e
    ret                                           ; $5b78: $c9


    adc a                                         ; $5b79: $8f
    cpl                                           ; $5b7a: $2f
    ld [$d26b], a                                 ; $5b7b: $ea $6b $d2
    call nc, $e7e4                                ; $5b7e: $d4 $e4 $e7
    ld a, [de]                                    ; $5b81: $1a
    db $eb                                        ; $5b82: $eb
    sub a                                         ; $5b83: $97
    add d                                         ; $5b84: $82
    ld l, c                                       ; $5b85: $69
    dec sp                                        ; $5b86: $3b
    adc l                                         ; $5b87: $8d
    inc hl                                        ; $5b88: $23
    inc c                                         ; $5b89: $0c
    xor l                                         ; $5b8a: $ad
    ld l, d                                       ; $5b8b: $6a
    db $fd                                        ; $5b8c: $fd
    dec [hl]                                      ; $5b8d: $35
    ld l, c                                       ; $5b8e: $69
    ld b, $ff                                     ; $5b8f: $06 $ff
    inc [hl]                                      ; $5b91: $34
    ld e, l                                       ; $5b92: $5d
    rst $00                                       ; $5b93: $c7
    ld c, b                                       ; $5b94: $48
    daa                                           ; $5b95: $27
    cp $44                                        ; $5b96: $fe $44
    db $db                                        ; $5b98: $db
    db $ed                                        ; $5b99: $ed
    db $eb                                        ; $5b9a: $eb
    ld e, l                                       ; $5b9b: $5d
    ld sp, $24a7                                  ; $5b9c: $31 $a7 $24
    jp c, $dac9                                   ; $5b9f: $da $c9 $da

    or h                                          ; $5ba2: $b4
    ld a, a                                       ; $5ba3: $7f
    ld c, l                                       ; $5ba4: $4d
    sbc d                                         ; $5ba5: $9a
    ld d, l                                       ; $5ba6: $55
    ld l, c                                       ; $5ba7: $69
    ld [hl+], a                                   ; $5ba8: $22
    sbc e                                         ; $5ba9: $9b
    ld a, l                                       ; $5baa: $7d
    adc c                                         ; $5bab: $89
    dec l                                         ; $5bac: $2d
    jp hl                                         ; $5bad: $e9


    ld [hl], a                                    ; $5bae: $77
    db $ed                                        ; $5baf: $ed
    dec [hl]                                      ; $5bb0: $35
    ld l, c                                       ; $5bb1: $69
    ld d, [hl]                                    ; $5bb2: $56
    sub h                                         ; $5bb3: $94
    ld c, l                                       ; $5bb4: $4d
    rst $10                                       ; $5bb5: $d7
    ld sp, $89d2                                  ; $5bb6: $31 $d2 $89
    cp a                                          ; $5bb9: $bf
    ld c, d                                       ; $5bba: $4a
    ld b, l                                       ; $5bbb: $45
    jp nc, $0611                                  ; $5bbc: $d2 $11 $06

    sub [hl]                                      ; $5bbf: $96
    add c                                         ; $5bc0: $81
    ld a, [c]                                     ; $5bc1: $f2
    ld c, e                                       ; $5bc2: $4b
    ld a, [$5179]                                 ; $5bc3: $fa $79 $51
    rra                                           ; $5bc6: $1f
    xor a                                         ; $5bc7: $af
    or b                                          ; $5bc8: $b0
    ld a, b                                       ; $5bc9: $78
    xor l                                         ; $5bca: $ad
    sub a                                         ; $5bcb: $97
    adc l                                         ; $5bcc: $8d
    cp a                                          ; $5bcd: $bf
    ld e, [hl]                                    ; $5bce: $5e
    and [hl]                                      ; $5bcf: $a6
    inc d                                         ; $5bd0: $14
    cp h                                          ; $5bd1: $bc
    inc l                                         ; $5bd2: $2c
    xor c                                         ; $5bd3: $a9
    ld a, d                                       ; $5bd4: $7a
    xor $da                                       ; $5bd5: $ee $da
    add $77                                       ; $5bd7: $c6 $77
    ld a, l                                       ; $5bd9: $7d
    cp h                                          ; $5bda: $bc
    ld [bc], a                                    ; $5bdb: $02
    push de                                       ; $5bdc: $d5
    ld a, h                                       ; $5bdd: $7c
    rst $20                                       ; $5bde: $e7
    sbc e                                         ; $5bdf: $9b
    db $eb                                        ; $5be0: $eb
    cp a                                          ; $5be1: $bf
    adc [hl]                                      ; $5be2: $8e
    sub c                                         ; $5be3: $91
    ld c, [hl]                                    ; $5be4: $4e
    ld a, h                                       ; $5be5: $7c
    add h                                         ; $5be6: $84

jr_022_5be7:
    ld bc, $24a7                                  ; $5be7: $01 $a7 $24
    jp c, $dac9                                   ; $5bea: $da $c9 $da

    or h                                          ; $5bed: $b4
    ld a, a                                       ; $5bee: $7f
    ld c, l                                       ; $5bef: $4d
    sbc d                                         ; $5bf0: $9a
    ld b, c                                       ; $5bf1: $41
    ld c, c                                       ; $5bf2: $49
    inc de                                        ; $5bf3: $13
    reti                                          ; $5bf4: $d9


    ld h, d                                       ; $5bf5: $62
    ld h, [hl]                                    ; $5bf6: $66
    ld a, l                                       ; $5bf7: $7d
    ld l, c                                       ; $5bf8: $69
    inc e                                         ; $5bf9: $1c
    ld l, $7b                                     ; $5bfa: $2e $7b
    or h                                          ; $5bfc: $b4
    db $d3                                        ; $5bfd: $d3
    or l                                          ; $5bfe: $b5
    db $dd                                        ; $5bff: $dd
    cp [hl]                                       ; $5c00: $be
    ld c, $2b                                     ; $5c01: $0e $2b
    ld [$cf3f], a                                 ; $5c03: $ea $3f $cf
    ld d, l                                       ; $5c06: $55
    pop af                                        ; $5c07: $f1
    add [hl]                                      ; $5c08: $86
    db $ed                                        ; $5c09: $ed
    add c                                         ; $5c0a: $81
    db $eb                                        ; $5c0b: $eb
    dec d                                         ; $5c0c: $15
    ld b, b                                       ; $5c0d: $40
    jr @-$57                                      ; $5c0e: $18 $a7

    inc h                                         ; $5c10: $24
    ld e, d                                       ; $5c11: $5a
    ld c, e                                       ; $5c12: $4b
    ld c, c                                       ; $5c13: $49
    inc de                                        ; $5c14: $13
    reti                                          ; $5c15: $d9


    inc l                                         ; $5c16: $2c
    dec hl                                        ; $5c17: $2b
    ld l, d                                       ; $5c18: $6a
    db $fd                                        ; $5c19: $fd
    xor [hl]                                      ; $5c1a: $ae
    jr @-$57                                      ; $5c1b: $18 $a7

    inc h                                         ; $5c1d: $24
    ld [hl], a                                    ; $5c1e: $77
    ld l, l                                       ; $5c1f: $6d
    db $e3                                        ; $5c20: $e3
    cp e                                          ; $5c21: $bb
    or $2c                                        ; $5c22: $f6 $2c
    ld h, e                                       ; $5c24: $63
    ret                                           ; $5c25: $c9


    sbc l                                         ; $5c26: $9d
    and l                                         ; $5c27: $a5
    ld d, $e3                                     ; $5c28: $16 $e3
    db $fc                                        ; $5c2a: $fc
    ld h, e                                       ; $5c2b: $63
    call c, $35f5                                 ; $5c2c: $dc $f5 $35
    ld l, c                                       ; $5c2f: $69
    ld l, d                                       ; $5c30: $6a
    ld a, [c]                                     ; $5c31: $f2
    adc e                                         ; $5c32: $8b
    sbc c                                         ; $5c33: $99
    push af                                       ; $5c34: $f5
    ld c, e                                       ; $5c35: $4b
    pop bc                                        ; $5c36: $c1
    db $ec                                        ; $5c37: $ec

Jump_022_5c38:
    sub h                                         ; $5c38: $94
    sub l                                         ; $5c39: $95
    dec de                                        ; $5c3a: $1b
    ld [hl+], a                                   ; $5c3b: $22
    inc c                                         ; $5c3c: $0c
    sub [hl]                                      ; $5c3d: $96
    ld b, c                                       ; $5c3e: $41
    ld c, c                                       ; $5c3f: $49
    inc de                                        ; $5c40: $13
    reti                                          ; $5c41: $d9


    ld b, b                                       ; $5c42: $40
    sbc e                                         ; $5c43: $9b
    ld d, c                                       ; $5c44: $51
    ld a, d                                       ; $5c45: $7a
    rla                                           ; $5c46: $17
    inc c                                         ; $5c47: $0c
    dec a                                         ; $5c48: $3d
    adc e                                         ; $5c49: $8b
    ld a, [$34f8]                                 ; $5c4a: $fa $f8 $34
    sub c                                         ; $5c4d: $91
    ld c, l                                       ; $5c4e: $4d
    daa                                           ; $5c4f: $27
    jp c, Jump_022_5f6e                           ; $5c50: $da $6e $5f

    ld e, a                                       ; $5c53: $5f
    ei                                            ; $5c54: $fb
    rst $00                                       ; $5c55: $c7
    ld a, [c]                                     ; $5c56: $f2
    ld d, d                                       ; $5c57: $52
    jr nc, jr_022_5be7                            ; $5c58: $30 $8d

    ld [hl], c                                    ; $5c5a: $71
    ld e, [hl]                                    ; $5c5b: $5e
    ld a, [hl]                                    ; $5c5c: $7e
    cp h                                          ; $5c5d: $bc
    ld [hl], $33                                  ; $5c5e: $36 $33
    sbc l                                         ; $5c60: $9d
    sub l                                         ; $5c61: $95
    sub a                                         ; $5c62: $97
    rst $28                                       ; $5c63: $ef
    adc d                                         ; $5c64: $8a
    ld bc, $1596                                  ; $5c65: $01 $96 $15
    or l                                          ; $5c68: $b5
    ld a, $d5                                     ; $5c69: $3e $d5
    ld a, h                                       ; $5c6b: $7c
    ldh a, [rVBK]                                 ; $5c6c: $f0 $4f
    db $d3                                        ; $5c6e: $d3
    adc c                                         ; $5c6f: $89
    or [hl]                                       ; $5c70: $b6
    db $db                                        ; $5c71: $db
    rst $10                                       ; $5c72: $d7
    and a                                         ; $5c73: $a7
    ld a, $8d                                     ; $5c74: $3e $8d
    ld de, $a761                                  ; $5c76: $11 $61 $a7
    inc h                                         ; $5c79: $24
    jp c, Jump_022_49e9                           ; $5c7a: $da $e9 $49

    db $eb                                        ; $5c7d: $eb
    ld sp, hl                                     ; $5c7e: $f9
    ld a, [bc]                                    ; $5c7f: $0a
    pop af                                        ; $5c80: $f1
    sbc e                                         ; $5c81: $9b
    dec d                                         ; $5c82: $15
    add l                                         ; $5c83: $85
    jp hl                                         ; $5c84: $e9


    ld [$d897], a                                 ; $5c85: $ea $97 $d8
    jp nc, $f35e                                  ; $5c88: $d2 $5e $f3

    ld sp, $7f26                                  ; $5c8b: $31 $26 $7f
    and c                                         ; $5c8e: $a1

jr_022_5c8f:
    ld c, h                                       ; $5c8f: $4c
    call nc, Call_022_7ad1                        ; $5c90: $d4 $d1 $7a
    sbc $18                                       ; $5c93: $de $18
    rst $20                                       ; $5c95: $e7
    ld b, l                                       ; $5c96: $45
    ld a, l                                       ; $5c97: $7d
    inc l                                         ; $5c98: $2c
    cp e                                          ; $5c99: $bb
    ld h, d                                       ; $5c9a: $62
    cp l                                          ; $5c9b: $bd
    jp nc, $4a0c                                  ; $5c9c: $d2 $0c $4a

    sbc d                                         ; $5c9f: $9a
    ret z                                         ; $5ca0: $c8

    ld d, $e4                                     ; $5ca1: $16 $e4
    jp nc, Jump_022_5c38                          ; $5ca3: $d2 $38 $5c

    or $68                                        ; $5ca6: $f6 $68
    cp l                                          ; $5ca8: $bd
    jp nc, $d20c                                  ; $5ca9: $d2 $0c $d2

    db $10                                        ; $5cac: $10
    ld e, e                                       ; $5cad: $5b
    cp h                                          ; $5cae: $bc
    push af                                       ; $5caf: $f5
    ld e, a                                       ; $5cb0: $5f
    sub e                                         ; $5cb1: $93
    ld h, [hl]                                    ; $5cb2: $66
    db $f4                                        ; $5cb3: $f4
    rst $08                                       ; $5cb4: $cf
    ld b, $19                                     ; $5cb5: $06 $19
    cp $6c                                        ; $5cb7: $fe $6c
    ld a, c                                       ; $5cb9: $79
    jr z, jr_022_5c8f                             ; $5cba: $28 $d3

    dec hl                                        ; $5cbc: $2b
    ld [$4703], sp                                ; $5cbd: $08 $03 $47
    ret                                           ; $5cc0: $c9


    xor a                                         ; $5cc1: $af
    ld c, c                                       ; $5cc2: $49
    inc sp                                        ; $5cc3: $33
    adc l                                         ; $5cc4: $8d
    ld [hl], c                                    ; $5cc5: $71
    ld [hl], d                                    ; $5cc6: $72

Jump_022_5cc7:
    add e                                         ; $5cc7: $83
    ld [c], a                                     ; $5cc8: $e2
    call c, $aab5                                 ; $5cc9: $dc $b5 $aa
    ld c, b                                       ; $5ccc: $48
    db $d3                                        ; $5ccd: $d3
    dec d                                         ; $5cce: $15
    inc bc                                        ; $5ccf: $03
    sub [hl]                                      ; $5cd0: $96
    sbc l                                         ; $5cd1: $9d
    ld h, a                                       ; $5cd2: $67
    ret nz                                        ; $5cd3: $c0

    rla                                           ; $5cd4: $17
    inc sp                                        ; $5cd5: $33
    db $eb                                        ; $5cd6: $eb
    rst $08                                       ; $5cd7: $cf
    sub [hl]                                      ; $5cd8: $96
    add $a7                                       ; $5cd9: $c6 $a7
    db $e3                                        ; $5cdb: $e3
    cpl                                           ; $5cdc: $2f
    or c                                          ; $5cdd: $b1
    db $e4                                        ; $5cde: $e4
    and a                                         ; $5cdf: $a7
    call nz, $ca06                                ; $5ce0: $c4 $06 $ca
    rrca                                          ; $5ce3: $0f
    ld [hl-], a                                   ; $5ce4: $32
    ld a, h                                       ; $5ce5: $7c
    cpl                                           ; $5ce6: $2f
    sub a                                         ; $5ce7: $97
    add d                                         ; $5ce8: $82
    ld [hl], l                                    ; $5ce9: $75
    adc h                                         ; $5cea: $8c
    ld [hl], h                                    ; $5ceb: $74
    ld [c], a                                     ; $5cec: $e2
    ld c, a                                       ; $5ced: $4f
    inc c                                         ; $5cee: $0c
    pop de                                        ; $5cef: $d1
    and l                                         ; $5cf0: $a5
    ld h, b                                       ; $5cf1: $60
    ld a, [hl+]                                   ; $5cf2: $2a
    ld l, c                                       ; $5cf3: $69
    adc b                                         ; $5cf4: $88
    dec l                                         ; $5cf5: $2d
    adc l                                         ; $5cf6: $8d
    jp $8f65                                      ; $5cf7: $c3 $65 $8f


    jr nc, @+$18                                  ; $5cfa: $30 $16

    ld h, d                                       ; $5cfc: $62
    rst $38                                       ; $5cfd: $ff
    ld l, h                                       ; $5cfe: $6c
    sub [hl]                                      ; $5cff: $96
    dec d                                         ; $5d00: $15
    or l                                          ; $5d01: $b5
    cp $28                                        ; $5d02: $fe $28
    cp l                                          ; $5d04: $bd
    dec bc                                        ; $5d05: $0b
    ld b, $2d                                     ; $5d06: $06 $2d
    and l                                         ; $5d08: $a5
    ld [hl], h                                    ; $5d09: $74
    sbc c                                         ; $5d0a: $99
    and l                                         ; $5d0b: $a5
    ld d, $ce                                     ; $5d0c: $16 $ce
    and l                                         ; $5d0e: $a5
    cp c                                          ; $5d0f: $b9
    inc d                                         ; $5d10: $14
    call z, $1d73                                 ; $5d11: $cc $73 $1d
    ld l, l                                       ; $5d14: $6d
    and [hl]                                      ; $5d15: $a6
    xor $4f                                       ; $5d16: $ee $4f

jr_022_5d18:
    ld a, [hl]                                    ; $5d18: $7e
    sub e                                         ; $5d19: $93
    and $39                                       ; $5d1a: $e6 $39
    cpl                                           ; $5d1c: $2f
    cp a                                          ; $5d1d: $bf
    adc [hl]                                      ; $5d1e: $8e
    and h                                         ; $5d1f: $a4
    db $fd                                        ; $5d20: $fd
    nop                                           ; $5d21: $00
    add hl, hl                                    ; $5d22: $29
    ld e, l                                       ; $5d23: $5d
    jr nc, @+$18                                  ; $5d24: $30 $16

    ld a, e                                       ; $5d26: $7b
    ld c, l                                       ; $5d27: $4d
    sbc d                                         ; $5d28: $9a
    push bc                                       ; $5d29: $c5
    ld e, e                                       ; $5d2a: $5b
    ld a, a                                       ; $5d2b: $7f
    xor $2c                                       ; $5d2c: $ee $2c
    or l                                          ; $5d2e: $b5
    jr jr_022_5d18                                ; $5d2f: $18 $e7

    ld e, d                                       ; $5d31: $5a
    rst $38                                       ; $5d32: $ff
    ld d, c                                       ; $5d33: $51
    ld a, [$94c3]                                 ; $5d34: $fa $c3 $94
    ret c                                         ; $5d37: $d8

    sbc [hl]                                      ; $5d38: $9e
    ld b, e                                       ; $5d39: $43
    daa                                           ; $5d3a: $27
    ld [$79a5], a                                 ; $5d3b: $ea $a5 $79
    ld sp, hl                                     ; $5d3e: $f9
    ld [hl], b                                    ; $5d3f: $70
    sbc [hl]                                      ; $5d40: $9e
    ld l, e                                       ; $5d41: $6b
    jp nc, $aa2c                                  ; $5d42: $d2 $2c $aa

    cp a                                          ; $5d45: $bf
    jr nz, jr_022_5d54                            ; $5d46: $20 $0c

    ld d, $7b                                     ; $5d48: $16 $7b
    ld c, l                                       ; $5d4a: $4d
    sbc d                                         ; $5d4b: $9a
    pop de                                        ; $5d4c: $d1
    ccf                                           ; $5d4d: $3f
    ld e, e                                       ; $5d4e: $5b
    ld hl, sp-$0d                                 ; $5d4f: $f8 $f3
    call c, $e873                                 ; $5d51: $dc $73 $e8

jr_022_5d54:
    ld b, h                                       ; $5d54: $44
    cp l                                          ; $5d55: $bd
    inc [hl]                                      ; $5d56: $34
    ret z                                         ; $5d57: $c8

    ldh a, [$bd]                                  ; $5d58: $f0 $bd
    ld e, h                                       ; $5d5a: $5c
    ld a, [bc]                                    ; $5d5b: $0a
    and $b9                                       ; $5d5c: $e6 $b9
    ld h, $0d                                     ; $5d5e: $26 $0d
    ld [hl], a                                    ; $5d60: $77
    cp h                                          ; $5d61: $bc
    ld e, [hl]                                    ; $5d62: $5e
    sbc a                                         ; $5d63: $9f
    ld hl, $71bf                                  ; $5d64: $21 $bf $71
    ld l, d                                       ; $5d67: $6a
    ei                                            ; $5d68: $fb
    res 5, d                                      ; $5d69: $cb $aa
    xor b                                         ; $5d6b: $a8
    nop                                           ; $5d6c: $00
    ld e, l                                       ; $5d6d: $5d
    jr nc, jr_022_5d9d                            ; $5d6e: $30 $2d

    and l                                         ; $5d70: $a5
    ld [hl], h                                    ; $5d71: $74
    ld e, c                                       ; $5d72: $59
    adc a                                         ; $5d73: $8f
    ld a, [c]                                     ; $5d74: $f2
    db $eb                                        ; $5d75: $eb
    ld c, b                                       ; $5d76: $48
    jp c, $900f                                   ; $5d77: $da $0f $90

    or d                                          ; $5d7a: $b2
    ldh a, [rTMA]                                 ; $5d7b: $f0 $06
    push bc                                       ; $5d7d: $c5
    rlca                                          ; $5d7e: $07
    jp c, Jump_000_320c                           ; $5d7f: $da $0c $32

    ld a, h                                       ; $5d82: $7c
    cpl                                           ; $5d83: $2f
    sub a                                         ; $5d84: $97

Jump_022_5d85:
    add d                                         ; $5d85: $82
    db $dd                                        ; $5d86: $dd
    or b                                          ; $5d87: $b0
    sub e                                         ; $5d88: $93
    ld [c], a                                     ; $5d89: $e2
    ld c, d                                       ; $5d8a: $4a
    ld a, $25                                     ; $5d8b: $3e $25
    ld [hl], $cb                                  ; $5d8d: $36 $cb

Jump_022_5d8f:
    ld e, b                                       ; $5d8f: $58

jr_022_5d90:
    ld d, d                                       ; $5d90: $52
    call Call_000_2bc7                            ; $5d91: $cd $c7 $2b
    ld sp, hl                                     ; $5d94: $f9
    inc a                                         ; $5d95: $3c
    rla                                           ; $5d96: $17
    ld e, [hl]                                    ; $5d97: $5e
    add b                                         ; $5d98: $80
    ld e, l                                       ; $5d99: $5d
    ld b, a                                       ; $5d9a: $47
    jr jr_022_5dca                                ; $5d9b: $18 $2d

jr_022_5d9d:
    and l                                         ; $5d9d: $a5
    ld [hl], h                                    ; $5d9e: $74
    reti                                          ; $5d9f: $d9


    ld sp, $3549                                  ; $5da0: $31 $49 $35
    ld e, a                                       ; $5da3: $5f
    sub e                                         ; $5da4: $93
    ld h, [hl]                                    ; $5da5: $66
    ld c, h                                       ; $5da6: $4c
    push hl                                       ; $5da7: $e5
    rla                                           ; $5da8: $17
    cp h                                          ; $5da9: $bc
    cpl                                           ; $5daa: $2f
    db $fc                                        ; $5dab: $fc
    ld e, l                                       ; $5dac: $5d
    ld a, [c]                                     ; $5dad: $f2
    sbc h                                         ; $5dae: $9c
    ld c, e                                       ; $5daf: $4b
    sbc d                                         ; $5db0: $9a
    halt                                          ; $5db1: $76
    db $fc                                        ; $5db2: $fc
    ld l, $18                                     ; $5db3: $2e $18
    sub [hl]                                      ; $5db5: $96
    or c                                          ; $5db6: $b1
    and h                                         ; $5db7: $a4
    sbc d                                         ; $5db8: $9a
    rst $08                                       ; $5db9: $cf
    res 4, l                                      ; $5dba: $cb $a5
    ld a, [$b52c]                                 ; $5dbc: $fa $2c $b5
    ld [hl], b                                    ; $5dbf: $70
    ld h, b                                       ; $5dc0: $60
    ld a, [hl-]                                   ; $5dc1: $3a
    sbc l                                         ; $5dc2: $9d
    add h                                         ; $5dc3: $84
    ld h, a                                       ; $5dc4: $67
    di                                            ; $5dc5: $f3
    sbc h                                         ; $5dc6: $9c
    ld l, e                                       ; $5dc7: $6b
    xor h                                         ; $5dc8: $ac
    adc a                                         ; $5dc9: $8f

jr_022_5dca:
    add hl, de                                    ; $5dca: $19
    cp c                                          ; $5dcb: $b9
    inc d                                         ; $5dcc: $14
    xor h                                         ; $5dcd: $ac
    adc d                                         ; $5dce: $8a
    ld a, [bc]                                    ; $5dcf: $0a
    add b                                         ; $5dd0: $80
    jr nc, jr_022_5d90                            ; $5dd1: $30 $bd

    jp nc, $fdac                                  ; $5dd3: $d2 $ac $fd

Call_022_5dd6:
    xor $2f                                       ; $5dd6: $ee $2f
    dec bc                                        ; $5dd8: $0b
    sbc $17                                       ; $5dd9: $de $17
    db $e4                                        ; $5ddb: $e4
    and l                                         ; $5ddc: $a5
    ld h, b                                       ; $5ddd: $60
    sub b                                         ; $5dde: $90
    ld l, e                                       ; $5ddf: $6b
    jp nc, Jump_000_258c                          ; $5de0: $d2 $8c $25

    push de                                       ; $5de3: $d5
    ld a, h                                       ; $5de4: $7c
    pop bc                                        ; $5de5: $c1
    ei                                            ; $5de6: $fb
    ld l, $79                                     ; $5de7: $2e $79
    adc $25                                       ; $5de9: $ce $25
    ld c, l                                       ; $5deb: $4d
    dec sp                                        ; $5dec: $3b
    ld a, $c2                                     ; $5ded: $3e $c2
    dec l                                         ; $5def: $2d
    and l                                         ; $5df0: $a5
    ld [hl], h                                    ; $5df1: $74
    sbc c                                         ; $5df2: $99
    ld h, l                                       ; $5df3: $65
    ld e, [hl]                                    ; $5df4: $5e
    ld l, $d5                                     ; $5df5: $2e $d5
    rst $20                                       ; $5df7: $e7
    push hl                                       ; $5df8: $e5
    rst $20                                       ; $5df9: $e7
    xor a                                         ; $5dfa: $af
    ld d, l                                       ; $5dfb: $55

jr_022_5dfc:
    ld a, c                                       ; $5dfc: $79
    reti                                          ; $5dfd: $d9


    add l                                         ; $5dfe: $85
    push bc                                       ; $5dff: $c5
    call z, $a5fa                                 ; $5e00: $cc $fa $a5
    ld h, b                                       ; $5e03: $60
    ld [$8033], a                                 ; $5e04: $ea $33 $80
    jr nc, jr_022_5e46                            ; $5e07: $30 $3d

    ld a, a                                       ; $5e09: $7f
    db $ed                                        ; $5e0a: $ed
    ld [hl], a                                    ; $5e0b: $77
    ld a, a                                       ; $5e0c: $7f
    add hl, de                                    ; $5e0d: $19
    and l                                         ; $5e0e: $a5
    rst $08                                       ; $5e0f: $cf
    dec [hl]                                      ; $5e10: $35
    sub $c7                                       ; $5e11: $d6 $c7
    adc h                                         ; $5e13: $8c
    ld e, h                                       ; $5e14: $5c
    ld a, [bc]                                    ; $5e15: $0a
    ld d, [hl]                                    ; $5e16: $56
    ld b, l                                       ; $5e17: $45
    dec b                                         ; $5e18: $05
    ldh [$2e], a                                  ; $5e19: $e0 $2e
    ld h, l                                       ; $5e1b: $65
    db $fc                                        ; $5e1c: $fc
    cpl                                           ; $5e1d: $2f
    cp h                                          ; $5e1e: $bc
    ld b, c                                       ; $5e1f: $41
    pop af                                        ; $5e20: $f1
    dec b                                         ; $5e21: $05
    rst $28                                       ; $5e22: $ef
    ld h, e                                       ; $5e23: $63
    rst $28                                       ; $5e24: $ef
    ld c, a                                       ; $5e25: $4f
    ld a, [hl]                                    ; $5e26: $7e
    sub e                                         ; $5e27: $93
    db $10                                        ; $5e28: $10
    ld b, $dd                                     ; $5e29: $06 $dd
    db $e3                                        ; $5e2b: $e3
    dec hl                                        ; $5e2c: $2b
    db $fc                                        ; $5e2d: $fc
    add d                                         ; $5e2e: $82
    sbc h                                         ; $5e2f: $9c
    ld a, [c]                                     ; $5e30: $f2
    jp c, $9974                                   ; $5e31: $da $74 $99

    ld h, l                                       ; $5e34: $65
    inc l                                         ; $5e35: $2c
    xor c                                         ; $5e36: $a9
    and $e3                                       ; $5e37: $e6 $e3
    sub l                                         ; $5e39: $95
    ld a, h                                       ; $5e3a: $7c
    sbc [hl]                                      ; $5e3b: $9e
    dec bc                                        ; $5e3c: $0b
    or l                                          ; $5e3d: $b5
    cp $f3                                        ; $5e3e: $fe $f3
    ld a, [c]                                     ; $5e40: $f2
    di                                            ; $5e41: $f3
    rst $10                                       ; $5e42: $d7
    xor d                                         ; $5e43: $aa
    cp h                                          ; $5e44: $bc
    ld c, h                                       ; $5e45: $4c

jr_022_5e46:
    add hl, hl                                    ; $5e46: $29
    sub b                                         ; $5e47: $90
    ld b, $61                                     ; $5e48: $06 $61
    sub [hl]                                      ; $5e4a: $96
    pop af                                        ; $5e4b: $f1

Jump_022_5e4c:
    rla                                           ; $5e4c: $17
    jp z, $ab2c                                   ; $5e4d: $ca $2c $ab

    jp nc, $b644                                  ; $5e50: $d2 $44 $b6

    jr nz, jr_022_5dfc                            ; $5e53: $20 $a7

    ld sp, $9829                                  ; $5e55: $31 $29 $98

Jump_022_5e58:
    ld [de], a                                    ; $5e58: $12
    ld e, e                                       ; $5e59: $5b
    ld sp, hl                                     ; $5e5a: $f9
    ret c                                         ; $5e5b: $d8

    pop hl                                        ; $5e5c: $e1
    xor [hl]                                      ; $5e5d: $ae
    ld l, l                                       ; $5e5e: $6d
    ld a, h                                       ; $5e5f: $7c
    sub [hl]                                      ; $5e60: $96
    dec d                                         ; $5e61: $15
    or l                                          ; $5e62: $b5
    cp $3c                                        ; $5e63: $fe $3c
    rlca                                          ; $5e65: $07
    xor [hl]                                      ; $5e66: $ae
    call $cbca                                    ; $5e67: $cd $ca $cb
    inc hl                                        ; $5e6a: $23
    inc c                                         ; $5e6b: $0c
    rst $00                                       ; $5e6c: $c7
    ld h, a                                       ; $5e6d: $67
    or d                                          ; $5e6e: $b2
    ld b, l                                       ; $5e6f: $45
    ld d, e                                       ; $5e70: $53
    push de                                       ; $5e71: $d5
    cp c                                          ; $5e72: $b9
    ld l, e                                       ; $5e73: $6b
    ld d, l                                       ; $5e74: $55
    sub c                                         ; $5e75: $91
    ld b, $ad                                     ; $5e76: $06 $ad
    rst $00                                       ; $5e78: $c7
    rst $00                                       ; $5e79: $c7
    cp b                                          ; $5e7a: $b8
    ldh a, [rNR22]                                ; $5e7b: $f0 $17
    push de                                       ; $5e7d: $d5
    ld e, a                                       ; $5e7e: $5f
    add $17                                       ; $5e7f: $c6 $17
    push af                                       ; $5e81: $f5

jr_022_5e82:
    dec d                                         ; $5e82: $15
    db $ed                                        ; $5e83: $ed
    ld [hl], h                                    ; $5e84: $74
    sbc [hl]                                      ; $5e85: $9e
    sbc [hl]                                      ; $5e86: $9e
    ld hl, $bd0c                                  ; $5e87: $21 $0c $bd

Call_022_5e8a:
    jp nc, $fdac                                  ; $5e8a: $d2 $ac $fd

    xor $2f                                       ; $5e8d: $ee $2f
    dec bc                                        ; $5e8f: $0b
    sbc $17                                       ; $5e90: $de $17
    and [hl]                                      ; $5e92: $a6
    push af                                       ; $5e93: $f5
    ld d, d                                       ; $5e94: $52
    or b                                          ; $5e95: $b0
    or $db                                        ; $5e96: $f6 $db
    add hl, hl                                    ; $5e98: $29
    ccf                                           ; $5e99: $3f
    cpl                                           ; $5e9a: $2f
    ccf                                           ; $5e9b: $3f
    ld a, a                                       ; $5e9c: $7f
    xor l                                         ; $5e9d: $ad
    jp z, $82cb                                   ; $5e9e: $ca $cb $82

    ld [hl], a                                    ; $5ea1: $77
    ld e, b                                       ; $5ea2: $58
    xor b                                         ; $5ea3: $a8

jr_022_5ea4:
    inc c                                         ; $5ea4: $0c
    ld h, c                                       ; $5ea5: $61
    rst $00                                       ; $5ea6: $c7
    ld h, a                                       ; $5ea7: $67
    or d                                          ; $5ea8: $b2
    ld b, l                                       ; $5ea9: $45
    ld d, e                                       ; $5eaa: $53
    push de                                       ; $5eab: $d5
    cp c                                          ; $5eac: $b9
    ld l, e                                       ; $5ead: $6b
    ld d, l                                       ; $5eae: $55
    sub c                                         ; $5eaf: $91
    add [hl]                                      ; $5eb0: $86
    dec sp                                        ; $5eb1: $3b
    set 5, d                                      ; $5eb2: $cb $ea
    sub h                                         ; $5eb4: $94
    db $fc                                        ; $5eb5: $fc
    sbc d                                         ; $5eb6: $9a
    inc [hl]                                      ; $5eb7: $34
    or l                                          ; $5eb8: $b5
    jr jr_022_5e82                                ; $5eb9: $18 $c7

    ld [hl], d                                    ; $5ebb: $72
    db $fc                                        ; $5ebc: $fc
    rst $00                                       ; $5ebd: $c7
    adc b                                         ; $5ebe: $88
    jr nc, jr_022_5f08                            ; $5ebf: $30 $47

    cp a                                          ; $5ec1: $bf
    ei                                            ; $5ec2: $fb
    res 0, d                                      ; $5ec3: $cb $82
    rst $30                                       ; $5ec5: $f7
    dec b                                         ; $5ec6: $05
    ld a, c                                       ; $5ec7: $79
    add hl, hl                                    ; $5ec8: $29
    ldh [$ce], a                                  ; $5ec9: $e0 $ce
    set 1, a                                      ; $5ecb: $cb $cf
    ld e, a                                       ; $5ecd: $5f
    xor e                                         ; $5ece: $ab
    ld a, [c]                                     ; $5ecf: $f2
    or d                                          ; $5ed0: $b2
    dec bc                                        ; $5ed1: $0b
    adc e                                         ; $5ed2: $8b
    sbc c                                         ; $5ed3: $99
    push af                                       ; $5ed4: $f5
    ld c, e                                       ; $5ed5: $4b
    pop bc                                        ; $5ed6: $c1
    call nc, $a4d7                                ; $5ed7: $d4 $d7 $a4
    ld b, c                                       ; $5eda: $41
    jr jr_022_5ea4                                ; $5edb: $18 $c7

    srl a                                         ; $5edd: $cb $3f
    sub l                                         ; $5edf: $95
    inc [hl]                                      ; $5ee0: $34
    ldh a, [rSVBK]                                ; $5ee1: $f0 $70
    ld hl, sp+$76                                 ; $5ee3: $f8 $76
    ld c, d                                       ; $5ee5: $4a
    adc d                                         ; $5ee6: $8a
    rla                                           ; $5ee7: $17
    cp $c1                                        ; $5ee8: $fe $c1
    pop de                                        ; $5eea: $d1
    sub $aa                                       ; $5eeb: $d6 $aa
    add c                                         ; $5eed: $81
    ld e, h                                       ; $5eee: $5c
    ld d, [hl]                                    ; $5eef: $56
    add e                                         ; $5ef0: $83
    or l                                          ; $5ef1: $b5
    ld a, [de]                                    ; $5ef2: $1a
    ccf                                           ; $5ef3: $3f
    ld a, h                                       ; $5ef4: $7c
    ld l, e                                       ; $5ef5: $6b
    ld c, c                                       ; $5ef6: $49
    db $e3                                        ; $5ef7: $e3
    add l                                         ; $5ef8: $85
    ld a, a                                       ; $5ef9: $7f
    ld [hl], b                                    ; $5efa: $70
    add h                                         ; $5efb: $84
    ld bc, $d2bd                                  ; $5efc: $01 $bd $d2
    ret z                                         ; $5eff: $c8

    xor d                                         ; $5f00: $aa
    xor b                                         ; $5f01: $a8
    nop                                           ; $5f02: $00
    rrca                                          ; $5f03: $0f

Jump_022_5f04:
    ld d, e                                       ; $5f04: $53
    ld sp, hl                                     ; $5f05: $f9
    and l                                         ; $5f06: $a5
    push af                                       ; $5f07: $f5

jr_022_5f08:
    ld h, l                                       ; $5f08: $65
    halt                                          ; $5f09: $76
    jp z, $fcbc                                   ; $5f0a: $ca $bc $fc

    sbc b                                         ; $5f0d: $98
    ld [hl], $68                                  ; $5f0e: $36 $68
    db $eb                                        ; $5f10: $eb
    ld e, $5f                                     ; $5f11: $1e $5f
    pop hl                                        ; $5f13: $e1
    rla                                           ; $5f14: $17
    db $e4                                        ; $5f15: $e4
    inc a                                         ; $5f16: $3c

jr_022_5f17:
    rst $20                                       ; $5f17: $e7
    push hl                                       ; $5f18: $e5
    ld [hl], a                                    ; $5f19: $77
    cp h                                          ; $5f1a: $bc

jr_022_5f1b:
    cp h                                          ; $5f1b: $bc
    ld a, [$355a]                                 ; $5f1c: $fa $5a $35

jr_022_5f1f:
    ld b, [hl]                                    ; $5f1f: $46
    xor $d8                                       ; $5f20: $ee $d8
    dec h                                         ; $5f22: $25
    ld a, d                                       ; $5f23: $7a
    reti                                          ; $5f24: $d9


    add l                                         ; $5f25: $85
    ld l, c                                       ; $5f26: $69
    dec sp                                        ; $5f27: $3b
    adc l                                         ; $5f28: $8d
    rst $08                                       ; $5f29: $cf
    ld [hl], e                                    ; $5f2a: $73
    db $ed                                        ; $5f2b: $ed
    rra                                           ; $5f2c: $1f
    cp h                                          ; $5f2d: $bc
    ld e, b                                       ; $5f2e: $58
    sbc a                                         ; $5f2f: $9f
    ld hl, $bd0c                                  ; $5f30: $21 $0c $bd
    jp nc, $e4d4                                  ; $5f33: $d2 $d4 $e4

    ld b, a                                       ; $5f36: $47
    jp hl                                         ; $5f37: $e9


    dec bc                                        ; $5f38: $0b
    ld a, [c]                                     ; $5f39: $f2
    ld d, d                                       ; $5f3a: $52
    jr nc, @-$2f                                  ; $5f3b: $30 $cf

    dec b                                         ; $5f3d: $05
    rst $28                                       ; $5f3e: $ef
    ld d, e                                       ; $5f3f: $53
    ld e, [hl]                                    ; $5f40: $5e
    sbc e                                         ; $5f41: $9b
    pop af                                        ; $5f42: $f1
    rst $10                                       ; $5f43: $d7
    set 7, b                                      ; $5f44: $cb $f8
    and d                                         ; $5f46: $a2
    cp [hl]                                       ; $5f47: $be
    and d                                         ; $5f48: $a2
    sbc l                                         ; $5f49: $9d
    adc $d3                                       ; $5f4a: $ce $d3
    or e                                          ; $5f4c: $b3
    ld e, l                                       ; $5f4d: $5d
    jp c, $b171                                   ; $5f4e: $da $71 $b1

    cp c                                          ; $5f51: $b9
    inc d                                         ; $5f52: $14
    xor h                                         ; $5f53: $ac
    adc d                                         ; $5f54: $8a
    ld a, [bc]                                    ; $5f55: $0a
    ret nz                                        ; $5f56: $c0

    ld e, l                                       ; $5f57: $5d
    rst $30                                       ; $5f58: $f7
    ld [hl], h                                    ; $5f59: $74
    ld a, a                                       ; $5f5a: $7f
    ld b, c                                       ; $5f5b: $41
    jr jr_022_5f1b                                ; $5f5c: $18 $bd

    jp nc, $e4d4                                  ; $5f5e: $d2 $d4 $e4

    and a                                         ; $5f61: $a7
    adc e                                         ; $5f62: $8b
    jp hl                                         ; $5f63: $e9


    ld l, e                                       ; $5f64: $6b
    adc e                                         ; $5f65: $8b
    ld e, d                                       ; $5f66: $5a
    ld e, a                                       ; $5f67: $5f
    sub $d6                                       ; $5f68: $d6 $d6
    xor d                                         ; $5f6a: $aa
    cp [hl]                                       ; $5f6b: $be
    and h                                         ; $5f6c: $a4
    ld a, c                                       ; $5f6d: $79

Jump_022_5f6e:
    ld sp, hl                                     ; $5f6e: $f9
    dec b                                         ; $5f6f: $05
    sub d                                         ; $5f70: $92
    add [hl]                                      ; $5f71: $86
    ret c                                         ; $5f72: $d8

    ld hl, sp-$15                                 ; $5f73: $f8 $eb
    ld h, l                                       ; $5f75: $65
    ld c, l                                       ; $5f76: $4d
    ld a, [de]                                    ; $5f77: $1a
    ld e, c                                       ; $5f78: $59
    cp h                                          ; $5f79: $bc
    xor $f1                                       ; $5f7a: $ee $f1
    ld h, a                                       ; $5f7c: $67
    bit 7, l                                      ; $5f7d: $cb $7d
    ld h, d                                       ; $5f7f: $62
    jr nc, jr_022_5f17                            ; $5f80: $30 $95

    inc [hl]                                      ; $5f82: $34
    call nz, $a4d6                                ; $5f83: $c4 $d6 $a4
    ld b, c                                       ; $5f86: $41
    jr jr_022_5f1f                                ; $5f87: $18 $96

    ld e, d                                       ; $5f89: $5a
    adc h                                         ; $5f8a: $8c
    dec bc                                        ; $5f8b: $0b
    and d                                         ; $5f8c: $a2
    or d                                          ; $5f8d: $b2
    ret c                                         ; $5f8e: $d8

    call z, Call_022_41be                         ; $5f8f: $cc $be $41
    pop af                                        ; $5f92: $f1
    dec [hl]                                      ; $5f93: $35

Jump_022_5f94:
    ld l, c                                       ; $5f94: $69
    sub [hl]                                      ; $5f95: $96
    or h                                          ; $5f96: $b4
    or b                                          ; $5f97: $b0
    ld e, c                                       ; $5f98: $59
    ld a, [c]                                     ; $5f99: $f2
    add h                                         ; $5f9a: $84
    sub $9a                                       ; $5f9b: $d6 $9a
    db $fc                                        ; $5f9d: $fc

jr_022_5f9e:
    or h                                          ; $5f9e: $b4
    sbc l                                         ; $5f9f: $9d
    add $a7                                       ; $5fa0: $c6 $a7
    db $eb                                        ; $5fa2: $eb
    ld a, c                                       ; $5fa3: $79
    add hl, sp                                    ; $5fa4: $39
    xor d                                         ; $5fa5: $aa
    or b                                          ; $5fa6: $b0
    ld a, [de]                                    ; $5fa7: $1a
    db $ec                                        ; $5fa8: $ec
    jr jr_022_5f9e                                ; $5fa9: $18 $f3

    sub c                                         ; $5fab: $91
    dec sp                                        ; $5fac: $3b

Jump_022_5fad:
    push af                                       ; $5fad: $f5
    add l                                         ; $5fae: $85
    sub a                                         ; $5faf: $97
    pop de                                        ; $5fb0: $d1
    dec c                                         ; $5fb1: $0d
    adc d                                         ; $5fb2: $8a
    ld [hl], a                                    ; $5fb3: $77
    ld e, l                                       ; $5fb4: $5d
    ld c, a                                       ; $5fb5: $4f
    dec h                                         ; $5fb6: $25
    ld b, $4b                                     ; $5fb7: $06 $4b
    adc d                                         ; $5fb9: $8a
    dec c                                         ; $5fba: $0d
    jp nz, $8d47                                  ; $5fbb: $c2 $47 $8d

    cpl                                           ; $5fbe: $2f
    ld [$315d], a                                 ; $5fbf: $ea $5d $31
    cp l                                          ; $5fc2: $bd
    jp nc, $e4d4                                  ; $5fc3: $d2 $d4 $e4

    sub a                                         ; $5fc6: $97

Jump_022_5fc7:
    add h                                         ; $5fc7: $84
    ld h, [hl]                                    ; $5fc8: $66
    xor c                                         ; $5fc9: $a9
    push bc                                       ; $5fca: $c5
    cp b                                          ; $5fcb: $b8

Jump_022_5fcc:
    or $af                                        ; $5fcc: $f6 $af
    ld e, h                                       ; $5fce: $5c
    jr jr_022_604d                                ; $5fcf: $18 $7c

    sub l                                         ; $5fd1: $95
    call nz, $0610                                ; $5fd2: $c4 $10 $06
    db $dd                                        ; $5fd5: $dd
    ld b, h                                       ; $5fd6: $44
    db $db                                        ; $5fd7: $db
    db $ed                                        ; $5fd8: $ed
    rst $18                                       ; $5fd9: $df
    add l                                         ; $5fda: $85
    add l                                         ; $5fdb: $85
    call $abe0                                    ; $5fdc: $cd $e0 $ab
    inc h                                         ; $5fdf: $24
    add [hl]                                      ; $5fe0: $86
    sub $f2                                       ; $5fe1: $d6 $f2
    cp a                                          ; $5fe3: $bf
    ld h, $cd                                     ; $5fe4: $26 $cd
    ld l, $cd                                     ; $5fe6: $2e $cd
    set 1, a                                      ; $5fe8: $cb $cf
    dec h                                         ; $5fea: $25
    dec sp                                        ; $5feb: $3b
    and l                                         ; $5fec: $a5
    sbc c                                         ; $5fed: $99
    ld h, h                                       ; $5fee: $64
    add [hl]                                      ; $5fef: $86
    call c, $d279                                 ; $5ff0: $dc $79 $d2
    dec c                                         ; $5ff3: $0d
    adc d                                         ; $5ff4: $8a
    inc hl                                        ; $5ff5: $23
    inc c                                         ; $5ff6: $0c
    dec a                                         ; $5ff7: $3d
    adc e                                         ; $5ff8: $8b
    ld a, [$cd2e]                                 ; $5ff9: $fa $2e $cd
    res 1, a                                      ; $5ffc: $cb $8f
    ld c, a                                       ; $5ffe: $4f

jr_022_5fff:
    adc c                                         ; $5fff: $89
    ld l, h                                       ; $6000: $6c
    rla                                           ; $6001: $17
    and [hl]                                      ; $6002: $a6
    db $eb                                        ; $6003: $eb
    ld a, c                                       ; $6004: $79
    add hl, sp                                    ; $6005: $39
    xor d                                         ; $6006: $aa
    or b                                          ; $6007: $b0
    ld a, [de]                                    ; $6008: $1a
    db $ec                                        ; $6009: $ec
    jr jr_022_5fff                                ; $600a: $18 $f3

    or c                                          ; $600c: $b1
    dec hl                                        ; $600d: $2b
    ld b, $47                                     ; $600e: $06 $47
    call Call_022_41be                            ; $6010: $cd $be $41
    pop af                                        ; $6013: $f1
    add hl, de                                    ; $6014: $19
    cp b                                          ; $6015: $b8
    inc d                                         ; $6016: $14
    inc l                                         ; $6017: $2c
    add hl, hl                                    ; $6018: $29
    ld [hl], $83                                  ; $6019: $36 $83
    adc $c7                                       ; $601b: $ce $c7
    ld [$a768], sp                                ; $601d: $08 $68 $a7
    db $fc                                        ; $6020: $fc
    push af                                       ; $6021: $f5
    ld a, [c]                                     ; $6022: $f2
    or d                                          ; $6023: $b2
    or h                                          ; $6024: $b4
    rst $10                                       ; $6025: $d7
    and h                                         ; $6026: $a4
    ld e, c                                       ; $6027: $59
    sbc l                                         ; $6028: $9d
    sub d                                         ; $6029: $92
    add a                                         ; $602a: $87
    dec a                                         ; $602b: $3d
    and l                                         ; $602c: $a5
    add hl, bc                                    ; $602d: $09
    jp z, $0d42                                   ; $602e: $ca $42 $0d

    ld l, [hl]                                    ; $6031: $6e
    dec [hl]                                      ; $6032: $35
    rst $08                                       ; $6033: $cf
    or c                                          ; $6034: $b1
    sbc h                                         ; $6035: $9c
    ld d, d                                       ; $6036: $52
    inc sp                                        ; $6037: $33
    ld a, c                                       ; $6038: $79
    adc l                                         ; $6039: $8d
    ld h, e                                       ; $603a: $63
    ld a, [de]                                    ; $603b: $1a
    ld l, d                                       ; $603c: $6a
    ldh a, [rBCPS]                                ; $603d: $f0 $68
    ld b, a                                       ; $603f: $47
    pop bc                                        ; $6040: $c1
    sbc d                                         ; $6041: $9a
    inc [hl]                                      ; $6042: $34
    ld [hl-], a                                   ; $6043: $32
    ld hl, sp+$2a                                 ; $6044: $f8 $2a
    adc c                                         ; $6046: $89
    ld [hl], c                                    ; $6047: $71
    ld h, a                                       ; $6048: $67
    xor c                                         ; $6049: $a9
    push bc                                       ; $604a: $c5
    cp b                                          ; $604b: $b8
    or [hl]                                       ; $604c: $b6

jr_022_604d:
    ld d, [hl]                                    ; $604d: $56
    push af                                       ; $604e: $f5
    dec [hl]                                      ; $604f: $35
    ld l, c                                       ; $6050: $69
    ld h, [hl]                                    ; $6051: $66
    ld a, [hl-]                                   ; $6052: $3a
    ld [$9603], sp                                ; $6053: $08 $03 $96
    and l                                         ; $6056: $a5
    push af                                       ; $6057: $f5
    and l                                         ; $6058: $a5
    cp h                                          ; $6059: $bc
    ld a, [bc]                                    ; $605a: $0a
    ld e, e                                       ; $605b: $5b
    sub e                                         ; $605c: $93
    ld b, $ad                                     ; $605d: $06 $ad
    ld d, a                                       ; $605f: $57
    sbc d                                         ; $6060: $9a

jr_022_6061:
    ld e, d                                       ; $6061: $5a
    adc h                                         ; $6062: $8c
    dec bc                                        ; $6063: $0b
    sbc $e7                                       ; $6064: $de $e7
    push hl                                       ; $6066: $e5
    ld d, a                                       ; $6067: $57
    jp nc, $efc0                                  ; $6068: $d2 $c0 $ef

    sub d                                         ; $606b: $92
    rst $20                                       ; $606c: $e7
    ld e, h                                       ; $606d: $5c
    jp nc, $e3b4                                  ; $606e: $d2 $b4 $e3

    inc hl                                        ; $6071: $23
    inc c                                         ; $6072: $0c
    ld d, $af                                     ; $6073: $16 $af
    pop bc                                        ; $6075: $c1
    jr z, jr_022_6061                             ; $6076: $28 $e9

    sub a                                         ; $6078: $97
    or $9a                                        ; $6079: $f6 $9a
    inc [hl]                                      ; $607b: $34
    or d                                          ; $607c: $b2
    or [hl]                                       ; $607d: $b6
    add c                                         ; $607e: $81
    ld c, e                                       ; $607f: $4b
    rrca                                          ; $6080: $0f
    add b                                         ; $6081: $80
    sub $f3                                       ; $6082: $d6 $f3
    rst $10                                       ; $6084: $d7
    ld a, [hl]                                    ; $6085: $7e
    rst $30                                       ; $6086: $f7
    sub a                                         ; $6087: $97
    dec b                                         ; $6088: $05
    rst $28                                       ; $6089: $ef
    inc sp                                        ; $608a: $33
    dec e                                         ; $608b: $1d
    ld [hl], b                                    ; $608c: $70
    cp l                                          ; $608d: $bd
    ld [bc], a                                    ; $608e: $02
    ld d, e                                       ; $608f: $53
    ld h, d                                       ; $6090: $62
    db $eb                                        ; $6091: $eb
    ret z                                         ; $6092: $c8

    ld [hl], a                                    ; $6093: $77
    ld d, h                                       ; $6094: $54
    ld e, $61                                     ; $6095: $1e $61
    xor l                                         ; $6097: $ad
    ld a, [de]                                    ; $6098: $1a
    db $ed                                        ; $6099: $ed
    ld [hl], l                                    ; $609a: $75
    inc d                                         ; $609b: $14
    ld a, h                                       ; $609c: $7c
    rra                                           ; $609d: $1f
    rst $18                                       ; $609e: $df
    ld a, [$d684]                                 ; $609f: $fa $84 $d6
    di                                            ; $60a2: $f3
    ld l, e                                       ; $60a3: $6b
    ld l, h                                       ; $60a4: $6c
    db $ed                                        ; $60a5: $ed
    ld [hl], a                                    ; $60a6: $77
    ld a, a                                       ; $60a7: $7f
    ld e, c                                       ; $60a8: $59
    ld sp, $0d22                                  ; $60a9: $31 $22 $0d
    jp nz, $5596                                  ; $60ac: $c2 $96 $55

    ld c, d                                       ; $60af: $4a
    dec [hl]                                      ; $60b0: $35
    ld e, a                                       ; $60b1: $5f
    ei                                            ; $60b2: $fb
    db $e3                                        ; $60b3: $e3
    ld a, l                                       ; $60b4: $7d
    db $eb                                        ; $60b5: $eb
    xor a                                         ; $60b6: $af
    ld c, c                                       ; $60b7: $49
    ld d, e                                       ; $60b8: $53
    sub e                                         ; $60b9: $93
    ld e, a                                       ; $60ba: $5f
    sub b                                         ; $60bb: $90
    sub a                                         ; $60bc: $97

jr_022_60bd:
    add d                                         ; $60bd: $82
    ld a, c                                       ; $60be: $79
    adc [hl]                                      ; $60bf: $8e
    push hl                                       ; $60c0: $e5

jr_022_60c1:
    cp h                                          ; $60c1: $bc
    ld e, h                                       ; $60c2: $5c
    ldh [$ae], a                                  ; $60c3: $e0 $ae
    ld d, l                                       ; $60c5: $55
    ld b, l                                       ; $60c6: $45
    ld a, [de]                                    ; $60c7: $1a
    add h                                         ; $60c8: $84
    ld bc, $d2bd                                  ; $60c9: $01 $bd $d2
    ld [hl], h                                    ; $60cc: $74
    reti                                          ; $60cd: $d9


    pop af                                        ; $60ce: $f1
    cp c                                          ; $60cf: $b9
    or [hl]                                       ; $60d0: $b6
    ld d, [hl]                                    ; $60d1: $56
    push af                                       ; $60d2: $f5
    ld a, c                                       ; $60d3: $79
    xor [hl]                                      ; $60d4: $ae
    db $fd                                        ; $60d5: $fd
    xor h                                         ; $60d6: $ac
    dec bc                                        ; $60d7: $0b
    ld b, $bd                                     ; $60d8: $06 $bd
    jp nc, Jump_022_62d4                          ; $60da: $d2 $d4 $62

    ld e, h                                       ; $60dd: $5c
    ld c, h                                       ; $60de: $4c
    ld hl, sp+$69                                 ; $60df: $f8 $69
    adc h                                         ; $60e1: $8c
    di                                            ; $60e2: $f3
    ld a, [c]                                     ; $60e3: $f2
    db $eb                                        ; $60e4: $eb
    db $e4                                        ; $60e5: $e4
    dec h                                         ; $60e6: $25
    add a                                         ; $60e7: $87
    pop af                                        ; $60e8: $f1
    cp a                                          ; $60e9: $bf
    and d                                         ; $60ea: $a2
    sub $1f                                       ; $60eb: $d6 $1f
    ld e, a                                       ; $60ed: $5f
    sbc [hl]                                      ; $60ee: $9e
    sub $a4                                       ; $60ef: $d6 $a4
    xor c                                         ; $60f1: $a9
    ret                                           ; $60f2: $c9


    xor a                                         ; $60f3: $af
    ld d, d                                       ; $60f4: $52
    inc de                                        ; $60f5: $13
    inc d                                         ; $60f6: $14
    ld b, a                                       ; $60f7: $47
    jr jr_022_60c1                                ; $60f8: $18 $c7

    rst $20                                       ; $60fa: $e7
    sub h                                         ; $60fb: $94
    rst $10                                       ; $60fc: $d7
    and [hl]                                      ; $60fd: $a6
    dec bc                                        ; $60fe: $0b
    ld b, $47                                     ; $60ff: $06 $47
    push bc                                       ; $6101: $c5
    jr c, jr_022_60bd                             ; $6102: $38 $b9

    ld b, c                                       ; $6104: $41
    ld [hl], c                                    ; $6105: $71
    xor $da                                       ; $6106: $ee $da
    add $67                                       ; $6108: $c6 $67
    add hl, de                                    ; $610a: $19
    xor a                                         ; $610b: $af
    ld b, d                                       ; $610c: $42
    rst $08                                       ; $610d: $cf
    sub $a4                                       ; $610e: $d6 $a4

Call_022_6110:
    ld b, c                                       ; $6110: $41
    jr jr_022_6150                                ; $6111: $18 $3d

    jp z, Jump_000_38ef                           ; $6113: $ca $ef $38

    push af                                       ; $6116: $f5
    sbc l                                         ; $6117: $9d
    and h                                         ; $6118: $a4
    xor h                                         ; $6119: $ac
    ld b, c                                       ; $611a: $41
    ld [$f941], sp                                ; $611b: $08 $41 $f9
    ld e, l                                       ; $611e: $5d
    and b                                         ; $611f: $a0
    sbc d                                         ; $6120: $9a
    rst $08                                       ; $6121: $cf
    set 1, e                                      ; $6122: $cb $cb
    ld [hl], a                                    ; $6124: $77
    sbc c                                         ; $6125: $99
    and l                                         ; $6126: $a5
    ld h, [hl]                                    ; $6127: $66
    db $fd                                        ; $6128: $fd
    sub l                                         ; $6129: $95
    ld d, a                                       ; $612a: $57
    ld h, c                                       ; $612b: $61

jr_022_612c:
    add e                                         ; $612c: $83
    ld a, [c]                                     ; $612d: $f2
    dec bc                                        ; $612e: $0b
    ld a, [c]                                     ; $612f: $f2
    ld h, c                                       ; $6130: $61
    cp h                                          ; $6131: $bc
    ld [de], a                                    ; $6132: $12
    ld a, e                                       ; $6133: $7b
    cp c                                          ; $6134: $b9
    inc d                                         ; $6135: $14
    ld c, h                                       ; $6136: $4c
    ld a, l                                       ; $6137: $7d
    ld [hl], h                                    ; $6138: $74
    add e                                         ; $6139: $83
    ld [c], a                                     ; $613a: $e2
    add e                                         ; $613b: $83
    inc c                                         ; $613c: $0c
    rst $18                                       ; $613d: $df
    ld l, a                                       ; $613e: $6f
    ld hl, sp-$80                                 ; $613f: $f8 $80
    ld h, [hl]                                    ; $6141: $66
    ld e, c                                       ; $6142: $59
    and l                                         ; $6143: $a5
    ld d, h                                       ; $6144: $54
    di                                            ; $6145: $f3
    dec b                                         ; $6146: $05
    rst $28                                       ; $6147: $ef
    ld l, e                                       ; $6148: $6b
    ld l, e                                       ; $6149: $6b
    ld d, l                                       ; $614a: $55
    rst $18                                       ; $614b: $df
    and l                                         ; $614c: $a5
    ld l, $18                                     ; $614d: $2e $18

Jump_022_614f:
    dec a                                         ; $614f: $3d

jr_022_6150:
    adc d                                         ; $6150: $8a
    ld a, d                                       ; $6151: $7a
    dec c                                         ; $6152: $0d
    sub $eb                                       ; $6153: $d6 $eb
    call nc, $4e33                                ; $6155: $d4 $33 $4e
    ld e, a                                       ; $6158: $5f
    ld b, a                                       ; $6159: $47
    or d                                          ; $615a: $b2
    dec e                                         ; $615b: $1d
    ccf                                           ; $615c: $3f
    ld b, h                                       ; $615d: $44
    jr @-$57                                      ; $615e: $18 $a7

    sbc c                                         ; $6160: $99
    ei                                            ; $6161: $fb
    sbc $65                                       ; $6162: $de $65
    sub [hl]                                      ; $6164: $96
    sub l                                         ; $6165: $95
    ld d, a                                       ; $6166: $57
    ld h, c                                       ; $6167: $61
    add e                                         ; $6168: $83
    inc c                                         ; $6169: $0c
    rst $18                                       ; $616a: $df
    res 4, l                                      ; $616b: $cb $a5
    nop                                           ; $616d: $00

jr_022_616e:
    ld h, c                                       ; $616e: $61
    sub [hl]                                      ; $616f: $96
    sbc d                                         ; $6170: $9a
    push af                                       ; $6171: $f5
    rst $10                                       ; $6172: $d7
    cp $a7                                        ; $6173: $fe $a7
    and l                                         ; $6175: $a5
    pop af                                        ; $6176: $f1
    sub l                                         ; $6177: $95
    sub a                                         ; $6178: $97
    sbc a                                         ; $6179: $9f
    sbc l                                         ; $617a: $9d
    or d                                          ; $617b: $b2
    sub d                                         ; $617c: $92
    ld b, [hl]                                    ; $617d: $46
    nop                                           ; $617e: $00
    call $2ab2                                    ; $617f: $cd $b2 $2a
    ld c, l                                       ; $6182: $4d
    ld h, h                                       ; $6183: $64
    ld d, h                                       ; $6184: $54
    di                                            ; $6185: $f3

jr_022_6186:
    ret                                           ; $6186: $c9


    add a                                         ; $6187: $87
    rra                                           ; $6188: $1f
    or [hl]                                       ; $6189: $b6
    ld e, a                                       ; $618a: $5f
    and $e5                                       ; $618b: $e6 $e5
    ld b, a                                       ; $618d: $47
    rst $08                                       ; $618e: $cf
    xor a                                         ; $618f: $af
    and e                                         ; $6190: $a3
    nop                                           ; $6191: $00

jr_022_6192:
    ld a, h                                       ; $6192: $7c
    ld a, [bc]                                    ; $6193: $0a
    ld b, e                                       ; $6194: $43
    jr @+$18                                      ; $6195: $18 $16

    xor a                                         ; $6197: $af
    pop bc                                        ; $6198: $c1
    ld l, d                                       ; $6199: $6a
    sbc l                                         ; $619a: $9d
    dec de                                        ; $619b: $1b
    inc c                                         ; $619c: $0c
    jr z, jr_022_612c                             ; $619d: $28 $8d

    rst $10                                       ; $619f: $d7
    ret nc                                        ; $61a0: $d0

    ld a, d                                       ; $61a1: $7a
    cp $8a                                        ; $61a2: $fe $8a
    ld e, d                                       ; $61a4: $5a
    ld a, a                                       ; $61a5: $7f
    sbc [hl]                                      ; $61a6: $9e
    ld l, e                                       ; $61a7: $6b
    rst $38                                       ; $61a8: $ff
    jr nz, jr_022_616e                            ; $61a9: $20 $c3

    rst $20                                       ; $61ab: $e7
    set 1, e                                      ; $61ac: $cb $cb
    ld [hl], e                                    ; $61ae: $73
    ld [hl], a                                    ; $61af: $77
    jp z, Jump_022_6f5b                           ; $61b0: $ca $5b $6f

    adc h                                         ; $61b3: $8c
    rst $08                                       ; $61b4: $cf
    dec e                                         ; $61b5: $1d
    db $fc                                        ; $61b6: $fc
    xor a                                         ; $61b7: $af
    ld c, c                                       ; $61b8: $49
    or e                                          ; $61b9: $b3
    xor b                                         ; $61ba: $a8
    cp $82                                        ; $61bb: $fe $82

jr_022_61bd:
    jr nc, jr_022_6186                            ; $61bd: $30 $c7

    inc h                                         ; $61bf: $24
    push de                                       ; $61c0: $d5
    ld a, h                                       ; $61c1: $7c
    rst $20                                       ; $61c2: $e7
    add hl, de                                    ; $61c3: $19
    ldh a, [$c5]                                  ; $61c4: $f0 $c5
    ld d, a                                       ; $61c6: $57
    db $eb                                        ; $61c7: $eb
    cpl                                           ; $61c8: $2f
    db $fc                                        ; $61c9: $fc
    sub l                                         ; $61ca: $95
    sub a                                         ; $61cb: $97
    rst $28                                       ; $61cc: $ef
    add d                                         ; $61cd: $82
    ld bc, $caa7                                  ; $61ce: $01 $a7 $ca
    jp nz, $82ef                                  ; $61d1: $c2 $ef $82

    ld bc, $c547                                  ; $61d4: $01 $47 $c5
    jr c, jr_022_6192                             ; $61d7: $38 $b9

    ld b, c                                       ; $61d9: $41
    ld [hl], c                                    ; $61da: $71
    xor $aa                                       ; $61db: $ee $aa
    inc c                                         ; $61dd: $0c
    ld a, a                                       ; $61de: $7f
    ld a, [de]                                    ; $61df: $1a
    sub e                                         ; $61e0: $93
    add d                                         ; $61e1: $82
    or l                                          ; $61e2: $b5
    adc l                                         ; $61e3: $8d
    xor a                                         ; $61e4: $af
    db $fd                                        ; $61e5: $fd
    dec sp                                        ; $61e6: $3b
    rst $18                                       ; $61e7: $df
    call c, $8477                                 ; $61e8: $dc $77 $84
    ld bc, $ca3d                                  ; $61eb: $01 $3d $ca
    add l                                         ; $61ee: $85
    ld e, l                                       ; $61ef: $5d
    ret c                                         ; $61f0: $d8

    ld [hl], l                                    ; $61f1: $75
    or h                                          ; $61f2: $b4
    inc de                                        ; $61f3: $13
    rst $38                                       ; $61f4: $ff
    dec sp                                        ; $61f5: $3b
    ld d, e                                       ; $61f6: $53
    jp c, $bf37                                   ; $61f7: $da $37 $bf

    inc [hl]                                      ; $61fa: $34
    ld a, $3b                                     ; $61fb: $3e $3b
    ld h, l                                       ; $61fd: $65
    daa                                           ; $61fe: $27
    ld l, e                                       ; $61ff: $6b
    or h                                          ; $6200: $b4
    or e                                          ; $6201: $b3
    sbc c                                         ; $6202: $99
    ld [de], a                                    ; $6203: $12
    ld e, e                                       ; $6204: $5b
    scf                                           ; $6205: $37
    pop de                                        ; $6206: $d1
    halt                                          ; $6207: $76
    ei                                            ; $6208: $fb
    ld de, $2d06                                  ; $6209: $11 $06 $2d
    ld [hl], h                                    ; $620c: $74
    ld l, l                                       ; $620d: $6d
    ld a, e                                       ; $620e: $7b
    ld a, [hl+]                                   ; $620f: $2a
    ld l, c                                       ; $6210: $69
    adc b                                         ; $6211: $88
    ld [hl], c                                    ; $6212: $71
    rla                                           ; $6213: $17
    ld [hl], $03                                  ; $6214: $36 $03
    cp $df                                        ; $6216: $fe $df
    cp c                                          ; $6218: $b9
    di                                            ; $6219: $f3
    ld [hl], d                                    ; $621a: $72
    ld h, c                                       ; $621b: $61
    rla                                           ; $621c: $17
    add $97                                       ; $621d: $c6 $97
    sub a                                         ; $621f: $97
    ld e, a                                       ; $6220: $5f
    sub e                                         ; $6221: $93
    add [hl]                                      ; $6222: $86
    add d                                         ; $6223: $82
    sbc l                                         ; $6224: $9d
    xor h                                         ; $6225: $ac
    pop de                                        ; $6226: $d1
    adc $66                                       ; $6227: $ce $66
    and b                                         ; $6229: $a0
    sub a                                         ; $622a: $97
    call Call_000_37cb                            ; $622b: $cd $cb $37
    dec [hl]                                      ; $622e: $35
    or [hl]                                       ; $622f: $b6
    or $23                                        ; $6230: $f6 $23
    inc c                                         ; $6232: $0c
    and a                                         ; $6233: $a7
    daa                                           ; $6234: $27
    rst $08                                       ; $6235: $cf
    adc e                                         ; $6236: $8b
    jr nz, jr_022_61bd                            ; $6237: $20 $84

    db $10                                        ; $6239: $10
    ld b, $3d                                     ; $623a: $06 $3d
    jp z, $afcb                                   ; $623c: $ca $cb $af

    ld c, c                                       ; $623f: $49
    inc sp                                        ; $6240: $33
    sub l                                         ; $6241: $95
    rst $20                                       ; $6242: $e7
    xor [hl]                                      ; $6243: $ae
    ld c, c                                       ; $6244: $49
    ld d, e                                       ; $6245: $53
    sub e                                         ; $6246: $93
    rst $18                                       ; $6247: $df
    and l                                         ; $6248: $a5
    reti                                          ; $6249: $d9


    add hl, hl                                    ; $624a: $29
    cp e                                          ; $624b: $bb
    ld a, $4a                                     ; $624c: $3e $4a
    cp [hl]                                       ; $624e: $be
    dec bc                                        ; $624f: $0b
    ld b, $3d                                     ; $6250: $06 $3d
    adc e                                         ; $6252: $8b
    ld a, [$97f8]                                 ; $6253: $fa $f8 $97
    ld e, a                                       ; $6256: $5f
    sub e                                         ; $6257: $93
    ld h, [hl]                                    ; $6258: $66
    ld a, [de]                                    ; $6259: $1a
    db $e3                                        ; $625a: $e3
    ld e, b                                       ; $625b: $58
    ld e, [hl]                                    ; $625c: $5e
    ld a, [bc]                                    ; $625d: $0a
    sub [hl]                                      ; $625e: $96
    add $97                                       ; $625f: $c6 $97
    or $9a                                        ; $6261: $f6 $9a
    inc [hl]                                      ; $6263: $34
    ld [hl-], a                                   ; $6264: $32
    sub [hl]                                      ; $6265: $96
    ld [de], a                                    ; $6266: $12
    ld e, [hl]                                    ; $6267: $5e
    ld c, a                                       ; $6268: $4f
    ld l, c                                       ; $6269: $69
    and [hl]                                      ; $626a: $a6
    ld a, $2f                                     ; $626b: $3e $2f
    rla                                           ; $626d: $17
    ld d, [hl]                                    ; $626e: $56

jr_022_626f:
    jp nc, Jump_022_5748                          ; $626f: $d2 $48 $57

    inc c                                         ; $6272: $0c
    dec a                                         ; $6273: $3d
    ccf                                           ; $6274: $3f
    ld b, [hl]                                    ; $6275: $46
    xor $2c                                       ; $6276: $ee $2c
    or e                                          ; $6278: $b3
    ld d, e                                       ; $6279: $53
    add d                                         ; $627a: $82
    db $f4                                        ; $627b: $f4
    ld a, c                                       ; $627c: $79
    ld sp, hl                                     ; $627d: $f9
    ld [hl], l                                    ; $627e: $75
    inc d                                         ; $627f: $14
    add b                                         ; $6280: $80
    ld c, a                                       ; $6281: $4f
    ld h, c                                       ; $6282: $61
    ld [$0c21], sp                                ; $6283: $08 $21 $0c
    dec l                                         ; $6286: $2d
    scf                                           ; $6287: $37
    ld a, $55                                     ; $6288: $3e $55
    rst $18                                       ; $628a: $df
    ld h, l                                       ; $628b: $65
    dec a                                         ; $628c: $3d
    jp z, Jump_022_5d85                           ; $628d: $ca $85 $5d

    sbc b                                         ; $6290: $98
    ld c, $5e                                     ; $6291: $0e $5e
    ld l, [hl]                                    ; $6293: $6e
    ld a, [de]                                    ; $6294: $1a
    ret c                                         ; $6295: $d8

    dec h                                         ; $6296: $25
    ld e, e                                       ; $6297: $5b
    or h                                          ; $6298: $b4
    ld a, [c]                                     ; $6299: $f2
    sbc e                                         ; $629a: $9b
    add h                                         ; $629b: $84
    sub $5f                                       ; $629c: $d6 $5f
    cp a                                          ; $629e: $bf
    db $eb                                        ; $629f: $eb
    db $e4                                        ; $62a0: $e4
    dec h                                         ; $62a1: $25

jr_022_62a2:
    add a                                         ; $62a2: $87
    reti                                          ; $62a3: $d9


    sub d                                         ; $62a4: $92
    pop hl                                        ; $62a5: $e1
    adc [hl]                                      ; $62a6: $8e
    sub a                                         ; $62a7: $97
    add $b6                                       ; $62a8: $c6 $b6
    cpl                                           ; $62aa: $2f
    or c                                          ; $62ab: $b1
    inc d                                         ; $62ac: $14
    xor $94                                       ; $62ad: $ee $94
    ret c                                         ; $62af: $d8

    ret c                                         ; $62b0: $d8

    ei                                            ; $62b1: $fb
    sub e                                         ; $62b2: $93
    rst $18                                       ; $62b3: $df

jr_022_62b4:
    inc h                                         ; $62b4: $24
    inc [hl]                                      ; $62b5: $34
    ld c, e                                       ; $62b6: $4b
    dec l                                         ; $62b7: $2d
    inc e                                         ; $62b8: $1c
    jr jr_022_62b4                                ; $62b9: $18 $f9

    sbc l                                         ; $62bb: $9d
    xor h                                         ; $62bc: $ac
    ld c, h                                       ; $62bd: $4c
    jp $cf75                                      ; $62be: $c3 $75 $cf


    ret nc                                        ; $62c1: $d0

    sub [hl]                                      ; $62c2: $96
    ld l, a                                       ; $62c3: $6f
    add $df                                       ; $62c4: $c6 $df
    jr jr_022_626f                                ; $62c6: $18 $a7

    sbc l                                         ; $62c8: $9d
    adc [hl]                                      ; $62c9: $8e
    ld a, h                                       ; $62ca: $7c
    ld [hl], l                                    ; $62cb: $75
    push de                                       ; $62cc: $d5
    ld a, a                                       ; $62cd: $7f
    ld c, l                                       ; $62ce: $4d
    ld a, [de]                                    ; $62cf: $1a
    ld e, c                                       ; $62d0: $59
    ld sp, hl                                     ; $62d1: $f9
    ret c                                         ; $62d2: $d8

    sbc c                                         ; $62d3: $99

Jump_022_62d4:
    ld h, a                                       ; $62d4: $67
    sbc b                                         ; $62d5: $98
    ld [hl+], a                                   ; $62d6: $22
    ret                                           ; $62d7: $c9


    inc hl                                        ; $62d8: $23
    add h                                         ; $62d9: $84
    xor d                                         ; $62da: $aa
    ld hl, sp+$4a                                 ; $62db: $f8 $4a
    sub a                                         ; $62dd: $97
    add d                                         ; $62de: $82
    ld a, c                                       ; $62df: $79
    ld sp, hl                                     ; $62e0: $f9
    or l                                          ; $62e1: $b5
    sbc a                                         ; $62e2: $9f
    ld [hl], l                                    ; $62e3: $75
    sub h                                         ; $62e4: $94
    ld h, $99                                     ; $62e5: $26 $99
    ld hl, $3dc2                                  ; $62e7: $21 $c2 $3d
    jp z, $fdaf                                   ; $62ea: $ca $af $fd

    xor h                                         ; $62ed: $ac
    and e                                         ; $62ee: $a3
    inc [hl]                                      ; $62ef: $34
    ret                                           ; $62f0: $c9


    inc c                                         ; $62f1: $0c

jr_022_62f2:
    cp e                                          ; $62f2: $bb
    ld h, b                                       ; $62f3: $60
    rst $00                                       ; $62f4: $c7
    ld a, [c]                                     ; $62f5: $f2
    ld a, h                                       ; $62f6: $7c
    rla                                           ; $62f7: $17

Jump_022_62f8:
    inc c                                         ; $62f8: $0c
    and a                                         ; $62f9: $a7
    inc h                                         ; $62fa: $24
    cp a                                          ; $62fb: $bf
    or [hl]                                       ; $62fc: $b6
    ld d, [hl]                                    ; $62fd: $56
    push af                                       ; $62fe: $f5
    ld a, c                                       ; $62ff: $79
    xor [hl]                                      ; $6300: $ae
    ld c, c                                       ; $6301: $49
    inc hl                                        ; $6302: $23
    ld h, e                                       ; $6303: $63
    add hl, hl                                    ; $6304: $29
    pop hl                                        ; $6305: $e1
    push af                                       ; $6306: $f5
    sub h                                         ; $6307: $94
    ei                                            ; $6308: $fb
    add b                                         ; $6309: $80
    jr nc, jr_022_62a2                            ; $630a: $30 $96

    pop af                                        ; $630c: $f1
    scf                                           ; $630d: $37
    add $15                                       ; $630e: $c6 $15
    or l                                          ; $6310: $b5
    cp $28                                        ; $6311: $fe $28
    rla                                           ; $6313: $17
    and [hl]                                      ; $6314: $a6
    db $fc                                        ; $6315: $fc
    jp nc, $979e                                  ; $6316: $d2 $9e $97

    dec bc                                        ; $6319: $0b
    ld e, l                                       ; $631a: $5d
    or [hl]                                       ; $631b: $b6
    cp $fa                                        ; $631c: $fe $fa
    ld e, l                                       ; $631e: $5d
    daa                                           ; $631f: $27
    cpl                                           ; $6320: $2f
    ld sp, hl                                     ; $6321: $f9
    ret c                                         ; $6322: $d8

    inc sp                                        ; $6323: $33
    ld d, e                                       ; $6324: $53
    ld sp, hl                                     ; $6325: $f9
    ld c, l                                       ; $6326: $4d
    sbc d                                         ; $6327: $9a
    sbc l                                         ; $6328: $9d
    or d                                          ; $6329: $b2
    db $e3                                        ; $632a: $e3
    and l                                         ; $632b: $a5
    or c                                          ; $632c: $b1
    db $ed                                        ; $632d: $ed
    ld c, e                                       ; $632e: $4b
    inc l                                         ; $632f: $2c
    dec b                                         ; $6330: $05
    ld l, l                                       ; $6331: $6d
    and a                                         ; $6332: $a7
    inc h                                         ; $6333: $24
    cp a                                          ; $6334: $bf
    or [hl]                                       ; $6335: $b6
    ld d, [hl]                                    ; $6336: $56
    push af                                       ; $6337: $f5
    ld a, c                                       ; $6338: $79
    xor [hl]                                      ; $6339: $ae
    ld c, c                                       ; $633a: $49
    inc hl                                        ; $633b: $23
    ld h, e                                       ; $633c: $63
    add hl, hl                                    ; $633d: $29
    pop hl                                        ; $633e: $e1
    push af                                       ; $633f: $f5

Jump_022_6340:
    sub h                                         ; $6340: $94
    ei                                            ; $6341: $fb
    add b                                         ; $6342: $80
    jr nc, jr_022_62f2                            ; $6343: $30 $ad

    ld l, d                                       ; $6345: $6a
    db $fd                                        ; $6346: $fd
    dec [hl]                                      ; $6347: $35
    ld l, c                                       ; $6348: $69
    ld h, [hl]                                    ; $6349: $66
    and a                                         ; $634a: $a7
    ld hl, $1d36                                  ; $634b: $21 $36 $1d
    xor a                                         ; $634e: $af
    call Call_000_173c                            ; $634f: $cd $3c $17
    cp h                                          ; $6352: $bc
    rst $08                                       ; $6353: $cf
    ld [hl], e                                    ; $6354: $73
    ld e, [hl]                                    ; $6355: $5e
    ld a, [hl]                                    ; $6356: $7e
    dec l                                         ; $6357: $2d
    add hl, hl                                    ; $6358: $29
    push de                                       ; $6359: $d5
    bit 1, e                                      ; $635a: $cb $4b

Jump_022_635c:
    dec c                                         ; $635c: $0d
    sub $e2                                       ; $635d: $d6 $e2
    ld c, c                                       ; $635f: $49
    cp a                                          ; $6360: $bf
    and $bd                                       ; $6361: $e6 $bd
    dec hl                                        ; $6363: $2b
    ld b, $96                                     ; $6364: $06 $96
    or c                                          ; $6366: $b1
    cp [hl]                                       ; $6367: $be
    ld e, c                                       ; $6368: $59
    rst $18                                       ; $6369: $df
    inc l                                         ; $636a: $2c
    xor c                                         ; $636b: $a9
    and $08                                       ; $636c: $e6 $08
    ld hl, $aacb                                  ; $636e: $21 $cb $aa
    cp [hl]                                       ; $6371: $be
    xor e                                         ; $6372: $ab
    cp [hl]                                       ; $6373: $be
    dec hl                                        ; $6374: $2b
    and l                                         ; $6375: $a5
    sbc d                                         ; $6376: $9a
    inc hl                                        ; $6377: $23
    add h                                         ; $6378: $84
    jr nc, jr_022_63c2                            ; $6379: $30 $47

    ld sp, hl                                     ; $637b: $f9
    ld [c], a                                     ; $637c: $e2
    dec hl                                        ; $637d: $2b
    ld hl, sp-$04                                 ; $637e: $f8 $fc
    ld h, e                                       ; $6380: $63
    ld e, h                                       ; $6381: $5c
    ld hl, sp+$2b                                 ; $6382: $f8 $2b
    ret                                           ; $6384: $c9


    rst $08                                       ; $6385: $cf
    ld [hl], e                                    ; $6386: $73
    pop bc                                        ; $6387: $c1
    ei                                            ; $6388: $fb
    ld a, [hl-]                                   ; $6389: $3a
    ld a, [bc]                                    ; $638a: $0a
    cp [hl]                                       ; $638b: $be
    ld h, $8d                                     ; $638c: $26 $8d
    inc l                                         ; $638e: $2c
    ld e, [hl]                                    ; $638f: $5e
    rst $30                                       ; $6390: $f7
    ld hl, sp+$2b                                 ; $6391: $f8 $2b
    ld e, c                                       ; $6393: $59
    add hl, de                                    ; $6394: $19
    ld e, b                                       ; $6395: $58
    daa                                           ; $6396: $27
    dec hl                                        ; $6397: $2b
    inc bc                                        ; $6398: $03
    ld [$4703], sp                                ; $6399: $08 $03 $47
    rst $30                                       ; $639c: $f7
    db $dd                                        ; $639d: $dd
    xor $bb                                       ; $639e: $ee $bb
    ld l, l                                       ; $63a0: $6d
    ld a, h                                       ; $63a1: $7c
    rst $10                                       ; $63a2: $d7
    rst $00                                       ; $63a3: $c7
    and a                                         ; $63a4: $a7
    adc c                                         ; $63a5: $89
    ld l, h                                       ; $63a6: $6c
    db $ed                                        ; $63a7: $ed
    sbc a                                         ; $63a8: $9f
    xor [hl]                                      ; $63a9: $ae
    db $dd                                        ; $63aa: $dd
    ld [hl], a                                    ; $63ab: $77
    cp e                                          ; $63ac: $bb
    rst $28                                       ; $63ad: $ef
    or $bb                                        ; $63ae: $f6 $bb
    ld l, b                                       ; $63b0: $68
    and e                                         ; $63b1: $a3
    ld de, $8421                                  ; $63b2: $11 $21 $84
    ld bc, $bf3d                                  ; $63b5: $01 $3d $bf
    ld d, $e3                                     ; $63b8: $16 $e3
    and b                                         ; $63ba: $a0
    di                                            ; $63bb: $f3
    ld e, d                                       ; $63bc: $5a
    sbc a                                         ; $63bd: $9f
    ld b, $7a                                     ; $63be: $06 $7a
    ld l, c                                       ; $63c0: $69
    ld a, h                                       ; $63c1: $7c

jr_022_63c2:
    ld a, c                                       ; $63c2: $79
    ld e, d                                       ; $63c3: $5a
    sub e                                         ; $63c4: $93
    and [hl]                                      ; $63c5: $a6
    ld h, [hl]                                    ; $63c6: $66
    db $fd                                        ; $63c7: $fd
    or c                                          ; $63c8: $b1
    xor a                                         ; $63c9: $af
    ld l, $7b                                     ; $63ca: $2e $7b
    ld [hl], $be                                  ; $63cc: $36 $be
    cp h                                          ; $63ce: $bc
    db $fc                                        ; $63cf: $fc
    sbc d                                         ; $63d0: $9a
    inc [hl]                                      ; $63d1: $34
    or d                                          ; $63d2: $b2
    sbc b                                         ; $63d3: $98
    adc l                                         ; $63d4: $8d
    ld b, [hl]                                    ; $63d5: $46
    cp a                                          ; $63d6: $bf
    rrca                                          ; $63d7: $0f
    adc e                                         ; $63d8: $8b
    rst $30                                       ; $63d9: $f7
    ld de, $3d06                                  ; $63da: $11 $06 $3d
    adc d                                         ; $63dd: $8a
    ld d, d                                       ; $63de: $52
    ld a, l                                       ; $63df: $7d
    ld b, c                                       ; $63e0: $41
    ld h, $a3                                     ; $63e1: $26 $a3
    rlca                                          ; $63e3: $07
    sbc b                                         ; $63e4: $98

jr_022_63e5:
    sub a                                         ; $63e5: $97
    ld l, a                                       ; $63e6: $6f
    add $2e                                       ; $63e7: $c6 $2e
    and e                                         ; $63e9: $a3
    sbc d                                         ; $63ea: $9a
    rrca                                          ; $63eb: $0f
    cp $67                                        ; $63ec: $fe $67
    nop                                           ; $63ee: $00
    ld h, c                                       ; $63ef: $61
    dec a                                         ; $63f0: $3d
    adc e                                         ; $63f1: $8b
    ld a, d                                       ; $63f2: $7a
    dec c                                         ; $63f3: $0d
    and $e5                                       ; $63f4: $e6 $e5
    rst $10                                       ; $63f6: $d7
    sub d                                         ; $63f7: $92
    ld d, d                                       ; $63f8: $52
    cp l                                          ; $63f9: $bd
    cp h                                          ; $63fa: $bc
    call nc, $2d60                                ; $63fb: $d4 $60 $2d
    sbc [hl]                                      ; $63fe: $9e
    db $f4                                        ; $63ff: $f4
    ld e, l                                       ; $6400: $5d
    ld sp, $b196                                  ; $6401: $31 $96 $b1
    and h                                         ; $6404: $a4
    sbc d                                         ; $6405: $9a
    xor a                                         ; $6406: $af
    ld c, [hl]                                    ; $6407: $4e
    ret                                           ; $6408: $c9


    ld [hl], e                                    ; $6409: $73
    rst $10                                       ; $640a: $d7
    ld [hl], $be                                  ; $640b: $36 $be
    ld d, $d2                                     ; $640d: $16 $d2
    adc $8f                                       ; $640f: $ce $8f
    ld d, a                                       ; $6411: $57
    ld [hl], d                                    ; $6412: $72
    sbc b                                         ; $6413: $98
    rst $20                                       ; $6414: $e7
    ret nz                                        ; $6415: $c0

    ld e, a                                       ; $6416: $5f
    db $e3                                        ; $6417: $e3
    xor [hl]                                      ; $6418: $ae
    ld [hl], a                                    ; $6419: $77
    pop bc                                        ; $641a: $c1
    rst $00                                       ; $641b: $c7
    db $dd                                        ; $641c: $dd
    ld e, b                                       ; $641d: $58
    sub l                                         ; $641e: $95
    ld l, $eb                                     ; $641f: $2e $eb
    ld sp, hl                                     ; $6421: $f9
    or e                                          ; $6422: $b3
    ld d, e                                       ; $6423: $53
    add d                                         ; $6424: $82
    db $f4                                        ; $6425: $f4
    ld l, c                                       ; $6426: $69
    dec sp                                        ; $6427: $3b
    adc l                                         ; $6428: $8d
    xor a                                         ; $6429: $af
    call c, Call_022_6110                         ; $642a: $dc $10 $61
    and a                                         ; $642d: $a7
    sbc c                                         ; $642e: $99
    ld e, e                                       ; $642f: $5b
    push de                                       ; $6430: $d5
    ld de, $e542                                  ; $6431: $11 $42 $e5
    or d                                          ; $6434: $b2
    ld b, a                                       ; $6435: $47
    jr jr_022_63e5                                ; $6436: $18 $ad

    ld a, l                                       ; $6438: $7d
    or a                                          ; $6439: $b7
    or $dd                                        ; $643a: $f6 $dd
    xor d                                         ; $643c: $aa
    ld [hl+], a                                   ; $643d: $22
    dec c                                         ; $643e: $0d
    ld b, d                                       ; $643f: $42
    ld [$bec5], sp                                ; $6440: $08 $c5 $be
    ld h, e                                       ; $6443: $63
    rst $18                                       ; $6444: $df
    ld sp, $deb3                                  ; $6445: $31 $b3 $de
    dec b                                         ; $6448: $05
    inc bc                                        ; $6449: $03
    cp l                                          ; $644a: $bd
    jp nc, Jump_022_5e4c                          ; $644b: $d2 $4c $5e

    ld h, e                                       ; $644e: $63
    ld l, h                                       ; $644f: $6c
    ld b, $25                                     ; $6450: $06 $25
    ld c, l                                       ; $6452: $4d
    ld h, h                                       ; $6453: $64
    ld d, h                                       ; $6454: $54
    di                                            ; $6455: $f3
    add l                                         ; $6456: $85
    ld e, d                                       ; $6457: $5a
    rst $38                                       ; $6458: $ff
    reti                                          ; $6459: $d9


    add [hl]                                      ; $645a: $86
    sub [hl]                                      ; $645b: $96
    or $bc                                        ; $645c: $f6 $bc
    db $fc                                        ; $645e: $fc
    ld a, b                                       ; $645f: $78
    ld l, l                                       ; $6460: $6d
    halt                                          ; $6461: $76
    sbc d                                         ; $6462: $9a
    cp c                                          ; $6463: $b9
    ld [hl+], a                                   ; $6464: $22
    rra                                           ; $6465: $1f
    db $e3                                        ; $6466: $e3
    ld e, h                                       ; $6467: $5c
    ld h, e                                       ; $6468: $63
    dec e                                         ; $6469: $1d
    db $10                                        ; $646a: $10
    ld b, $a7                                     ; $646b: $06 $a7
    ld h, h                                       ; $646d: $64
    sub a                                         ; $646e: $97
    sbc l                                         ; $646f: $9d
    sub h                                         ; $6470: $94
    ld e, c                                       ; $6471: $59
    rst $28                                       ; $6472: $ef
    add d                                         ; $6473: $82
    ld bc, $1aa7                                  ; $6474: $01 $a7 $1a
    rst $28                                       ; $6477: $ef
    ld [hl-], a                                   ; $6478: $32
    ld c, e                                       ; $6479: $4b
    adc l                                         ; $647a: $8d
    ld c, l                                       ; $647b: $4d
    call nc, $cbcb                                ; $647c: $d4 $cb $cb
    ld l, h                                       ; $647f: $6c
    xor l                                         ; $6480: $ad
    ld a, [hl]                                    ; $6481: $7e
    rst $00                                       ; $6482: $c7
    db $dd                                        ; $6483: $dd
    ld e, b                                       ; $6484: $58
    sub l                                         ; $6485: $95
    ld a, c                                       ; $6486: $79
    ld d, c                                       ; $6487: $51
    sbc d                                         ; $6488: $9a
    rla                                           ; $6489: $17
    push af                                       ; $648a: $f5
    ld a, c                                       ; $648b: $79
    cp c                                          ; $648c: $b9
    inc d                                         ; $648d: $14
    ld [hl], h                                    ; $648e: $74
    pop bc                                        ; $648f: $c1
    dec a                                         ; $6490: $3d
    ld c, e                                       ; $6491: $4b
    inc sp                                        ; $6492: $33
    sub l                                         ; $6493: $95
    sbc a                                         ; $6494: $9f
    sub a                                         ; $6495: $97
    ld l, a                                       ; $6496: $6f
    ld d, [hl]                                    ; $6497: $56
    rst $38                                       ; $6498: $ff
    rst $28                                       ; $6499: $ef
    ld e, h                                       ; $649a: $5c
    ld a, [bc]                                    ; $649b: $0a
    and $45                                       ; $649c: $e6 $45
    ld a, l                                       ; $649e: $7d

jr_022_649f:
    ld e, [hl]                                    ; $649f: $5e
    ld l, $05                                     ; $64a0: $2e $05
    adc e                                         ; $64a2: $8b
    ld e, c                                       ; $64a3: $59
    push de                                       ; $64a4: $d5
    sbc a                                         ; $64a5: $9f
    call Call_022_7674                            ; $64a6: $cd $74 $76
    ld l, c                                       ; $64a9: $69
    ld e, [hl]                                    ; $64aa: $5e
    ld a, [hl]                                    ; $64ab: $7e
    ld d, b                                       ; $64ac: $50
    sub l                                         ; $64ad: $95
    call z, $15d8                                 ; $64ae: $cc $d8 $15
    inc bc                                        ; $64b1: $03
    rst $00                                       ; $64b2: $c7
    ld e, h                                       ; $64b3: $5c
    ld b, [hl]                                    ; $64b4: $46
    dec [hl]                                      ; $64b5: $35
    ld e, a                                       ; $64b6: $5f
    sub e                                         ; $64b7: $93
    ld h, [hl]                                    ; $64b8: $66
    ldh a, [$3f]                                  ; $64b9: $f0 $3f
    cpl                                           ; $64bb: $2f
    ccf                                           ; $64bc: $3f
    rla                                           ; $64bd: $17
    db $ed                                        ; $64be: $ed
    or b                                          ; $64bf: $b0
    ld c, h                                       ; $64c0: $4c
    reti                                          ; $64c1: $d9


    push af                                       ; $64c2: $f5
    pop af                                        ; $64c3: $f1
    ld a, [bc]                                    ; $64c4: $0a
    inc bc                                        ; $64c5: $03
    ld d, a                                       ; $64c6: $57
    ld h, d                                       ; $64c7: $62
    sub a                                         ; $64c8: $97
    add d                                         ; $64c9: $82
    dec h                                         ; $64ca: $25
    ld [hl], l                                    ; $64cb: $75
    sbc l                                         ; $64cc: $9d
    push bc                                       ; $64cd: $c5
    rst $00                                       ; $64ce: $c7
    dec hl                                        ; $64cf: $2b
    inc l                                         ; $64d0: $2c
    jr nc, jr_022_64fd                            ; $64d1: $30 $2a

    db $ec                                        ; $64d3: $ec
    ld d, d                                       ; $64d4: $52
    jr nc, jr_022_649f                            ; $64d5: $30 $c8

    ldh a, [$bd]                                  ; $64d7: $f0 $bd
    ld e, h                                       ; $64d9: $5c
    ld a, [bc]                                    ; $64da: $0a
    db $10                                        ; $64db: $10
    ld b, $96                                     ; $64dc: $06 $96
    or l                                          ; $64de: $b5
    rst $18                                       ; $64df: $df
    ld [hl], a                                    ; $64e0: $77
    cp l                                          ; $64e1: $bd
    ld b, $0b                                     ; $64e2: $06 $0b
    adc h                                         ; $64e4: $8c
    ld a, [bc]                                    ; $64e5: $0a
    cp e                                          ; $64e6: $bb
    inc d                                         ; $64e7: $14
    call z, $afcb                                 ; $64e8: $cc $cb $af
    dec h                                         ; $64eb: $25
    and l                                         ; $64ec: $a5
    ld a, d                                       ; $64ed: $7a
    ld a, c                                       ; $64ee: $79
    xor c                                         ; $64ef: $a9
    pop bc                                        ; $64f0: $c1
    ld e, d                                       ; $64f1: $5a
    inc a                                         ; $64f2: $3c
    jp hl                                         ; $64f3: $e9


    cp e                                          ; $64f4: $bb
    ld h, b                                       ; $64f5: $60
    dec a                                         ; $64f6: $3d
    jp z, Jump_022_5d85                           ; $64f7: $ca $85 $5d

    jr @+$55                                      ; $64fa: $18 $53

    ld a, [bc]                                    ; $64fc: $0a

jr_022_64fd:
    ld e, [hl]                                    ; $64fd: $5e
    jp nc, $94c0                                  ; $64fe: $d2 $c0 $94

    ret c                                         ; $6501: $d8

    xor [hl]                                      ; $6502: $ae

jr_022_6503:
    rst $10                                       ; $6503: $d7

Jump_022_6504:
    ld h, b                                       ; $6504: $60
    pop bc                                        ; $6505: $c1
    cp e                                          ; $6506: $bb
    ld e, a                                       ; $6507: $5f
    ld a, [bc]                                    ; $6508: $0a
    ld d, $d5                                     ; $6509: $16 $d5
    rra                                           ; $650b: $1f
    db $ed                                        ; $650c: $ed
    and h                                         ; $650d: $a4
    rst $30                                       ; $650e: $f7
    ld a, [de]                                    ; $650f: $1a
    inc l                                         ; $6510: $2c
    ret z                                         ; $6511: $c8

    pop bc                                        ; $6512: $c1
    rst $38                                       ; $6513: $ff
    xor [hl]                                      ; $6514: $ae

jr_022_6515:
    dec a                                         ; $6515: $3d
    cpl                                           ; $6516: $2f
    cp a                                          ; $6517: $bf
    db $e3                                        ; $6518: $e3
    call nc, $9277                                ; $6519: $d4 $77 $92
    or d                                          ; $651c: $b2
    ld h, [hl]                                    ; $651d: $66
    sub a                                         ; $651e: $97
    and $e5                                       ; $651f: $e6 $e5
    rst $10                                       ; $6521: $d7
    db $fd                                        ; $6522: $fd
    ld d, d                                       ; $6523: $52
    ld a, l                                       ; $6524: $7d
    rst $00                                       ; $6525: $c7
    ret z                                         ; $6526: $c8

    inc bc                                        ; $6527: $03
    db $ec                                        ; $6528: $ec
    jp nz, Jump_022_5ada                          ; $6529: $c2 $da $5a

    push de                                       ; $652c: $d5
    rst $10                                       ; $652d: $d7
    cp h                                          ; $652e: $bc
    inc hl                                        ; $652f: $23
    inc c                                         ; $6530: $0c
    dec a                                         ; $6531: $3d
    set 1, e                                      ; $6532: $cb $cb
    cpl                                           ; $6534: $2f
    ld l, c                                       ; $6535: $69
    xor a                                         ; $6536: $af
    ld [c], a                                     ; $6537: $e2
    ld h, l                                       ; $6538: $65
    ld b, l                                       ; $6539: $45
    xor l                                         ; $653a: $ad
    cp a                                          ; $653b: $bf
    ld h, $cd                                     ; $653c: $26 $cd
    inc [hl]                                      ; $653e: $34
    add $b5                                       ; $653f: $c6 $b5
    rst $38                                       ; $6541: $ff

jr_022_6542:
    xor c                                         ; $6542: $a9
    dec hl                                        ; $6543: $2b
    ld b, $a7                                     ; $6544: $06 $a7
    cp h                                          ; $6546: $bc
    push af                                       ; $6547: $f5
    ld h, l                                       ; $6548: $65
    pop hl                                        ; $6549: $e1
    dec h                                         ; $654a: $25
    ld [hl], $2f                                  ; $654b: $36 $2f
    ld [$d65d], a                                 ; $654d: $ea $5d $d6
    db $fd                                        ; $6550: $fd
    ld b, $03                                     ; $6551: $06 $03
    ld c, d                                       ; $6553: $4a
    db $e3                                        ; $6554: $e3
    ld e, l                                       ; $6555: $5d
    jr nc, jr_022_6515                            ; $6556: $30 $bd

    jp nc, $a8ac                                  ; $6558: $d2 $ac $a8

    push af                                       ; $655b: $f5
    rst $20                                       ; $655c: $e7
    add hl, sp                                    ; $655d: $39
    ldh a, [$ec]                                  ; $655e: $f0 $ec
    call z, $7eb5                                 ; $6560: $cc $b5 $7e
    add hl, hl                                    ; $6563: $29
    jr jr_022_6542                                ; $6564: $18 $dc

    jr jr_022_6503                                ; $6566: $18 $9b

    ld d, l                                       ; $6568: $55
    ld b, l                                       ; $6569: $45
    xor c                                         ; $656a: $a9
    ld a, d                                       ; $656b: $7a

Jump_022_656c:
    ld e, b                                       ; $656c: $58
    cp h                                          ; $656d: $bc
    push af                                       ; $656e: $f5
    sbc a                                         ; $656f: $9f
    sub a                                         ; $6570: $97
    dec bc                                        ; $6571: $0b
    ld l, b                                       ; $6572: $68
    and a                                         ; $6573: $a7
    inc h                                         ; $6574: $24
    rst $08                                       ; $6575: $cf
    db $dd                                        ; $6576: $dd
    or l                                          ; $6577: $b5
    rst $10                                       ; $6578: $d7
    and h                                         ; $6579: $a4
    add hl, de                                    ; $657a: $19
    ld c, e                                       ; $657b: $4b
    xor d                                         ; $657c: $aa
    ld sp, hl                                     ; $657d: $f9
    jp nz, $8c4b                                  ; $657e: $c2 $4b $8c

    dec sp                                        ; $6581: $3b
    ld c, e                                       ; $6582: $4b
    dec l                                         ; $6583: $2d
    ld e, h                                       ; $6584: $5c
    sub b                                         ; $6585: $90
    sub a                                         ; $6586: $97
    add d                                         ; $6587: $82
    ld a, c                                       ; $6588: $79
    xor [hl]                                      ; $6589: $ae

jr_022_658a:
    db $fd                                        ; $658a: $fd
    inc c                                         ; $658b: $0c
    ld h, c                                       ; $658c: $61
    daa                                           ; $658d: $27
    ccf                                           ; $658e: $3f
    ld [hl], a                                    ; $658f: $77
    sbc [hl]                                      ; $6590: $9e
    adc c                                         ; $6591: $89
    sub $43                                       ; $6592: $d6 $43
    sbc $9a                                       ; $6594: $de $9a
    or d                                          ; $6596: $b2
    ld c, d                                       ; $6597: $4a
    xor c                                         ; $6598: $a9
    and $83                                       ; $6599: $e6 $83
    ld hl, sp-$21                                 ; $659b: $f8 $df
    reti                                          ; $659d: $d9


    or l                                          ; $659e: $b5
    ld h, a                                       ; $659f: $67
    xor c                                         ; $65a0: $a9
    add l                                         ; $65a1: $85
    and e                                         ; $65a2: $a3
    db $f4                                        ; $65a3: $f4
    ld a, c                                       ; $65a4: $79
    ld a, c                                       ; $65a5: $79
    ld a, c                                       ; $65a6: $79
    add h                                         ; $65a7: $84
    ld bc, $7f3d                                  ; $65a8: $01 $3d $7f
    ld d, b                                       ; $65ab: $50
    jp nc, Jump_000_3644                          ; $65ac: $d2 $44 $36

    rst $38                                       ; $65af: $ff
    jr jr_022_6629                                ; $65b0: $18 $77

    ld [hl], d                                    ; $65b2: $72
    ld [hl], l                                    ; $65b3: $75
    ld a, h                                       ; $65b4: $7c
    sub d                                         ; $65b5: $92
    ld b, $1a                                     ; $65b6: $06 $1a
    db $e3                                        ; $65b8: $e3
    or h                                          ; $65b9: $b4
    sbc l                                         ; $65ba: $9d
    add $d7                                       ; $65bb: $c6 $d7
    ld b, d                                       ; $65bd: $42
    jp c, $8479                                   ; $65be: $da $79 $84

    ld bc, $b196                                  ; $65c1: $01 $96 $b1
    and h                                         ; $65c4: $a4
    sbc d                                         ; $65c5: $9a
    rst $08                                       ; $65c6: $cf
    res 4, l                                      ; $65c7: $cb $a5
    ld a, [$7ca0]                                 ; $65c9: $fa $a0 $7c
    adc l                                         ; $65cc: $8d
    xor l                                         ; $65cd: $ad
    db $fd                                        ; $65ce: $fd
    pop af                                        ; $65cf: $f1
    cp [hl]                                       ; $65d0: $be
    push af                                       ; $65d1: $f5
    ld h, a                                       ; $65d2: $67
    nop                                           ; $65d3: $00
    db $ed                                        ; $65d4: $ed
    jr z, jr_022_6639                             ; $65d5: $28 $62

    cp e                                          ; $65d7: $bb
    or $a0                                        ; $65d8: $f6 $a0
    db $fc                                        ; $65da: $fc
    ret c                                         ; $65db: $d8

    ld h, l                                       ; $65dc: $65
    call c, $1f5d                                 ; $65dd: $dc $5d $1f
    sbc a                                         ; $65e0: $9f
    ld h, $b2                                     ; $65e1: $26 $b2
    ld [hl], l                                    ; $65e3: $75
    inc h                                         ; $65e4: $24
    xor l                                         ; $65e5: $ad
    ccf                                           ; $65e6: $3f
    cp $c7                                        ; $65e7: $fe $c7
    cp a                                          ; $65e9: $bf
    db $fc                                        ; $65ea: $fc
    ld a, b                                       ; $65eb: $78
    dec h                                         ; $65ec: $25
    or $72                                        ; $65ed: $f6 $72
    add hl, hl                                    ; $65ef: $29

Jump_022_65f0:
    sbc b                                         ; $65f0: $98
    sub a                                         ; $65f1: $97
    ld e, a                                       ; $65f2: $5f
    pop de                                        ; $65f3: $d1
    jr @+$63                                      ; $65f4: $18 $61

    ld d, c                                       ; $65f6: $51
    pop bc                                        ; $65f7: $c1
    ld b, a                                       ; $65f8: $47
    scf                                           ; $65f9: $37
    jr z, jr_022_658a                             ; $65fa: $28 $8e

    jr nc, jr_022_6625                            ; $65fc: $30 $27

    ld l, e                                       ; $65fe: $6b
    db $d3                                        ; $65ff: $d3
    ld a, [hl]                                    ; $6600: $7e
    or h                                          ; $6601: $b4
    and e                                         ; $6602: $a3
    adc l                                         ; $6603: $8d
    adc a                                         ; $6604: $8f
    rst $38                                       ; $6605: $ff
    dec d                                         ; $6606: $15
    or l                                          ; $6607: $b5
    cp $3c                                        ; $6608: $fe $3c
    rst $00                                       ; $660a: $c7
    ld [hl], d                                    ; $660b: $72
    sub b                                         ; $660c: $90
    pop hl                                        ; $660d: $e1
    ld a, e                                       ; $660e: $7b
    cp c                                          ; $660f: $b9
    inc d                                         ; $6610: $14
    ld [hl], h                                    ; $6611: $74
    pop bc                                        ; $6612: $c1
    dec a                                         ; $6613: $3d
    ld a, a                                       ; $6614: $7f
    db $f4                                        ; $6615: $f4
    rst $08                                       ; $6616: $cf
    ld d, $a6                                     ; $6617: $16 $a6
    db $fc                                        ; $6619: $fc
    ld a, [hl-]                                   ; $661a: $3a
    sub d                                         ; $661b: $92
    ld l, c                                       ; $661c: $69
    rst $28                                       ; $661d: $ef
    jp c, $bfe3                                   ; $661e: $da $e3 $bf

    ld h, $bf                                     ; $6621: $26 $bf
    jr nz, jr_022_6654                            ; $6623: $20 $2f

jr_022_6625:
    dec b                                         ; $6625: $05
    di                                            ; $6626: $f3
    ld e, h                                       ; $6627: $5c
    sub l                                         ; $6628: $95

jr_022_6629:
    ld h, h                                       ; $6629: $64
    cp l                                          ; $662a: $bd
    ld d, h                                       ; $662b: $54
    db $fd                                        ; $662c: $fd
    ld c, [hl]                                    ; $662d: $4e
    xor [hl]                                      ; $662e: $ae
    adc [hl]                                      ; $662f: $8e
    ld c, a                                       ; $6630: $4f
    jp nc, Jump_022_6340                          ; $6631: $d2 $40 $63

    ld b, h                                       ; $6634: $44
    db $eb                                        ; $6635: $eb
    ld sp, hl                                     ; $6636: $f9

jr_022_6637:
    dec bc                                        ; $6637: $0b
    dec c                                         ; $6638: $0d

jr_022_6639:
    ld hl, sp-$14                                 ; $6639: $f8 $ec
    dec de                                        ; $663b: $1b
    jr jr_022_6637                                ; $663c: $18 $f9

    and l                                         ; $663e: $a5
    pop af                                        ; $663f: $f1
    pop af                                        ; $6640: $f1
    ld b, l                                       ; $6641: $45
    ld a, l                                       ; $6642: $7d
    ld e, [hl]                                    ; $6643: $5e
    ld l, $ac                                     ; $6644: $2e $ac
    dec h                                         ; $6646: $25
    and l                                         ; $6647: $a5
    ld a, d                                       ; $6648: $7a
    ld a, c                                       ; $6649: $79
    xor c                                         ; $664a: $a9
    pop bc                                        ; $664b: $c1
    ld e, d                                       ; $664c: $5a
    inc a                                         ; $664d: $3c
    jp hl                                         ; $664e: $e9


    ld [hl], a                                    ; $664f: $77
    ld bc, $c761                                  ; $6650: $01 $61 $c7
    ld h, a                                       ; $6653: $67

jr_022_6654:
    or d                                          ; $6654: $b2
    ld e, l                                       ; $6655: $5d

jr_022_6656:
    or $8a                                        ; $6656: $f6 $8a
    halt                                          ; $6658: $76
    jp nc, $0d7b                                  ; $6659: $d2 $7b $0d

    ld b, $ae                                     ; $665c: $06 $ae
    ld [c], a                                     ; $665e: $e2
    di                                            ; $665f: $f3
    inc c                                         ; $6660: $0c
    ld d, e                                       ; $6661: $53
    inc h                                         ; $6662: $24
    ld a, c                                       ; $6663: $79
    xor $bc                                       ; $6664: $ee $bc
    and h                                         ; $6666: $a4
    add hl, bc                                    ; $6667: $09
    ld a, [bc]                                    ; $6668: $0a
    sbc d                                         ; $6669: $9a
    and l                                         ; $666a: $a5
    ld h, [hl]                                    ; $666b: $66
    db $fd                                        ; $666c: $fd
    dec d                                         ; $666d: $15
    ld h, l                                       ; $666e: $65
    ld a, e                                       ; $666f: $7b
    ld c, d                                       ; $6670: $4a
    inc de                                        ; $6671: $13
    sub h                                         ; $6672: $94
    add hl, hl                                    ; $6673: $29
    or e                                          ; $6674: $b3
    ld a, $b9                                     ; $6675: $3e $b9
    sub c                                         ; $6677: $91
    add a                                         ; $6678: $87
    reti                                          ; $6679: $d9


    add hl, hl                                    ; $667a: $29
    ld c, e                                       ; $667b: $4b
    ld a, [$0dd1]                                 ; $667c: $fa $d1 $0d
    adc d                                         ; $667f: $8a
    and e                                         ; $6680: $a3
    dec e                                         ; $6681: $1d
    sbc a                                         ; $6682: $9f
    ret                                           ; $6683: $c9


    ld b, [hl]                                    ; $6684: $46
    scf                                           ; $6685: $37
    jr z, jr_022_6656                             ; $6686: $28 $ce

    ld e, l                                       ; $6688: $5d
    xor e                                         ; $6689: $ab
    adc d                                         ; $668a: $8a
    inc [hl]                                      ; $668b: $34
    ld [$c703], sp                                ; $668c: $08 $03 $c7
    ld h, a                                       ; $668f: $67
    or d                                          ; $6690: $b2
    pop de                                        ; $6691: $d1
    dec c                                         ; $6692: $0d
    adc d                                         ; $6693: $8a
    ld [hl], e                                    ; $6694: $73
    ld [hl], a                                    ; $6695: $77
    ld a, d                                       ; $6696: $7a
    ld [de], a                                    ; $6697: $12
    jp nz, Jump_000_32dd                          ; $6698: $c2 $dd $32

    db $fc                                        ; $669b: $fc
    dec h                                         ; $669c: $25
    and c                                         ; $669d: $a1
    xor l                                         ; $669e: $ad
    rst $20                                       ; $669f: $e7
    xor a                                         ; $66a0: $af
    xor b                                         ; $66a1: $a8
    push af                                       ; $66a2: $f5
    rst $20                                       ; $66a3: $e7
    add hl, sp                                    ; $66a4: $39
    sub a                                         ; $66a5: $97
    ld h, [hl]                                    ; $66a6: $66

Jump_022_66a7:
    sbc [hl]                                      ; $66a7: $9e
    or e                                          ; $66a8: $b3
    cpl                                           ; $66a9: $2f
    or c                                          ; $66aa: $b1
    sbc l                                         ; $66ab: $9d
    xor h                                         ; $66ac: $ac
    pop de                                        ; $66ad: $d1
    adc $66                                       ; $66ae: $ce $66
    sub a                                         ; $66b0: $97
    and $e5                                       ; $66b1: $e6 $e5
    rst $10                                       ; $66b3: $d7
    ld b, e                                       ; $66b4: $43
    or d                                          ; $66b5: $b2
    ld d, e                                       ; $66b6: $53
    sbc d                                         ; $66b7: $9a
    sbc l                                         ; $66b8: $9d
    sbc [hl]                                      ; $66b9: $9e
    add hl, de                                    ; $66ba: $19
    ld c, [hl]                                    ; $66bb: $4e
    inc bc                                        ; $66bc: $03
    cp l                                          ; $66bd: $bd
    add h                                         ; $66be: $84
    jr nc, jr_022_66fe                            ; $66bf: $30 $3d

    ld a, a                                       ; $66c1: $7f
    ld d, b                                       ; $66c2: $50
    jp nc, Jump_000_3644                          ; $66c3: $d2 $44 $36

    ld [hl], b                                    ; $66c6: $70
    ld l, l                                       ; $66c7: $6d
    ld h, [hl]                                    ; $66c8: $66
    ld a, [hl-]                                   ; $66c9: $3a
    dec hl                                        ; $66ca: $2b
    cpl                                           ; $66cb: $2f
    rst $08                                       ; $66cc: $cf
    ld e, l                                       ; $66cd: $5d
    xor e                                         ; $66ce: $ab
    adc d                                         ; $66cf: $8a
    inc [hl]                                      ; $66d0: $34
    ld l, b                                       ; $66d1: $68
    db $eb                                        ; $66d2: $eb
    ld d, c                                       ; $66d3: $51
    ld a, [hl]                                    ; $66d4: $7e
    dec a                                         ; $66d5: $3d
    inc h                                         ; $66d6: $24
    dec sp                                        ; $66d7: $3b
    and l                                         ; $66d8: $a5
    reti                                          ; $66d9: $d9


    jp hl                                         ; $66da: $e9


    sbc c                                         ; $66db: $99
    pop hl                                        ; $66dc: $e1
    ld l, $2c                                     ; $66dd: $2e $2c
    ld l, c                                       ; $66df: $69
    ld e, [hl]                                    ; $66e0: $5e
    ld a, [hl]                                    ; $66e1: $7e
    ld e, [hl]                                    ; $66e2: $5e
    xor [hl]                                      ; $66e3: $ae
    or b                                          ; $66e4: $b0
    reti                                          ; $66e5: $d9


    ld sp, $1053                                  ; $66e6: $31 $53 $10
    ld b, $3d                                     ; $66e9: $06 $3d
    jp z, $afcb                                   ; $66eb: $ca $cb $af

    ld c, c                                       ; $66ee: $49
    inc sp                                        ; $66ef: $33
    sub l                                         ; $66f0: $95
    rst $20                                       ; $66f1: $e7
    xor [hl]                                      ; $66f2: $ae
    ld d, l                                       ; $66f3: $55
    ld b, l                                       ; $66f4: $45
    ld a, [de]                                    ; $66f5: $1a
    or h                                          ; $66f6: $b4
    sbc l                                         ; $66f7: $9d
    db $f4                                        ; $66f8: $f4
    ld e, [hl]                                    ; $66f9: $5e
    add e                                         ; $66fa: $83
    dec b                                         ; $66fb: $05
    add hl, sp                                    ; $66fc: $39
    rst $08                                       ; $66fd: $cf

jr_022_66fe:
    and l                                         ; $66fe: $a5
    sub c                                         ; $66ff: $91
    cp c                                          ; $6700: $b9
    or [hl]                                       ; $6701: $b6
    db $e3                                        ; $6702: $e3
    inc hl                                        ; $6703: $23
    inc c                                         ; $6704: $0c
    db $dd                                        ; $6705: $dd
    ld l, a                                       ; $6706: $6f
    or b                                          ; $6707: $b0
    ld d, $4a                                     ; $6708: $16 $4a
    db $e3                                        ; $670a: $e3
    ld [$9603], sp                                ; $670b: $08 $03 $96
    or l                                          ; $670e: $b5
    rst $18                                       ; $670f: $df
    db $fd                                        ; $6710: $fd
    ld h, l                                       ; $6711: $65
    sub h                                         ; $6712: $94
    cp [hl]                                       ; $6713: $be
    jr nz, jr_022_678d                            ; $6714: $20 $77

    ld l, c                                       ; $6716: $69
    ld e, [hl]                                    ; $6717: $5e
    ld e, [hl]                                    ; $6718: $5e
    ld e, $6d                                     ; $6719: $1e $6d
    ld d, $af                                     ; $671b: $16 $af
    pop bc                                        ; $671d: $c1
    db $ec                                        ; $671e: $ec
    sub h                                         ; $671f: $94
    or $65                                        ; $6720: $f6 $65
    db $ec                                        ; $6722: $ec
    add hl, bc                                    ; $6723: $09
    ld h, c                                       ; $6724: $61
    daa                                           ; $6725: $27
    cp a                                          ; $6726: $bf
    ld c, b                                       ; $6727: $48
    or e                                          ; $6728: $b3
    ld l, [hl]                                    ; $6729: $6e
    ld b, l                                       ; $672a: $45
    ld l, $78                                     ; $672b: $2e $78
    xor b                                         ; $672d: $a8
    ret nz                                        ; $672e: $c0

    ld e, l                                       ; $672f: $5d
    xor e                                         ; $6730: $ab
    adc d                                         ; $6731: $8a
    inc [hl]                                      ; $6732: $34
    ld e, l                                       ; $6733: $5d
    jr nc, jr_022_675d                            ; $6734: $30 $27

    cp a                                          ; $6736: $bf
    ld c, b                                       ; $6737: $48
    or e                                          ; $6738: $b3
    ld l, [hl]                                    ; $6739: $6e
    ld b, l                                       ; $673a: $45
    ld l, $78                                     ; $673b: $2e $78
    xor b                                         ; $673d: $a8
    ret nz                                        ; $673e: $c0

    db $dd                                        ; $673f: $dd
    jp hl                                         ; $6740: $e9


    ld c, c                                       ; $6741: $49
    ld e, l                                       ; $6742: $5d
    halt                                          ; $6743: $76
    ld d, d                                       ; $6744: $52
    ld h, [hl]                                    ; $6745: $66
    sbc l                                         ; $6746: $9d
    dec sp                                        ; $6747: $3b
    cp $6b                                        ; $6748: $fe $6b
    sub $5f                                       ; $674a: $d6 $5f
    sub b                                         ; $674c: $90
    cp [hl]                                       ; $674d: $be
    ld l, [hl]                                    ; $674e: $6e
    ld b, l                                       ; $674f: $45
    ld l, $78                                     ; $6750: $2e $78
    xor b                                         ; $6752: $a8
    or b                                          ; $6753: $b0
    adc [hl]                                      ; $6754: $8e
    ld d, [hl]                                    ; $6755: $56
    ld [hl], l                                    ; $6756: $75
    dec c                                         ; $6757: $0d
    ld e, $10                                     ; $6758: $1e $10
    ld b, $c7                                     ; $675a: $06 $c7
    ld e, d                                       ; $675c: $5a

jr_022_675d:
    sbc a                                         ; $675d: $9f
    and $25                                       ; $675e: $e6 $25
    ld c, l                                       ; $6760: $4d
    ld d, b                                       ; $6761: $50
    ld d, $26                                     ; $6762: $16 $26
    ld hl, sp-$2e                                 ; $6764: $f8 $d2
    sbc [hl]                                      ; $6766: $9e
    sub a                                         ; $6767: $97
    ld e, a                                       ; $6768: $5f
    ld a, d                                       ; $6769: $7a
    ld a, c                                       ; $676a: $79
    add hl, de                                    ; $676b: $19
    cp b                                          ; $676c: $b8
    ld h, c                                       ; $676d: $61
    ld c, a                                       ; $676e: $4f
    ld c, $53                                     ; $676f: $0e $53
    ld sp, hl                                     ; $6771: $f9
    dec b                                         ; $6772: $05
    ld c, c                                       ; $6773: $49
    rst $08                                       ; $6774: $cf
    dec e                                         ; $6775: $1d
    rst $38                                       ; $6776: $ff
    xor e                                         ; $6777: $ab
    sub h                                         ; $6778: $94
    ld b, $7e                                     ; $6779: $06 $7e
    ld h, e                                       ; $677b: $63
    ld e, h                                       ; $677c: $5c
    ld d, c                                       ; $677d: $51
    db $eb                                        ; $677e: $eb
    ld c, a                                       ; $677f: $4f
    rla                                           ; $6780: $17
    ld h, h                                       ; $6781: $64
    or d                                          ; $6782: $b2
    ld sp, hl                                     ; $6783: $f9
    dec c                                         ; $6784: $0d
    cp a                                          ; $6785: $bf
    dec bc                                        ; $6786: $0b
    ld b, $ad                                     ; $6787: $06 $ad
    jp c, Jump_000_34e9                           ; $6789: $da $e9 $34

    ld l, e                                       ; $678c: $6b

jr_022_678d:
    call $9978                                    ; $678d: $cd $78 $99
    ld [hl], $c0                                  ; $6790: $36 $c0
    ld e, l                                       ; $6792: $5d
    ret c                                         ; $6793: $d8

    inc l                                         ; $6794: $2c
    ld h, $7d                                     ; $6795: $26 $7d
    ld l, h                                       ; $6797: $6c
    ld d, $af                                     ; $6798: $16 $af
    ld a, e                                       ; $679a: $7b
    db $fc                                        ; $679b: $fc
    reti                                          ; $679c: $d9


    ld d, a                                       ; $679d: $57
    ret nz                                        ; $679e: $c0

    rst $28                                       ; $679f: $ef
    inc bc                                        ; $67a0: $03
    jp nz, $8b3d                                  ; $67a1: $c2 $3d $8b

    ld a, [$ae58]                                 ; $67a4: $fa $58 $ae
    ld c, c                                       ; $67a7: $49
    inc sp                                        ; $67a8: $33
    ld e, [hl]                                    ; $67a9: $5e
    ret                                           ; $67aa: $c9


    cp c                                          ; $67ab: $b9
    db $eb                                        ; $67ac: $eb
    cp $6f                                        ; $67ad: $fe $6f
    ld a, l                                       ; $67af: $7d
    add sp, -$76                                  ; $67b0: $e8 $8a
    ld bc, $e5dd                                  ; $67b2: $01 $dd $e5
    pop hl                                        ; $67b5: $e1
    ret                                           ; $67b6: $c9


    add c                                         ; $67b7: $81
    cp e                                          ; $67b8: $bb
    adc [hl]                                      ; $67b9: $8e
    inc a                                         ; $67ba: $3c
    inc a                                         ; $67bb: $3c
    add hl, sp                                    ; $67bc: $39
    ld [hl], b                                    ; $67bd: $70
    rst $10                                       ; $67be: $d7
    sub c                                         ; $67bf: $91
    add a                                         ; $67c0: $87
    daa                                           ; $67c1: $27
    add a                                         ; $67c2: $87
    ld l, $eb                                     ; $67c3: $2e $eb
    ld d, c                                       ; $67c5: $51
    ld e, $7e                                     ; $67c6: $1e $7e
    ld sp, $0eb3                                  ; $67c8: $31 $b3 $0e
    and e                                         ; $67cb: $a3
    ld e, e                                       ; $67cc: $5b
    dec a                                         ; $67cd: $3d
    jp nz, Jump_022_5fc7                          ; $67ce: $c2 $c7 $5f

    db $eb                                        ; $67d1: $eb
    rst $08                                       ; $67d2: $cf
    ld c, e                                       ; $67d3: $4b
    jp nz, $adaf                                  ; $67d4: $c2 $af $ad

    ld d, l                                       ; $67d7: $55
    sbc l                                         ; $67d8: $9d
    cp e                                          ; $67d9: $bb
    xor $ff                                       ; $67da: $ee $ff
    sub $87                                       ; $67dc: $d6 $87
    ld l, $18                                     ; $67de: $2e $18
    ld d, $9f                                     ; $67e0: $16 $9f
    and l                                         ; $67e2: $a5
    ld h, l                                       ; $67e3: $65
    db $ed                                        ; $67e4: $ed
    ld [hl], a                                    ; $67e5: $77
    ld a, a                                       ; $67e6: $7f
    sbc c                                         ; $67e7: $99
    rst $20                                       ; $67e8: $e7
    add d                                         ; $67e9: $82
    ld l, e                                       ; $67ea: $6b
    db $fd                                        ; $67eb: $fd
    ld a, c                                       ; $67ec: $79
    ld d, c                                       ; $67ed: $51
    sbc d                                         ; $67ee: $9a
    rst $20                                       ; $67ef: $e7
    db $e4                                        ; $67f0: $e4
    xor e                                         ; $67f1: $ab
    cp a                                          ; $67f2: $bf
    sub $47                                       ; $67f3: $d6 $47
    dec sp                                        ; $67f5: $3b
    jp c, $aef8                                   ; $67f6: $da $f8 $ae

    rst $10                                       ; $67f9: $d7
    ld h, b                                       ; $67fa: $60
    db $ed                                        ; $67fb: $ed
    rlca                                          ; $67fc: $07
    ld e, a                                       ; $67fd: $5f
    jp c, Jump_000_18d3                           ; $67fe: $da $d3 $18

    rst $20                                       ; $6801: $e7
    cp c                                          ; $6802: $b9
    ld [hl], d                                    ; $6803: $72
    reti                                          ; $6804: $d9


    rst $08                                       ; $6805: $cf
    res 4, l                                      ; $6806: $cb $a5
    nop                                           ; $6808: $00
    cp d                                          ; $6809: $ba
    xor h                                         ; $680a: $ac
    ld d, a                                       ; $680b: $57
    sbc d                                         ; $680c: $9a
    ld d, l                                       ; $680d: $55
    ld c, d                                       ; $680e: $4a
    dec hl                                        ; $680f: $2b
    ld l, d                                       ; $6810: $6a
    db $fd                                        ; $6811: $fd
    ld a, c                                       ; $6812: $79
    ld sp, hl                                     ; $6813: $f9
    ld [hl], b                                    ; $6814: $70
    ld l, l                                       ; $6815: $6d
    xor l                                         ; $6816: $ad
    ld [$a108], a                                 ; $6817: $ea $08 $a1
    ld l, e                                       ; $681a: $6b
    xor a                                         ; $681b: $af
    ld c, c                                       ; $681c: $49
    or e                                          ; $681d: $b3
    ld c, d                                       ; $681e: $4a
    ld l, c                                       ; $681f: $69
    or $25                                        ; $6820: $f6 $25
    ld [hl], $2f                                  ; $6822: $36 $2f
    rra                                           ; $6824: $1f
    ld [hl+], a                                   ; $6825: $22
    inc c                                         ; $6826: $0c
    db $dd                                        ; $6827: $dd
    rst $38                                       ; $6828: $ff
    xor l                                         ; $6829: $ad
    rrca                                          ; $682a: $0f
    cp e                                          ; $682b: $bb
    ld b, b                                       ; $682c: $40
    dec [hl]                                      ; $682d: $35
    ld e, a                                       ; $682e: $5f
    sub b                                         ; $682f: $90
    sub a                                         ; $6830: $97
    add d                                         ; $6831: $82
    ld a, c                                       ; $6832: $79
    ld c, [hl]                                    ; $6833: $4e
    call z, $75a5                                 ; $6834: $cc $a5 $75
    dec hl                                        ; $6837: $2b
    ld [hl], d                                    ; $6838: $72
    pop bc                                        ; $6839: $c1
    ld b, e                                       ; $683a: $43
    add l                                         ; $683b: $85
    reti                                          ; $683c: $d9


    add hl, hl                                    ; $683d: $29
    dec bc                                        ; $683e: $0b
    rra                                           ; $683f: $1f
    call $0b52                                    ; $6840: $cd $52 $0b
    rla                                           ; $6843: $17
    db $e4                                        ; $6844: $e4
    and l                                         ; $6845: $a5
    ld h, b                                       ; $6846: $60
    sbc [hl]                                      ; $6847: $9e
    dec bc                                        ; $6848: $0b
    ld [hl], d                                    ; $6849: $72
    or $25                                        ; $684a: $f6 $25
    or [hl]                                       ; $684c: $b6
    or b                                          ; $684d: $b0
    ld e, c                                       ; $684e: $59
    ld [hl], b                                    ; $684f: $70
    ld l, l                                       ; $6850: $6d
    add a                                         ; $6851: $87
    ld l, $18                                     ; $6852: $2e $18
    cp l                                          ; $6854: $bd
    jp nc, $a8ac                                  ; $6855: $d2 $ac $a8

    push af                                       ; $6858: $f5
    and a                                         ; $6859: $a7
    ld l, e                                       ; $685a: $6b
    rst $18                                       ; $685b: $df
    add b                                         ; $685c: $80
    cp e                                          ; $685d: $bb
    rrca                                          ; $685e: $0f
    dec sp                                        ; $685f: $3b
    sbc $0c                                       ; $6860: $de $0c
    xor d                                         ; $6862: $aa
    sub d                                         ; $6863: $92
    add hl, de                                    ; $6864: $19
    rst $20                                       ; $6865: $e7
    cp c                                          ; $6866: $b9
    sbc b                                         ; $6867: $98

jr_022_6868:
    ld e, c                                       ; $6868: $59
    sbc a                                         ; $6869: $9f
    sbc l                                         ; $686a: $9d
    ld [hl-], a                                   ; $686b: $32
    cpl                                           ; $686c: $2f
    rra                                           ; $686d: $1f
    xor $12                                       ; $686e: $ee $12
    sbc d                                         ; $6870: $9a
    and l                                         ; $6871: $a5
    ld d, $e3                                     ; $6872: $16 $e3
    ret nz                                        ; $6874: $c0

    or l                                          ; $6875: $b5
    ld e, c                                       ; $6876: $59
    ld a, c                                       ; $6877: $79
    ld sp, hl                                     ; $6878: $f9
    ld a, c                                       ; $6879: $79
    ld l, $d4                                     ; $687a: $2e $d4
    ld a, [$8c0f]                                 ; $687c: $fa $0f $8c

jr_022_687f:
    db $fc                                        ; $687f: $fc
    jp z, $e58f                                   ; $6880: $ca $8f $e5

    inc bc                                        ; $6883: $03
    push de                                       ; $6884: $d5
    ld a, h                                       ; $6885: $7c
    xor [hl]                                      ; $6886: $ae
    push af                                       ; $6887: $f5
    sbc a                                         ; $6888: $9f
    ld d, d                                       ; $6889: $52
    db $e3                                        ; $688a: $e3
    push hl                                       ; $688b: $e5
    ld d, d                                       ; $688c: $52
    or b                                          ; $688d: $b0
    adc a                                         ; $688e: $8f
    ldh a, [$08]                                  ; $688f: $f0 $08
    inc bc                                        ; $6891: $03
    xor l                                         ; $6892: $ad
    ld h, c                                       ; $6893: $61
    ret z                                         ; $6894: $c8

    sbc l                                         ; $6895: $9d
    sub a                                         ; $6896: $97
    sub a                                         ; $6897: $97
    xor a                                         ; $6898: $af
    pop bc                                        ; $6899: $c1
    ld [hl], h                                    ; $689a: $74
    sub h                                         ; $689b: $94
    cp $2b                                        ; $689c: $fe $2b
    cpl                                           ; $689e: $2f
    adc a                                         ; $689f: $8f
    jr nc, jr_022_687f                            ; $68a0: $30 $dd

    call nc, Call_000_32ab                        ; $68a2: $d4 $ab $32
    db $d3                                        ; $68a5: $d3
    ld e, c                                       ; $68a6: $59
    jp nc, $349a                                  ; $68a7: $d2 $9a $34

    ld [hl-], a                                   ; $68aa: $32
    ld a, c                                       ; $68ab: $79
    ld h, l                                       ; $68ac: $65

jr_022_68ad:
    sub a                                         ; $68ad: $97
    add d                                         ; $68ae: $82
    or l                                          ; $68af: $b5
    rst $18                                       ; $68b0: $df
    ld c, [hl]                                    ; $68b1: $4e
    ld sp, hl                                     ; $68b2: $f9
    dec [hl]                                      ; $68b3: $35
    ld l, c                                       ; $68b4: $69
    ld d, $5f                                     ; $68b5: $16 $5f
    xor l                                         ; $68b7: $ad
    adc a                                         ; $68b8: $8f
    jr nc, jr_022_6868                            ; $68b9: $30 $ad

    ld c, d                                       ; $68bb: $4a
    inc c                                         ; $68bc: $0c
    ld [hl-], a                                   ; $68bd: $32
    db $fc                                        ; $68be: $fc
    ld [hl], l                                    ; $68bf: $75
    rst $08                                       ; $68c0: $cf
    add sp, $2f                                   ; $68c1: $e8 $2f
    pop bc                                        ; $68c3: $c1
    ld e, a                                       ; $68c4: $5f
    ldh a, [$b5]                                  ; $68c5: $f0 $b5
    ld l, b                                       ; $68c7: $68
    inc bc                                        ; $68c8: $03
    dec sp                                        ; $68c9: $3b
    ld a, b                                       ; $68ca: $78
    ld d, $d8                                     ; $68cb: $16 $d8
    ld d, c                                       ; $68cd: $51
    dec sp                                        ; $68ce: $3b
    ret                                           ; $68cf: $c9


    ld d, h                                       ; $68d0: $54
    push af                                       ; $68d1: $f5
    ld h, [hl]                                    ; $68d2: $66
    and a                                         ; $68d3: $a7
    sbc b                                         ; $68d4: $98
    or b                                          ; $68d5: $b0
    db $fd                                        ; $68d6: $fd
    add d                                         ; $68d7: $82
    jr nc, @-$37                                  ; $68d8: $30 $c7

    ret                                           ; $68da: $c9


    rst $38                                       ; $68db: $ff
    cp d                                          ; $68dc: $ba
    dec d                                         ; $68dd: $15
    cp c                                          ; $68de: $b9
    ldh [$a1], a                                  ; $68df: $e0 $a1
    jp nz, $6b82                                  ; $68e1: $c2 $82 $6b

    ei                                            ; $68e4: $fb
    ld a, l                                       ; $68e5: $7d
    ld b, b                                       ; $68e6: $40
    ld l, e                                       ; $68e7: $6b
    pop af                                        ; $68e8: $f1
    dec de                                        ; $68e9: $1b
    db $e3                                        ; $68ea: $e3
    ld a, b                                       ; $68eb: $78
    pop de                                        ; $68ec: $d1
    ld c, [hl]                                    ; $68ed: $4e
    rst $20                                       ; $68ee: $e7
    add hl, de                                    ; $68ef: $19
    ld e, d                                       ; $68f0: $5a
    set 7, a                                      ; $68f1: $cb $ff
    cp d                                          ; $68f3: $ba
    rst $38                                       ; $68f4: $ff
    ld e, e                                       ; $68f5: $5b
    rra                                           ; $68f6: $1f
    ld h, [hl]                                    ; $68f7: $66
    and a                                         ; $68f8: $a7
    adc h                                         ; $68f9: $8c
    cp l                                          ; $68fa: $bd
    db $eb                                        ; $68fb: $eb
    adc l                                         ; $68fc: $8d
    add b                                         ; $68fd: $80
    jr nc, jr_022_68ad                            ; $68fe: $30 $ad

    ld l, d                                       ; $6900: $6a
    db $fd                                        ; $6901: $fd
    dec [hl]                                      ; $6902: $35
    ld l, c                                       ; $6903: $69
    ld b, $ff                                     ; $6904: $06 $ff
    or h                                          ; $6906: $b4
    xor $ff                                       ; $6907: $ee $ff
    sub $87                                       ; $6909: $d6 $87
    xor [hl]                                      ; $690b: $ae
    ld l, e                                       ; $690c: $6b
    db $fd                                        ; $690d: $fd
    add c                                         ; $690e: $81
    ld h, a                                       ; $690f: $67
    db $fc                                        ; $6910: $fc
    add l                                         ; $6911: $85
    call Call_000_15ba                            ; $6912: $cd $ba $15
    cp c                                          ; $6915: $b9
    ldh [$a1], a                                  ; $6916: $e0 $a1
    jp nz, $6b82                                  ; $6918: $c2 $82 $6b

    dec sp                                        ; $691b: $3b
    jr nz, jr_022_692a                            ; $691c: $20 $0c

    sub [hl]                                      ; $691e: $96
    dec d                                         ; $691f: $15
    or l                                          ; $6920: $b5
    ld a, $d5                                     ; $6921: $3e $d5
    ld a, h                                       ; $6923: $7c
    ldh a, [rVBK]                                 ; $6924: $f0 $4f
    dec hl                                        ; $6926: $2b
    scf                                           ; $6927: $37
    ld b, h                                       ; $6928: $44
    or e                                          ; $6929: $b3

jr_022_692a:
    xor h                                         ; $692a: $ac
    ld c, [hl]                                    ; $692b: $4e
    ret                                           ; $692c: $c9


    xor a                                         ; $692d: $af
    db $fc                                        ; $692e: $fc
    ld [c], a                                     ; $692f: $e2
    xor l                                         ; $6930: $ad
    ccf                                           ; $6931: $3f
    call z, $e573                                 ; $6932: $cc $73 $e5
    or d                                          ; $6935: $b2

jr_022_6936:
    sbc a                                         ; $6936: $9f
    sub a                                         ; $6937: $97
    ld c, e                                       ; $6938: $4b
    ld bc, $fdac                                  ; $6939: $01 $ac $fd
    push hl                                       ; $693c: $e5
    ld [de], a                                    ; $693d: $12
    ld e, e                                       ; $693e: $5b
    call z, $feaa                                 ; $693f: $cc $aa $fe
    ld l, h                                       ; $6942: $6c
    inc l                                         ; $6943: $2c
    ld d, e                                       ; $6944: $53
    add b                                         ; $6945: $80
    dec sp                                        ; $6946: $3b
    cpl                                           ; $6947: $2f
    ld l, c                                       ; $6948: $69
    add d                                         ; $6949: $82
    add d                                         ; $694a: $82
    jr nc, @-$68                                  ; $694b: $30 $96

    dec d                                         ; $694d: $15
    or l                                          ; $694e: $b5
    ld a, $d5                                     ; $694f: $3e $d5
    ld a, h                                       ; $6951: $7c
    ldh a, [rVBK]                                 ; $6952: $f0 $4f
    dec hl                                        ; $6954: $2b
    scf                                           ; $6955: $37
    ld b, h                                       ; $6956: $44
    jr jr_022_6936                                ; $6957: $18 $dd

    rst $38                                       ; $6959: $ff
    xor l                                         ; $695a: $ad
    rrca                                          ; $695b: $0f
    ld e, l                                       ; $695c: $5d
    sub $7a                                       ; $695d: $d6 $7a
    ld h, c                                       ; $695f: $61
    push af                                       ; $6960: $f5
    ld c, e                                       ; $6961: $4b
    ld l, h                                       ; $6962: $6c
    pop bc                                        ; $6963: $c1
    or l                                          ; $6964: $b5
    cp $8a                                        ; $6965: $fe $8a
    ld a, [de]                                    ; $6967: $1a
    ld a, [c]                                     ; $6968: $f2
    ld c, e                                       ; $6969: $4b
    pop bc                                        ; $696a: $c1
    ld [hl], h                                    ; $696b: $74
    ld l, l                                       ; $696c: $6d
    ld h, l                                       ; $696d: $65
    inc hl                                        ; $696e: $23
    dec c                                         ; $696f: $0d
    rra                                           ; $6970: $1f
    call $a2b2                                    ; $6971: $cd $b2 $a2
    sub $a7                                       ; $6974: $d6 $a7

Call_022_6976:
    sbc d                                         ; $6976: $9a
    rrca                                          ; $6977: $0f
    cp $69                                        ; $6978: $fe $69
    push hl                                       ; $697a: $e5
    add [hl]                                      ; $697b: $86
    adc e                                         ; $697c: $8b
    ld [$1b1f], a                                 ; $697d: $ea $1f $1b
    xor $bc                                       ; $6980: $ee $bc
    and h                                         ; $6982: $a4
    add hl, bc                                    ; $6983: $09
    ld a, [bc]                                    ; $6984: $0a
    jp nz, Jump_000_1596                          ; $6985: $c2 $96 $15

    or l                                          ; $6988: $b5
    ld a, $d5                                     ; $6989: $3e $d5
    ld a, h                                       ; $698b: $7c
    ldh a, [rVBK]                                 ; $698c: $f0 $4f
    dec hl                                        ; $698e: $2b
    scf                                           ; $698f: $37
    ld e, h                                       ; $6990: $5c
    jp z, $349a                                   ; $6991: $ca $9a $34

    or d                                          ; $6994: $b2
    adc [hl]                                      ; $6995: $8e
    ld d, [hl]                                    ; $6996: $56
    ld [hl], l                                    ; $6997: $75
    dec c                                         ; $6998: $0d
    ld e, $cd                                     ; $6999: $1e $cd
    or d                                          ; $699b: $b2
    sub d                                         ; $699c: $92
    sbc l                                         ; $699d: $9d
    sbc a                                         ; $699e: $9f
    sub a                                         ; $699f: $97
    sub a                                         ; $69a0: $97
    rra                                           ; $69a1: $1f
    xor a                                         ; $69a2: $af
    ld b, b                                       ; $69a3: $40
    dec [hl]                                      ; $69a4: $35
    sbc a                                         ; $69a5: $9f
    ld d, d                                       ; $69a6: $52
    db $e3                                        ; $69a7: $e3
    push hl                                       ; $69a8: $e5
    ld d, d                                       ; $69a9: $52
    or b                                          ; $69aa: $b0
    jr nz, @-$6b                                  ; $69ab: $20 $93

    call $af73                                    ; $69ad: $cd $73 $af
    cp [hl]                                       ; $69b0: $be
    ld c, e                                       ; $69b1: $4b
    cp e                                          ; $69b2: $bb
    adc [hl]                                      ; $69b3: $8e
    jr nc, @-$68                                  ; $69b4: $30 $96

    pop af                                        ; $69b6: $f1
    ld c, c                                       ; $69b7: $49
    db $ec                                        ; $69b8: $ec
    push hl                                       ; $69b9: $e5
    reti                                          ; $69ba: $d9


    ld hl, sp-$5e                                 ; $69bb: $f8 $a2
    ld a, $2f                                     ; $69bd: $3e $2f
    ld [$68eb], a                                 ; $69bf: $ea $eb $68
    ld d, l                                       ; $69c2: $55
    rst $10                                       ; $69c3: $d7
    ldh [$57], a                                  ; $69c4: $e0 $57
    ld a, [hl]                                    ; $69c6: $7e
    ld b, l                                       ; $69c7: $45
    reti                                          ; $69c8: $d9


    ld a, b                                       ; $69c9: $78
    dec b                                         ; $69ca: $05
    add h                                         ; $69cb: $84
    ld bc, $7f3d                                  ; $69cc: $01 $3d $7f
    and b                                         ; $69cf: $a0
    db $fc                                        ; $69d0: $fc
    jp z, $670d                                   ; $69d1: $ca $0d $67

    rst $00                                       ; $69d4: $c7
    ld d, h                                       ; $69d5: $54
    sbc a                                         ; $69d6: $9f
    rla                                           ; $69d7: $17
    ld c, c                                       ; $69d8: $49
    inc de                                        ; $69d9: $13
    sub h                                         ; $69da: $94
    ld a, c                                       ; $69db: $79
    ld sp, hl                                     ; $69dc: $f9
    push bc                                       ; $69dd: $c5
    xor h                                         ; $69de: $ac
    ld [$c6cf], a                                 ; $69df: $ea $cf $c6
    ld [hl-], a                                   ; $69e2: $32
    ld h, l                                       ; $69e3: $65
    ld e, d                                       ; $69e4: $5a
    ld c, c                                       ; $69e5: $49
    ld [bc], a                                    ; $69e6: $02
    call z, $0c96                                 ; $69e7: $cc $96 $0c
    rst $20                                       ; $69ea: $e7
    push hl                                       ; $69eb: $e5
    ld [hl], a                                    ; $69ec: $77
    inc d                                         ; $69ed: $14
    ld d, l                                       ; $69ee: $55
    rst $30                                       ; $69ef: $f7
    ret                                           ; $69f0: $c9


jr_022_69f1:
    ld [hl], a                                    ; $69f1: $77
    cp d                                          ; $69f2: $ba
    and c                                         ; $69f3: $a1
    add a                                         ; $69f4: $87
    ld d, l                                       ; $69f5: $55
    ld d, c                                       ; $69f6: $51
    ld bc, $3324                                  ; $69f7: $01 $24 $33
    ld b, h                                       ; $69fa: $44
    jr @-$68                                      ; $69fb: $18 $96

    add c                                         ; $69fd: $81
    ld a, [c]                                     ; $69fe: $f2
    dec hl                                        ; $69ff: $2b
    scf                                           ; $6a00: $37
    ld e, h                                       ; $6a01: $5c
    sub l                                         ; $6a02: $95
    pop hl                                        ; $6a03: $e1
    and l                                         ; $6a04: $a5
    ld h, b                                       ; $6a05: $60
    inc l                                         ; $6a06: $2c
    ld a, c                                       ; $6a07: $79
    sbc d                                         ; $6a08: $9a
    dec l                                         ; $6a09: $2d
    add hl, de                                    ; $6a0a: $19
    adc $cb                                       ; $6a0b: $ce $cb
    rrca                                          ; $6a0d: $0f
    ld l, $07                                     ; $6a0e: $2e $07
    cpl                                           ; $6a10: $2f
    or e                                          ; $6a11: $b3
    ld h, e                                       ; $6a12: $63
    and [hl]                                      ; $6a13: $a6
    ld [hl], b                                    ; $6a14: $70
    rst $10                                       ; $6a15: $d7
    ld [hl], $be                                  ; $6a16: $36 $be
    ld a, [c]                                     ; $6a18: $f2
    db $e3                                        ; $6a19: $e3
    dec d                                         ; $6a1a: $15
    xor b                                         ; $6a1b: $a8
    and $ab                                       ; $6a1c: $e6 $ab
    ld d, h                                       ; $6a1e: $54
    and h                                         ; $6a1f: $a4
    cp c                                          ; $6a20: $b9
    inc d                                         ; $6a21: $14
    ld c, h                                       ; $6a22: $4c
    xor c                                         ; $6a23: $a9
    pop af                                        ; $6a24: $f1
    ld [hl], d                                    ; $6a25: $72
    add hl, hl                                    ; $6a26: $29
    ld b, b                                       ; $6a27: $40
    jr jr_022_69f1                                ; $6a28: $18 $c7

    and a                                         ; $6a2a: $a7
    ld d, a                                       ; $6a2b: $57
    ld b, l                                       ; $6a2c: $45
    cp e                                          ; $6a2d: $bb
    xor h                                         ; $6a2e: $ac
    ld d, a                                       ; $6a2f: $57
    sbc d                                         ; $6a30: $9a
    sbc d                                         ; $6a31: $9a
    db $fc                                        ; $6a32: $fc
    ld [hl], h                                    ; $6a33: $74
    rst $00                                       ; $6a34: $c7
    ld c, e                                       ; $6a35: $4b
    ld h, e                                       ; $6a36: $63
    db $db                                        ; $6a37: $db
    sub a                                         ; $6a38: $97
    ld e, b                                       ; $6a39: $58
    ld a, [bc]                                    ; $6a3a: $0a
    ld b, d                                       ; $6a3b: $42
    ld [$fc72], sp                                ; $6a3c: $08 $72 $fc
    rst $10                                       ; $6a3f: $d7
    db $e4                                        ; $6a40: $e4
    sub a                                         ; $6a41: $97
    or [hl]                                       ; $6a42: $b6
    dec a                                         ; $6a43: $3d
    rst $08                                       ; $6a44: $cf
    ld [hl], l                                    ; $6a45: $75
    sub a                                         ; $6a46: $97
    or h                                          ; $6a47: $b4
    rra                                           ; $6a48: $1f
    jr nz, jr_022_6ab0                            ; $6a49: $20 $65

    daa                                           ; $6a4b: $27
    ld d, a                                       ; $6a4c: $57
    rst $00                                       ; $6a4d: $c7
    daa                                           ; $6a4e: $27
    ld l, c                                       ; $6a4f: $69
    and b                                         ; $6a50: $a0
    ld sp, $0c22                                  ; $6a51: $31 $22 $0c
    rst $00                                       ; $6a54: $c7
    sub d                                         ; $6a55: $92
    cp a                                          ; $6a56: $bf
    ld e, h                                       ; $6a57: $5c
    ld a, [bc]                                    ; $6a58: $0a

Call_022_6a59:
    halt                                          ; $6a59: $76
    or d                                          ; $6a5a: $b2
    and b                                         ; $6a5b: $a0
    dec e                                         ; $6a5c: $1d
    ld [hl], a                                    ; $6a5d: $77
    ld h, e                                       ; $6a5e: $63
    ld d, l                                       ; $6a5f: $55
    ld l, d                                       ; $6a60: $6a
    jr nc, @-$0e                                  ; $6a61: $30 $f0

    sub h                                         ; $6a63: $94
    sub a                                         ; $6a64: $97
    call z, Call_000_1770                         ; $6a65: $cc $70 $17
    and [hl]                                      ; $6a68: $a6
    add e                                         ; $6a69: $83
    sub a                                         ; $6a6a: $97
    sbc e                                         ; $6a6b: $9b
    ld b, $16                                     ; $6a6c: $06 $16
    xor d                                         ; $6a6e: $aa
    ei                                            ; $6a6f: $fb
    dec bc                                        ; $6a70: $0b
    ld [hl], a                                    ; $6a71: $77
    xor l                                         ; $6a72: $ad
    ld a, [hl+]                                   ; $6a73: $2a
    jp nc, $0c20                                  ; $6a74: $d2 $20 $0c

    ld b, a                                       ; $6a77: $47
    dec de                                        ; $6a78: $1b
    ld e, a                                       ; $6a79: $5f
    ld [hl], a                                    ; $6a7a: $77
    ld c, c                                       ; $6a7b: $49
    ei                                            ; $6a7c: $fb
    ld bc, $7652                                  ; $6a7d: $01 $52 $76
    ld [hl], d                                    ; $6a80: $72
    ld [hl], l                                    ; $6a81: $75
    ld a, h                                       ; $6a82: $7c
    sub d                                         ; $6a83: $92
    ld b, $1a                                     ; $6a84: $06 $1a
    inc hl                                        ; $6a86: $23
    ld b, d                                       ; $6a87: $42
    ld [$a703], sp                                ; $6a88: $08 $03 $a7
    db $e4                                        ; $6a8b: $e4
    sbc [hl]                                      ; $6a8c: $9e
    ld b, e                                       ; $6a8d: $43
    ld h, l                                       ; $6a8e: $65
    ldh [$a1], a                                  ; $6a8f: $e0 $a1
    bit 3, d                                      ; $6a91: $cb $5a
    ld l, $55                                     ; $6a93: $2e $55
    cp a                                          ; $6a95: $bf
    db $eb                                        ; $6a96: $eb
    dec [hl]                                      ; $6a97: $35
    ld e, b                                       ; $6a98: $58
    or a                                          ; $6a99: $b7
    ld [hl+], a                                   ; $6a9a: $22
    rla                                           ; $6a9b: $17
    inc a                                         ; $6a9c: $3c
    ld d, h                                       ; $6a9d: $54
    ldh [$ce], a                                  ; $6a9e: $e0 $ce
    ld d, d                                       ; $6aa0: $52
    adc e                                         ; $6aa1: $8b
    ld [hl], c                                    ; $6aa2: $71
    db $ec                                        ; $6aa3: $ec
    sbc c                                         ; $6aa4: $99
    xor c                                         ; $6aa5: $a9
    ld a, h                                       ; $6aa6: $7c
    ld c, c                                       ; $6aa7: $49
    or c                                          ; $6aa8: $b1
    ld e, c                                       ; $6aa9: $59
    ld a, a                                       ; $6aaa: $7f
    dec hl                                        ; $6aab: $2b

Call_022_6aac:
    ld l, c                                       ; $6aac: $69

Jump_022_6aad:
    ldh [$d7], a                                  ; $6aad: $e0 $d7
    ret                                           ; $6aaf: $c9


jr_022_6ab0:
    ld c, e                                       ; $6ab0: $4b
    ld a, $5b                                     ; $6ab1: $3e $5b
    ld [hl-], a                                   ; $6ab3: $32
    call c, $d2f1                                 ; $6ab4: $dc $f1 $d2
    ret c                                         ; $6ab7: $d8

    or $25                                        ; $6ab8: $f6 $25
    sub [hl]                                      ; $6aba: $96
    add d                                         ; $6abb: $82
    halt                                          ; $6abc: $76
    ld c, d                                       ; $6abd: $4a
    ld a, [c]                                     ; $6abe: $f2
    ld l, e                                       ; $6abf: $6b
    rst $38                                       ; $6ac0: $ff
    sub d                                         ; $6ac1: $92
    sub $a4                                       ; $6ac2: $d6 $a4
    sub c                                         ; $6ac4: $91
    pop af                                        ; $6ac5: $f1
    jp c, $c174                                   ; $6ac6: $da $74 $c1

jr_022_6ac9:
    ld b, a                                       ; $6ac9: $47
    ld de, $b81b                                  ; $6aca: $11 $1b $b8
    ld [hl], $4b                                  ; $6acd: $36 $4b
    db $e3                                        ; $6acf: $e3
    ld c, e                                       ; $6ad0: $4b
    ld a, e                                       ; $6ad1: $7b
    ld a, h                                       ; $6ad2: $7c
    ld a, c                                       ; $6ad3: $79
    ld sp, hl                                     ; $6ad4: $f9
    dec [hl]                                      ; $6ad5: $35
    ld l, c                                       ; $6ad6: $69
    add $92                                       ; $6ad7: $c6 $92
    ld l, d                                       ; $6ad9: $6a
    cp [hl]                                       ; $6ada: $be
    or $c7                                        ; $6adb: $f6 $c7
    and h                                         ; $6add: $a4
    and b                                         ; $6ade: $a0
    dec bc                                        ; $6adf: $0b
    ld b, $c7                                     ; $6ae0: $06 $c7
    ld e, h                                       ; $6ae2: $5c
    or [hl]                                       ; $6ae3: $b6
    ld h, $cd                                     ; $6ae4: $26 $cd
    db $ec                                        ; $6ae6: $ec
    ld c, e                                       ; $6ae7: $4b
    ld l, h                                       ; $6ae8: $6c
    ld c, l                                       ; $6ae9: $4d
    ld a, [de]                                    ; $6aea: $1a
    ld e, c                                       ; $6aeb: $59
    ld [hl], b                                    ; $6aec: $70
    ld l, l                                       ; $6aed: $6d
    rlca                                          ; $6aee: $07
    xor $5a                                       ; $6aef: $ee $5a
    ld d, l                                       ; $6af1: $55
    and h                                         ; $6af2: $a4
    jp hl                                         ; $6af3: $e9


    adc d                                         ; $6af4: $8a
    ld bc, $24a7                                  ; $6af5: $01 $a7 $24
    jp nz, $3f3d                                  ; $6af8: $c2 $3d $3f

    ld b, [hl]                                    ; $6afb: $46
    xor $5c                                       ; $6afc: $ee $5c
    sbc d                                         ; $6afe: $9a
    ld l, c                                       ; $6aff: $69
    and b                                         ; $6b00: $a0
    sub a                                         ; $6b01: $97
    ret nc                                        ; $6b02: $d0

    inc l                                         ; $6b03: $2c
    or l                                          ; $6b04: $b5
    ld [hl], b                                    ; $6b05: $70
    sub h                                         ; $6b06: $94
    cp [hl]                                       ; $6b07: $be
    jr nz, jr_022_6b39                            ; $6b08: $20 $2f

    dec b                                         ; $6b0a: $05
    di                                            ; $6b0b: $f3
    ld e, h                                       ; $6b0c: $5c
    halt                                          ; $6b0d: $76
    sbc [hl]                                      ; $6b0e: $9e
    ld d, $5e                                     ; $6b0f: $16 $5e
    ld a, [$f219]                                 ; $6b11: $fa $19 $f2
    dec de                                        ; $6b14: $1b
    rst $10                                       ; $6b15: $d7
    and h                                         ; $6b16: $a4
    ld e, c                                       ; $6b17: $59
    and l                                         ; $6b18: $a5
    or h                                          ; $6b19: $b4
    db $ec                                        ; $6b1a: $ec
    inc a                                         ; $6b1b: $3c
    xor l                                         ; $6b1c: $ad
    ld c, c                                       ; $6b1d: $49
    inc hl                                        ; $6b1e: $23
    add b                                         ; $6b1f: $80
    jr nc, jr_022_6ac9                            ; $6b20: $30 $a7

    daa                                           ; $6b22: $27
    ld [hl], l                                    ; $6b23: $75
    sbc c                                         ; $6b24: $99
    ld h, l                                       ; $6b25: $65
    ld b, c                                       ; $6b26: $41
    ld a, [$66c2]                                 ; $6b27: $fa $c2 $66
    dec e                                         ; $6b2a: $1d
    ld a, c                                       ; $6b2b: $79
    ld a, b                                       ; $6b2c: $78
    ld [hl], d                                    ; $6b2d: $72
    ld e, b                                       ; $6b2e: $58
    ld e, e                                       ; $6b2f: $5b
    xor e                                         ; $6b30: $ab
    ld a, d                                       ; $6b31: $7a
    rla                                           ; $6b32: $17
    inc c                                         ; $6b33: $0c
    rst $00                                       ; $6b34: $c7
    res 5, e                                      ; $6b35: $cb $ab
    ld [hl], a                                    ; $6b37: $77
    reti                                          ; $6b38: $d9


jr_022_6b39:
    ld c, c                                       ; $6b39: $49
    rst $28                                       ; $6b3a: $ef
    dec [hl]                                      ; $6b3b: $35
    ld e, b                                       ; $6b3c: $58
    halt                                          ; $6b3d: $76
    sbc [hl]                                      ; $6b3e: $9e
    and $e5                                       ; $6b3f: $e6 $e5
    ld b, e                                       ; $6b41: $43
    add h                                         ; $6b42: $84
    ld bc, $723d                                  ; $6b43: $01 $3d $72
    xor l                                         ; $6b46: $ad
    ld a, [hl+]                                   ; $6b47: $2a
    jp nc, $6770                                  ; $6b48: $d2 $70 $67

    ld c, e                                       ; $6b4b: $4b
    add [hl]                                      ; $6b4c: $86
    ld l, e                                       ; $6b4d: $6b
    push de                                       ; $6b4e: $d5
    ld b, b                                       ; $6b4f: $40
    ld l, $43                                     ; $6b50: $2e $43
    jr jr_022_6b9b                                ; $6b52: $18 $47

    adc l                                         ; $6b54: $8d
    rst $08                                       ; $6b55: $cf
    ld h, h                                       ; $6b56: $64
    ld c, a                                       ; $6b57: $4f
    or e                                          ; $6b58: $b3
    and e                                         ; $6b59: $a3
    pop af                                        ; $6b5a: $f1
    rst $28                                       ; $6b5b: $ef
    ld [hl-], a                                   ; $6b5c: $32
    adc e                                         ; $6b5d: $8b
    cpl                                           ; $6b5e: $2f
    ld h, [hl]                                    ; $6b5f: $66
    sub $61                                       ; $6b60: $d6 $61
    pop af                                        ; $6b62: $f1
    sub $7f                                       ; $6b63: $d6 $7f
    push hl                                       ; $6b65: $e5
    ld d, a                                       ; $6b66: $57
    xor c                                         ; $6b67: $a9
    ld e, b                                       ; $6b68: $58
    sbc a                                         ; $6b69: $9f
    db $ed                                        ; $6b6a: $ed
    ld a, [$0dca]                                 ; $6b6b: $fa $ca $0d

jr_022_6b6e:
    pop hl                                        ; $6b6e: $e1
    and e                                         ; $6b6f: $a3
    adc l                                         ; $6b70: $8d
    jr nc, jr_022_6ba0                            ; $6b71: $30 $2d

    ld l, c                                       ; $6b73: $69
    adc b                                         ; $6b74: $88
    pop bc                                        ; $6b75: $c1
    ld [hl], h                                    ; $6b76: $74
    pop af                                        ; $6b77: $f1
    cp d                                          ; $6b78: $ba
    rst $00                                       ; $6b79: $c7
    ld e, a                                       ; $6b7a: $5f
    cp h                                          ; $6b7b: $bc
    push af                                       ; $6b7c: $f5
    sbc a                                         ; $6b7d: $9f
    jp nc, $8f92                                  ; $6b7e: $d2 $92 $8f

    ld [$6703], sp                                ; $6b81: $08 $03 $67
    sub h                                         ; $6b84: $94
    ld h, l                                       ; $6b85: $65
    pop hl                                        ; $6b86: $e1
    ld c, [hl]                                    ; $6b87: $4e
    add hl, hl                                    ; $6b88: $29
    cp l                                          ; $6b89: $bd
    cp h                                          ; $6b8a: $bc
    inc l                                         ; $6b8b: $2c
    ld d, h                                       ; $6b8c: $54
    ret                                           ; $6b8d: $c9


    and h                                         ; $6b8e: $a4
    ld bc, $eaff                                  ; $6b8f: $01 $ff $ea
    cpl                                           ; $6b92: $2f
    ld l, b                                       ; $6b93: $68
    sub [hl]                                      ; $6b94: $96
    dec d                                         ; $6b95: $15
    push af                                       ; $6b96: $f5
    ld e, a                                       ; $6b97: $5f
    xor b                                         ; $6b98: $a8
    sub d                                         ; $6b99: $92
    ld c, c                                       ; $6b9a: $49

jr_022_6b9b:
    ld [$ad03], sp                                ; $6b9b: $08 $03 $ad
    cpl                                           ; $6b9e: $2f
    ld e, a                                       ; $6b9f: $5f

jr_022_6ba0:
    add e                                         ; $6ba0: $83
    jp hl                                         ; $6ba1: $e9


    ld a, [hl+]                                   ; $6ba2: $2a
    dec d                                         ; $6ba3: $15
    add [hl]                                      ; $6ba4: $86
    jr nc, jr_022_6b6e                            ; $6ba5: $30 $c7

    ld c, c                                       ; $6ba7: $49
    add [hl]                                      ; $6ba8: $86
    dec sp                                        ; $6ba9: $3b
    add e                                         ; $6baa: $83
    xor d                                         ; $6bab: $aa
    ld hl, sp+$3b                                 ; $6bac: $f8 $3b

Jump_022_6bae:
    di                                            ; $6bae: $f3
    add l                                         ; $6baf: $85
    sub d                                         ; $6bb0: $92
    and [hl]                                      ; $6bb1: $a6
    call nz, $9476                                ; $6bb2: $c4 $76 $94
    ld hl, $f75f                                  ; $6bb5: $21 $5f $f7
    ld [hl], a                                    ; $6bb8: $77
    ld b, e                                       ; $6bb9: $43
    ld d, a                                       ; $6bba: $57
    ld de, $4706                                  ; $6bbb: $11 $06 $47
    db $ed                                        ; $6bbe: $ed
    and b                                         ; $6bbf: $a0
    ld a, [hl]                                    ; $6bc0: $7e
    rst $10                                       ; $6bc1: $d7
    ld a, c                                       ; $6bc2: $79
    xor d                                         ; $6bc3: $aa
    ld a, [hl]                                    ; $6bc4: $7e
    sbc l                                         ; $6bc5: $9d
    ei                                            ; $6bc6: $fb
    push de                                       ; $6bc7: $d5
    and e                                         ; $6bc8: $a3

jr_022_6bc9:
    push af                                       ; $6bc9: $f5
    jr z, @-$14                                   ; $6bca: $28 $ea

    dec [hl]                                      ; $6bcc: $35
    ld e, b                                       ; $6bcd: $58
    ldh a, [$f4]                                  ; $6bce: $f0 $f4
    sub d                                         ; $6bd0: $92
    ld b, $b8                                     ; $6bd1: $06 $b8
    or e                                          ; $6bd3: $b3
    ld d, e                                       ; $6bd4: $53
    and $e5                                       ; $6bd5: $e6 $e5
    ld b, e                                       ; $6bd7: $43
    add h                                         ; $6bd8: $84
    ld bc, $6527                                  ; $6bd9: $01 $27 $65
    sub $b9                                       ; $6bdc: $d6 $b9
    db $d3                                        ; $6bde: $d3
    or l                                          ; $6bdf: $b5
    ld l, a                                       ; $6be0: $6f
    or b                                          ; $6be1: $b0
    adc [hl]                                      ; $6be2: $8e
    ld d, [hl]                                    ; $6be3: $56
    ld [hl], l                                    ; $6be4: $75
    dec c                                         ; $6be5: $0d
    ld a, [hl]                                    ; $6be6: $7e
    ld l, c                                       ; $6be7: $69
    xor a                                         ; $6be8: $af
    ld e, e                                       ; $6be9: $5b
    ret                                           ; $6bea: $c9


    ld a, [hl+]                                   ; $6beb: $2a
    and e                                         ; $6bec: $a3
    ld a, [$38ef]                                 ; $6bed: $fa $ef $38
    ret                                           ; $6bf0: $c9


    nop                                           ; $6bf1: $00
    ret nc                                        ; $6bf2: $d0

    ld a, d                                       ; $6bf3: $7a
    sub h                                         ; $6bf4: $94
    sbc a                                         ; $6bf5: $9f
    ld l, e                                       ; $6bf6: $6b
    jr nc, jr_022_6bc9                            ; $6bf7: $30 $d0

    ld b, $76                                     ; $6bf9: $06 $76
    cp l                                          ; $6bfb: $bd
    ld b, $b3                                     ; $6bfc: $06 $b3
    dec h                                         ; $6bfe: $25
    jp $beb5                                      ; $6bff: $c3 $b5 $be


    add h                                         ; $6c02: $84
    scf                                           ; $6c03: $37
    jp hl                                         ; $6c04: $e9


    pop de                                        ; $6c05: $d1
    adc [hl]                                      ; $6c06: $8e
    ld [hl+], a                                   ; $6c07: $22
    or [hl]                                       ; $6c08: $b6
    ld h, e                                       ; $6c09: $63
    ld c, h                                       ; $6c0a: $4c
    ret c                                         ; $6c0b: $d8

    adc [hl]                                      ; $6c0c: $8e
    rst $08                                       ; $6c0d: $cf
    ld d, d                                       ; $6c0e: $52
    cp [hl]                                       ; $6c0f: $be
    ld b, $3b                                     ; $6c10: $06 $3b
    ld c, [hl]                                    ; $6c12: $4e
    jp $b034                                      ; $6c13: $c3 $34 $b0


    sbc [hl]                                      ; $6c16: $9e
    rst $10                                       ; $6c17: $d7
    xor e                                         ; $6c18: $ab
    ld a, [c]                                     ; $6c19: $f2
    or b                                          ; $6c1a: $b0
    sbc $d7                                       ; $6c1b: $de $d7
    di                                            ; $6c1d: $f3
    ld [hl], d                                    ; $6c1e: $72
    ld d, h                                       ; $6c1f: $54
    ld h, c                                       ; $6c20: $61
    dec [hl]                                      ; $6c21: $35
    ld e, b                                       ; $6c22: $58
    scf                                           ; $6c23: $37
    dec d                                         ; $6c24: $15
    or [hl]                                       ; $6c25: $b6
    dec bc                                        ; $6c26: $0b
    cp e                                          ; $6c27: $bb
    or h                                          ; $6c28: $b4
    db $eb                                        ; $6c29: $eb
    ld e, l                                       ; $6c2a: $5d
    jr nc, jr_022_6c6a                            ; $6c2b: $30 $3d

    adc d                                         ; $6c2d: $8a
    ld a, d                                       ; $6c2e: $7a
    dec c                                         ; $6c2f: $0d
    ld b, $a6                                     ; $6c30: $06 $a6
    db $d3                                        ; $6c32: $d3
    ld c, c                                       ; $6c33: $49
    ld a, b                                       ; $6c34: $78
    ld [hl], $cf                                  ; $6c35: $36 $cf
    or l                                          ; $6c37: $b5
    ld a, a                                       ; $6c38: $7f
    cp d                                          ; $6c39: $ba
    jr nz, @-$6b                                  ; $6c3a: $20 $93

    xor l                                         ; $6c3c: $ad
    ld d, d                                       ; $6c3d: $52
    ld h, c                                       ; $6c3e: $61
    di                                            ; $6c3f: $f3
    ld e, h                                       ; $6c40: $5c
    ld d, c                                       ; $6c41: $51
    db $eb                                        ; $6c42: $eb
    inc hl                                        ; $6c43: $23
    inc c                                         ; $6c44: $0c
    and a                                         ; $6c45: $a7
    daa                                           ; $6c46: $27
    ld [hl], c                                    ; $6c47: $71
    rla                                           ; $6c48: $17
    cpl                                           ; $6c49: $2f
    ld hl, sp-$2d                                 ; $6c4a: $f8 $d3
    inc a                                         ; $6c4c: $3c
    rst $20                                       ; $6c4d: $e7
    push hl                                       ; $6c4e: $e5
    jp nz, $abe1                                  ; $6c4f: $c2 $e1 $ab

    or l                                          ; $6c52: $b5
    cp [hl]                                       ; $6c53: $be
    or d                                          ; $6c54: $b2
    ld d, b                                       ; $6c55: $50
    pop bc                                        ; $6c56: $c1
    ld e, a                                       ; $6c57: $5f
    sub [hl]                                      ; $6c58: $96
    or $5a                                        ; $6c59: $f6 $5a
    inc sp                                        ; $6c5b: $33
    ldh [rHDMA5], a                               ; $6c5c: $e0 $55
    inc e                                         ; $6c5e: $1c
    ret nc                                        ; $6c5f: $d0

    adc [hl]                                      ; $6c60: $8e
    sub e                                         ; $6c61: $93
    ei                                            ; $6c62: $fb
    call nz, $b9e6                                ; $6c63: $c4 $e6 $b9
    ld d, e                                       ; $6c66: $53
    ld l, [hl]                                    ; $6c67: $6e
    sub l                                         ; $6c68: $95
    ld d, c                                       ; $6c69: $51

jr_022_6c6a:
    ld h, c                                       ; $6c6a: $61
    rst $00                                       ; $6c6b: $c7
    ld b, l                                       ; $6c6c: $45
    dec c                                         ; $6c6d: $0d
    ccf                                           ; $6c6e: $3f
    xor [hl]                                      ; $6c6f: $ae
    rst $28                                       ; $6c70: $ef
    ld [hl], l                                    ; $6c71: $75
    sub e                                         ; $6c72: $93
    ld d, a                                       ; $6c73: $57
    ld c, a                                       ; $6c74: $4f
    ld e, c                                       ; $6c75: $59
    jp c, $f2f3                                   ; $6c76: $da $f3 $f2

    ld l, e                                       ; $6c79: $6b
    ld c, c                                       ; $6c7a: $49
    xor c                                         ; $6c7b: $a9
    ld e, [hl]                                    ; $6c7c: $5e
    ld e, [hl]                                    ; $6c7d: $5e
    ld l, d                                       ; $6c7e: $6a
    or b                                          ; $6c7f: $b0
    ld d, $4f                                     ; $6c80: $16 $4f
    ld a, d                                       ; $6c82: $7a
    ld d, h                                       ; $6c83: $54
    ld e, e                                       ; $6c84: $5b
    ld c, e                                       ; $6c85: $4b
    adc $8b                                       ; $6c86: $ce $8b
    ld a, d                                       ; $6c88: $7a
    dec c                                         ; $6c89: $0d
    add $97                                       ; $6c8a: $c6 $97
    call c, $b729                                 ; $6c8c: $dc $29 $b7
    jp z, $b0a8                                   ; $6c8f: $ca $a8 $b0

    db $e3                                        ; $6c92: $e3
    and d                                         ; $6c93: $a2
    add [hl]                                      ; $6c94: $86
    rra                                           ; $6c95: $1f
    ld [hl], a                                    ; $6c96: $77
    and c                                         ; $6c97: $a1
    dec bc                                        ; $6c98: $0b
    ld b, $47                                     ; $6c99: $06 $47
    ld de, $979b                                  ; $6c9b: $11 $9b $97
    ld e, a                                       ; $6c9e: $5f
    ld c, e                                       ; $6c9f: $4b
    ld c, d                                       ; $6ca0: $4a
    push af                                       ; $6ca1: $f5
    ld a, [c]                                     ; $6ca2: $f2
    ld d, d                                       ; $6ca3: $52
    add e                                         ; $6ca4: $83
    or l                                          ; $6ca5: $b5
    ld a, b                                       ; $6ca6: $78
    jp nc, $8423                                  ; $6ca7: $d2 $23 $84

    ld b, d                                       ; $6caa: $42
    ld l, l                                       ; $6cab: $6d
    jp c, Jump_000_2f3f                           ; $6cac: $da $3f $2f

    ld [$1835], a                                 ; $6caf: $ea $35 $18
    ld e, a                                       ; $6cb2: $5f
    call nc, $e5e7                                ; $6cb3: $d4 $e7 $e5
    rst $00                                       ; $6cb6: $c7
    ld [hl-], a                                   ; $6cb7: $32
    ret c                                         ; $6cb8: $d8

    add l                                         ; $6cb9: $85
    dec b                                         ; $6cba: $05
    ld b, [hl]                                    ; $6cbb: $46
    add l                                         ; $6cbc: $85
    ld e, l                                       ; $6cbd: $5d
    ld a, [bc]                                    ; $6cbe: $0a
    db $10                                        ; $6cbf: $10
    ld b, $3d                                     ; $6cc0: $06 $3d
    ld a, a                                       ; $6cc2: $7f
    ld d, b                                       ; $6cc3: $50
    jp nc, Jump_000_3644                          ; $6cc4: $d2 $44 $36

    sub a                                         ; $6cc7: $97

Jump_022_6cc8:
    ld h, [hl]                                    ; $6cc8: $66
    sbc [hl]                                      ; $6cc9: $9e
    or e                                          ; $6cca: $b3
    cpl                                           ; $6ccb: $2f
    or c                                          ; $6ccc: $b1
    and l                                         ; $6ccd: $a5
    pop af                                        ; $6cce: $f1
    add l                                         ; $6ccf: $85
    add hl, hl                                    ; $6cd0: $29
    adc a                                         ; $6cd1: $8f
    db $10                                        ; $6cd2: $10
    ld d, d                                       ; $6cd3: $52
    db $db                                        ; $6cd4: $db
    ld e, a                                       ; $6cd5: $5f
    add $ff                                       ; $6cd6: $c6 $ff
    or d                                          ; $6cd8: $b2
    di                                            ; $6cd9: $f3
    or h                                          ; $6cda: $b4
    adc [hl]                                      ; $6cdb: $8e
    inc a                                         ; $6cdc: $3c
    inc a                                         ; $6cdd: $3c
    add hl, sp                                    ; $6cde: $39
    jr nz, @+$0e                                  ; $6cdf: $20 $0c

    and a                                         ; $6ce1: $a7
    halt                                          ; $6ce2: $76
    sbc [hl]                                      ; $6ce3: $9e
    and $45                                       ; $6ce4: $e6 $45
    ld a, l                                       ; $6ce6: $7d
    ld c, c                                       ; $6ce7: $49
    ccf                                           ; $6ce8: $3f
    ld c, d                                       ; $6ce9: $4a
    ld e, $61                                     ; $6cea: $1e $61
    ld d, $7b                                     ; $6cec: $16 $7b
    ld e, [hl]                                    ; $6cee: $5e
    call nc, Call_000_306b                        ; $6cef: $d4 $6b $30
    cp [hl]                                       ; $6cf2: $be
    xor b                                         ; $6cf3: $a8
    rst $08                                       ; $6cf4: $cf
    ld [hl-], a                                   ; $6cf5: $32
    cpl                                           ; $6cf6: $2f
    sub a                                         ; $6cf7: $97
    ld [$bebb], a                                 ; $6cf8: $ea $bb $be
    dec bc                                        ; $6cfb: $0b
    call c, $af5d                                 ; $6cfc: $dc $5d $af
    pop bc                                        ; $6cff: $c1
    db $e4                                        ; $6d00: $e4
    dec [hl]                                      ; $6d01: $35
    add $66                                       ; $6d02: $c6 $66
    and d                                         ; $6d04: $a2
    ld a, [c]                                     ; $6d05: $f2
    call c, $b129                                 ; $6d06: $dc $29 $b1
    ret                                           ; $6d09: $c9


    ld l, e                                       ; $6d0a: $6b
    adc h                                         ; $6d0b: $8c
    call $1aac                                    ; $6d0c: $cd $ac $1a
    adc l                                         ; $6d0f: $8d
    or [hl]                                       ; $6d10: $b6
    db $e3                                        ; $6d11: $e3
    inc hl                                        ; $6d12: $23
    inc c                                         ; $6d13: $0c
    dec a                                         ; $6d14: $3d
    adc e                                         ; $6d15: $8b
    ld a, [$ec2e]                                 ; $6d16: $fa $2e $ec
    ld a, d                                       ; $6d19: $7a
    ld d, a                                       ; $6d1a: $57
    inc c                                         ; $6d1b: $0c
    ld d, $af                                     ; $6d1c: $16 $af
    pop bc                                        ; $6d1e: $c1
    sub h                                         ; $6d1f: $94
    ld h, [hl]                                    ; $6d20: $66
    ld hl, $85eb                                  ; $6d21: $21 $eb $85
    db $db                                        ; $6d24: $db
    cp [hl]                                       ; $6d25: $be
    pop af                                        ; $6d26: $f1
    ld a, d                                       ; $6d27: $7a
    or e                                          ; $6d28: $b3
    ld l, [hl]                                    ; $6d29: $6e
    ld sp, $8eb5                                  ; $6d2a: $31 $b5 $8e
    ld h, [hl]                                    ; $6d2d: $66
    xor c                                         ; $6d2e: $a9
    add l                                         ; $6d2f: $85
    inc bc                                        ; $6d30: $03
    inc hl                                        ; $6d31: $23
    cp a                                          ; $6d32: $bf
    db $eb                                        ; $6d33: $eb
    cp e                                          ; $6d34: $bb
    or b                                          ; $6d35: $b0
    cp [hl]                                       ; $6d36: $be
    rst $20                                       ; $6d37: $e7
    jp nc, $faec                                  ; $6d38: $d2 $ec $fa

    sub d                                         ; $6d3b: $92
    db $10                                        ; $6d3c: $10
    ld b, $16                                     ; $6d3d: $06 $16
    rst $18                                       ; $6d3f: $df
    add l                                         ; $6d40: $85
    ld l, $3b                                     ; $6d41: $2e $3b
    add hl, hl                                    ; $6d43: $29
    or e                                          ; $6d44: $b3
    ld a, $96                                     ; $6d45: $3e $96
    inc a                                         ; $6d47: $3c
    ld [hl], l                                    ; $6d48: $75
    pop bc                                        ; $6d49: $c1
    sub [hl]                                      ; $6d4a: $96
    ld e, d                                       ; $6d4b: $5a
    cp b                                          ; $6d4c: $b8
    ld c, e                                       ; $6d4d: $4b
    sub $0b                                       ; $6d4e: $d6 $0b
    or a                                          ; $6d50: $b7
    dec e                                         ; $6d51: $1d
    cp a                                          ; $6d52: $bf
    bit 1, [hl]                                   ; $6d53: $cb $4e
    jp z, $73ac                                   ; $6d55: $ca $ac $73

    ld d, a                                       ; $6d58: $57
    ld e, [hl]                                    ; $6d59: $5e
    cp [hl]                                       ; $6d5a: $be
    ld b, $d3                                     ; $6d5b: $06 $d3
    ld d, c                                       ; $6d5d: $51
    ld a, [$0c23]                                 ; $6d5e: $fa $23 $0c
    cp l                                          ; $6d61: $bd
    jp nc, Jump_022_6cc8                          ; $6d62: $d2 $c8 $6c

    push af                                       ; $6d65: $f5
    ld a, [c]                                     ; $6d66: $f2
    or d                                          ; $6d67: $b2
    ld hl, sp-$4a                                 ; $6d68: $f8 $b6
    rst $08                                       ; $6d6a: $cf
    res 0, l                                      ; $6d6b: $cb $85
    ld e, l                                       ; $6d6d: $5d
    ld e, d                                       ; $6d6e: $5a
    ret c                                         ; $6d6f: $d8

    xor h                                         ; $6d70: $ac
    sub e                                         ; $6d71: $93
    nop                                           ; $6d72: $00
    rrca                                          ; $6d73: $0f
    ld [hl], b                                    ; $6d74: $70
    sub e                                         ; $6d75: $93
    sub $7e                                       ; $6d76: $d6 $7e
    dec sp                                        ; $6d78: $3b
    push hl                                       ; $6d79: $e5
    ld d, a                                       ; $6d7a: $57
    ld a, [hl]                                    ; $6d7b: $7e
    db $ec                                        ; $6d7c: $ec
    ld a, $43                                     ; $6d7d: $3e $43
    or e                                          ; $6d7f: $b3
    ld hl, sp+$2e                                 ; $6d80: $f8 $2e
    call z, $f86f                                 ; $6d82: $cc $6f $f8
    cp e                                          ; $6d85: $bb
    ld a, $5e                                     ; $6d86: $3e $5e
    ld h, c                                       ; $6d88: $61
    ld a, [c]                                     ; $6d89: $f2
    ld l, [hl]                                    ; $6d8a: $6e
    add h                                         ; $6d8b: $84
    sbc [hl]                                      ; $6d8c: $9e
    call $4d73                                    ; $6d8d: $cd $73 $4d
    ld a, [de]                                    ; $6d90: $1a
    or h                                          ; $6d91: $b4
    inc sp                                        ; $6d92: $33
    ldh [rPCM34], a                               ; $6d93: $e0 $77
    ld a, l                                       ; $6d95: $7d
    db $fc                                        ; $6d96: $fc
    rst $00                                       ; $6d97: $c7
    adc b                                         ; $6d98: $88
    halt                                          ; $6d99: $76
    call nc, Call_022_7cce                        ; $6d9a: $d4 $ce $7c
    ld l, c                                       ; $6d9d: $69
    halt                                          ; $6d9e: $76
    ld a, [c]                                     ; $6d9f: $f2
    adc e                                         ; $6da0: $8b
    inc [hl]                                      ; $6da1: $34
    db $eb                                        ; $6da2: $eb
    ld d, [hl]                                    ; $6da3: $56
    db $e4                                        ; $6da4: $e4
    add d                                         ; $6da5: $82
    add a                                         ; $6da6: $87
    ld a, [bc]                                    ; $6da7: $0a
    di                                            ; $6da8: $f3
    ld e, h                                       ; $6da9: $5c
    sub e                                         ; $6daa: $93
    ld b, $61                                     ; $6dab: $06 $61
    sub [hl]                                      ; $6dad: $96
    ld a, [de]                                    ; $6dae: $1a
    ld e, e                                       ; $6daf: $5b
    ld [hl], b                                    ; $6db0: $70
    xor l                                         ; $6db1: $ad
    ccf                                           ; $6db2: $3f
    and l                                         ; $6db3: $a5
    add $cb                                       ; $6db4: $c6 $cb
    and l                                         ; $6db6: $a5
    ld h, b                                       ; $6db7: $60
    sbc [hl]                                      ; $6db8: $9e
    dec hl                                        ; $6db9: $2b
    ld l, d                                       ; $6dba: $6a
    db $fd                                        ; $6dbb: $fd
    dec h                                         ; $6dbc: $25
    db $fd                                        ; $6dbd: $fd
    jp nc, $979e                                  ; $6dbe: $d2 $9e $97

    add h                                         ; $6dc1: $84
    rst $28                                       ; $6dc2: $ef
    add d                                         ; $6dc3: $82
    ld bc, $1b47                                  ; $6dc4: $01 $47 $1b
    ld b, a                                       ; $6dc7: $47
    ld [$25f1], sp                                ; $6dc8: $08 $f1 $25
    rla                                           ; $6dcb: $17
    xor b                                         ; $6dcc: $a8
    push af                                       ; $6dcd: $f5
    ld [hl], a                                    ; $6dce: $77
    ld a, l                                       ; $6dcf: $7d
    sbc [hl]                                      ; $6dd0: $9e
    dec bc                                        ; $6dd1: $0b
    cp a                                          ; $6dd2: $bf
    dec hl                                        ; $6dd3: $2b
    ld b, $96                                     ; $6dd4: $06 $96
    ld a, c                                       ; $6dd6: $79
    cp c                                          ; $6dd7: $b9
    ld d, h                                       ; $6dd8: $54
    sbc a                                         ; $6dd9: $9f
    and l                                         ; $6dda: $a5
    ld d, $e3                                     ; $6ddb: $16 $e3
    ld e, h                                       ; $6ddd: $5c
    sbc d                                         ; $6dde: $9a
    and l                                         ; $6ddf: $a5
    pop af                                        ; $6de0: $f1
    ld a, c                                       ; $6de1: $79
    ld sp, hl                                     ; $6de2: $f9
    ld d, l                                       ; $6de3: $55
    ld sp, $deb5                                  ; $6de4: $31 $b5 $de
    dec b                                         ; $6de7: $05
    inc bc                                        ; $6de8: $03
    sub [hl]                                      ; $6de9: $96
    ld d, l                                       ; $6dea: $55
    ld c, d                                       ; $6deb: $4a
    dec bc                                        ; $6dec: $0b
    ld [hl], d                                    ; $6ded: $72
    sub a                                         ; $6dee: $97
    and $e5                                       ; $6def: $e6 $e5
    ld [hl], a                                    ; $6df1: $77
    ld a, [$cb83]                                 ; $6df2: $fa $83 $cb
    xor l                                         ; $6df5: $ad
    db $fc                                        ; $6df6: $fc

jr_022_6df7:
    reti                                          ; $6df7: $d9


    ld e, d                                       ; $6df8: $5a
    cp [hl]                                       ; $6df9: $be
    ld a, [c]                                     ; $6dfa: $f2
    sbc e                                         ; $6dfb: $9b
    inc [hl]                                      ; $6dfc: $34
    cp $7a                                        ; $6dfd: $fe $7a
    ld c, c                                       ; $6dff: $49
    db $e3                                        ; $6e00: $e3
    ld l, e                                       ; $6e01: $6b
    rst $38                                       ; $6e02: $ff
    and l                                         ; $6e03: $a5
    ld h, b                                       ; $6e04: $60
    ldh a, [rVBK]                                 ; $6e05: $f0 $4f
    ld e, l                                       ; $6e07: $5d
    jr nc, jr_022_6e47                            ; $6e08: $30 $3d

    ld c, e                                       ; $6e0a: $4b
    sub $60                                       ; $6e0b: $d6 $60
    sub a                                         ; $6e0d: $97
    ld d, [hl]                                    ; $6e0e: $56
    ld e, [hl]                                    ; $6e0f: $5e
    cp [hl]                                       ; $6e10: $be
    dec hl                                        ; $6e11: $2b
    ld b, $96                                     ; $6e12: $06 $96
    dec d                                         ; $6e14: $15
    or l                                          ; $6e15: $b5
    cp $9a                                        ; $6e16: $fe $9a
    inc [hl]                                      ; $6e18: $34
    ld e, l                                       ; $6e19: $5d
    jr nc, @-$51                                  ; $6e1a: $30 $ad

    ld a, [hl+]                                   ; $6e1c: $2a
    jp nc, Jump_022_7bac                          ; $6e1d: $d2 $ac $7b

    cp d                                          ; $6e20: $ba
    cp a                                          ; $6e21: $bf
    ld [hl], h                                    ; $6e22: $74
    reti                                          ; $6e23: $d9


    xor c                                         ; $6e24: $a9
    add $a7                                       ; $6e25: $c6 $a7
    ld a, $ba                                     ; $6e27: $3e $ba
    ld b, c                                       ; $6e29: $41
    pop af                                        ; $6e2a: $f1
    dec e                                         ; $6e2b: $1d
    ld [hl], l                                    ; $6e2c: $75
    jp z, $bb31                                   ; $6e2d: $ca $31 $bb

    inc [hl]                                      ; $6e30: $34
    cpl                                           ; $6e31: $2f
    cp a                                          ; $6e32: $bf
    db $d3                                        ; $6e33: $d3
    rra                                           ; $6e34: $1f
    ld e, h                                       ; $6e35: $5c
    ld l, [hl]                                    ; $6e36: $6e
    push hl                                       ; $6e37: $e5
    rst $08                                       ; $6e38: $cf
    sub $f2                                       ; $6e39: $d6 $f2
    sub l                                         ; $6e3b: $95
    rst $18                                       ; $6e3c: $df
    and h                                         ; $6e3d: $a4
    ld l, $eb                                     ; $6e3e: $2e $eb
    xor a                                         ; $6e40: $af
    rst $18                                       ; $6e41: $df
    sub l                                         ; $6e42: $95
    inc [hl]                                      ; $6e43: $34
    ldh a, [$eb]                                  ; $6e44: $f0 $eb
    db $e4                                        ; $6e46: $e4

jr_022_6e47:
    dec h                                         ; $6e47: $25
    ld e, a                                       ; $6e48: $5f
    rst $20                                       ; $6e49: $e7
    ld c, c                                       ; $6e4a: $49
    and e                                         ; $6e4b: $a3
    scf                                           ; $6e4c: $37

jr_022_6e4d:
    ld l, b                                       ; $6e4d: $68
    and a                                         ; $6e4e: $a7
    inc h                                         ; $6e4f: $24
    rst $08                                       ; $6e50: $cf
    ld e, l                                       ; $6e51: $5d
    ld e, e                                       ; $6e52: $5b
    xor e                                         ; $6e53: $ab
    ld a, [$d73c]                                 ; $6e54: $fa $3c $d7
    and h                                         ; $6e57: $a4
    sub c                                         ; $6e58: $91
    or c                                          ; $6e59: $b1
    sub h                                         ; $6e5a: $94
    ldh a, [$7a]                                  ; $6e5b: $f0 $7a
    ld c, d                                       ; $6e5d: $4a
    add e                                         ; $6e5e: $83
    jr nc, jr_022_6df7                            ; $6e5f: $30 $96

    ld e, d                                       ; $6e61: $5a
    adc h                                         ; $6e62: $8c
    ld l, e                                       ; $6e63: $6b
    rst $38                                       ; $6e64: $ff
    jp nz, Jump_022_5f94                          ; $6e65: $c2 $94 $5f

    and l                                         ; $6e68: $a5
    ld a, [c]                                     ; $6e69: $f2
    or [hl]                                       ; $6e6a: $b6
    adc c                                         ; $6e6b: $89
    di                                            ; $6e6c: $f3
    ld [hl], d                                    ; $6e6d: $72
    ld h, c                                       ; $6e6e: $61
    ld a, [hl]                                    ; $6e6f: $7e
    jp Jump_000_1847                              ; $6e70: $c3 $47 $18


    dec a                                         ; $6e73: $3d
    adc e                                         ; $6e74: $8b
    ld a, d                                       ; $6e75: $7a
    dec c                                         ; $6e76: $0d
    ld d, $e4                                     ; $6e77: $16 $e4
    and l                                         ; $6e79: $a5
    ld h, b                                       ; $6e7a: $60
    ld c, c                                       ; $6e7b: $49
    ld e, l                                       ; $6e7c: $5d
    ld sp, $a7c7                                  ; $6e7d: $31 $c7 $a7
    ld d, a                                       ; $6e80: $57
    ld b, l                                       ; $6e81: $45
    cp e                                          ; $6e82: $bb
    ld h, b                                       ; $6e83: $60
    dec a                                         ; $6e84: $3d

jr_022_6e85:
    ccf                                           ; $6e85: $3f
    ld b, [hl]                                    ; $6e86: $46
    xor $f8                                       ; $6e87: $ee $f8
    adc a                                         ; $6e89: $8f
    sub c                                         ; $6e8a: $91
    cp e                                          ; $6e8b: $bb
    ld d, [hl]                                    ; $6e8c: $56
    dec d                                         ; $6e8d: $15
    ld l, c                                       ; $6e8e: $69
    sub $3d                                       ; $6e8f: $d6 $3d
    db $dd                                        ; $6e91: $dd
    ld e, a                                       ; $6e92: $5f
    cp d                                          ; $6e93: $ba
    call z, $a2b2                                 ; $6e94: $cc $b2 $a2
    sub $5f                                       ; $6e97: $d6 $5f
    cp c                                          ; $6e99: $b9
    ld hl, $2777                                  ; $6e9a: $21 $77 $27
    dec hl                                        ; $6e9d: $2b
    db $d3                                        ; $6e9e: $d3
    ld [hl], b                                    ; $6e9f: $70
    db $dd                                        ; $6ea0: $dd
    cpl                                           ; $6ea1: $2f
    ld d, l                                       ; $6ea2: $55
    adc a                                         ; $6ea3: $8f
    jr nc, jr_022_6e4d                            ; $6ea4: $30 $a7

    ld a, [de]                                    ; $6ea6: $1a
    sbc a                                         ; $6ea7: $9f
    ld a, [$06e8]                                 ; $6ea8: $fa $e8 $06
    push bc                                       ; $6eab: $c5
    ld [hl], a                                    ; $6eac: $77
    call nc, $c729                                ; $6ead: $d4 $29 $c7
    db $ec                                        ; $6eb0: $ec
    jp nc, $fcbc                                  ; $6eb1: $d2 $bc $fc

    ld c, [hl]                                    ; $6eb4: $4e
    ld a, a                                       ; $6eb5: $7f
    ld [hl], b                                    ; $6eb6: $70
    cp c                                          ; $6eb7: $b9
    sub l                                         ; $6eb8: $95
    ccf                                           ; $6eb9: $3f
    ld e, e                                       ; $6eba: $5b
    bit 2, a                                      ; $6ebb: $cb $57
    ld a, [hl]                                    ; $6ebd: $7e
    sub e                                         ; $6ebe: $93
    cp b                                          ; $6ebf: $b8
    cp e                                          ; $6ec0: $bb
    or $2c                                        ; $6ec1: $f6 $2c
    or l                                          ; $6ec3: $b5
    ld [hl], b                                    ; $6ec4: $70
    sub h                                         ; $6ec5: $94
    cp [hl]                                       ; $6ec6: $be
    ldh a, [$82]                                  ; $6ec7: $f0 $82
    ld l, e                                       ; $6ec9: $6b
    db $fd                                        ; $6eca: $fd
    add hl, bc                                    ; $6ecb: $09
    xor l                                         ; $6ecc: $ad
    cp a                                          ; $6ecd: $bf
    ld a, [hl]                                    ; $6ece: $7e
    rst $10                                       ; $6ecf: $d7
    sbc d                                         ; $6ed0: $9a
    ld b, $7e                                     ; $6ed1: $06 $7e
    db $dd                                        ; $6ed3: $dd
    di                                            ; $6ed4: $f3
    sub d                                         ; $6ed5: $92
    xor a                                         ; $6ed6: $af
    di                                            ; $6ed7: $f3
    and h                                         ; $6ed8: $a4
    pop de                                        ; $6ed9: $d1
    dec de                                        ; $6eda: $1b
    or h                                          ; $6edb: $b4
    ld d, e                                       ; $6edc: $53
    sub d                                         ; $6edd: $92
    rst $20                                       ; $6ede: $e7
    xor [hl]                                      ; $6edf: $ae
    xor l                                         ; $6ee0: $ad
    ld d, l                                       ; $6ee1: $55
    ld a, l                                       ; $6ee2: $7d
    sbc [hl]                                      ; $6ee3: $9e
    ld l, e                                       ; $6ee4: $6b
    jp nc, Jump_022_58c8                          ; $6ee5: $d2 $c8 $58

    ld c, d                                       ; $6ee8: $4a
    ld a, b                                       ; $6ee9: $78
    dec a                                         ; $6eea: $3d
    and l                                         ; $6eeb: $a5
    ld b, c                                       ; $6eec: $41
    jr jr_022_6e85                                ; $6eed: $18 $96

    push de                                       ; $6eef: $d5
    add hl, hl                                    ; $6ef0: $29
    ld sp, hl                                     ; $6ef1: $f9
    ld a, c                                       ; $6ef2: $79
    ld a, c                                       ; $6ef3: $79
    ld sp, hl                                     ; $6ef4: $f9
    ld a, [de]                                    ; $6ef5: $1a
    inc c                                         ; $6ef6: $0c
    ld [hl-], a                                   ; $6ef7: $32
    db $fc                                        ; $6ef8: $fc
    and h                                         ; $6ef9: $a4
    sbc a                                         ; $6efa: $9f
    ld c, d                                       ; $6efb: $4a
    ld a, [de]                                    ; $6efc: $1a
    ld h, d                                       ; $6efd: $62
    ld [$cb21], sp                                ; $6efe: $08 $21 $cb
    ld a, [hl+]                                   ; $6f01: $2a
    and l                                         ; $6f02: $a5
    sub l                                         ; $6f03: $95
    ld d, a                                       ; $6f04: $57
    sbc c                                         ; $6f05: $99
    sub a                                         ; $6f06: $97
    rrca                                          ; $6f07: $0f
    ld de, $dd06                                  ; $6f08: $11 $06 $dd
    ld [hl-], a                                   ; $6f0b: $32
    db $fc                                        ; $6f0c: $fc
    and l                                         ; $6f0d: $a5
    ld [hl], c                                    ; $6f0e: $71
    xor $aa                                       ; $6f0f: $ee $aa
    inc c                                         ; $6f11: $0c
    ld a, a                                       ; $6f12: $7f
    ld l, c                                       ; $6f13: $69
    sbc h                                         ; $6f14: $9c
    dec sp                                        ; $6f15: $3b
    cp [hl]                                       ; $6f16: $be
    cp h                                          ; $6f17: $bc
    cp h                                          ; $6f18: $bc
    push af                                       ; $6f19: $f5
    ld h, l                                       ; $6f1a: $65
    ld c, l                                       ; $6f1b: $4d
    sbc d                                         ; $6f1c: $9a
    xor c                                         ; $6f1d: $a9
    inc a                                         ; $6f1e: $3c
    jp nz, $ca3d                                  ; $6f1f: $c2 $3d $ca

    res 5, a                                      ; $6f22: $cb $af
    ld c, c                                       ; $6f24: $49
    inc sp                                        ; $6f25: $33
    sub l                                         ; $6f26: $95
    rst $28                                       ; $6f27: $ef
    add d                                         ; $6f28: $82
    ld bc, $1aa7                                  ; $6f29: $01 $a7 $1a
    sbc a                                         ; $6f2c: $9f
    sbc l                                         ; $6f2d: $9d
    ld [hl-], a                                   ; $6f2e: $32
    dec e                                         ; $6f2f: $1d
    cp b                                          ; $6f30: $b8
    ld h, h                                       ; $6f31: $64
    adc h                                         ; $6f32: $8c
    call c, $e17d                                 ; $6f33: $dc $7d $e1
    xor [hl]                                      ; $6f36: $ae
    ld a, e                                       ; $6f37: $7b
    cp d                                          ; $6f38: $ba
    cp a                                          ; $6f39: $bf
    ld [hl], h                                    ; $6f3a: $74
    ld e, l                                       ; $6f3b: $5d
    adc a                                         ; $6f3c: $8f
    and d                                         ; $6f3d: $a2
    ld a, $fe                                     ; $6f3e: $3e $fe
    add $b8                                       ; $6f40: $c6 $b8
    ld a, [hl+]                                   ; $6f42: $2a
    pop bc                                        ; $6f43: $c1
    rst $10                                       ; $6f44: $d7
    and h                                         ; $6f45: $a4
    reti                                          ; $6f46: $d9


    ld b, c                                       ; $6f47: $41
    dec hl                                        ; $6f48: $2b
    ld l, c                                       ; $6f49: $69
    ldh [$d7], a                                  ; $6f4a: $e0 $d7
    ret                                           ; $6f4c: $c9


    ld c, e                                       ; $6f4d: $4b
    ld c, $68                                     ; $6f4e: $0e $68
    and a                                         ; $6f50: $a7
    inc h                                         ; $6f51: $24
    cp a                                          ; $6f52: $bf
    or [hl]                                       ; $6f53: $b6
    ld d, [hl]                                    ; $6f54: $56
    push af                                       ; $6f55: $f5
    ld a, c                                       ; $6f56: $79
    xor [hl]                                      ; $6f57: $ae
    db $fd                                        ; $6f58: $fd
    xor h                                         ; $6f59: $ac
    dec bc                                        ; $6f5a: $0b

Jump_022_6f5b:
    ld b, $47                                     ; $6f5b: $06 $47
    ret                                           ; $6f5d: $c9


    rst $08                                       ; $6f5e: $cf
    swap a                                        ; $6f5f: $cb $37
    inc bc                                        ; $6f61: $03
    cp a                                          ; $6f62: $bf
    ld sp, $692e                                  ; $6f63: $31 $2e $69
    ld e, [hl]                                    ; $6f66: $5e
    ld l, $cc                                     ; $6f67: $2e $cc
    adc [hl]                                      ; $6f69: $8e
    sbc c                                         ; $6f6a: $99
    jp nc, $9675                                  ; $6f6b: $d2 $75 $96

    ld d, l                                       ; $6f6e: $55
    ld c, d                                       ; $6f6f: $4a
    dec [hl]                                      ; $6f70: $35
    rra                                           ; $6f71: $1f
    db $fc                                        ; $6f72: $fc
    rst $08                                       ; $6f73: $cf
    res 0, a                                      ; $6f74: $cb $87
    ld [$bd03], sp                                ; $6f76: $08 $03 $bd
    jp nc, Jump_022_52ac                          ; $6f79: $d2 $ac $52

    xor d                                         ; $6f7c: $aa
    ld sp, hl                                     ; $6f7d: $f9
    call nc, $979a                                ; $6f7e: $d4 $9a $97
    dec l                                         ; $6f81: $2d
    db $fc                                        ; $6f82: $fc
    reti                                          ; $6f83: $d9


    add hl, hl                                    ; $6f84: $29
    ld l, a                                       ; $6f85: $6f
    ld a, l                                       ; $6f86: $7d
    ld b, c                                       ; $6f87: $41
    jr @-$68                                      ; $6f88: $18 $96

    ld e, d                                       ; $6f8a: $5a
    adc h                                         ; $6f8b: $8c
    or e                                          ; $6f8c: $b3
    cpl                                           ; $6f8d: $2f
    or c                                          ; $6f8e: $b1
    dec [hl]                                      ; $6f8f: $35
    ld l, c                                       ; $6f90: $69
    sub $bc                                       ; $6f91: $d6 $bc
    ld [hl], a                                    ; $6f93: $77
    pop bc                                        ; $6f94: $c1
    ld d, $af                                     ; $6f95: $16 $af
    push bc                                       ; $6f97: $c5
    cp b                                          ; $6f98: $b8
    jr nz, @-$07                                  ; $6f99: $20 $f7

    ld a, [bc]                                    ; $6f9b: $0a
    rst $30                                       ; $6f9c: $f7
    ld h, l                                       ; $6f9d: $65
    ld c, c                                       ; $6f9e: $49
    ld l, e                                       ; $6f9f: $6b
    jp nc, $daec                                  ; $6fa0: $d2 $ec $da

    ld l, e                                       ; $6fa3: $6b
    jp nc, $b82c                                  ; $6fa4: $d2 $2c $b8

    sub $9f                                       ; $6fa7: $d6 $9f
    jp hl                                         ; $6fa9: $e9


    ld [hl], b                                    ; $6faa: $70
    rst $00                                       ; $6fab: $c7
    sub a                                         ; $6fac: $97
    ld a, h                                       ; $6fad: $7c
    db $eb                                        ; $6fae: $eb
    res 3, d                                      ; $6faf: $cb $9a
    inc [hl]                                      ; $6fb1: $34
    ld d, e                                       ; $6fb2: $53
    ld a, c                                       ; $6fb3: $79
    add h                                         ; $6fb4: $84
    ld bc, $b196                                  ; $6fb5: $01 $96 $b1
    res 5, b                                      ; $6fb8: $cb $a8
    and $83                                       ; $6fba: $e6 $83
    rst $38                                       ; $6fbc: $ff
    add hl, hl                                    ; $6fbd: $29
    dec [hl]                                      ; $6fbe: $35
    ld c, c                                       ; $6fbf: $49
    rst $08                                       ; $6fc0: $cf
    ld e, l                                       ; $6fc1: $5d
    ld [hl], a                                    ; $6fc2: $77
    ld c, c                                       ; $6fc3: $49
    ei                                            ; $6fc4: $fb
    ld bc, $1052                                  ; $6fc5: $01 $52 $10
    ld b, $a7                                     ; $6fc8: $06 $a7
    db $fc                                        ; $6fca: $fc
    push af                                       ; $6fcb: $f5
    ld a, [c]                                     ; $6fcc: $f2
    ld [hl-], a                                   ; $6fcd: $32
    halt                                          ; $6fce: $76
    reti                                          ; $6fcf: $d9


    inc l                                         ; $6fd0: $2c
    ld l, b                                       ; $6fd1: $68
    ld b, a                                       ; $6fd2: $47
    dec de                                        ; $6fd3: $1b
    rra                                           ; $6fd4: $1f
    ld h, h                                       ; $6fd5: $64
    ld hl, sp+$49                                 ; $6fd6: $f8 $49
    cp a                                          ; $6fd8: $bf
    dec bc                                        ; $6fd9: $0b
    add e                                         ; $6fda: $83
    cp d                                          ; $6fdb: $ba
    adc c                                         ; $6fdc: $89
    push af                                       ; $6fdd: $f5
    ld c, e                                       ; $6fde: $4b
    pop bc                                        ; $6fdf: $c1
    ld d, h                                       ; $6fe0: $54
    jp nc, $9b10                                  ; $6fe1: $d2 $10 $9b

    ld h, l                                       ; $6fe4: $65
    cp h                                          ; $6fe5: $bc
    sub d                                         ; $6fe6: $92
    rst $08                                       ; $6fe7: $cf
    ld [hl], e                                    ; $6fe8: $73
    ld [hl], l                                    ; $6fe9: $75
    ld c, d                                       ; $6fea: $4a
    ld a, [hl]                                    ; $6feb: $7e
    ld a, h                                       ; $6fec: $7c
    ld c, c                                       ; $6fed: $49
    add h                                         ; $6fee: $84
    ld bc, $ca3d                                  ; $6fef: $01 $3d $ca
    scf                                           ; $6ff2: $37
    dec hl                                        ; $6ff3: $2b
    ld l, d                                       ; $6ff4: $6a
    db $fd                                        ; $6ff5: $fd
    ld a, c                                       ; $6ff6: $79
    cp c                                          ; $6ff7: $b9
    or b                                          ; $6ff8: $b0
    ld a, [hl+]                                   ; $6ff9: $2a
    ld b, l                                       ; $6ffa: $45
    ld l, $4b                                     ; $6ffb: $2e $4b
    ld e, c                                       ; $6ffd: $59
    dec sp                                        ; $6ffe: $3b
    ld h, [hl]                                    ; $6fff: $66
    ld d, l                                       ; $7000: $55
    ld a, a                                       ; $7001: $7f
    add [hl]                                      ; $7002: $86
    db $10                                        ; $7003: $10
    or d                                          ; $7004: $b2
    adc h                                         ; $7005: $8c
    dec h                                         ; $7006: $25
    push de                                       ; $7007: $d5
    ld a, h                                       ; $7008: $7c
    ld e, [hl]                                    ; $7009: $5e
    ld l, $d5                                     ; $700a: $2e $d5
    ld h, a                                       ; $700c: $67
    ld e, c                                       ; $700d: $59
    and l                                         ; $700e: $a5
    or h                                          ; $700f: $b4
    ldh [$7d], a                                  ; $7010: $e0 $7d
    dec e                                         ; $7012: $1d
    dec b                                         ; $7013: $05
    sbc a                                         ; $7014: $9f
    sub a                                         ; $7015: $97
    rrca                                          ; $7016: $0f
    ld de, $c706                                  ; $7017: $11 $06 $c7
    sub [hl]                                      ; $701a: $96
    xor [hl]                                      ; $701b: $ae

jr_022_701c:
    ld l, e                                       ; $701c: $6b
    ret                                           ; $701d: $c9


    ldh a, [$bd]                                  ; $701e: $f0 $bd
    ld e, h                                       ; $7020: $5c
    ld a, [bc]                                    ; $7021: $0a
    sub $36                                       ; $7022: $d6 $36

Jump_022_7024:
    ld h, c                                       ; $7024: $61
    rst $20                                       ; $7025: $e7
    reti                                          ; $7026: $d9


    ld l, $79                                     ; $7027: $2e $79
    ld l, $7c                                     ; $7029: $2e $7c
    add h                                         ; $702b: $84
    ld bc, $c92d                                  ; $702c: $01 $2d $c9
    ld e, l                                       ; $702f: $5d
    xor e                                         ; $7030: $ab
    adc d                                         ; $7031: $8a
    inc [hl]                                      ; $7032: $34
    db $eb                                        ; $7033: $eb
    sbc [hl]                                      ; $7034: $9e
    xor $2f                                       ; $7035: $ee $2f
    ld l, b                                       ; $7037: $68
    cp l                                          ; $7038: $bd
    jp nc, $acd4                                  ; $7039: $d2 $d4 $ac

    cp a                                          ; $703c: $bf
    jr nz, jr_022_701c                            ; $703d: $20 $dd

    sbc a                                         ; $703f: $9f
    sub $a4                                       ; $7040: $d6 $a4
    sub c                                         ; $7042: $91
    reti                                          ; $7043: $d9


    ld [$a5e5], a                                 ; $7044: $ea $e5 $a5
    ld b, $ab                                     ; $7047: $06 $ab
    ld h, d                                       ; $7049: $62
    ld l, d                                       ; $704a: $6a
    sbc l                                         ; $704b: $9d
    dec sp                                        ; $704c: $3b
    dec h                                         ; $704d: $25
    or [hl]                                       ; $704e: $b6
    ld h, $4d                                     ; $704f: $26 $4d
    ld c, l                                       ; $7051: $4d
    ld a, [hl]                                    ; $7052: $7e
    ld b, $2e                                     ; $7053: $06 $2e
    dec b                                         ; $7055: $05
    cp e                                          ; $7056: $bb
    cp [hl]                                       ; $7057: $be
    di                                            ; $7058: $f3
    inc c                                         ; $7059: $0c
    ld hl, sp-$1e                                 ; $705a: $f8 $e2
    xor l                                         ; $705c: $ad
    rst $38                                       ; $705d: $ff
    jp z, Jump_022_5d8f                           ; $705e: $ca $8f $5d

    add [hl]                                      ; $7061: $86
    halt                                          ; $7062: $76
    ret nc                                        ; $7063: $d0

    ld e, d                                       ; $7064: $5a
    db $d3                                        ; $7065: $d3
    ret nz                                        ; $7066: $c0

    xor a                                         ; $7067: $af
    ld a, e                                       ; $7068: $7b
    ld e, [hl]                                    ; $7069: $5e
    ld a, [c]                                     ; $706a: $f2
    ld [hl], l                                    ; $706b: $75
    sbc [hl]                                      ; $706c: $9e
    inc [hl]                                      ; $706d: $34
    ld a, d                                       ; $706e: $7a
    inc sp                                        ; $706f: $33
    dec sp                                        ; $7070: $3b
    ld h, l                                       ; $7071: $65
    db $ed                                        ; $7072: $ed
    cp a                                          ; $7073: $bf
    inc d                                         ; $7074: $14
    inc l                                         ; $7075: $2c
    adc l                                         ; $7076: $8d
    ld c, a                                       ; $7077: $4f
    ld a, l                                       ; $7078: $7d
    ld [hl], h                                    ; $7079: $74
    add e                                         ; $707a: $83
    ld [c], a                                     ; $707b: $e2
    ld [$4703], sp                                ; $707c: $08 $03 $47
    pop de                                        ; $707f: $d1
    ld [hl-], a                                   ; $7080: $32
    or d                                          ; $7081: $b2
    add l                                         ; $7082: $85
    ld d, a                                       ; $7083: $57
    inc h                                         ; $7084: $24
    dec b                                         ; $7085: $05
    xor l                                         ; $7086: $ad
    ld h, a                                       ; $7087: $67
    ld l, c                                       ; $7088: $69
    halt                                          ; $7089: $76
    ld h, c                                       ; $708a: $61
    rst $10                                       ; $708b: $d7
    ld [hl], a                                    ; $708c: $77
    ld l, c                                       ; $708d: $69
    ld e, [hl]                                    ; $708e: $5e
    ld l, $ec                                     ; $708f: $2e $ec
    jp Jump_000_378e                              ; $7091: $c3 $8e $37


    xor e                                         ; $7094: $ab
    and d                                         ; $7095: $a2
    ld [bc], a                                    ; $7096: $02
    ld c, b                                       ; $7097: $48
    ld h, [hl]                                    ; $7098: $66
    ret c                                         ; $7099: $d8

    dec d                                         ; $709a: $15
    inc bc                                        ; $709b: $03
    xor l                                         ; $709c: $ad
    cpl                                           ; $709d: $2f
    ei                                            ; $709e: $fb
    and $61                                       ; $709f: $e6 $61
    ld a, [hl+]                                   ; $70a1: $2a
    cp a                                          ; $70a2: $bf
    ld a, b                                       ; $70a3: $78
    db $eb                                        ; $70a4: $eb
    cp a                                          ; $70a5: $bf
    ldh a, [$d2]                                  ; $70a6: $f0 $d2
    inc hl                                        ; $70a8: $23
    add h                                         ; $70a9: $84
    sub b                                         ; $70aa: $90
    ld [de], a                                    ; $70ab: $12
    ld e, e                                       ; $70ac: $5b
    ld sp, hl                                     ; $70ad: $f9
    dec d                                         ; $70ae: $15
    add l                                         ; $70af: $85
    add l                                         ; $70b0: $85
    call Call_022_5e8a                            ; $70b1: $cd $8a $5e
    ld b, c                                       ; $70b4: $41
    dec sp                                        ; $70b5: $3b
    add hl, sp                                    ; $70b6: $39
    jp Jump_000_3bae                              ; $70b7: $c3 $ae $3b


    ld b, [hl]                                    ; $70ba: $46
    ld e, c                                       ; $70bb: $59
    ld d, a                                       ; $70bc: $57
    inc c                                         ; $70bd: $0c
    dec l                                         ; $70be: $2d
    ret                                           ; $70bf: $c9


    ld e, l                                       ; $70c0: $5d
    sub e                                         ; $70c1: $93
    ld h, [hl]                                    ; $70c2: $66
    ld b, l                                       ; $70c3: $45
    xor l                                         ; $70c4: $ad
    ccf                                           ; $70c5: $3f
    halt                                          ; $70c6: $76
    and c                                         ; $70c7: $a1
    ld c, d                                       ; $70c8: $4a
    db $eb                                        ; $70c9: $eb
    res 6, e                                      ; $70ca: $cb $b3
    ld a, c                                       ; $70cc: $79
    ld sp, hl                                     ; $70cd: $f9
    ld [hl], l                                    ; $70ce: $75
    sub d                                         ; $70cf: $92
    ld a, a                                       ; $70d0: $7f
    add c                                         ; $70d1: $81
    and l                                         ; $70d2: $a5
    dec a                                         ; $70d3: $3d
    cpl                                           ; $70d4: $2f
    cp a                                          ; $70d5: $bf
    sub e                                         ; $70d6: $93
    xor a                                         ; $70d7: $af
    ld c, b                                       ; $70d8: $48
    jp z, $ded2                                   ; $70d9: $ca $d2 $de

    or c                                          ; $70dc: $b1
    ld [hl], d                                    ; $70dd: $72
    pop hl                                        ; $70de: $e1
    add hl, de                                    ; $70df: $19
    jp nz, $25dd                                  ; $70e0: $c2 $dd $25

    db $ed                                        ; $70e3: $ed
    rlca                                          ; $70e4: $07
    ld c, b                                       ; $70e5: $48
    reti                                          ; $70e6: $d9


    ld sp, $6c26                                  ; $70e7: $31 $26 $6c
    rst $00                                       ; $70ea: $c7
    ld h, a                                       ; $70eb: $67
    add hl, hl                                    ; $70ec: $29
    rst $18                                       ; $70ed: $df
    ld h, l                                       ; $70ee: $65
    dec a                                         ; $70ef: $3d
    set 1, e                                      ; $70f0: $cb $cb
    adc a                                         ; $70f2: $8f
    ld e, l                                       ; $70f3: $5d
    or [hl]                                       ; $70f4: $b6
    ld h, $cd                                     ; $70f5: $26 $cd
    xor d                                         ; $70f7: $aa
    inc c                                         ; $70f8: $0c
    ld a, a                                       ; $70f9: $7f
    or [hl]                                       ; $70fa: $b6
    ld h, h                                       ; $70fb: $64
    ret c                                         ; $70fc: $d8

    dec d                                         ; $70fd: $15
    inc bc                                        ; $70fe: $03
    sub [hl]                                      ; $70ff: $96
    or c                                          ; $7100: $b1
    and h                                         ; $7101: $a4
    sbc d                                         ; $7102: $9a
    adc a                                         ; $7103: $8f
    cp $d9                                        ; $7104: $fe $d9
    ld [hl], h                                    ; $7106: $74
    ld d, l                                       ; $7107: $55
    ld c, h                                       ; $7108: $4c
    xor l                                         ; $7109: $ad
    rst $08                                       ; $710a: $cf
    ld [hl], e                                    ; $710b: $73
    db $ed                                        ; $710c: $ed
    xor a                                         ; $710d: $af
    ld [hl-], a                                   ; $710e: $32
    db $fc                                        ; $710f: $fc
    ld e, l                                       ; $7110: $5d
    or d                                          ; $7111: $b2
    ld e, [hl]                                    ; $7112: $5e
    cp b                                          ; $7113: $b8
    db $ed                                        ; $7114: $ed
    ld hl, sp+$68                                 ; $7115: $f8 $68
    rst $00                                       ; $7117: $c7
    db $e4                                        ; $7118: $e4
    sbc d                                         ; $7119: $9a
    inc [hl]                                      ; $711a: $34
    inc sp                                        ; $711b: $33
    call nz, $c05e                                ; $711c: $c4 $5e $c0
    sub l                                         ; $711f: $95
    ret c                                         ; $7120: $d8

    ld hl, sp-$5e                                 ; $7121: $f8 $a2
    ld a, $2f                                     ; $7123: $3e $2f
    cp a                                          ; $7125: $bf
    sub e                                         ; $7126: $93
    xor a                                         ; $7127: $af
    ld c, b                                       ; $7128: $48
    jp z, $ded2                                   ; $7129: $ca $d2 $de

    or c                                          ; $712c: $b1
    ld [hl], d                                    ; $712d: $72
    pop hl                                        ; $712e: $e1
    reti                                          ; $712f: $d9


    and b                                         ; $7130: $a0
    inc h                                         ; $7131: $24
    rst $38                                       ; $7132: $ff
    ld l, h                                       ; $7133: $6c
    ld c, l                                       ; $7134: $4d
    sbc d                                         ; $7135: $9a
    xor [hl]                                      ; $7136: $ae
    jr @+$29                                      ; $7137: $18 $27

    scf                                           ; $7139: $37
    db $eb                                        ; $713a: $eb
    xor b                                         ; $713b: $a8
    inc a                                         ; $713c: $3c
    add hl, sp                                    ; $713d: $39
    ld [hl], h                                    ; $713e: $74
    push bc                                       ; $713f: $c5
    ld d, $1f                                     ; $7140: $16 $1f
    sub h                                         ; $7142: $94
    db $e4                                        ; $7143: $e4
    ld h, c                                       ; $7144: $61
    ld c, l                                       ; $7145: $4d
    ld a, [de]                                    ; $7146: $1a
    ld e, c                                       ; $7147: $59
    ld a, c                                       ; $7148: $79
    dec d                                         ; $7149: $15
    xor a                                         ; $714a: $af
    pop bc                                        ; $714b: $c1
    ret c                                         ; $714c: $d8

    ld a, a                                       ; $714d: $7f
    rst $20                                       ; $714e: $e7
    pop bc                                        ; $714f: $c1
    rst $00                                       ; $7150: $c7
    ld e, $ae                                     ; $7151: $1e $ae
    inc a                                         ; $7153: $3c
    ld [hl], a                                    ; $7154: $77
    ld l, l                                       ; $7155: $6d
    db $e3                                        ; $7156: $e3
    and e                                         ; $7157: $a3
    db $f4                                        ; $7158: $f4
    ld a, c                                       ; $7159: $79
    ld sp, hl                                     ; $715a: $f9
    cp c                                          ; $715b: $b9
    jr jr_022_718d                                ; $715c: $18 $2f

    ld l, b                                       ; $715e: $68
    ld d, $1f                                     ; $715f: $16 $1f
    ld a, a                                       ; $7161: $7f
    ld h, e                                       ; $7162: $63
    ld e, h                                       ; $7163: $5c
    ei                                            ; $7164: $fb
    rla                                           ; $7165: $17
    and [hl]                                      ; $7166: $a6
    push af                                       ; $7167: $f5
    reti                                          ; $7168: $d9


    inc a                                         ; $7169: $3c
    jp Jump_022_4914                              ; $716a: $c3 $14 $49


    sbc [hl]                                      ; $716d: $9e
    dec sp                                        ; $716e: $3b
    dec sp                                        ; $716f: $3b
    ld h, l                                       ; $7170: $65
    ld a, [c]                                     ; $7171: $f2
    ld a, [bc]                                    ; $7172: $0a
    ld c, c                                       ; $7173: $49
    jr nc, @-$33                                  ; $7174: $30 $cb

    ld a, [hl+]                                   ; $7176: $2a
    dec h                                         ; $7177: $25
    ld c, d                                       ; $7178: $4a
    sbc a                                         ; $7179: $9f
    ld a, a                                       ; $717a: $7f
    adc h                                         ; $717b: $8c
    ld l, e                                       ; $717c: $6b
    jp nc, Jump_000_1da0                          ; $717d: $d2 $a0 $1d

    sub a                                         ; $7180: $97
    ld [hl-], a                                   ; $7181: $32
    ld c, d                                       ; $7182: $4a
    sbc [hl]                                      ; $7183: $9e
    cp e                                          ; $7184: $bb
    ld h, $cd                                     ; $7185: $26 $cd
    and b                                         ; $7187: $a0
    and h                                         ; $7188: $a4
    adc c                                         ; $7189: $89
    ld l, h                                       ; $718a: $6c
    ld b, c                                       ; $718b: $41
    xor [hl]                                      ; $718c: $ae

jr_022_718d:
    xor l                                         ; $718d: $ad
    ld d, l                                       ; $718e: $55
    ld a, l                                       ; $718f: $7d
    sbc [hl]                                      ; $7190: $9e
    ld l, e                                       ; $7191: $6b
    ccf                                           ; $7192: $3f
    ld b, e                                       ; $7193: $43
    dec sp                                        ; $7194: $3b
    adc d                                         ; $7195: $8a
    ret c                                         ; $7196: $d8

    inc c                                         ; $7197: $0c
    db $fc                                        ; $7198: $fc
    cp h                                          ; $7199: $bc
    db $fc                                        ; $719a: $fc
    xor d                                         ; $719b: $aa
    sbc b                                         ; $719c: $98
    ld e, d                                       ; $719d: $5a
    ld b, a                                       ; $719e: $47
    db $eb                                        ; $719f: $eb
    sub l                                         ; $71a0: $95
    ld h, [hl]                                    ; $71a1: $66
    sub l                                         ; $71a2: $95
    jp nc, $f782                                  ; $71a3: $d2 $82 $f7

    ld e, l                                       ; $71a6: $5d
    ld a, [c]                                     ; $71a7: $f2
    sbc h                                         ; $71a8: $9c
    ld c, e                                       ; $71a9: $4b
    sbc d                                         ; $71aa: $9a
    halt                                          ; $71ab: $76
    db $fc                                        ; $71ac: $fc
    reti                                          ; $71ad: $d9


    add hl, hl                                    ; $71ae: $29
    ld l, e                                       ; $71af: $6b
    rst $38                                       ; $71b0: $ff
    and l                                         ; $71b1: $a5
    ld h, b                                       ; $71b2: $60
    ld l, c                                       ; $71b3: $69
    ld a, h                                       ; $71b4: $7c
    ld [$1ba3], a                                 ; $71b5: $ea $a3 $1b
    inc d                                         ; $71b8: $14
    ld b, a                                       ; $71b9: $47
    jr jr_022_7203                                ; $71ba: $18 $47

    dec de                                        ; $71bc: $1b
    ld e, a                                       ; $71bd: $5f
    dec bc                                        ; $71be: $0b
    ld l, c                                       ; $71bf: $69
    rst $20                                       ; $71c0: $e7
    ld de, $1842                                  ; $71c1: $11 $42 $18
    sub [hl]                                      ; $71c4: $96
    pop bc                                        ; $71c5: $c1
    sub e                                         ; $71c6: $93
    xor a                                         ; $71c7: $af
    call c, $9e70                                 ; $71c8: $dc $70 $9e
    ld l, e                                       ; $71cb: $6b
    ccf                                           ; $71cc: $3f
    db $e3                                        ; $71cd: $e3
    adc $33                                       ; $71ce: $ce $33
    ld de, $9606                                  ; $71d0: $11 $06 $96
    pop af                                        ; $71d3: $f1
    ld c, c                                       ; $71d4: $49
    db $ec                                        ; $71d5: $ec
    ld h, l                                       ; $71d6: $65
    ld a, h                                       ; $71d7: $7c
    ld d, c                                       ; $71d8: $51
    sbc a                                         ; $71d9: $9f
    sub a                                         ; $71da: $97
    dec bc                                        ; $71db: $0b
    ld l, e                                       ; $71dc: $6b
    ld h, a                                       ; $71dd: $67
    sub $77                                       ; $71de: $d6 $77
    ld h, c                                       ; $71e0: $61
    jp c, $e34e                                   ; $71e1: $da $4e $e3

    ld [$c703], sp                                ; $71e4: $08 $03 $c7
    ld h, a                                       ; $71e7: $67
    or d                                          ; $71e8: $b2
    pop af                                        ; $71e9: $f1
    add hl, hl                                    ; $71ea: $29
    ld [hl], l                                    ; $71eb: $75
    xor $4e                                       ; $71ec: $ee $4e
    ld d, $40                                     ; $71ee: $16 $40
    dec sp                                        ; $71f0: $3b
    dec h                                         ; $71f1: $25
    ld b, l                                       ; $71f2: $45
    ld l, $20                                     ; $71f3: $2e $20
    inc c                                         ; $71f5: $0c
    rst $00                                       ; $71f6: $c7
    ld a, [hl+]                                   ; $71f7: $2a
    ld hl, sp-$35                                 ; $71f8: $f8 $cb
    jp c, Jump_022_5af2                           ; $71fa: $da $f2 $5a

    rst $18                                       ; $71fd: $df
    dec b                                         ; $71fe: $05
    xor d                                         ; $71ff: $aa
    ld sp, hl                                     ; $7200: $f9
    inc d                                         ; $7201: $14
    ld h, [hl]                                    ; $7202: $66

jr_022_7203:
    dec de                                        ; $7203: $1b
    sbc d                                         ; $7204: $9a
    jp nz, Jump_000_15ba                          ; $7205: $c2 $ba $15

    cp c                                          ; $7208: $b9
    ldh [$a1], a                                  ; $7209: $e0 $a1
    ld [bc], a                                    ; $720b: $02
    jp c, $3151                                   ; $720c: $da $51 $31

    adc [hl]                                      ; $720f: $8e
    rst $38                                       ; $7210: $ff
    or c                                          ; $7211: $b1
    call c, $8185                                 ; $7212: $dc $85 $81
    dec de                                        ; $7215: $1b
    sub $74                                       ; $7216: $d6 $74
    pop bc                                        ; $7218: $c1
    rst $00                                       ; $7219: $c7
    ld [hl], d                                    ; $721a: $72
    ret nc                                        ; $721b: $d0

    db $10                                        ; $721c: $10
    and [hl]                                      ; $721d: $a6
    ld a, [c]                                     ; $721e: $f2
    xor e                                         ; $721f: $ab
    ld [hl-], a                                   ; $7220: $32
    cp h                                          ; $7221: $bc
    inc d                                         ; $7222: $14
    call z, $b874                                 ; $7223: $cc $74 $b8
    add e                                         ; $7226: $83
    inc e                                         ; $7227: $1c
    rst $38                                       ; $7228: $ff
    and e                                         ; $7229: $a3
    ld a, a                                       ; $722a: $7f
    ld [hl], $cf                                  ; $722b: $36 $cf
    add c                                         ; $722d: $81
    dec de                                        ; $722e: $1b
    sub $74                                       ; $722f: $d6 $74
    ld e, c                                       ; $7231: $59
    rst $08                                       ; $7232: $cf
    ld e, a                                       ; $7233: $5f
    ld d, c                                       ; $7234: $51
    db $eb                                        ; $7235: $eb
    rst $08                                       ; $7236: $cf
    ld [hl], e                                    ; $7237: $73
    dec e                                         ; $7238: $1d
    dec b                                         ; $7239: $05
    sbc b                                         ; $723a: $98
    rst $20                                       ; $723b: $e7
    sub h                                         ; $723c: $94
    ld e, c                                       ; $723d: $59
    sub l                                         ; $723e: $95
    xor d                                         ; $723f: $aa
    sbc a                                         ; $7240: $9f
    rst $20                                       ; $7241: $e7
    cp h                                          ; $7242: $bc
    db $fc                                        ; $7243: $fc
    ldh [$ab], a                                  ; $7244: $e0 $ab
    inc h                                         ; $7246: $24
    or [hl]                                       ; $7247: $b6
    and $55                                       ; $7248: $e6 $55
    db $10                                        ; $724a: $10
    ld b, $ad                                     ; $724b: $06 $ad
    ld a, [de]                                    ; $724d: $1a
    ret z                                         ; $724e: $c8

    ld h, l                                       ; $724f: $65
    ld e, l                                       ; $7250: $5d
    sub $b3                                       ; $7251: $d6 $b3
    xor b                                         ; $7253: $a8
    ld c, a                                       ; $7254: $4f
    push hl                                       ; $7255: $e5
    rst $10                                       ; $7256: $d7
    and h                                         ; $7257: $a4
    add hl, de                                    ; $7258: $19
    bit 1, e                                      ; $7259: $cb $4b
    pop bc                                        ; $725b: $c1
    jp z, Jump_022_77cb                           ; $725c: $ca $cb $77

    push bc                                       ; $725f: $c5
    rst $00                                       ; $7260: $c7
    ld a, [bc]                                    ; $7261: $0a
    ld b, d                                       ; $7262: $42
    ret z                                         ; $7263: $c8

    add h                                         ; $7264: $84
    ld [$f3a1], sp                                ; $7265: $08 $a1 $f3
    inc c                                         ; $7268: $0c
    ld hl, sp+$62                                 ; $7269: $f8 $62
    ld h, [hl]                                    ; $726b: $66
    db $fd                                        ; $726c: $fd
    ld d, d                                       ; $726d: $52
    dec c                                         ; $726e: $0d
    xor l                                         ; $726f: $ad
    rst $10                                       ; $7270: $d7
    sub a                                         ; $7271: $97
    xor c                                         ; $7272: $a9
    inc a                                         ; $7273: $3c
    push de                                       ; $7274: $d5
    ld a, h                                       ; $7275: $7c
    ldh [$37], a                                  ; $7276: $e0 $37
    add $c9                                       ; $7278: $c6 $c9
    jp Jump_022_54ab                              ; $727a: $c3 $ab $54


    push hl                                       ; $727d: $e5
    ld d, d                                       ; $727e: $52
    ld l, l                                       ; $727f: $6d
    and a                                         ; $7280: $a7
    call c, $a32a                                 ; $7281: $dc $2a $a3
    jp nz, $8b8e                                  ; $7284: $c2 $8e $8b

    ld a, [de]                                    ; $7287: $1a
    ld a, [hl]                                    ; $7288: $7e
    db $e4                                        ; $7289: $e4
    ld c, [hl]                                    ; $728a: $4e
    push hl                                       ; $728b: $e5
    rst $10                                       ; $728c: $d7
    ld a, h                                       ; $728d: $7c
    jp hl                                         ; $728e: $e9


    adc d                                         ; $728f: $8a
    ld bc, $7f3d                                  ; $7290: $01 $3d $7f
    halt                                          ; $7293: $76
    ld a, [de]                                    ; $7294: $1a
    ld h, d                                       ; $7295: $62
    ld c, e                                       ; $7296: $4b
    db $e3                                        ; $7297: $e3
    db $e3                                        ; $7298: $e3
    ld c, e                                       ; $7299: $4b
    xor [hl]                                      ; $729a: $ae
    db $fc                                        ; $729b: $fc
    ld l, $70                                     ; $729c: $2e $70
    and a                                         ; $729e: $a7
    call nz, $ffc6                                ; $729f: $c4 $c6 $ff
    ld [$fc94], a                                 ; $72a2: $ea $94 $fc
    cp h                                          ; $72a5: $bc
    xor b                                         ; $72a6: $a8
    rst $28                                       ; $72a7: $ef
    cp b                                          ; $72a8: $b8
    ld l, b                                       ; $72a9: $68

Jump_022_72aa:
    ld l, h                                       ; $72aa: $6c

Call_022_72ab:
    cp e                                          ; $72ab: $bb
    reti                                          ; $72ac: $d9


    add l                                         ; $72ad: $85
    dec b                                         ; $72ae: $05
    ld b, [hl]                                    ; $72af: $46
    add l                                         ; $72b0: $85
    ld e, l                                       ; $72b1: $5d
    ld a, [bc]                                    ; $72b2: $0a
    and $e5                                       ; $72b3: $e6 $e5
    rst $10                                       ; $72b5: $d7
    sub d                                         ; $72b6: $92
    ld d, d                                       ; $72b7: $52
    cp l                                          ; $72b8: $bd
    cp h                                          ; $72b9: $bc
    call nc, $2d60                                ; $72ba: $d4 $60 $2d
    sbc [hl]                                      ; $72bd: $9e
    ld [$0c21], sp                                ; $72be: $08 $21 $0c
    dec l                                         ; $72c1: $2d
    and l                                         ; $72c2: $a5
    ld [hl], b                                    ; $72c3: $70
    rst $00                                       ; $72c4: $c7
    sub d                                         ; $72c5: $92
    ld l, d                                       ; $72c6: $6a
    cp [hl]                                       ; $72c7: $be
    jr nz, @+$09                                  ; $72c8: $20 $07

    jp c, $aa5c                                   ; $72ca: $da $5c $aa

    call $fa8b                                    ; $72cd: $cd $8b $fa
    jp nc, Jump_022_62f8                          ; $72d0: $d2 $f8 $62

    ld a, [de]                                    ; $72d3: $1a
    sub $05                                       ; $72d4: $d6 $05
    inc bc                                        ; $72d6: $03
    dec a                                         ; $72d7: $3d
    ld c, e                                       ; $72d8: $4b
    xor [hl]                                      ; $72d9: $ae
    db $fd                                        ; $72da: $fd
    ld [hl], b                                    ; $72db: $70
    reti                                          ; $72dc: $d9


    jp $8b8e                                      ; $72dd: $c3 $8e $8b


    add $b6                                       ; $72e0: $c6 $b6
    sbc e                                         ; $72e2: $9b
    ld e, l                                       ; $72e3: $5d
    ld e, b                                       ; $72e4: $58
    ld h, b                                       ; $72e5: $60
    ld d, h                                       ; $72e6: $54
    ret c                                         ; $72e7: $d8

    and l                                         ; $72e8: $a5
    ld h, b                                       ; $72e9: $60
    ld e, [hl]                                    ; $72ea: $5e
    ld a, [hl]                                    ; $72eb: $7e
    dec l                                         ; $72ec: $2d
    sbc [hl]                                      ; $72ed: $9e
    db $f4                                        ; $72ee: $f4
    ld e, l                                       ; $72ef: $5d
    ld sp, $a52d                                  ; $72f0: $31 $2d $a5
    ld [hl], h                                    ; $72f3: $74

jr_022_72f4:
    ld e, c                                       ; $72f4: $59
    xor a                                         ; $72f5: $af
    cpl                                           ; $72f6: $2f
    and e                                         ; $72f7: $a3
    or a                                          ; $72f8: $b7
    cp [hl]                                       ; $72f9: $be
    xor h                                         ; $72fa: $ac
    ld c, [hl]                                    ; $72fb: $4e
    ret                                           ; $72fc: $c9


    adc a                                         ; $72fd: $8f
    cpl                                           ; $72fe: $2f
    ld e, c                                       ; $72ff: $59
    add e                                         ; $7300: $83
    push bc                                       ; $7301: $c5
    dec bc                                        ; $7302: $0b
    cp $74                                        ; $7303: $fe $74
    xor c                                         ; $7305: $a9
    ld [hl], $95                                  ; $7306: $36 $95
    inc [hl]                                      ; $7308: $34
    call nz, $5e56                                ; $7309: $c4 $56 $5e
    ld e, $ad                                     ; $730c: $1e $ad
    ld e, e                                       ; $730e: $5b
    add [hl]                                      ; $730f: $86
    ccf                                           ; $7310: $3f
    and l                                         ; $7311: $a5
    jp c, Jump_022_635c                           ; $7312: $da $5c $63

    ld a, l                                       ; $7315: $7d
    sbc [hl]                                      ; $7316: $9e
    dec bc                                        ; $7317: $0b
    ld a, a                                       ; $7318: $7f
    ld d, c                                       ; $7319: $51
    db $fd                                        ; $731a: $fd
    dec b                                         ; $731b: $05
    ld h, c                                       ; $731c: $61
    dec a                                         ; $731d: $3d
    ld c, e                                       ; $731e: $4b
    inc sp                                        ; $731f: $33
    sub [hl]                                      ; $7320: $96
    ld l, e                                       ; $7321: $6b
    jp nc, $cbcc                                  ; $7322: $d2 $cc $cb

    and l                                         ; $7325: $a5
    ld a, [$355a]                                 ; $7326: $fa $5a $35
    sub b                                         ; $7329: $90
    set 0, [hl]                                   ; $732a: $cb $c6
    dec hl                                        ; $732c: $2b
    inc l                                         ; $732d: $2c
    xor l                                         ; $732e: $ad
    cpl                                           ; $732f: $2f
    cp e                                          ; $7330: $bb
    inc [hl]                                      ; $7331: $34
    cpl                                           ; $7332: $2f
    ccf                                           ; $7333: $3f
    ld h, $1a                                     ; $7334: $26 $1a
    inc h                                         ; $7336: $24
    dec c                                         ; $7337: $0d
    cp [hl]                                       ; $7338: $be
    ld a, [c]                                     ; $7339: $f2
    sbc e                                         ; $733a: $9b
    or h                                          ; $733b: $b4
    or h                                          ; $733c: $b4
    rst $20                                       ; $733d: $e7
    push hl                                       ; $733e: $e5
    rla                                           ; $733f: $17
    ld l, a                                       ; $7340: $6f
    ld e, e                                       ; $7341: $5b
    ld d, h                                       ; $7342: $54
    sbc d                                         ; $7343: $9a
    xor [hl]                                      ; $7344: $ae
    jr jr_022_72f4                                ; $7345: $18 $ad

    ccf                                           ; $7347: $3f
    rst $08                                       ; $7348: $cf
    ret z                                         ; $7349: $c8

    ld d, $fe                                     ; $734a: $16 $fe
    jp c, $a76f                                   ; $734c: $da $6f $a7

    db $fc                                        ; $734f: $fc
    cp h                                          ; $7350: $bc
    xor b                                         ; $7351: $a8
    xor a                                         ; $7352: $af
    ld a, h                                       ; $7353: $7c
    dec c                                         ; $7354: $0d
    and [hl]                                      ; $7355: $a6
    sub c                                         ; $7356: $91
    rst $10                                       ; $7357: $d7
    ld b, $c6                                     ; $7358: $06 $c6
    dec hl                                        ; $735a: $2b
    ld sp, hl                                     ; $735b: $f9
    or e                                          ; $735c: $b3
    jp hl                                         ; $735d: $e9


    sbc b                                         ; $735e: $98
    ld l, b                                       ; $735f: $68
    sub b                                         ; $7360: $90
    add h                                         ; $7361: $84
    jr nc, jr_022_7391                            ; $7362: $30 $2d

    and l                                         ; $7364: $a5
    ld [hl], h                                    ; $7365: $74
    reti                                          ; $7366: $d9


Jump_022_7367:
    ret                                           ; $7367: $c9


    ld a, [de]                                    ; $7368: $1a
    db $ed                                        ; $7369: $ed
    ld l, h                                       ; $736a: $6c
    ld l, d                                       ; $736b: $6a
    or b                                          ; $736c: $b0
    ld a, b                                       ; $736d: $78
    pop bc                                        ; $736e: $c1
    sbc a                                         ; $736f: $9f
    ld l, $05                                     ; $7370: $2e $05
    ld e, l                                       ; $7372: $5d
    halt                                          ; $7373: $76
    jp nc, $0d7b                                  ; $7374: $d2 $7b $0d

    ld d, $e4                                     ; $7377: $16 $e4
    inc a                                         ; $7379: $3c
    rst $10                                       ; $737a: $d7
    xor d                                         ; $737b: $aa
    add c                                         ; $737c: $81
    ld e, h                                       ; $737d: $5c
    ld d, [hl]                                    ; $737e: $56
    add e                                         ; $737f: $83
    ld d, c                                       ; $7380: $51
    ld a, [c]                                     ; $7381: $f2
    ld [$ad03], sp                                ; $7382: $08 $03 $ad
    ld h, c                                       ; $7385: $61
    adc b                                         ; $7386: $88
    db $10                                        ; $7387: $10
    jp nz, $f147                                  ; $7388: $c2 $47 $f1

    dec [hl]                                      ; $738b: $35
    cp c                                          ; $738c: $b9
    ld b, c                                       ; $738d: $41
    ld [hl], c                                    ; $738e: $71
    xor $fc                                       ; $738f: $ee $fc

jr_022_7391:
    ld h, l                                       ; $7391: $65
    ld c, d                                       ; $7392: $4a
    ret nz                                        ; $7393: $c0

    cp a                                          ; $7394: $bf
    xor h                                         ; $7395: $ac
    ld c, c                                       ; $7396: $49
    inc hl                                        ; $7397: $23
    dec sp                                        ; $7398: $3b
    rst $18                                       ; $7399: $df
    inc a                                         ; $739a: $3c
    ld hl, sp+$4d                                 ; $739b: $f8 $4d
    ld [c], a                                     ; $739d: $e2
    ld c, $32                                     ; $739e: $0e $32
    db $fc                                        ; $73a0: $fc
    and l                                         ; $73a1: $a5
    dec a                                         ; $73a2: $3d
    cpl                                           ; $73a3: $2f
    ccf                                           ; $73a4: $3f
    ld a, a                                       ; $73a5: $7f
    xor l                                         ; $73a6: $ad
    jp z, $ac0b                                   ; $73a7: $ca $0b $ac

    ld d, d                                       ; $73aa: $52
    ldh a, [$3d]                                  ; $73ab: $f0 $3d
    ld d, l                                       ; $73ad: $55
    ld b, l                                       ; $73ae: $45
    ret                                           ; $73af: $c9


    jp $8727                                      ; $73b0: $c3 $27 $87


    ld a, c                                       ; $73b3: $79
    ld l, $30                                     ; $73b4: $2e $30
    ld a, [hl+]                                   ; $73b6: $2a
    ld l, h                                       ; $73b7: $6c
    ld e, [hl]                                    ; $73b8: $5e
    ld a, [hl]                                    ; $73b9: $7e
    ldh [rOBP1], a                                ; $73ba: $e0 $49
    cp a                                          ; $73bc: $bf
    cp [hl]                                       ; $73bd: $be
    ld [hl], a                                    ; $73be: $77
    ld [hl], d                                    ; $73bf: $72
    ld [hl], l                                    ; $73c0: $75
    ld a, h                                       ; $73c1: $7c
    sub d                                         ; $73c2: $92
    ld b, $1a                                     ; $73c3: $06 $1a
    inc hl                                        ; $73c5: $23
    ld [hl], a                                    ; $73c6: $77
    rst $00                                       ; $73c7: $c7
    push bc                                       ; $73c8: $c5
    db $eb                                        ; $73c9: $eb
    db $fc                                        ; $73ca: $fc
    xor l                                         ; $73cb: $ad

Jump_022_73cc:
    ld [$b5dc], a                                 ; $73cc: $ea $dc $b5
    ld [hl], h                                    ; $73cf: $74
    inc h                                         ; $73d0: $24
    adc l                                         ; $73d1: $8d
    ld [hl], e                                    ; $73d2: $73
    ld [hl], a                                    ; $73d3: $77
    sbc d                                         ; $73d4: $9a
    cp c                                          ; $73d5: $b9
    ld [hl+], a                                   ; $73d6: $22
    rra                                           ; $73d7: $1f
    inc hl                                        ; $73d8: $23
    ld [hl], a                                    ; $73d9: $77
    ld c, d                                       ; $73da: $4a
    ld l, h                                       ; $73db: $6c
    dec l                                         ; $73dc: $2d
    and h                                         ; $73dd: $a4
    sbc l                                         ; $73de: $9d
    ld b, a                                       ; $73df: $47
    jr jr_022_740f                                ; $73e0: $18 $2d

    and h                                         ; $73e2: $a4
    sbc l                                         ; $73e3: $9d
    rst $28                                       ; $73e4: $ef
    add d                                         ; $73e5: $82
    ld bc, $a42d                                  ; $73e6: $01 $2d $a4
    sbc l                                         ; $73e9: $9d
    ld e, a                                       ; $73ea: $5f
    ld sp, hl                                     ; $73eb: $f9
    ret c                                         ; $73ec: $d8

    ld a, c                                       ; $73ed: $79
    or [hl]                                       ; $73ee: $b6
    adc [hl]                                      ; $73ef: $8e
    and h                                         ; $73f0: $a4
    ld a, a                                       ; $73f1: $7f
    push hl                                       ; $73f2: $e5
    di                                            ; $73f3: $f3
    ld a, [c]                                     ; $73f4: $f2
    inc bc                                        ; $73f5: $03

jr_022_73f6:
    ld c, a                                       ; $73f6: $4f
    ld a, d                                       ; $73f7: $7a
    xor $de                                       ; $73f8: $ee $de
    ld a, [$2f34]                                 ; $73fa: $fa $34 $2f
    ld l, c                                       ; $73fd: $69
    add d                                         ; $73fe: $82
    or d                                          ; $73ff: $b2
    and $65                                       ; $7400: $e6 $65
    ld e, [hl]                                    ; $7402: $5e
    ld l, $d5                                     ; $7403: $2e $d5
    ld d, a                                       ; $7405: $57
    cp [hl]                                       ; $7406: $be
    ld b, $0b                                     ; $7407: $06 $0b
    ld a, [c]                                     ; $7409: $f2
    ld d, d                                       ; $740a: $52
    jr nc, jr_022_748c                            ; $740b: $30 $7f

    sbc c                                         ; $740d: $99
    ld c, e                                       ; $740e: $4b

jr_022_740f:
    inc sp                                        ; $740f: $33
    ld a, a                                       ; $7410: $7f
    add hl, de                                    ; $7411: $19
    ld hl, sp+$6b                                 ; $7412: $f8 $6b
    call c, $8475                                 ; $7414: $dc $75 $84
    ld bc, $a42d                                  ; $7417: $01 $2d $a4
    sbc l                                         ; $741a: $9d
    rra                                           ; $741b: $1f
    sbc a                                         ; $741c: $9f
    ld d, h                                       ; $741d: $54
    di                                            ; $741e: $f3
    cp c                                          ; $741f: $b9
    inc [hl]                                      ; $7420: $34
    inc sp                                        ; $7421: $33
    db $e4                                        ; $7422: $e4
    scf                                           ; $7423: $37
    xor [hl]                                      ; $7424: $ae
    db $fc                                        ; $7425: $fc
    ld [c], a                                     ; $7426: $e2
    xor e                                         ; $7427: $ab
    db $10                                        ; $7428: $10
    xor h                                         ; $7429: $ac

jr_022_742a:
    inc h                                         ; $742a: $24
    ccf                                           ; $742b: $3f
    rst $08                                       ; $742c: $cf
    dec b                                         ; $742d: $05
    rst $28                                       ; $742e: $ef
    db $eb                                        ; $742f: $eb
    jr z, jr_022_742a                             ; $7430: $28 $f8

    adc [hl]                                      ; $7432: $8e
    adc e                                         ; $7433: $8b
    add $b6                                       ; $7434: $c6 $b6
    dec de                                        ; $7436: $1b
    add h                                         ; $7437: $84
    ld bc, $4b3d                                  ; $7438: $01 $3d $4b
    or e                                          ; $743b: $b3
    dec bc                                        ; $743c: $0b
    cp e                                          ; $743d: $bb
    ld a, $c8                                     ; $743e: $3e $c8
    sub l                                         ; $7440: $95
    db $f4                                        ; $7441: $f4
    ld e, l                                       ; $7442: $5d
    ld e, d                                       ; $7443: $5a
    ld a, c                                       ; $7444: $79
    ld sp, hl                                     ; $7445: $f9
    xor [hl]                                      ; $7446: $ae
    jr jr_022_73f6                                ; $7447: $18 $ad

    ld a, [de]                                    ; $7449: $1a
    ret z                                         ; $744a: $c8

    ld h, l                                       ; $744b: $65
    ld [$be21], sp                                ; $744c: $08 $21 $be
    xor b                                         ; $744f: $a8
    rst $10                                       ; $7450: $d7
    ld h, b                                       ; $7451: $60
    ld e, [hl]                                    ; $7452: $5e
    ld l, $74                                     ; $7453: $2e $74
    push bc                                       ; $7455: $c5
    dec a                                         ; $7456: $3d
    adc d                                         ; $7457: $8a
    ld a, d                                       ; $7458: $7a
    rst $10                                       ; $7459: $d7
    dec e                                         ; $745a: $1d
    dec hl                                        ; $745b: $2b
    call c, $1099                                 ; $745c: $dc $99 $10
    ld hl, $0184                                  ; $745f: $21 $84 $01
    ld d, $af                                     ; $7462: $16 $af
    pop bc                                        ; $7464: $c1
    ld [hl], h                                    ; $7465: $74
    ld c, h                                       ; $7466: $4c
    inc [hl]                                      ; $7467: $34
    ld c, b                                       ; $7468: $48
    xor d                                         ; $7469: $aa
    pop bc                                        ; $746a: $c1
    ld a, $08                                     ; $746b: $3e $08
    cp d                                          ; $746d: $ba
    xor h                                         ; $746e: $ac
    ld h, a                                       ; $746f: $67
    ld a, c                                       ; $7470: $79
    ld sp, hl                                     ; $7471: $f9
    or c                                          ; $7472: $b1
    set 2, [hl]                                   ; $7473: $cb $d6
    and h                                         ; $7475: $a4
    ld e, c                                       ; $7476: $59
    ldh a, [$be]                                  ; $7477: $f0 $be
    db $eb                                        ; $7479: $eb
    ld e, l                                       ; $747a: $5d
    ld sp, $f196                                  ; $747b: $31 $96 $f1
    ld c, c                                       ; $747e: $49
    cp e                                          ; $747f: $bb
    ld a, $5b                                     ; $7480: $3e $5b
    ld [hl-], a                                   ; $7482: $32
    sbc h                                         ; $7483: $9c
    ld c, $5c                                     ; $7484: $0e $5c
    sub h                                         ; $7486: $94
    add d                                         ; $7487: $82
    rla                                           ; $7488: $17
    xor $f8                                       ; $7489: $ee $f8
    sub d                                         ; $748b: $92

jr_022_748c:
    add e                                         ; $748c: $83
    rst $38                                       ; $748d: $ff
    ldh a, [$d9]                                  ; $748e: $f0 $d9
    add d                                         ; $7490: $82
    xor b                                         ; $7491: $a8
    ld l, h                                       ; $7492: $6c
    sbc [hl]                                      ; $7493: $9e
    ld l, e                                       ; $7494: $6b
    rst $38                                       ; $7495: $ff
    db $e4                                        ; $7496: $e4
    or d                                          ; $7497: $b2
    and l                                         ; $7498: $a5
    cp l                                          ; $7499: $bd
    db $eb                                        ; $749a: $eb
    ld l, b                                       ; $749b: $68
    sub [hl]                                      ; $749c: $96
    sbc d                                         ; $749d: $9a
    push af                                       ; $749e: $f5
    rst $10                                       ; $749f: $d7
    cp $a7                                        ; $74a0: $fe $a7
    ret                                           ; $74a2: $c9


    dec hl                                        ; $74a3: $2b
    cp e                                          ; $74a4: $bb
    ld d, h                                       ; $74a5: $54
    sbc e                                         ; $74a6: $9b
    jp hl                                         ; $74a7: $e9


    inc l                                         ; $74a8: $2c
    ld l, c                                       ; $74a9: $69
    xor [hl]                                      ; $74aa: $ae
    push af                                       ; $74ab: $f5
    ld c, e                                       ; $74ac: $4b
    or l                                          ; $74ad: $b5
    ld d, l                                       ; $74ae: $55
    ld a, [hl+]                                   ; $74af: $2a
    cp a                                          ; $74b0: $bf
    or h                                          ; $74b1: $b4
    ld [hl], a                                    ; $74b2: $77
    dec e                                         ; $74b3: $1d
    db $ed                                        ; $74b4: $ed
    sub h                                         ; $74b5: $94
    inc d                                         ; $74b6: $14
    cp $83                                        ; $74b7: $fe $83
    xor e                                         ; $74b9: $ab
    or h                                          ; $74ba: $b4
    db $d3                                        ; $74bb: $d3
    cpl                                           ; $74bc: $2f
    dec bc                                        ; $74bd: $0b
    cp [hl]                                       ; $74be: $be
    xor l                                         ; $74bf: $ad
    ld d, l                                       ; $74c0: $55
    sbc l                                         ; $74c1: $9d
    dec sp                                        ; $74c2: $3b
    db $eb                                        ; $74c3: $eb
    ld c, e                                       ; $74c4: $4b
    inc sp                                        ; $74c5: $33
    ld d, c                                       ; $74c6: $51
    ld a, c                                       ; $74c7: $79
    add h                                         ; $74c8: $84
    ld bc, $ca3d                                  ; $74c9: $01 $3d $ca
    rst $28                                       ; $74cc: $ef
    add e                                         ; $74cd: $83
    ld h, b                                       ; $74ce: $60

jr_022_74cf:
    rla                                           ; $74cf: $17
    ld d, [hl]                                    ; $74d0: $56
    call nc, Call_022_72ab                        ; $74d1: $d4 $ab $72
    add hl, hl                                    ; $74d4: $29
    add sp, -$7e                                  ; $74d5: $e8 $82
    ld bc, $7996                                  ; $74d7: $01 $96 $79
    cp c                                          ; $74da: $b9
    ld d, h                                       ; $74db: $54
    sbc a                                         ; $74dc: $9f
    ld h, l                                       ; $74dd: $65
    db $fc                                        ; $74de: $fc
    adc l                                         ; $74df: $8d
    ld [hl], c                                    ; $74e0: $71
    and h                                         ; $74e1: $a4
    pop hl                                        ; $74e2: $e1
    xor a                                         ; $74e3: $af
    call c, $a770                                 ; $74e4: $dc $70 $a7
    and h                                         ; $74e7: $a4
    or h                                          ; $74e8: $b4
    ld e, a                                       ; $74e9: $5f
    inc e                                         ; $74ea: $1c
    ld h, c                                       ; $74eb: $61
    and a                                         ; $74ec: $a7
    and h                                         ; $74ed: $a4
    or h                                          ; $74ee: $b4
    ld e, a                                       ; $74ef: $5f
    cp h                                          ; $74f0: $bc
    dec hl                                        ; $74f1: $2b
    ld b, $3d                                     ; $74f2: $06 $3d
    ld a, a                                       ; $74f4: $7f
    ld b, l                                       ; $74f5: $45
    xor l                                         ; $74f6: $ad
    ccf                                           ; $74f7: $3f
    rst $08                                       ; $74f8: $cf
    or l                                          ; $74f9: $b5
    ld a, a                                       ; $74fa: $7f
    sub l                                         ; $74fb: $95
    jp z, $26db                                   ; $74fc: $ca $db $26

    ld [hl], d                                    ; $74ff: $72
    rst $10                                       ; $7500: $d7
    xor d                                         ; $7501: $aa
    add c                                         ; $7502: $81
    ld e, h                                       ; $7503: $5c
    add [hl]                                      ; $7504: $86
    ld h, [hl]                                    ; $7505: $66
    sbc c                                         ; $7506: $99
    sub a                                         ; $7507: $97
    ld c, e                                       ; $7508: $4b
    push af                                       ; $7509: $f5
    sbc l                                         ; $750a: $9d
    xor h                                         ; $750b: $ac
    pop de                                        ; $750c: $d1
    adc $66                                       ; $750d: $ce $66
    pop hl                                        ; $750f: $e1
    dec c                                         ; $7510: $0d
    adc d                                         ; $7511: $8a
    xor a                                         ; $7512: $af
    ld c, [hl]                                    ; $7513: $4e
    ret                                           ; $7514: $c9


    adc a                                         ; $7515: $8f
    cpl                                           ; $7516: $2f
    ld [$d26b], a                                 ; $7517: $ea $6b $d2
    call nc, $c7e4                                ; $751a: $d4 $e4 $c7
    ld a, [c]                                     ; $751d: $f2
    ld d, d                                       ; $751e: $52
    add b                                         ; $751f: $80
    jr nc, jr_022_74cf                            ; $7520: $30 $ad

    ccf                                           ; $7522: $3f
    adc l                                         ; $7523: $8d
    ld h, c                                       ; $7524: $61
    add d                                         ; $7525: $82
    xor a                                         ; $7526: $af
    ld a, l                                       ; $7527: $7d
    ld a, l                                       ; $7528: $7d
    ld e, [hl]                                    ; $7529: $5e
    inc h                                         ; $752a: $24
    ld c, l                                       ; $752b: $4d
    ld d, b                                       ; $752c: $50
    ld d, $36                                     ; $752d: $16 $36
    ld l, e                                       ; $752f: $6b
    ld h, a                                       ; $7530: $67
    ld a, [$33ce]                                 ; $7531: $fa $ce $33
    ldh [$a3], a                                  ; $7534: $e0 $a3
    db $e4                                        ; $7536: $e4
    pop de                                        ; $7537: $d1
    ld a, d                                       ; $7538: $7a
    sub h                                         ; $7539: $94
    ld e, a                                       ; $753a: $5f
    daa                                           ; $753b: $27
    ld d, e                                       ; $753c: $53
    ld d, $6f                                     ; $753d: $16 $6f
    dec l                                         ; $753f: $2d
    adc $fe                                       ; $7540: $ce $fe
    jr jr_022_75b9                                ; $7542: $18 $75

    and c                                         ; $7544: $a1
    ld bc, $fb5f                                  ; $7545: $01 $5f $fb
    ld d, a                                       ; $7548: $57
    inc c                                         ; $7549: $0c
    dec b                                         ; $754a: $05
    jp nc, $0c20                                  ; $754b: $d2 $20 $0c

    dec a                                         ; $754e: $3d
    adc e                                         ; $754f: $8b
    ld a, [$3e58]                                 ; $7550: $fa $58 $3e
    xor h                                         ; $7553: $ac
    db $fc                                        ; $7554: $fc
    ld [c], a                                     ; $7555: $e2
    xor l                                         ; $7556: $ad
    rst $38                                       ; $7557: $ff
    inc a                                         ; $7558: $3c
    rst $30                                       ; $7559: $f7
    ld [$d75d], a                                 ; $755a: $ea $5d $d7
    ld [de], a                                    ; $755d: $12
    dec de                                        ; $755e: $1b
    cpl                                           ; $755f: $2f
    cpl                                           ; $7560: $2f
    sub a                                         ; $7561: $97
    add b                                         ; $7562: $80
    dec sp                                        ; $7563: $3b
    bit 1, d                                      ; $7564: $cb $4a
    halt                                          ; $7566: $76
    ld e, $61                                     ; $7567: $1e $61
    and a                                         ; $7569: $a7
    ld l, b                                       ; $756a: $68
    pop hl                                        ; $756b: $e1
    adc $cb                                       ; $756c: $ce $cb
    scf                                           ; $756e: $37
    dec [hl]                                      ; $756f: $35
    or [hl]                                       ; $7570: $b6
    ld d, b                                       ; $7571: $50
    db $eb                                        ; $7572: $eb
    cp a                                          ; $7573: $bf
    ld [hl], d                                    ; $7574: $72
    jp $adc1                                      ; $7575: $c3 $c1 $ad


    ld [$3d68], a                                 ; $7578: $ea $68 $3d
    jp z, $9daf                                   ; $757b: $ca $af $9d

    ld e, c                                       ; $757e: $59
    add a                                         ; $757f: $87
    ld e, c                                       ; $7580: $59
    ld h, $af                                     ; $7581: $26 $af
    ld l, h                                       ; $7583: $6c
    and b                                         ; $7584: $a0
    call Call_000_2fca                            ; $7585: $cd $ca $2f
    sbc $fa                                       ; $7588: $de $fa
    jp Jump_022_72aa                              ; $758a: $c3 $aa $72


    xor e                                         ; $758d: $ab
    ld a, [$a013]                                 ; $758e: $fa $13 $a0
    ld [hl], l                                    ; $7591: $75
    ld c, e                                       ; $7592: $4b
    inc de                                        ; $7593: $13
    reti                                          ; $7594: $d9


    sbc d                                         ; $7595: $9a
    cpl                                           ; $7596: $2f
    dec bc                                        ; $7597: $0b
    ld [hl], d                                    ; $7598: $72
    ld l, c                                       ; $7599: $69
    ld a, h                                       ; $759a: $7c
    ld c, d                                       ; $759b: $4a
    ld l, h                                       ; $759c: $6c
    or $7b                                        ; $759d: $f6 $7b
    ld d, l                                       ; $759f: $55
    ld d, $fe                                     ; $75a0: $16 $fe
    ld c, $5a                                     ; $75a2: $0e $5a
    jp c, $f2f3                                   ; $75a4: $da $f3 $f2

    ld h, c                                       ; $75a7: $61
    rst $10                                       ; $75a8: $d7
    or l                                          ; $75a9: $b5
    ld h, h                                       ; $75aa: $64
    ld hl, sp+$7e                                 ; $75ab: $f8 $7e
    jp Jump_022_7987                              ; $75ad: $c3 $87 $79


    ld a, c                                       ; $75b0: $79
    ld sp, hl                                     ; $75b1: $f9
    ld a, [de]                                    ; $75b2: $1a
    adc h                                         ; $75b3: $8c
    cp a                                          ; $75b4: $bf
    sub c                                         ; $75b5: $91
    dec l                                         ; $75b6: $2d
    jp hl                                         ; $75b7: $e9


    ld h, c                                       ; $75b8: $61

jr_022_75b9:
    ld c, c                                       ; $75b9: $49
    di                                            ; $75ba: $f3
    ld a, [c]                                     ; $75bb: $f2
    dec bc                                        ; $75bc: $0b
    inc h                                         ; $75bd: $24
    dec c                                         ; $75be: $0d
    ld sp, $1840                                  ; $75bf: $31 $40 $18
    dec l                                         ; $75c2: $2d
    ld b, [hl]                                    ; $75c3: $46
    ld e, $ad                                     ; $75c4: $1e $ad
    dec [hl]                                      ; $75c6: $35
    ld sp, hl                                     ; $75c7: $f9
    dec d                                         ; $75c8: $15
    dec d                                         ; $75c9: $15
    or [hl]                                       ; $75ca: $b6
    ld a, [hl+]                                   ; $75cb: $2a
    ld c, l                                       ; $75cc: $4d
    ld h, h                                       ; $75cd: $64
    xor e                                         ; $75ce: $ab
    call nc, Call_022_72ab                        ; $75cf: $d4 $ab $72
    add hl, hl                                    ; $75d2: $29
    ld e, b                                       ; $75d3: $58
    ld d, l                                       ; $75d4: $55
    ld l, [hl]                                    ; $75d5: $6e
    ld d, l                                       ; $75d6: $55
    ld a, a                                       ; $75d7: $7f
    add d                                         ; $75d8: $82
    or l                                          ; $75d9: $b5
    cp a                                          ; $75da: $bf
    dec hl                                        ; $75db: $2b
    ld b, $ad                                     ; $75dc: $06 $ad
    cpl                                           ; $75de: $2f
    ccf                                           ; $75df: $3f
    sub l                                         ; $75e0: $95
    sbc a                                         ; $75e1: $9f
    sub a                                         ; $75e2: $97
    ld e, a                                       ; $75e3: $5f
    ld d, l                                       ; $75e4: $55
    ld l, [hl]                                    ; $75e5: $6e
    ld d, l                                       ; $75e6: $55
    ld a, a                                       ; $75e7: $7f
    ld [bc], a                                    ; $75e8: $02
    xor $5a                                       ; $75e9: $ee $5a
    dec [hl]                                      ; $75eb: $35
    sub b                                         ; $75ec: $90
    rl b                                          ; $75ed: $cb $10
    ld b, $3d                                     ; $75ef: $06 $3d
    adc d                                         ; $75f1: $8a
    ld d, d                                       ; $75f2: $52
    dec e                                         ; $75f3: $1d

jr_022_75f4:
    cp b                                          ; $75f4: $b8
    ld l, e                                       ; $75f5: $6b
    ld d, l                                       ; $75f6: $55
    sub c                                         ; $75f7: $91
    ld b, $ed                                     ; $75f8: $06 $ed
    and h                                         ; $75fa: $a4
    db $eb                                        ; $75fb: $eb
    ld e, $7f                                     ; $75fc: $1e $7f
    and a                                         ; $75fe: $a7
    and h                                         ; $75ff: $a4
    or h                                          ; $7600: $b4
    ld e, a                                       ; $7601: $5f
    ld a, h                                       ; $7602: $7c
    cp h                                          ; $7603: $bc
    jp nz, Jump_022_656c                          ; $7604: $c2 $6c $65

    sub a                                         ; $7607: $97
    add d                                         ; $7608: $82
    add hl, hl                                    ; $7609: $29
    xor a                                         ; $760a: $af
    call Call_022_473c                            ; $760b: $cd $3c $47
    jp hl                                         ; $760e: $e9


    push hl                                       ; $760f: $e5
    ld d, d                                       ; $7610: $52
    add b                                         ; $7611: $80
    jr nc, @-$51                                  ; $7612: $30 $ad

    ld a, [de]                                    ; $7614: $1a
    ret z                                         ; $7615: $c8

    ld h, l                                       ; $7616: $65

jr_022_7617:
    call c, $af95                                 ; $7617: $dc $95 $af
    pop bc                                        ; $761a: $c1
    ld [bc], a                                    ; $761b: $02
    ld c, c                                       ; $761c: $49

jr_022_761d:
    sbc [hl]                                      ; $761d: $9e
    halt                                          ; $761e: $76
    ld l, c                                       ; $761f: $69
    ld e, [hl]                                    ; $7620: $5e
    ld a, [hl]                                    ; $7621: $7e
    ld d, b                                       ; $7622: $50
    ld d, d                                       ; $7623: $52
    ld a, h                                       ; $7624: $7c
    ld a, h                                       ; $7625: $7c
    cp c                                          ; $7626: $b9
    pop af                                        ; $7627: $f1
    ld h, a                                       ; $7628: $67
    add hl, de                                    ; $7629: $19
    xor a                                         ; $762a: $af
    or b                                          ; $762b: $b0
    jr nz, jr_022_7617                            ; $762c: $20 $e9

    cp e                                          ; $762e: $bb
    call z, $d342                                 ; $762f: $cc $42 $d3
    pop af                                        ; $7632: $f1
    rst $38                                       ; $7633: $ff
    push af                                       ; $7634: $f5
    sub l                                         ; $7635: $95
    xor a                                         ; $7636: $af
    push bc                                       ; $7637: $c5
    cp b                                          ; $7638: $b8
    or $4f                                        ; $7639: $f6 $4f
    ld h, c                                       ; $763b: $61
    db $ed                                        ; $763c: $ed
    dec de                                        ; $763d: $1b
    ld c, h                                       ; $763e: $4c
    ld h, c                                       ; $763f: $61
    ld c, l                                       ; $7640: $4d
    ld a, [de]                                    ; $7641: $1a
    ld e, c                                       ; $7642: $59
    ld sp, $768e                                  ; $7643: $31 $8e $76
    or d                                          ; $7646: $b2
    ld b, [hl]                                    ; $7647: $46
    dec sp                                        ; $7648: $3b
    sbc e                                         ; $7649: $9b
    ld d, l                                       ; $764a: $55
    ld l, c                                       ; $764b: $69
    ld [hl+], a                                   ; $764c: $22
    db $db                                        ; $764d: $db
    ld [hl], e                                    ; $764e: $73
    add sp, $24                                   ; $764f: $e8 $24
    db $fc                                        ; $7651: $fc
    sbc d                                         ; $7652: $9a
    inc [hl]                                      ; $7653: $34
    ld d, e                                       ; $7654: $53
    sbc a                                         ; $7655: $9f
    ld d, d                                       ; $7656: $52
    or e                                          ; $7657: $b3
    jr nc, jr_022_761d                            ; $7658: $30 $c3

    daa                                           ; $765a: $27
    ld b, a                                       ; $765b: $47
    jr jr_022_75f4                                ; $765c: $18 $96

    push de                                       ; $765e: $d5
    add hl, hl                                    ; $765f: $29
    ld sp, hl                                     ; $7660: $f9
    ld e, c                                       ; $7661: $59
    ld d, [hl]                                    ; $7662: $56
    add hl, hl                                    ; $7663: $29
    push de                                       ; $7664: $d5
    ld a, h                                       ; $7665: $7c
    push af                                       ; $7666: $f5
    rst $38                                       ; $7667: $ff
    adc $ca                                       ; $7668: $ce $ca
    dec c                                         ; $766a: $0d
    ld h, a                                       ; $766b: $67
    and a                                         ; $766c: $a7
    cp h                                          ; $766d: $bc
    push af                                       ; $766e: $f5
    add l                                         ; $766f: $85
    cp e                                          ; $7670: $bb
    or [hl]                                       ; $7671: $b6
    pop af                                        ; $7672: $f1
    ld e, c                                       ; $7673: $59

Call_022_7674:
    ld d, [hl]                                    ; $7674: $56
    add hl, hl                                    ; $7675: $29
    push de                                       ; $7676: $d5
    ld a, h                                       ; $7677: $7c
    ld l, [hl]                                    ; $7678: $6e
    add h                                         ; $7679: $84
    ld d, [hl]                                    ; $767a: $56
    ld l, [hl]                                    ; $767b: $6e
    cp b                                          ; $767c: $b8
    sbc b                                         ; $767d: $98
    add hl, bc                                    ; $767e: $09
    cp a                                          ; $767f: $bf
    and h                                         ; $7680: $a4
    sub l                                         ; $7681: $95
    dec bc                                        ; $7682: $0b
    ld c, e                                       ; $7683: $4b
    sbc [hl]                                      ; $7684: $9e
    cp b                                          ; $7685: $b8
    ei                                            ; $7686: $fb
    db $eb                                        ; $7687: $eb
    push hl                                       ; $7688: $e5
    dec b                                         ; $7689: $05
    ld h, c                                       ; $768a: $61
    daa                                           ; $768b: $27
    scf                                           ; $768c: $37
    ld l, e                                       ; $768d: $6b
    ld c, e                                       ; $768e: $4b
    ld a, d                                       ; $768f: $7a
    ld a, c                                       ; $7690: $79
    ld e, c                                       ; $7691: $59
    or a                                          ; $7692: $b7
    and d                                         ; $7693: $a2
    ld [de], a                                    ; $7694: $12
    rst $28                                       ; $7695: $ef
    rst $28                                       ; $7696: $ef
    jp nz, Jump_022_5e58                          ; $7697: $c2 $58 $5e

    ld a, [bc]                                    ; $769a: $0a
    add $44                                       ; $769b: $c6 $44
    add e                                         ; $769d: $83
    and h                                         ; $769e: $a4
    ret                                           ; $769f: $c9


    jp Jump_022_54ab                              ; $76a0: $c3 $ab $54


    ld h, l                                       ; $76a3: $65
    sub a                                         ; $76a4: $97
    halt                                          ; $76a5: $76
    ld a, d                                       ; $76a6: $7a
    add [hl]                                      ; $76a7: $86
    ld c, d                                       ; $76a8: $4a
    ld d, a                                       ; $76a9: $57
    pop de                                        ; $76aa: $d1
    ld c, [hl]                                    ; $76ab: $4e
    sub $a6                                       ; $76ac: $d6 $a6
    db $fd                                        ; $76ae: $fd
    dec hl                                        ; $76af: $2b
    cp a                                          ; $76b0: $bf
    ld c, d                                       ; $76b1: $4a
    ld l, c                                       ; $76b2: $69
    or $25                                        ; $76b3: $f6 $25
    ld [hl], $5d                                  ; $76b5: $36 $5d
    daa                                           ; $76b7: $27
    ld l, d                                       ; $76b8: $6a
    push af                                       ; $76b9: $f5
    or e                                          ; $76ba: $b3
    ld d, e                                       ; $76bb: $53
    ld d, [hl]                                    ; $76bc: $56
    ld l, [hl]                                    ; $76bd: $6e
    adc b                                         ; $76be: $88
    jr nc, @+$29                                  ; $76bf: $30 $27

    cp l                                          ; $76c1: $bd
    rst $10                                       ; $76c2: $d7
    ld h, b                                       ; $76c3: $60
    ldh a, [$c4]                                  ; $76c4: $f0 $c4
    sub $fa                                       ; $76c6: $d6 $fa
    adc h                                         ; $76c8: $8c
    cp a                                          ; $76c9: $bf
    pop bc                                        ; $76ca: $c1
    inc a                                         ; $76cb: $3c
    ld d, a                                       ; $76cc: $57
    ld l, [hl]                                    ; $76cd: $6e

jr_022_76ce:
    jr c, jr_022_76ce                             ; $76ce: $38 $fe

    ld a, d                                       ; $76d0: $7a
    sbc c                                         ; $76d1: $99
    adc [hl]                                      ; $76d2: $8e
    jp nc, $ad1f                                  ; $76d3: $d2 $1f $ad

    dec [hl]                                      ; $76d6: $35
    ld sp, hl                                     ; $76d7: $f9
    ld l, c                                       ; $76d8: $69
    dec sp                                        ; $76d9: $3b
    adc l                                         ; $76da: $8d
    rst $28                                       ; $76db: $ef
    ld a, [hl-]                                   ; $76dc: $3a
    ld [hl], a                                    ; $76dd: $77
    xor l                                         ; $76de: $ad
    ld a, [de]                                    ; $76df: $1a
    ret z                                         ; $76e0: $c8

    ld h, l                                       ; $76e1: $65
    ld e, l                                       ; $76e2: $5d
    ld sp, $3f3d                                  ; $76e3: $31 $3d $3f
    ld b, [hl]                                    ; $76e6: $46
    xor $2c                                       ; $76e7: $ee $2c
    inc bc                                        ; $76e9: $03
    db $d3                                        ; $76ea: $d3
    jp hl                                         ; $76eb: $e9


    inc h                                         ; $76ec: $24
    db $fc                                        ; $76ed: $fc
    cp h                                          ; $76ee: $bc
    xor b                                         ; $76ef: $a8
    rst $10                                       ; $76f0: $d7
    ld h, b                                       ; $76f1: $60
    ld e, [hl]                                    ; $76f2: $5e
    ld a, [hl]                                    ; $76f3: $7e
    cp h                                          ; $76f4: $bc
    ld [hl], $bb                                  ; $76f5: $36 $bb
    cp [hl]                                       ; $76f7: $be
    and d                                         ; $76f8: $a2
    jr nc, jr_022_777a                            ; $76f9: $30 $7f

    ld e, c                                       ; $76fb: $59
    ei                                            ; $76fc: $fb
    ld de, $c706                                  ; $76fd: $11 $06 $c7
    ld e, h                                       ; $7700: $5c
    or [hl]                                       ; $7701: $b6

jr_022_7702:
    ld h, $cd                                     ; $7702: $26 $cd
    db $ec                                        ; $7704: $ec
    ld c, e                                       ; $7705: $4b
    ld l, h                                       ; $7706: $6c
    pop hl                                        ; $7707: $e1
    rst $28                                       ; $7708: $ef
    and b                                         ; $7709: $a0
    ld d, l                                       ; $770a: $55

jr_022_770b:
    push hl                                       ; $770b: $e5
    ld d, [hl]                                    ; $770c: $56

Jump_022_770d:
    push af                                       ; $770d: $f5
    daa                                           ; $770e: $27
    ld e, b                                       ; $770f: $58
    di                                            ; $7710: $f3
    adc $5d                                       ; $7711: $ce $5d
    xor e                                         ; $7713: $ab
    adc d                                         ; $7714: $8a
    inc [hl]                                      ; $7715: $34
    ld e, l                                       ; $7716: $5d
    ld sp, $a4a7                                  ; $7717: $31 $a7 $a4
    xor a                                         ; $771a: $af
    ld a, c                                       ; $771b: $79
    ld b, a                                       ; $771c: $47
    jr jr_022_775c                                ; $771d: $18 $3d

    ccf                                           ; $771f: $3f
    ld b, [hl]                                    ; $7720: $46
    xor $8a                                       ; $7721: $ee $8a
    ld de, $ba69                                  ; $7723: $11 $69 $ba
    ld l, h                                       ; $7726: $6c
    xor l                                         ; $7727: $ad
    cp a                                          ; $7728: $bf
    dec bc                                        ; $7729: $0b
    dec bc                                        ; $772a: $0b
    sub d                                         ; $772b: $92
    ld c, b                                       ; $772c: $48
    rst $20                                       ; $772d: $e7
    jp nc, Jump_022_5fcc                          ; $772e: $d2 $cc $5f

    or $ea                                        ; $7731: $f6 $ea
    dec sp                                        ; $7733: $3b
    dec a                                         ; $7734: $3d
    ld l, c                                       ; $7735: $69
    rst $10                                       ; $7736: $d7
    ld e, [hl]                                    ; $7737: $5e
    di                                            ; $7738: $f3
    ld h, l                                       ; $7739: $65
    inc l                                         ; $773a: $2c
    xor c                                         ; $773b: $a9
    and $0b                                       ; $773c: $e6 $0b

jr_022_773e:
    sbc $57                                       ; $773e: $de $57
    ld l, [hl]                                    ; $7740: $6e
    jr c, jr_022_770b                             ; $7741: $38 $c8

    ldh a, [$67]                                  ; $7743: $f0 $67
    ld h, a                                       ; $7745: $67
    or d                                          ; $7746: $b2
    reti                                          ; $7747: $d9


    ld a, [bc]                                    ; $7748: $0a
    sbc $05                                       ; $7749: $de $05
    inc bc                                        ; $774b: $03
    dec a                                         ; $774c: $3d
    jp z, $afcb                                   ; $774d: $ca $cb $af

    ld c, c                                       ; $7750: $49
    inc sp                                        ; $7751: $33
    sub l                                         ; $7752: $95
    rst $20                                       ; $7753: $e7
    xor [hl]                                      ; $7754: $ae
    ld d, l                                       ; $7755: $55
    ld b, l                                       ; $7756: $45
    ld a, [de]                                    ; $7757: $1a
    or h                                          ; $7758: $b4
    push af                                       ; $7759: $f5
    db $fc                                        ; $775a: $fc
    dec d                                         ; $775b: $15

jr_022_775c:
    or l                                          ; $775c: $b5
    cp $da                                        ; $775d: $fe $da
    rst $38                                       ; $775f: $ff
    inc [hl]                                      ; $7760: $34
    ld e, [hl]                                    ; $7761: $5e
    xor a                                         ; $7762: $af
    ld e, a                                       ; $7763: $5f
    ld a, [bc]                                    ; $7764: $0a
    ld h, [hl]                                    ; $7765: $66
    and a                                         ; $7766: $a7
    xor h                                         ; $7767: $ac
    ld c, c                                       ; $7768: $49
    add e                                         ; $7769: $83
    jr nc, jr_022_7702                            ; $776a: $30 $96

    or l                                          ; $776c: $b5
    rst $18                                       ; $776d: $df
    rst $10                                       ; $776e: $d7
    xor d                                         ; $776f: $aa
    add c                                         ; $7770: $81
    ld e, h                                       ; $7771: $5c
    or [hl]                                       ; $7772: $b6
    and d                                         ; $7773: $a2
    jr nc, jr_022_773e                            ; $7774: $30 $c8

    ldh a, [rPCM34]                               ; $7776: $f0 $77
    ret                                           ; $7778: $c9


    ld e, a                                       ; $7779: $5f

jr_022_777a:
    ld e, $fc                                     ; $777a: $1e $fc
    ld d, d                                       ; $777c: $52
    jr nc, jr_022_77ae                            ; $777d: $30 $2f

    sub a                                         ; $777f: $97
    ld [bc], a                                    ; $7780: $02
    sbc b                                         ; $7781: $98
    rst $20                                       ; $7782: $e7
    db $fc                                        ; $7783: $fc
    ld h, e                                       ; $7784: $63
    sbc h                                         ; $7785: $9c
    add c                                         ; $7786: $81
    ld l, c                                       ; $7787: $69
    dec sp                                        ; $7788: $3b
    adc l                                         ; $7789: $8d
    rst $08                                       ; $778a: $cf
    res 5, a                                      ; $778b: $cb $af
    push bc                                       ; $778d: $c5
    sub e                                         ; $778e: $93
    ld e, $61                                     ; $778f: $1e $61
    dec a                                         ; $7791: $3d
    adc e                                         ; $7792: $8b
    ld a, [$7e54]                                 ; $7793: $fa $54 $7e
    ld c, l                                       ; $7796: $4d
    sbc d                                         ; $7797: $9a
    or c                                          ; $7798: $b1
    cp h                                          ; $7799: $bc
    inc d                                         ; $779a: $14
    xor h                                         ; $779b: $ac
    cp h                                          ; $779c: $bc
    inc a                                         ; $779d: $3c
    ld [hl], a                                    ; $779e: $77
    daa                                           ; $779f: $27
    ld l, e                                       ; $77a0: $6b
    or h                                          ; $77a1: $b4
    or e                                          ; $77a2: $b3
    jp hl                                         ; $77a3: $e9


    adc d                                         ; $77a4: $8a
    ld bc, $5a96                                  ; $77a5: $01 $96 $5a
    cp b                                          ; $77a8: $b8
    ld b, b                                       ; $77a9: $40
    cp l                                          ; $77aa: $bd
    cp h                                          ; $77ab: $bc
    ld e, h                                       ; $77ac: $5c
    ld a, [bc]                                    ; $77ad: $0a

jr_022_77ae:
    and [hl]                                      ; $77ae: $a6
    ld l, e                                       ; $77af: $6b
    and a                                         ; $77b0: $a7
    add hl, sp                                    ; $77b1: $39
    rst $18                                       ; $77b2: $df
    cp h                                          ; $77b3: $bc
    rst $08                                       ; $77b4: $cf
    ld c, [hl]                                    ; $77b5: $4e
    sbc c                                         ; $77b6: $99
    ld c, $32                                     ; $77b7: $0e $32
    xor c                                         ; $77b9: $a9
    ld l, a                                       ; $77ba: $6f
    rst $08                                       ; $77bb: $cf
    cp [hl]                                       ; $77bc: $be
    db $db                                        ; $77bd: $db
    rst $18                                       ; $77be: $df
    scf                                           ; $77bf: $37
    ei                                            ; $77c0: $fb
    adc [hl]                                      ; $77c1: $8e
    adc d                                         ; $77c2: $8a
    ld e, a                                       ; $77c3: $5f
    ld a, [bc]                                    ; $77c4: $0a
    ld b, $6e                                     ; $77c5: $06 $6e
    ret c                                         ; $77c7: $d8

    sub e                                         ; $77c8: $93
    ld c, a                                       ; $77c9: $4f
    adc c                                         ; $77ca: $89

Jump_022_77cb:
    xor l                                         ; $77cb: $ad
    ld e, h                                       ; $77cc: $5c
    sbc b                                         ; $77cd: $98
    dec l                                         ; $77ce: $2d
    rst $30                                       ; $77cf: $f7
    adc c                                         ; $77d0: $89
    ld bc, $27c2                                  ; $77d1: $01 $c2 $27
    ld h, l                                       ; $77d4: $65
    sub $b9                                       ; $77d5: $d6 $b9
    ld l, e                                       ; $77d7: $6b
    ld a, l                                       ; $77d8: $7d
    add $df                                       ; $77d9: $c6 $df
    ld h, b                                       ; $77db: $60
    rla                                           ; $77dc: $17
    sub $d6                                       ; $77dd: $d6 $d6
    xor d                                         ; $77df: $aa
    sbc $05                                       ; $77e0: $de $05
    inc bc                                        ; $77e2: $03
    dec l                                         ; $77e3: $2d
    push hl                                       ; $77e4: $e5
    ld d, a                                       ; $77e5: $57
    inc d                                         ; $77e6: $14
    and [hl]                                      ; $77e7: $a6
    dec bc                                        ; $77e8: $0b
    rra                                           ; $77e9: $1f
    ld b, b                                       ; $77ea: $40
    add e                                         ; $77eb: $83
    sbc a                                         ; $77ec: $9f
    dec l                                         ; $77ed: $2d
    add hl, de                                    ; $77ee: $19
    xor [hl]                                      ; $77ef: $ae
    ld e, e                                       ; $77f0: $5b
    ld d, c                                       ; $77f1: $51
    adc c                                         ; $77f2: $89
    rst $30                                       ; $77f3: $f7
    pop de                                        ; $77f4: $d1
    ld c, [hl]                                    ; $77f5: $4e
    ld a, a                                       ; $77f6: $7f
    ld h, l                                       ; $77f7: $65
    cp e                                          ; $77f8: $bb
    adc $dd                                       ; $77f9: $ce $dd
    jp hl                                         ; $77fb: $e9


    ld c, c                                       ; $77fc: $49
    ld [$b503], sp                                ; $77fd: $08 $03 $b5
    ld h, e                                       ; $7800: $63
    ld e, [hl]                                    ; $7801: $5e
    ld h, l                                       ; $7802: $65
    and a                                         ; $7803: $a7
    daa                                           ; $7804: $27
    ld [hl], c                                    ; $7805: $71
    ld l, e                                       ; $7806: $6b
    jr jr_022_783e                                ; $7807: $18 $35

    ld c, e                                       ; $7809: $4b
    adc l                                         ; $780a: $8d
    xor l                                         ; $780b: $ad
    db $fd                                        ; $780c: $fd
    dec bc                                        ; $780d: $0b
    and d                                         ; $780e: $a2
    or d                                          ; $780f: $b2
    ld a, c                                       ; $7810: $79
    adc $b5                                       ; $7811: $ce $b5
    cp $f3                                        ; $7813: $fe $f3
    ld a, [c]                                     ; $7815: $f2
    ld h, e                                       ; $7816: $63
    and d                                         ; $7817: $a2
    ld b, c                                       ; $7818: $41
    ld [de], a                                    ; $7819: $12
    ld [hl], a                                    ; $781a: $77
    ld l, l                                       ; $781b: $6d
    db $e3                                        ; $781c: $e3
    cp e                                          ; $781d: $bb
    ld a, $3e                                     ; $781e: $3e $3e
    xor c                                         ; $7820: $a9
    and $6b                                       ; $7821: $e6 $6b
    rst $38                                       ; $7823: $ff
    ld e, [hl]                                    ; $7824: $5e
    and c                                         ; $7825: $a1
    ld b, c                                       ; $7826: $41
    db $eb                                        ; $7827: $eb
    ld d, c                                       ; $7828: $51
    ld a, [hl]                                    ; $7829: $7e
    db $ed                                        ; $782a: $ed
    rlca                                          ; $782b: $07
    sbc a                                         ; $782c: $9f
    sub a                                         ; $782d: $97
    ld c, e                                       ; $782e: $4b

Jump_022_782f:
    pop bc                                        ; $782f: $c1
    ld hl, sp+$1b                                 ; $7830: $f8 $1b
    db $e3                                        ; $7832: $e3
    jp c, $cf3f                                   ; $7833: $da $3f $cf

    pop bc                                        ; $7836: $c1
    inc de                                        ; $7837: $13
    ld e, e                                       ; $7838: $5b
    cp c                                          ; $7839: $b9
    pop hl                                        ; $783a: $e1
    jp nc, $32fa                                  ; $783b: $d2 $fa $32

jr_022_783e:
    cp $7a                                        ; $783e: $fe $7a
    add hl, de                                    ; $7840: $19
    ld h, h                                       ; $7841: $64
    ld hl, sp-$4d                                 ; $7842: $f8 $b3
    push hl                                       ; $7844: $e5
    ld a, $31                                     ; $7845: $3e $31
    ld e, b                                       ; $7847: $58
    jp c, $2f0b                                   ; $7848: $da $0b $2f

    db $fd                                        ; $784b: $fd
    ld hl, sp-$6e                                 ; $784c: $f8 $92
    ld d, e                                       ; $784e: $53
    ld sp, hl                                     ; $784f: $f9
    ld d, l                                       ; $7850: $55
    add hl, de                                    ; $7851: $19
    ld e, [hl]                                    ; $7852: $5e
    ld a, [bc]                                    ; $7853: $0a
    ld b, [hl]                                    ; $7854: $46
    rst $08                                       ; $7855: $cf
    pop bc                                        ; $7856: $c1
    rst $00                                       ; $7857: $c7
    rst $38                                       ; $7858: $ff
    rst $10                                       ; $7859: $d7
    pop de                                        ; $785a: $d1
    cp d                                          ; $785b: $ba
    and l                                         ; $785c: $a5
    adc c                                         ; $785d: $89
    ld l, h                                       ; $785e: $6c
    ld c, l                                       ; $785f: $4d
    sbc d                                         ; $7860: $9a
    dec b                                         ; $7861: $05
    rst $28                                       ; $7862: $ef
    di                                            ; $7863: $f3
    ld a, [c]                                     ; $7864: $f2
    dec sp                                        ; $7865: $3b
    db $fd                                        ; $7866: $fd
    or d                                          ; $7867: $b2
    ldh [$db], a                                  ; $7868: $e0 $db
    ld e, d                                       ; $786a: $5a
    push de                                       ; $786b: $d5
    ld h, a                                       ; $786c: $67
    ld a, [hl-]                                   ; $786d: $3a
    di                                            ; $786e: $f3
    sbc h                                         ; $786f: $9c
    sub a                                         ; $7870: $97
    sbc a                                         ; $7871: $9f
    ld l, e                                       ; $7872: $6b
    adc h                                         ; $7873: $8c
    rrca                                          ; $7874: $0f
    ld a, $4f                                     ; $7875: $3e $4f
    cp $65                                        ; $7877: $fe $65
    ld [$2f0b], a                                 ; $7879: $ea $0b $2f
    and e                                         ; $787c: $a3
    dec de                                        ; $787d: $1b
    inc d                                         ; $787e: $14
    ld e, a                                       ; $787f: $5f
    jp nc, $d45a                                  ; $7880: $d2 $5a $d4

    adc l                                         ; $7883: $8d
    jr nc, jr_022_78f3                            ; $7884: $30 $6d

    cp d                                          ; $7886: $ba
    xor [hl]                                      ; $7887: $ae
    ld b, a                                       ; $7888: $47
    ld sp, hl                                     ; $7889: $f9
    ld h, [hl]                                    ; $788a: $66
    sub l                                         ; $788b: $95
    jp nc, $7fc2                                  ; $788c: $d2 $c2 $7f

    ld e, a                                       ; $788f: $5f
    sub e                                         ; $7890: $93
    ld h, [hl]                                    ; $7891: $66
    ld e, [hl]                                    ; $7892: $5e
    ld e, [hl]                                    ; $7893: $5e
    ld a, [hl]                                    ; $7894: $7e
    ld c, d                                       ; $7895: $4a
    ld l, h                                       ; $7896: $6c
    xor [hl]                                      ; $7897: $ae
    push af                                       ; $7898: $f5
    ld e, a                                       ; $7899: $5f
    cp c                                          ; $789a: $b9
    pop hl                                        ; $789b: $e1
    ld hl, sp+$72                                 ; $789c: $f8 $72
    db $e3                                        ; $789e: $e3
    rst $28                                       ; $789f: $ef
    ld a, d                                       ; $78a0: $7a
    dec c                                         ; $78a1: $0d
    ld b, $7e                                     ; $78a2: $06 $7e
    ld h, e                                       ; $78a4: $63
    inc e                                         ; $78a5: $1c
    ld d, e                                       ; $78a6: $53
    xor c                                         ; $78a7: $a9
    and e                                         ; $78a8: $a3
    or l                                          ; $78a9: $b5
    inc a                                         ; $78aa: $3c
    or c                                          ; $78ab: $b1
    add l                                         ; $78ac: $85
    ccf                                           ; $78ad: $3f
    and l                                         ; $78ae: $a5
    add hl, hl                                    ; $78af: $29
    ld bc, $32ff                                  ; $78b0: $01 $ff $32
    add l                                         ; $78b3: $85
    ld b, c                                       ; $78b4: $41
    ld h, $4d                                     ; $78b5: $26 $4d
    ld h, c                                       ; $78b7: $61
    sbc l                                         ; $78b8: $9d
    inc b                                         ; $78b9: $04
    cp b                                          ; $78ba: $b8
    db $ed                                        ; $78bb: $ed
    ld hl, sp-$58                                 ; $78bc: $f8 $a8
    add [hl]                                      ; $78be: $86
    ld bc, $93b5                                  ; $78bf: $01 $b5 $93
    jp nc, $dcfa                                  ; $78c2: $d2 $fa $dc

    ld [hl], l                                    ; $78c5: $75
    dec hl                                        ; $78c6: $2b
    ld a, [hl+]                                   ; $78c7: $2a
    pop af                                        ; $78c8: $f1
    ld a, [hl]                                    ; $78c9: $7e
    dec c                                         ; $78ca: $0d
    ld h, c                                       ; $78cb: $61
    dec a                                         ; $78cc: $3d
    ld a, a                                       ; $78cd: $7f
    sub l                                         ; $78ce: $95
    jp nc, $fc0c                                  ; $78cf: $d2 $0c $fc

    cp h                                          ; $78d2: $bc
    db $fc                                        ; $78d3: $fc
    inc l                                         ; $78d4: $2c
    ld h, h                                       ; $78d5: $64
    cp l                                          ; $78d6: $bd
    ld [hl], b                                    ; $78d7: $70
    db $db                                        ; $78d8: $db
    scf                                           ; $78d9: $37
    ld e, [hl]                                    ; $78da: $5e
    ld l, a                                       ; $78db: $6f
    sub $2d                                       ; $78dc: $d6 $2d
    and [hl]                                      ; $78de: $a6
    sub $e7                                       ; $78df: $d6 $e7
    cp c                                          ; $78e1: $b9
    ldh [$7d], a                                  ; $78e2: $e0 $7d
    push hl                                       ; $78e4: $e5
    add [hl]                                      ; $78e5: $86
    di                                            ; $78e6: $f3
    sbc h                                         ; $78e7: $9c
    sub a                                         ; $78e8: $97
    sbc a                                         ; $78e9: $9f
    daa                                           ; $78ea: $27
    rst $38                                       ; $78eb: $ff
    add d                                         ; $78ec: $82
    ld h, [hl]                                    ; $78ed: $66
    sbc c                                         ; $78ee: $99
    sub a                                         ; $78ef: $97
    ld c, e                                       ; $78f0: $4b
    push af                                       ; $78f1: $f5
    ld e, l                                       ; $78f2: $5d

jr_022_78f3:
    xor a                                         ; $78f3: $af
    pop bc                                        ; $78f4: $c1
    jp c, $d837                                   ; $78f5: $da $37 $d8

    ld d, e                                       ; $78f8: $53
    sbc d                                         ; $78f9: $9a
    and b                                         ; $78fa: $a0
    call z, Call_022_5573                         ; $78fb: $cc $73 $55
    ld e, d                                       ; $78fe: $5a
    ld e, a                                       ; $78ff: $5f
    and $7c                                       ; $7900: $e6 $7c
    ld l, $ed                                     ; $7902: $2e $ed
    add hl, de                                    ; $7904: $19
    sbc b                                         ; $7905: $98
    ld [de], a                                    ; $7906: $12
    db $db                                        ; $7907: $db
    add hl, hl                                    ; $7908: $29
    add hl, hl                                    ; $7909: $29
    db $ed                                        ; $790a: $ed
    rla                                           ; $790b: $17
    ld b, a                                       ; $790c: $47
    or e                                          ; $790d: $b3
    call nc, Call_000_1c62                        ; $790e: $d4 $62 $1c
    inc a                                         ; $7911: $3c
    or c                                          ; $7912: $b1
    or l                                          ; $7913: $b5
    ld a, $e3                                     ; $7914: $3e $e3
    ld l, a                                       ; $7916: $6f
    or b                                          ; $7917: $b0
    or [hl]                                       ; $7918: $b6
    ld d, [hl]                                    ; $7919: $56
    push af                                       ; $791a: $f5
    pop af                                        ; $791b: $f1
    rst $10                                       ; $791c: $d7
    bit 6, h                                      ; $791d: $cb $74
    ld a, [c]                                     ; $791f: $f2
    sbc l                                         ; $7920: $9d
    ret c                                         ; $7921: $d8

    and b                                         ; $7922: $a0
    sbc l                                         ; $7923: $9d
    sub d                                         ; $7924: $92
    db $fc                                        ; $7925: $fc
    ld [c], a                                     ; $7926: $e2
    ld a, e                                       ; $7927: $7b
    dec c                                         ; $7928: $0d
    ld d, $e4                                     ; $7929: $16 $e4
    db $fc                                        ; $792b: $fc
    ld h, e                                       ; $792c: $63
    ld e, h                                       ; $792d: $5c
    xor e                                         ; $792e: $ab
    ld b, $72                                     ; $792f: $06 $72
    add hl, de                                    ; $7931: $19
    jp nz, $a4a7                                  ; $7932: $c2 $a7 $a4

    or h                                          ; $7935: $b4
    ld e, a                                       ; $7936: $5f
    cp h                                          ; $7937: $bc
    bit 3, d                                      ; $7938: $cb $5a
    ld a, a                                       ; $793a: $7f
    ld b, c                                       ; $793b: $41
    ld a, [$d794]                                 ; $793c: $fa $94 $d7
    and [hl]                                      ; $793f: $a6
    bit 3, d                                      ; $7940: $cb $5a
    adc l                                         ; $7942: $8d
    ld c, b                                       ; $7943: $48
    or e                                          ; $7944: $b3
    ld d, [hl]                                    ; $7945: $56
    dec d                                         ; $7946: $15
    ld l, c                                       ; $7947: $69
    cp b                                          ; $7948: $b8

jr_022_7949:
    xor e                                         ; $7949: $ab
    call nc, $b2ab                                ; $794a: $d4 $ab $b2
    ld [hl], d                                    ; $794d: $72
    jp $182e                                      ; $794e: $c3 $2e $18


    xor l                                         ; $7951: $ad
    cpl                                           ; $7952: $2f
    cp a                                          ; $7953: $bf
    ld a, [c]                                     ; $7954: $f2
    cp e                                          ; $7955: $bb
    add b                                         ; $7956: $80
    sub $2b                                       ; $7957: $d6 $2b
    call $94ea                                    ; $7959: $cd $ea $94
    db $fc                                        ; $795c: $fc
    cp h                                          ; $795d: $bc
    ld e, h                                       ; $795e: $5c
    jr jr_022_79e0                                ; $795f: $18 $7f

    ld h, e                                       ; $7961: $63
    call c, Call_000_0679                         ; $7962: $dc $79 $06
    ld a, h                                       ; $7965: $7c
    push af                                       ; $7966: $f5
    rst $38                                       ; $7967: $ff
    adc $8a                                       ; $7968: $ce $8a
    halt                                          ; $796a: $76
    ld a, [hl-]                                   ; $796b: $3a
    ld c, a                                       ; $796c: $4f
    sub a                                         ; $796d: $97
    ld [bc], a                                    ; $796e: $02
    xor $58                                       ; $796f: $ee $58
    ld d, d                                       ; $7971: $52
    call $a4d7                                    ; $7972: $cd $d7 $a4
    jp hl                                         ; $7975: $e9


    adc d                                         ; $7976: $8a
    ld bc, $d596                                  ; $7977: $01 $96 $d5
    add hl, hl                                    ; $797a: $29
    ld a, c                                       ; $797b: $79
    inc [hl]                                      ; $797c: $34
    ld c, e                                       ; $797d: $4b
    dec l                                         ; $797e: $2d
    add $15                                       ; $797f: $c6 $15
    or l                                          ; $7981: $b5
    cp $fc                                        ; $7982: $fe $fc
    ld h, l                                       ; $7984: $65
    ld a, l                                       ; $7985: $7d
    nop                                           ; $7986: $00

Jump_022_7987:
    ld e, l                                       ; $7987: $5d
    db $db                                        ; $7988: $db
    adc [hl]                                      ; $7989: $8e
    rst $18                                       ; $798a: $df
    rst $20                                       ; $798b: $e7
    ldh [$89], a                                  ; $798c: $e0 $89
    dec l                                         ; $798e: $2d
    ld e, [hl]                                    ; $798f: $5e
    rst $30                                       ; $7990: $f7
    ld hl, sp+$3b                                 ; $7991: $f8 $3b
    dec h                                         ; $7993: $25
    and l                                         ; $7994: $a5
    db $fd                                        ; $7995: $fd
    ld [c], a                                     ; $7996: $e2
    ld d, e                                       ; $7997: $53
    ld e, [hl]                                    ; $7998: $5e
    dec de                                        ; $7999: $1b
    add h                                         ; $799a: $84
    ld bc, $7f3d                                  ; $799b: $01 $3d $7f
    ld b, c                                       ; $799e: $41
    ld a, [$f174]                                 ; $799f: $fa $74 $f1
    db $dd                                        ; $79a2: $dd
    ld e, a                                       ; $79a3: $5f
    ld h, [hl]                                    ; $79a4: $66
    ld c, e                                       ; $79a5: $4b
    add [hl]                                      ; $79a6: $86
    db $eb                                        ; $79a7: $eb
    ld d, [hl]                                    ; $79a8: $56
    ld d, h                                       ; $79a9: $54
    ld [c], a                                     ; $79aa: $e2
    db $fd                                        ; $79ab: $fd
    push af                                       ; $79ac: $f5
    ld a, h                                       ; $79ad: $7c
    add l                                         ; $79ae: $85
    ld hl, sp+$0d                                 ; $79af: $f8 $0d
    ld e, d                                       ; $79b1: $5a
    db $eb                                        ; $79b2: $eb
    xor a                                         ; $79b3: $af
    jr z, jr_022_79c2                             ; $79b4: $28 $0c

    ld [hl-], a                                   ; $79b6: $32
    db $fc                                        ; $79b7: $fc
    reti                                          ; $79b8: $d9


    ld [hl], d                                    ; $79b9: $72
    sbc a                                         ; $79ba: $9f
    jr jr_022_7949                                ; $79bb: $18 $8c

    cpl                                           ; $79bd: $2f
    cp c                                          ; $79be: $b9

jr_022_79bf:
    ld c, d                                       ; $79bf: $4a
    ld l, c                                       ; $79c0: $69
    sbc l                                         ; $79c1: $9d

jr_022_79c2:
    ld e, e                                       ; $79c2: $5b
    push de                                       ; $79c3: $d5
    ld h, a                                       ; $79c4: $67
    ld a, [hl-]                                   ; $79c5: $3a
    dec sp                                        ; $79c6: $3b
    dec h                                         ; $79c7: $25
    and l                                         ; $79c8: $a5
    db $fd                                        ; $79c9: $fd
    ld [c], a                                     ; $79ca: $e2
    and e                                         ; $79cb: $a3
    rst $20                                       ; $79cc: $e7
    ldh [rOCPD], a                                ; $79cd: $e0 $6b
    ld d, c                                       ; $79cf: $51
    scf                                           ; $79d0: $37
    jp nz, $99b4                                  ; $79d1: $c2 $b4 $99

    ld a, [$cbc2]                                 ; $79d4: $fa $c2 $cb
    add sp, $06                                   ; $79d7: $e8 $06
    push bc                                       ; $79d9: $c5
    ld de, $4706                                  ; $79da: $11 $06 $47
    pop af                                        ; $79dd: $f1
    ld [hl], d                                    ; $79de: $72
    add e                                         ; $79df: $83

jr_022_79e0:
    ld [c], a                                     ; $79e0: $e2
    ld l, b                                       ; $79e1: $68
    sub [hl]                                      ; $79e2: $96
    ld e, d                                       ; $79e3: $5a
    adc h                                         ; $79e4: $8c
    add e                                         ; $79e5: $83
    rst $38                                       ; $79e6: $ff
    dec [hl]                                      ; $79e7: $35
    ld l, c                                       ; $79e8: $69
    and $e5                                       ; $79e9: $e6 $e5
    add hl, bc                                    ; $79eb: $09
    ld h, c                                       ; $79ec: $61
    rst $00                                       ; $79ed: $c7
    ld e, h                                       ; $79ee: $5c
    or [hl]                                       ; $79ef: $b6
    and $cb                                       ; $79f0: $e6 $cb
    ld a, [hl+]                                   ; $79f2: $2a
    push af                                       ; $79f3: $f5
    xor d                                         ; $79f4: $aa
    xor h                                         ; $79f5: $ac
    call c, $2bb0                                 ; $79f6: $dc $b0 $2b
    ld b, $a7                                     ; $79f9: $06 $a7
    and h                                         ; $79fb: $a4
    xor a                                         ; $79fc: $af
    ld a, c                                       ; $79fd: $79
    ld b, a                                       ; $79fe: $47
    jr jr_022_7a3e                                ; $79ff: $18 $3d

    and h                                         ; $7a01: $a4
    sbc c                                         ; $7a02: $99
    ld b, $7a                                     ; $7a03: $06 $7a
    adc c                                         ; $7a05: $89
    cp e                                          ; $7a06: $bb
    ld d, [hl]                                    ; $7a07: $56
    dec d                                         ; $7a08: $15
    ld l, c                                       ; $7a09: $69
    cp d                                          ; $7a0a: $ba
    ld l, h                                       ; $7a0b: $6c
    dec a                                         ; $7a0c: $3d
    ld a, a                                       ; $7a0d: $7f
    and c                                         ; $7a0e: $a1
    ld bc, $f05f                                  ; $7a0f: $01 $5f $f0
    cp [hl]                                       ; $7a12: $be
    ld [hl], d                                    ; $7a13: $72

jr_022_7a14:
    jp $b5b5                                      ; $7a14: $c3 $b5 $b5


    xor d                                         ; $7a17: $aa
    ld [hl], a                                    ; $7a18: $77
    pop bc                                        ; $7a19: $c1
    dec a                                         ; $7a1a: $3d
    cp a                                          ; $7a1b: $bf
    add $d6                                       ; $7a1c: $c6 $d6
    ld a, [hl]                                    ; $7a1e: $7e
    rst $30                                       ; $7a1f: $f7
    sub a                                         ; $7a20: $97
    dec b                                         ; $7a21: $05
    rst $28                                       ; $7a22: $ef
    dec bc                                        ; $7a23: $0b
    ld a, [c]                                     ; $7a24: $f2
    ld d, d                                       ; $7a25: $52
    add b                                         ; $7a26: $80
    jr nc, jr_022_79bf                            ; $7a27: $30 $96

    add c                                         ; $7a29: $81
    rst $18                                       ; $7a2a: $df
    jr jr_022_7a14                                ; $7a2b: $18 $e7

    push hl                                       ; $7a2d: $e5
    ld d, d                                       ; $7a2e: $52
    ld a, l                                       ; $7a2f: $7d
    sub [hl]                                      ; $7a30: $96
    ld b, c                                       ; $7a31: $41
    ld c, c                                       ; $7a32: $49
    inc de                                        ; $7a33: $13
    reti                                          ; $7a34: $d9


    add d                                         ; $7a35: $82
    call c, $f025                                 ; $7a36: $dc $25 $f0
    ld d, a                                       ; $7a39: $57
    or [hl]                                       ; $7a3a: $b6
    or h                                          ; $7a3b: $b4
    rst $10                                       ; $7a3c: $d7
    and h                                         ; $7a3d: $a4

jr_022_7a3e:
    pop hl                                        ; $7a3e: $e1
    xor [hl]                                      ; $7a3f: $ae
    push af                                       ; $7a40: $f5
    dec h                                         ; $7a41: $25
    cp h                                          ; $7a42: $bc
    ld c, c                                       ; $7a43: $49
    adc a                                         ; $7a44: $8f
    jr nc, @-$41                                  ; $7a45: $30 $bd

    jp nc, $acd4                                  ; $7a47: $d2 $d4 $ac

    cp a                                          ; $7a4a: $bf
    or $3f                                        ; $7a4b: $f6 $3f
    db $ed                                        ; $7a4d: $ed
    add $88                                       ; $7a4e: $c6 $88
    halt                                          ; $7a50: $76
    inc d                                         ; $7a51: $14
    or c                                          ; $7a52: $b1
    ld e, c                                       ; $7a53: $59
    ld d, [hl]                                    ; $7a54: $56
    add hl, hl                                    ; $7a55: $29
    adc l                                         ; $7a56: $8d
    push hl                                       ; $7a57: $e5
    xor [hl]                                      ; $7a58: $ae
    rst $28                                       ; $7a59: $ef
    xor l                                         ; $7a5a: $ad
    cpl                                           ; $7a5b: $2f
    call $d7da                                    ; $7a5c: $cd $da $d7
    and a                                         ; $7a5f: $a7

jr_022_7a60:
    jr nc, jr_022_7a60                            ; $7a60: $30 $fe

    ld h, e                                       ; $7a62: $63
    sbc h                                         ; $7a63: $9c
    jp nz, $349a                                  ; $7a64: $c2 $9a $34

    xor e                                         ; $7a67: $ab
    jp nc, $8644                                  ; $7a68: $d2 $44 $86

    jr nc, jr_022_7a83                            ; $7a6b: $30 $16

    xor a                                         ; $7a6d: $af
    pop bc                                        ; $7a6e: $c1
    ldh [$dd], a                                  ; $7a6f: $e0 $dd
    db $e3                                        ; $7a71: $e3
    or e                                          ; $7a72: $b3
    ld l, $eb                                     ; $7a73: $2e $eb
    sub [hl]                                      ; $7a75: $96
    pop hl                                        ; $7a76: $e1
    cpl                                           ; $7a77: $2f
    adc c                                         ; $7a78: $89
    cp e                                          ; $7a79: $bb
    sub $97                                       ; $7a7a: $d6 $97
    ldh a, [rNR52]                                ; $7a7c: $f0 $26
    dec a                                         ; $7a7e: $3d
    jp nz, $af16                                  ; $7a7f: $c2 $16 $af

    pop bc                                        ; $7a82: $c1

jr_022_7a83:
    db $fc                                        ; $7a83: $fc
    add [hl]                                      ; $7a84: $86
    rst $08                                       ; $7a85: $cf
    ld e, l                                       ; $7a86: $5d
    xor e                                         ; $7a87: $ab
    ld b, $72                                     ; $7a88: $06 $72
    add hl, de                                    ; $7a8a: $19
    jp nz, Jump_022_5fad                          ; $7a8b: $c2 $ad $5f

    add e                                         ; $7a8e: $83
    dec b                                         ; $7a8f: $05
    jp hl                                         ; $7a90: $e9


    adc e                                         ; $7a91: $8b
    jp hl                                         ; $7a92: $e9


    or b                                          ; $7a93: $b0
    or h                                          ; $7a94: $b4
    ld h, a                                       ; $7a95: $67
    ld h, a                                       ; $7a96: $67
    or d                                          ; $7a97: $b2
    reti                                          ; $7a98: $d9


    cpl                                           ; $7a99: $2f
    di                                            ; $7a9a: $f3
    ld a, [c]                                     ; $7a9b: $f2
    dec sp                                        ; $7a9c: $3b
    cpl                                           ; $7a9d: $2f
    adc l                                         ; $7a9e: $8d
    ret nc                                        ; $7a9f: $d0

    scf                                           ; $7aa0: $37
    ld l, b                                       ; $7aa1: $68
    ld b, a                                       ; $7aa2: $47
    ld de, $a59b                                  ; $7aa3: $11 $9b $a5
    ld h, [hl]                                    ; $7aa6: $66
    db $fd                                        ; $7aa7: $fd
    ld [hl], l                                    ; $7aa8: $75
    or h                                          ; $7aa9: $b4
    xor d                                         ; $7aaa: $aa
    ccf                                           ; $7aab: $3f
    ld e, e                                       ; $7aac: $5b
    cp c                                          ; $7aad: $b9
    jr nc, jr_022_7b2f                            ; $7aae: $30 $7f

    add $9a                                       ; $7ab0: $c6 $9a
    or l                                          ; $7ab2: $b5
    ld e, a                                       ; $7ab3: $5f
    ld h, l                                       ; $7ab4: $65
    sub a                                         ; $7ab5: $97
    ld d, [hl]                                    ; $7ab6: $56
    add hl, hl                                    ; $7ab7: $29
    db $fc                                        ; $7ab8: $fc
    jp z, Jump_022_782f                           ; $7ab9: $ca $2f $78

    add a                                         ; $7abc: $87
    push bc                                       ; $7abd: $c5
    and h                                         ; $7abe: $a4
    adc a                                         ; $7abf: $8f
    dec c                                         ; $7ac0: $0d
    jp nz, Jump_022_5fad                          ; $7ac1: $c2 $ad $5f

    adc e                                         ; $7ac4: $8b
    ld [hl], c                                    ; $7ac5: $71
    dec e                                         ; $7ac6: $1d
    ret                                           ; $7ac7: $c9


    or [hl]                                       ; $7ac8: $b6
    or [hl]                                       ; $7ac9: $b6
    ld h, e                                       ; $7aca: $63
    or e                                          ; $7acb: $b3
    ld d, a                                       ; $7acc: $57
    sbc a                                         ; $7acd: $9f
    rla                                           ; $7ace: $17
    push af                                       ; $7acf: $f5
    ld sp, hl                                     ; $7ad0: $f9

Call_022_7ad1:
    inc sp                                        ; $7ad1: $33
    sub $ac                                       ; $7ad2: $d6 $ac
    db $fd                                        ; $7ad4: $fd

jr_022_7ad5:
    ld a, [hl+]                                   ; $7ad5: $2a
    or e                                          ; $7ad6: $b3
    xor a                                         ; $7ad7: $af
    add b                                         ; $7ad8: $80
    inc hl                                        ; $7ad9: $23
    inc c                                         ; $7ada: $0c
    dec a                                         ; $7adb: $3d
    cp a                                          ; $7adc: $bf
    add $d6                                       ; $7add: $c6 $d6
    ld a, [hl]                                    ; $7adf: $7e
    ldh a, [$85]                                  ; $7ae0: $f0 $85
    ld l, c                                       ; $7ae2: $69
    db $fd                                        ; $7ae3: $fd
    ld l, c                                       ; $7ae4: $69
    ld c, h                                       ; $7ae5: $4c
    ld a, [bc]                                    ; $7ae6: $0a
    halt                                          ; $7ae7: $76
    db $ed                                        ; $7ae8: $ed
    pop af                                        ; $7ae9: $f1
    ccf                                           ; $7aea: $3f
    ld e, [hl]                                    ; $7aeb: $5e
    ret                                           ; $7aec: $c9


    rst $20                                       ; $7aed: $e7
    add hl, sp                                    ; $7aee: $39
    ld a, c                                       ; $7aef: $79
    xor l                                         ; $7af0: $ad
    jp z, $e5e6                                   ; $7af1: $ca $e6 $e5

    rst $20                                       ; $7af4: $e7
    reti                                          ; $7af5: $d9


    ld e, c                                       ; $7af6: $59
    jp c, $f2f3                                   ; $7af7: $da $f3 $f2

    di                                            ; $7afa: $f3
    db $e4                                        ; $7afb: $e4
    ld e, a                                       ; $7afc: $5f
    halt                                          ; $7afd: $76
    ld l, c                                       ; $7afe: $69
    ld a, [hl]                                    ; $7aff: $7e
    jp Jump_000_1847                              ; $7b00: $c3 $47 $18


    ld b, a                                       ; $7b03: $47
    scf                                           ; $7b04: $37
    cp a                                          ; $7b05: $bf
    halt                                          ; $7b06: $76
    di                                            ; $7b07: $f3
    call c, $929d                                 ; $7b08: $dc $9d $92
    jp nc, $f17e                                  ; $7b0b: $d2 $7e $f1

    ld l, $b3                                     ; $7b0e: $2e $b3
    call nc, Call_000_1c62                        ; $7b10: $d4 $62 $1c
    cp l                                          ; $7b13: $bd
    push af                                       ; $7b14: $f5
    ld h, l                                       ; $7b15: $65
    halt                                          ; $7b16: $76
    ld c, d                                       ; $7b17: $4a
    ldh a, [$be]                                  ; $7b18: $f0 $be
    ld h, $4d                                     ; $7b1a: $26 $4d
    rla                                           ; $7b1c: $17
    inc c                                         ; $7b1d: $0c
    rst $00                                       ; $7b1e: $c7
    cp h                                          ; $7b1f: $bc
    ccf                                           ; $7b20: $3f
    ld sp, hl                                     ; $7b21: $f9
    ld c, l                                       ; $7b22: $4d
    ld [c], a                                     ; $7b23: $e2
    ld c, [hl]                                    ; $7b24: $4e
    adc c                                         ; $7b25: $89
    xor l                                         ; $7b26: $ad
    rst $38                                       ; $7b27: $ff
    ld a, [hl]                                    ; $7b28: $7e
    rst $10                                       ; $7b29: $d7
    ret                                           ; $7b2a: $c9


    ld c, e                                       ; $7b2b: $4b
    ld c, $b3                                     ; $7b2c: $0e $b3
    dec h                                         ; $7b2e: $25

jr_022_7b2f:
    jp $c4b5                                      ; $7b2f: $c3 $b5 $c4


    add $cb                                       ; $7b32: $c6 $cb
    sla l                                         ; $7b34: $cb $25
    xor $ec                                       ; $7b36: $ee $ec
    sub h                                         ; $7b38: $94
    pop af                                        ; $7b39: $f1
    ld c, d                                       ; $7b3a: $4a
    db $ec                                        ; $7b3b: $ec
    push hl                                       ; $7b3c: $e5
    ld d, d                                       ; $7b3d: $52
    jr nc, jr_022_7ad5                            ; $7b3e: $30 $95

    inc [hl]                                      ; $7b40: $34
    call nz, Call_022_6976                        ; $7b41: $c4 $76 $69
    ld e, [hl]                                    ; $7b44: $5e
    ld a, [hl]                                    ; $7b45: $7e
    pop hl                                        ; $7b46: $e1

Jump_022_7b47:
    ld h, l                                       ; $7b47: $65
    inc l                                         ; $7b48: $2c
    cp $d2                                        ; $7b49: $fe $d2
    sbc [hl]                                      ; $7b4b: $9e
    sub a                                         ; $7b4c: $97
    rra                                           ; $7b4d: $1f
    db $dd                                        ; $7b4e: $dd
    and b                                         ; $7b4f: $a0
    ld a, b                                       ; $7b50: $78
    rla                                           ; $7b51: $17
    inc c                                         ; $7b52: $0c
    cp l                                          ; $7b53: $bd
    jp nc, Jump_000_258c                          ; $7b54: $d2 $8c $25

    push de                                       ; $7b57: $d5
    ld a, h                                       ; $7b58: $7c
    add [hl]                                      ; $7b59: $86
    ret c                                         ; $7b5a: $d8

    dec bc                                        ; $7b5b: $0b
    cp b                                          ; $7b5c: $b8

Call_022_7b5d:
    ld [de], a                                    ; $7b5d: $12
    db $e3                                        ; $7b5e: $e3
    xor [hl]                                      ; $7b5f: $ae
    cp e                                          ; $7b60: $bb
    and h                                         ; $7b61: $a4
    db $fd                                        ; $7b62: $fd
    nop                                           ; $7b63: $00
    add hl, hl                                    ; $7b64: $29
    ld l, b                                       ; $7b65: $68
    xor l                                         ; $7b66: $ad
    ld a, [hl+]                                   ; $7b67: $2a
    jp nc, Jump_022_7bac                          ; $7b68: $d2 $ac $7b

    cp d                                          ; $7b6b: $ba
    cp a                                          ; $7b6c: $bf
    call nc, Call_022_5560                        ; $7b6d: $d4 $60 $55
    add [hl]                                      ; $7b70: $86
    sub a                                         ; $7b71: $97
    add d                                         ; $7b72: $82
    add hl, hl                                    ; $7b73: $29
    or c                                          ; $7b74: $b1
    sub l                                         ; $7b75: $95
    xor a                                         ; $7b76: $af
    pop bc                                        ; $7b77: $c1
    add d                                         ; $7b78: $82
    db $f4                                        ; $7b79: $f4
    jp hl                                         ; $7b7a: $e9


    sbc b                                         ; $7b7b: $98
    ld l, b                                       ; $7b7c: $68
    sub b                                         ; $7b7d: $90
    call nc, $0305                                ; $7b7e: $d4 $05 $03
    and a                                         ; $7b81: $a7
    ld e, a                                       ; $7b82: $5f
    halt                                          ; $7b83: $76
    dec hl                                        ; $7b84: $2b
    inc de                                        ; $7b85: $13
    db $d3                                        ; $7b86: $d3
    ld b, b                                       ; $7b87: $40
    sub a                                         ; $7b88: $97
    ld [hl], l                                    ; $7b89: $75
    sub a                                         ; $7b8a: $97
    or h                                          ; $7b8b: $b4
    rra                                           ; $7b8c: $1f
    jr nz, jr_022_7bf4                            ; $7b8d: $20 $65

    dec l                                         ; $7b8f: $2d
    and h                                         ; $7b90: $a4
    sbc l                                         ; $7b91: $9d
    rra                                           ; $7b92: $1f
    inc d                                         ; $7b93: $14
    adc l                                         ; $7b94: $8d
    ld [hl], c                                    ; $7b95: $71
    push hl                                       ; $7b96: $e5
    ld d, l                                       ; $7b97: $55
    and [hl]                                      ; $7b98: $a6
    db $ed                                        ; $7b99: $ed
    inc [hl]                                      ; $7b9a: $34
    ld a, $2f                                     ; $7b9b: $3e $2f
    rla                                           ; $7b9d: $17
    cp d                                          ; $7b9e: $ba
    ld h, b                                       ; $7b9f: $60
    daa                                           ; $7ba0: $27
    ld h, l                                       ; $7ba1: $65
    sub $b9                                       ; $7ba2: $d6 $b9
    di                                            ; $7ba4: $f3
    ld a, [c]                                     ; $7ba5: $f2
    ld a, [c]                                     ; $7ba6: $f2
    di                                            ; $7ba7: $f3
    ld a, [c]                                     ; $7ba8: $f2
    call $be54                                    ; $7ba9: $cd $54 $be

Jump_022_7bac:
    dec bc                                        ; $7bac: $0b
    ld b, $3d                                     ; $7bad: $06 $3d
    cp a                                          ; $7baf: $bf
    ld h, $3f                                     ; $7bb0: $26 $3f
    sub [hl]                                      ; $7bb2: $96
    inc a                                         ; $7bb3: $3c
    xor l                                         ; $7bb4: $ad
    cp h                                          ; $7bb5: $bc
    ld a, h                                       ; $7bb6: $7c
    rla                                           ; $7bb7: $17
    inc c                                         ; $7bb8: $0c
    dec a                                         ; $7bb9: $3d
    adc d                                         ; $7bba: $8a
    ld d, d                                       ; $7bbb: $52
    ld a, l                                       ; $7bbc: $7d
    ld b, c                                       ; $7bbd: $41
    ld h, $a3                                     ; $7bbe: $26 $a3
    rlca                                          ; $7bc0: $07
    sbc b                                         ; $7bc1: $98
    rla                                           ; $7bc2: $17
    push af                                       ; $7bc3: $f5
    ld a, [de]                                    ; $7bc4: $1a
    inc l                                         ; $7bc5: $2c
    xor l                                         ; $7bc6: $ad
    cpl                                           ; $7bc7: $2f
    db $e3                                        ; $7bc8: $e3
    xor a                                         ; $7bc9: $af
    rla                                           ; $7bca: $17
    add h                                         ; $7bcb: $84
    ld bc, $df16                                  ; $7bcc: $01 $16 $df
    dec b                                         ; $7bcf: $05
    xor d                                         ; $7bd0: $aa
    ld sp, hl                                     ; $7bd1: $f9
    jp nc, $b2fa                                  ; $7bd2: $d2 $fa $b2

    and $1d                                       ; $7bd5: $e6 $1d
    xor l                                         ; $7bd7: $ad
    rst $20                                       ; $7bd8: $e7
    rrca                                          ; $7bd9: $0f
    db $fc                                        ; $7bda: $fc
    add $b8                                       ; $7bdb: $c6 $b8
    and d                                         ; $7bdd: $a2
    sub $9f                                       ; $7bde: $d6 $9f
    rst $20                                       ; $7be0: $e7
    add d                                         ; $7be1: $82
    rst $30                                       ; $7be2: $f7
    or l                                          ; $7be3: $b5
    or l                                          ; $7be4: $b5
    xor d                                         ; $7be5: $aa
    rst $08                                       ; $7be6: $cf
    ld [hl], e                                    ; $7be7: $73
    rst $00                                       ; $7be8: $c7
    ld c, e                                       ; $7be9: $4b
    ld h, e                                       ; $7bea: $63
    db $db                                        ; $7beb: $db
    sub a                                         ; $7bec: $97
    ld e, b                                       ; $7bed: $58
    ld a, [bc]                                    ; $7bee: $0a
    jp nz, Jump_000_2fad                          ; $7bef: $c2 $ad $2f

    pop hl                                        ; $7bf2: $e1
    ld c, l                                       ; $7bf3: $4d

jr_022_7bf4:
    ld a, d                                       ; $7bf4: $7a
    add h                                         ; $7bf5: $84
    sub b                                         ; $7bf6: $90
    ld h, l                                       ; $7bf7: $65
    pop af                                        ; $7bf8: $f1
    ld l, l                                       ; $7bf9: $6d
    ld e, a                                       ; $7bfa: $5f
    ret c                                         ; $7bfb: $d8

    call z, $d642                                 ; $7bfc: $cc $42 $d6
    dec bc                                        ; $7bff: $0b
    or a                                          ; $7c00: $b7
    ld a, l                                       ; $7c01: $7d
    db $e3                                        ; $7c02: $e3
    push af                                       ; $7c03: $f5
    ld h, [hl]                                    ; $7c04: $66
    db $dd                                        ; $7c05: $dd
    ld h, d                                       ; $7c06: $62
    ld l, d                                       ; $7c07: $6a
    ld a, l                                       ; $7c08: $7d
    and [hl]                                      ; $7c09: $a6
    or e                                          ; $7c0a: $b3
    ld c, e                                       ; $7c0b: $4b
    di                                            ; $7c0c: $f3
    ld a, [c]                                     ; $7c0d: $f2
    di                                            ; $7c0e: $f3
    db $e4                                        ; $7c0f: $e4
    ld e, a                                       ; $7c10: $5f
    cp d                                          ; $7c11: $ba
    ld h, b                                       ; $7c12: $60
    rst $00                                       ; $7c13: $c7
    and a                                         ; $7c14: $a7
    ld d, a                                       ; $7c15: $57
    ld b, l                                       ; $7c16: $45
    cp e                                          ; $7c17: $bb
    ld h, b                                       ; $7c18: $60
    ld b, a                                       ; $7c19: $47
    ld sp, hl                                     ; $7c1a: $f9
    and d                                         ; $7c1b: $a2
    add d                                         ; $7c1c: $82
    ld [hl], e                                    ; $7c1d: $73
    rst $30                                       ; $7c1e: $f7
    inc e                                         ; $7c1f: $1c
    inc [hl]                                      ; $7c20: $34
    add h                                         ; $7c21: $84
    xor c                                         ; $7c22: $a9
    db $fc                                        ; $7c23: $fc
    jp nc, $d2fa                                  ; $7c24: $d2 $fa $d2

    ld h, l                                       ; $7c27: $65
    dec a                                         ; $7c28: $3d
    cp a                                          ; $7c29: $bf
    ld d, $e3                                     ; $7c2a: $16 $e3
    adc d                                         ; $7c2c: $8a
    ld e, d                                       ; $7c2d: $5a
    ld a, a                                       ; $7c2e: $7f
    ld e, [hl]                                    ; $7c2f: $5e
    ld a, [hl]                                    ; $7c30: $7e
    ld h, b                                       ; $7c31: $60
    jp nz, Jump_022_65f0                          ; $7c32: $c2 $f0 $65

    ld l, c                                       ; $7c35: $69
    db $db                                        ; $7c36: $db
    add e                                         ; $7c37: $83
    ld c, h                                       ; $7c38: $4c
    ld [$0182], a                                 ; $7c39: $ea $82 $01
    cp l                                          ; $7c3c: $bd
    ld e, $b8                                     ; $7c3d: $1e $b8
    db $d3                                        ; $7c3f: $d3
    jr jr_022_7c68                                ; $7c40: $18 $26

    ld hl, sp+$28                                 ; $7c42: $f8 $28
    sub a                                         ; $7c44: $97
    db $f4                                        ; $7c45: $f4
    db $e3                                        ; $7c46: $e3
    ld l, a                                       ; $7c47: $6f
    adc h                                         ; $7c48: $8c
    ld l, e                                       ; $7c49: $6b
    rst $38                                       ; $7c4a: $ff
    jp z, $a3cb                                   ; $7c4b: $ca $cb $a3

    sbc l                                         ; $7c4e: $9d
    ld h, b                                       ; $7c4f: $60
    ret nz                                        ; $7c50: $c0

    rst $00                                       ; $7c51: $c7
    rla                                           ; $7c52: $17
    push af                                       ; $7c53: $f5
    or l                                          ; $7c54: $b5
    sub b                                         ; $7c55: $90
    halt                                          ; $7c56: $76
    ld a, [hl]                                    ; $7c57: $7e
    rla                                           ; $7c58: $17
    add $eb                                       ; $7c59: $c6 $eb
    push af                                       ; $7c5b: $f5
    ld c, e                                       ; $7c5c: $4b
    pop bc                                        ; $7c5d: $c1
    db $ec                                        ; $7c5e: $ec
    inc d                                         ; $7c5f: $14
    add h                                         ; $7c60: $84
    ld bc, $2aad                                  ; $7c61: $01 $ad $2a
    jp nc, $c770                                  ; $7c64: $d2 $70 $c7

    ld a, a                                       ; $7c67: $7f

jr_022_7c68:
    ld c, l                                       ; $7c68: $4d
    ld a, [hl]                                    ; $7c69: $7e
    sub h                                         ; $7c6a: $94
    cp [hl]                                       ; $7c6b: $be
    or a                                          ; $7c6c: $b7
    ld a, $0d                                     ; $7c6d: $3e $0d
    adc h                                         ; $7c6f: $8c
    db $fc                                        ; $7c70: $fc
    xor [hl]                                      ; $7c71: $ae
    cp l                                          ; $7c72: $bd
    ld a, [c]                                     ; $7c73: $f2
    xor e                                         ; $7c74: $ab
    ld d, e                                       ; $7c75: $53

Jump_022_7c76:
    ld a, [c]                                     ; $7c76: $f2
    or b                                          ; $7c77: $b0
    sub d                                         ; $7c78: $92
    db $fc                                        ; $7c79: $fc
    inc a                                         ; $7c7a: $3c
    rla                                           ; $7c7b: $17
    cp h                                          ; $7c7c: $bc
    xor a                                         ; $7c7d: $af
    and e                                         ; $7c7e: $a3
    ldh [$3b], a                                  ; $7c7f: $e0 $3b
    ld l, $1a                                     ; $7c81: $2e $1a
    db $db                                        ; $7c83: $db
    ld l, [hl]                                    ; $7c84: $6e
    sub $bc                                       ; $7c85: $d6 $bc

jr_022_7c87:
    inc hl                                        ; $7c87: $23
    inc c                                         ; $7c88: $0c
    ld b, a                                       ; $7c89: $47
    dec de                                        ; $7c8a: $1b
    ld e, a                                       ; $7c8b: $5f
    ret c                                         ; $7c8c: $d8

    inc c                                         ; $7c8d: $0c
    ld a, [hl+]                                   ; $7c8e: $2a
    sub l                                         ; $7c8f: $95
    dec d                                         ; $7c90: $15
    inc hl                                        ; $7c91: $23
    ld c, $0b                                     ; $7c92: $0e $0b
    ld d, e                                       ; $7c94: $53
    ld a, [hl]                                    ; $7c95: $7e
    ld e, [hl]                                    ; $7c96: $5e
    sub h                                         ; $7c97: $94
    or $d6                                        ; $7c98: $f6 $d6
    sub a                                         ; $7c9a: $97
    or l                                          ; $7c9b: $b5
    rst $18                                       ; $7c9c: $df
    ld c, [hl]                                    ; $7c9d: $4e
    ld a, c                                       ; $7c9e: $79
    inc [hl]                                      ; $7c9f: $34
    res 7, h                                      ; $7ca0: $cb $bc
    ld e, h                                       ; $7ca2: $5c
    xor d                                         ; $7ca3: $aa
    rst $28                                       ; $7ca4: $ef
    ld a, d                                       ; $7ca5: $7a
    dec c                                         ; $7ca6: $0d
    and [hl]                                      ; $7ca7: $a6
    add e                                         ; $7ca8: $83
    dec de                                        ; $7ca9: $1b
    ret nc                                        ; $7caa: $d0

    sbc b                                         ; $7cab: $98

Jump_022_7cac:
    ld d, d                                       ; $7cac: $52
    ldh a, [$b2]                                  ; $7cad: $f0 $b2
    dec bc                                        ; $7caf: $0b
    xor e                                         ; $7cb0: $ab
    ld [hl-], a                                   ; $7cb1: $32
    cp h                                          ; $7cb2: $bc
    inc d                                         ; $7cb3: $14
    jr nz, jr_022_7cc2                            ; $7cb4: $20 $0c

    xor l                                         ; $7cb6: $ad
    rra                                           ; $7cb7: $1f
    ld h, e                                       ; $7cb8: $63
    halt                                          ; $7cb9: $76
    reti                                          ; $7cba: $d9


    or c                                          ; $7cbb: $b1
    ld [hl], h                                    ; $7cbc: $74
    ld e, [hl]                                    ; $7cbd: $5e
    ld [hl], $97                                  ; $7cbe: $36 $97
    ld l, d                                       ; $7cc0: $6a
    di                                            ; $7cc1: $f3

jr_022_7cc2:
    ld a, [c]                                     ; $7cc2: $f2
    inc bc                                        ; $7cc3: $03
    ld b, e                                       ; $7cc4: $43
    xor e                                         ; $7cc5: $ab
    reti                                          ; $7cc6: $d9


    add hl, hl                                    ; $7cc7: $29
    cp a                                          ; $7cc8: $bf
    ld h, $4d                                     ; $7cc9: $26 $4d
    ld c, l                                       ; $7ccb: $4d
    ld a, [hl]                                    ; $7ccc: $7e
    ld l, c                                       ; $7ccd: $69

Call_022_7cce:
    db $db                                        ; $7cce: $db
    di                                            ; $7ccf: $f3
    sub a                                         ; $7cd0: $97
    sub l                                         ; $7cd1: $95
    inc c                                         ; $7cd2: $0c
    ld a, a                                       ; $7cd3: $7f
    ld a, [de]                                    ; $7cd4: $1a
    add sp, -$5b                                  ; $7cd5: $e8 $a5
    xor [hl]                                      ; $7cd7: $ae
    jr jr_022_7c87                                ; $7cd8: $18 $ad

    ld a, [de]                                    ; $7cda: $1a
    ret z                                         ; $7cdb: $c8

    ld h, l                                       ; $7cdc: $65
    call c, Call_022_7b5d                         ; $7cdd: $dc $5d $7b
    sub b                                         ; $7ce0: $90
    pop hl                                        ; $7ce1: $e1
    daa                                           ; $7ce2: $27
    db $fd                                        ; $7ce3: $fd
    ld a, b                                       ; $7ce4: $78
    dec h                                         ; $7ce5: $25

jr_022_7ce6:
    ld a, a                                       ; $7ce6: $7f
    ld [hl], $cf                                  ; $7ce7: $36 $cf
    dec b                                         ; $7ce9: $05
    rst $28                                       ; $7cea: $ef
    db $eb                                        ; $7ceb: $eb
    jr z, jr_022_7ce6                             ; $7cec: $28 $f8

    adc [hl]                                      ; $7cee: $8e
    adc e                                         ; $7cef: $8b
    add $b6                                       ; $7cf0: $c6 $b6
    dec de                                        ; $7cf2: $1b
    xor $4a                                       ; $7cf3: $ee $4a
    ld a, [c]                                     ; $7cf5: $f2
    db $e3                                        ; $7cf6: $e3
    db $d3                                        ; $7cf7: $d3
    ld b, h                                       ; $7cf8: $44
    ld [hl], $2f                                  ; $7cf9: $36 $2f
    rst $18                                       ; $7cfb: $df
    adc h                                         ; $7cfc: $8c
    push hl                                       ; $7cfd: $e5
    xor [hl]                                      ; $7cfe: $ae
    ld [hl], a                                    ; $7cff: $77
    push bc                                       ; $7d00: $c5
    daa                                           ; $7d01: $27
    db $dd                                        ; $7d02: $dd
    ld a, [$32cf]                                 ; $7d03: $fa $cf $32
    rst $08                                       ; $7d06: $cf
    ld e, b                                       ; $7d07: $58
    sbc e                                         ; $7d08: $9b
    rla                                           ; $7d09: $17
    push af                                       ; $7d0a: $f5
    add c                                         ; $7d0b: $81
    adc e                                         ; $7d0c: $8b
    ld d, d                                       ; $7d0d: $52
    ldh a, [$c2]                                  ; $7d0e: $f0 $c2
    db $dd                                        ; $7d10: $dd
    ld a, c                                       ; $7d11: $79
    ld b, $6a                                     ; $7d12: $06 $6a
    db $eb                                        ; $7d14: $eb
    ld b, h                                       ; $7d15: $44
    ld l, l                                       ; $7d16: $6d
    halt                                          ; $7d17: $76
    ld e, h                                       ; $7d18: $5c
    inc [hl]                                      ; $7d19: $34
    or [hl]                                       ; $7d1a: $b6
    db $dd                                        ; $7d1b: $dd
    call z, Call_022_4fcb                         ; $7d1c: $cc $cb $4f
    ld l, [hl]                                    ; $7d1f: $6e
    ld d, b                                       ; $7d20: $50
    ld a, h                                       ; $7d21: $7c
    ld l, e                                       ; $7d22: $6b
    ld e, a                                       ; $7d23: $5f
    ld e, a                                       ; $7d24: $5f
    sub $16                                       ; $7d25: $d6 $16
    ld a, [de]                                    ; $7d27: $1a

Call_022_7d28:
    cp b                                          ; $7d28: $b8
    push de                                       ; $7d29: $d5
    sub h                                         ; $7d2a: $94
    ld l, d                                       ; $7d2b: $6a
    dec hl                                        ; $7d2c: $2b
    ld e, a                                       ; $7d2d: $5f
    adc e                                         ; $7d2e: $8b
    ld [hl], c                                    ; $7d2f: $71
    or [hl]                                       ; $7d30: $b6
    add $38                                       ; $7d31: $c6 $38
    add l                                         ; $7d33: $85
    ld hl, sp-$21                                 ; $7d34: $f8 $df
    ld b, c                                       ; $7d36: $41
    dec sp                                        ; $7d37: $3b
    adc $10                                       ; $7d38: $ce $10
    dec [hl]                                      ; $7d3a: $35
    dec hl                                        ; $7d3b: $2b
    scf                                           ; $7d3c: $37
    inc e                                         ; $7d3d: $1c
    sub h                                         ; $7d3e: $94
    db $e4                                        ; $7d3f: $e4
    cpl                                           ; $7d40: $2f
    push de                                       ; $7d41: $d5
    ld h, [hl]                                    ; $7d42: $66
    ld a, [hl-]                                   ; $7d43: $3a
    db $e3                                        ; $7d44: $e3
    xor a                                         ; $7d45: $af
    sub a                                         ; $7d46: $97
    ld a, c                                       ; $7d47: $79
    ld d, c                                       ; $7d48: $51
    rst $18                                       ; $7d49: $df
    rlca                                          ; $7d4a: $07
    pop bc                                        ; $7d4b: $c1
    ld hl, sp-$0e                                 ; $7d4c: $f8 $f2
    inc [hl]                                      ; $7d4e: $34
    bit 7, b                                      ; $7d4f: $cb $78
    dec h                                         ; $7d51: $25
    ld a, a                                       ; $7d52: $7f
    or [hl]                                       ; $7d53: $b6
    db $eb                                        ; $7d54: $eb
    add e                                         ; $7d55: $83
    ld e, h                                       ; $7d56: $5c
    ld l, b                                       ; $7d57: $68
    xor d                                         ; $7d58: $aa
    add d                                         ; $7d59: $82
    jr nc, jr_022_7d99                            ; $7d5a: $30 $3d

    ld a, a                                       ; $7d5c: $7f
    ld b, l                                       ; $7d5d: $45
    xor l                                         ; $7d5e: $ad
    ccf                                           ; $7d5f: $3f
    rst $08                                       ; $7d60: $cf
    ld sp, hl                                     ; $7d61: $f9
    rst $00                                       ; $7d62: $c7
    cp b                                          ; $7d63: $b8
    ld h, e                                       ; $7d64: $63
    ld c, h                                       ; $7d65: $4c
    ret c                                         ; $7d66: $d8

    adc [hl]                                      ; $7d67: $8e
    rst $08                                       ; $7d68: $cf
    ld d, d                                       ; $7d69: $52
    ld a, [hl]                                    ; $7d6a: $7e
    sub h                                         ; $7d6b: $94
    inc a                                         ; $7d6c: $3c
    sbc d                                         ; $7d6d: $9a
    push bc                                       ; $7d6e: $c5
    rst $00                                       ; $7d6f: $c7
    dec hl                                        ; $7d70: $2b
    xor h                                         ; $7d71: $ac
    add l                                         ; $7d72: $85
    or h                                          ; $7d73: $b4
    di                                            ; $7d74: $f3
    db $e3                                        ; $7d75: $e3
    ld c, e                                       ; $7d76: $4b
    ld c, $32                                     ; $7d77: $0e $32
    or d                                          ; $7d79: $b2
    sbc l                                         ; $7d7a: $9d
    sub d                                         ; $7d7b: $92
    jp nc, $f17e                                  ; $7d7c: $d2 $7e $f1

    ld a, c                                       ; $7d7f: $79
    xor [hl]                                      ; $7d80: $ae
    ld d, l                                       ; $7d81: $55
    inc bc                                        ; $7d82: $03
    cp c                                          ; $7d83: $b9
    inc c                                         ; $7d84: $0c
    ld h, c                                       ; $7d85: $61
    ld b, a                                       ; $7d86: $47
    dec de                                        ; $7d87: $1b
    rra                                           ; $7d88: $1f
    rst $38                                       ; $7d89: $ff
    ld h, e                                       ; $7d8a: $63

jr_022_7d8b:
    ld c, c                                       ; $7d8b: $49
    dec [hl]                                      ; $7d8c: $35
    ld e, a                                       ; $7d8d: $5f
    sbc l                                         ; $7d8e: $9d
    sub d                                         ; $7d8f: $92
    rra                                           ; $7d90: $1f
    ld e, a                                       ; $7d91: $5f
    ld e, [hl]                                    ; $7d92: $5e
    ld a, [hl]                                    ; $7d93: $7e
    rst $00                                       ; $7d94: $c7
    sbc b                                         ; $7d95: $98

jr_022_7d96:
    or b                                          ; $7d96: $b0
    dec e                                         ; $7d97: $1d
    sbc a                                         ; $7d98: $9f

jr_022_7d99:
    and l                                         ; $7d99: $a5
    ld a, h                                       ; $7d9a: $7c
    dec c                                         ; $7d9b: $0d
    sub [hl]                                      ; $7d9c: $96
    or [hl]                                       ; $7d9d: $b6
    ld a, l                                       ; $7d9e: $7d
    xor e                                         ; $7d9f: $ab
    rst $18                                       ; $7da0: $df
    dec b                                         ; $7da1: $05
    add h                                         ; $7da2: $84
    ld bc, $ca3d                                  ; $7da3: $01 $3d $ca
    db $d3                                        ; $7da6: $d3
    ld hl, sp-$51                                 ; $7da7: $f8 $af
    push bc                                       ; $7da9: $c5
    cp b                                          ; $7daa: $b8
    and d                                         ; $7dab: $a2
    sub $9f                                       ; $7dac: $d6 $9f
    rst $20                                       ; $7dae: $e7
    ld h, d                                       ; $7daf: $62
    ld h, [hl]                                    ; $7db0: $66
    dec e                                         ; $7db1: $1d
    ld l, l                                       ; $7db2: $6d
    daa                                           ; $7db3: $27
    cp l                                          ; $7db4: $bd
    rst $10                                       ; $7db5: $d7
    ld h, b                                       ; $7db6: $60
    ret nc                                        ; $7db7: $d0

    adc c                                         ; $7db8: $89
    rst $10                                       ; $7db9: $d7
    ld h, a                                       ; $7dba: $67
    ld a, [hl-]                                   ; $7dbb: $3a
    ld d, e                                       ; $7dbc: $53
    ld h, d                                       ; $7dbd: $62
    dec bc                                        ; $7dbe: $0b
    rst $38                                       ; $7dbf: $ff
    ld a, l                                       ; $7dc0: $7d
    ld l, l                                       ; $7dc1: $6d
    xor l                                         ; $7dc2: $ad
    ld [$df53], a                                 ; $7dc3: $ea $53 $df
    pop af                                        ; $7dc6: $f1
    jp nc, $f6d8                                  ; $7dc7: $d2 $d8 $f6

    dec h                                         ; $7dca: $25
    sub [hl]                                      ; $7dcb: $96
    add d                                         ; $7dcc: $82
    jr nc, jr_022_7d96                            ; $7dcd: $30 $c7

    db $e4                                        ; $7dcf: $e4
    sbc d                                         ; $7dd0: $9a
    inc [hl]                                      ; $7dd1: $34
    xor e                                         ; $7dd2: $ab
    ld d, e                                       ; $7dd3: $53
    ld a, [c]                                     ; $7dd4: $f2
    db $e3                                        ; $7dd5: $e3
    set 1, e                                      ; $7dd6: $cb $cb
    rst $28                                       ; $7dd8: $ef
    jr jr_022_7dee                                ; $7dd9: $18 $13

    or [hl]                                       ; $7ddb: $b6
    db $e3                                        ; $7ddc: $e3
    or e                                          ; $7ddd: $b3
    sub h                                         ; $7dde: $94
    rst $18                                       ; $7ddf: $df
    add l                                         ; $7de0: $85
    xor [hl]                                      ; $7de1: $ae
    jr jr_022_7d8b                                ; $7de2: $18 $a7

    inc h                                         ; $7de4: $24
    ld [hl], a                                    ; $7de5: $77
    sub [hl]                                      ; $7de6: $96
    dec d                                         ; $7de7: $15
    or l                                          ; $7de8: $b5
    ld a, $d5                                     ; $7de9: $3e $d5
    ld a, h                                       ; $7deb: $7c
    ldh a, [rVBK]                                 ; $7dec: $f0 $4f

jr_022_7dee:
    dec hl                                        ; $7dee: $2b
    scf                                           ; $7def: $37
    sbc h                                         ; $7df0: $9c
    add $38                                       ; $7df1: $c6 $38
    and [hl]                                      ; $7df3: $a6
    dec c                                         ; $7df4: $0d
    jp nz, $9596                                  ; $7df5: $c2 $96 $95

    ld d, a                                       ; $7df8: $57
    ld h, c                                       ; $7df9: $61
    add e                                         ; $7dfa: $83
    inc c                                         ; $7dfb: $0c
    sbc a                                         ; $7dfc: $9f
    cpl                                           ; $7dfd: $2f
    cpl                                           ; $7dfe: $2f
    ccf                                           ; $7dff: $3f
    cpl                                           ; $7e00: $2f
    ld [$3f2b], a                                 ; $7e01: $ea $2b $3f
    ld e, [hl]                                    ; $7e04: $5e
    ld h, c                                       ; $7e05: $61
    sub l                                         ; $7e06: $95
    add $f8                                       ; $7e07: $c6 $f8
    ld l, h                                       ; $7e09: $6c
    jp z, $b36b                                   ; $7e0a: $ca $6b $b3

jr_022_7e0d:
    and h                                         ; $7e0d: $a4
    add hl, de                                    ; $7e0e: $19
    add hl, bc                                    ; $7e0f: $09
    sbc [hl]                                      ; $7e10: $9e
    ld a, h                                       ; $7e11: $7c
    ld l, l                                       ; $7e12: $6d
    inc bc                                        ; $7e13: $03
    sub a                                         ; $7e14: $97
    ld e, $00                                     ; $7e15: $1e $00
    ld h, c                                       ; $7e17: $61
    rst $00                                       ; $7e18: $c7
    db $e4                                        ; $7e19: $e4
    sbc d                                         ; $7e1a: $9a
    inc [hl]                                      ; $7e1b: $34
    xor e                                         ; $7e1c: $ab
    ld d, e                                       ; $7e1d: $53

jr_022_7e1e:
    ld a, [c]                                     ; $7e1e: $f2
    db $e3                                        ; $7e1f: $e3
    set 1, e                                      ; $7e20: $cb $cb
    adc a                                         ; $7e22: $8f
    rst $38                                       ; $7e23: $ff
    ld d, l                                       ; $7e24: $55
    ld c, d                                       ; $7e25: $4a
    or e                                          ; $7e26: $b3
    cpl                                           ; $7e27: $2f
    or c                                          ; $7e28: $b1
    dec e                                         ; $7e29: $1d
    ld h, e                                       ; $7e2a: $63
    jp nz, Jump_022_7c76                          ; $7e2b: $c2 $76 $7c

    sub [hl]                                      ; $7e2e: $96
    ld a, [c]                                     ; $7e2f: $f2
    call c, $e275                                 ; $7e30: $dc $75 $e2
    dec hl                                        ; $7e33: $2b
    ld a, h                                       ; $7e34: $7c
    ld d, a                                       ; $7e35: $57
    inc c                                         ; $7e36: $0c
    sub [hl]                                      ; $7e37: $96
    pop af                                        ; $7e38: $f1
    ld l, c                                       ; $7e39: $69
    ld [hl+], a                                   ; $7e3a: $22
    and e                                         ; $7e3b: $a3
    sbc d                                         ; $7e3c: $9a
    rst $08                                       ; $7e3d: $cf
    ccf                                           ; $7e3e: $3f
    add $35                                       ; $7e3f: $c6 $35
    ld l, c                                       ; $7e41: $69
    halt                                          ; $7e42: $76
    db $ed                                        ; $7e43: $ed
    ld e, c                                       ; $7e44: $59
    add $2e                                       ; $7e45: $c6 $2e
    ld e, e                                       ; $7e47: $5b
    sbc l                                         ; $7e48: $9d
    sub d                                         ; $7e49: $92
    ld b, a                                       ; $7e4a: $47
    ld l, e                                       ; $7e4b: $6b
    db $fd                                        ; $7e4c: $fd
    ld a, [de]                                    ; $7e4d: $1a
    ld c, h                                       ; $7e4e: $4c
    rst $10                                       ; $7e4f: $d7
    ld [hl], $d0                                  ; $7e50: $36 $d0
    inc l                                         ; $7e52: $2c
    ld d, h                                       ; $7e53: $54
    ld b, d                                       ; $7e54: $42
    jr jr_022_7e1e                                ; $7e55: $18 $c7

    db $e4                                        ; $7e57: $e4
    sbc d                                         ; $7e58: $9a
    inc [hl]                                      ; $7e59: $34
    xor e                                         ; $7e5a: $ab
    ld d, e                                       ; $7e5b: $53
    ld a, [c]                                     ; $7e5c: $f2
    db $e3                                        ; $7e5d: $e3
    set 1, e                                      ; $7e5e: $cb $cb
    adc a                                         ; $7e60: $8f
    rst $38                                       ; $7e61: $ff
    ld d, l                                       ; $7e62: $55
    ld c, d                                       ; $7e63: $4a
    or e                                          ; $7e64: $b3
    cpl                                           ; $7e65: $2f
    or c                                          ; $7e66: $b1
    dec e                                         ; $7e67: $1d
    ld h, e                                       ; $7e68: $63
    jp nz, Jump_022_7c76                          ; $7e69: $c2 $76 $7c

    sub [hl]                                      ; $7e6c: $96
    ld a, [c]                                     ; $7e6d: $f2
    call c, $2475                                 ; $7e6e: $dc $75 $24
    db $ed                                        ; $7e71: $ed
    rlca                                          ; $7e72: $07
    ld c, b                                       ; $7e73: $48
    ld b, c                                       ; $7e74: $41
    jr jr_022_7e0d                                ; $7e75: $18 $96

    sub l                                         ; $7e77: $95
    ld d, a                                       ; $7e78: $57
    ld h, c                                       ; $7e79: $61
    dec hl                                        ; $7e7a: $2b
    ccf                                           ; $7e7b: $3f
    ld e, [hl]                                    ; $7e7c: $5e
    ld h, c                                       ; $7e7d: $61
    sub l                                         ; $7e7e: $95
    add $f8                                       ; $7e7f: $c6 $f8
    ld l, h                                       ; $7e81: $6c
    jp z, $836b                                   ; $7e82: $ca $6b $83

    ld h, [hl]                                    ; $7e85: $66
    add hl, de                                    ; $7e86: $19
    ld c, e                                       ; $7e87: $4b
    xor d                                         ; $7e88: $aa
    ld sp, hl                                     ; $7e89: $f9
    ld [$fc94], a                                 ; $7e8a: $ea $94 $fc
    xor [hl]                                      ; $7e8d: $ae
    cp l                                          ; $7e8e: $bd
    ld a, [c]                                     ; $7e8f: $f2
    dec [hl]                                      ; $7e90: $35
    ld e, b                                       ; $7e91: $58
    ld a, h                                       ; $7e92: $7c
    db $db                                        ; $7e93: $db
    rst $10                                       ; $7e94: $d7
    cp h                                          ; $7e95: $bc
    inc hl                                        ; $7e96: $23
    inc c                                         ; $7e97: $0c
    sub [hl]                                      ; $7e98: $96
    pop de                                        ; $7e99: $d1
    ccf                                           ; $7e9a: $3f
    sbc e                                         ; $7e9b: $9b
    rst $20                                       ; $7e9c: $e7
    and b                                         ; $7e9d: $a0
    di                                            ; $7e9e: $f3
    ld e, d                                       ; $7e9f: $5a
    sbc a                                         ; $7ea0: $9f
    rst $20                                       ; $7ea1: $e7
    adc [hl]                                      ; $7ea2: $8e
    ld sp, $3b61                                  ; $7ea3: $31 $61 $3b
    ld a, $4b                                     ; $7ea6: $3e $4b
    ld a, c                                       ; $7ea8: $79
    inc [hl]                                      ; $7ea9: $34
    adc e                                         ; $7eaa: $8b
    rst $10                                       ; $7eab: $d7
    ld h, b                                       ; $7eac: $60
    ld c, d                                       ; $7ead: $4a
    ei                                            ; $7eae: $fb
    ldh a, [rNR51]                                ; $7eaf: $f0 $25
    ld a, b                                       ; $7eb1: $78
    xor d                                         ; $7eb2: $aa
    sbc d                                         ; $7eb3: $9a
    ld l, $18                                     ; $7eb4: $2e $18
    db $dd                                        ; $7eb6: $dd
    dec h                                         ; $7eb7: $25
    db $ed                                        ; $7eb8: $ed
    rlca                                          ; $7eb9: $07
    ld c, b                                       ; $7eba: $48
    reti                                          ; $7ebb: $d9


    ld sp, $6c26                                  ; $7ebc: $31 $26 $6c
    rst $00                                       ; $7ebf: $c7
    ld h, a                                       ; $7ec0: $67
    add hl, hl                                    ; $7ec1: $29
    cp a                                          ; $7ec2: $bf
    dec bc                                        ; $7ec3: $0b
    cp e                                          ; $7ec4: $bb
    or h                                          ; $7ec5: $b4
    sub e                                         ; $7ec6: $93
    sub d                                         ; $7ec7: $92
    ld e, b                                       ; $7ec8: $58
    ld [de], a                                    ; $7ec9: $12
    ld e, d                                       ; $7eca: $5a
    db $eb                                        ; $7ecb: $eb
    cpl                                           ; $7ecc: $2f
    ld c, b                                       ; $7ecd: $48
    sbc a                                         ; $7ece: $9f
    jp nc, $048c                                  ; $7ecf: $d2 $8c $04

    ld c, a                                       ; $7ed2: $4f
    ld a, $30                                     ; $7ed3: $3e $30
    ld h, c                                       ; $7ed5: $61
    sbc b                                         ; $7ed6: $98
    inc b                                         ; $7ed7: $04
    or e                                          ; $7ed8: $b3
    dec h                                         ; $7ed9: $25
    jp $f979                                      ; $7eda: $c3 $79 $f9


    sbc l                                         ; $7edd: $9d
    ld a, h                                       ; $7ede: $7c
    jp hl                                         ; $7edf: $e9


    add d                                         ; $7ee0: $82
    ld c, e                                       ; $7ee1: $4b
    or e                                          ; $7ee2: $b3
    or h                                          ; $7ee3: $b4
    ld [hl], a                                    ; $7ee4: $77
    or d                                          ; $7ee5: $b2
    ld b, $b7                                     ; $7ee6: $06 $b7
    ld b, d                                       ; $7ee8: $42
    db $eb                                        ; $7ee9: $eb
    ld e, c                                       ; $7eea: $59
    sbc d                                         ; $7eeb: $9a
    or c                                          ; $7eec: $b1
    ld e, h                                       ; $7eed: $5c
    sub e                                         ; $7eee: $93
    ld h, [hl]                                    ; $7eef: $66
    cp h                                          ; $7ef0: $bc
    sub d                                         ; $7ef1: $92
    rst $08                                       ; $7ef2: $cf
    ld [hl], e                                    ; $7ef3: $73
    ldh a, [$bf]                                  ; $7ef4: $f0 $bf
    ld [hl], d                                    ; $7ef6: $72
    jp Jump_000_18ae                              ; $7ef7: $c3 $ae $18


    ld d, $af                                     ; $7efa: $16 $af
    ld bc, $4842                                  ; $7efc: $01 $42 $48
    db $db                                        ; $7eff: $db
    ld l, c                                       ; $7f00: $69
    ld a, h                                       ; $7f01: $7c
    ld e, [hl]                                    ; $7f02: $5e
    ld a, [hl]                                    ; $7f03: $7e
    dec l                                         ; $7f04: $2d
    add hl, hl                                    ; $7f05: $29
    push de                                       ; $7f06: $d5
    bit 1, e                                      ; $7f07: $cb $4b
    dec c                                         ; $7f09: $0d
    sub $e2                                       ; $7f0a: $d6 $e2
    ld c, c                                       ; $7f0c: $49
    adc a                                         ; $7f0d: $8f
    jr nc, @-$51                                  ; $7f0e: $30 $ad

    ret                                           ; $7f10: $c9


    adc a                                         ; $7f11: $8f
    push hl                                       ; $7f12: $e5
    sbc d                                         ; $7f13: $9a
    inc [hl]                                      ; $7f14: $34
    xor e                                         ; $7f15: $ab
    ld d, e                                       ; $7f16: $53
    ld a, [c]                                     ; $7f17: $f2
    db $d3                                        ; $7f18: $d3
    halt                                          ; $7f19: $76
    ld a, [de]                                    ; $7f1a: $1a
    sbc a                                         ; $7f1b: $9f
    rla                                           ; $7f1c: $17
    push af                                       ; $7f1d: $f5
    ld l, $18                                     ; $7f1e: $2e $18
    ld d, $af                                     ; $7f20: $16 $af
    pop bc                                        ; $7f22: $c1
    jr z, @+$7f                                   ; $7f23: $28 $7d

    scf                                           ; $7f25: $37
    db $ec                                        ; $7f26: $ec
    and h                                         ; $7f27: $a4
    cp b                                          ; $7f28: $b8
    sub d                                         ; $7f29: $92
    and e                                         ; $7f2a: $a3
    or l                                          ; $7f2b: $b5
    sub b                                         ; $7f2c: $90
    ld [hl+], a                                   ; $7f2d: $22
    add h                                         ; $7f2e: $84
    ld c, h                                       ; $7f2f: $4c
    ret z                                         ; $7f30: $c8

    dec e                                         ; $7f31: $1d
    ld h, h                                       ; $7f32: $64
    ld hl, sp+$49                                 ; $7f33: $f8 $49
    cp a                                          ; $7f35: $bf
    dec bc                                        ; $7f36: $0b
    dec bc                                        ; $7f37: $0b
    ld a, [c]                                     ; $7f38: $f2
    ld d, d                                       ; $7f39: $52
    jr nc, @-$2f                                  ; $7f3a: $30 $cf

    cp c                                          ; $7f3c: $b9
    inc [hl]                                      ; $7f3d: $34
    di                                            ; $7f3e: $f3
    inc e                                         ; $7f3f: $1c
    ld hl, sp+$6b                                 ; $7f40: $f8 $6b
    call c, $8475                                 ; $7f42: $dc $75 $84
    ld bc, $e4a7                                  ; $7f45: $01 $a7 $e4
    sub d                                         ; $7f48: $92
    ld a, [hl]                                    ; $7f49: $7e
    sub l                                         ; $7f4a: $95
    jp nc, $093a                                  ; $7f4b: $d2 $3a $09

    ld [hl], b                                    ; $7f4e: $70
    db $db                                        ; $7f4f: $db
    or c                                          ; $7f50: $b1
    add hl, de                                    ; $7f51: $19
    ld hl, sp+$6b                                 ; $7f52: $f8 $6b
    sbc h                                         ; $7f54: $9c
    sub a                                         ; $7f55: $97
    ld e, a                                       ; $7f56: $5f
    adc e                                         ; $7f57: $8b
    daa                                           ; $7f58: $27
    dec a                                         ; $7f59: $3d
    jp c, Jump_000_2631                           ; $7f5a: $da $31 $26

    ld l, h                                       ; $7f5d: $6c

Jump_022_7f5e:
    rst $00                                       ; $7f5e: $c7
    ld h, a                                       ; $7f5f: $67
    add hl, hl                                    ; $7f60: $29
    ccf                                           ; $7f61: $3f
    cp $c6                                        ; $7f62: $fe $c6
    cp b                                          ; $7f64: $b8
    or $af                                        ; $7f65: $f6 $af
    xor l                                         ; $7f67: $ad
    ld d, l                                       ; $7f68: $55
    ld a, l                                       ; $7f69: $7d
    sbc [hl]                                      ; $7f6a: $9e
    ld h, c                                       ; $7f6b: $61
    adc d                                         ; $7f6c: $8a
    inc h                                         ; $7f6d: $24
    adc a                                         ; $7f6e: $8f
    ld h, [hl]                                    ; $7f6f: $66
    xor c                                         ; $7f70: $a9
    add l                                         ; $7f71: $85
    inc bc                                        ; $7f72: $03
    inc hl                                        ; $7f73: $23
    cp a                                          ; $7f74: $bf

Call_022_7f75:
    ld a, [c]                                     ; $7f75: $f2
    db $e3                                        ; $7f76: $e3
    ld l, a                                       ; $7f77: $6f
    adc h                                         ; $7f78: $8c
    db $e3                                        ; $7f79: $e3
    sub l                                         ; $7f7a: $95
    ld a, h                                       ; $7f7b: $7c
    sbc [hl]                                      ; $7f7c: $9e
    dec hl                                        ; $7f7d: $2b
    ld l, d                                       ; $7f7e: $6a
    db $fd                                        ; $7f7f: $fd
    jp hl                                         ; $7f80: $e9


    ld h, d                                       ; $7f81: $62

jr_022_7f82:
    ld d, d                                       ; $7f82: $52
    jr nc, @-$27                                  ; $7f83: $30 $d7

    ld e, b                                       ; $7f85: $58
    rra                                           ; $7f86: $1f
    ld a, a                                       ; $7f87: $7f
    cp l                                          ; $7f88: $bd
    xor h                                         ; $7f89: $ac
    ld c, c                                       ; $7f8a: $49
    inc sp                                        ; $7f8b: $33

Jump_022_7f8c:
jr_022_7f8c:
    ld l, l                                       ; $7f8c: $6d
    and a                                         ; $7f8d: $a7
    pop af                                        ; $7f8e: $f1
    ld a, c                                       ; $7f8f: $79
    cp c                                          ; $7f90: $b9
    add b                                         ; $7f91: $80
    jr nc, jr_022_7faa                            ; $7f92: $30 $16

    ld a, e                                       ; $7f94: $7b
    ld d, b                                       ; $7f95: $50
    ld a, [hl]                                    ; $7f96: $7e
    ld [hl], l                                    ; $7f97: $75
    ld c, d                                       ; $7f98: $4a
    ld e, $76                                     ; $7f99: $1e $76
    adc h                                         ; $7f9b: $8c
    add hl, bc                                    ; $7f9c: $09
    db $db                                        ; $7f9d: $db
    pop af                                        ; $7f9e: $f1
    ld e, c                                       ; $7f9f: $59
    jp z, $c2ef                                   ; $7fa0: $ca $ef $c2

    add d                                         ; $7fa3: $82
    and h                                         ; $7fa4: $a4
    rst $20                                       ; $7fa5: $e7
    ld c, $72                                     ; $7fa6: $0e $72
    inc l                                         ; $7fa8: $2c
    rra                                           ; $7fa9: $1f

jr_022_7faa:
    sub $42                                       ; $7faa: $d6 $42
    jp c, $b479                                   ; $7fac: $da $79 $b4

    sub $af                                       ; $7faf: $d6 $af
    push bc                                       ; $7fb1: $c5
    cp b                                          ; $7fb2: $b8
    jr nz, @+$69                                  ; $7fb3: $20 $67

    and a                                         ; $7fb5: $a7
    call z, $afcb                                 ; $7fb6: $cc $cb $af
    push bc                                       ; $7fb9: $c5
    sub e                                         ; $7fba: $93
    ld a, [hl]                                    ; $7fbb: $7e
    sbc [hl]                                      ; $7fbc: $9e
    ld [hl], h                                    ; $7fbd: $74
    add e                                         ; $7fbe: $83
    ld [c], a                                     ; $7fbf: $e2
    ld e, l                                       ; $7fc0: $5d
    jr nc, @+$3f                                  ; $7fc1: $30 $3d

    jp z, $2cd3                                   ; $7fc3: $ca $d3 $2c

    or l                                          ; $7fc6: $b5
    jr @+$59                                      ; $7fc7: $18 $57

    call nc, $f3fa                                ; $7fc9: $d4 $fa $f3
    ld e, h                                       ; $7fcc: $5c
    ldh a, [$3e]                                  ; $7fcd: $f0 $3e
    rst $08                                       ; $7fcf: $cf
    ld a, c                                       ; $7fd0: $79
    ld sp, hl                                     ; $7fd1: $f9
    or l                                          ; $7fd2: $b5
    ld a, b                                       ; $7fd3: $78
    jp nc, $becf                                  ; $7fd4: $d2 $cf $be

    ld [bc], a                                    ; $7fd7: $02
    adc [hl]                                      ; $7fd8: $8e
    jr nc, jr_022_7f82                            ; $7fd9: $30 $a7

    and h                                         ; $7fdb: $a4
    adc a                                         ; $7fdc: $8f
    cp a                                          ; $7fdd: $bf
    ld e, [hl]                                    ; $7fde: $5e
    jp nc, $c2f8                                  ; $7fdf: $d2 $f8 $c2

    ld b, a                                       ; $7fe2: $47
    jr jr_022_7f8c                                ; $7fe3: $18 $a7

    and h                                         ; $7fe5: $a4
    inc l                                         ; $7fe6: $2c
    db $fc                                        ; $7fe7: $fc
    ld l, $18                                     ; $7fe8: $2e $18
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
