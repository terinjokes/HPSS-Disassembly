; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

    ld a, [hl+]                                   ; $4000: $2a
    ld b, a                                       ; $4001: $47
    pop bc                                        ; $4002: $c1
    db $ec                                        ; $4003: $ec
    sub h                                         ; $4004: $94
    dec [hl]                                      ; $4005: $35
    ld l, c                                       ; $4006: $69
    and $7c                                       ; $4007: $e6 $7c
    ld [hl], d                                    ; $4009: $72
    ld b, a                                       ; $400a: $47
    jp hl                                         ; $400b: $e9


    dec bc                                        ; $400c: $0b
    sub l                                         ; $400d: $95
    sbc d                                         ; $400e: $9a
    reti                                          ; $400f: $d9


    ld d, a                                       ; $4010: $57
    ret nz                                        ; $4011: $c0

    ei                                            ; $4012: $fb
    ld l, [hl]                                    ; $4013: $6e
    ld e, [hl]                                    ; $4014: $5e
    dec b                                         ; $4015: $05
    ld d, [hl]                                    ; $4016: $56
    and l                                         ; $4017: $a5
    adc c                                         ; $4018: $89
    ld l, h                                       ; $4019: $6c
    ld b, l                                       ; $401a: $45
    xor l                                         ; $401b: $ad
    ccf                                           ; $401c: $3f
    rst $10                                       ; $401d: $d7
    ld a, [$92d3]                                 ; $401e: $fa $d3 $92
    and [hl]                                      ; $4021: $a6
    or e                                          ; $4022: $b3
    ld c, l                                       ; $4023: $4d
    adc h                                         ; $4024: $8c
    ld a, l                                       ; $4025: $7d
    rlca                                          ; $4026: $07
    sub d                                         ; $4027: $92
    inc a                                         ; $4028: $3c
    dec l                                         ; $4029: $2d
    ld c, h                                       ; $402a: $4c
    ld b, e                                       ; $402b: $43
    xor [hl]                                      ; $402c: $ae
    sub a                                         ; $402d: $97
    and $92                                       ; $402e: $e6 $92
    ld sp, $f5a2                                  ; $4030: $31 $a2 $f5
    ld c, d                                       ; $4033: $4a
    or e                                          ; $4034: $b3
    rst $10                                       ; $4035: $d7
    xor d                                         ; $4036: $aa
    adc h                                         ; $4037: $8c
    cp a                                          ; $4038: $bf
    inc [hl]                                      ; $4039: $34
    ei                                            ; $403a: $fb
    ld e, d                                       ; $403b: $5a
    ld a, a                                       ; $403c: $7f
    sbc l                                         ; $403d: $9d
    cp h                                          ; $403e: $bc
    db $e4                                        ; $403f: $e4
    jr nc, jr_02a_407d                            ; $4040: $30 $3b

    ld h, l                                       ; $4042: $65
    rst $00                                       ; $4043: $c7
    ld c, e                                       ; $4044: $4b
    ld h, e                                       ; $4045: $63
    db $db                                        ; $4046: $db
    sub a                                         ; $4047: $97
    ld e, b                                       ; $4048: $58
    ld a, [bc]                                    ; $4049: $0a
    jp c, $a57a                                   ; $404a: $da $7a $a5

    ld e, c                                       ; $404d: $59
    xor b                                         ; $404e: $a8
    call $4482                                    ; $404f: $cd $82 $44
    jr jr_02a_406a                                ; $4052: $18 $16

    rra                                           ; $4054: $1f
    xor a                                         ; $4055: $af
    or b                                          ; $4056: $b0
    db $20, $93                                   ; $4057: $20 $93
    dec l                                         ; $4059: $2d
    db $ed                                        ; $405a: $ed
    dec [hl]                                      ; $405b: $35
    ld l, c                                       ; $405c: $69
    and $b9                                       ; $405d: $e6 $b9
    ldh [$7d], a                                  ; $405f: $e0 $7d
    ld b, $96                                     ; $4061: $06 $96
    add $97                                       ; $4063: $c6 $97
    or $5c                                        ; $4065: $f6 $5c
    jp nc, $e3b4                                  ; $4067: $d2 $b4 $e3

jr_02a_406a:
    cpl                                           ; $406a: $2f
    sbc $fa                                       ; $406b: $de $fa
    rst $08                                       ; $406d: $cf
    adc e                                         ; $406e: $8b
    ld a, [hl-]                                   ; $406f: $3a
    jp nz, $3f3d                                  ; $4070: $c2 $3d $3f

    ld b, [hl]                                    ; $4073: $46
    xor $9a                                       ; $4074: $ee $9a
    inc [hl]                                      ; $4076: $34
    inc bc                                        ; $4077: $03
    or l                                          ; $4078: $b5
    ld a, $5b                                     ; $4079: $3e $5b
    ld hl, sp-$24                                 ; $407b: $f8 $dc

jr_02a_407d:
    cp l                                          ; $407d: $bd
    push af                                       ; $407e: $f5
    ld l, c                                       ; $407f: $69
    ld l, d                                       ; $4080: $6a
    ei                                            ; $4081: $fb
    dec bc                                        ; $4082: $0b
    ld b, d                                       ; $4083: $42
    ld l, b                                       ; $4084: $68
    ld e, [hl]                                    ; $4085: $5e
    ld a, [hl]                                    ; $4086: $7e
    cp h                                          ; $4087: $bc
    ld [hl], $b3                                  ; $4088: $36 $b3
    call nc, $3fac                                ; $408a: $d4 $ac $3f
    xor l                                         ; $408d: $ad
    db $fc                                        ; $408e: $fc
    add hl, de                                    ; $408f: $19
    jp nz, $6527                                  ; $4090: $c2 $27 $65

    sub $b9                                       ; $4093: $d6 $b9
    db $e3                                        ; $4095: $e3
    ld a, a                                       ; $4096: $7f
    ld d, b                                       ; $4097: $50

jr_02a_4098:
    jp nc, $b644                                  ; $4098: $d2 $44 $b6

jr_02a_409b:
    or $cf                                        ; $409b: $f6 $cf
    sub [hl]                                      ; $409d: $96
    ei                                            ; $409e: $fb
    call nz, Call_02a_4a60                        ; $409f: $c4 $60 $4a
    ld l, h                                       ; $40a2: $6c
    push hl                                       ; $40a3: $e5
    ld h, e                                       ; $40a4: $63

Call_02a_40a5:
    ld h, a                                       ; $40a5: $67
    xor a                                         ; $40a6: $af
    ld d, l                                       ; $40a7: $55
    ld e, c                                       ; $40a8: $59
    ld a, d                                       ; $40a9: $7a
    ld a, c                                       ; $40aa: $79
    ld b, c                                       ; $40ab: $41
    dec sp                                        ; $40ac: $3b
    and $ed                                       ; $40ad: $e6 $ed
    ld d, a                                       ; $40af: $57

jr_02a_40b0:
    cp a                                          ; $40b0: $bf
    inc d                                         ; $40b1: $14
    ld c, h                                       ; $40b2: $4c
    rst $20                                       ; $40b3: $e7
    sub d                                         ; $40b4: $92
    ld sp, $c2ee                                  ; $40b5: $31 $ee $c2
    cp h                                          ; $40b8: $bc
    db $fc                                        ; $40b9: $fc
    ld [$d897], a                                 ; $40ba: $ea $97 $d8
    jp nc, $979e                                  ; $40bd: $d2 $9e $97

    ld c, e                                       ; $40c0: $4b
    pop bc                                        ; $40c1: $c1
    cp h                                          ; $40c2: $bc
    xor b                                         ; $40c3: $a8
    xor a                                         ; $40c4: $af
    dec l                                         ; $40c5: $2d
    sub a                                         ; $40c6: $97
    ld [bc], a                                    ; $40c7: $02
    ld e, b                                       ; $40c8: $58
    rst $20                                       ; $40c9: $e7
    or e                                          ; $40ca: $b3
    inc de                                        ; $40cb: $13
    ld a, a                                       ; $40cc: $7f
    sbc [hl]                                      ; $40cd: $9e
    pop bc                                        ; $40ce: $c1
    ld a, e                                       ; $40cf: $7b
    ld a, c                                       ; $40d0: $79
    ld b, c                                       ; $40d1: $41
    jr jr_02a_409b                                ; $40d2: $18 $c7

    ret                                           ; $40d4: $c9


    ld a, l                                       ; $40d5: $7d
    ld h, d                                       ; $40d6: $62
    or b                                          ; $40d7: $b0
    db $eb                                        ; $40d8: $eb
    cp e                                          ; $40d9: $bb
    ret nc                                        ; $40da: $d0

    dec b                                         ; $40db: $05
    inc bc                                        ; $40dc: $03
    dec a                                         ; $40dd: $3d
    ld a, a                                       ; $40de: $7f
    ld d, b                                       ; $40df: $50
    jp nc, Jump_02a_5644                          ; $40e0: $d2 $44 $56

    or e                                          ; $40e3: $b3
    cp $da                                        ; $40e4: $fe $da
    rst $38                                       ; $40e6: $ff
    or h                                          ; $40e7: $b4
    ldh [$5a], a                                  ; $40e8: $e0 $5a
    sbc a                                         ; $40ea: $9f
    ld d, $a6                                     ; $40eb: $16 $a6
    db $fc                                        ; $40ed: $fc
    ld c, d                                       ; $40ee: $4a
    ld a, [de]                                    ; $40ef: $1a
    ld hl, sp+$75                                 ; $40f0: $f8 $75
    ld a, [c]                                     ; $40f2: $f2
    sub d                                         ; $40f3: $92
    jp $94ec                                      ; $40f4: $c3 $ec $94


    ld a, c                                       ; $40f7: $79
    ld d, c                                       ; $40f8: $51
    rst $20                                       ; $40f9: $e7
    xor [hl]                                      ; $40fa: $ae
    ld c, c                                       ; $40fb: $49
    or e                                          ; $40fc: $b3
    ld a, [hl-]                                   ; $40fd: $3a
    dec h                                         ; $40fe: $25
    adc a                                         ; $40ff: $8f
    jr nc, jr_02a_4098                            ; $4100: $30 $96

    dec d                                         ; $4102: $15
    ld h, l                                       ; $4103: $65
    ld d, e                                       ; $4104: $53
    jp c, $af65                                   ; $4105: $da $65 $af

    ld [$fe21], sp                                ; $4108: $08 $21 $fe
    rlca                                          ; $410b: $07
    dec h                                         ; $410c: $25
    ld c, l                                       ; $410d: $4d
    ld h, h                                       ; $410e: $64
    dec bc                                        ; $410f: $0b
    ld [hl], d                                    ; $4110: $72
    xor [hl]                                      ; $4111: $ae
    or c                                          ; $4112: $b1
    ld a, $cf                                     ; $4113: $3e $cf
    or l                                          ; $4115: $b5
    ld l, d                                       ; $4116: $6a
    jr nz, jr_02a_40b0                            ; $4117: $20 $97

    and c                                         ; $4119: $a1
    or l                                          ; $411a: $b5
    ld a, [hl]                                    ; $411b: $7e
    dec c                                         ; $411c: $0d
    and $e5                                       ; $411d: $e6 $e5
    rla                                           ; $411f: $17
    ld l, b                                       ; $4120: $68
    ld hl, sp-$0b                                 ; $4121: $f8 $f5
    rst $38                                       ; $4123: $ff
    adc $cb                                       ; $4124: $ce $cb
    sub h                                         ; $4126: $94
    ret c                                         ; $4127: $d8

    ld [$3c94], a                                 ; $4128: $ea $94 $3c
    ld c, h                                       ; $412b: $4c
    db $db                                        ; $412c: $db
    ld l, c                                       ; $412d: $69
    ld a, h                                       ; $412e: $7c
    ld c, d                                       ; $412f: $4a
    scf                                           ; $4130: $37
    call nc, $6808                                ; $4131: $d4 $08 $68
    daa                                           ; $4134: $27
    ld l, e                                       ; $4135: $6b
    db $d3                                        ; $4136: $d3
    cp $95                                        ; $4137: $fe $95
    ld e, a                                       ; $4139: $5f
    sbc l                                         ; $413a: $9d
    sub d                                         ; $413b: $92
    add a                                         ; $413c: $87
    ld b, c                                       ; $413d: $41
    add [hl]                                      ; $413e: $86
    rst $28                                       ; $413f: $ef
    push hl                                       ; $4140: $e5
    ld d, d                                       ; $4141: $52
    jr nc, @+$6f                                  ; $4142: $30 $6d

    and a                                         ; $4144: $a7
    pop af                                        ; $4145: $f1
    ld a, c                                       ; $4146: $79
    ld sp, hl                                     ; $4147: $f9
    ld a, c                                       ; $4148: $79
    sub c                                         ; $4149: $91
    rst $38                                       ; $414a: $ff
    cp [hl]                                       ; $414b: $be
    sra e                                         ; $414c: $cb $2b
    ld a, e                                       ; $414e: $7b
    ld [hl], $96                                  ; $414f: $36 $96
    ld bc, $96c2                                  ; $4151: $01 $c2 $96
    dec d                                         ; $4154: $15
    ld h, l                                       ; $4155: $65
    ld d, h                                       ; $4156: $54
    di                                            ; $4157: $f3
    ld a, c                                       ; $4158: $79
    ld c, c                                       ; $4159: $49
    inc de                                        ; $415a: $13
    inc d                                         ; $415b: $14
    sbc a                                         ; $415c: $9f
    or [hl]                                       ; $415d: $b6
    db $d3                                        ; $415e: $d3
    ld hl, sp-$44                                 ; $415f: $f8 $bc
    xor b                                         ; $4161: $a8
    and e                                         ; $4162: $a3
    ld e, c                                       ; $4163: $59
    db $ec                                        ; $4164: $ec
    sub l                                         ; $4165: $95
    rra                                           ; $4166: $1f
    rlc a                                         ; $4167: $cb $07
    xor d                                         ; $4169: $aa
    ld sp, hl                                     ; $416a: $f9
    inc [hl]                                      ; $416b: $34
    jp z, Jump_02a_6b2b                           ; $416c: $ca $2b $6b

    ld d, [hl]                                    ; $416f: $56
    and a                                         ; $4170: $a7
    db $e4                                        ; $4171: $e4
    cp c                                          ; $4172: $b9
    or e                                          ; $4173: $b3

Jump_02a_4174:
    xor h                                         ; $4174: $ac
    db $fd                                        ; $4175: $fd
    cp [hl]                                       ; $4176: $be
    ld a, [c]                                     ; $4177: $f2
    xor e                                         ; $4178: $ab
    jp nc, Jump_000_3644                          ; $4179: $d2 $44 $36

    ei                                            ; $417c: $fb
    ld [de], a                                    ; $417d: $12
    ld e, e                                       ; $417e: $5b
    ld a, [de]                                    ; $417f: $1a
    ld b, a                                       ; $4180: $47
    dec sp                                        ; $4181: $3b
    jp hl                                         ; $4182: $e9


    cp l                                          ; $4183: $bd
    ld b, $0b                                     ; $4184: $06 $0b
    ld [de], a                                    ; $4186: $12
    ld h, c                                       ; $4187: $61
    ld b, a                                       ; $4188: $47
    ld b, a                                       ; $4189: $47
    dec b                                         ; $418a: $05
    ld a, a                                       ; $418b: $7f
    ld [hl], $2f                                  ; $418c: $36 $2f
    sub a                                         ; $418e: $97
    ld [bc], a                                    ; $418f: $02
    xor $da                                       ; $4190: $ee $da
    rst $10                                       ; $4192: $d7
    cpl                                           ; $4193: $2f
    dec b                                         ; $4194: $05
    dec bc                                        ; $4195: $0b
    ld a, a                                       ; $4196: $7f
    pop af                                        ; $4197: $f1
    sub $7f                                       ; $4198: $d6 $7f
    ld e, [hl]                                    ; $419a: $5e
    call nc, Call_02a_5ad1                        ; $419b: $d4 $d1 $5a
    sub e                                         ; $419e: $93
    sbc a                                         ; $419f: $9f
    jp z, $49af                                   ; $41a0: $ca $af $49

    inc sp                                        ; $41a3: $33
    jr nc, @-$61                                  ; $41a4: $30 $9d

    ld c, [hl]                                    ; $41a6: $4e
    jp nz, $79b3                                  ; $41a7: $c2 $b3 $79

    xor [hl]                                      ; $41aa: $ae
    cp $df                                        ; $41ab: $fe $df
    ld e, c                                       ; $41ad: $59
    sub e                                         ; $41ae: $93
    ld b, [hl]                                    ; $41af: $46
    or $cd                                        ; $41b0: $f6 $cd
    jp $a692                                      ; $41b2: $c3 $92 $a6


    ld sp, $8bce                                  ; $41b5: $31 $ce $8b
    db $fc                                        ; $41b8: $fc
    xor a                                         ; $41b9: $af
    cp h                                          ; $41ba: $bc
    ld [hl-], a                                   ; $41bb: $32
    sbc b                                         ; $41bc: $98
    ld a, [$aa92]                                 ; $41bd: $fa $92 $aa
    rst $28                                       ; $41c0: $ef
    adc d                                         ; $41c1: $8a
    ld bc, $72c7                                  ; $41c2: $01 $c7 $72
    xor b                                         ; $41c5: $a8
    inc c                                         ; $41c6: $0c
    db $fc                                        ; $41c7: $fc
    jp nz, $eee7                                  ; $41c8: $c2 $e7 $ee

    jp nz, $c320                                  ; $41cb: $c2 $20 $c3

    rst $30                                       ; $41ce: $f7
    ld [hl], d                                    ; $41cf: $72
    add hl, hl                                    ; $41d0: $29
    jr @+$31                                      ; $41d1: $18 $2f

    ld c, c                                       ; $41d3: $49
    ld b, c                                       ; $41d4: $41
    rst $10                                       ; $41d5: $d7
    push af                                       ; $41d6: $f5
    ld c, d                                       ; $41d7: $4a
    ld d, e                                       ; $41d8: $53
    sub e                                         ; $41d9: $93
    ld e, a                                       ; $41da: $5f
    cp h                                          ; $41db: $bc
    ld h, c                                       ; $41dc: $61
    rst $20                                       ; $41dd: $e7
    ld d, d                                       ; $41de: $52
    add b                                         ; $41df: $80
    jr nc, @+$49                                  ; $41e0: $30 $47

    ret                                           ; $41e2: $c9


    xor a                                         ; $41e3: $af
    ld c, c                                       ; $41e4: $49
    inc sp                                        ; $41e5: $33
    add sp, $34                                   ; $41e6: $e8 $34

jr_02a_41e8:
    sub a                                         ; $41e8: $97
    add d                                         ; $41e9: $82
    dec h                                         ; $41ea: $25
    dec l                                         ; $41eb: $2d
    ld a, h                                       ; $41ec: $7c
    xor $ba                                       ; $41ed: $ee $ba
    and a                                         ; $41ef: $a7
    ei                                            ; $41f0: $fb
    ld c, e                                       ; $41f1: $4b
    rst $10                                       ; $41f2: $d7
    ld [hl], l                                    ; $41f3: $75
    ld a, a                                       ; $41f4: $7f
    add hl, hl                                    ; $41f5: $29
    jp c, Jump_000_3581                           ; $41f6: $da $81 $35

    ld l, c                                       ; $41f9: $69
    ld b, $25                                     ; $41fa: $06 $25
    ld c, l                                       ; $41fc: $4d
    ld h, h                                       ; $41fd: $64
    db $eb                                        ; $41fe: $eb
    ld l, b                                       ; $41ff: $68
    or e                                          ; $4200: $b3
    jr nc, jr_02a_41e8                            ; $4201: $30 $e5

    and a                                         ; $4203: $a7
    xor $4f                                       ; $4204: $ee $4f
    ld a, [hl]                                    ; $4206: $7e
    sub e                                         ; $4207: $93
    and $b9                                       ; $4208: $e6 $b9
    ld h, $8d                                     ; $420a: $26 $8d
    inc c                                         ; $420c: $0c

jr_02a_420d:
    call c, $fbb0                                 ; $420d: $dc $b0 $fb
    jr nc, jr_02a_4237                            ; $4210: $30 $25

    or [hl]                                       ; $4212: $b6
    ld hl, sp+$00                                 ; $4213: $f8 $00
    di                                            ; $4215: $f3
    sbc h                                         ; $4216: $9c
    sub a                                         ; $4217: $97
    ld c, e                                       ; $4218: $4b
    ld bc, $8bcc                                  ; $4219: $01 $cc $8b
    ld a, [$5258]                                 ; $421c: $fa $58 $52
    call $2557                                    ; $421f: $cd $57 $25
    ld d, l                                       ; $4222: $55
    cpl                                           ; $4223: $2f
    or h                                          ; $4224: $b4
    ld h, $0d                                     ; $4225: $26 $0d
    jp nz, $8a3d                                  ; $4227: $c2 $3d $8a

    db $fc                                        ; $422a: $fc
    rst $30                                       ; $422b: $f7
    ld e, l                                       ; $422c: $5d
    ld e, [hl]                                    ; $422d: $5e
    add hl, de                                    ; $422e: $19
    ld [hl], h                                    ; $422f: $74
    ld e, l                                       ; $4230: $5d
    db $eb                                        ; $4231: $eb
    rst $08                                       ; $4232: $cf
    push hl                                       ; $4233: $e5
    ld a, $9b                                     ; $4234: $3e $9b
    rst $20                                       ; $4236: $e7

jr_02a_4237:
    add d                                         ; $4237: $82
    rst $30                                       ; $4238: $f7
    ld [hl], l                                    ; $4239: $75
    inc d                                         ; $423a: $14
    ld a, h                                       ; $423b: $7c
    ld e, [hl]                                    ; $423c: $5e
    call nc, Call_02a_45e7                        ; $423d: $d4 $e7 $45
    cp $fb                                        ; $4240: $fe $fb
    ld l, $af                                     ; $4242: $2e $af
    db $ec                                        ; $4244: $ec
    reti                                          ; $4245: $d9


    ld e, b                                       ; $4246: $58
    ld b, $53                                     ; $4247: $06 $53
    ld e, a                                       ; $4249: $5f
    xor e                                         ; $424a: $ab
    add $98                                       ; $424b: $c6 $98
    db $fc                                        ; $424d: $fc
    ccf                                           ; $424e: $3f
    ld [hl], l                                    ; $424f: $75
    reti                                          ; $4250: $d9


    ld d, c                                       ; $4251: $51
    call nz, Call_02a_5966                        ; $4252: $c4 $66 $59
    ei                                            ; $4255: $fb
    ld a, l                                       ; $4256: $7d
    push hl                                       ; $4257: $e5
    rla                                           ; $4258: $17
    rst $18                                       ; $4259: $df
    rst $20                                       ; $425a: $e7
    push hl                                       ; $425b: $e5
    rst $10                                       ; $425c: $d7
    ld b, e                                       ; $425d: $43
    ld [hl-], a                                   ; $425e: $32
    add $5d                                       ; $425f: $c6 $5d
    sbc d                                         ; $4261: $9a
    jp nz, $ec74                                  ; $4262: $c2 $74 $ec

    ld e, d                                       ; $4265: $5a
    ld e, a                                       ; $4266: $5f
    ldh [rNR52], a                                ; $4267: $e0 $26
    ld [hl], l                                    ; $4269: $75
    reti                                          ; $426a: $d9


    ld c, c                                       ; $426b: $49
    rst $28                                       ; $426c: $ef
    dec [hl]                                      ; $426d: $35
    ld e, b                                       ; $426e: $58
    ldh a, [$3e]                                  ; $426f: $f0 $3e
    rst $08                                       ; $4271: $cf
    or l                                          ; $4272: $b5
    ld l, d                                       ; $4273: $6a
    jr nz, jr_02a_420d                            ; $4274: $20 $97

    push de                                       ; $4276: $d5
    and b                                         ; $4277: $a0
    dec bc                                        ; $4278: $0b
    ld b, $ad                                     ; $4279: $06 $ad
    rra                                           ; $427b: $1f
    ld h, e                                       ; $427c: $63
    halt                                          ; $427d: $76
    sbc c                                         ; $427e: $99
    ld h, l                                       ; $427f: $65
    cp h                                          ; $4280: $bc
    ld [bc], a                                    ; $4281: $02
    push de                                       ; $4282: $d5
    ld a, h                                       ; $4283: $7c
    rst $08                                       ; $4284: $cf
    and c                                         ; $4285: $a1
    di                                            ; $4286: $f3
    sub l                                         ; $4287: $95
    ld e, a                                       ; $4288: $5f
    xor d                                         ; $4289: $aa
    call $f073                                    ; $428a: $cd $73 $f0
    cp a                                          ; $428d: $bf
    and $cb                                       ; $428e: $e6 $cb
    inc a                                         ; $4290: $3c
    sbc c                                         ; $4291: $99
    ld [hl], $08                                  ; $4292: $36 $08
    inc bc                                        ; $4294: $03
    dec l                                         ; $4295: $2d
    and h                                         ; $4296: $a4
    sbc l                                         ; $4297: $9d
    sbc a                                         ; $4298: $9f
    bit 7, l                                      ; $4299: $cb $7d
    ld [hl], $cf                                  ; $429b: $36 $cf
    dec b                                         ; $429d: $05
    rst $28                                       ; $429e: $ef
    db $eb                                        ; $429f: $eb
    jr z, @-$06                                   ; $42a0: $28 $f8

    cp h                                          ; $42a2: $bc
    xor b                                         ; $42a3: $a8
    rst $08                                       ; $42a4: $cf
    adc e                                         ; $42a5: $8b
    db $fc                                        ; $42a6: $fc
    rst $30                                       ; $42a7: $f7
    ld e, l                                       ; $42a8: $5d
    ld e, [hl]                                    ; $42a9: $5e
    reti                                          ; $42aa: $d9


    or e                                          ; $42ab: $b3
    or c                                          ; $42ac: $b1
    inc c                                         ; $42ad: $0c
    halt                                          ; $42ae: $76
    ld l, c                                       ; $42af: $69
    ld e, [hl]                                    ; $42b0: $5e
    ld a, [hl]                                    ; $42b1: $7e
    halt                                          ; $42b2: $76
    ld c, d                                       ; $42b3: $4a
    ei                                            ; $42b4: $fb
    ld [hl-], a                                   ; $42b5: $32
    or $b4                                        ; $42b6: $f6 $b4
    ld a, [hl+]                                   ; $42b8: $2a
    ld b, l                                       ; $42b9: $45
    ld l, $4b                                     ; $42ba: $2e $4b
    ld b, c                                       ; $42bc: $41
    or e                                          ; $42bd: $b3
    ld hl, sp-$26                                 ; $42be: $f8 $da
    rst $10                                       ; $42c0: $d7
    ld d, a                                       ; $42c1: $57
    ld l, [hl]                                    ; $42c2: $6e
    adc b                                         ; $42c3: $88
    sub $f3                                       ; $42c4: $d6 $f3
    rst $20                                       ; $42c6: $e7
    push hl                                       ; $42c7: $e5
    ld d, d                                       ; $42c8: $52
    ld a, l                                       ; $42c9: $7d
    push hl                                       ; $42ca: $e5
    rst $00                                       ; $42cb: $c7
    dec hl                                        ; $42cc: $2b
    call z, $b9a5                                 ; $42cd: $cc $a5 $b9
    inc d                                         ; $42d0: $14
    call z, $e073                                 ; $42d1: $cc $73 $e0
    xor a                                         ; $42d4: $af
    ld [hl], c                                    ; $42d5: $71
    ld a, h                                       ; $42d6: $7c
    ld d, c                                       ; $42d7: $51
    ld a, a                                       ; $42d8: $7f
    db $eb                                        ; $42d9: $eb
    res 5, [hl]                                   ; $42da: $cb $ae
    rst $10                                       ; $42dc: $d7
    ld h, b                                       ; $42dd: $60
    add c                                         ; $42de: $81
    ld d, c                                       ; $42df: $51
    ld h, c                                       ; $42e0: $61
    sub a                                         ; $42e1: $97
    ld [bc], a                                    ; $42e2: $02
    add h                                         ; $42e3: $84
    ld bc, $c9ad                                  ; $42e4: $01 $ad $c9
    adc a                                         ; $42e7: $8f
    push hl                                       ; $42e8: $e5
    sbc d                                         ; $42e9: $9a
    cpl                                           ; $42ea: $2f
    xor e                                         ; $42eb: $ab
    ld d, e                                       ; $42ec: $53
    ld a, [c]                                     ; $42ed: $f2
    db $d3                                        ; $42ee: $d3
    halt                                          ; $42ef: $76
    ld a, [de]                                    ; $42f0: $1a
    rst $18                                       ; $42f1: $df
    ld [hl], c                                    ; $42f2: $71
    pop de                                        ; $42f3: $d1
    ret c                                         ; $42f4: $d8

    halt                                          ; $42f5: $76
    or e                                          ; $42f6: $b3
    or b                                          ; $42f7: $b0
    sbc c                                         ; $42f8: $99
    rla                                           ; $42f9: $17
    ld sp, hl                                     ; $42fa: $f9
    rst $28                                       ; $42fb: $ef
    cp e                                          ; $42fc: $bb
    cp h                                          ; $42fd: $bc
    or d                                          ; $42fe: $b2
    ld h, a                                       ; $42ff: $67

jr_02a_4300:
    ld h, e                                       ; $4300: $63
    add hl, de                                    ; $4301: $19
    ld [hl], h                                    ; $4302: $74
    sbc l                                         ; $4303: $9d
    ld h, l                                       ; $4304: $65
    db $ed                                        ; $4305: $ed
    inc [hl]                                      ; $4306: $34
    ld b, c                                       ; $4307: $41
    pop af                                        ; $4308: $f1
    sub l                                         ; $4309: $95
    dec de                                        ; $430a: $1b
    ld l, $6d                                     ; $430b: $2e $6d
    ld a, e                                       ; $430d: $7b
    cp d                                          ; $430e: $ba
    db $e3                                        ; $430f: $e3
    push hl                                       ; $4310: $e5
    cp a                                          ; $4311: $bf
    cp [hl]                                       ; $4312: $be
    xor d                                         ; $4313: $aa
    ld l, b                                       ; $4314: $68
    ld h, a                                       ; $4315: $67
    ld d, c                                       ; $4316: $51
    pop bc                                        ; $4317: $c1
    rst $10                                       ; $4318: $d7
    cp h                                          ; $4319: $bc
    jp z, $d894                                   ; $431a: $ca $94 $d8

    ld h, d                                       ; $431d: $62
    ld a, [hl+]                                   ; $431e: $2a
    dec a                                         ; $431f: $3d
    ld e, e                                       ; $4320: $5b
    cp c                                          ; $4321: $b9
    pop hl                                        ; $4322: $e1
    inc a                                         ; $4323: $3c
    ld [hl], a                                    ; $4324: $77
    adc h                                         ; $4325: $8c
    add hl, bc                                    ; $4326: $09
    db $db                                        ; $4327: $db
    pop af                                        ; $4328: $f1
    ld e, c                                       ; $4329: $59
    jp z, Jump_02a_5fcf                           ; $432a: $ca $cf $5f

    ld d, $18                                     ; $432d: $16 $18
    dec d                                         ; $432f: $15
    ld [hl], $2f                                  ; $4330: $36 $2f
    adc a                                         ; $4332: $8f
    db $10                                        ; $4333: $10
    ld [hl-], a                                   ; $4334: $32
    ld hl, $f477                                  ; $4335: $21 $77 $f4
    sub $97                                       ; $4338: $d6 $97
    add l                                         ; $433a: $85
    sub a                                         ; $433b: $97
    jr jr_02a_4300                                ; $433c: $18 $c2

    rst $00                                       ; $433e: $c7
    dec de                                        ; $433f: $1b
    dec d                                         ; $4340: $15
    ld [hl], $2f                                  ; $4341: $36 $2f
    ccf                                           ; $4343: $3f
    cp [hl]                                       ; $4344: $be
    xor b                                         ; $4345: $a8
    ld [hl], a                                    ; $4346: $77
    push bc                                       ; $4347: $c5
    daa                                           ; $4348: $27
    ld e, l                                       ; $4349: $5d
    ldh a, [$27]                                  ; $434a: $f0 $27
    xor $9a                                       ; $434c: $ee $9a
    sub a                                         ; $434e: $97
    add l                                         ; $434f: $85
    rst $08                                       ; $4350: $cf
    ld e, b                                       ; $4351: $58
    cp h                                          ; $4352: $bc
    ld d, h                                       ; $4353: $54
    db $db                                        ; $4354: $db
    and l                                         ; $4355: $a5
    ld a, c                                       ; $4356: $79
    cp c                                          ; $4357: $b9
    inc d                                         ; $4358: $14
    ret nz                                        ; $4359: $c0

    cp h                                          ; $435a: $bc
    xor b                                         ; $435b: $a8
    adc a                                         ; $435c: $8f
    dec h                                         ; $435d: $25
    push de                                       ; $435e: $d5
    ld d, [hl]                                    ; $435f: $56
    dec h                                         ; $4360: $25
    ld d, l                                       ; $4361: $55
    cpl                                           ; $4362: $2f
    or h                                          ; $4363: $b4
    and $0b                                       ; $4364: $e6 $0b
    jp c, Jump_000_2971                           ; $4366: $da $71 $29

    pop bc                                        ; $4369: $c1
    ei                                            ; $436a: $fb
    cp h                                          ; $436b: $bc
    xor b                                         ; $436c: $a8
    adc a                                         ; $436d: $8f
    ld h, l                                       ; $436e: $65
    ret nz                                        ; $436f: $c0

    sbc l                                         ; $4370: $9d
    ld d, d                                       ; $4371: $52
    ld l, l                                       ; $4372: $6d
    ld a, h                                       ; $4373: $7c
    ld d, c                                       ; $4374: $51
    rst $18                                       ; $4375: $df
    push af                                       ; $4376: $f5
    dec b                                         ; $4377: $05
    ld b, [hl]                                    ; $4378: $46
    add l                                         ; $4379: $85
    ld bc, $c842                                  ; $437a: $01 $42 $c8
    adc e                                         ; $437d: $8b
    ld a, d                                       ; $437e: $7a
    dec c                                         ; $437f: $0d
    sub $7e                                       ; $4380: $d6 $7e
    rst $20                                       ; $4382: $e7
    rst $38                                       ; $4383: $ff
    ld l, c                                       ; $4384: $69
    rst $00                                       ; $4385: $c7
    sbc b                                         ; $4386: $98
    or b                                          ; $4387: $b0
    dec e                                         ; $4388: $1d
    sbc a                                         ; $4389: $9f
    and l                                         ; $438a: $a5
    db $fc                                        ; $438b: $fc
    sub h                                         ; $438c: $94
    ld l, d                                       ; $438d: $6a
    dec sp                                        ; $438e: $3b
    push hl                                       ; $438f: $e5
    ld d, [hl]                                    ; $4390: $56
    add hl, de                                    ; $4391: $19
    dec d                                         ; $4392: $15

Jump_02a_4393:
    halt                                          ; $4393: $76
    ld e, h                                       ; $4394: $5c
    call nc, $23f0                                ; $4395: $d4 $f0 $23
    jp nz, $392d                                  ; $4398: $c2 $2d $39

    cpl                                           ; $439b: $2f
    cpl                                           ; $439c: $2f
    cp a                                          ; $439d: $bf
    dec bc                                        ; $439e: $0b
    db $d3                                        ; $439f: $d3
    sbc l                                         ; $43a0: $9d
    ld [hl], d                                    ; $43a1: $72
    xor e                                         ; $43a2: $ab
    adc h                                         ; $43a3: $8c
    ld a, [bc]                                    ; $43a4: $0a
    dec sp                                        ; $43a5: $3b
    ld l, $6a                                     ; $43a6: $2e $6a
    ld hl, sp+$71                                 ; $43a8: $f8 $71
    sub a                                         ; $43aa: $97
    xor h                                         ; $43ab: $ac
    add hl, de                                    ; $43ac: $19
    xor l                                         ; $43ad: $ad
    rst $08                                       ; $43ae: $cf
    db $10                                        ; $43af: $10
    ld b, $96                                     ; $43b0: $06 $96
    jp hl                                         ; $43b2: $e9


    and l                                         ; $43b3: $a5

jr_02a_43b4:
    sbc d                                         ; $43b4: $9a
    rrca                                          ; $43b5: $0f
    or h                                          ; $43b6: $b4
    cp c                                          ; $43b7: $b9
    ld d, h                                       ; $43b8: $54
    dec de                                        ; $43b9: $1b
    push hl                                       ; $43ba: $e5
    jp nz, $ef94                                  ; $43bb: $c2 $94 $ef

    add d                                         ; $43be: $82
    ld bc, $7f3d                                  ; $43bf: $01 $3d $7f
    ld b, l                                       ; $43c2: $45
    xor l                                         ; $43c3: $ad
    ccf                                           ; $43c4: $3f
    rst $08                                       ; $43c5: $cf
    dec d                                         ; $43c6: $15
    inc hl                                        ; $43c7: $23
    jp nc, Jump_02a_73cc                          ; $43c8: $d2 $cc $73

    or $25                                        ; $43cb: $f6 $25
    or [hl]                                       ; $43cd: $b6
    sub $97                                       ; $43ce: $d6 $97
    ldh a, [rNR52]                                ; $43d0: $f0 $26
    dec a                                         ; $43d2: $3d
    ld [hl], a                                    ; $43d3: $77
    xor l                                         ; $43d4: $ad
    ld a, [hl+]                                   ; $43d5: $2a
    jp nc, $f5a0                                  ; $43d6: $d2 $a0 $f5

    db $fc                                        ; $43d9: $fc
    push de                                       ; $43da: $d5
    add hl, hl                                    ; $43db: $29
    ld sp, hl                                     ; $43dc: $f9
    ld b, c                                       ; $43dd: $41
    ld sp, hl                                     ; $43de: $f9
    ld a, [de]                                    ; $43df: $1a
    inc c                                         ; $43e0: $0c
    ld [hl-], a                                   ; $43e1: $32
    ld a, h                                       ; $43e2: $7c
    cp [hl]                                       ; $43e3: $be
    cp h                                          ; $43e4: $bc
    db $fc                                        ; $43e5: $fc
    sub d                                         ; $43e6: $92
    and $e5                                       ; $43e7: $e6 $e5
    ld h, a                                       ; $43e9: $67
    ld e, a                                       ; $43ea: $5f
    ld bc, $1d9f                                  ; $43eb: $01 $9f $1d
    inc sp                                        ; $43ee: $33
    and l                                         ; $43ef: $a5
    dec bc                                        ; $43f0: $0b
    ld b, $27                                     ; $43f1: $06 $27
    dec bc                                        ; $43f3: $0b
    jp c, $3771                                   ; $43f4: $da $71 $37

    ld d, [hl]                                    ; $43f7: $56
    ld h, l                                       ; $43f8: $65
    halt                                          ; $43f9: $76

Jump_02a_43fa:
    ld a, [de]                                    ; $43fa: $1a
    ld h, d                                       ; $43fb: $62
    ld l, e                                       ; $43fc: $6b
    jp nc, $d2ec                                  ; $43fd: $d2 $ec $d2

    cp h                                          ; $4400: $bc
    db $fc                                        ; $4401: $fc
    inc d                                         ; $4402: $14
    ld e, h                                       ; $4403: $5c
    sub d                                         ; $4404: $92
    ld [hl-], a                                   ; $4405: $32
    ld l, h                                       ; $4406: $6c
    and $c9                                       ; $4407: $e6 $c9
    cp a                                          ; $4409: $bf
    ld [hl], h                                    ; $440a: $74
    pop bc                                        ; $440b: $c1
    xor l                                         ; $440c: $ad
    ld a, [hl+]                                   ; $440d: $2a
    jp nc, $9974                                  ; $440e: $d2 $74 $99

    ld h, l                                       ; $4411: $65
    cp h                                          ; $4412: $bc
    jp nz, $9a5c                                  ; $4413: $c2 $5c $9a

    ld c, e                                       ; $4416: $4b
    pop bc                                        ; $4417: $c1
    inc a                                         ; $4418: $3c
    rst $00                                       ; $4419: $c7
    xor e                                         ; $441a: $ab
    ret nc                                        ; $441b: $d0

    sbc d                                         ; $441c: $9a
    inc [hl]                                      ; $441d: $34
    call c, $ac9d                                 ; $441e: $dc $9d $ac
    pop de                                        ; $4421: $d1
    adc $66                                       ; $4422: $ce $66
    and b                                         ; $4424: $a0
    sub a                                         ; $4425: $97
    xor l                                         ; $4426: $ad
    ld c, c                                       ; $4427: $49
    or e                                          ; $4428: $b3
    and d                                         ; $4429: $a2
    ld l, h                                       ; $442a: $6c
    ld a, [hl-]                                   ; $442b: $3a
    ld h, $1a                                     ; $442c: $26 $1a
    jr nz, jr_02a_43b4                            ; $442e: $20 $84

    jr nc, jr_02a_445f                            ; $4430: $30 $2d

    and l                                         ; $4432: $a5
    ld [hl], h                                    ; $4433: $74
    pop bc                                        ; $4434: $c1
    cp l                                          ; $4435: $bd
    jp nc, $33cc                                  ; $4436: $d2 $cc $33

    or d                                          ; $4439: $b2
    sbc l                                         ; $443a: $9d
    inc l                                         ; $443b: $2c
    ld l, b                                       ; $443c: $68
    daa                                           ; $443d: $27
    ld l, e                                       ; $443e: $6b
    or h                                          ; $443f: $b4
    or e                                          ; $4440: $b3
    sbc c                                         ; $4441: $99
    ld c, $3c                                     ; $4442: $0e $3c
    and l                                         ; $4444: $a5
    sbc c                                         ; $4445: $99
    or [hl]                                       ; $4446: $b6
    db $d3                                        ; $4447: $d3
    ld hl, sp+$74                                 ; $4448: $f8 $74
    ld c, h                                       ; $444a: $4c
    inc [hl]                                      ; $444b: $34
    ld c, b                                       ; $444c: $48
    sbc d                                         ; $444d: $9a
    rst $20                                       ; $444e: $e7
    add d                                         ; $444f: $82
    rst $30                                       ; $4450: $f7
    sub l                                         ; $4451: $95
    dec de                                        ; $4452: $1b
    ld l, $8d                                     ; $4453: $2e $8d
    cpl                                           ; $4455: $2f
    db $ed                                        ; $4456: $ed
    or l                                          ; $4457: $b5
    sbc a                                         ; $4458: $9f
    ld c, l                                       ; $4459: $4d
    adc c                                         ; $445a: $89
    db $ed                                        ; $445b: $ed
    sub d                                         ; $445c: $92
    rst $20                                       ; $445d: $e7
    ld e, h                                       ; $445e: $5c

jr_02a_445f:
    jp nc, $e3b4                                  ; $445f: $d2 $b4 $e3

    and e                                         ; $4462: $a3
    ld e, c                                       ; $4463: $59
    ld l, d                                       ; $4464: $6a
    sub $9f                                       ; $4465: $d6 $9f
    ld b, [hl]                                    ; $4467: $46
    ld a, c                                       ; $4468: $79
    ld h, l                                       ; $4469: $65
    call Call_000_352a                            ; $446a: $cd $2a $35
    ld b, c                                       ; $446d: $41
    pop af                                        ; $446e: $f1
    sub l                                         ; $446f: $95
    dec de                                        ; $4470: $1b
    and d                                         ; $4471: $a2
    sbc l                                         ; $4472: $9d
    ld a, [c]                                     ; $4473: $f2
    sub $1b                                       ; $4474: $d6 $1b
    db $e3                                        ; $4476: $e3
    xor a                                         ; $4477: $af
    db $fd                                        ; $4478: $fd
    pop af                                        ; $4479: $f1
    cp [hl]                                       ; $447a: $be
    push af                                       ; $447b: $f5
    reti                                          ; $447c: $d9


    xor [hl]                                      ; $447d: $ae
    ld [hl], e                                    ; $447e: $73
    rst $20                                       ; $447f: $e7
    sbc c                                         ; $4480: $99
    call c, $b129                                 ; $4481: $dc $29 $b1
    dec b                                         ; $4484: $05
    jp hl                                         ; $4485: $e9


    inc sp                                        ; $4486: $33
    sbc l                                         ; $4487: $9d
    add hl, hl                                    ; $4488: $29
    adc h                                         ; $4489: $8c
    rst $38                                       ; $448a: $ff
    jr jr_02a_449e                                ; $448b: $18 $11

    ld b, $47                                     ; $448d: $06 $47
    dec de                                        ; $448f: $1b
    ld b, a                                       ; $4490: $47
    ld [$4761], sp                                ; $4491: $08 $61 $47
    push bc                                       ; $4494: $c5
    jr c, jr_02a_44c6                             ; $4495: $38 $2f

    ld a, [c]                                     ; $4497: $f2
    cp a                                          ; $4498: $bf
    or h                                          ; $4499: $b4
    rst $10                                       ; $449a: $d7
    and h                                         ; $449b: $a4
    add hl, de                                    ; $449c: $19
    ld a, a                                       ; $449d: $7f

jr_02a_449e:
    ld h, e                                       ; $449e: $63
    sbc h                                         ; $449f: $9c
    ld a, h                                       ; $44a0: $7c
    push af                                       ; $44a1: $f5
    rst $10                                       ; $44a2: $d7
    ld a, [$ef63]                                 ; $44a3: $fa $63 $ef
    ld c, a                                       ; $44a6: $4f
    ld a, [hl]                                    ; $44a7: $7e
    sub e                                         ; $44a8: $93
    and [hl]                                      ; $44a9: $a6
    call nz, Call_02a_5076                        ; $44aa: $c4 $76 $50
    cp a                                          ; $44ad: $bf
    db $eb                                        ; $44ae: $eb
    db $e4                                        ; $44af: $e4
    dec h                                         ; $44b0: $25
    add a                                         ; $44b1: $87
    pop af                                        ; $44b2: $f1
    scf                                           ; $44b3: $37
    add $b5                                       ; $44b4: $c6 $b5
    ld a, a                                       ; $44b6: $7f
    xor [hl]                                      ; $44b7: $ae
    push af                                       ; $44b8: $f5
    and a                                         ; $44b9: $a7
    reti                                          ; $44ba: $d9


    sub d                                         ; $44bb: $92
    pop hl                                        ; $44bc: $e1
    adc [hl]                                      ; $44bd: $8e
    sub a                                         ; $44be: $97
    add $b6                                       ; $44bf: $c6 $b6
    cpl                                           ; $44c1: $2f
    or c                                          ; $44c2: $b1
    inc d                                         ; $44c3: $14
    add h                                         ; $44c4: $84
    ret nc                                        ; $44c5: $d0

jr_02a_44c6:
    ld b, c                                       ; $44c6: $41
    db $fd                                        ; $44c7: $fd
    xor [hl]                                      ; $44c8: $ae
    sub e                                         ; $44c9: $93
    sub a                                         ; $44ca: $97
    inc e                                         ; $44cb: $1c
    or $5a                                        ; $44cc: $f6 $5a
    sub l                                         ; $44ce: $95
    ld l, $18                                     ; $44cf: $2e $18
    rlca                                          ; $44d1: $07
    push af                                       ; $44d2: $f5
    cp e                                          ; $44d3: $bb
    rst $10                                       ; $44d4: $d7
    xor d                                         ; $44d5: $aa
    ld [hl], h                                    ; $44d6: $74
    pop bc                                        ; $44d7: $c1
    cp l                                          ; $44d8: $bd
    jp nc, $d8c8                                  ; $44d9: $d2 $c8 $d8

    ei                                            ; $44dc: $fb
    sub e                                         ; $44dd: $93
    rst $18                                       ; $44de: $df
    and h                                         ; $44df: $a4
    add c                                         ; $44e0: $81
    xor e                                         ; $44e1: $ab
    jr c, jr_02a_4530                             ; $44e2: $38 $4c

    ld a, l                                       ; $44e4: $7d
    rra                                           ; $44e5: $1f
    rst $18                                       ; $44e6: $df
    ld a, [$acb4]                                 ; $44e7: $fa $b4 $ac
    ld d, l                                       ; $44ea: $55
    ld sp, $faab                                  ; $44eb: $31 $ab $fa
    inc a                                         ; $44ee: $3c
    jp Jump_02a_4914                              ; $44ef: $c3 $14 $49


    ld a, [hl]                                    ; $44f2: $7e
    ld [hl], h                                    ; $44f3: $74
    add e                                         ; $44f4: $83
    ld [c], a                                     ; $44f5: $e2
    ld l, b                                       ; $44f6: $68
    daa                                           ; $44f7: $27
    rst $38                                       ; $44f8: $ff
    ei                                            ; $44f9: $fb
    ld c, [hl]                                    ; $44fa: $4e
    ld d, $b4                                     ; $44fb: $16 $b4
    db $e3                                        ; $44fd: $e3
    ld l, [hl]                                    ; $44fe: $6e
    xor h                                         ; $44ff: $ac
    jp z, $e7d4                                   ; $4500: $ca $d4 $e7

    push hl                                       ; $4503: $e5
    rla                                           ; $4504: $17
    ld [$3da5], a                                 ; $4505: $ea $a5 $3d
    cp c                                          ; $4508: $b9
    jr z, @+$57                                   ; $4509: $28 $55

    adc a                                         ; $450b: $8f
    halt                                          ; $450c: $76
    ld c, d                                       ; $450d: $4a
    ld a, [c]                                     ; $450e: $f2
    dec bc                                        ; $450f: $0b
    sbc $d7                                       ; $4510: $de $d7
    sub $aa                                       ; $4512: $d6 $aa
    ld a, $cf                                     ; $4514: $3e $cf
    or l                                          ; $4516: $b5
    sbc a                                         ; $4517: $9f
    ld [hl], c                                    ; $4518: $71
    and a                                         ; $4519: $a7
    ld sp, $ed2e                                  ; $451a: $31 $2e $ed
    dec [hl]                                      ; $451d: $35
    ld l, c                                       ; $451e: $69
    ret nc                                        ; $451f: $d0

    inc l                                         ; $4520: $2c
    dec [hl]                                      ; $4521: $35
    db $eb                                        ; $4522: $eb
    adc a                                         ; $4523: $8f
    sbc $fa                                       ; $4524: $de $fa
    or d                                          ; $4526: $b2
    or $3f                                        ; $4527: $f6 $3f
    dec l                                         ; $4529: $2d
    ld c, h                                       ; $452a: $4c
    ld sp, hl                                     ; $452b: $f9
    add hl, hl                                    ; $452c: $29
    inc d                                         ; $452d: $14
    dec c                                         ; $452e: $0d
    sbc a                                         ; $452f: $9f

jr_02a_4530:
    dec l                                         ; $4530: $2d
    db $ed                                        ; $4531: $ed
    dec e                                         ; $4532: $1d
    cpl                                           ; $4533: $2f
    adc l                                         ; $4534: $8d
    ld l, l                                       ; $4535: $6d
    ld e, a                                       ; $4536: $5f
    ld h, d                                       ; $4537: $62
    add hl, hl                                    ; $4538: $29
    inc bc                                        ; $4539: $03
    scf                                           ; $453a: $37
    db $ec                                        ; $453b: $ec
    ret                                           ; $453c: $c9


    ld bc, $3d61                                  ; $453d: $01 $61 $3d
    jp z, Jump_000_1585                           ; $4540: $ca $85 $15

    add l                                         ; $4543: $85
    or l                                          ; $4544: $b5
    rst $38                                       ; $4545: $ff
    ld l, c                                       ; $4546: $69
    ld e, [hl]                                    ; $4547: $5e
    ld a, [hl]                                    ; $4548: $7e
    ld a, h                                       ; $4549: $7c
    ld a, [bc]                                    ; $454a: $0a
    ld hl, sp-$68                                 ; $454b: $f8 $98
    ld [hl], $4b                                  ; $454d: $36 $4b
    ld a, e                                       ; $454f: $7b
    ld h, c                                       ; $4550: $61
    or e                                          ; $4551: $b3
    ld a, b                                       ; $4552: $78
    db $ed                                        ; $4553: $ed
    ld b, a                                       ; $4554: $47
    dec sp                                        ; $4555: $3b
    sub $fa                                       ; $4556: $d6 $fa
    jp nc, $93b4                                  ; $4558: $d2 $b4 $93

    dec [hl]                                      ; $455b: $35
    xor e                                         ; $455c: $ab
    ld d, e                                       ; $455d: $53
    ld a, [c]                                     ; $455e: $f2

jr_02a_455f:
    jr nc, jr_02a_455f                            ; $455f: $30 $fe

    rla                                           ; $4561: $17
    inc de                                        ; $4562: $13
    ld a, h                                       ; $4563: $7c
    db $fd                                        ; $4564: $fd
    dec e                                         ; $4565: $1d
    call nc, Call_02a_4aef                        ; $4566: $d4 $ef $4a
    ld a, [de]                                    ; $4569: $1a
    ld hl, sp+$75                                 ; $456a: $f8 $75
    ld a, [c]                                     ; $456c: $f2
    sub d                                         ; $456d: $92
    jp $94ec                                      ; $456e: $c3 $ec $94


    dec e                                         ; $4571: $1d
    cpl                                           ; $4572: $2f
    adc l                                         ; $4573: $8d
    ld l, l                                       ; $4574: $6d
    ld e, a                                       ; $4575: $5f
    ld h, d                                       ; $4576: $62
    add hl, hl                                    ; $4577: $29
    ld [$c703], sp                                ; $4578: $08 $03 $c7
    ld e, d                                       ; $457b: $5a
    sbc a                                         ; $457c: $9f
    and $e5                                       ; $457d: $e6 $e5
    rst $10                                       ; $457f: $d7
    ld l, d                                       ; $4580: $6a
    ld l, h                                       ; $4581: $6c
    dec sp                                        ; $4582: $3b
    ld a, [hl]                                    ; $4583: $7e
    rst $00                                       ; $4584: $c7
    ret c                                         ; $4585: $d8

    ld [hl], $4c                                  ; $4586: $36 $4c
    adc c                                         ; $4588: $89
    db $ed                                        ; $4589: $ed
    ld [hl], h                                    ; $458a: $74
    or l                                          ; $458b: $b5
    ld a, $55                                     ; $458c: $3e $55
    ld d, c                                       ; $458e: $51
    ld a, c                                       ; $458f: $79
    sbc b                                         ; $4590: $98
    jp z, $294f                                   ; $4591: $ca $4f $29

    sub b                                         ; $4594: $90
    ld h, [hl]                                    ; $4595: $66
    db $fc                                        ; $4596: $fc
    push af                                       ; $4597: $f5
    ld [hl-], a                                   ; $4598: $32
    inc bc                                        ; $4599: $03
    ld l, b                                       ; $459a: $68
    dec a                                         ; $459b: $3d
    jp z, $f337                                   ; $459c: $ca $37 $f3

    sub d                                         ; $459f: $92
    ld h, $28                                     ; $45a0: $26 $28
    ld a, $fe                                     ; $45a2: $3e $fe
    rst $00                                       ; $45a4: $c7
    cp a                                          ; $45a5: $bf
    db $fc                                        ; $45a6: $fc
    cp h                                          ; $45a7: $bc
    db $fc                                        ; $45a8: $fc
    sub d                                         ; $45a9: $92
    ld h, d                                       ; $45aa: $62
    or e                                          ; $45ab: $b3
    and h                                         ; $45ac: $a4
    add a                                         ; $45ad: $87
    pop af                                        ; $45ae: $f1
    dec h                                         ; $45af: $25
    ld d, a                                       ; $45b0: $57
    and l                                         ; $45b1: $a5
    adc c                                         ; $45b2: $89
    ld l, h                                       ; $45b3: $6c
    db $ed                                        ; $45b4: $ed
    ld d, a                                       ; $45b5: $57
    ld e, a                                       ; $45b6: $5f
    ld c, e                                       ; $45b7: $4b
    ld l, h                                       ; $45b8: $6c
    cp h                                          ; $45b9: $bc

Call_02a_45ba:
Jump_02a_45ba:
    cp h                                          ; $45ba: $bc
    ld e, h                                       ; $45bb: $5c
    sbc d                                         ; $45bc: $9a
    sbc l                                         ; $45bd: $9d
    ld [hl-], a                                   ; $45be: $32
    cpl                                           ; $45bf: $2f
    cp a                                          ; $45c0: $bf
    sub $34                                       ; $45c1: $d6 $34

jr_02a_45c3:
    ldh a, [$eb]                                  ; $45c3: $f0 $eb
    ld h, [hl]                                    ; $45c5: $66
    ld a, [hl-]                                   ; $45c6: $3a
    ld l, b                                       ; $45c7: $68
    dec l                                         ; $45c8: $2d
    rst $38                                       ; $45c9: $ff
    ld l, e                                       ; $45ca: $6b
    jp nc, Jump_000_258c                          ; $45cb: $d2 $8c $25

    ld c, a                                       ; $45ce: $4f
    ldh [$7a], a                                  ; $45cf: $e0 $7a
    dec b                                         ; $45d1: $05
    db $10                                        ; $45d2: $10
    ld b, $a7                                     ; $45d3: $06 $a7
    inc h                                         ; $45d5: $24
    ld [hl], a                                    ; $45d6: $77
    sub h                                         ; $45d7: $94
    call c, $fa51                                 ; $45d8: $dc $51 $fa
    inc [hl]                                      ; $45db: $34
    ret nc                                        ; $45dc: $d0

    ld c, e                                       ; $45dd: $4b
    call c, $e275                                 ; $45de: $dc $75 $e2
    dec hl                                        ; $45e1: $2b
    inc a                                         ; $45e2: $3c
    ld b, d                                       ; $45e3: $42
    ld [$3d03], sp                                ; $45e4: $08 $03 $3d

Call_02a_45e7:
    adc d                                         ; $45e7: $8a
    ld a, [$0d20]                                 ; $45e8: $fa $20 $0d
    ld sp, $bc58                                  ; $45eb: $31 $58 $bc
    push af                                       ; $45ee: $f5
    rst $18                                       ; $45ef: $df
    ld l, c                                       ; $45f0: $69
    and $8a                                       ; $45f1: $e6 $8a

jr_02a_45f3:
    ld a, h                                       ; $45f3: $7c
    adc h                                         ; $45f4: $8c
    ld [$2703], sp                                ; $45f5: $08 $03 $27
    sbc e                                         ; $45f8: $9b
    or b                                          ; $45f9: $b0
    dec e                                         ; $45fa: $1d
    sbc a                                         ; $45fb: $9f
    cp e                                          ; $45fc: $bb
    ret nc                                        ; $45fd: $d0

    add h                                         ; $45fe: $84
    db $ed                                        ; $45ff: $ed
    ld hl, sp-$24                                 ; $4600: $f8 $dc
    dec b                                         ; $4602: $05
    ld [hl+], a                                   ; $4603: $22
    ld [$4703], sp                                ; $4604: $08 $03 $47
    push bc                                       ; $4607: $c5
    jr c, jr_02a_45c3                             ; $4608: $38 $b9

    ld b, c                                       ; $460a: $41
    ld [hl], c                                    ; $460b: $71
    add h                                         ; $460c: $84
    ret nc                                        ; $460d: $d0

    inc [hl]                                      ; $460e: $34
    add $c9                                       ; $460f: $c6 $c9
    dec c                                         ; $4611: $0d
    adc d                                         ; $4612: $8a
    rrca                                          ; $4613: $0f
    ld hl, $a964                                  ; $4614: $21 $64 $a9
    push bc                                       ; $4617: $c5
    jr c, @+$01                                   ; $4618: $38 $ff

    jr jr_02a_45f3                                ; $461a: $18 $d7

    and h                                         ; $461c: $a4
    ld b, c                                       ; $461d: $41
    ld [$dd61], sp                                ; $461e: $08 $61 $dd
    ld bc, $211c                                  ; $4621: $01 $1c $21
    call nc, Call_000_12fa                        ; $4624: $d4 $fa $12
    sbc $a4                                       ; $4627: $de $a4
    ld b, a                                       ; $4629: $47
    ld [$7659], sp                                ; $462a: $08 $59 $76
    sbc [hl]                                      ; $462d: $9e
    ld bc, $795f                                  ; $462e: $01 $5f $79
    dec d                                         ; $4631: $15
    or [hl]                                       ; $4632: $b6
    db $d3                                        ; $4633: $d3
    call z, $f915                                 ; $4634: $cc $15 $f9
    jr @-$17                                      ; $4637: $18 $e7

    ld a, [de]                                    ; $4639: $1a
    db $eb                                        ; $463a: $eb
    sub a                                         ; $463b: $97
    add d                                         ; $463c: $82
    ld a, c                                       ; $463d: $79
    ld c, $32                                     ; $463e: $0e $32
    db $fc                                        ; $4640: $fc
    and h                                         ; $4641: $a4
    ld b, a                                       ; $4642: $47
    ld l, e                                       ; $4643: $6b

Jump_02a_4644:
    db $fd                                        ; $4644: $fd
    ld b, c                                       ; $4645: $41
    ld a, [de]                                    ; $4646: $1a
    ld h, d                                       ; $4647: $62
    rst $08                                       ; $4648: $cf
    and [hl]                                      ; $4649: $a6
    or [hl]                                       ; $464a: $b6
    add sp, $65                                   ; $464b: $e8 $65
    ld [$1603], sp                                ; $464d: $08 $03 $16
    ld e, a                                       ; $4650: $5f
    ld l, b                                       ; $4651: $68
    ret nz                                        ; $4652: $c0

    ld d, a                                       ; $4653: $57
    call nc, Call_02a_6bfa                        ; $4654: $d4 $fa $6b
    rst $38                                       ; $4657: $ff
    db $d3                                        ; $4658: $d3
    ld e, d                                       ; $4659: $5a
    ld c, b                                       ; $465a: $48
    dec sp                                        ; $465b: $3b
    ccf                                           ; $465c: $3f
    dec c                                         ; $465d: $0d
    db $f4                                        ; $465e: $f4
    ld d, d                                       ; $465f: $52
    rla                                           ; $4660: $17
    inc c                                         ; $4661: $0c
    sub [hl]                                      ; $4662: $96
    ld a, c                                       ; $4663: $79
    cp c                                          ; $4664: $b9
    ld d, h                                       ; $4665: $54
    ld e, a                                       ; $4666: $5f
    ld sp, hl                                     ; $4667: $f9
    ld a, [de]                                    ; $4668: $1a
    inc l                                         ; $4669: $2c
    ret z                                         ; $466a: $c8

    ld c, e                                       ; $466b: $4b
    pop bc                                        ; $466c: $c1
    inc a                                         ; $466d: $3c
    rst $20                                       ; $466e: $e7
    rra                                           ; $466f: $1f
    db $e3                                        ; $4670: $e3
    ld e, d                                       ; $4671: $5a
    ld c, b                                       ; $4672: $48
    dec sp                                        ; $4673: $3b
    cp a                                          ; $4674: $bf
    sub d                                         ; $4675: $92
    db $fc                                        ; $4676: $fc
    inc a                                         ; $4677: $3c
    rla                                           ; $4678: $17
    cp h                                          ; $4679: $bc
    rst $08                                       ; $467a: $cf
    ld [hl], e                                    ; $467b: $73
    ld e, [hl]                                    ; $467c: $5e
    ld a, [hl]                                    ; $467d: $7e
    dec l                                         ; $467e: $2d
    sbc [hl]                                      ; $467f: $9e
    db $f4                                        ; $4680: $f4
    ld e, l                                       ; $4681: $5d
    jr nc, jr_02a_46c1                            ; $4682: $30 $3d

    ld a, a                                       ; $4684: $7f
    ld b, l                                       ; $4685: $45
    xor l                                         ; $4686: $ad
    ccf                                           ; $4687: $3f
    rst $08                                       ; $4688: $cf
    dec b                                         ; $4689: $05
    add hl, sp                                    ; $468a: $39
    rst $08                                       ; $468b: $cf
    dec e                                         ; $468c: $1d
    ld h, e                                       ; $468d: $63
    jp nz, Jump_02a_7c76                          ; $468e: $c2 $76 $7c

    sub [hl]                                      ; $4691: $96
    ld a, [c]                                     ; $4692: $f2
    ld l, b                                       ; $4693: $68
    dec a                                         ; $4694: $3d
    adc d                                         ; $4695: $8a
    ld a, d                                       ; $4696: $7a
    dec c                                         ; $4697: $0d
    add $17                                       ; $4698: $c6 $17
    push af                                       ; $469a: $f5
    pop af                                        ; $469b: $f1
    ccf                                           ; $469c: $3f
    jr z, jr_02a_4708                             ; $469d: $28 $69

    ld [hl+], a                                   ; $469f: $22
    ld e, e                                       ; $46a0: $5b
    ld d, c                                       ; $46a1: $51
    db $eb                                        ; $46a2: $eb
    adc a                                         ; $46a3: $8f
    dec h                                         ; $46a4: $25
    db $fd                                        ; $46a5: $fd
    inc [hl]                                      ; $46a6: $34
    ld a, b                                       ; $46a7: $78
    sbc b                                         ; $46a8: $98

jr_02a_46a9:
    ld b, $89                                     ; $46a9: $06 $89
    jr nc, jr_02a_46f4                            ; $46ab: $30 $47

    dec de                                        ; $46ad: $1b
    rra                                           ; $46ae: $1f
    rst $38                                       ; $46af: $ff
    dec [hl]                                      ; $46b0: $35
    db $eb                                        ; $46b1: $eb
    cpl                                           ; $46b2: $2f
    ld c, b                                       ; $46b3: $48
    rra                                           ; $46b4: $1f
    push hl                                       ; $46b5: $e5
    ld a, [hl-]                                   ; $46b6: $3a
    sub d                                         ; $46b7: $92
    ld l, c                                       ; $46b8: $69
    ld [hl], a                                    ; $46b9: $77
    reti                                          ; $46ba: $d9


    ld d, c                                       ; $46bb: $51
    call nz, Call_02a_7fc6                        ; $46bc: $c4 $c6 $7f
    ld c, l                                       ; $46bf: $4d
    ld a, [hl]                                    ; $46c0: $7e

jr_02a_46c1:
    and e                                         ; $46c1: $a3
    db $f4                                        ; $46c2: $f4
    add c                                         ; $46c3: $81
    jp hl                                         ; $46c4: $e9


    ld [hl], h                                    ; $46c5: $74
    ld [de], a                                    ; $46c6: $12
    sbc [hl]                                      ; $46c7: $9e
    call Call_02a_7573                            ; $46c8: $cd $73 $75
    ld c, d                                       ; $46cb: $4a
    ld a, [hl]                                    ; $46cc: $7e
    jp c, $e34e                                   ; $46cd: $da $4e $e3

    di                                            ; $46d0: $f3
    ld a, [c]                                     ; $46d1: $f2
    ld l, e                                       ; $46d2: $6b
    pop af                                        ; $46d3: $f1
    and h                                         ; $46d4: $a4
    ld e, a                                       ; $46d5: $5f
    jp z, $8b8e                                   ; $46d6: $ca $8e $8b

    add $b6                                       ; $46d9: $c6 $b6
    sbc e                                         ; $46db: $9b
    xor c                                         ; $46dc: $a9
    ld c, a                                       ; $46dd: $4f
    ld h, e                                       ; $46de: $63
    ld b, h                                       ; $46df: $44
    jr jr_02a_46a9                                ; $46e0: $18 $c7

    ld h, l                                       ; $46e2: $65
    adc h                                         ; $46e3: $8c
    ret                                           ; $46e4: $c9


    cpl                                           ; $46e5: $2f
    ld a, h                                       ; $46e6: $7c
    inc [hl]                                      ; $46e7: $34
    set 3, d                                      ; $46e8: $cb $da
    rst $28                                       ; $46ea: $ef
    ld l, e                                       ; $46eb: $6b
    jp nc, $62d4                                  ; $46ec: $d2 $d4 $62

    sbc h                                         ; $46ef: $9c
    sub a                                         ; $46f0: $97
    ld c, e                                       ; $46f1: $4b
    push af                                       ; $46f2: $f5
    add hl, sp                                    ; $46f3: $39

jr_02a_46f4:
    ld a, a                                       ; $46f4: $7f
    xor e                                         ; $46f5: $ab
    sbc a                                         ; $46f6: $9f
    or [hl]                                       ; $46f7: $b6
    db $d3                                        ; $46f8: $d3
    ld hl, sp-$26                                 ; $46f9: $f8 $da
    ld a, [c]                                     ; $46fb: $f2
    ld e, d                                       ; $46fc: $5a
    cp a                                          ; $46fd: $bf
    inc d                                         ; $46fe: $14
    ld c, h                                       ; $46ff: $4c
    rlca                                          ; $4700: $07
    ld d, l                                       ; $4701: $55
    ret                                           ; $4702: $c9


    adc h                                         ; $4703: $8c
    inc de                                        ; $4704: $13
    inc de                                        ; $4705: $13
    ld a, a                                       ; $4706: $7f
    ld a, [de]                                    ; $4707: $1a

jr_02a_4708:
    add sp, $25                                   ; $4708: $e8 $25
    xor $f8                                       ; $470a: $ee $f8
    inc h                                         ; $470c: $24
    ld e, a                                       ; $470d: $5f
    sub e                                         ; $470e: $93
    and [hl]                                      ; $470f: $a6
    dec hl                                        ; $4710: $2b
    ld b, $16                                     ; $4711: $06 $16
    xor a                                         ; $4713: $af
    pop bc                                        ; $4714: $c1
    ld [hl], h                                    ; $4715: $74
    sbc l                                         ; $4716: $9d
    db $eb                                        ; $4717: $eb
    call Call_02a_7cbc                            ; $4718: $cd $bc $7c
    or e                                          ; $471b: $b3
    or [hl]                                       ; $471c: $b6
    ld [de], a                                    ; $471d: $12
    dec a                                         ; $471e: $3d
    sbc e                                         ; $471f: $9b
    sub a                                         ; $4720: $97
    ld e, a                                       ; $4721: $5f
    ld b, [hl]                                    ; $4722: $46
    or [hl]                                       ; $4723: $b6
    adc [hl]                                      ; $4724: $8e
    and c                                         ; $4725: $a1
    dec bc                                        ; $4726: $0b
    dec h                                         ; $4727: $25
    ld a, h                                       ; $4728: $7c
    ld [hl], d                                    ; $4729: $72
    ld b, b                                       ; $472a: $40
    or e                                          ; $472b: $b3
    inc c                                         ; $472c: $0c
    db $fc                                        ; $472d: $fc
    add $b8                                       ; $472e: $c6 $b8
    and d                                         ; $4730: $a2
    sub $9f                                       ; $4731: $d6 $9f
    sub a                                         ; $4733: $97
    ld e, a                                       ; $4734: $5f
    ld d, l                                       ; $4735: $55
    db $f4                                        ; $4736: $f4
    ld [de], a                                    ; $4737: $12
    db $ec                                        ; $4738: $ec
    jp nc, Jump_02a_66c2                          ; $4739: $d2 $c2 $66

    ld l, c                                       ; $473c: $69
    db $db                                        ; $473d: $db
    or a                                          ; $473e: $b7
    ld a, d                                       ; $473f: $7a
    add h                                         ; $4740: $84
    ld bc, $3f3d                                  ; $4741: $01 $3d $3f
    ld b, [hl]                                    ; $4744: $46
    xor $4e                                       ; $4745: $ee $4e
    ld d, $b4                                     ; $4747: $16 $b4
    sub $1b                                       ; $4749: $d6 $1b
    sub h                                         ; $474b: $94
    ld d, c                                       ; $474c: $51
    ld l, l                                       ; $474d: $6d
    daa                                           ; $474e: $27
    rst $18                                       ; $474f: $df
    and b                                         ; $4750: $a0
    ld a, b                                       ; $4751: $78
    or e                                          ; $4752: $b3
    ld d, [hl]                                    ; $4753: $56
    dec d                                         ; $4754: $15
    ld l, c                                       ; $4755: $69
    sub $3d                                       ; $4756: $d6 $3d

jr_02a_4758:
    db $dd                                        ; $4758: $dd
    ld e, a                                       ; $4759: $5f
    halt                                          ; $475a: $76
    ld e, [hl]                                    ; $475b: $5e
    ld e, [hl]                                    ; $475c: $5e
    add d                                         ; $475d: $82
    add hl, de                                    ; $475e: $19
    sbc b                                         ; $475f: $98

Jump_02a_4760:
    ld a, [$82a2]                                 ; $4760: $fa $a2 $82
    and e                                         ; $4763: $a3
    push af                                       ; $4764: $f5
    call nc, $2beb                                ; $4765: $d4 $eb $2b
    cpl                                           ; $4768: $2f
    ccf                                           ; $4769: $3f
    dec sp                                        ; $476a: $3b
    ld h, l                                       ; $476b: $65
    xor l                                         ; $476c: $ad
    ld a, [de]                                    ; $476d: $1a
    ret z                                         ; $476e: $c8

    ld h, l                                       ; $476f: $65
    ld l, b                                       ; $4770: $68
    ld b, a                                       ; $4771: $47
    ld de, $4b1b                                  ; $4772: $11 $1b $4b
    xor d                                         ; $4775: $aa
    ld sp, hl                                     ; $4776: $f9
    call nz, $d2d0                                ; $4777: $c4 $d0 $d2
    or [hl]                                       ; $477a: $b6
    pop de                                        ; $477b: $d1
    inc l                                         ; $477c: $2c
    ld e, [hl]                                    ; $477d: $5e
    adc e                                         ; $477e: $8b
    ld [hl], c                                    ; $477f: $71
    db $ed                                        ; $4780: $ed
    rra                                           ; $4781: $1f
    sbc a                                         ; $4782: $9f
    ld [bc], a                                    ; $4783: $02
    ccf                                           ; $4784: $3f
    dec sp                                        ; $4785: $3b
    ld h, l                                       ; $4786: $65
    ld c, l                                       ; $4787: $4d
    sbc d                                         ; $4788: $9a
    ld e, l                                       ; $4789: $5d
    ld a, e                                       ; $478a: $7b
    ld c, l                                       ; $478b: $4d
    sbc d                                         ; $478c: $9a
    or c                                          ; $478d: $b1
    ld b, h                                       ; $478e: $44
    jr jr_02a_4758                                ; $478f: $18 $c7

    ld e, d                                       ; $4791: $5a
    sbc a                                         ; $4792: $9f
    ld l, $d5                                     ; $4793: $2e $d5
    ret nc                                        ; $4795: $d0

    ld c, [hl]                                    ; $4796: $4e
    ld a, a                                       ; $4797: $7f
    ld h, l                                       ; $4798: $65
    call $97ec                                    ; $4799: $cd $ec $97
    jp hl                                         ; $479c: $e9


    ld a, b                                       ; $479d: $78
    adc l                                         ; $479e: $8d
    push af                                       ; $479f: $f5
    ld e, l                                       ; $47a0: $5d
    sbc d                                         ; $47a1: $9a
    sub a                                         ; $47a2: $97
    rra                                           ; $47a3: $1f
    sbc a                                         ; $47a4: $9f
    ret                                           ; $47a5: $c9


    and b                                         ; $47a6: $a0
    dec hl                                        ; $47a7: $2b
    ld b, $96                                     ; $47a8: $06 $96
    ld e, d                                       ; $47aa: $5a
    jr c, jr_02a_47f7                             ; $47ab: $38 $4a

    ld e, a                                       ; $47ad: $5f
    sub b                                         ; $47ae: $90
    sub a                                         ; $47af: $97
    add d                                         ; $47b0: $82
    ld e, l                                       ; $47b1: $5d
    sbc d                                         ; $47b2: $9a
    rla                                           ; $47b3: $17
    push af                                       ; $47b4: $f5
    reti                                          ; $47b5: $d9


    add hl, hl                                    ; $47b6: $29
    rrca                                          ; $47b7: $0f
    sbc $05                                       ; $47b8: $de $05
    inc bc                                        ; $47ba: $03
    cp l                                          ; $47bb: $bd
    cp [hl]                                       ; $47bc: $be
    ld c, h                                       ; $47bd: $4c
    push hl                                       ; $47be: $e5
    ld [hl], a                                    ; $47bf: $77
    db $ed                                        ; $47c0: $ed
    dec [hl]                                      ; $47c1: $35
    ld e, a                                       ; $47c2: $5f
    add $2b                                       ; $47c3: $c6 $2b
    ld sp, hl                                     ; $47c5: $f9
    db $fc                                        ; $47c6: $fc
    ld h, l                                       ; $47c7: $65
    ldh [$da], a                                  ; $47c8: $e0 $da
    ld c, h                                       ; $47ca: $4c
    ld a, l                                       ; $47cb: $7d
    xor l                                         ; $47cc: $ad
    add hl, de                                    ; $47cd: $19
    ldh a, [$2a]                                  ; $47ce: $f0 $2a
    ld c, $5d                                     ; $47d0: $0e $5d
    or [hl]                                       ; $47d2: $b6
    sub e                                         ; $47d3: $93
    ld [hl-], a                                   ; $47d4: $32
    db $eb                                        ; $47d5: $eb
    dec hl                                        ; $47d6: $2b
    cpl                                           ; $47d7: $2f
    adc a                                         ; $47d8: $8f
    sub $a3                                       ; $47d9: $d6 $a3
    xor b                                         ; $47db: $a8
    rrca                                          ; $47dc: $0f
    ld l, [hl]                                    ; $47dd: $6e
    or h                                          ; $47de: $b4
    cp [hl]                                       ; $47df: $be
    inc [hl]                                      ; $47e0: $34
    inc bc                                        ; $47e1: $03
    scf                                           ; $47e2: $37
    or [hl]                                       ; $47e3: $b6
    cp l                                          ; $47e4: $bd
    and h                                         ; $47e5: $a4
    ld a, c                                       ; $47e6: $79
    ld sp, hl                                     ; $47e7: $f9
    dec b                                         ; $47e8: $05
    sub d                                         ; $47e9: $92
    add [hl]                                      ; $47ea: $86
    ret c                                         ; $47eb: $d8

    ld l, $cc                                     ; $47ec: $2e $cc
    ret nc                                        ; $47ee: $d0

    xor l                                         ; $47ef: $ad
    ld d, d                                       ; $47f0: $52
    ld l, b                                       ; $47f1: $68
    db $ed                                        ; $47f2: $ed
    sbc b                                         ; $47f3: $98
    ret                                           ; $47f4: $c9


    ret nc                                        ; $47f5: $d0

    ld a, d                                       ; $47f6: $7a

jr_02a_47f7:
    sub h                                         ; $47f7: $94
    sub a                                         ; $47f8: $97
    xor a                                         ; $47f9: $af
    pop bc                                        ; $47fa: $c1
    ld [hl], h                                    ; $47fb: $74
    add [hl]                                      ; $47fc: $86
    ld l, [hl]                                    ; $47fd: $6e
    sub l                                         ; $47fe: $95
    ld b, d                                       ; $47ff: $42
    cp e                                          ; $4800: $bb

jr_02a_4801:
    inc [hl]                                      ; $4801: $34
    cpl                                           ; $4802: $2f
    cpl                                           ; $4803: $2f
    ccf                                           ; $4804: $3f
    cpl                                           ; $4805: $2f
    ld [$5835], a                                 ; $4806: $ea $35 $58
    ld sp, $6be2                                  ; $4809: $31 $e2 $6b
    dec hl                                        ; $480c: $2b
    adc e                                         ; $480d: $8b
    dec c                                         ; $480e: $0d
    ld e, d                                       ; $480f: $5a
    rst $08                                       ; $4810: $cf
    xor a                                         ; $4811: $af
    ret                                           ; $4812: $c9


    cpl                                           ; $4813: $2f
    ld c, b                                       ; $4814: $48
    ld [hl+], a                                   ; $4815: $22
    sbc l                                         ; $4816: $9d
    ld a, l                                       ; $4817: $7d
    adc c                                         ; $4818: $89
    call $afcb                                    ; $4819: $cd $cb $af
    sub e                                         ; $481c: $93
    add hl, hl                                    ; $481d: $29
    di                                            ; $481e: $f3
    ld [hl], d                                    ; $481f: $72
    add hl, hl                                    ; $4820: $29
    ld b, b                                       ; $4821: $40
    jr jr_02a_4861                                ; $4822: $18 $3d

    adc e                                         ; $4824: $8b
    ld a, [$768a]                                 ; $4825: $fa $8a $76
    ld a, [hl-]                                   ; $4828: $3a
    ld c, a                                       ; $4829: $4f
    or b                                          ; $482a: $b0
    ld l, e                                       ; $482b: $6b
    adc a                                         ; $482c: $8f
    cpl                                           ; $482d: $2f
    ld [$462b], a                                 ; $482e: $ea $2b $46
    ld a, h                                       ; $4831: $7c
    ld e, [hl]                                    ; $4832: $5e
    ld a, [hl]                                    ; $4833: $7e
    add [hl]                                      ; $4834: $86
    ld l, [hl]                                    ; $4835: $6e
    sub l                                         ; $4836: $95
    ld b, d                                       ; $4837: $42
    or e                                          ; $4838: $b3
    cpl                                           ; $4839: $2f
    ld sp, $8198                                  ; $483a: $31 $98 $81
    reti                                          ; $483d: $d9


    ld d, a                                       ; $483e: $57
    ret nz                                        ; $483f: $c0

    cp e                                          ; $4840: $bb
    ld h, d                                       ; $4841: $62
    and a                                         ; $4842: $a7
    and h                                         ; $4843: $a4
    sub a                                         ; $4844: $97

jr_02a_4845:
    ld c, e                                       ; $4845: $4b
    or l                                          ; $4846: $b5
    ld e, l                                       ; $4847: $5d
    sbc d                                         ; $4848: $9a
    sub a                                         ; $4849: $97
    rst $18                                       ; $484a: $df
    ld [hl], c                                    ; $484b: $71
    add hl, hl                                    ; $484c: $29
    rrca                                          ; $484d: $0f
    ld a, $fe                                     ; $484e: $3e $fe
    add $b8                                       ; $4850: $c6 $b8
    ld h, d                                       ; $4852: $62
    call nz, Call_02a_7cd7                        ; $4853: $c4 $d7 $7c
    reti                                          ; $4856: $d9


    or l                                          ; $4857: $b5
    rst $10                                       ; $4858: $d7
    cp h                                          ; $4859: $bc
    inc c                                         ; $485a: $0c
    ld e, h                                       ; $485b: $5c
    sbc e                                         ; $485c: $9b
    pop af                                        ; $485d: $f1
    rst $10                                       ; $485e: $d7
    set 0, d                                      ; $485f: $cb $c2

jr_02a_4861:
    ld e, a                                       ; $4861: $5f
    jp z, Jump_02a_538e                           ; $4862: $ca $8e $53

    ld a, [bc]                                    ; $4865: $0a
    ret nc                                        ; $4866: $d0

    ld c, [hl]                                    ; $4867: $4e
    db $fc                                        ; $4868: $fc
    rst $28                                       ; $4869: $ef
    call z, $e65f                                 ; $486a: $cc $5f $e6
    push hl                                       ; $486d: $e5
    rst $10                                       ; $486e: $d7
    ld d, c                                       ; $486f: $51
    cpl                                           ; $4870: $2f
    ld l, b                                       ; $4871: $68
    dec a                                         ; $4872: $3d
    cp a                                          ; $4873: $bf
    ld h, $bf                                     ; $4874: $26 $bf
    jr nz, jr_02a_4801                            ; $4876: $20 $89

    ld [hl], h                                    ; $4878: $74
    ret nc                                        ; $4879: $d0

    adc c                                         ; $487a: $89
    rst $10                                       ; $487b: $d7
    ld [hl], a                                    ; $487c: $77
    ret                                           ; $487d: $c9


    ld e, a                                       ; $487e: $5f
    and $7c                                       ; $487f: $e6 $7c
    xor [hl]                                      ; $4881: $ae
    and e                                         ; $4882: $a3
    ld [c], a                                     ; $4883: $e2
    rst $30                                       ; $4884: $f7
    ld h, c                                       ; $4885: $61
    sbc [hl]                                      ; $4886: $9e
    add e                                         ; $4887: $83
    ld d, a                                       ; $4888: $57
    xor c                                         ; $4889: $a9
    ld a, [bc]                                    ; $488a: $0a
    jp nz, Jump_02a_7b16                          ; $488b: $c2 $16 $7b

    sub [hl]                                      ; $488e: $96
    ld e, d                                       ; $488f: $5a
    cp b                                          ; $4890: $b8
    jr nz, jr_02a_48c2                            ; $4891: $20 $2f

    dec b                                         ; $4893: $05
    cp e                                          ; $4894: $bb
    inc [hl]                                      ; $4895: $34
    cpl                                           ; $4896: $2f
    cpl                                           ; $4897: $2f
    rst $08                                       ; $4898: $cf
    sbc l                                         ; $4899: $9d
    ld h, l                                       ; $489a: $65
    cp h                                          ; $489b: $bc
    sub d                                         ; $489c: $92
    rst $28                                       ; $489d: $ef
    jr c, jr_02a_4845                             ; $489e: $38 $a5

    nop                                           ; $48a0: $00
    ld h, c                                       ; $48a1: $61
    ld b, a                                       ; $48a2: $47
    pop af                                        ; $48a3: $f1
    ld [hl], d                                    ; $48a4: $72
    add e                                         ; $48a5: $83
    ld [c], a                                     ; $48a6: $e2
    ld l, b                                       ; $48a7: $68
    dec l                                         ; $48a8: $2d
    cp c                                          ; $48a9: $b9
    ldh a, [$b9]                                  ; $48aa: $f0 $b9
    ld l, e                                       ; $48ac: $6b
    ld d, l                                       ; $48ad: $55
    sub c                                         ; $48ae: $91
    add [hl]                                      ; $48af: $86
    dec sp                                        ; $48b0: $3b
    and l                                         ; $48b1: $a5
    jp c, Jump_02a_5f5a                           ; $48b2: $da $5a $5f

    jp nz, $f49b                                  ; $48b5: $c2 $9b $f4

    db $e3                                        ; $48b8: $e3
    ld l, a                                       ; $48b9: $6f
    adc h                                         ; $48ba: $8c
    dec bc                                        ; $48bb: $0b
    ld [hl], d                                    ; $48bc: $72
    ld c, c                                       ; $48bd: $49
    ccf                                           ; $48be: $3f
    ld e, [hl]                                    ; $48bf: $5e
    dec de                                        ; $48c0: $1b
    or h                                          ; $48c1: $b4

jr_02a_48c2:
    sub e                                         ; $48c2: $93
    dec [hl]                                      ; $48c3: $35
    jp c, Jump_02a_70d9                           ; $48c4: $da $d9 $70

    rst $10                                       ; $48c7: $d7
    and h                                         ; $48c8: $a4
    ld e, c                                       ; $48c9: $59
    sub b                                         ; $48ca: $90
    db $e3                                        ; $48cb: $e3
    xor a                                         ; $48cc: $af
    sub a                                         ; $48cd: $97
    sbc l                                         ; $48ce: $9d
    ld a, [c]                                     ; $48cf: $f2
    sub $1b                                       ; $48d0: $d6 $1b
    db $e3                                        ; $48d2: $e3
    ld c, a                                       ; $48d3: $4f
    xor c                                         ; $48d4: $a9
    or [hl]                                       ; $48d5: $b6
    db $e3                                        ; $48d6: $e3
    sub h                                         ; $48d7: $94
    ld [bc], a                                    ; $48d8: $02
    inc [hl]                                      ; $48d9: $34
    adc e                                         ; $48da: $8b
    dec a                                         ; $48db: $3d
    and l                                         ; $48dc: $a5
    ld h, $e9                                     ; $48dd: $26 $e9
    rla                                           ; $48df: $17
    cp h                                          ; $48e0: $bc
    jp $cd2e                                      ; $48e1: $c3 $2e $cd


    dec h                                         ; $48e4: $25
    ld c, l                                       ; $48e5: $4d
    dec sp                                        ; $48e6: $3b
    ld a, $77                                     ; $48e7: $3e $77
    ldh a, [$c4]                                  ; $48e9: $f0 $c4
    ld h, [hl]                                    ; $48eb: $66
    ld a, [hl-]                                   ; $48ec: $3a
    sub e                                         ; $48ed: $93
    ld h, a                                       ; $48ee: $67
    add e                                         ; $48ef: $83
    adc [hl]                                      ; $48f0: $8e
    ld c, d                                       ; $48f1: $4a
    dec e                                         ; $48f2: $1d
    add $5f                                       ; $48f3: $c6 $5f
    cpl                                           ; $48f5: $2f
    ld l, e                                       ; $48f6: $6b
    ld e, [hl]                                    ; $48f7: $5e
    add $2b                                       ; $48f8: $c6 $2b
    ld sp, $0184                                  ; $48fa: $31 $84 $01
    dec a                                         ; $48fd: $3d
    and h                                         ; $48fe: $a4
    sbc c                                         ; $48ff: $99
    ld d, d                                       ; $4900: $52
    ld l, l                                       ; $4901: $6d
    push af                                       ; $4902: $f5
    rst $38                                       ; $4903: $ff
    adc $4c                                       ; $4904: $ce $4c
    add a                                         ; $4906: $87
    cp e                                          ; $4907: $bb
    ld d, [hl]                                    ; $4908: $56
    dec d                                         ; $4909: $15
    ld l, c                                       ; $490a: $69
    ret nc                                        ; $490b: $d0

    ld a, d                                       ; $490c: $7a
    sub h                                         ; $490d: $94
    dec bc                                        ; $490e: $0b
    or e                                          ; $490f: $b3
    ld d, e                                       ; $4910: $53
    ld e, $7c                                     ; $4911: $1e $7c
    rla                                           ; $4913: $17

Jump_02a_4914:
    add $94                                       ; $4914: $c6 $94
    add d                                         ; $4916: $82
    sub a                                         ; $4917: $97
    inc [hl]                                      ; $4918: $34
    add b                                         ; $4919: $80
    jr nc, jr_02a_4959                            ; $491a: $30 $3d

    ld c, e                                       ; $491c: $4b
    sub $60                                       ; $491d: $d6 $60
    ld e, [hl]                                    ; $491f: $5e
    ld e, [hl]                                    ; $4920: $5e
    ld e, $21                                     ; $4921: $1e $21
    add h                                         ; $4923: $84
    or d                                          ; $4924: $b2
    ld [hl], b                                    ; $4925: $70
    ld [hl], a                                    ; $4926: $77
    cp l                                          ; $4927: $bd
    ld b, $6b                                     ; $4928: $06 $6b
    jp nc, $0c20                                  ; $492a: $d2 $20 $0c

    rst $00                                       ; $492d: $c7
    ld h, a                                       ; $492e: $67
    or d                                          ; $492f: $b2
    cp l                                          ; $4930: $bd
    push af                                       ; $4931: $f5
    jp hl                                         ; $4932: $e9


    ld d, d                                       ; $4933: $52
    ret nz                                        ; $4934: $c0

    ld e, l                                       ; $4935: $5d
    xor e                                         ; $4936: $ab
    ld b, $72                                     ; $4937: $06 $72
    add hl, de                                    ; $4939: $19
    jp nz, $ca3d                                  ; $493a: $c2 $3d $ca

    add l                                         ; $493d: $85
    ld e, l                                       ; $493e: $5d
    ld e, b                                       ; $493f: $58
    xor e                                         ; $4940: $ab
    adc d                                         ; $4941: $8a
    inc [hl]                                      ; $4942: $34
    db $eb                                        ; $4943: $eb
    sbc [hl]                                      ; $4944: $9e
    xor $2f                                       ; $4945: $ee $2f
    ld d, e                                       ; $4947: $53
    xor d                                         ; $4948: $aa
    xor l                                         ; $4949: $ad
    push af                                       ; $494a: $f5
    dec h                                         ; $494b: $25
    cp h                                          ; $494c: $bc
    ld c, c                                       ; $494d: $49
    cp a                                          ; $494e: $bf
    db $e3                                        ; $494f: $e3
    ld b, l                                       ; $4950: $45
    add hl, hl                                    ; $4951: $29
    ld a, b                                       ; $4952: $78
    pop hl                                        ; $4953: $e1
    ld c, $dc                                     ; $4954: $0e $dc
    or b                                          ; $4956: $b0
    daa                                           ; $4957: $27
    add a                                         ; $4958: $87

jr_02a_4959:
    sbc c                                         ; $4959: $99
    adc $d4                                       ; $495a: $ce $d4
    rst $20                                       ; $495c: $e7
    push hl                                       ; $495d: $e5
    rlca                                          ; $495e: $07
    ld d, l                                       ; $495f: $55
    ret                                           ; $4960: $c9


    adc h                                         ; $4961: $8c
    ld l, b                                       ; $4962: $68
    ld b, a                                       ; $4963: $47
    ld d, c                                       ; $4964: $51
    ld l, l                                       ; $4965: $6d
    ld e, [hl]                                    ; $4966: $5e
    ld l, $ec                                     ; $4967: $2e $ec
    jp nz, Jump_02a_4f4e                          ; $4969: $c2 $4e $4f

    ld d, d                                       ; $496c: $52
    ld [c], a                                     ; $496d: $e2
    xor [hl]                                      ; $496e: $ae
    push af                                       ; $496f: $f5
    ld l, e                                       ; $4970: $6b
    jr nc, @+$5f                                  ; $4971: $30 $5d

    push af                                       ; $4973: $f5
    db $e4                                        ; $4974: $e4
    ld l, d                                       ; $4975: $6a
    inc b                                         ; $4976: $04
    ld h, c                                       ; $4977: $61
    dec a                                         ; $4978: $3d
    ld a, a                                       ; $4979: $7f
    sub h                                         ; $497a: $94
    ld a, [hl]                                    ; $497b: $7e
    xor e                                         ; $497c: $ab
    ld h, a                                       ; $497d: $67
    ld [$3d03], sp                                ; $497e: $08 $03 $3d
    jp z, $d7cb                                   ; $4981: $ca $cb $d7

    ld h, b                                       ; $4984: $60
    ld a, [hl-]                                   ; $4985: $3a
    ld b, e                                       ; $4986: $43
    or a                                          ; $4987: $b7
    ld c, d                                       ; $4988: $4a
    and c                                         ; $4989: $a1
    or l                                          ; $498a: $b5
    cpl                                           ; $498b: $2f
    xor l                                         ; $498c: $ad
    jr @-$0d                                      ; $498d: $18 $f1

    push af                                       ; $498f: $f5
    cp l                                          ; $4990: $bd
    and d                                         ; $4991: $a2
    sub $5f                                       ; $4992: $d6 $5f
    di                                            ; $4994: $f3
    ld h, l                                       ; $4995: $65
    ldh a, [rVBK]                                 ; $4996: $f0 $4f
    ld d, e                                       ; $4998: $53
    ld l, d                                       ; $4999: $6a
    cp h                                          ; $499a: $bc
    ld e, h                                       ; $499b: $5c
    sbc d                                         ; $499c: $9a
    ld hl, $4603                                  ; $499d: $21 $03 $46
    ld h, e                                       ; $49a0: $63
    ld d, a                                       ; $49a1: $57
    inc c                                         ; $49a2: $0c
    daa                                           ; $49a3: $27
    xor e                                         ; $49a4: $ab

jr_02a_49a5:
    ret nz                                        ; $49a5: $c0

    ld l, $cc                                     ; $49a6: $2e $cc
    sub b                                         ; $49a8: $90
    ld bc, $31a3                                  ; $49a9: $01 $a3 $31
    ld [hl], $6b                                  ; $49ac: $36 $6b
    rrc l                                         ; $49ae: $cb $0d

jr_02a_49b0:
    adc d                                         ; $49b0: $8a
    rst $08                                       ; $49b1: $cf
    sub e                                         ; $49b2: $93
    ld l, [hl]                                    ; $49b3: $6e
    ld d, b                                       ; $49b4: $50
    inc e                                         ; $49b5: $1c
    ld h, c                                       ; $49b6: $61
    sub [hl]                                      ; $49b7: $96
    add l                                         ; $49b8: $85
    xor a                                         ; $49b9: $af
    db $e4                                        ; $49ba: $e4
    add e                                         ; $49bb: $83
    inc c                                         ; $49bc: $0c
    rst $18                                       ; $49bd: $df
    res 4, l                                      ; $49be: $cb $a5
    ld h, b                                       ; $49c0: $60
    db $f4                                        ; $49c1: $f4
    ld a, [hl+]                                   ; $49c2: $2a
    db $ed                                        ; $49c3: $ed
    ld b, $61                                     ; $49c4: $06 $61
    dec a                                         ; $49c6: $3d
    jp z, Jump_02a_4ecf                           ; $49c7: $ca $cf $4e

    ld a, c                                       ; $49ca: $79
    ldh a, [$95]                                  ; $49cb: $f0 $95
    adc h                                         ; $49cd: $8c
    inc c                                         ; $49ce: $0c
    ld d, $2a                                     ; $49cf: $16 $2a
    dec [hl]                                      ; $49d1: $35
    add e                                         ; $49d2: $83
    xor a                                         ; $49d3: $af
    db $e4                                        ; $49d4: $e4
    dec e                                         ; $49d5: $1d
    db $10                                        ; $49d6: $10
    ld b, $a7                                     ; $49d7: $06 $a7
    call c, $97ea                                 ; $49d9: $dc $ea $97
    or $9a                                        ; $49dc: $f6 $9a
    cpl                                           ; $49de: $2f
    di                                            ; $49df: $f3
    sub a                                         ; $49e0: $97
    sub l                                         ; $49e1: $95
    adc a                                         ; $49e2: $8f
    sbc l                                         ; $49e3: $9d
    ld e, l                                       ; $49e4: $5d
    ld e, a                                       ; $49e5: $5f
    db $fd                                        ; $49e6: $fd
    cp a                                          ; $49e7: $bf
    or e                                          ; $49e8: $b3
    jp c, Jump_000_0887                           ; $49e9: $da $87 $08

    inc bc                                        ; $49ec: $03
    xor l                                         ; $49ed: $ad
    rra                                           ; $49ee: $1f
    ld h, e                                       ; $49ef: $63
    ld [hl], d                                    ; $49f0: $72
    rst $10                                       ; $49f1: $d7
    xor d                                         ; $49f2: $aa
    add c                                         ; $49f3: $81
    ld e, h                                       ; $49f4: $5c
    add [hl]                                      ; $49f5: $86
    jr nc, jr_02a_49a5                            ; $49f6: $30 $ad

    rra                                           ; $49f8: $1f
    ld h, e                                       ; $49f9: $63

Call_02a_49fa:
jr_02a_49fa:
    ld [hl], d                                    ; $49fa: $72
    ld [hl], a                                    ; $49fb: $77
    or h                                          ; $49fc: $b4
    jp nc, Jump_000_1da3                          ; $49fd: $d2 $a3 $1d

    dec b                                         ; $4a00: $05
    or e                                          ; $4a01: $b3
    adc h                                         ; $4a02: $8c
    ld d, a                                       ; $4a03: $57
    ret c                                         ; $4a04: $d8

    ld a, c                                       ; $4a05: $79
    ld b, $7c                                     ; $4a06: $06 $7c
    ld a, [bc]                                    ; $4a08: $0a
    push af                                       ; $4a09: $f5
    ld c, e                                       ; $4a0a: $4b
    dec sp                                        ; $4a0b: $3b

Jump_02a_4a0c:
    dec a                                         ; $4a0c: $3d
    ld c, c                                       ; $4a0d: $49
    ld l, c                                       ; $4a0e: $69
    push hl                                       ; $4a0f: $e5
    push hl                                       ; $4a10: $e5
    cp c                                          ; $4a11: $b9
    dec hl                                        ; $4a12: $2b
    ld l, d                                       ; $4a13: $6a
    db $fd                                        ; $4a14: $fd
    dec [hl]                                      ; $4a15: $35
    ld e, a                                       ; $4a16: $5f
    ld b, $ff                                     ; $4a17: $06 $ff
    inc [hl]                                      ; $4a19: $34
    and l                                         ; $4a1a: $a5
    add $cb                                       ; $4a1b: $c6 $cb
    and l                                         ; $4a1d: $a5
    ld h, b                                       ; $4a1e: $60
    add [hl]                                      ; $4a1f: $86
    inc c                                         ; $4a20: $0c
    jr jr_02a_49b0                                ; $4a21: $18 $8d

    ld e, l                                       ; $4a23: $5d
    ld sp, $ab27                                  ; $4a24: $31 $27 $ab
    ret nz                                        ; $4a27: $c0

    ld l, $cc                                     ; $4a28: $2e $cc
    sub b                                         ; $4a2a: $90
    ld bc, $31a3                                  ; $4a2b: $01 $a3 $31
    ld [hl], $6b                                  ; $4a2e: $36 $6b
    rrc l                                         ; $4a30: $cb $0d
    adc d                                         ; $4a32: $8a
    rst $08                                       ; $4a33: $cf
    res 0, l                                      ; $4a34: $cb $85
    cp l                                          ; $4a36: $bd
    push af                                       ; $4a37: $f5
    jp hl                                         ; $4a38: $e9


    ld d, d                                       ; $4a39: $52
    add b                                         ; $4a3a: $80
    jr nc, jr_02a_49fa                            ; $4a3b: $30 $bd

    ld e, [hl]                                    ; $4a3d: $5e
    ld h, [hl]                                    ; $4a3e: $66
    ld c, b                                       ; $4a3f: $48
    jp hl                                         ; $4a40: $e9


    add [hl]                                      ; $4a41: $86
    ld l, c                                       ; $4a42: $69
    ld h, b                                       ; $4a43: $60
    ld c, c                                       ; $4a44: $49
    di                                            ; $4a45: $f3
    and d                                         ; $4a46: $a2
    cp [hl]                                       ; $4a47: $be
    sbc d                                         ; $4a48: $9a
    ld hl, $9eb4                                  ; $4a49: $21 $b4 $9e
    cp a                                          ; $4a4c: $bf
    and d                                         ; $4a4d: $a2
    sub $9f                                       ; $4a4e: $d6 $9f
    rst $20                                       ; $4a50: $e7
    add d                                         ; $4a51: $82
    ld b, h                                       ; $4a52: $44
    or e                                          ; $4a53: $b3
    ret c                                         ; $4a54: $d8

    ei                                            ; $4a55: $fb
    db $eb                                        ; $4a56: $eb
    push hl                                       ; $4a57: $e5
    ld h, l                                       ; $4a58: $65
    ld l, c                                       ; $4a59: $69

Jump_02a_4a5a:
    xor a                                         ; $4a5a: $af
    ld sp, hl                                     ; $4a5b: $f9
    ld [hl-], a                                   ; $4a5c: $32
    sub [hl]                                      ; $4a5d: $96
    add e                                         ; $4a5e: $83
    rst $38                                       ; $4a5f: $ff

Call_02a_4a60:
    add hl, hl                                    ; $4a60: $29
    dec [hl]                                      ; $4a61: $35
    ld e, [hl]                                    ; $4a62: $5e
    ld l, $d5                                     ; $4a63: $2e $d5
    ld h, [hl]                                    ; $4a65: $66
    ret z                                         ; $4a66: $c8

    add b                                         ; $4a67: $80
    pop de                                        ; $4a68: $d1
    cp b                                          ; $4a69: $b8
    or h                                          ; $4a6a: $b4
    and a                                         ; $4a6b: $a7
    dec bc                                        ; $4a6c: $0b
    ld d, e                                       ; $4a6d: $53
    ld a, [hl]                                    ; $4a6e: $7e
    ld sp, $8d2b                                  ; $4a6f: $31 $2b $8d
    inc hl                                        ; $4a72: $23
    ld [hl], l                                    ; $4a73: $75
    inc hl                                        ; $4a74: $23
    rst $08                                       ; $4a75: $cf
    ld e, l                                       ; $4a76: $5d
    ld a, h                                       ; $4a77: $7c
    ld e, a                                       ; $4a78: $5f
    ld hl, sp-$55                                 ; $4a79: $f8 $ab
    ld d, e                                       ; $4a7b: $53
    ld a, [c]                                     ; $4a7c: $f2
    ld [$3d03], sp                                ; $4a7d: $08 $03 $3d
    jp z, $5c0f                                   ; $4a80: $ca $0f $5c

    dec b                                         ; $4a83: $05
    ld h, [hl]                                    ; $4a84: $66
    and a                                         ; $4a85: $a7
    cp h                                          ; $4a86: $bc
    ld a, a                                       ; $4a87: $7f
    adc h                                         ; $4a88: $8c
    ld c, e                                       ; $4a89: $4b
    inc hl                                        ; $4a8a: $23
    or e                                          ; $4a8b: $b3
    push de                                       ; $4a8c: $d5
    rra                                           ; $4a8d: $1f
    xor l                                         ; $4a8e: $ad
    rst $20                                       ; $4a8f: $e7
    rrca                                          ; $4a90: $0f
    ld c, d                                       ; $4a91: $4a
    sbc d                                         ; $4a92: $9a
    ret z                                         ; $4a93: $c8

    and [hl]                                      ; $4a94: $a6
    ld d, l                                       ; $4a95: $55
    push af                                       ; $4a96: $f5
    dec e                                         ; $4a97: $1d
    rst $18                                       ; $4a98: $df
    ld [hl], l                                    ; $4a99: $75
    add h                                         ; $4a9a: $84
    ld bc, $8b3d                                  ; $4a9b: $01 $3d $8b
    ld a, [$fcbc]                                 ; $4a9e: $fa $bc $fc
    ret nz                                        ; $4aa1: $c0

    ld d, l                                       ; $4aa2: $55
    ld h, b                                       ; $4aa3: $60
    halt                                          ; $4aa4: $76
    jp z, $c7fb                                   ; $4aa5: $ca $fb $c7

    cp b                                          ; $4aa8: $b8
    dec bc                                        ; $4aa9: $0b
    and e                                         ; $4aaa: $a3
    db $f4                                        ; $4aab: $f4
    ld l, c                                       ; $4aac: $69
    db $e4                                        ; $4aad: $e4
    or l                                          ; $4aae: $b5
    add c                                         ; $4aaf: $81
    dec d                                         ; $4ab0: $15
    db $ed                                        ; $4ab1: $ed
    ld [hl], h                                    ; $4ab2: $74
    ld a, [de]                                    ; $4ab3: $1a
    add h                                         ; $4ab4: $84
    ld bc, $7ca7                                  ; $4ab5: $01 $a7 $7c
    rst $00                                       ; $4ab8: $c7
    dec c                                         ; $4ab9: $0d
    db $fd                                        ; $4aba: $fd
    ld l, $50                                     ; $4abb: $2e $50
    call Call_02a_7d67                            ; $4abd: $cd $67 $7d
    ld l, c                                       ; $4ac0: $69
    sub $96                                       ; $4ac1: $d6 $96
    dec de                                        ; $4ac3: $1b
    inc d                                         ; $4ac4: $14
    sbc a                                         ; $4ac5: $9f
    daa                                           ; $4ac6: $27
    db $dd                                        ; $4ac7: $dd
    and b                                         ; $4ac8: $a0
    jr c, jr_02a_4b42                             ; $4ac9: $38 $77

    ld l, l                                       ; $4acb: $6d
    db $e3                                        ; $4acc: $e3
    cp e                                          ; $4acd: $bb
    ld e, [hl]                                    ; $4ace: $5e
    add e                                         ; $4acf: $83
    or l                                          ; $4ad0: $b5
    push hl                                       ; $4ad1: $e5
    ld b, $c5                                     ; $4ad2: $06 $c5
    ld e, a                                       ; $4ad4: $5f
    and $45                                       ; $4ad5: $e6 $45
    ld l, c                                       ; $4ad7: $69
    ld b, $8c                                     ; $4ad8: $06 $8c
    ld b, [hl]                                    ; $4ada: $46
    add h                                         ; $4adb: $84
    ld bc, $7f3d                                  ; $4adc: $01 $3d $7f
    ld d, b                                       ; $4adf: $50
    jp nc, Jump_000_3644                          ; $4ae0: $d2 $44 $36

    ld c, d                                       ; $4ae3: $4a
    ld e, a                                       ; $4ae4: $5f

jr_02a_4ae5:
    ld sp, hl                                     ; $4ae5: $f9
    ret c                                         ; $4ae6: $d8

    sbc c                                         ; $4ae7: $99
    sub a                                         ; $4ae8: $97
    add h                                         ; $4ae9: $84
    rra                                           ; $4aea: $1f

jr_02a_4aeb:
    ld e, a                                       ; $4aeb: $5f
    ld [hl-], a                                   ; $4aec: $32
    sbc h                                         ; $4aed: $9c
    sub a                                         ; $4aee: $97

Call_02a_4aef:
    rra                                           ; $4aef: $1f
    cp b                                          ; $4af0: $b8
    ld a, [bc]                                    ; $4af1: $0a
    inc c                                         ; $4af2: $0c
    or h                                          ; $4af3: $b4
    sbc c                                         ; $4af4: $99
    jp z, Jump_02a_658f                           ; $4af5: $ca $8f $65

    add [hl]                                      ; $4af8: $86
    rst $08                                       ; $4af9: $cf
    db $10                                        ; $4afa: $10
    ld b, $3d                                     ; $4afb: $06 $3d
    ld a, a                                       ; $4afd: $7f
    and c                                         ; $4afe: $a1
    ld bc, $3b5f                                  ; $4aff: $01 $5f $3b
    ld sp, hl                                     ; $4b02: $f9
    ld a, c                                       ; $4b03: $79
    adc $cb                                       ; $4b04: $ce $cb
    adc a                                         ; $4b06: $8f
    cp a                                          ; $4b07: $bf
    ld sp, $ed2e                                  ; $4b08: $31 $2e $ed
    ld a, c                                       ; $4b0b: $79
    ld sp, hl                                     ; $4b0c: $f9
    add c                                         ; $4b0d: $81
    xor e                                         ; $4b0e: $ab
    nop                                           ; $4b0f: $00
    jp nz, $ca3d                                  ; $4b10: $c2 $3d $ca

    rst $08                                       ; $4b13: $cf
    ld c, [hl]                                    ; $4b14: $4e
    ld a, c                                       ; $4b15: $79
    ldh a, [$5d]                                  ; $4b16: $f0 $5d
    sbc b                                         ; $4b18: $98
    ld l, $6c                                     ; $4b19: $2e $6c
    ret nz                                        ; $4b1b: $c0

    ld e, a                                       ; $4b1c: $5f
    ld l, [hl]                                    ; $4b1d: $6e
    ld a, [de]                                    ; $4b1e: $1a
    ld e, b                                       ; $4b1f: $58
    daa                                           ; $4b20: $27
    ld l, d                                       ; $4b21: $6a
    push af                                       ; $4b22: $f5
    ld [$ad03], sp                                ; $4b23: $08 $03 $ad
    ld a, [de]                                    ; $4b26: $1a
    ret z                                         ; $4b27: $c8

    ld h, l                                       ; $4b28: $65
    call c, $ccc5                                 ; $4b29: $dc $c5 $cc
    ld a, [hl-]                                   ; $4b2c: $3a
    ld [hl], a                                    ; $4b2d: $77
    ld a, [c]                                     ; $4b2e: $f2
    ld l, h                                       ; $4b2f: $6c
    ret nc                                        ; $4b30: $d0

    ld d, c                                       ; $4b31: $51
    xor c                                         ; $4b32: $a9
    ld b, e                                       ; $4b33: $43
    sub a                                         ; $4b34: $97
    push af                                       ; $4b35: $f5
    jr z, @-$3f                                   ; $4b36: $28 $bf

    db $f4                                        ; $4b38: $f4
    ld a, [c]                                     ; $4b39: $f2
    ld [bc], a                                    ; $4b3a: $02
    ld d, e                                       ; $4b3b: $53
    ld sp, hl                                     ; $4b3c: $f9
    ld e, l                                       ; $4b3d: $5d
    sbc d                                         ; $4b3e: $9a
    ld c, e                                       ; $4b3f: $4b
    sbc d                                         ; $4b40: $9a
    halt                                          ; $4b41: $76

jr_02a_4b42:
    ld a, h                                       ; $4b42: $7c
    add h                                         ; $4b43: $84
    ld bc, $d2bd                                  ; $4b44: $01 $bd $d2
    adc h                                         ; $4b47: $8c
    rst $10                                       ; $4b48: $d7
    db $eb                                        ; $4b49: $eb
    dec hl                                        ; $4b4a: $2b
    cpl                                           ; $4b4b: $2f
    adc a                                         ; $4b4c: $8f
    jr nc, jr_02a_4ae5                            ; $4b4d: $30 $96

    sub l                                         ; $4b4f: $95
    db $ec                                        ; $4b50: $ec
    db $fc                                        ; $4b51: $fc
    jr z, jr_02a_4aeb                             ; $4b52: $28 $97

    db $f4                                        ; $4b54: $f4
    cp e                                          ; $4b55: $bb
    or b                                          ; $4b56: $b0

jr_02a_4b57:
    ld h, d                                       ; $4b57: $62
    call nz, Call_02a_60bb                        ; $4b58: $c4 $bb $60
    rst $00                                       ; $4b5b: $c7
    ld [hl], d                                    ; $4b5c: $72
    xor b                                         ; $4b5d: $a8
    cp [hl]                                       ; $4b5e: $be
    db $e3                                        ; $4b5f: $e3
    dec sp                                        ; $4b60: $3b
    ld e, c                                       ; $4b61: $59
    and e                                         ; $4b62: $a3
    sbc l                                         ; $4b63: $9d
    dec c                                         ; $4b64: $0d
    ld [hl], a                                    ; $4b65: $77
    and c                                         ; $4b66: $a1
    ld [hl], $ed                                  ; $4b67: $36 $ed
    ld b, a                                       ; $4b69: $47
    ld [$3d61], sp                                ; $4b6a: $08 $61 $3d
    adc e                                         ; $4b6d: $8b
    ld a, [$768a]                                 ; $4b6e: $fa $8a $76
    ld a, [hl-]                                   ; $4b71: $3a
    ld c, a                                       ; $4b72: $4f
    rst $08                                       ; $4b73: $cf
    cp d                                          ; $4b74: $ba
    ld h, d                                       ; $4b75: $62
    daa                                           ; $4b76: $27
    ld l, e                                       ; $4b77: $6b
    or h                                          ; $4b78: $b4
    or e                                          ; $4b79: $b3
    ld e, c                                       ; $4b7a: $59
    jr nz, jr_02a_4b57                            ; $4b7b: $20 $da

    ld l, [hl]                                    ; $4b7d: $6e
    ccf                                           ; $4b7e: $3f
    ld e, e                                       ; $4b7f: $5b
    ld hl, sp-$4d                                 ; $4b80: $f8 $b3
    dec h                                         ; $4b82: $25
    jp $bfb5                                      ; $4b83: $c3 $b5 $bf


    ld e, h                                       ; $4b86: $5c
    ld h, d                                       ; $4b87: $62
    ld d, e                                       ; $4b88: $53
    sbc b                                         ; $4b89: $98
    xor $bc                                       ; $4b8a: $ee $bc
    xor h                                         ; $4b8c: $ac
    rst $38                                       ; $4b8d: $ff
    sub h                                         ; $4b8e: $94
    ret c                                         ; $4b8f: $d8

    db $10                                        ; $4b90: $10
    ld b, d                                       ; $4b91: $42
    db $fc                                        ; $4b92: $fc
    rst $00                                       ; $4b93: $c7
    ret z                                         ; $4b94: $c8

    sbc l                                         ; $4b95: $9d
    ld h, l                                       ; $4b96: $65
    dec e                                         ; $4b97: $1d
    and l                                         ; $4b98: $a5
    ld e, e                                       ; $4b99: $5b
    push de                                       ; $4b9a: $d5
    sbc a                                         ; $4b9b: $9f
    ld hl, $3d0c                                  ; $4b9c: $21 $0c $3d
    cp a                                          ; $4b9f: $bf
    ld h, $bf                                     ; $4ba0: $26 $bf
    xor d                                         ; $4ba2: $aa
    jr z, jr_02a_4baa                             ; $4ba3: $28 $05

    sub a                                         ; $4ba5: $97
    ld l, d                                       ; $4ba6: $6a
    dec bc                                        ; $4ba7: $0b
    inc h                                         ; $4ba8: $24
    ld c, l                                       ; $4ba9: $4d

jr_02a_4baa:
    rlca                                          ; $4baa: $07
    ret nc                                        ; $4bab: $d0

    ld c, [hl]                                    ; $4bac: $4e
    ld a, c                                       ; $4bad: $79
    db $eb                                        ; $4bae: $eb
    adc l                                         ; $4baf: $8d
    pop af                                        ; $4bb0: $f1
    and a                                         ; $4bb1: $a7
    ld d, h                                       ; $4bb2: $54
    ld e, e                                       ; $4bb3: $5b
    db $eb                                        ; $4bb4: $eb
    ld c, e                                       ; $4bb5: $4b
    ld a, b                                       ; $4bb6: $78
    sub e                                         ; $4bb7: $93
    sbc [hl]                                      ; $4bb8: $9e
    cp e                                          ; $4bb9: $bb
    ld a, [hl+]                                   ; $4bba: $2a
    jp Jump_02a_7f1f                              ; $4bbb: $c3 $1f $7f


    cp l                                          ; $4bbe: $bd
    inc l                                         ; $4bbf: $2c
    ld a, h                                       ; $4bc0: $7c
    or h                                          ; $4bc1: $b4
    ld d, [hl]                                    ; $4bc2: $56
    dec d                                         ; $4bc3: $15
    ld l, c                                       ; $4bc4: $69
    cp b                                          ; $4bc5: $b8
    ld l, e                                       ; $4bc6: $6b

Call_02a_4bc7:
    ld e, [hl]                                    ; $4bc7: $5e
    ld d, $e4                                     ; $4bc8: $16 $e4
    ld hl, sp-$15                                 ; $4bca: $f8 $eb
    ld h, l                                       ; $4bcc: $65
    daa                                           ; $4bcd: $27
    ld l, e                                       ; $4bce: $6b
    or h                                          ; $4bcf: $b4
    or e                                          ; $4bd0: $b3
    sbc c                                         ; $4bd1: $99
    ld d, d                                       ; $4bd2: $52
    ld l, l                                       ; $4bd3: $6d
    rst $00                                       ; $4bd4: $c7
    add hl, hl                                    ; $4bd5: $29
    dec b                                         ; $4bd6: $05
    ld l, b                                       ; $4bd7: $68
    cp l                                          ; $4bd8: $bd
    cp [hl]                                       ; $4bd9: $be
    call nc, Call_02a_5c62                        ; $4bda: $d4 $62 $5c
    ei                                            ; $4bdd: $fb
    ld d, a                                       ; $4bde: $57
    ld d, h                                       ; $4bdf: $54
    ret c                                         ; $4be0: $d8

    set 5, h                                      ; $4be1: $cb $ec
    sub h                                         ; $4be3: $94
    ld a, c                                       ; $4be4: $79
    cp c                                          ; $4be5: $b9
    or b                                          ; $4be6: $b0
    bit 5, [hl]                                   ; $4be7: $cb $6e
    ld a, [$65fc]                                 ; $4be9: $fa $fc $65
    ld d, b                                       ; $4bec: $50
    xor c                                         ; $4bed: $a9
    inc a                                         ; $4bee: $3c
    jp nz, $6527                                  ; $4bef: $c2 $27 $65

    sub $bb                                       ; $4bf2: $d6 $bb
    xor h                                         ; $4bf4: $ac
    ld b, a                                       ; $4bf5: $47
    ld d, c                                       ; $4bf6: $51
    ld e, a                                       ; $4bf7: $5f
    ld l, b                                       ; $4bf8: $68
    ret nz                                        ; $4bf9: $c0

    rst $10                                       ; $4bfa: $d7
    cp $79                                        ; $4bfb: $fe $79
    ld sp, hl                                     ; $4bfd: $f9
    add hl, de                                    ; $4bfe: $19
    cp d                                          ; $4bff: $ba
    ld d, l                                       ; $4c00: $55
    ld a, [bc]                                    ; $4c01: $0a
    and c                                         ; $4c02: $a1
    ld e, c                                       ; $4c03: $59
    cp h                                          ; $4c04: $bc
    ld b, $63                                     ; $4c05: $06 $63
    xor a                                         ; $4c07: $af
    xor h                                         ; $4c08: $ac
    dec bc                                        ; $4c09: $0b
    ld b, $47                                     ; $4c0a: $06 $47
    xor c                                         ; $4c0c: $a9
    ld b, $41                                     ; $4c0d: $06 $41
    ld d, b                                       ; $4c0f: $50
    ld c, d                                       ; $4c10: $4a
    add hl, hl                                    ; $4c11: $29
    ld e, l                                       ; $4c12: $5d
    jr nc, jr_02a_4c7c                            ; $4c13: $30 $67

    ld d, b                                       ; $4c15: $50
    ld b, c                                       ; $4c16: $41
    ld [$f475], sp                                ; $4c17: $08 $75 $f4
    ld [de], a                                    ; $4c1a: $12
    ld b, d                                       ; $4c1b: $42
    add sp, -$2e                                  ; $4c1c: $e8 $d2
    jp nz, $e566                                  ; $4c1e: $c2 $66 $e5

    sub l                                         ; $4c21: $95
    ld hl, $3084                                  ; $4c22: $21 $84 $30
    dec a                                         ; $4c25: $3d
    adc e                                         ; $4c26: $8b
    ld a, [$768a]                                 ; $4c27: $fa $8a $76
    ld a, [hl-]                                   ; $4c2a: $3a
    ld c, a                                       ; $4c2b: $4f
    rst $08                                       ; $4c2c: $cf
    cp d                                          ; $4c2d: $ba
    ld h, d                                       ; $4c2e: $62
    xor l                                         ; $4c2f: $ad
    ld e, a                                       ; $4c30: $5f
    add e                                         ; $4c31: $83
    dec b                                         ; $4c32: $05
    ld c, c                                       ; $4c33: $49
    ccf                                           ; $4c34: $3f
    ld c, d                                       ; $4c35: $4a
    ld e, $ed                                     ; $4c36: $1e $ed
    db $e4                                        ; $4c38: $e4
    ld h, [hl]                                    ; $4c39: $66
    and h                                         ; $4c3a: $a4
    pop hl                                        ; $4c3b: $e1
    rst $28                                       ; $4c3c: $ef
    jp nz, $bb8e                                  ; $4c3d: $c2 $8e $bb

    ld a, [c]                                     ; $4c40: $f2
    call nz, $d1f1                                ; $4c41: $c4 $f1 $d1
    ld a, d                                       ; $4c44: $7a
    cp $8a                                        ; $4c45: $fe $8a
    ld e, d                                       ; $4c47: $5a
    ld a, a                                       ; $4c48: $7f
    sbc [hl]                                      ; $4c49: $9e
    dec bc                                        ; $4c4a: $0b
    sbc $d7                                       ; $4c4b: $de $d7
    and h                                         ; $4c4d: $a4
    ld e, c                                       ; $4c4e: $59
    ld e, e                                       ; $4c4f: $5b
    xor e                                         ; $4c50: $ab
    ld a, [$d73c]                                 ; $4c51: $fa $3c $d7
    xor d                                         ; $4c54: $aa
    add c                                         ; $4c55: $81
    ld e, h                                       ; $4c56: $5c
    add [hl]                                      ; $4c57: $86
    jr nc, @+$3f                                  ; $4c58: $30 $3d

    push af                                       ; $4c5a: $f5
    ld a, [hl-]                                   ; $4c5b: $3a
    ld b, d                                       ; $4c5c: $42
    adc b                                         ; $4c5d: $88
    push hl                                       ; $4c5e: $e5
    sbc d                                         ; $4c5f: $9a
    inc [hl]                                      ; $4c60: $34
    xor e                                         ; $4c61: $ab
    ld d, e                                       ; $4c62: $53
    ld a, [c]                                     ; $4c63: $f2
    db $e3                                        ; $4c64: $e3
    adc e                                         ; $4c65: $8b
    ld a, [$c28a]                                 ; $4c66: $fa $8a $c2
    jp c, $b4ff                                   ; $4c69: $da $ff $b4

    ld a, [$f18d]                                 ; $4c6c: $fa $8d $f1
    ld d, d                                       ; $4c6f: $52
    jr nc, jr_02a_4ca1                            ; $4c70: $30 $2f

    ccf                                           ; $4c72: $3f
    ld b, e                                       ; $4c73: $43
    or a                                          ; $4c74: $b7
    ld c, d                                       ; $4c75: $4a
    ld hl, $8ae8                                  ; $4c76: $21 $e8 $8a
    ld bc, $d2a7                                  ; $4c79: $01 $a7 $d2

jr_02a_4c7c:
    adc a                                         ; $4c7c: $8f
    cpl                                           ; $4c7d: $2f
    add hl, sp                                    ; $4c7e: $39
    ld e, [hl]                                    ; $4c7f: $5e
    ret                                           ; $4c80: $c9


    ld h, c                                       ; $4c81: $61
    ld e, [hl]                                    ; $4c82: $5e
    cp $ca                                        ; $4c83: $fe $ca
    jp c, $9331                                   ; $4c85: $da $31 $93

    and c                                         ; $4c88: $a1
    dec e                                         ; $4c89: $1d
    inc hl                                        ; $4c8a: $23
    sub a                                         ; $4c8b: $97
    ld [$8297], a                                 ; $4c8c: $ea $97 $82
    ld e, l                                       ; $4c8f: $5d
    ld e, a                                       ; $4c90: $5f
    xor b                                         ; $4c91: $a8
    sub a                                         ; $4c92: $97
    ld e, h                                       ; $4c93: $5c
    cpl                                           ; $4c94: $2f
    pop bc                                        ; $4c95: $c1
    jp z, $c585                                   ; $4c96: $ca $85 $c5

    ld l, e                                       ; $4c99: $6b
    ccf                                           ; $4c9a: $3f
    ld [hl], a                                    ; $4c9b: $77
    ld l, a                                       ; $4c9c: $6f
    ld a, l                                       ; $4c9d: $7d
    sbc d                                         ; $4c9e: $9a
    sub a                                         ; $4c9f: $97
    inc [hl]                                      ; $4ca0: $34

jr_02a_4ca1:
    ld b, c                                       ; $4ca1: $41
    reti                                          ; $4ca2: $d9


    push af                                       ; $4ca3: $f5
    ld d, l                                       ; $4ca4: $55
    ld b, [hl]                                    ; $4ca5: $46
    ldh [$61], a                                  ; $4ca6: $e0 $61
    push hl                                       ; $4ca8: $e5
    add [hl]                                      ; $4ca9: $86
    or e                                          ; $4caa: $b3
    ld d, e                                       ; $4cab: $53
    and [hl]                                      ; $4cac: $a6
    ld sp, $6fce                                  ; $4cad: $31 $ce $6f
    ld hl, sp+$68                                 ; $4cb0: $f8 $68
    ld b, a                                       ; $4cb2: $47
    dec de                                        ; $4cb3: $1b
    rra                                           ; $4cb4: $1f
    ld h, h                                       ; $4cb5: $64
    jp nc, $cfca                                  ; $4cb6: $d2 $ca $cf

    res 4, l                                      ; $4cb9: $cb $a5
    ld a, [hl-]                                   ; $4cbb: $3a
    xor h                                         ; $4cbc: $ac
    ld a, h                                       ; $4cbd: $7c
    dec l                                         ; $4cbe: $2d
    add $31                                       ; $4cbf: $c6 $31
    cp c                                          ; $4cc1: $b9
    ld d, h                                       ; $4cc2: $54
    rra                                           ; $4cc3: $1f
    ld h, h                                       ; $4cc4: $64
    ld hl, sp+$5e                                 ; $4cc5: $f8 $5e
    ld l, $05                                     ; $4cc7: $2e $05
    di                                            ; $4cc9: $f3
    and d                                         ; $4cca: $a2
    ld a, $fe                                     ; $4ccb: $3e $fe
    add $b8                                       ; $4ccd: $c6 $b8
    ldh [$5a], a                                  ; $4ccf: $e0 $5a
    ld a, a                                       ; $4cd1: $7f
    push hl                                       ; $4cd2: $e5
    add [hl]                                      ; $4cd3: $86
    ld a, e                                       ; $4cd4: $7b
    ld a, a                                       ; $4cd5: $7f
    ld hl, $8b8d                                  ; $4cd6: $21 $8d $8b
    rst $10                                       ; $4cd9: $d7
    ld a, [hl]                                    ; $4cda: $7e
    add h                                         ; $4cdb: $84
    ld bc, $daa7                                  ; $4cdc: $01 $a7 $da
    xor e                                         ; $4cdf: $ab
    jp nc, $fc08                                  ; $4ce0: $d2 $08 $fc

    ld a, [$979e]                                 ; $4ce3: $fa $9e $97
    rst $18                                       ; $4ce6: $df
    or c                                          ; $4ce7: $b1
    pop af                                        ; $4ce8: $f1
    ld [hl], d                                    ; $4ce9: $72
    cp b                                          ; $4cea: $b8
    or d                                          ; $4ceb: $b2
    or h                                          ; $4cec: $b4
    ld [hl], a                                    ; $4ced: $77
    jp nc, Jump_02a_7fb5                          ; $4cee: $d2 $b5 $7f

    or [hl]                                       ; $4cf1: $b6
    ld h, h                                       ; $4cf2: $64
    jr c, jr_02a_4d24                             ; $4cf3: $38 $2f

    cp a                                          ; $4cf5: $bf
    xor $e5                                       ; $4cf6: $ee $e5
    add $84                                       ; $4cf8: $c6 $84
    db $ec                                        ; $4cfa: $ec
    sub h                                         ; $4cfb: $94
    sub a                                         ; $4cfc: $97
    ld a, [de]                                    ; $4cfd: $1a
    xor h                                         ; $4cfe: $ac
    push bc                                       ; $4cff: $c5
    sub e                                         ; $4d00: $93
    cp [hl]                                       ; $4d01: $be
    res 1, [hl]                                   ; $4d02: $cb $8e
    ld [hl], $3e                                  ; $4d04: $36 $3e
    cp [hl]                                       ; $4d06: $be
    ld h, h                                       ; $4d07: $64
    adc l                                         ; $4d08: $8d
    xor l                                         ; $4d09: $ad
    db $fd                                        ; $4d0a: $fd
    di                                            ; $4d0b: $f3
    and d                                         ; $4d0c: $a2

Jump_02a_4d0d:
    ld a, $f6                                     ; $4d0d: $3e $f6
    ret nc                                        ; $4d0f: $d0

    ld a, c                                       ; $4d10: $79
    ld d, c                                       ; $4d11: $51
    rst $38                                       ; $4d12: $ff

jr_02a_4d13:
    xor [hl]                                      ; $4d13: $ae
    jr jr_02a_4d53                                ; $4d14: $18 $3d

    jp z, $340f                                   ; $4d16: $ca $0f $34

    db $fc                                        ; $4d19: $fc
    dec h                                         ; $4d1a: $25
    db $fd                                        ; $4d1b: $fd
    ld hl, sp-$6e                                 ; $4d1c: $f8 $92
    add e                                         ; $4d1e: $83
    inc c                                         ; $4d1f: $0c
    ld a, a                                       ; $4d20: $7f
    db $dd                                        ; $4d21: $dd
    sbc [hl]                                      ; $4d22: $9e
    ld e, h                                       ; $4d23: $5c

jr_02a_4d24:
    adc l                                         ; $4d24: $8d
    ret nz                                        ; $4d25: $c0

    jp c, $ef1f                                   ; $4d26: $da $1f $ef

    ld e, e                                       ; $4d29: $5b
    ld a, a                                       ; $4d2a: $7f
    ld e, [hl]                                    ; $4d2b: $5e
    ld a, [hl]                                    ; $4d2c: $7e
    ldh [$2a], a                                  ; $4d2d: $e0 $2a
    or b                                          ; $4d2f: $b0
    and d                                         ; $4d30: $a2
    sub $1f                                       ; $4d31: $d6 $1f
    add sp, $65                                   ; $4d33: $e8 $65
    db $e3                                        ; $4d35: $e3
    ld l, a                                       ; $4d36: $6f
    adc h                                         ; $4d37: $8c
    xor e                                         ; $4d38: $ab
    rst $18                                       ; $4d39: $df
    jr jr_02a_4d13                                ; $4d3a: $18 $d7

    and h                                         ; $4d3c: $a4
    ld b, c                                       ; $4d3d: $41
    db $eb                                        ; $4d3e: $eb
    ld d, c                                       ; $4d3f: $51
    ld a, [hl]                                    ; $4d40: $7e
    and b                                         ; $4d41: $a0
    pop hl                                        ; $4d42: $e1
    cpl                                           ; $4d43: $2f
    jp hl                                         ; $4d44: $e9


    rst $00                                       ; $4d45: $c7
    sub a                                         ; $4d46: $97
    ld e, h                                       ; $4d47: $5c
    ld d, c                                       ; $4d48: $51
    ld e, b                                       ; $4d49: $58
    dec d                                         ; $4d4a: $15
    dec c                                         ; $4d4b: $0d
    dec b                                         ; $4d4c: $05
    di                                            ; $4d4d: $f3
    ld e, h                                       ; $4d4e: $5c
    cp h                                          ; $4d4f: $bc
    or $cf                                        ; $4d50: $f6 $cf
    ld c, [hl]                                    ; $4d52: $4e

jr_02a_4d53:
    add hl, de                                    ; $4d53: $19
    db $e4                                        ; $4d54: $e4
    ld h, d                                       ; $4d55: $62
    ld d, d                                       ; $4d56: $52
    ret nz                                        ; $4d57: $c0

    dec e                                         ; $4d58: $1d
    xor a                                         ; $4d59: $af
    rst $10                                       ; $4d5a: $d7
    cpl                                           ; $4d5b: $2f
    dec b                                         ; $4d5c: $05
    di                                            ; $4d5d: $f3
    sbc h                                         ; $4d5e: $9c
    cp h                                          ; $4d5f: $bc
    dec de                                        ; $4d60: $1b
    and c                                         ; $4d61: $a1
    ld a, c                                       ; $4d62: $79
    xor [hl]                                      ; $4d63: $ae
    sub e                                         ; $4d64: $93
    db $fc                                        ; $4d65: $fc
    dec bc                                        ; $4d66: $0b
    jp nz, $6667                                  ; $4d67: $c2 $67 $66

    ld h, h                                       ; $4d6a: $64
    rra                                           ; $4d6b: $1f
    and [hl]                                      ; $4d6c: $a6
    ld a, b                                       ; $4d6d: $78
    rla                                           ; $4d6e: $17
    inc c                                         ; $4d6f: $0c
    xor l                                         ; $4d70: $ad
    ld a, [hl+]                                   ; $4d71: $2a
    jp nc, $d974                                  ; $4d72: $d2 $74 $d9

    ld d, c                                       ; $4d75: $51
    ld a, [c]                                     ; $4d76: $f2
    ld l, e                                       ; $4d77: $6b
    jp nc, Jump_02a_634c                          ; $4d78: $d2 $4c $63

    sbc h                                         ; $4d7b: $9c
    call c, Call_02a_78a0                         ; $4d7c: $dc $a0 $78
    ld d, a                                       ; $4d7f: $57
    inc c                                         ; $4d80: $0c
    cp l                                          ; $4d81: $bd
    ld e, $d0                                     ; $4d82: $1e $d0
    adc [hl]                                      ; $4d84: $8e
    ld [hl], $3e                                  ; $4d85: $36 $3e
    cpl                                           ; $4d87: $2f
    ccf                                           ; $4d88: $3f
    ld b, e                                       ; $4d89: $43
    or a                                          ; $4d8a: $b7
    ld c, d                                       ; $4d8b: $4a
    and c                                         ; $4d8c: $a1
    ld e, l                                       ; $4d8d: $5d
    ld e, b                                       ; $4d8e: $58
    ld e, d                                       ; $4d8f: $5a
    ld e, a                                       ; $4d90: $5f
    and $e5                                       ; $4d91: $e6 $e5
    push hl                                       ; $4d93: $e5
    cp c                                          ; $4d94: $b9
    ld h, e                                       ; $4d95: $63
    xor a                                         ; $4d96: $af
    inc c                                         ; $4d97: $0c
    ld h, c                                       ; $4d98: $61
    dec a                                         ; $4d99: $3d
    ld l, [hl]                                    ; $4d9a: $6e
    ld hl, sp-$4d                                 ; $4d9b: $f8 $b3
    ld d, e                                       ; $4d9d: $53
    ld d, $fe                                     ; $4d9e: $16 $fe
    inc a                                         ; $4da0: $3c
    rla                                           ; $4da1: $17
    ld e, a                                       ; $4da2: $5f
    xor l                                         ; $4da3: $ad
    rst $08                                       ; $4da4: $cf
    ld e, l                                       ; $4da5: $5d
    xor e                                         ; $4da6: $ab
    adc d                                         ; $4da7: $8a
    inc [hl]                                      ; $4da8: $34
    ld l, b                                       ; $4da9: $68
    cp l                                          ; $4daa: $bd
    jp nc, $bf8c                                  ; $4dab: $d2 $8c $bf

    ld sp, $fdae                                  ; $4dae: $31 $ae $fd
    inc bc                                        ; $4db1: $03
    or l                                          ; $4db2: $b5
    ld a, a                                       ; $4db3: $7f
    sub h                                         ; $4db4: $94
    inc a                                         ; $4db5: $3c
    jp c, $c451                                   ; $4db6: $da $51 $c4

    ld h, $1f                                     ; $4db9: $26 $1f
    ld a, [hl]                                    ; $4dbb: $7e
    ret c                                         ; $4dbc: $d8

    ld a, [hl]                                    ; $4dbd: $7e
    pop hl                                        ; $4dbe: $e1
    ld c, $32                                     ; $4dbf: $0e $32
    ld a, h                                       ; $4dc1: $7c
    cp a                                          ; $4dc2: $bf
    pop hl                                        ; $4dc3: $e1
    jp $fcbc                                      ; $4dc4: $c3 $bc $fc


    ret nz                                        ; $4dc7: $c0

    ld d, l                                       ; $4dc8: $55
    ld h, b                                       ; $4dc9: $60
    ld a, [hl+]                                   ; $4dca: $2a
    ccf                                           ; $4dcb: $3f
    ld e, [hl]                                    ; $4dcc: $5e
    sub d                                         ; $4dcd: $92
    ld [bc], a                                    ; $4dce: $02
    add h                                         ; $4dcf: $84
    ld bc, $bd27                                  ; $4dd0: $01 $27 $bd
    rst $10                                       ; $4dd3: $d7
    ld h, b                                       ; $4dd4: $60
    pop bc                                        ; $4dd5: $c1
    ei                                            ; $4dd6: $fb
    jp c, $d55a                                   ; $4dd7: $da $5a $d5

    ld d, a                                       ; $4dda: $57
    ld [hl-], a                                   ; $4ddb: $32
    db $fc                                        ; $4ddc: $fc
    ld d, c                                       ; $4ddd: $51
    ld a, [c]                                     ; $4dde: $f2
    ld l, b                                       ; $4ddf: $68
    sub [hl]                                      ; $4de0: $96
    ld e, d                                       ; $4de1: $5a
    adc h                                         ; $4de2: $8c
    ld l, e                                       ; $4de3: $6b
    cp a                                          ; $4de4: $bf
    rst $08                                       ; $4de5: $cf
    sra a                                         ; $4de6: $cb $2f
    cp l                                          ; $4de8: $bd
    cp h                                          ; $4de9: $bc
    ret nz                                        ; $4dea: $c0

    ld d, h                                       ; $4deb: $54
    ld a, [hl]                                    ; $4dec: $7e
    ld e, [hl]                                    ; $4ded: $5e
    ld e, [hl]                                    ; $4dee: $5e
    ld a, [hl]                                    ; $4def: $7e
    ld a, [de]                                    ; $4df0: $1a
    push hl                                       ; $4df1: $e5
    sub l                                         ; $4df2: $95
    dec [hl]                                      ; $4df3: $35
    ld [$1603], sp                                ; $4df4: $08 $03 $16
    xor a                                         ; $4df7: $af
    pop bc                                        ; $4df8: $c1
    ld [hl], h                                    ; $4df9: $74
    ld b, c                                       ; $4dfa: $41
    ld h, $9b                                     ; $4dfb: $26 $9b
    sub a                                         ; $4dfd: $97
    ld c, e                                       ; $4dfe: $4b
    pop bc                                        ; $4dff: $c1
    ld e, d                                       ; $4e00: $5a
    dec [hl]                                      ; $4e01: $35
    sub b                                         ; $4e02: $90
    bit 4, [hl]                                   ; $4e03: $cb $66
    and a                                         ; $4e05: $a7

jr_02a_4e06:
    ld hl, $26b6                                  ; $4e06: $21 $b6 $26
    call $cd2e                                    ; $4e09: $cd $2e $cd
    set 1, a                                      ; $4e0c: $cb $cf
    ld c, [hl]                                    ; $4e0e: $4e
    ld a, c                                       ; $4e0f: $79
    ld [hl], b                                    ; $4e10: $70
    or h                                          ; $4e11: $b4
    ld d, e                                       ; $4e12: $53
    sub d                                         ; $4e13: $92
    rst $20                                       ; $4e14: $e7
    xor [hl]                                      ; $4e15: $ae
    ld c, c                                       ; $4e16: $49

jr_02a_4e17:
    ld d, e                                       ; $4e17: $53
    ld h, e                                       ; $4e18: $63
    ld l, e                                       ; $4e19: $6b
    ccf                                           ; $4e1a: $3f
    ld hl, sp-$7e                                 ; $4e1b: $f8 $82
    sbc h                                         ; $4e1d: $9c
    call c, $f8a0                                 ; $4e1e: $dc $a0 $f8
    inc a                                         ; $4e21: $3c
    ld [hl], a                                    ; $4e22: $77
    cp h                                          ; $4e23: $bc
    inc [hl]                                      ; $4e24: $34
    or [hl]                                       ; $4e25: $b6
    ld a, l                                       ; $4e26: $7d
    adc c                                         ; $4e27: $89
    and l                                         ; $4e28: $a5
    jr nz, @+$0e                                  ; $4e29: $20 $0c

    ld b, a                                       ; $4e2b: $47
    ld l, e                                       ; $4e2c: $6b
    ld d, l                                       ; $4e2d: $55
    sbc a                                         ; $4e2e: $9f
    rst $20                                       ; $4e2f: $e7
    jp c, $a6cf                                   ; $4e30: $da $cf $a6

    cp [hl]                                       ; $4e33: $be
    and h                                         ; $4e34: $a4
    ld [$ebb9], a                                 ; $4e35: $ea $b9 $eb
    sbc [hl]                                      ; $4e38: $9e
    xor $2f                                       ; $4e39: $ee $2f
    ld [$bd03], sp                                ; $4e3b: $08 $03 $bd
    jp nc, $d8c8                                  ; $4e3e: $d2 $c8 $d8

    ei                                            ; $4e41: $fb
    sub e                                         ; $4e42: $93
    rst $18                                       ; $4e43: $df
    and h                                         ; $4e44: $a4
    ld e, l                                       ; $4e45: $5d
    ld e, b                                       ; $4e46: $58
    sub l                                         ; $4e47: $95
    ld h, c                                       ; $4e48: $61
    daa                                           ; $4e49: $27
    cp [hl]                                       ; $4e4a: $be
    ccf                                           ; $4e4b: $3f
    ld [hl], a                                    ; $4e4c: $77
    xor l                                         ; $4e4d: $ad
    ld a, [hl+]                                   ; $4e4e: $2a
    jp nc, Jump_000_1da0                          ; $4e4f: $d2 $a0 $1d

    sbc a                                         ; $4e52: $9f
    ld h, e                                       ; $4e53: $63
    ld d, a                                       ; $4e54: $57
    cp [hl]                                       ; $4e55: $be
    ld a, [c]                                     ; $4e56: $f2
    ret c                                         ; $4e57: $d8

    call z, $c773                                 ; $4e58: $cc $73 $c7
    ld c, e                                       ; $4e5b: $4b
    ld h, e                                       ; $4e5c: $63
    db $db                                        ; $4e5d: $db
    sub a                                         ; $4e5e: $97
    ld e, b                                       ; $4e5f: $58
    ld a, [bc]                                    ; $4e60: $0a
    jp nz, Jump_02a_6fdd                          ; $4e61: $c2 $dd $6f

    jr nc, jr_02a_4e06                            ; $4e64: $30 $a0

    inc [hl]                                      ; $4e66: $34
    adc [hl]                                      ; $4e67: $8e
    jr nc, jr_02a_4e17                            ; $4e68: $30 $ad

    ld a, [hl+]                                   ; $4e6a: $2a
    jp nc, Jump_02a_5974                          ; $4e6b: $d2 $74 $59

    rst $08                                       ; $4e6e: $cf
    and d                                         ; $4e6f: $a2
    cp [hl]                                       ; $4e70: $be
    and d                                         ; $4e71: $a2
    sbc l                                         ; $4e72: $9d
    adc $d3                                       ; $4e73: $ce $d3
    or e                                          ; $4e75: $b3
    xor [hl]                                      ; $4e76: $ae
    jr jr_02a_4ee0                                ; $4e77: $18 $67

    ld h, [hl]                                    ; $4e79: $66
    ld h, h                                       ; $4e7a: $64
    rra                                           ; $4e7b: $1f
    and [hl]                                      ; $4e7c: $a6
    ld hl, sp+$2e                                 ; $4e7d: $f8 $2e
    db $ec                                        ; $4e7f: $ec
    jp nc, $fcbc                                  ; $4e80: $d2 $bc $fc

    db $ec                                        ; $4e83: $ec
    sub h                                         ; $4e84: $94
    rlca                                          ; $4e85: $07
    rst $20                                       ; $4e86: $e7
    adc [hl]                                      ; $4e87: $8e

jr_02a_4e88:
    rst $10                                       ; $4e88: $d7
    db $eb                                        ; $4e89: $eb
    sub a                                         ; $4e8a: $97
    add d                                         ; $4e8b: $82
    ld a, c                                       ; $4e8c: $79
    ld l, $78                                     ; $4e8d: $2e $78
    sbc a                                         ; $4e8f: $9f
    sub a                                         ; $4e90: $97
    ld e, a                                       ; $4e91: $5f
    rst $30                                       ; $4e92: $f7
    ld [hl], d                                    ; $4e93: $72
    ld h, e                                       ; $4e94: $63
    ld b, d                                       ; $4e95: $42
    halt                                          ; $4e96: $76
    jp z, Jump_000_0d4b                           ; $4e97: $ca $4b $0d

    sub $e2                                       ; $4e9a: $d6 $e2
    ld c, c                                       ; $4e9c: $49
    adc a                                         ; $4e9d: $8f
    halt                                          ; $4e9e: $76
    inc d                                         ; $4e9f: $14
    or c                                          ; $4ea0: $b1
    ld e, c                                       ; $4ea1: $59
    and $e5                                       ; $4ea2: $e6 $e5
    ld d, d                                       ; $4ea4: $52
    ld a, l                                       ; $4ea5: $7d
    dec l                                         ; $4ea6: $2d
    and h                                         ; $4ea7: $a4
    sbc l                                         ; $4ea8: $9d
    ld e, a                                       ; $4ea9: $5f
    ld d, c                                       ; $4eaa: $51
    jr jr_02a_4f01                                ; $4eab: $18 $54

    ld a, [hl+]                                   ; $4ead: $2a
    rst $08                                       ; $4eae: $cf
    halt                                          ; $4eaf: $76
    sbc d                                         ; $4eb0: $9a
    cp c                                          ; $4eb1: $b9
    ld [hl+], a                                   ; $4eb2: $22
    rra                                           ; $4eb3: $1f
    db $e3                                        ; $4eb4: $e3

jr_02a_4eb5:
    ld l, $79                                     ; $4eb5: $2e $79
    xor [hl]                                      ; $4eb7: $ae
    ld a, h                                       ; $4eb8: $7c
    db $ec                                        ; $4eb9: $ec
    ld e, h                                       ; $4eba: $5c
    ld a, [bc]                                    ; $4ebb: $0a
    ld d, [hl]                                    ; $4ebc: $56
    ld l, [hl]                                    ; $4ebd: $6e
    adc b                                         ; $4ebe: $88
    jr nc, jr_02a_4e88                            ; $4ebf: $30 $c7

    inc h                                         ; $4ec1: $24
    push de                                       ; $4ec2: $d5
    ld a, h                                       ; $4ec3: $7c
    and b                                         ; $4ec4: $a0
    call $85ca                                    ; $4ec5: $cd $ca $85
    sub c                                         ; $4ec8: $91
    add [hl]                                      ; $4ec9: $86
    rst $18                                       ; $4eca: $df
    dec b                                         ; $4ecb: $05
    inc bc                                        ; $4ecc: $03
    rst $00                                       ; $4ecd: $c7
    ld e, l                                       ; $4ece: $5d

Jump_02a_4ecf:
    ld a, c                                       ; $4ecf: $79
    ld [c], a                                     ; $4ed0: $e2
    ld hl, sp-$0d                                 ; $4ed1: $f8 $f3
    ld a, [c]                                     ; $4ed3: $f2
    db $eb                                        ; $4ed4: $eb
    or $e4                                        ; $4ed5: $f6 $e4
    ld l, d                                       ; $4ed7: $6a
    ld h, h                                       ; $4ed8: $64
    and b                                         ; $4ed9: $a0
    sub $67                                       ; $4eda: $d6 $67
    dec bc                                        ; $4edc: $0b
    sbc a                                         ; $4edd: $9f
    cp e                                          ; $4ede: $bb
    or [hl]                                       ; $4edf: $b6

jr_02a_4ee0:
    pop af                                        ; $4ee0: $f1
    and l                                         ; $4ee1: $a5
    sub a                                         ; $4ee2: $97
    sub a                                         ; $4ee3: $97
    ld [hl], l                                    ; $4ee4: $75
    ld a, e                                       ; $4ee5: $7b
    ld [hl], d                                    ; $4ee6: $72
    dec [hl]                                      ; $4ee7: $35
    ld [bc], a                                    ; $4ee8: $02
    ld l, e                                       ; $4ee9: $6b
    ld a, a                                       ; $4eea: $7f
    cp h                                          ; $4eeb: $bc
    ld l, a                                       ; $4eec: $6f
    db $fd                                        ; $4eed: $fd
    sbc l                                         ; $4eee: $9d
    sbc c                                         ; $4eef: $99
    sub c                                         ; $4ef0: $91
    ld a, l                                       ; $4ef1: $7d
    sbc b                                         ; $4ef2: $98
    ld [c], a                                     ; $4ef3: $e2
    db $e3                                        ; $4ef4: $e3
    ld l, a                                       ; $4ef5: $6f
    adc h                                         ; $4ef6: $8c
    xor e                                         ; $4ef7: $ab
    rst $18                                       ; $4ef8: $df
    jr @+$19                                      ; $4ef9: $18 $17

    ld a, $5a                                     ; $4efb: $3e $5a
    adc a                                         ; $4efd: $8f
    ld a, [c]                                     ; $4efe: $f2
    inc bc                                        ; $4eff: $03
    ld d, a                                       ; $4f00: $57

jr_02a_4f01:
    add c                                         ; $4f01: $81
    add c                                         ; $4f02: $81
    ld [hl], $83                                  ; $4f03: $36 $83
    ld b, h                                       ; $4f05: $44
    jr jr_02a_4eb5                                ; $4f06: $18 $ad

    ld e, a                                       ; $4f08: $5f
    adc e                                         ; $4f09: $8b
    ld [hl], c                                    ; $4f0a: $71
    pop bc                                        ; $4f0b: $c1
    ei                                            ; $4f0c: $fb
    inc c                                         ; $4f0d: $0c
    ld c, h                                       ; $4f0e: $4c
    ld h, e                                       ; $4f0f: $63
    call c, $d7b5                                 ; $4f10: $dc $b5 $d7
    and h                                         ; $4f13: $a4
    ld e, c                                       ; $4f14: $59
    db $fd                                        ; $4f15: $fd
    cp a                                          ; $4f16: $bf
    inc sp                                        ; $4f17: $33
    ret nc                                        ; $4f18: $d0

    and $52                                       ; $4f19: $e6 $52
    or b                                          ; $4f1b: $b0
    ld [hl], d                                    ; $4f1c: $72
    ld h, c                                       ; $4f1d: $61
    and h                                         ; $4f1e: $a4
    pop hl                                        ; $4f1f: $e1
    ld [hl], a                                    ; $4f20: $77
    pop bc                                        ; $4f21: $c1
    xor l                                         ; $4f22: $ad
    ld a, [hl+]                                   ; $4f23: $2a
    jp nc, $6770                                  ; $4f24: $d2 $70 $67

    xor c                                         ; $4f27: $a9
    ld e, c                                       ; $4f28: $59
    ld a, a                                       ; $4f29: $7f
    push hl                                       ; $4f2a: $e5
    ld d, l                                       ; $4f2b: $55
    ret c                                         ; $4f2c: $d8

    cp h                                          ; $4f2d: $bc

jr_02a_4f2e:
    xor b                                         ; $4f2e: $a8
    rst $28                                       ; $4f2f: $ef
    call z, $ec8c                                 ; $4f30: $cc $8c $ec
    jp $df14                                      ; $4f33: $c3 $14 $df


    add l                                         ; $4f36: $85
    xor c                                         ; $4f37: $a9
    dec l                                         ; $4f38: $2d
    ld a, d                                       ; $4f39: $7a
    reti                                          ; $4f3a: $d9


    jp nc, Jump_000_31de                          ; $4f3b: $d2 $de $31

    ld h, $6c                                     ; $4f3e: $26 $6c
    rst $00                                       ; $4f40: $c7
    ld h, a                                       ; $4f41: $67
    add hl, hl                                    ; $4f42: $29
    adc a                                         ; $4f43: $8f
    halt                                          ; $4f44: $76
    inc d                                         ; $4f45: $14
    inc l                                         ; $4f46: $2c
    ld h, $05                                     ; $4f47: $26 $05
    ld d, e                                       ; $4f49: $53
    ld e, b                                       ; $4f4a: $58
    ld sp, hl                                     ; $4f4b: $f9
    ld a, [de]                                    ; $4f4c: $1a
    ld c, h                                       ; $4f4d: $4c

Jump_02a_4f4e:
    dec h                                         ; $4f4e: $25
    dec c                                         ; $4f4f: $0d
    ld sp, $9aee                                  ; $4f50: $31 $ee $9a
    inc [hl]                                      ; $4f53: $34
    or l                                          ; $4f54: $b5
    jr jr_02a_4f2e                                ; $4f55: $18 $d7

    cp $81                                        ; $4f57: $fe $81
    jp c, Jump_02a_768f                           ; $4f59: $da $8f $76

    ld c, d                                       ; $4f5c: $4a
    ld a, [c]                                     ; $4f5d: $f2
    db $e3                                        ; $4f5e: $e3
    ld a, a                                       ; $4f5f: $7f
    ld d, b                                       ; $4f60: $50
    jp nc, $b644                                  ; $4f61: $d2 $44 $b6

    ldh [$7d], a                                  ; $4f64: $e0 $7d
    sub b                                         ; $4f66: $90
    pop hl                                        ; $4f67: $e1
    rrca                                          ; $4f68: $0f
    ld [c], a                                     ; $4f69: $e2
    ld a, a                                       ; $4f6a: $7f
    rlca                                          ; $4f6b: $07
    ld h, c                                       ; $4f6c: $61
    daa                                           ; $4f6d: $27
    scf                                           ; $4f6e: $37
    or e                                          ; $4f6f: $b3
    sub b                                         ; $4f70: $90
    push af                                       ; $4f71: $f5
    jp nz, $df6d                                  ; $4f72: $c2 $6d $df

    ld a, b                                       ; $4f75: $78
    cp l                                          ; $4f76: $bd
    ld e, c                                       ; $4f77: $59
    or a                                          ; $4f78: $b7
    sbc b                                         ; $4f79: $98
    ld e, d                                       ; $4f7a: $5a
    ld b, a                                       ; $4f7b: $47
    ld [$af5d], sp                                ; $4f7c: $08 $5d $af
    pop bc                                        ; $4f7f: $c1
    jp c, $d55a                                   ; $4f80: $da $5a $d5

    cp e                                          ; $4f83: $bb
    db $ec                                        ; $4f84: $ec
    jr z, jr_02a_4fe9                             ; $4f85: $28 $62

    di                                            ; $4f87: $f3

jr_02a_4f88:
    ld a, [c]                                     ; $4f88: $f2
    ld a, [c]                                     ; $4f89: $f2
    dec [hl]                                      ; $4f8a: $35
    sbc b                                         ; $4f8b: $98
    adc [hl]                                      ; $4f8c: $8e
    jp nc, $fc7f                                  ; $4f8d: $d2 $7f $fc

    push af                                       ; $4f90: $f5
    or d                                          ; $4f91: $b2
    db $eb                                        ; $4f92: $eb
    ld [$2703], sp                                ; $4f93: $08 $03 $27
    jr jr_02a_4f88                                ; $4f96: $18 $f0

    ld e, l                                       ; $4f98: $5d
    ld e, d                                       ; $4f99: $5a
    and l                                         ; $4f9a: $a5
    ldh a, [$08]                                  ; $4f9b: $f0 $08
    inc bc                                        ; $4f9d: $03
    rst $00                                       ; $4f9e: $c7
    ld e, l                                       ; $4f9f: $5d
    ld h, d                                       ; $4fa0: $62
    ld l, e                                       ; $4fa1: $6b
    push de                                       ; $4fa2: $d5
    ld b, b                                       ; $4fa3: $40
    ld l, $db                                     ; $4fa4: $2e $db
    and l                                         ; $4fa6: $a5
    dec e                                         ; $4fa7: $1d
    cpl                                           ; $4fa8: $2f
    sub a                                         ; $4fa9: $97
    add d                                         ; $4faa: $82
    ld [hl], h                                    ; $4fab: $74
    add a                                         ; $4fac: $87
    jp c, $ca4e                                   ; $4fad: $da $4e $ca

    halt                                          ; $4fb0: $76
    cp e                                          ; $4fb1: $bb
    ld b, c                                       ; $4fb2: $41
    jr jr_02a_4ffc                                ; $4fb3: $18 $47

    sbc e                                         ; $4fb5: $9b
    ld h, [hl]                                    ; $4fb6: $66
    dec l                                         ; $4fb7: $2d
    ld d, l                                       ; $4fb8: $55
    ret                                           ; $4fb9: $c9


    adc h                                         ; $4fba: $8c
    ld l, e                                       ; $4fbb: $6b
    ld sp, $4e9d                                  ; $4fbc: $31 $9d $4e
    cp h                                          ; $4fbf: $bc
    rrca                                          ; $4fc0: $0f
    cp e                                          ; $4fc1: $bb
    or h                                          ; $4fc2: $b4
    ld h, e                                       ; $4fc3: $63
    xor [hl]                                      ; $4fc4: $ae
    ld b, $49                                     ; $4fc5: $06 $49
    dec sp                                        ; $4fc7: $3b
    ld a, [hl+]                                   ; $4fc8: $2a

Jump_02a_4fc9:
    add $6f                                       ; $4fc9: $c6 $6f
    db $10                                        ; $4fcb: $10
    ld b, $c7                                     ; $4fcc: $06 $c7
    cp a                                          ; $4fce: $bf
    cpl                                           ; $4fcf: $2f
    ld l, c                                       ; $4fd0: $69
    ld e, [hl]                                    ; $4fd1: $5e
    ld a, [hl]                                    ; $4fd2: $7e
    xor l                                         ; $4fd3: $ad
    add hl, de                                    ; $4fd4: $19
    ldh a, [$2a]                                  ; $4fd5: $f0 $2a
    ld c, $3b                                     ; $4fd7: $0e $3b
    sub [hl]                                      ; $4fd9: $96
    ld b, e                                       ; $4fda: $43
    ld b, a                                       ; $4fdb: $47
    ld e, $00                                     ; $4fdc: $1e $00
    ld h, c                                       ; $4fde: $61
    rst $00                                       ; $4fdf: $c7
    ld e, l                                       ; $4fe0: $5d
    ld h, d                                       ; $4fe1: $62
    db $d3                                        ; $4fe2: $d3
    pop bc                                        ; $4fe3: $c1
    xor e                                         ; $4fe4: $ab
    cpl                                           ; $4fe5: $2f
    ld l, c                                       ; $4fe6: $69
    ld e, [hl]                                    ; $4fe7: $5e
    ld a, [hl]                                    ; $4fe8: $7e

jr_02a_4fe9:
    xor l                                         ; $4fe9: $ad
    add hl, de                                    ; $4fea: $19
    ldh a, [$2a]                                  ; $4feb: $f0 $2a
    ld c, $3b                                     ; $4fed: $0e $3b
    sub [hl]                                      ; $4fef: $96
    ld b, e                                       ; $4ff0: $43
    ld b, a                                       ; $4ff1: $47
    ld e, $00                                     ; $4ff2: $1e $00
    ld h, c                                       ; $4ff4: $61
    db $dd                                        ; $4ff5: $dd
    inc h                                         ; $4ff6: $24
    ld bc, $e5e6                                  ; $4ff7: $01 $e6 $e5
    rla                                           ; $4ffa: $17
    or l                                          ; $4ffb: $b5

jr_02a_4ffc:
    cp $53                                        ; $4ffc: $fe $53
    ld e, a                                       ; $4ffe: $5f
    ld l, e                                       ; $4fff: $6b
    ld b, $bc                                     ; $5000: $06 $bc
    adc d                                         ; $5002: $8a
    jp Jump_02a_524e                              ; $5003: $c3 $4e $52


    ld h, d                                       ; $5006: $62
    sub a                                         ; $5007: $97
    ld [bc], a                                    ; $5008: $02
    add h                                         ; $5009: $84
    ld bc, $bfc7                                  ; $500a: $01 $c7 $bf
    rst $08                                       ; $500d: $cf
    adc e                                         ; $500e: $8b
    and h                                         ; $500f: $a4
    add hl, bc                                    ; $5010: $09
    jp z, $fcbc                                   ; $5011: $ca $bc $fc

    ld e, d                                       ; $5014: $5a
    inc sp                                        ; $5015: $33
    ldh [rHDMA5], a                               ; $5016: $e0 $55
    inc e                                         ; $5018: $1c
    add $0c                                       ; $5019: $c6 $0c
    dec b                                         ; $501b: $05
    sbc a                                         ; $501c: $9f
    inc b                                         ; $501d: $04

jr_02a_501e:
    ld [$c761], sp                                ; $501e: $08 $61 $c7
    cp a                                          ; $5021: $bf
    rrca                                          ; $5022: $0f
    ld d, d                                       ; $5023: $52
    db $fc                                        ; $5024: $fc
    reti                                          ; $5025: $d9


    ld l, $79                                     ; $5026: $2e $79
    ld c, [hl]                                    ; $5028: $4e
    rst $10                                       ; $5029: $d7
    sbc d                                         ; $502a: $9a
    ld b, $1e                                     ; $502b: $06 $1e
    ld h, c                                       ; $502d: $61
    rst $00                                       ; $502e: $c7
    ld e, l                                       ; $502f: $5d
    ld h, d                                       ; $5030: $62
    dec sp                                        ; $5031: $3b
    ld e, [hl]                                    ; $5032: $5e
    ld a, [de]                                    ; $5033: $1a
    db $db                                        ; $5034: $db
    cp [hl]                                       ; $5035: $be
    call nz, $1052                                ; $5036: $c4 $52 $10
    ld b, $c7                                     ; $5039: $06 $c7
    cp a                                          ; $503b: $bf
    rst $08                                       ; $503c: $cf
    ld [hl], e                                    ; $503d: $73
    db $dd                                        ; $503e: $dd
    db $d3                                        ; $503f: $d3
    ld l, a                                       ; $5040: $6f
    ld [de], a                                    ; $5041: $12
    xor h                                         ; $5042: $ac
    ld e, e                                       ; $5043: $5b
    ld d, h                                       ; $5044: $54
    nop                                           ; $5045: $00
    add h                                         ; $5046: $84
    ld bc, $5dc7                                  ; $5047: $01 $c7 $5d
    ld h, d                                       ; $504a: $62
    or e                                          ; $504b: $b3
    ld d, b                                       ; $504c: $50
    jr nz, jr_02a_501e                            ; $504d: $20 $cf

    xor $93                                       ; $504f: $ee $93
    jp $94ec                                      ; $5051: $c3 $ec $94


    or l                                          ; $5054: $b5
    sub b                                         ; $5055: $90
    halt                                          ; $5056: $76
    ld e, $61                                     ; $5057: $1e $61
    jp $b4dd                                      ; $5059: $c3 $dd $b4


    db $e3                                        ; $505c: $e3
    ld b, [hl]                                    ; $505d: $46
    ld a, [hl]                                    ; $505e: $7e
    ld e, [hl]                                    ; $505f: $5e
    ld a, [hl]                                    ; $5060: $7e
    db $dd                                        ; $5061: $dd
    adc l                                         ; $5062: $8d
    ld [hl], h                                    ; $5063: $74
    ld [c], a                                     ; $5064: $e2
    rst $28                                       ; $5065: $ef
    ld [hl], h                                    ; $5066: $74
    ld l, l                                       ; $5067: $6d
    or a                                          ; $5068: $b7
    xor a                                         ; $5069: $af
    inc hl                                        ; $506a: $23
    inc c                                         ; $506b: $0c
    rst $00                                       ; $506c: $c7
    ld e, l                                       ; $506d: $5d
    ld h, d                                       ; $506e: $62
    dec sp                                        ; $506f: $3b
    ld a, b                                       ; $5070: $78
    push hl                                       ; $5071: $e5
    and l                                         ; $5072: $a5
    dec c                                         ; $5073: $0d

Jump_02a_5074:
    or e                                          ; $5074: $b3
    ld d, e                                       ; $5075: $53

Call_02a_5076:
    and $e5                                       ; $5076: $e6 $e5
    rst $10                                       ; $5078: $d7
    ld a, [$ced2]                                 ; $5079: $fa $d2 $ce
    sbc b                                         ; $507c: $98
    ld b, c                                       ; $507d: $41
    or e                                          ; $507e: $b3
    ld l, [hl]                                    ; $507f: $6e
    ld d, c                                       ; $5080: $51

jr_02a_5081:
    ld bc, $0610                                  ; $5081: $01 $10 $06
    rst $00                                       ; $5084: $c7
    ld e, l                                       ; $5085: $5d
    ld h, d                                       ; $5086: $62
    dec sp                                        ; $5087: $3b
    ld a, b                                       ; $5088: $78
    push hl                                       ; $5089: $e5
    and l                                         ; $508a: $a5
    dec c                                         ; $508b: $0d
    or e                                          ; $508c: $b3
    ld d, e                                       ; $508d: $53
    and $e5                                       ; $508e: $e6 $e5
    rst $10                                       ; $5090: $d7
    ld a, [$ced2]                                 ; $5091: $fa $d2 $ce
    sbc b                                         ; $5094: $98
    ld b, c                                       ; $5095: $41
    or e                                          ; $5096: $b3
    ld l, [hl]                                    ; $5097: $6e
    ld d, c                                       ; $5098: $51
    ld bc, $0610                                  ; $5099: $01 $10 $06
    jp $c7c3                                      ; $509c: $c3 $c3 $c7


    ld e, l                                       ; $509f: $5d
    ld h, d                                       ; $50a0: $62
    di                                            ; $50a1: $f3
    ld a, [c]                                     ; $50a2: $f2
    dec sp                                        ; $50a3: $3b
    and $ed                                       ; $50a4: $e6 $ed
    and a                                         ; $50a6: $a7
    ld [$5477], a                                 ; $50a7: $ea $77 $54
    and b                                         ; $50aa: $a0
    sub a                                         ; $50ab: $97
    ret nz                                        ; $50ac: $c0

    ld [hl], a                                    ; $50ad: $77

jr_02a_50ae:
    adc h                                         ; $50ae: $8c
    ld c, d                                       ; $50af: $4a
    ld a, l                                       ; $50b0: $7d
    ld b, a                                       ; $50b1: $47
    adc c                                         ; $50b2: $89
    jp Jump_02a_45ba                              ; $50b3: $c3 $ba $45


    dec b                                         ; $50b6: $05
    ld b, b                                       ; $50b7: $40
    jr jr_02a_5081                                ; $50b8: $18 $c7

    ld e, l                                       ; $50ba: $5d
    ld h, d                                       ; $50bb: $62
    db $d3                                        ; $50bc: $d3
    pop af                                        ; $50bd: $f1
    jp c, Jump_02a_73cc                           ; $50be: $da $cc $73

    ld a, [c]                                     ; $50c1: $f2
    ld h, c                                       ; $50c2: $61
    ld e, d                                       ; $50c3: $5a
    ld a, a                                       ; $50c4: $7f
    ld c, l                                       ; $50c5: $4d
    ld a, [de]                                    ; $50c6: $1a
    ld e, c                                       ; $50c7: $59
    scf                                           ; $50c8: $37
    inc hl                                        ; $50c9: $23
    ldh a, [$08]                                  ; $50ca: $f0 $08
    inc bc                                        ; $50cc: $03
    jp $bfc7                                      ; $50cd: $c3 $c7 $bf


    rst $28                                       ; $50d0: $ef
    sub h                                         ; $50d1: $94
    or a                                          ; $50d2: $b7
    sbc $18                                       ; $50d3: $de $18
    cp a                                          ; $50d5: $bf
    ld b, $3b                                     ; $50d6: $06 $3b
    db $fd                                        ; $50d8: $fd
    jp $db0f                                      ; $50d9: $c3 $0f $db


    and d                                         ; $50dc: $a2
    ld sp, $adae                                  ; $50dd: $31 $ae $ad
    ld d, l                                       ; $50e0: $55
    ld a, l                                       ; $50e1: $7d
    or [hl]                                       ; $50e2: $b6
    ld h, h                                       ; $50e3: $64
    cp b                                          ; $50e4: $b8
    ld h, e                                       ; $50e5: $63
    ld b, h                                       ; $50e6: $44
    xor e                                         ; $50e7: $ab
    ld b, h                                       ; $50e8: $44
    jr jr_02a_50ae                                ; $50e9: $18 $c3

    jp $bfa7                                      ; $50eb: $c3 $a7 $bf


    dec de                                        ; $50ee: $1b
    and c                                         ; $50ef: $a1
    ld a, c                                       ; $50f0: $79
    adc $cb                                       ; $50f1: $ce $cb
    xor a                                         ; $50f3: $af
    push af                                       ; $50f4: $f5
    add d                                         ; $50f5: $82
    and a                                         ; $50f6: $a7
    inc [hl]                                      ; $50f7: $34
    ld c, e                                       ; $50f8: $4b
    ld a, e                                       ; $50f9: $7b
    daa                                           ; $50fa: $27
    ld l, e                                       ; $50fb: $6b
    ld [hl], b                                    ; $50fc: $70

jr_02a_50fd:
    xor e                                         ; $50fd: $ab
    ld [hl], l                                    ; $50fe: $75
    adc e                                         ; $50ff: $8b
    ld a, [bc]                                    ; $5100: $0a
    add b                                         ; $5101: $80
    jr nc, @-$37                                  ; $5102: $30 $c7

    ld e, l                                       ; $5104: $5d
    ld h, d                                       ; $5105: $62
    di                                            ; $5106: $f3
    ld a, [c]                                     ; $5107: $f2
    db $eb                                        ; $5108: $eb
    halt                                          ; $5109: $76
    and l                                         ; $510a: $a5
    ld a, [$5375]                                 ; $510b: $fa $75 $53
    ld h, c                                       ; $510e: $61
    ld [$c703], sp                                ; $510f: $08 $03 $c7
    ld e, l                                       ; $5112: $5d
    ld h, d                                       ; $5113: $62
    di                                            ; $5114: $f3
    ld a, [c]                                     ; $5115: $f2
    db $eb                                        ; $5116: $eb
    halt                                          ; $5117: $76
    and l                                         ; $5118: $a5
    ld a, [$5375]                                 ; $5119: $fa $75 $53
    ld h, c                                       ; $511c: $61
    ld [$c303], sp                                ; $511d: $08 $03 $c3
    jp $a7c3                                      ; $5120: $c3 $c3 $a7


    cp a                                          ; $5123: $bf
    dec de                                        ; $5124: $1b
    and c                                         ; $5125: $a1
    ld a, c                                       ; $5126: $79
    adc $cb                                       ; $5127: $ce $cb
    xor a                                         ; $5129: $af
    push af                                       ; $512a: $f5
    add d                                         ; $512b: $82
    and a                                         ; $512c: $a7
    inc [hl]                                      ; $512d: $34
    ld c, e                                       ; $512e: $4b
    ld a, e                                       ; $512f: $7b
    daa                                           ; $5130: $27
    ld l, e                                       ; $5131: $6b
    ld [hl], b                                    ; $5132: $70
    xor e                                         ; $5133: $ab
    ld [hl], l                                    ; $5134: $75
    adc e                                         ; $5135: $8b
    ld a, [bc]                                    ; $5136: $0a
    add b                                         ; $5137: $80
    jr nc, jr_02a_50fd                            ; $5138: $30 $c3

    jp $c3c3                                      ; $513a: $c3 $c3 $c3


    jp $c3c3                                      ; $513d: $c3 $c3 $c3


    jp $c7c3                                      ; $5140: $c3 $c3 $c7


    rst $20                                       ; $5143: $e7
    inc a                                         ; $5144: $3c
    rst $20                                       ; $5145: $e7
    push hl                                       ; $5146: $e5
    rst $10                                       ; $5147: $d7
    ld b, e                                       ; $5148: $43
    or d                                          ; $5149: $b2
    ld d, e                                       ; $514a: $53
    sbc d                                         ; $514b: $9a
    sbc l                                         ; $514c: $9d
    sbc [hl]                                      ; $514d: $9e
    add hl, de                                    ; $514e: $19

jr_02a_514f:
    adc $4e                                       ; $514f: $ce $4e
    sbc c                                         ; $5151: $99
    sub a                                         ; $5152: $97
    rst $18                                       ; $5153: $df
    ret                                           ; $5154: $c9


    sub a                                         ; $5155: $97
    pop de                                        ; $5156: $d1
    dec c                                         ; $5157: $0d
    adc d                                         ; $5158: $8a
    rst $28                                       ; $5159: $ef
    jr jr_02a_514f                                ; $515a: $18 $f3

    ld de, $c761                                  ; $515c: $11 $61 $c7
    rst $20                                       ; $515f: $e7
    jp c, $d55a                                   ; $5160: $da $5a $d5

    rst $20                                       ; $5163: $e7
    cp c                                          ; $5164: $b9
    db $e3                                        ; $5165: $e3
    and l                                         ; $5166: $a5
    or c                                          ; $5167: $b1
    db $ed                                        ; $5168: $ed
    ld c, e                                       ; $5169: $4b
    inc l                                         ; $516a: $2c
    dec b                                         ; $516b: $05
    ld h, c                                       ; $516c: $61
    jp $c3c3                                      ; $516d: $c3 $c3 $c3


    jp $c3c3                                      ; $5170: $c3 $c3 $c3


    jp $c3c3                                      ; $5173: $c3 $c3 $c3


    jp $e7c7                                      ; $5176: $c3 $c7 $e7


    inc a                                         ; $5179: $3c
    rst $20                                       ; $517a: $e7
    push hl                                       ; $517b: $e5
    rst $10                                       ; $517c: $d7
    xor d                                         ; $517d: $aa
    ld sp, $ff26                                  ; $517e: $31 $26 $ff
    ld c, a                                       ; $5181: $4f
    dec sp                                        ; $5182: $3b
    xor $15                                       ; $5183: $ee $15
    inc e                                         ; $5185: $1c
    ld h, c                                       ; $5186: $61
    dec l                                         ; $5187: $2d
    ld l, d                                       ; $5188: $6a
    db $fd                                        ; $5189: $fd
    or l                                          ; $518a: $b5
    cp [hl]                                       ; $518b: $be
    add h                                         ; $518c: $84
    scf                                           ; $518d: $37
    jp hl                                         ; $518e: $e9


    ld h, a                                       ; $518f: $67
    ld c, e                                       ; $5190: $4b
    add [hl]                                      ; $5191: $86
    di                                            ; $5192: $f3
    ld a, [c]                                     ; $5193: $f2
    db $eb                                        ; $5194: $eb
    ld hl, $2319                                  ; $5195: $21 $19 $23
    jp nz, $e7c7                                  ; $5198: $c2 $c7 $e7

    inc a                                         ; $519b: $3c
    rst $10                                       ; $519c: $d7
    xor d                                         ; $519d: $aa
    add c                                         ; $519e: $81
    ld e, h                                       ; $519f: $5c
    ld d, [hl]                                    ; $51a0: $56
    add e                                         ; $51a1: $83
    or l                                          ; $51a2: $b5
    ld a, [de]                                    ; $51a3: $1a
    ld b, a                                       ; $51a4: $47
    jr @-$37                                      ; $51a5: $18 $c7

    rst $20                                       ; $51a7: $e7
    inc a                                         ; $51a8: $3c
    ld [hl], a                                    ; $51a9: $77
    cp h                                          ; $51aa: $bc
    inc [hl]                                      ; $51ab: $34
    or [hl]                                       ; $51ac: $b6
    ld a, l                                       ; $51ad: $7d
    adc c                                         ; $51ae: $89
    and l                                         ; $51af: $a5
    jr nz, @+$0e                                  ; $51b0: $20 $0c

    and a                                         ; $51b2: $a7
    ld a, a                                       ; $51b3: $7f
    push af                                       ; $51b4: $f5
    rst $10                                       ; $51b5: $d7
    ld a, [$d26b]                                 ; $51b6: $fa $6b $d2
    ret z                                         ; $51b9: $c8

    cp d                                          ; $51ba: $ba
    dec d                                         ; $51bb: $15
    cp c                                          ; $51bc: $b9
    ldh [$a1], a                                  ; $51bd: $e0 $a1
    jp nz, Jump_02a_6bba                          ; $51bf: $c2 $ba $6b

    ld d, l                                       ; $51c2: $55
    rst $10                                       ; $51c3: $d7
    ldh [$31], a                                  ; $51c4: $e0 $31
    rst $00                                       ; $51c6: $c7
    ld [hl], d                                    ; $51c7: $72
    add sp, -$3c                                  ; $51c8: $e8 $c4
    sub h                                         ; $51ca: $94
    ld e, a                                       ; $51cb: $5f
    ld l, e                                       ; $51cc: $6b
    ld b, $bc                                     ; $51cd: $06 $bc
    adc d                                         ; $51cf: $8a
    jp Jump_02a_72f8                              ; $51d0: $c3 $f8 $72


    db $e3                                        ; $51d3: $e3
    rst $08                                       ; $51d4: $cf
    ret nz                                        ; $51d5: $c0

    and l                                         ; $51d6: $a5

Jump_02a_51d7:
    ld h, b                                       ; $51d7: $60
    ld e, [hl]                                    ; $51d8: $5e
    ld a, [hl]                                    ; $51d9: $7e
    ld d, $b2                                     ; $51da: $16 $b2
    ld e, [hl]                                    ; $51dc: $5e

jr_02a_51dd:
    cp b                                          ; $51dd: $b8
    db $ed                                        ; $51de: $ed
    dec de                                        ; $51df: $1b
    xor a                                         ; $51e0: $af
    scf                                           ; $51e1: $37
    db $eb                                        ; $51e2: $eb
    ld d, $53                                     ; $51e3: $16 $53
    db $eb                                        ; $51e5: $eb
    ld [$c303], sp                                ; $51e6: $08 $03 $c3
    rst $00                                       ; $51e9: $c7
    ld b, d                                       ; $51ea: $42
    and l                                         ; $51eb: $a5
    sbc l                                         ; $51ec: $9d
    sbc a                                         ; $51ed: $9f
    dec l                                         ; $51ee: $2d
    add hl, de                                    ; $51ef: $19
    adc $cb                                       ; $51f0: $ce $cb
    rst $28                                       ; $51f2: $ef
    and h                                         ; $51f3: $a4
    db $db                                        ; $51f4: $db
    ld d, $95                                     ; $51f5: $16 $95
    ld b, $61                                     ; $51f7: $06 $61
    jp Jump_02a_5dc7                              ; $51f9: $c3 $c7 $5d


    ld h, d                                       ; $51fc: $62
    di                                            ; $51fd: $f3
    ld a, [c]                                     ; $51fe: $f2
    dec sp                                        ; $51ff: $3b
    ld sp, hl                                     ; $5200: $f9
    adc d                                         ; $5201: $8a
    and h                                         ; $5202: $a4
    inc l                                         ; $5203: $2c
    db $ed                                        ; $5204: $ed
    dec e                                         ; $5205: $1d
    dec hl                                        ; $5206: $2b
    rla                                           ; $5207: $17
    sbc [hl]                                      ; $5208: $9e
    ld hl, $c30c                                  ; $5209: $21 $0c $c3
    rst $00                                       ; $520c: $c7
    rst $20                                       ; $520d: $e7
    inc a                                         ; $520e: $3c
    rst $10                                       ; $520f: $d7
    xor d                                         ; $5210: $aa
    add c                                         ; $5211: $81
    ld e, h                                       ; $5212: $5c
    ld d, [hl]                                    ; $5213: $56
    add e                                         ; $5214: $83
    or l                                          ; $5215: $b5
    ld a, [de]                                    ; $5216: $1a
    ld b, a                                       ; $5217: $47
    jr jr_02a_51dd                                ; $5218: $18 $c3

    rst $00                                       ; $521a: $c7
    ld e, l                                       ; $521b: $5d
    ld h, d                                       ; $521c: $62
    dec sp                                        ; $521d: $3b
    ld l, b                                       ; $521e: $68
    ld d, l                                       ; $521f: $55
    cp c                                          ; $5220: $b9
    ld d, l                                       ; $5221: $55
    db $fd                                        ; $5222: $fd
    add hl, bc                                    ; $5223: $09
    ld h, [hl]                                    ; $5224: $66
    and a                                         ; $5225: $a7
    db $ec                                        ; $5226: $ec
    sub h                                         ; $5227: $94
    sub h                                         ; $5228: $94
    or $8b                                        ; $5229: $f6 $8b

jr_02a_522b:
    inc hl                                        ; $522b: $23
    inc c                                         ; $522c: $0c
    db $dd                                        ; $522d: $dd
    adc d                                         ; $522e: $8a
    jp nz, $cbcf                                  ; $522f: $c2 $cf $cb

    rst $28                                       ; $5232: $ef
    and c                                         ; $5233: $a1
    jp nc, $b3ce                                  ; $5234: $d2 $ce $b3

    sbc l                                         ; $5237: $9d
    sub d                                         ; $5238: $92
    jp nc, Jump_02a_717e                          ; $5239: $d2 $7e $71

    add h                                         ; $523c: $84
    ld bc, $b43d                                  ; $523d: $01 $3d $b4
    cp $3b                                        ; $5240: $fe $3b
    dec h                                         ; $5242: $25
    and l                                         ; $5243: $a5
    db $fd                                        ; $5244: $fd
    ld [c], a                                     ; $5245: $e2
    di                                            ; $5246: $f3
    sbc h                                         ; $5247: $9c
    sub a                                         ; $5248: $97
    rst $18                                       ; $5249: $df
    ld d, c                                       ; $524a: $51
    ldh [$92], a                                  ; $524b: $e0 $92
    sub h                                         ; $524d: $94

Jump_02a_524e:
    ld h, c                                       ; $524e: $61
    or e                                          ; $524f: $b3
    ld e, $c9                                     ; $5250: $1e $c9
    cp a                                          ; $5252: $bf
    jr nz, jr_02a_5261                            ; $5253: $20 $0c

    and a                                         ; $5255: $a7
    cp a                                          ; $5256: $bf
    dec de                                        ; $5257: $1b
    and c                                         ; $5258: $a1
    ld a, c                                       ; $5259: $79
    xor $78                                       ; $525a: $ee $78
    ld l, c                                       ; $525c: $69
    ld l, h                                       ; $525d: $6c
    ei                                            ; $525e: $fb
    ld [de], a                                    ; $525f: $12
    ld c, e                                       ; $5260: $4b

jr_02a_5261:
    ld b, c                                       ; $5261: $41
    jr jr_02a_522b                                ; $5262: $18 $c7

    ld e, l                                       ; $5264: $5d
    ld h, d                                       ; $5265: $62
    di                                            ; $5266: $f3
    ld a, [c]                                     ; $5267: $f2
    cp e                                          ; $5268: $bb
    ld [hl], h                                    ; $5269: $74
    sbc [hl]                                      ; $526a: $9e
    sub c                                         ; $526b: $91
    ld h, a                                       ; $526c: $67
    dec sp                                        ; $526d: $3b
    add e                                         ; $526e: $83
    ld l, [hl]                                    ; $526f: $6e
    sub l                                         ; $5270: $95
    ld b, d                                       ; $5271: $42
    ld [$c303], sp                                ; $5272: $08 $03 $c3
    jp $c3c3                                      ; $5275: $c3 $c3 $c3


    rst $00                                       ; $5278: $c7
    rst $20                                       ; $5279: $e7
    inc a                                         ; $527a: $3c
    rst $20                                       ; $527b: $e7
    push hl                                       ; $527c: $e5
    ld [hl], a                                    ; $527d: $77
    ld e, h                                       ; $527e: $5c
    ld c, d                                       ; $527f: $4a
    ei                                            ; $5280: $fb
    ld [hl-], a                                   ; $5281: $32
    or $b4                                        ; $5282: $f6 $b4
    ld l, [hl]                                    ; $5284: $6e
    add hl, hl                                    ; $5285: $29
    ld [hl], d                                    ; $5286: $72
    ld e, c                                       ; $5287: $59
    ld a, [bc]                                    ; $5288: $0a
    jp nz, $bcc7                                  ; $5289: $c2 $c7 $bc

    db $fd                                        ; $528c: $fd
    ld [$f2f3], a                                 ; $528d: $ea $f3 $f2
    dec sp                                        ; $5290: $3b
    and $ad                                       ; $5291: $e6 $ad
    scf                                           ; $5293: $37
    sub $60                                       ; $5294: $d6 $60
    dec l                                         ; $5296: $2d
    and h                                         ; $5297: $a4
    ld a, [c]                                     ; $5298: $f2
    ld [$c703], sp                                ; $5299: $08 $03 $c7
    ld e, l                                       ; $529c: $5d
    ld h, d                                       ; $529d: $62
    di                                            ; $529e: $f3
    ld a, [c]                                     ; $529f: $f2
    sub e                                         ; $52a0: $93
    dec de                                        ; $52a1: $1b
    inc d                                         ; $52a2: $14
    rst $18                                       ; $52a3: $df
    ld [hl], c                                    ; $52a4: $71
    or c                                          ; $52a5: $b1
    cp c                                          ; $52a6: $b9
    inc d                                         ; $52a7: $14
    db $ec                                        ; $52a8: $ec
    call nz, $106f                                ; $52a9: $c4 $6f $10

Jump_02a_52ac:
    ld b, $c7                                     ; $52ac: $06 $c7
    db $dd                                        ; $52ae: $dd

Jump_02a_52af:
    and b                                         ; $52af: $a0
    ld hl, sp-$44                                 ; $52b0: $f8 $bc
    db $fc                                        ; $52b2: $fc
    ld c, [hl]                                    ; $52b3: $4e
    cp d                                          ; $52b4: $ba

jr_02a_52b5:
    sub $4b                                       ; $52b5: $d6 $4b
    pop bc                                        ; $52b7: $c1
    cp d                                          ; $52b8: $ba
    sub l                                         ; $52b9: $95
    rlca                                          ; $52ba: $07
    ld e, b                                       ; $52bb: $58
    rst $30                                       ; $52bc: $f7
    ei                                            ; $52bd: $fb
    push de                                       ; $52be: $d5
    inc bc                                        ; $52bf: $03
    jp nz, Jump_000_192d                          ; $52c0: $c2 $2d $19

    xor l                                         ; $52c3: $ad
    ccf                                           ; $52c4: $3f
    cpl                                           ; $52c5: $2f
    cp a                                          ; $52c6: $bf
    xor $e9                                       ; $52c7: $ee $e9
    scf                                           ; $52c9: $37
    ld l, c                                       ; $52ca: $69
    daa                                           ; $52cb: $27
    ld e, a                                       ; $52cc: $5f
    ld c, $97                                     ; $52cd: $0e $97
    add d                                         ; $52cf: $82
    ld [hl], l                                    ; $52d0: $75
    scf                                           ; $52d1: $37
    inc e                                         ; $52d2: $1c
    add hl, sp                                    ; $52d3: $39
    add $47                                       ; $52d4: $c6 $47

Call_02a_52d6:
    jr jr_02a_5305                                ; $52d6: $18 $2d

    add hl, de                                    ; $52d8: $19
    xor l                                         ; $52d9: $ad
    ccf                                           ; $52da: $3f
    cpl                                           ; $52db: $2f
    cp a                                          ; $52dc: $bf
    xor $e9                                       ; $52dd: $ee $e9
    scf                                           ; $52df: $37
    ld l, c                                       ; $52e0: $69
    daa                                           ; $52e1: $27
    ld e, a                                       ; $52e2: $5f
    ld c, $97                                     ; $52e3: $0e $97
    add d                                         ; $52e5: $82
    ld [hl], l                                    ; $52e6: $75
    scf                                           ; $52e7: $37
    inc e                                         ; $52e8: $1c
    add hl, sp                                    ; $52e9: $39
    add $47                                       ; $52ea: $c6 $47
    jr jr_02a_52b5                                ; $52ec: $18 $c7

    ld e, l                                       ; $52ee: $5d
    ld h, d                                       ; $52ef: $62
    di                                            ; $52f0: $f3
    ld a, [c]                                     ; $52f1: $f2
    db $eb                                        ; $52f2: $eb
    ld e, [hl]                                    ; $52f3: $5e
    ld l, [hl]                                    ; $52f4: $6e
    ld c, h                                       ; $52f5: $4c
    ret z                                         ; $52f6: $c8

    ld c, [hl]                                    ; $52f7: $4e
    ld a, c                                       ; $52f8: $79
    xor c                                         ; $52f9: $a9
    pop bc                                        ; $52fa: $c1
    ld e, d                                       ; $52fb: $5a
    inc a                                         ; $52fc: $3c
    jp hl                                         ; $52fd: $e9


    ld de, $c706                                  ; $52fe: $11 $06 $c7
    rst $20                                       ; $5301: $e7
    inc a                                         ; $5302: $3c
    rst $20                                       ; $5303: $e7

jr_02a_5304:
    push hl                                       ; $5304: $e5

jr_02a_5305:
    ld [hl], a                                    ; $5305: $77
    cp h                                          ; $5306: $bc
    cp h                                          ; $5307: $bc
    ld a, [$355a]                                 ; $5308: $fa $5a $35
    ld b, [hl]                                    ; $530b: $46
    add h                                         ; $530c: $84
    ld bc, $5dc7                                  ; $530d: $01 $c7 $5d
    ld h, d                                       ; $5310: $62
    ld l, e                                       ; $5311: $6b
    ld d, l                                       ; $5312: $55
    sub c                                         ; $5313: $91
    ld h, [hl]                                    ; $5314: $66
    dec a                                         ; $5315: $3d
    cpl                                           ; $5316: $2f
    rst $00                                       ; $5317: $c7
    ld [hl], l                                    ; $5318: $75
    ld d, e                                       ; $5319: $53
    ld h, c                                       ; $531a: $61
    ld [$c703], sp                                ; $531b: $08 $03 $c7
    ld e, l                                       ; $531e: $5d
    ld h, d                                       ; $531f: $62
    ld l, e                                       ; $5320: $6b
    push de                                       ; $5321: $d5
    ld b, b                                       ; $5322: $40
    ld l, $db                                     ; $5323: $2e $db
    and l                                         ; $5325: $a5
    sbc l                                         ; $5326: $9d
    xor c                                         ; $5327: $a9
    ld h, $3a                                     ; $5328: $26 $3a
    jp nz, Jump_02a_5dc7                          ; $532a: $c2 $c7 $5d

    ld h, d                                       ; $532d: $62
    dec sp                                        ; $532e: $3b
    ld e, [hl]                                    ; $532f: $5e
    ld a, [de]                                    ; $5330: $1a
    db $db                                        ; $5331: $db
    cp [hl]                                       ; $5332: $be
    call nz, $d652                                ; $5333: $c4 $52 $d6
    ld e, l                                       ; $5336: $5d
    ld bc, $14f8                                  ; $5337: $01 $f8 $14
    add [hl]                                      ; $533a: $86
    jr nc, jr_02a_5304                            ; $533b: $30 $c7

    ld e, l                                       ; $533d: $5d
    ld h, d                                       ; $533e: $62
    ld l, e                                       ; $533f: $6b
    jp nc, $e8c8                                  ; $5340: $d2 $c8 $e8

jr_02a_5343:
    add hl, sp                                    ; $5343: $39
    ld hl, sp-$56                                 ; $5344: $f8 $aa
    xor b                                         ; $5346: $a8
    nop                                           ; $5347: $00
    ld [$a703], sp                                ; $5348: $08 $03 $a7
    cp a                                          ; $534b: $bf
    dec de                                        ; $534c: $1b
    and c                                         ; $534d: $a1
    ld a, c                                       ; $534e: $79
    ld sp, hl                                     ; $534f: $f9
    add c                                         ; $5350: $81
    ld h, a                                       ; $5351: $67
    ld a, h                                       ; $5352: $7c

jr_02a_5353:
    ld e, d                                       ; $5353: $5a
    scf                                           ; $5354: $37
    inc hl                                        ; $5355: $23
    ldh a, [$3b]                                  ; $5356: $f0 $3b
    ld a, [hl-]                                   ; $5358: $3a
    or e                                          ; $5359: $b3
    ld a, $cf                                     ; $535a: $3e $cf
    ld a, c                                       ; $535c: $79
    ld sp, hl                                     ; $535d: $f9
    sbc l                                         ; $535e: $9d
    ld [hl], h                                    ; $535f: $74
    db $db                                        ; $5360: $db
    and d                                         ; $5361: $a2
    jp nc, $0c20                                  ; $5362: $d2 $20 $0c

jr_02a_5365:
    jp $bfc7                                      ; $5365: $c3 $c7 $bf


    rst $08                                       ; $5368: $cf
    res 5, a                                      ; $5369: $cb $af
    sub e                                         ; $536b: $93
    ld a, [hl]                                    ; $536c: $7e
    sub e                                         ; $536d: $93
    ld h, $5f                                     ; $536e: $26 $5f
    db $dd                                        ; $5370: $dd
    adc $c3                                       ; $5371: $ce $c3
    ld l, h                                       ; $5373: $6c
    ret                                           ; $5374: $c9


    ld [hl], b                                    ; $5375: $70
    dec l                                         ; $5376: $2d
    and h                                         ; $5377: $a4
    sbc l                                         ; $5378: $9d
    ld b, a                                       ; $5379: $47
    jr jr_02a_5343                                ; $537a: $18 $c7

    ld b, d                                       ; $537c: $42
    and l                                         ; $537d: $a5
    sbc l                                         ; $537e: $9d
    sbc a                                         ; $537f: $9f
    sub a                                         ; $5380: $97
    ld e, a                                       ; $5381: $5f
    rrca                                          ; $5382: $0f
    ret                                           ; $5383: $c9


    ld c, [hl]                                    ; $5384: $4e
    ld l, c                                       ; $5385: $69
    halt                                          ; $5386: $76
    ld a, d                                       ; $5387: $7a
    ld h, [hl]                                    ; $5388: $66
    adc b                                         ; $5389: $88
    jr nc, jr_02a_5353                            ; $538a: $30 $c7

    ld e, l                                       ; $538c: $5d
    ld h, d                                       ; $538d: $62

Jump_02a_538e:
    di                                            ; $538e: $f3
    ld a, [c]                                     ; $538f: $f2
    ld l, e                                       ; $5390: $6b
    cp l                                          ; $5391: $bd
    adc h                                         ; $5392: $8c
    dec a                                         ; $5393: $3d
    xor l                                         ; $5394: $ad
    cp e                                          ; $5395: $bb
    ld d, [hl]                                    ; $5396: $56
    ld [hl], l                                    ; $5397: $75
    dec c                                         ; $5398: $0d
    ld e, $61                                     ; $5399: $1e $61
    ld b, a                                       ; $539b: $47
    sbc e                                         ; $539c: $9b
    ld h, [hl]                                    ; $539d: $66
    ld c, l                                       ; $539e: $4d
    ld a, [de]                                    ; $539f: $1a
    ld e, c                                       ; $53a0: $59

jr_02a_53a1:
    ld c, a                                       ; $53a1: $4f
    dec h                                         ; $53a2: $25
    ld [hl], $f5                                  ; $53a3: $36 $f5
    sbc l                                         ; $53a5: $9d
    ld a, [de]                                    ; $53a6: $1a
    db $e3                                        ; $53a7: $e3
    or l                                          ; $53a8: $b5
    ld a, [hl+]                                   ; $53a9: $2a
    or c                                          ; $53aa: $b1
    sub a                                         ; $53ab: $97
    ld a, [de]                                    ; $53ac: $1a
    jr nz, jr_02a_53bb                            ; $53ad: $20 $0c

    and a                                         ; $53af: $a7
    cp a                                          ; $53b0: $bf
    dec de                                        ; $53b1: $1b
    and c                                         ; $53b2: $a1
    ld a, c                                       ; $53b3: $79
    xor $78                                       ; $53b4: $ee $78
    ld l, c                                       ; $53b6: $69
    ld l, h                                       ; $53b7: $6c
    ei                                            ; $53b8: $fb
    ld [de], a                                    ; $53b9: $12
    ld c, e                                       ; $53ba: $4b

jr_02a_53bb:
    ld b, c                                       ; $53bb: $41
    jr jr_02a_5365                                ; $53bc: $18 $a7

    cp a                                          ; $53be: $bf
    dec de                                        ; $53bf: $1b
    and c                                         ; $53c0: $a1
    ld a, c                                       ; $53c1: $79
    xor $78                                       ; $53c2: $ee $78
    ld l, c                                       ; $53c4: $69
    ld l, h                                       ; $53c5: $6c
    ei                                            ; $53c6: $fb
    ld [de], a                                    ; $53c7: $12
    ld c, e                                       ; $53c8: $4b
    ld b, c                                       ; $53c9: $41
    jr jr_02a_53f3                                ; $53ca: $18 $27

    ld h, l                                       ; $53cc: $65
    sub $67                                       ; $53cd: $d6 $67
    and a                                         ; $53cf: $a7
    db $ec                                        ; $53d0: $ec
    jr @+$15                                      ; $53d1: $18 $13

    or [hl]                                       ; $53d3: $b6
    db $e3                                        ; $53d4: $e3
    or e                                          ; $53d5: $b3
    sub h                                         ; $53d6: $94
    ld b, a                                       ; $53d7: $47
    jr jr_02a_53a1                                ; $53d8: $18 $c7

    rst $20                                       ; $53da: $e7
    jp c, $d55a                                   ; $53db: $da $5a $d5

    rst $20                                       ; $53de: $e7
    add hl, sp                                    ; $53df: $39
    cpl                                           ; $53e0: $2f
    cp a                                          ; $53e1: $bf
    ld e, $92                                     ; $53e2: $1e $92
    sbc l                                         ; $53e4: $9d
    jp nc, $f4ec                                  ; $53e5: $d2 $ec $f4

    call z, Call_02a_6110                         ; $53e8: $cc $10 $61
    rst $00                                       ; $53eb: $c7
    ld e, l                                       ; $53ec: $5d
    ld h, d                                       ; $53ed: $62
    di                                            ; $53ee: $f3
    ld a, [c]                                     ; $53ef: $f2
    db $eb                                        ; $53f0: $eb
    halt                                          ; $53f1: $76
    and l                                         ; $53f2: $a5

jr_02a_53f3:
    ld a, [$5375]                                 ; $53f3: $fa $75 $53
    ld h, c                                       ; $53f6: $61
    ld [$c703], sp                                ; $53f7: $08 $03 $c7
    ld e, h                                       ; $53fa: $5c
    dec c                                         ; $53fb: $0d
    sub d                                         ; $53fc: $92
    halt                                          ; $53fd: $76
    ld d, h                                       ; $53fe: $54
    adc h                                         ; $53ff: $8c
    rst $18                                       ; $5400: $df

jr_02a_5401:
    ld h, b                                       ; $5401: $60
    db $dd                                        ; $5402: $dd
    call nc, Call_000_2644                        ; $5403: $d4 $44 $26
    ld c, c                                       ; $5406: $49
    ld l, e                                       ; $5407: $6b
    add hl, hl                                    ; $5408: $29
    reti                                          ; $5409: $d9


    pop bc                                        ; $540a: $c1
    ld b, a                                       ; $540b: $47
    ld [hl], l                                    ; $540c: $75

jr_02a_540d:
    jp nc, Jump_02a_57cb                          ; $540d: $d2 $cb $57

    ld a, [hl+]                                   ; $5410: $2a
    dec c                                         ; $5411: $0d
    ld b, $a7                                     ; $5412: $06 $a7
    ld a, [c]                                     ; $5414: $f2
    ld [hl], c                                    ; $5415: $71
    dec l                                         ; $5416: $2d
    dec h                                         ; $5417: $25
    dec sp                                        ; $5418: $3b
    jr jr_02a_5458                                ; $5419: $18 $3d

jr_02a_541b:
    sub l                                         ; $541b: $95
    ret c                                         ; $541c: $d8

    ld e, d                                       ; $541d: $5a
    ld c, d                                       ; $541e: $4a
    halt                                          ; $541f: $76
    jr nc, jr_02a_5469                            ; $5420: $30 $47

    ld h, a                                       ; $5422: $67
    sub $d7                                       ; $5423: $d6 $d7
    ld d, d                                       ; $5425: $52
    or d                                          ; $5426: $b2

jr_02a_5427:
    add e                                         ; $5427: $83
    ld bc, $67a7                                  ; $5428: $01 $a7 $67
    ei                                            ; $542b: $fb
    rst $10                                       ; $542c: $d7
    ld d, d                                       ; $542d: $52
    or d                                          ; $542e: $b2
    add e                                         ; $542f: $83
    ld bc, $fc2d                                  ; $5430: $01 $2d $fc
    cp a                                          ; $5433: $bf
    jp Jump_02a_4a5a                              ; $5434: $c3 $5a $4a


    halt                                          ; $5437: $76
    jr nc, jr_02a_5401                            ; $5438: $30 $c7

    res 4, l                                      ; $543a: $cb $a5
    jr nz, jr_02a_541b                            ; $543c: $20 $dd

    ld h, c                                       ; $543e: $61
    rst $00                                       ; $543f: $c7
    sub d                                         ; $5440: $92
    adc e                                         ; $5441: $8b
    ld d, d                                       ; $5442: $52
    push af                                       ; $5443: $f5

jr_02a_5444:
    jr jr_02a_540d                                ; $5444: $18 $c7

    res 4, l                                      ; $5446: $cb $a5
    jr nz, jr_02a_5427                            ; $5448: $20 $dd

    ld h, c                                       ; $544a: $61
    rst $00                                       ; $544b: $c7
    jr jr_02a_5458                                ; $544c: $18 $0a

    ld a, $69                                     ; $544e: $3e $69
    db $fd                                        ; $5450: $fd
    ld h, c                                       ; $5451: $61
    db $dd                                        ; $5452: $dd
    inc h                                         ; $5453: $24
    ld bc, $052e                                  ; $5454: $01 $2e $05
    di                                            ; $5457: $f3

jr_02a_5458:
    ld a, [c]                                     ; $5458: $f2
    dec sp                                        ; $5459: $3b
    ld c, c                                       ; $545a: $49
    db $eb                                        ; $545b: $eb
    adc a                                         ; $545c: $8f
    ld bc, $19ad                                  ; $545d: $01 $ad $19
    ldh a, [$2a]                                  ; $5460: $f0 $2a
    ld c, $3b                                     ; $5462: $0e $3b
    add $50                                       ; $5464: $c6 $50
    ldh a, [rOBP1]                                ; $5466: $f0 $49
    db $eb                                        ; $5468: $eb

jr_02a_5469:
    rrca                                          ; $5469: $0f
    inc bc                                        ; $546a: $03
    xor l                                         ; $546b: $ad
    add hl, de                                    ; $546c: $19
    ldh a, [$2a]                                  ; $546d: $f0 $2a
    ld c, $3b                                     ; $546f: $0e $3b
    add $50                                       ; $5471: $c6 $50
    ldh a, [rOBP1]                                ; $5473: $f0 $49
    db $eb                                        ; $5475: $eb
    rra                                           ; $5476: $1f
    inc bc                                        ; $5477: $03
    xor l                                         ; $5478: $ad
    add hl, de                                    ; $5479: $19
    ldh a, [$2a]                                  ; $547a: $f0 $2a
    ld c, $3b                                     ; $547c: $0e $3b
    add $50                                       ; $547e: $c6 $50
    ldh a, [rOBP1]                                ; $5480: $f0 $49
    dec sp                                        ; $5482: $3b
    nop                                           ; $5483: $00
    inc bc                                        ; $5484: $03
    xor l                                         ; $5485: $ad
    add hl, de                                    ; $5486: $19
    ldh a, [$2a]                                  ; $5487: $f0 $2a
    ld c, $3b                                     ; $5489: $0e $3b
    sub [hl]                                      ; $548b: $96
    ld b, e                                       ; $548c: $43
    ld b, a                                       ; $548d: $47
    ld e, $00                                     ; $548e: $1e $00
    inc bc                                        ; $5490: $03
    ld b, a                                       ; $5491: $47
    ld d, c                                       ; $5492: $51

jr_02a_5493:
    ld [hl], l                                    ; $5493: $75
    sbc a                                         ; $5494: $9f
    ld a, h                                       ; $5495: $7c
    and a                                         ; $5496: $a7
    dec de                                        ; $5497: $1b
    ld a, d                                       ; $5498: $7a
    ld e, b                                       ; $5499: $58
    dec d                                         ; $549a: $15
    dec d                                         ; $549b: $15
    ld b, b                                       ; $549c: $40
    ld [hl-], a                                   ; $549d: $32
    ld b, e                                       ; $549e: $43
    inc c                                         ; $549f: $0c
    ld b, a                                       ; $54a0: $47
    ret                                           ; $54a1: $c9


    push af                                       ; $54a2: $f5
    ld [de], a                                    ; $54a3: $12
    ld l, d                                       ; $54a4: $6a
    push de                                       ; $54a5: $d5
    xor h                                         ; $54a6: $ac
    adc d                                         ; $54a7: $8a
    ld a, [bc]                                    ; $54a8: $0a
    jr nz, jr_02a_5444                            ; $54a9: $20 $99

    ld hl, $4706                                  ; $54ab: $21 $06 $47
    ld c, c                                       ; $54ae: $49
    sbc b                                         ; $54af: $98
    ld b, [hl]                                    ; $54b0: $46
    halt                                          ; $54b1: $76
    cp h                                          ; $54b2: $bc
    add $f8                                       ; $54b3: $c6 $f8
    jp nc, Jump_02a_4760                          ; $54b5: $d2 $60 $47

    add c                                         ; $54b8: $81
    ld c, e                                       ; $54b9: $4b
    ld d, d                                       ; $54ba: $52
    add [hl]                                      ; $54bb: $86
    call Call_02a_45ba                            ; $54bc: $cd $ba $45
    dec b                                         ; $54bf: $05
    sub b                                         ; $54c0: $90
    call z, Call_000_0310                         ; $54c1: $cc $10 $03
    ld b, a                                       ; $54c4: $47
    ccf                                           ; $54c5: $3f
    ld e, e                                       ; $54c6: $5b
    ld [hl], a                                    ; $54c7: $77
    and l                                         ; $54c8: $a5
    sbc l                                         ; $54c9: $9d
    sbc [hl]                                      ; $54ca: $9e
    add hl, de                                    ; $54cb: $19
    ld h, d                                       ; $54cc: $62
    ld b, a                                       ; $54cd: $47
    ld c, e                                       ; $54ce: $4b
    ld h, [hl]                                    ; $54cf: $66
    cp b                                          ; $54d0: $b8
    sub [hl]                                      ; $54d1: $96
    sub d                                         ; $54d2: $92
    dec e                                         ; $54d3: $1d
    inc c                                         ; $54d4: $0c
    db $dd                                        ; $54d5: $dd
    adc d                                         ; $54d6: $8a
    ld c, d                                       ; $54d7: $4a
    ld [$16eb], sp                                ; $54d8: $08 $eb $16
    dec d                                         ; $54db: $15
    ld b, b                                       ; $54dc: $40
    ld [hl-], a                                   ; $54dd: $32
    ld b, e                                       ; $54de: $43
    inc c                                         ; $54df: $0c
    rst $00                                       ; $54e0: $c7
    xor b                                         ; $54e1: $a8
    call nc, $9477                                ; $54e2: $d4 $77 $94
    jr c, jr_02a_5493                             ; $54e5: $38 $ac

    ld e, e                                       ; $54e7: $5b
    ld d, h                                       ; $54e8: $54
    nop                                           ; $54e9: $00
    ret                                           ; $54ea: $c9


    inc c                                         ; $54eb: $0c
    ld sp, $5f27                                  ; $54ec: $31 $27 $5f
    sub c                                         ; $54ef: $91
    sub h                                         ; $54f0: $94
    and l                                         ; $54f1: $a5
    cp l                                          ; $54f2: $bd
    ld h, e                                       ; $54f3: $63
    push hl                                       ; $54f4: $e5
    jp nz, $0c33                                  ; $54f5: $c2 $33 $0c

    rst $00                                       ; $54f8: $c7
    and l                                         ; $54f9: $a5
    or h                                          ; $54fa: $b4
    cpl                                           ; $54fb: $2f
    ld h, e                                       ; $54fc: $63
    ld c, a                                       ; $54fd: $4f
    dec sp                                        ; $54fe: $3b
    ld l, $e5                                     ; $54ff: $2e $e5
    pop bc                                        ; $5501: $c1
    rst $10                                       ; $5502: $d7
    rra                                           ; $5503: $1f
    ld b, $c7                                     ; $5504: $06 $c7
    and l                                         ; $5506: $a5
    or h                                          ; $5507: $b4
    cpl                                           ; $5508: $2f
    ld h, e                                       ; $5509: $63
    ld c, a                                       ; $550a: $4f
    dec sp                                        ; $550b: $3b
    ld l, $e5                                     ; $550c: $2e $e5
    pop bc                                        ; $550e: $c1
    rst $10                                       ; $550f: $d7
    ccf                                           ; $5510: $3f
    ld b, $c7                                     ; $5511: $06 $c7
    and l                                         ; $5513: $a5
    or h                                          ; $5514: $b4
    cpl                                           ; $5515: $2f
    ld h, e                                       ; $5516: $63
    ld c, a                                       ; $5517: $4f
    dec sp                                        ; $5518: $3b
    ld l, $e5                                     ; $5519: $2e $e5
    pop bc                                        ; $551b: $c1
    ld [hl], a                                    ; $551c: $77
    nop                                           ; $551d: $00
    ld b, $c7                                     ; $551e: $06 $c7
    and l                                         ; $5520: $a5
    or h                                          ; $5521: $b4
    cpl                                           ; $5522: $2f
    ld h, e                                       ; $5523: $63
    ld c, a                                       ; $5524: $4f
    dec sp                                        ; $5525: $3b
    ld l, $e5                                     ; $5526: $2e $e5
    pop bc                                        ; $5528: $c1
    ld [hl], a                                    ; $5529: $77
    jr nz, jr_02a_5532                            ; $552a: $20 $06

    rst $00                                       ; $552c: $c7
    and l                                         ; $552d: $a5
    or h                                          ; $552e: $b4

jr_02a_552f:
    cpl                                           ; $552f: $2f
    ld h, e                                       ; $5530: $63
    ld c, a                                       ; $5531: $4f

jr_02a_5532:
    dec sp                                        ; $5532: $3b
    ld l, $e5                                     ; $5533: $2e $e5
    pop bc                                        ; $5535: $c1
    ld [hl], a                                    ; $5536: $77
    db $10                                        ; $5537: $10
    ld b, $c7                                     ; $5538: $06 $c7
    and l                                         ; $553a: $a5
    or h                                          ; $553b: $b4
    cpl                                           ; $553c: $2f
    ld h, e                                       ; $553d: $63
    ld c, a                                       ; $553e: $4f
    dec sp                                        ; $553f: $3b
    ld l, $e5                                     ; $5540: $2e $e5
    pop bc                                        ; $5542: $c1
    ld [hl], a                                    ; $5543: $77
    jr nc, jr_02a_554c                            ; $5544: $30 $06

    rst $00                                       ; $5546: $c7
    ld e, l                                       ; $5547: $5d
    jp nc, Jump_02a_63b8                          ; $5548: $d2 $b8 $63

    inc c                                         ; $554b: $0c

jr_02a_554c:
    dec b                                         ; $554c: $05
    sbc a                                         ; $554d: $9f
    or h                                          ; $554e: $b4
    cp $30                                        ; $554f: $fe $30
    rst $00                                       ; $5551: $c7
    ld e, l                                       ; $5552: $5d
    jp nc, Jump_02a_63b8                          ; $5553: $d2 $b8 $63

    inc c                                         ; $5556: $0c
    dec b                                         ; $5557: $05
    sbc a                                         ; $5558: $9f
    or h                                          ; $5559: $b4
    cp $31                                        ; $555a: $fe $31
    rst $00                                       ; $555c: $c7
    ld e, l                                       ; $555d: $5d
    jp nc, Jump_02a_63b8                          ; $555e: $d2 $b8 $63

    inc c                                         ; $5561: $0c
    dec b                                         ; $5562: $05
    sbc a                                         ; $5563: $9f
    or h                                          ; $5564: $b4
    inc bc                                        ; $5565: $03
    jr nc, jr_02a_552f                            ; $5566: $30 $c7

    ld e, l                                       ; $5568: $5d
    jp nc, Jump_02a_63b8                          ; $5569: $d2 $b8 $63

    inc c                                         ; $556c: $0c
    dec b                                         ; $556d: $05
    sbc a                                         ; $556e: $9f
    or h                                          ; $556f: $b4
    inc bc                                        ; $5570: $03
    ld sp, $5dc7                                  ; $5571: $31 $c7 $5d
    jp nc, Jump_02a_63b8                          ; $5574: $d2 $b8 $63

    inc c                                         ; $5577: $0c
    dec b                                         ; $5578: $05
    sbc a                                         ; $5579: $9f
    or h                                          ; $557a: $b4

jr_02a_557b:
    add e                                         ; $557b: $83
    jr nc, @-$37                                  ; $557c: $30 $c7

    ld e, l                                       ; $557e: $5d
    jp nc, Jump_02a_63b8                          ; $557f: $d2 $b8 $63

    inc c                                         ; $5582: $0c
    dec b                                         ; $5583: $05
    sbc a                                         ; $5584: $9f

Jump_02a_5585:
    or h                                          ; $5585: $b4
    add e                                         ; $5586: $83
    ld sp, $c5c7                                  ; $5587: $31 $c7 $c5
    db $eb                                        ; $558a: $eb
    db $fc                                        ; $558b: $fc
    xor l                                         ; $558c: $ad
    ld [$d835], a                                 ; $558d: $ea $35 $d8
    xor c                                         ; $5590: $a9
    or [hl]                                       ; $5591: $b6
    ld a, l                                       ; $5592: $7d
    xor e                                         ; $5593: $ab
    rst $00                                       ; $5594: $c7
    rst $00                                       ; $5595: $c7

Jump_02a_5596:
    add [hl]                                      ; $5596: $86
    dec e                                         ; $5597: $1d
    ld l, a                                       ; $5598: $6f
    sub $2d                                       ; $5599: $d6 $2d
    ld a, [hl+]                                   ; $559b: $2a
    nop                                           ; $559c: $00
    ld b, $c7                                     ; $559d: $06 $c7
    add [hl]                                      ; $559f: $86
    dec e                                         ; $55a0: $1d
    ld l, a                                       ; $55a1: $6f
    sub $2d                                       ; $55a2: $d6 $2d
    ld a, [hl+]                                   ; $55a4: $2a
    nop                                           ; $55a5: $00
    ld b, $c7                                     ; $55a6: $06 $c7
    and l                                         ; $55a8: $a5
    or h                                          ; $55a9: $b4
    cpl                                           ; $55aa: $2f
    ld h, e                                       ; $55ab: $63
    ld c, a                                       ; $55ac: $4f
    ld l, e                                       ; $55ad: $6b
    push de                                       ; $55ae: $d5

Jump_02a_55af:
    jr @+$7b                                      ; $55af: $18 $79

    ld l, l                                       ; $55b1: $6d
    jr nc, jr_02a_557b                            ; $55b2: $30 $c7

    srl a                                         ; $55b4: $cb $3f
    sub l                                         ; $55b6: $95
    inc [hl]                                      ; $55b7: $34
    ldh a, [rNR23]                                ; $55b8: $f0 $18
    rst $00                                       ; $55ba: $c7
    ld e, a                                       ; $55bb: $5f
    adc c                                         ; $55bc: $89
    dec [hl]                                      ; $55bd: $35
    ld e, b                                       ; $55be: $58
    adc a                                         ; $55bf: $8f

jr_02a_55c0:
    cp h                                          ; $55c0: $bc
    pop af                                        ; $55c1: $f1
    dec e                                         ; $55c2: $1d
    inc bc                                        ; $55c3: $03
    xor l                                         ; $55c4: $ad
    add hl, de                                    ; $55c5: $19
    ldh a, [$2a]                                  ; $55c6: $f0 $2a
    ld c, $3b                                     ; $55c8: $0e $3b
    ld e, c                                       ; $55ca: $59

jr_02a_55cb:
    cpl                                           ; $55cb: $2f
    db $ed                                        ; $55cc: $ed
    ld a, b                                       ; $55cd: $78
    ld c, c                                       ; $55ce: $49
    ld b, e                                       ; $55cf: $43
    inc c                                         ; $55d0: $0c
    sub $1f                                       ; $55d1: $d6 $1f
    ld b, $ad                                     ; $55d3: $06 $ad
    ld a, [de]                                    ; $55d5: $1a

jr_02a_55d6:
    ret z                                         ; $55d6: $c8

    ld h, l                                       ; $55d7: $65
    dec [hl]                                      ; $55d8: $35
    ld e, b                                       ; $55d9: $58
    xor e                                         ; $55da: $ab
    pop af                                        ; $55db: $f1
    ld e, c                                       ; $55dc: $59

jr_02a_55dd:
    ret z                                         ; $55dd: $c8

    ld e, a                                       ; $55de: $5f
    ld l, [hl]                                    ; $55df: $6e
    ld a, [bc]                                    ; $55e0: $0a

jr_02a_55e1:
    ld b, $c7                                     ; $55e1: $06 $c7
    push bc                                       ; $55e3: $c5
    ld c, h                                       ; $55e4: $4c
    ld e, c                                       ; $55e5: $59
    ld a, a                                       ; $55e6: $7f
    ld l, e                                       ; $55e7: $6b
    push de                                       ; $55e8: $d5
    jr jr_02a_5664                                ; $55e9: $18 $79

    ld l, l                                       ; $55eb: $6d

jr_02a_55ec:
    jr nc, @-$37                                  ; $55ec: $30 $c7

    push bc                                       ; $55ee: $c5
    ld c, h                                       ; $55ef: $4c
    ld e, c                                       ; $55f0: $59
    rst $38                                       ; $55f1: $ff
    ld l, e                                       ; $55f2: $6b
    push de                                       ; $55f3: $d5
    jr jr_02a_566f                                ; $55f4: $18 $79

    ld l, l                                       ; $55f6: $6d
    jr nc, jr_02a_55c0                            ; $55f7: $30 $c7

jr_02a_55f9:
    push bc                                       ; $55f9: $c5
    ld c, h                                       ; $55fa: $4c
    reti                                          ; $55fb: $d9


    ld bc, $d56b                                  ; $55fc: $01 $6b $d5
    jr jr_02a_567a                                ; $55ff: $18 $79

    ld l, l                                       ; $5601: $6d
    jr nc, jr_02a_55cb                            ; $5602: $30 $c7

    push bc                                       ; $5604: $c5
    ld c, h                                       ; $5605: $4c
    reti                                          ; $5606: $d9


    add c                                         ; $5607: $81
    ld l, e                                       ; $5608: $6b
    push de                                       ; $5609: $d5
    jr jr_02a_5685                                ; $560a: $18 $79

    ld l, l                                       ; $560c: $6d
    jr nc, jr_02a_55d6                            ; $560d: $30 $c7

    push bc                                       ; $560f: $c5
    ld c, h                                       ; $5610: $4c
    reti                                          ; $5611: $d9


    ld b, c                                       ; $5612: $41
    ld l, e                                       ; $5613: $6b
    push de                                       ; $5614: $d5
    jr jr_02a_5690                                ; $5615: $18 $79

    ld l, l                                       ; $5617: $6d
    jr nc, jr_02a_55e1                            ; $5618: $30 $c7

    push bc                                       ; $561a: $c5
    ld c, h                                       ; $561b: $4c
    reti                                          ; $561c: $d9


    pop bc                                        ; $561d: $c1
    ld l, e                                       ; $561e: $6b
    push de                                       ; $561f: $d5
    jr jr_02a_569b                                ; $5620: $18 $79

    ld l, l                                       ; $5622: $6d
    jr nc, jr_02a_55ec                            ; $5623: $30 $c7

    push bc                                       ; $5625: $c5
    ld c, h                                       ; $5626: $4c
    reti                                          ; $5627: $d9


    ld hl, $d56b                                  ; $5628: $21 $6b $d5
    jr jr_02a_56a6                                ; $562b: $18 $79

    ld l, l                                       ; $562d: $6d
    jr nc, jr_02a_55dd                            ; $562e: $30 $ad

    xor a                                         ; $5630: $af
    pop af                                        ; $5631: $f1
    and l                                         ; $5632: $a5
    ld b, $6b                                     ; $5633: $06 $6b
    add hl, hl                                    ; $5635: $29
    reti                                          ; $5636: $d9


    pop bc                                        ; $5637: $c1
    xor l                                         ; $5638: $ad
    rla                                           ; $5639: $17
    inc a                                         ; $563a: $3c
    and l                                         ; $563b: $a5
    ld e, c                                       ; $563c: $59
    jp c, Jump_02a_593b                           ; $563d: $da $3b $59

    add e                                         ; $5640: $83
    ld e, e                                       ; $5641: $5b
    xor l                                         ; $5642: $ad
    adc d                                         ; $5643: $8a

Jump_02a_5644:
    ld a, [bc]                                    ; $5644: $0a
    add b                                         ; $5645: $80
    ld bc, $b216                                  ; $5646: $01 $16 $b2
    xor a                                         ; $5649: $af
    add h                                         ; $564a: $84
    ld a, [hl+]                                   ; $564b: $2a
    dec c                                         ; $564c: $0d
    ld b, $27                                     ; $564d: $06 $27
    db $dd                                        ; $564f: $dd
    or [hl]                                       ; $5650: $b6
    xor b                                         ; $5651: $a8
    inc [hl]                                      ; $5652: $34
    db $eb                                        ; $5653: $eb
    rrca                                          ; $5654: $0f
    inc bc                                        ; $5655: $03
    daa                                           ; $5656: $27
    db $dd                                        ; $5657: $dd
    or [hl]                                       ; $5658: $b6
    xor b                                         ; $5659: $a8
    inc [hl]                                      ; $565a: $34
    db $eb                                        ; $565b: $eb
    rra                                           ; $565c: $1f
    inc bc                                        ; $565d: $03
    daa                                           ; $565e: $27
    ld d, a                                       ; $565f: $57
    rst $00                                       ; $5660: $c7
    daa                                           ; $5661: $27
    ld l, c                                       ; $5662: $69
    and b                                         ; $5663: $a0

jr_02a_5664:
    ld sp, $60d6                                  ; $5664: $31 $d6 $60
    and a                                         ; $5667: $a7
    jp c, $adf6                                   ; $5668: $da $f6 $ad

    ld e, $03                                     ; $566b: $1e $03
    daa                                           ; $566d: $27
    sbc e                                         ; $566e: $9b

jr_02a_566f:
    jr nz, jr_02a_55f9                            ; $566f: $20 $88

    cp a                                          ; $5671: $bf
    ld d, $37                                     ; $5672: $16 $37
    db $ec                                        ; $5674: $ec
    ld a, $ac                                     ; $5675: $3e $ac
    adc d                                         ; $5677: $8a
    ld a, [bc]                                    ; $5678: $0a
    add b                                         ; $5679: $80

jr_02a_567a:
    ld bc, $33dd                                  ; $567a: $01 $dd $33
    or h                                          ; $567d: $b4
    push hl                                       ; $567e: $e5
    sbc e                                         ; $567f: $9b
    ld a, [de]                                    ; $5680: $1a
    db $ec                                        ; $5681: $ec
    ld d, h                                       ; $5682: $54
    db $db                                        ; $5683: $db
    cp [hl]                                       ; $5684: $be

jr_02a_5685:
    push de                                       ; $5685: $d5
    ld h, e                                       ; $5686: $63
    db $dd                                        ; $5687: $dd
    db $d3                                        ; $5688: $d3
    ld l, a                                       ; $5689: $6f
    ld [de], a                                    ; $568a: $12
    xor h                                         ; $568b: $ac
    adc d                                         ; $568c: $8a
    ld a, [bc]                                    ; $568d: $0a
    jr nz, @-$65                                  ; $568e: $20 $99

jr_02a_5690:
    ld hl, $a706                                  ; $5690: $21 $06 $a7
    sbc c                                         ; $5693: $99
    dec hl                                        ; $5694: $2b
    ld a, [c]                                     ; $5695: $f2
    ld sp, $60d6                                  ; $5696: $31 $d6 $60
    ld l, c                                       ; $5699: $69
    db $db                                        ; $569a: $db

jr_02a_569b:
    or a                                          ; $569b: $b7
    ld a, d                                       ; $569c: $7a
    inc c                                         ; $569d: $0c
    dec l                                         ; $569e: $2d
    and h                                         ; $569f: $a4
    sbc l                                         ; $56a0: $9d
    xor a                                         ; $56a1: $af
    pop bc                                        ; $56a2: $c1
    jp nc, Jump_02a_6fb6                          ; $56a3: $d2 $b6 $6f

jr_02a_56a6:
    push af                                       ; $56a6: $f5
    jr jr_02a_56d6                                ; $56a7: $18 $2d

    dec e                                         ; $56a9: $1d
    ld c, c                                       ; $56aa: $49
    db $e3                                        ; $56ab: $e3
    dec [hl]                                      ; $56ac: $35
    ld e, b                                       ; $56ad: $58
    jp c, $adf6                                   ; $56ae: $da $f6 $ad

jr_02a_56b1:
    ld e, $03                                     ; $56b1: $1e $03
    dec l                                         ; $56b3: $2d
    sbc [hl]                                      ; $56b4: $9e
    ld a, [c]                                     ; $56b5: $f2
    sub d                                         ; $56b6: $92
    add hl, de                                    ; $56b7: $19
    ld h, d                                       ; $56b8: $62
    dec a                                         ; $56b9: $3d
    ld b, h                                       ; $56ba: $44
    add hl, bc                                    ; $56bb: $09
    db $ec                                        ; $56bc: $ec
    dec de                                        ; $56bd: $1b
    jr jr_02a_5711                                ; $56be: $18 $51

    cp a                                          ; $56c0: $bf
    ld c, c                                       ; $56c1: $49
    xor e                                         ; $56c2: $ab
    and d                                         ; $56c3: $a2
    ld [bc], a                                    ; $56c4: $02
    ld h, b                                       ; $56c5: $60
    dec a                                         ; $56c6: $3d
    inc h                                         ; $56c7: $24
    dec sp                                        ; $56c8: $3b
    and l                                         ; $56c9: $a5
    reti                                          ; $56ca: $d9


    jp hl                                         ; $56cb: $e9


    sbc c                                         ; $56cc: $99
    ld hl, $c706                                  ; $56cd: $21 $06 $c7

Jump_02a_56d0:
    res 4, l                                      ; $56d0: $cb $a5
    jr nz, jr_02a_56b1                            ; $56d2: $20 $dd

    ld h, c                                       ; $56d4: $61
    rst $00                                       ; $56d5: $c7

jr_02a_56d6:
    jr @+$0c                                      ; $56d6: $18 $0a

    ld a, $69                                     ; $56d8: $3e $69
    db $fd                                        ; $56da: $fd
    ld h, e                                       ; $56db: $63
    db $dd                                        ; $56dc: $dd
    and e                                         ; $56dd: $a3
    cp d                                          ; $56de: $ba
    sbc l                                         ; $56df: $9d
    ld [de], a                                    ; $56e0: $12
    xor $b0                                       ; $56e1: $ee $b0
    dec e                                         ; $56e3: $1d
    ret nc                                        ; $56e4: $d0

    rst $08                                       ; $56e5: $cf
    add c                                         ; $56e6: $81
    jr jr_02a_5710                                ; $56e7: $18 $27

    ld l, c                                       ; $56e9: $69
    db $fd                                        ; $56ea: $fd
    rst $10                                       ; $56eb: $d7
    ld d, d                                       ; $56ec: $52
    ld d, d                                       ; $56ed: $52
    ld e, $03                                     ; $56ee: $1e $03
    xor l                                         ; $56f0: $ad
    add hl, de                                    ; $56f1: $19
    ldh a, [$2a]                                  ; $56f2: $f0 $2a
    ld c, $3b                                     ; $56f4: $0e $3b
    sub [hl]                                      ; $56f6: $96
    ld e, h                                       ; $56f7: $5c
    sub h                                         ; $56f8: $94
    xor d                                         ; $56f9: $aa
    ld e, a                                       ; $56fa: $5f
    xor e                                         ; $56fb: $ab
    add $88                                       ; $56fc: $c6 $88
    ld bc, $4bc7                                  ; $56fe: $01 $c7 $4b
    ld h, e                                       ; $5701: $63
    db $db                                        ; $5702: $db
    sub a                                         ; $5703: $97
    ld e, b                                       ; $5704: $58
    jp z, $d9da                                   ; $5705: $ca $da $d9

    ld b, b                                       ; $5708: $40
    ld l, l                                       ; $5709: $6d
    inc l                                         ; $570a: $2c
    dec h                                         ; $570b: $25
    call nz, Call_02a_4bc7                        ; $570c: $c4 $c7 $4b
    ld h, e                                       ; $570f: $63

jr_02a_5710:
    db $db                                        ; $5710: $db

jr_02a_5711:
    sub a                                         ; $5711: $97
    ld e, b                                       ; $5712: $58
    jp z, Jump_02a_65ba                           ; $5713: $ca $ba $65

    jr jr_02a_573e                                ; $5716: $18 $26

    db $ed                                        ; $5718: $ed
    db $f4                                        ; $5719: $f4
    call z, Call_000_0310                         ; $571a: $cc $10 $03
    ld b, a                                       ; $571d: $47
    ld c, e                                       ; $571e: $4b
    ld h, [hl]                                    ; $571f: $66
    cp b                                          ; $5720: $b8
    ld l, [hl]                                    ; $5721: $6e
    and [hl]                                      ; $5722: $a6
    db $d3                                        ; $5723: $d3
    ld c, [hl]                                    ; $5724: $4e
    dec d                                         ; $5725: $15
    add [hl]                                      ; $5726: $86
    ld bc, $ddc7                                  ; $5727: $01 $c7 $dd
    ld e, b                                       ; $572a: $58
    sub l                                         ; $572b: $95
    ld a, [de]                                    ; $572c: $1a

jr_02a_572d:
    db $ec                                        ; $572d: $ec
    ld d, h                                       ; $572e: $54
    db $db                                        ; $572f: $db
    cp [hl]                                       ; $5730: $be
    push de                                       ; $5731: $d5
    ld h, e                                       ; $5732: $63
    xor l                                         ; $5733: $ad
    add hl, de                                    ; $5734: $19
    ldh a, [$2a]                                  ; $5735: $f0 $2a
    ld c, $3b                                     ; $5737: $0e $3b
    ld e, [hl]                                    ; $5739: $5e
    ld e, [hl]                                    ; $573a: $5e
    ld a, l                                       ; $573b: $7d
    xor l                                         ; $573c: $ad
    ld a, [de]                                    ; $573d: $1a

jr_02a_573e:
    inc hl                                        ; $573e: $23
    ld b, $ad                                     ; $573f: $06 $ad
    add hl, de                                    ; $5741: $19
    ldh a, [$2a]                                  ; $5742: $f0 $2a
    ld c, $6b                                     ; $5744: $0e $6b
    ld [hl], c                                    ; $5746: $71
    or l                                          ; $5747: $b5
    db $ed                                        ; $5748: $ed
    sbc l                                         ; $5749: $9d

jr_02a_574a:
    sbc [hl]                                      ; $574a: $9e
    add hl, de                                    ; $574b: $19
    ld h, d                                       ; $574c: $62
    db $dd                                        ; $574d: $dd
    ld d, e                                       ; $574e: $53
    ld e, h                                       ; $574f: $5c
    db $f4                                        ; $5750: $f4
    ld a, [$cf4e]                                 ; $5751: $fa $4e $cf
    inc c                                         ; $5754: $0c
    ld sp, $c5c7                                  ; $5755: $31 $c7 $c5
    ld c, h                                       ; $5758: $4c
    ld e, c                                       ; $5759: $59
    cp a                                          ; $575a: $bf
    dec sp                                        ; $575b: $3b
    add $50                                       ; $575c: $c6 $50
    ldh a, [rOBP1]                                ; $575e: $f0 $49
    add b                                         ; $5760: $80
    ld bc, $d3dd                                  ; $5761: $01 $dd $d3

jr_02a_5764:
    ld l, a                                       ; $5764: $6f
    jp nc, $c7fa                                  ; $5765: $d2 $fa $c7

    rst $00                                       ; $5768: $c7
    res 4, l                                      ; $5769: $cb $a5
    jr nz, jr_02a_574a                            ; $576b: $20 $dd

    ld h, c                                       ; $576d: $61
    ld h, a                                       ; $576e: $67
    xor d                                         ; $576f: $aa
    adc c                                         ; $5770: $89
    adc [hl]                                      ; $5771: $8e
    ld bc, $8147                                  ; $5772: $01 $47 $81
    ld c, e                                       ; $5775: $4b
    ld d, d                                       ; $5776: $52
    add [hl]                                      ; $5777: $86
    call $a5ba                                    ; $5778: $cd $ba $a5
    ret z                                         ; $577b: $c8

    ld h, l                                       ; $577c: $65
    add hl, hl                                    ; $577d: $29
    jr jr_02a_572d                                ; $577e: $18 $ad

Call_02a_5780:
    add hl, de                                    ; $5780: $19
    ldh a, [$2a]                                  ; $5781: $f0 $2a
    ld c, $3b                                     ; $5783: $0e $3b
    ld e, c                                       ; $5785: $59

jr_02a_5786:
    cpl                                           ; $5786: $2f
    db $ed                                        ; $5787: $ed
    ld a, b                                       ; $5788: $78
    ld c, c                                       ; $5789: $49
    ld b, e                                       ; $578a: $43
    inc c                                         ; $578b: $0c
    sub $3f                                       ; $578c: $d6 $3f
    ld b, $ad                                     ; $578e: $06 $ad
    add hl, de                                    ; $5790: $19
    ldh a, [$2a]                                  ; $5791: $f0 $2a

jr_02a_5793:
    ld c, $3b                                     ; $5793: $0e $3b
    ld e, c                                       ; $5795: $59
    cpl                                           ; $5796: $2f
    db $ed                                        ; $5797: $ed
    ld a, b                                       ; $5798: $78
    ld c, c                                       ; $5799: $49
    ld b, e                                       ; $579a: $43
    inc c                                         ; $579b: $0c
    halt                                          ; $579c: $76
    nop                                           ; $579d: $00
    ld b, $ad                                     ; $579e: $06 $ad
    add hl, de                                    ; $57a0: $19
    ldh a, [$2a]                                  ; $57a1: $f0 $2a
    ld c, $3b                                     ; $57a3: $0e $3b
    ld e, c                                       ; $57a5: $59
    cpl                                           ; $57a6: $2f
    db $ed                                        ; $57a7: $ed
    ld a, b                                       ; $57a8: $78
    ld c, c                                       ; $57a9: $49
    ld b, e                                       ; $57aa: $43
    inc c                                         ; $57ab: $0c
    halt                                          ; $57ac: $76
    jr nz, jr_02a_57b5                            ; $57ad: $20 $06

    xor l                                         ; $57af: $ad
    ld a, [de]                                    ; $57b0: $1a
    ret z                                         ; $57b1: $c8

    ld h, l                                       ; $57b2: $65
    dec [hl]                                      ; $57b3: $35
    ld e, b                                       ; $57b4: $58

jr_02a_57b5:
    xor e                                         ; $57b5: $ab
    pop af                                        ; $57b6: $f1
    dec e                                         ; $57b7: $1d
    set 0, c                                      ; $57b8: $cb $c1
    ld e, a                                       ; $57ba: $5f
    ld l, [hl]                                    ; $57bb: $6e
    ld a, [bc]                                    ; $57bc: $0a
    ld b, $dd                                     ; $57bd: $06 $dd
    ld d, h                                       ; $57bf: $54
    ret c                                         ; $57c0: $d8

    ld a, d                                       ; $57c1: $7a
    adc b                                         ; $57c2: $88
    or d                                          ; $57c3: $b2
    ld c, e                                       ; $57c4: $4b
    pop bc                                        ; $57c5: $c1
    cp d                                          ; $57c6: $ba
    ld b, l                                       ; $57c7: $45
    db $d3                                        ; $57c8: $d3
    add $c7                                       ; $57c9: $c6 $c7

Jump_02a_57cb:
    res 5, e                                      ; $57cb: $cb $ab
    xor a                                         ; $57cd: $af
    ld d, l                                       ; $57ce: $55
    ld h, e                                       ; $57cf: $63
    ld e, h                                       ; $57d0: $5c
    rst $18                                       ; $57d1: $df
    dec sp                                        ; $57d2: $3b
    ld [hl], $ec                                  ; $57d3: $36 $ec
    ld a, b                                       ; $57d5: $78
    add e                                         ; $57d6: $83
    ld bc, $9b27                                  ; $57d7: $01 $27 $9b
    jr nz, jr_02a_5764                            ; $57da: $20 $88

    cp a                                          ; $57dc: $bf
    sub [hl]                                      ; $57dd: $96
    xor a                                         ; $57de: $af
    db $e4                                        ; $57df: $e4
    ld a, l                                       ; $57e0: $7d
    and a                                         ; $57e1: $a7
    ld h, a                                       ; $57e2: $67
    add [hl]                                      ; $57e3: $86
    jr jr_02a_5823                                ; $57e4: $18 $3d

    push hl                                       ; $57e6: $e5
    ld a, [$60a5]                                 ; $57e7: $fa $a5 $60
    dec l                                         ; $57ea: $2d
    and [hl]                                      ; $57eb: $a6
    db $d3                                        ; $57ec: $d3
    adc c                                         ; $57ed: $89
    rst $30                                       ; $57ee: $f7
    ld bc, $4703                                  ; $57ef: $01 $03 $47
    ld h, a                                       ; $57f2: $67
    ld d, e                                       ; $57f3: $53
    add e                                         ; $57f4: $83
    push af                                       ; $57f5: $f5
    ret z                                         ; $57f6: $c8

    dec de                                        ; $57f7: $1b
    rst $18                                       ; $57f8: $df
    ld sp, $9b27                                  ; $57f9: $31 $27 $9b
    jr nz, jr_02a_5786                            ; $57fc: $20 $88

    cp a                                          ; $57fe: $bf
    sub e                                         ; $57ff: $93
    dec c                                         ; $5800: $0d
    call c, $dd6a                                 ; $5801: $dc $6a $dd
    and d                                         ; $5804: $a2
    ld [bc], a                                    ; $5805: $02
    ld h, b                                       ; $5806: $60
    daa                                           ; $5807: $27
    sbc e                                         ; $5808: $9b
    jr nz, jr_02a_5793                            ; $5809: $20 $88

    cp a                                          ; $580b: $bf
    and e                                         ; $580c: $a3
    call nz, Call_000_2dd7                        ; $580d: $c4 $d7 $2d
    ld a, [hl+]                                   ; $5810: $2a
    nop                                           ; $5811: $00
    ld b, $dd                                     ; $5812: $06 $dd
    ld d, h                                       ; $5814: $54
    ret c                                         ; $5815: $d8

    adc $54                                       ; $5816: $ce $54
    inc de                                        ; $5818: $13
    dec e                                         ; $5819: $1d
    inc bc                                        ; $581a: $03
    rlca                                          ; $581b: $07
    ld a, e                                       ; $581c: $7b
    reti                                          ; $581d: $d9


    ld [hl], c                                    ; $581e: $71
    ld sp, $d653                                  ; $581f: $31 $53 $d6
    ld a, [c]                                     ; $5822: $f2

jr_02a_5823:
    sub l                                         ; $5823: $95
    cp h                                          ; $5824: $bc
    xor a                                         ; $5825: $af
    ld d, l                                       ; $5826: $55
    ld h, e                                       ; $5827: $63
    db $e4                                        ; $5828: $e4
    or l                                          ; $5829: $b5
    pop bc                                        ; $582a: $c1
    ld b, a                                       ; $582b: $47
    ld e, a                                       ; $582c: $5f
    ld [hl+], a                                   ; $582d: $22
    xor b                                         ; $582e: $a8
    db $ed                                        ; $582f: $ed
    ld d, h                                       ; $5830: $54
    db $db                                        ; $5831: $db
    cp [hl]                                       ; $5832: $be
    push de                                       ; $5833: $d5
    ld h, e                                       ; $5834: $63
    rst $00                                       ; $5835: $c7
    add [hl]                                      ; $5836: $86
    dec e                                         ; $5837: $1d
    ld l, a                                       ; $5838: $6f
    sub $2d                                       ; $5839: $d6 $2d
    ld a, [hl+]                                   ; $583b: $2a
    nop                                           ; $583c: $00
    ld b, $c7                                     ; $583d: $06 $c7
    push bc                                       ; $583f: $c5
    and $52                                       ; $5840: $e6 $52
    or b                                          ; $5842: $b0
    inc de                                        ; $5843: $13
    cp a                                          ; $5844: $bf
    reti                                          ; $5845: $d9


    ret                                           ; $5846: $c9


    jp c, $c7c1                                   ; $5847: $da $c1 $c7

    res 5, e                                      ; $584a: $cb $ab
    xor a                                         ; $584c: $af
    ld d, l                                       ; $584d: $55
    ld h, e                                       ; $584e: $63
    ld e, h                                       ; $584f: $5c
    rst $18                                       ; $5850: $df
    dec sp                                        ; $5851: $3b
    sub [hl]                                      ; $5852: $96
    ret c                                         ; $5853: $d8

    adc [hl]                                      ; $5854: $8e
    rst $10                                       ; $5855: $d7
    ldh a, [$31]                                  ; $5856: $f0 $31
    dec l                                         ; $5858: $2d
    ld l, c                                       ; $5859: $69
    adc b                                         ; $585a: $88
    push af                                       ; $585b: $f5
    ld [hl], e                                    ; $585c: $73
    or d                                          ; $585d: $b2
    add c                                         ; $585e: $81
    ld e, e                                       ; $585f: $5b
    dec e                                         ; $5860: $1d
    cp [hl]                                       ; $5861: $be
    inc hl                                        ; $5862: $23
    ei                                            ; $5863: $fb
    dec de                                        ; $5864: $1b
    ld b, $bd                                     ; $5865: $06 $bd
    jp nc, $e54c                                  ; $5867: $d2 $4c $e5

    ld [hl], a                                    ; $586a: $77
    ld l, c                                       ; $586b: $69
    rst $00                                       ; $586c: $c7
    ld e, h                                       ; $586d: $5c
    dec c                                         ; $586e: $0d
    sub d                                         ; $586f: $92
    halt                                          ; $5870: $76
    ld d, h                                       ; $5871: $54
    adc h                                         ; $5872: $8c
    rst $18                                       ; $5873: $df
    jr nz, jr_02a_5882                            ; $5874: $20 $0c

    cp l                                          ; $5876: $bd
    jp nc, $e54c                                  ; $5877: $d2 $4c $e5

    ld [hl], a                                    ; $587a: $77
    ld l, c                                       ; $587b: $69
    db $dd                                        ; $587c: $dd
    db $d3                                        ; $587d: $d3
    dec [hl]                                      ; $587e: $35
    ld hl, sp+$1a                                 ; $587f: $f8 $1a
    xor h                                         ; $5881: $ac

jr_02a_5882:
    sbc e                                         ; $5882: $9b
    sbc d                                         ; $5883: $9a
    ret z                                         ; $5884: $c8

    inc h                                         ; $5885: $24

jr_02a_5886:
    ld l, c                                       ; $5886: $69
    dec l                                         ; $5887: $2d
    dec h                                         ; $5888: $25
    dec sp                                        ; $5889: $3b
    ld [$bd03], sp                                ; $588a: $08 $03 $bd
    jp nc, $e54c                                  ; $588d: $d2 $4c $e5

    ld [hl], a                                    ; $5890: $77
    ld l, c                                       ; $5891: $69
    ld e, [hl]                                    ; $5892: $5e
    ld a, [hl]                                    ; $5893: $7e
    ld b, a                                       ; $5894: $47
    ld [hl], l                                    ; $5895: $75
    jp nc, Jump_02a_57cb                          ; $5896: $d2 $cb $57

    ld a, [hl+]                                   ; $5899: $2a
    dec c                                         ; $589a: $0d
    jp nz, $d2bd                                  ; $589b: $c2 $bd $d2

    ld c, h                                       ; $589e: $4c
    push hl                                       ; $589f: $e5

jr_02a_58a0:
    ld [hl], a                                    ; $58a0: $77
    ld l, c                                       ; $58a1: $69
    rst $00                                       ; $58a2: $c7
    ld a, [hl]                                    ; $58a3: $7e
    inc de                                        ; $58a4: $13
    or e                                          ; $58a5: $b3
    inc bc                                        ; $58a6: $03
    dec sp                                        ; $58a7: $3b
    sub l                                         ; $58a8: $95
    adc a                                         ; $58a9: $8f
    dec sp                                        ; $58aa: $3b
    ld [hl], $ec                                  ; $58ab: $36 $ec
    and h                                         ; $58ad: $a4
    ld e, h                                       ; $58ae: $5c
    inc de                                        ; $58af: $13
    ld [hl+], a                                   ; $58b0: $22
    inc c                                         ; $58b1: $0c
    cp l                                          ; $58b2: $bd
    jp nc, $e54c                                  ; $58b3: $d2 $4c $e5

    ld [hl], a                                    ; $58b6: $77
    ld l, c                                       ; $58b7: $69
    and a                                         ; $58b8: $a7
    add $78                                       ; $58b9: $c6 $78
    xor l                                         ; $58bb: $ad
    ld c, d                                       ; $58bc: $4a
    db $ec                                        ; $58bd: $ec
    and l                                         ; $58be: $a5
    ld b, $eb                                     ; $58bf: $06 $eb
    xor c                                         ; $58c1: $a9
    call nz, Call_02a_52d6                        ; $58c2: $c4 $d6 $52
    or d                                          ; $58c5: $b2
    add e                                         ; $58c6: $83
    jr nc, jr_02a_5886                            ; $58c7: $30 $bd

    jp nc, $e54c                                  ; $58c9: $d2 $4c $e5

    ld [hl], a                                    ; $58cc: $77
    ld l, c                                       ; $58cd: $69
    rst $00                                       ; $58ce: $c7
    push bc                                       ; $58cf: $c5
    inc [hl]                                      ; $58d0: $34
    ld [hl], d                                    ; $58d1: $72
    and c                                         ; $58d2: $a1
    ld c, h                                       ; $58d3: $4c
    adc c                                         ; $58d4: $89
    db $ed                                        ; $58d5: $ed
    add sp, -$68                                  ; $58d6: $e8 $98
    xor $b0                                       ; $58d8: $ee $b0
    and e                                         ; $58da: $a3
    inc sp                                        ; $58db: $33
    db $eb                                        ; $58dc: $eb

jr_02a_58dd:
    ld l, e                                       ; $58dd: $6b
    add hl, hl                                    ; $58de: $29
    reti                                          ; $58df: $d9


    ld b, c                                       ; $58e0: $41
    jr jr_02a_58a0                                ; $58e1: $18 $bd

    jp nc, $e54c                                  ; $58e3: $d2 $4c $e5

    ld [hl], a                                    ; $58e6: $77
    ld l, c                                       ; $58e7: $69
    daa                                           ; $58e8: $27
    dec hl                                        ; $58e9: $2b
    db $d3                                        ; $58ea: $d3
    ld [hl], b                                    ; $58eb: $70
    daa                                           ; $58ec: $27
    ld l, e                                       ; $58ed: $6b
    xor h                                         ; $58ee: $ac
    ld e, a                                       ; $58ef: $5f
    xor d                                         ; $58f0: $aa
    pop bc                                        ; $58f1: $c1
    ld c, [hl]                                    ; $58f2: $4e
    rst $08                                       ; $58f3: $cf
    or $c3                                        ; $58f4: $f6 $c3
    db $ec                                        ; $58f6: $ec
    sub h                                         ; $58f7: $94
    dec e                                         ; $58f8: $1d
    dec d                                         ; $58f9: $15
    db $e3                                        ; $58fa: $e3
    ld c, [hl]                                    ; $58fb: $4e
    xor l                                         ; $58fc: $ad
    ld a, [hl+]                                   ; $58fd: $2a
    add l                                         ; $58fe: $85
    sbc e                                         ; $58ff: $9b
    inc b                                         ; $5900: $04
    ld [$bd03], sp                                ; $5901: $08 $03 $bd
    jp nc, $e54c                                  ; $5904: $d2 $4c $e5

jr_02a_5907:
    ld [hl], a                                    ; $5907: $77
    ld l, c                                       ; $5908: $69
    dec l                                         ; $5909: $2d
    ld h, $50                                     ; $590a: $26 $50
    jp hl                                         ; $590c: $e9


    ld b, h                                       ; $590d: $44
    inc de                                        ; $590e: $13
    sub $60                                       ; $590f: $d6 $60
    daa                                           ; $5911: $27
    ld l, e                                       ; $5912: $6b
    ld [hl], b                                    ; $5913: $70
    dec hl                                        ; $5914: $2b
    adc l                                         ; $5915: $8d
    ld l, e                                       ; $5916: $6b
    pop hl                                        ; $5917: $e1
    rst $38                                       ; $5918: $ff
    dec e                                         ; $5919: $1d
    sub $52                                       ; $591a: $d6 $52
    or d                                          ; $591c: $b2
    add e                                         ; $591d: $83
    jr nc, jr_02a_58dd                            ; $591e: $30 $bd

    jp nc, $e54c                                  ; $5920: $d2 $4c $e5

    ld [hl], a                                    ; $5923: $77
    ld l, c                                       ; $5924: $69
    rst $00                                       ; $5925: $c7
    res 4, l                                      ; $5926: $cb $a5
    jr nz, jr_02a_5907                            ; $5928: $20 $dd

    add c                                         ; $592a: $81
    dec sp                                        ; $592b: $3b
    cpl                                           ; $592c: $2f
    cp a                                          ; $592d: $bf
    sbc [hl]                                      ; $592e: $9e
    sub a                                         ; $592f: $97
    and e                                         ; $5930: $a3
    ld a, [bc]                                    ; $5931: $0a
    db $db                                        ; $5932: $db
    pop de                                        ; $5933: $d1
    ld c, d                                       ; $5934: $4a
    ld [hl], l                                    ; $5935: $75
    add h                                         ; $5936: $84
    ld bc, $d2bd                                  ; $5937: $01 $bd $d2

jr_02a_593a:
    ld c, h                                       ; $593a: $4c

Jump_02a_593b:
    push hl                                       ; $593b: $e5
    ld [hl], a                                    ; $593c: $77
    ld l, c                                       ; $593d: $69
    ld a, [hl-]                                   ; $593e: $3a
    ld h, [hl]                                    ; $593f: $66
    jr z, jr_02a_593a                             ; $5940: $28 $f8

    and h                                         ; $5942: $a4
    or l                                          ; $5943: $b5
    sbc a                                         ; $5944: $9f
    ld e, [hl]                                    ; $5945: $5e
    cp l                                          ; $5946: $bd
    db $ec                                        ; $5947: $ec
    ld a, b                                       ; $5948: $78
    cp c                                          ; $5949: $b9
    inc d                                         ; $594a: $14
    and h                                         ; $594b: $a4
    dec sp                                        ; $594c: $3b
    jr nz, jr_02a_595b                            ; $594d: $20 $0c

    cp l                                          ; $594f: $bd
    jp nc, $e54c                                  ; $5950: $d2 $4c $e5

    ld d, a                                       ; $5953: $57
    ld c, c                                       ; $5954: $49
    ld [bc], a                                    ; $5955: $02
    ld e, h                                       ; $5956: $5c
    ld a, [bc]                                    ; $5957: $0a

jr_02a_5958:
    and $e5                                       ; $5958: $e6 $e5
    ld [hl], a                                    ; $595a: $77

jr_02a_595b:
    sub d                                         ; $595b: $92
    sub $1f                                       ; $595c: $d6 $1f

jr_02a_595e:
    ld h, c                                       ; $595e: $61
    cp l                                          ; $595f: $bd
    jp nc, $e54c                                  ; $5960: $d2 $4c $e5

    ld [hl], a                                    ; $5963: $77
    ld l, c                                       ; $5964: $69
    ld a, [hl-]                                   ; $5965: $3a

Call_02a_5966:
    ld h, [hl]                                    ; $5966: $66
    jr z, @-$06                                   ; $5967: $28 $f8

    inc h                                         ; $5969: $24
    add h                                         ; $596a: $84
    ld bc, $d2bd                                  ; $596b: $01 $bd $d2

jr_02a_596e:
    ld c, h                                       ; $596e: $4c
    push hl                                       ; $596f: $e5
    ld [hl], a                                    ; $5970: $77
    ld l, c                                       ; $5971: $69
    ld a, [hl-]                                   ; $5972: $3a
    ld h, [hl]                                    ; $5973: $66

Jump_02a_5974:
    jr z, jr_02a_596e                             ; $5974: $28 $f8

    inc h                                         ; $5976: $24
    add h                                         ; $5977: $84
    ld bc, $d2bd                                  ; $5978: $01 $bd $d2

jr_02a_597b:
    ld c, h                                       ; $597b: $4c
    push hl                                       ; $597c: $e5
    ld [hl], a                                    ; $597d: $77
    ld l, c                                       ; $597e: $69
    ld a, [hl-]                                   ; $597f: $3a
    ld h, [hl]                                    ; $5980: $66
    jr z, jr_02a_597b                             ; $5981: $28 $f8

    inc h                                         ; $5983: $24
    add h                                         ; $5984: $84
    ld bc, $d2bd                                  ; $5985: $01 $bd $d2
    ld c, h                                       ; $5988: $4c
    push hl                                       ; $5989: $e5
    sub a                                         ; $598a: $97
    inc [hl]                                      ; $598b: $34
    cpl                                           ; $598c: $2f
    cp a                                          ; $598d: $bf
    sub $0c                                       ; $598e: $d6 $0c
    ld a, b                                       ; $5990: $78
    dec d                                         ; $5991: $15
    add a                                         ; $5992: $87
    dec e                                         ; $5993: $1d
    res 4, c                                      ; $5994: $cb $a1
    inc hl                                        ; $5996: $23
    rrca                                          ; $5997: $0f
    add b                                         ; $5998: $80
    jr nc, jr_02a_5958                            ; $5999: $30 $bd

    jp nc, $e54c                                  ; $599b: $d2 $4c $e5

    ld [hl], a                                    ; $599e: $77
    ld l, c                                       ; $599f: $69
    ld e, [hl]                                    ; $59a0: $5e
    ld a, [hl]                                    ; $59a1: $7e
    ld b, a                                       ; $59a2: $47
    ld d, c                                       ; $59a3: $51
    ld [hl], l                                    ; $59a4: $75
    sbc a                                         ; $59a5: $9f
    ld a, h                                       ; $59a6: $7c
    and a                                         ; $59a7: $a7
    dec de                                        ; $59a8: $1b
    ld a, d                                       ; $59a9: $7a
    ld e, b                                       ; $59aa: $58
    dec d                                         ; $59ab: $15
    dec d                                         ; $59ac: $15
    ld b, b                                       ; $59ad: $40
    ld [hl-], a                                   ; $59ae: $32
    ld b, e                                       ; $59af: $43
    add h                                         ; $59b0: $84
    ld bc, $d2bd                                  ; $59b1: $01 $bd $d2
    ld c, h                                       ; $59b4: $4c
    push hl                                       ; $59b5: $e5
    ld [hl], a                                    ; $59b6: $77
    ld l, c                                       ; $59b7: $69
    ld e, [hl]                                    ; $59b8: $5e
    ld a, [hl]                                    ; $59b9: $7e
    ld b, a                                       ; $59ba: $47
    ret                                           ; $59bb: $c9


    push af                                       ; $59bc: $f5
    ld [de], a                                    ; $59bd: $12

jr_02a_59be:
    ld l, d                                       ; $59be: $6a
    push de                                       ; $59bf: $d5
    xor h                                         ; $59c0: $ac
    adc d                                         ; $59c1: $8a
    ld a, [bc]                                    ; $59c2: $0a
    jr nz, jr_02a_595e                            ; $59c3: $20 $99

    ld hl, $bdc2                                  ; $59c5: $21 $c2 $bd
    jp nc, $e54c                                  ; $59c8: $d2 $4c $e5

    ld [hl], a                                    ; $59cb: $77
    ld l, c                                       ; $59cc: $69
    ld e, [hl]                                    ; $59cd: $5e
    ld a, [hl]                                    ; $59ce: $7e
    ld b, a                                       ; $59cf: $47

jr_02a_59d0:
    ld c, c                                       ; $59d0: $49
    sbc b                                         ; $59d1: $98
    ld b, [hl]                                    ; $59d2: $46
    halt                                          ; $59d3: $76
    cp h                                          ; $59d4: $bc
    add $f8                                       ; $59d5: $c6 $f8
    jp nc, $0c20                                  ; $59d7: $d2 $20 $0c

    cp l                                          ; $59da: $bd
    jp nc, $e54c                                  ; $59db: $d2 $4c $e5

    ld [hl], a                                    ; $59de: $77

jr_02a_59df:
    ld l, c                                       ; $59df: $69
    ld e, [hl]                                    ; $59e0: $5e
    ld a, [hl]                                    ; $59e1: $7e

jr_02a_59e2:
    ld b, a                                       ; $59e2: $47
    add c                                         ; $59e3: $81
    ld c, e                                       ; $59e4: $4b
    ld d, d                                       ; $59e5: $52
    add [hl]                                      ; $59e6: $86
    call $a8aa                                    ; $59e7: $cd $aa $a8
    nop                                           ; $59ea: $00
    sub d                                         ; $59eb: $92
    add hl, de                                    ; $59ec: $19
    ld [hl+], a                                   ; $59ed: $22
    inc c                                         ; $59ee: $0c
    cp l                                          ; $59ef: $bd
    jp nc, $e54c                                  ; $59f0: $d2 $4c $e5

    ld [hl], a                                    ; $59f3: $77
    ld l, c                                       ; $59f4: $69
    ld e, [hl]                                    ; $59f5: $5e
    ld a, [hl]                                    ; $59f6: $7e
    ld b, a                                       ; $59f7: $47
    ccf                                           ; $59f8: $3f
    ld e, e                                       ; $59f9: $5b
    ld [hl], a                                    ; $59fa: $77
    and l                                         ; $59fb: $a5
    ld c, c                                       ; $59fc: $49
    ld h, [hl]                                    ; $59fd: $66
    adc b                                         ; $59fe: $88
    jr nc, jr_02a_59be                            ; $59ff: $30 $bd

    jp nc, $e54c                                  ; $5a01: $d2 $4c $e5

    ld [hl], a                                    ; $5a04: $77
    ld l, c                                       ; $5a05: $69
    ld e, [hl]                                    ; $5a06: $5e
    ld a, [hl]                                    ; $5a07: $7e
    ld b, a                                       ; $5a08: $47
    ld c, e                                       ; $5a09: $4b
    ld h, [hl]                                    ; $5a0a: $66
    cp b                                          ; $5a0b: $b8
    sub [hl]                                      ; $5a0c: $96
    sub d                                         ; $5a0d: $92
    dec e                                         ; $5a0e: $1d
    add h                                         ; $5a0f: $84
    ld bc, $d2bd                                  ; $5a10: $01 $bd $d2
    ld c, h                                       ; $5a13: $4c
    push hl                                       ; $5a14: $e5
    ld [hl], a                                    ; $5a15: $77
    ld l, c                                       ; $5a16: $69
    ld e, [hl]                                    ; $5a17: $5e
    ld a, [hl]                                    ; $5a18: $7e
    db $dd                                        ; $5a19: $dd
    adc d                                         ; $5a1a: $8a
    ld c, d                                       ; $5a1b: $4a
    ld [$a2ab], sp                                ; $5a1c: $08 $ab $a2
    ld [bc], a                                    ; $5a1f: $02
    ld c, b                                       ; $5a20: $48
    ld h, [hl]                                    ; $5a21: $66
    adc b                                         ; $5a22: $88
    jr nc, jr_02a_59e2                            ; $5a23: $30 $bd

    jp nc, $e54c                                  ; $5a25: $d2 $4c $e5

    ld [hl], a                                    ; $5a28: $77
    ld l, c                                       ; $5a29: $69
    ld e, [hl]                                    ; $5a2a: $5e
    ld a, [hl]                                    ; $5a2b: $7e
    rst $00                                       ; $5a2c: $c7
    xor b                                         ; $5a2d: $a8
    call nc, $9477                                ; $5a2e: $d4 $77 $94
    jr c, jr_02a_59df                             ; $5a31: $38 $ac

    adc d                                         ; $5a33: $8a
    ld a, [bc]                                    ; $5a34: $0a
    jr nz, jr_02a_59d0                            ; $5a35: $20 $99

    ld hl, $bdc2                                  ; $5a37: $21 $c2 $bd
    jp nc, $a8ac                                  ; $5a3a: $d2 $ac $a8

    push af                                       ; $5a3d: $f5
    ld h, a                                       ; $5a3e: $67
    and a                                         ; $5a3f: $a7
    ld hl, $2f36                                  ; $5a40: $21 $36 $2f
    cp a                                          ; $5a43: $bf
    sub e                                         ; $5a44: $93
    xor a                                         ; $5a45: $af
    ld c, b                                       ; $5a46: $48
    jp z, $ded2                                   ; $5a47: $ca $d2 $de

    or c                                          ; $5a4a: $b1
    ld [hl], d                                    ; $5a4b: $72
    pop hl                                        ; $5a4c: $e1

jr_02a_5a4d:
    add hl, de                                    ; $5a4d: $19
    jp nz, $d2bd                                  ; $5a4e: $c2 $bd $d2

    ld c, h                                       ; $5a51: $4c
    push hl                                       ; $5a52: $e5
    ld [hl], a                                    ; $5a53: $77
    ld l, c                                       ; $5a54: $69
    ld e, [hl]                                    ; $5a55: $5e
    ld a, [hl]                                    ; $5a56: $7e
    db $fd                                        ; $5a57: $fd
    add c                                         ; $5a58: $81
    rrca                                          ; $5a59: $0f
    cp [hl]                                       ; $5a5a: $be
    ld a, [c]                                     ; $5a5b: $f2
    sbc e                                         ; $5a5c: $9b
    or h                                          ; $5a5d: $b4
    or h                                          ; $5a5e: $b4
    rst $20                                       ; $5a5f: $e7
    push hl                                       ; $5a60: $e5
    ld [hl], a                                    ; $5a61: $77
    ld e, h                                       ; $5a62: $5c
    ld c, d                                       ; $5a63: $4a
    ei                                            ; $5a64: $fb
    ld [hl-], a                                   ; $5a65: $32
    or $b4                                        ; $5a66: $f6 $b4
    db $e3                                        ; $5a68: $e3
    ld d, d                                       ; $5a69: $52
    ld e, $1c                                     ; $5a6a: $1e $1c
    ld h, c                                       ; $5a6c: $61
    cp l                                          ; $5a6d: $bd
    jp nc, $e54c                                  ; $5a6e: $d2 $4c $e5

    ld [hl], a                                    ; $5a71: $77
    ld l, c                                       ; $5a72: $69
    ld e, [hl]                                    ; $5a73: $5e
    ld a, [hl]                                    ; $5a74: $7e
    db $fd                                        ; $5a75: $fd
    inc de                                        ; $5a76: $13
    dec de                                        ; $5a77: $1b
    ld a, h                                       ; $5a78: $7c
    push hl                                       ; $5a79: $e5
    scf                                           ; $5a7a: $37
    ld l, c                                       ; $5a7b: $69
    ld l, c                                       ; $5a7c: $69
    rst $08                                       ; $5a7d: $cf
    set 5, a                                      ; $5a7e: $cb $ef
    cp b                                          ; $5a80: $b8
    sub h                                         ; $5a81: $94
    or $65                                        ; $5a82: $f6 $65
    db $ec                                        ; $5a84: $ec
    ld l, c                                       ; $5a85: $69
    rst $00                                       ; $5a86: $c7
    and l                                         ; $5a87: $a5
    inc a                                         ; $5a88: $3c

jr_02a_5a89:
    jr c, jr_02a_5a4d                             ; $5a89: $38 $c2

    cp l                                          ; $5a8b: $bd
    jp nc, $e54c                                  ; $5a8c: $d2 $4c $e5

    ld [hl], a                                    ; $5a8f: $77
    ld l, c                                       ; $5a90: $69
    ld e, [hl]                                    ; $5a91: $5e
    ld a, [hl]                                    ; $5a92: $7e
    rlca                                          ; $5a93: $07
    ld [$7c1b], sp                                ; $5a94: $08 $1b $7c
    push hl                                       ; $5a97: $e5
    scf                                           ; $5a98: $37
    ld l, c                                       ; $5a99: $69
    ld l, c                                       ; $5a9a: $69
    rst $08                                       ; $5a9b: $cf
    set 5, a                                      ; $5a9c: $cb $ef
    cp b                                          ; $5a9e: $b8
    sub h                                         ; $5a9f: $94
    or $65                                        ; $5aa0: $f6 $65
    db $ec                                        ; $5aa2: $ec
    ld l, c                                       ; $5aa3: $69
    rst $00                                       ; $5aa4: $c7
    and l                                         ; $5aa5: $a5
    inc a                                         ; $5aa6: $3c

jr_02a_5aa7:
    jr c, @-$3c                                   ; $5aa7: $38 $c2

    cp l                                          ; $5aa9: $bd
    jp nc, $e54c                                  ; $5aaa: $d2 $4c $e5

    ld [hl], a                                    ; $5aad: $77
    ld l, c                                       ; $5aae: $69
    ld e, [hl]                                    ; $5aaf: $5e
    ld a, [hl]                                    ; $5ab0: $7e
    rlca                                          ; $5ab1: $07
    ld a, d                                       ; $5ab2: $7a
    add hl, de                                    ; $5ab3: $19
    ld a, h                                       ; $5ab4: $7c
    push hl                                       ; $5ab5: $e5
    scf                                           ; $5ab6: $37
    ld l, c                                       ; $5ab7: $69
    ld l, c                                       ; $5ab8: $69
    rst $08                                       ; $5ab9: $cf
    set 5, a                                      ; $5aba: $cb $ef
    cp b                                          ; $5abc: $b8
    sub h                                         ; $5abd: $94
    or $65                                        ; $5abe: $f6 $65
    db $ec                                        ; $5ac0: $ec
    ld l, c                                       ; $5ac1: $69
    rst $00                                       ; $5ac2: $c7
    and l                                         ; $5ac3: $a5
    inc a                                         ; $5ac4: $3c

jr_02a_5ac5:
    jr c, jr_02a_5a89                             ; $5ac5: $38 $c2

    cp l                                          ; $5ac7: $bd
    jp nc, $e54c                                  ; $5ac8: $d2 $4c $e5

    ld [hl], a                                    ; $5acb: $77
    ld l, c                                       ; $5acc: $69
    ld e, [hl]                                    ; $5acd: $5e
    ld a, [hl]                                    ; $5ace: $7e
    rlca                                          ; $5acf: $07
    ld a, c                                       ; $5ad0: $79

Call_02a_5ad1:
    add hl, de                                    ; $5ad1: $19
    ld a, h                                       ; $5ad2: $7c
    push hl                                       ; $5ad3: $e5
    scf                                           ; $5ad4: $37
    ld l, c                                       ; $5ad5: $69
    ld l, c                                       ; $5ad6: $69
    rst $08                                       ; $5ad7: $cf
    set 5, a                                      ; $5ad8: $cb $ef
    cp b                                          ; $5ada: $b8
    sub h                                         ; $5adb: $94
    or $65                                        ; $5adc: $f6 $65
    db $ec                                        ; $5ade: $ec
    ld l, c                                       ; $5adf: $69
    rst $00                                       ; $5ae0: $c7
    and l                                         ; $5ae1: $a5
    inc a                                         ; $5ae2: $3c
    jr c, jr_02a_5aa7                             ; $5ae3: $38 $c2

    cp l                                          ; $5ae5: $bd
    jp nc, $e54c                                  ; $5ae6: $d2 $4c $e5

    ld [hl], a                                    ; $5ae9: $77
    ld l, c                                       ; $5aea: $69
    ld e, [hl]                                    ; $5aeb: $5e
    ld a, [hl]                                    ; $5aec: $7e
    rlca                                          ; $5aed: $07
    ld a, e                                       ; $5aee: $7b
    add hl, de                                    ; $5aef: $19
    ld a, h                                       ; $5af0: $7c
    push hl                                       ; $5af1: $e5
    scf                                           ; $5af2: $37
    ld l, c                                       ; $5af3: $69
    ld l, c                                       ; $5af4: $69
    rst $08                                       ; $5af5: $cf
    set 5, a                                      ; $5af6: $cb $ef
    cp b                                          ; $5af8: $b8
    sub h                                         ; $5af9: $94
    or $65                                        ; $5afa: $f6 $65
    db $ec                                        ; $5afc: $ec
    ld l, c                                       ; $5afd: $69
    rst $00                                       ; $5afe: $c7
    and l                                         ; $5aff: $a5
    inc a                                         ; $5b00: $3c
    jr c, jr_02a_5ac5                             ; $5b01: $38 $c2

    cp l                                          ; $5b03: $bd
    jp nc, $e54c                                  ; $5b04: $d2 $4c $e5

    ld [hl], a                                    ; $5b07: $77
    ld l, c                                       ; $5b08: $69
    ld a, [hl-]                                   ; $5b09: $3a
    ld h, [hl]                                    ; $5b0a: $66
    jr z, @-$06                                   ; $5b0b: $28 $f8

    inc h                                         ; $5b0d: $24
    add h                                         ; $5b0e: $84
    ld bc, $d2bd                                  ; $5b0f: $01 $bd $d2

jr_02a_5b12:
    ld c, h                                       ; $5b12: $4c
    push hl                                       ; $5b13: $e5
    ld [hl], a                                    ; $5b14: $77
    ld l, c                                       ; $5b15: $69
    ld a, [hl-]                                   ; $5b16: $3a
    ld h, [hl]                                    ; $5b17: $66
    jr z, jr_02a_5b12                             ; $5b18: $28 $f8

    inc h                                         ; $5b1a: $24
    add h                                         ; $5b1b: $84
    ld bc, $d2bd                                  ; $5b1c: $01 $bd $d2

jr_02a_5b1f:
    ld c, h                                       ; $5b1f: $4c
    push hl                                       ; $5b20: $e5
    ld [hl], a                                    ; $5b21: $77
    ld l, c                                       ; $5b22: $69
    ld a, [hl-]                                   ; $5b23: $3a
    ld h, [hl]                                    ; $5b24: $66
    jr z, jr_02a_5b1f                             ; $5b25: $28 $f8

    inc h                                         ; $5b27: $24

jr_02a_5b28:
    add h                                         ; $5b28: $84
    ld bc, $d2bd                                  ; $5b29: $01 $bd $d2

jr_02a_5b2c:
    ld c, h                                       ; $5b2c: $4c
    push hl                                       ; $5b2d: $e5
    ld [hl], a                                    ; $5b2e: $77
    ld l, c                                       ; $5b2f: $69
    ld a, [hl-]                                   ; $5b30: $3a
    ld h, [hl]                                    ; $5b31: $66
    jr z, jr_02a_5b2c                             ; $5b32: $28 $f8

    inc h                                         ; $5b34: $24
    add h                                         ; $5b35: $84
    ld bc, $d2bd                                  ; $5b36: $01 $bd $d2

jr_02a_5b39:
    ld c, h                                       ; $5b39: $4c
    push hl                                       ; $5b3a: $e5
    ld [hl], a                                    ; $5b3b: $77
    ld l, c                                       ; $5b3c: $69
    ld a, [hl-]                                   ; $5b3d: $3a
    ld h, [hl]                                    ; $5b3e: $66
    jr z, jr_02a_5b39                             ; $5b3f: $28 $f8

    inc h                                         ; $5b41: $24
    add h                                         ; $5b42: $84
    ld bc, $d2bd                                  ; $5b43: $01 $bd $d2

jr_02a_5b46:
    ld c, h                                       ; $5b46: $4c
    push hl                                       ; $5b47: $e5
    ld [hl], a                                    ; $5b48: $77
    ld l, c                                       ; $5b49: $69
    ld a, [hl-]                                   ; $5b4a: $3a
    ld h, [hl]                                    ; $5b4b: $66
    jr z, jr_02a_5b46                             ; $5b4c: $28 $f8

    inc h                                         ; $5b4e: $24
    add h                                         ; $5b4f: $84
    ld bc, $d2bd                                  ; $5b50: $01 $bd $d2
    ld c, h                                       ; $5b53: $4c
    push hl                                       ; $5b54: $e5
    ld [hl], a                                    ; $5b55: $77
    ld l, c                                       ; $5b56: $69
    db $dd                                        ; $5b57: $dd
    dec h                                         ; $5b58: $25
    db $ed                                        ; $5b59: $ed
    rlca                                          ; $5b5a: $07
    ld c, b                                       ; $5b5b: $48
    reti                                          ; $5b5c: $d9


    ld [hl], c                                    ; $5b5d: $71
    pop af                                        ; $5b5e: $f1
    ld a, [hl-]                                   ; $5b5f: $3a
    ld a, a                                       ; $5b60: $7f
    xor e                                         ; $5b61: $ab
    ld a, d                                       ; $5b62: $7a
    dec c                                         ; $5b63: $0d
    sub [hl]                                      ; $5b64: $96
    or [hl]                                       ; $5b65: $b6
    ld a, l                                       ; $5b66: $7d
    xor e                                         ; $5b67: $ab
    ld b, a                                       ; $5b68: $47
    jr jr_02a_5b28                                ; $5b69: $18 $bd

    jp nc, $e54c                                  ; $5b6b: $d2 $4c $e5

    ld [hl], a                                    ; $5b6e: $77
    ld l, c                                       ; $5b6f: $69
    ld c, d                                       ; $5b70: $4a
    ei                                            ; $5b71: $fb
    or b                                          ; $5b72: $b0
    db $e3                                        ; $5b73: $e3
    call $a8aa                                    ; $5b74: $cd $aa $a8

jr_02a_5b77:
    nop                                           ; $5b77: $00
    sub d                                         ; $5b78: $92
    add hl, de                                    ; $5b79: $19
    ld [hl+], a                                   ; $5b7a: $22
    inc c                                         ; $5b7b: $0c
    cp l                                          ; $5b7c: $bd
    jp nc, $e54c                                  ; $5b7d: $d2 $4c $e5

    ld [hl], a                                    ; $5b80: $77
    ld l, c                                       ; $5b81: $69
    ld c, d                                       ; $5b82: $4a
    ei                                            ; $5b83: $fb
    or b                                          ; $5b84: $b0
    db $e3                                        ; $5b85: $e3
    call $a8aa                                    ; $5b86: $cd $aa $a8
    nop                                           ; $5b89: $00
    sub d                                         ; $5b8a: $92
    add hl, de                                    ; $5b8b: $19
    ld [hl+], a                                   ; $5b8c: $22
    inc c                                         ; $5b8d: $0c
    cp l                                          ; $5b8e: $bd
    jp nc, $e54c                                  ; $5b8f: $d2 $4c $e5

    ld [hl], a                                    ; $5b92: $77
    ld l, c                                       ; $5b93: $69
    ld e, [hl]                                    ; $5b94: $5e
    ld a, [hl]                                    ; $5b95: $7e
    rst $00                                       ; $5b96: $c7
    and l                                         ; $5b97: $a5
    or h                                          ; $5b98: $b4
    cpl                                           ; $5b99: $2f
    ld h, e                                       ; $5b9a: $63
    ld c, a                                       ; $5b9b: $4f
    ld l, e                                       ; $5b9c: $6b
    push de                                       ; $5b9d: $d5
    jr jr_02a_5c19                                ; $5b9e: $18 $79

    ld l, l                                       ; $5ba0: $6d
    db $10                                        ; $5ba1: $10
    ld b, $bd                                     ; $5ba2: $06 $bd
    jp nc, $e54c                                  ; $5ba4: $d2 $4c $e5

jr_02a_5ba7:
    ld [hl], a                                    ; $5ba7: $77
    ld l, c                                       ; $5ba8: $69
    ld e, [hl]                                    ; $5ba9: $5e
    ld a, [hl]                                    ; $5baa: $7e
    rst $00                                       ; $5bab: $c7
    srl a                                         ; $5bac: $cb $3f
    sub l                                         ; $5bae: $95
    inc [hl]                                      ; $5baf: $34
    ldh a, [$08]                                  ; $5bb0: $f0 $08
    inc bc                                        ; $5bb2: $03
    cp l                                          ; $5bb3: $bd
    jp nc, $e54c                                  ; $5bb4: $d2 $4c $e5

    ld [hl], a                                    ; $5bb7: $77
    ld l, c                                       ; $5bb8: $69
    ld e, [hl]                                    ; $5bb9: $5e
    ld a, [hl]                                    ; $5bba: $7e
    rst $00                                       ; $5bbb: $c7
    ld e, a                                       ; $5bbc: $5f
    adc c                                         ; $5bbd: $89
    dec [hl]                                      ; $5bbe: $35
    ld e, b                                       ; $5bbf: $58
    adc a                                         ; $5bc0: $8f
    cp h                                          ; $5bc1: $bc
    pop af                                        ; $5bc2: $f1
    dec e                                         ; $5bc3: $1d
    ld h, c                                       ; $5bc4: $61
    cp l                                          ; $5bc5: $bd
    jp nc, $e54c                                  ; $5bc6: $d2 $4c $e5

    sub a                                         ; $5bc9: $97
    add $e1                                       ; $5bca: $c6 $e1
    or d                                          ; $5bcc: $b2
    ld e, a                                       ; $5bcd: $5f
    ld l, e                                       ; $5bce: $6b
    ld b, $bc                                     ; $5bcf: $06 $bc
    adc d                                         ; $5bd1: $8a
    inc bc                                        ; $5bd2: $03
    jp nz, $d2bd                                  ; $5bd3: $c2 $bd $d2

    ld c, h                                       ; $5bd6: $4c
    push hl                                       ; $5bd7: $e5
    ld [hl], a                                    ; $5bd8: $77
    add hl, bc                                    ; $5bd9: $09
    ld l, $fb                                     ; $5bda: $2e $fb
    or l                                          ; $5bdc: $b5
    ld l, d                                       ; $5bdd: $6a
    jr nz, jr_02a_5b77                            ; $5bde: $20 $97

    push de                                       ; $5be0: $d5
    ld h, b                                       ; $5be1: $60
    push bc                                       ; $5be2: $c5
    jr c, jr_02a_5ba7                             ; $5be3: $38 $c2

    cp l                                          ; $5be5: $bd
    jp nc, $e54c                                  ; $5be6: $d2 $4c $e5

    ld [hl], a                                    ; $5be9: $77
    ld l, c                                       ; $5bea: $69
    ld e, [hl]                                    ; $5beb: $5e
    ld a, [hl]                                    ; $5bec: $7e
    db $fd                                        ; $5bed: $fd
    add c                                         ; $5bee: $81
    rst $08                                       ; $5bef: $cf
    adc [hl]                                      ; $5bf0: $8e
    sbc c                                         ; $5bf1: $99
    or d                                          ; $5bf2: $b2

jr_02a_5bf3:
    and d                                         ; $5bf3: $a2
    ld sp, $daf2                                  ; $5bf4: $31 $f2 $da
    jr nz, jr_02a_5c05                            ; $5bf7: $20 $0c

    cp l                                          ; $5bf9: $bd
    jp nc, $e54c                                  ; $5bfa: $d2 $4c $e5

    ld [hl], a                                    ; $5bfd: $77
    ld l, c                                       ; $5bfe: $69
    ld e, [hl]                                    ; $5bff: $5e
    ld a, [hl]                                    ; $5c00: $7e
    db $fd                                        ; $5c01: $fd
    inc de                                        ; $5c02: $13
    sbc e                                         ; $5c03: $9b
    dec e                                         ; $5c04: $1d

jr_02a_5c05:
    inc sp                                        ; $5c05: $33
    ld h, l                                       ; $5c06: $65

jr_02a_5c07:
    ld b, l                                       ; $5c07: $45
    ld h, e                                       ; $5c08: $63
    db $e4                                        ; $5c09: $e4
    or l                                          ; $5c0a: $b5
    ld b, c                                       ; $5c0b: $41
    jr @-$41                                      ; $5c0c: $18 $bd

    jp nc, $e54c                                  ; $5c0e: $d2 $4c $e5

    ld [hl], a                                    ; $5c11: $77
    ld l, c                                       ; $5c12: $69
    ld e, [hl]                                    ; $5c13: $5e
    ld a, [hl]                                    ; $5c14: $7e
    rlca                                          ; $5c15: $07
    ld [$1d9b], sp                                ; $5c16: $08 $9b $1d

jr_02a_5c19:
    inc sp                                        ; $5c19: $33
    ld h, l                                       ; $5c1a: $65

jr_02a_5c1b:
    ld b, l                                       ; $5c1b: $45
    ld h, e                                       ; $5c1c: $63
    db $e4                                        ; $5c1d: $e4
    or l                                          ; $5c1e: $b5
    ld b, c                                       ; $5c1f: $41
    jr @-$41                                      ; $5c20: $18 $bd

    jp nc, $e54c                                  ; $5c22: $d2 $4c $e5

    ld [hl], a                                    ; $5c25: $77
    ld l, c                                       ; $5c26: $69
    ld e, [hl]                                    ; $5c27: $5e
    ld a, [hl]                                    ; $5c28: $7e
    rlca                                          ; $5c29: $07
    ld a, d                                       ; $5c2a: $7a
    sbc c                                         ; $5c2b: $99
    dec e                                         ; $5c2c: $1d
    inc sp                                        ; $5c2d: $33
    ld h, l                                       ; $5c2e: $65

jr_02a_5c2f:
    ld b, l                                       ; $5c2f: $45
    ld h, e                                       ; $5c30: $63
    db $e4                                        ; $5c31: $e4

Call_02a_5c32:
    or l                                          ; $5c32: $b5

jr_02a_5c33:
    ld b, c                                       ; $5c33: $41
    jr jr_02a_5bf3                                ; $5c34: $18 $bd

    jp nc, $e54c                                  ; $5c36: $d2 $4c $e5

    ld [hl], a                                    ; $5c39: $77
    ld l, c                                       ; $5c3a: $69
    ld e, [hl]                                    ; $5c3b: $5e
    ld a, [hl]                                    ; $5c3c: $7e
    rlca                                          ; $5c3d: $07
    ld a, c                                       ; $5c3e: $79
    sbc c                                         ; $5c3f: $99
    dec e                                         ; $5c40: $1d
    inc sp                                        ; $5c41: $33
    ld h, l                                       ; $5c42: $65
    ld b, l                                       ; $5c43: $45
    ld h, e                                       ; $5c44: $63
    db $e4                                        ; $5c45: $e4
    or l                                          ; $5c46: $b5
    ld b, c                                       ; $5c47: $41
    jr jr_02a_5c07                                ; $5c48: $18 $bd

    jp nc, $e54c                                  ; $5c4a: $d2 $4c $e5

    ld [hl], a                                    ; $5c4d: $77
    ld l, c                                       ; $5c4e: $69
    ld e, [hl]                                    ; $5c4f: $5e
    ld a, [hl]                                    ; $5c50: $7e
    rlca                                          ; $5c51: $07
    ld a, e                                       ; $5c52: $7b
    sbc c                                         ; $5c53: $99
    dec e                                         ; $5c54: $1d
    inc sp                                        ; $5c55: $33
    ld h, l                                       ; $5c56: $65
    ld b, l                                       ; $5c57: $45
    ld h, e                                       ; $5c58: $63
    db $e4                                        ; $5c59: $e4
    or l                                          ; $5c5a: $b5
    ld b, c                                       ; $5c5b: $41
    jr jr_02a_5c1b                                ; $5c5c: $18 $bd

    jp nc, $e54c                                  ; $5c5e: $d2 $4c $e5

    ld [hl], a                                    ; $5c61: $77

Call_02a_5c62:
    ld l, c                                       ; $5c62: $69
    ld e, [hl]                                    ; $5c63: $5e
    ld a, [hl]                                    ; $5c64: $7e
    add a                                         ; $5c65: $87
    ld a, b                                       ; $5c66: $78
    sbc c                                         ; $5c67: $99
    dec e                                         ; $5c68: $1d
    inc sp                                        ; $5c69: $33
    ld h, l                                       ; $5c6a: $65
    ld b, l                                       ; $5c6b: $45
    ld h, e                                       ; $5c6c: $63
    db $e4                                        ; $5c6d: $e4
    or l                                          ; $5c6e: $b5
    ld b, c                                       ; $5c6f: $41
    jr jr_02a_5c2f                                ; $5c70: $18 $bd

    jp nc, $e54c                                  ; $5c72: $d2 $4c $e5

    ld [hl], a                                    ; $5c75: $77

Call_02a_5c76:
    ld l, c                                       ; $5c76: $69

jr_02a_5c77:
    ld e, [hl]                                    ; $5c77: $5e
    ld a, [hl]                                    ; $5c78: $7e
    xor l                                         ; $5c79: $ad
    xor a                                         ; $5c7a: $af
    pop af                                        ; $5c7b: $f1
    and l                                         ; $5c7c: $a5
    ld b, $83                                     ; $5c7d: $06 $83
    sub d                                         ; $5c7f: $92
    dec e                                         ; $5c80: $1d
    add h                                         ; $5c81: $84
    ld bc, $d2bd                                  ; $5c82: $01 $bd $d2
    ld c, h                                       ; $5c85: $4c
    push hl                                       ; $5c86: $e5
    ld [hl], a                                    ; $5c87: $77
    ld l, c                                       ; $5c88: $69
    ld e, [hl]                                    ; $5c89: $5e
    ld a, [hl]                                    ; $5c8a: $7e
    xor l                                         ; $5c8b: $ad
    rla                                           ; $5c8c: $17
    inc a                                         ; $5c8d: $3c
    and l                                         ; $5c8e: $a5
    ld e, c                                       ; $5c8f: $59
    jp c, Jump_02a_593b                           ; $5c90: $da $3b $59

    add e                                         ; $5c93: $83
    ld e, e                                       ; $5c94: $5b
    xor l                                         ; $5c95: $ad
    adc d                                         ; $5c96: $8a
    ld a, [bc]                                    ; $5c97: $0a
    jr nz, jr_02a_5c33                            ; $5c98: $20 $99

    ld hl, $bdc2                                  ; $5c9a: $21 $c2 $bd
    jp nc, $e54c                                  ; $5c9d: $d2 $4c $e5

    ld [hl], a                                    ; $5ca0: $77
    ld l, c                                       ; $5ca1: $69
    ld e, [hl]                                    ; $5ca2: $5e
    ld a, [hl]                                    ; $5ca3: $7e
    ld d, $b2                                     ; $5ca4: $16 $b2
    xor a                                         ; $5ca6: $af
    add h                                         ; $5ca7: $84
    ld a, [hl+]                                   ; $5ca8: $2a
    dec c                                         ; $5ca9: $0d
    jp nz, $d2bd                                  ; $5caa: $c2 $bd $d2

    ld c, h                                       ; $5cad: $4c
    push hl                                       ; $5cae: $e5
    ld [hl], a                                    ; $5caf: $77
    ld l, c                                       ; $5cb0: $69
    ld e, [hl]                                    ; $5cb1: $5e
    ld a, [hl]                                    ; $5cb2: $7e
    daa                                           ; $5cb3: $27
    db $dd                                        ; $5cb4: $dd
    or [hl]                                       ; $5cb5: $b6
    xor b                                         ; $5cb6: $a8
    inc [hl]                                      ; $5cb7: $34
    ld [$bd03], sp                                ; $5cb8: $08 $03 $bd

jr_02a_5cbb:
    jp nc, $e54c                                  ; $5cbb: $d2 $4c $e5

    ld [hl], a                                    ; $5cbe: $77
    ld l, c                                       ; $5cbf: $69
    ld e, [hl]                                    ; $5cc0: $5e
    ld a, [hl]                                    ; $5cc1: $7e
    daa                                           ; $5cc2: $27
    db $dd                                        ; $5cc3: $dd
    or [hl]                                       ; $5cc4: $b6
    xor b                                         ; $5cc5: $a8
    inc [hl]                                      ; $5cc6: $34
    ld [$bd03], sp                                ; $5cc7: $08 $03 $bd
    jp nc, $e54c                                  ; $5cca: $d2 $4c $e5

    ld [hl], a                                    ; $5ccd: $77
    ld l, c                                       ; $5cce: $69

jr_02a_5ccf:
    db $dd                                        ; $5ccf: $dd
    dec h                                         ; $5cd0: $25
    db $ed                                        ; $5cd1: $ed
    rlca                                          ; $5cd2: $07
    ld c, b                                       ; $5cd3: $48
    reti                                          ; $5cd4: $d9


    ret                                           ; $5cd5: $c9


    push de                                       ; $5cd6: $d5
    pop af                                        ; $5cd7: $f1
    ld c, c                                       ; $5cd8: $49
    ld a, [de]                                    ; $5cd9: $1a
    ld l, b                                       ; $5cda: $68
    adc h                                         ; $5cdb: $8c
    dec [hl]                                      ; $5cdc: $35
    ld e, b                                       ; $5cdd: $58
    jp c, $adf6                                   ; $5cde: $da $f6 $ad

    ld e, $61                                     ; $5ce1: $1e $61
    cp l                                          ; $5ce3: $bd
    jp nc, $e54c                                  ; $5ce4: $d2 $4c $e5

    ld [hl], a                                    ; $5ce7: $77
    ld l, c                                       ; $5ce8: $69
    ld e, [hl]                                    ; $5ce9: $5e
    ld a, [hl]                                    ; $5cea: $7e
    daa                                           ; $5ceb: $27
    sbc e                                         ; $5cec: $9b
    jr nz, jr_02a_5c77                            ; $5ced: $20 $88

    cp a                                          ; $5cef: $bf
    ld d, $37                                     ; $5cf0: $16 $37
    db $ec                                        ; $5cf2: $ec
    ld a, $ac                                     ; $5cf3: $3e $ac
    adc d                                         ; $5cf5: $8a
    ld a, [bc]                                    ; $5cf6: $0a
    jr nz, @-$65                                  ; $5cf7: $20 $99

    ld hl, $bdc2                                  ; $5cf9: $21 $c2 $bd
    jp nc, $e54c                                  ; $5cfc: $d2 $4c $e5

    ld [hl], a                                    ; $5cff: $77
    ld l, c                                       ; $5d00: $69
    daa                                           ; $5d01: $27
    dec hl                                        ; $5d02: $2b
    db $d3                                        ; $5d03: $d3
    ld [hl], b                                    ; $5d04: $70
    db $dd                                        ; $5d05: $dd
    inc sp                                        ; $5d06: $33
    or h                                          ; $5d07: $b4
    push hl                                       ; $5d08: $e5
    sbc e                                         ; $5d09: $9b
    ld a, [de]                                    ; $5d0a: $1a
    inc l                                         ; $5d0b: $2c
    ld l, l                                       ; $5d0c: $6d
    ei                                            ; $5d0d: $fb
    ld d, [hl]                                    ; $5d0e: $56
    adc a                                         ; $5d0f: $8f
    jr nc, jr_02a_5ccf                            ; $5d10: $30 $bd

    jp nc, $e54c                                  ; $5d12: $d2 $4c $e5

    ld [hl], a                                    ; $5d15: $77
    ld l, c                                       ; $5d16: $69
    ld e, [hl]                                    ; $5d17: $5e
    ld a, [hl]                                    ; $5d18: $7e
    db $dd                                        ; $5d19: $dd
    db $d3                                        ; $5d1a: $d3
    ld l, a                                       ; $5d1b: $6f
    ld [de], a                                    ; $5d1c: $12
    xor h                                         ; $5d1d: $ac
    adc d                                         ; $5d1e: $8a
    ld a, [bc]                                    ; $5d1f: $0a
    jr nz, jr_02a_5cbb                            ; $5d20: $20 $99

    ld hl, $bdc2                                  ; $5d22: $21 $c2 $bd
    jp nc, $e54c                                  ; $5d25: $d2 $4c $e5

    ld [hl], a                                    ; $5d28: $77
    ld l, c                                       ; $5d29: $69
    db $dd                                        ; $5d2a: $dd
    dec h                                         ; $5d2b: $25
    db $ed                                        ; $5d2c: $ed
    rlca                                          ; $5d2d: $07
    ld c, b                                       ; $5d2e: $48
    reti                                          ; $5d2f: $d9


    ld l, c                                       ; $5d30: $69
    and $8a                                       ; $5d31: $e6 $8a
    ld a, h                                       ; $5d33: $7c
    adc h                                         ; $5d34: $8c
    dec [hl]                                      ; $5d35: $35
    ld e, b                                       ; $5d36: $58
    jp c, $adf6                                   ; $5d37: $da $f6 $ad

    ld e, $61                                     ; $5d3a: $1e $61
    cp l                                          ; $5d3c: $bd
    jp nc, $e54c                                  ; $5d3d: $d2 $4c $e5

    ld [hl], a                                    ; $5d40: $77
    ld l, c                                       ; $5d41: $69
    db $dd                                        ; $5d42: $dd
    dec h                                         ; $5d43: $25
    db $ed                                        ; $5d44: $ed
    rlca                                          ; $5d45: $07
    ld c, b                                       ; $5d46: $48
    ld e, c                                       ; $5d47: $59
    dec bc                                        ; $5d48: $0b
    ld l, c                                       ; $5d49: $69
    rst $20                                       ; $5d4a: $e7
    ld l, e                                       ; $5d4b: $6b

jr_02a_5d4c:
    or b                                          ; $5d4c: $b0
    or h                                          ; $5d4d: $b4
    db $ed                                        ; $5d4e: $ed
    ld e, e                                       ; $5d4f: $5b
    dec a                                         ; $5d50: $3d
    jp nz, $d2bd                                  ; $5d51: $c2 $bd $d2

    ld c, h                                       ; $5d54: $4c
    push hl                                       ; $5d55: $e5
    ld [hl], a                                    ; $5d56: $77
    ld l, c                                       ; $5d57: $69
    db $dd                                        ; $5d58: $dd
    dec h                                         ; $5d59: $25
    db $ed                                        ; $5d5a: $ed
    rlca                                          ; $5d5b: $07
    ld c, b                                       ; $5d5c: $48
    ld e, c                                       ; $5d5d: $59
    ld c, e                                       ; $5d5e: $4b
    ld b, a                                       ; $5d5f: $47
    jp nc, $0d78                                  ; $5d60: $d2 $78 $0d

    sub [hl]                                      ; $5d63: $96
    or [hl]                                       ; $5d64: $b6
    ld a, l                                       ; $5d65: $7d
    xor e                                         ; $5d66: $ab
    ld b, a                                       ; $5d67: $47
    jr @-$41                                      ; $5d68: $18 $bd

    jp nc, $e54c                                  ; $5d6a: $d2 $4c $e5

    ld [hl], a                                    ; $5d6d: $77
    ld l, c                                       ; $5d6e: $69
    ld a, [hl-]                                   ; $5d6f: $3a
    ldh a, [$94]                                  ; $5d70: $f0 $94
    sub a                                         ; $5d72: $97
    call z, Call_02a_6110                         ; $5d73: $cc $10 $61
    cp l                                          ; $5d76: $bd
    jp nc, $e54c                                  ; $5d77: $d2 $4c $e5

    ld [hl], a                                    ; $5d7a: $77
    ld l, c                                       ; $5d7b: $69
    ld e, [hl]                                    ; $5d7c: $5e
    ld a, [hl]                                    ; $5d7d: $7e
    dec a                                         ; $5d7e: $3d
    ld b, h                                       ; $5d7f: $44
    add hl, bc                                    ; $5d80: $09
    db $ec                                        ; $5d81: $ec
    dec de                                        ; $5d82: $1b
    jr jr_02a_5dd6                                ; $5d83: $18 $51

    cp a                                          ; $5d85: $bf
    ld c, c                                       ; $5d86: $49
    xor e                                         ; $5d87: $ab
    and d                                         ; $5d88: $a2
    ld [bc], a                                    ; $5d89: $02
    ld c, b                                       ; $5d8a: $48
    ld h, [hl]                                    ; $5d8b: $66
    adc b                                         ; $5d8c: $88
    jr nc, jr_02a_5d4c                            ; $5d8d: $30 $bd

    jp nc, $e54c                                  ; $5d8f: $d2 $4c $e5

    ld [hl], a                                    ; $5d92: $77
    ld l, c                                       ; $5d93: $69
    ld e, [hl]                                    ; $5d94: $5e
    ld a, [hl]                                    ; $5d95: $7e
    dec a                                         ; $5d96: $3d
    inc h                                         ; $5d97: $24
    dec sp                                        ; $5d98: $3b
    and l                                         ; $5d99: $a5
    reti                                          ; $5d9a: $d9


    jp hl                                         ; $5d9b: $e9


    sbc c                                         ; $5d9c: $99
    ld hl, $bdc2                                  ; $5d9d: $21 $c2 $bd
    jp nc, $e54c                                  ; $5da0: $d2 $4c $e5

    ld [hl], a                                    ; $5da3: $77
    ld l, c                                       ; $5da4: $69
    ld a, [hl-]                                   ; $5da5: $3a
    ld h, [hl]                                    ; $5da6: $66
    jr z, @-$06                                   ; $5da7: $28 $f8

    and h                                         ; $5da9: $a4
    or l                                          ; $5daa: $b5
    sbc a                                         ; $5dab: $9f
    ld e, [hl]                                    ; $5dac: $5e
    cp l                                          ; $5dad: $bd
    db $ec                                        ; $5dae: $ec
    ld a, b                                       ; $5daf: $78
    cp c                                          ; $5db0: $b9
    inc d                                         ; $5db1: $14
    and h                                         ; $5db2: $a4
    dec sp                                        ; $5db3: $3b
    jr nz, jr_02a_5dc2                            ; $5db4: $20 $0c

    cp l                                          ; $5db6: $bd
    jp nc, $e54c                                  ; $5db7: $d2 $4c $e5

    and a                                         ; $5dba: $a7
    cp [hl]                                       ; $5dbb: $be
    xor $51                                       ; $5dbc: $ee $51
    db $dd                                        ; $5dbe: $dd
    ld c, [hl]                                    ; $5dbf: $4e
    add hl, bc                                    ; $5dc0: $09
    ld [hl], a                                    ; $5dc1: $77

jr_02a_5dc2:
    jp z, $9fa5                                   ; $5dc2: $ca $a5 $9f

    ld [de], a                                    ; $5dc5: $12
    ld e, e                                       ; $5dc6: $5b

Jump_02a_5dc7:
    adc a                                         ; $5dc7: $8f
    ld [hl+], a                                   ; $5dc8: $22
    rst $38                                       ; $5dc9: $ff
    dec sp                                        ; $5dca: $3b
    call $f8a8                                    ; $5dcb: $cd $a8 $f8
    dec bc                                        ; $5dce: $0b
    jr nz, jr_02a_5ddd                            ; $5dcf: $20 $0c

    cp l                                          ; $5dd1: $bd
    jp nc, $e54c                                  ; $5dd2: $d2 $4c $e5

    and a                                         ; $5dd5: $a7

jr_02a_5dd6:
    ld a, $2f                                     ; $5dd6: $3e $2f
    ccf                                           ; $5dd8: $3f
    jr z, jr_02a_5e04                             ; $5dd9: $28 $29

    cp a                                          ; $5ddb: $bf
    or h                                          ; $5ddc: $b4

jr_02a_5ddd:
    rst $20                                       ; $5ddd: $e7
    push hl                                       ; $5dde: $e5
    ld [hl], a                                    ; $5ddf: $77
    sub d                                         ; $5de0: $92
    sub $1f                                       ; $5de1: $d6 $1f
    ld h, c                                       ; $5de3: $61
    cp l                                          ; $5de4: $bd
    jp nc, $e54c                                  ; $5de5: $d2 $4c $e5

    ld [hl], a                                    ; $5de8: $77
    ld l, c                                       ; $5de9: $69
    ld e, [hl]                                    ; $5dea: $5e
    ld a, [hl]                                    ; $5deb: $7e
    xor l                                         ; $5dec: $ad
    add hl, de                                    ; $5ded: $19
    ldh a, [$2a]                                  ; $5dee: $f0 $2a
    ld c, $3b                                     ; $5df0: $0e $3b
    sub [hl]                                      ; $5df2: $96
    ld e, h                                       ; $5df3: $5c
    sub h                                         ; $5df4: $94
    xor d                                         ; $5df5: $aa
    ld e, a                                       ; $5df6: $5f
    xor e                                         ; $5df7: $ab
    add $88                                       ; $5df8: $c6 $88
    jr nc, @-$41                                  ; $5dfa: $30 $bd

    jp nc, $e54c                                  ; $5dfc: $d2 $4c $e5

    ld [hl], a                                    ; $5dff: $77
    ld l, c                                       ; $5e00: $69
    ld e, [hl]                                    ; $5e01: $5e
    ld a, [hl]                                    ; $5e02: $7e
    rst $00                                       ; $5e03: $c7

jr_02a_5e04:
    ld c, e                                       ; $5e04: $4b
    ld h, e                                       ; $5e05: $63
    db $db                                        ; $5e06: $db
    sub a                                         ; $5e07: $97
    ld e, b                                       ; $5e08: $58
    jp z, $ce8e                                   ; $5e09: $ca $8e $ce

    ld b, $6a                                     ; $5e0c: $06 $6a

jr_02a_5e0e:
    dec sp                                        ; $5e0e: $3b
    ld h, $25                                     ; $5e0f: $26 $25
    cp h                                          ; $5e11: $bc
    sbc [hl]                                      ; $5e12: $9e
    jp nc, $0c20                                  ; $5e13: $d2 $20 $0c

    cp l                                          ; $5e16: $bd
    jp nc, $e54c                                  ; $5e17: $d2 $4c $e5

    ld [hl], a                                    ; $5e1a: $77
    ld l, c                                       ; $5e1b: $69
    ld e, [hl]                                    ; $5e1c: $5e
    ld a, [hl]                                    ; $5e1d: $7e

jr_02a_5e1e:
    rst $00                                       ; $5e1e: $c7
    ld c, e                                       ; $5e1f: $4b
    ld h, e                                       ; $5e20: $63
    db $db                                        ; $5e21: $db
    sub a                                         ; $5e22: $97
    ld e, b                                       ; $5e23: $58
    jp z, Jump_02a_65ba                           ; $5e24: $ca $ba $65

    jr jr_02a_5e4f                                ; $5e27: $18 $26

    db $ed                                        ; $5e29: $ed
    db $f4                                        ; $5e2a: $f4
    call z, Call_02a_6110                         ; $5e2b: $cc $10 $61
    cp l                                          ; $5e2e: $bd
    jp nc, $e54c                                  ; $5e2f: $d2 $4c $e5

    ld [hl], a                                    ; $5e32: $77
    ld l, c                                       ; $5e33: $69
    cp d                                          ; $5e34: $ba
    or [hl]                                       ; $5e35: $b6
    ld h, h                                       ; $5e36: $64
    add [hl]                                      ; $5e37: $86
    xor e                                         ; $5e38: $ab
    ld c, h                                       ; $5e39: $4c
    and a                                         ; $5e3a: $a7
    sbc l                                         ; $5e3b: $9d
    ld a, [hl+]                                   ; $5e3c: $2a
    inc c                                         ; $5e3d: $0c
    ld h, c                                       ; $5e3e: $61
    cp l                                          ; $5e3f: $bd
    jp nc, $e54c                                  ; $5e40: $d2 $4c $e5

    ld [hl], a                                    ; $5e43: $77
    ld l, c                                       ; $5e44: $69
    rst $00                                       ; $5e45: $c7
    db $dd                                        ; $5e46: $dd
    ld e, b                                       ; $5e47: $58
    sub l                                         ; $5e48: $95
    ld a, [de]                                    ; $5e49: $1a
    inc l                                         ; $5e4a: $2c
    ld l, l                                       ; $5e4b: $6d
    ei                                            ; $5e4c: $fb
    ld d, [hl]                                    ; $5e4d: $56
    adc a                                         ; $5e4e: $8f

jr_02a_5e4f:
    jr nc, jr_02a_5e0e                            ; $5e4f: $30 $bd

    jp nc, $e54c                                  ; $5e51: $d2 $4c $e5

    ld [hl], a                                    ; $5e54: $77
    ld l, c                                       ; $5e55: $69
    ld e, [hl]                                    ; $5e56: $5e
    ld a, [hl]                                    ; $5e57: $7e
    rst $00                                       ; $5e58: $c7
    res 5, e                                      ; $5e59: $cb $ab
    xor a                                         ; $5e5b: $af
    ld d, l                                       ; $5e5c: $55
    ld h, e                                       ; $5e5d: $63
    ld b, h                                       ; $5e5e: $44
    jr jr_02a_5e1e                                ; $5e5f: $18 $bd

    jp nc, $e54c                                  ; $5e61: $d2 $4c $e5

    ld [hl], a                                    ; $5e64: $77
    ld l, c                                       ; $5e65: $69
    ld e, [hl]                                    ; $5e66: $5e
    ld a, [hl]                                    ; $5e67: $7e
    dec l                                         ; $5e68: $2d
    xor [hl]                                      ; $5e69: $ae

Call_02a_5e6a:
    or [hl]                                       ; $5e6a: $b6
    cp l                                          ; $5e6b: $bd
    db $d3                                        ; $5e6c: $d3
    inc sp                                        ; $5e6d: $33
    ld b, e                                       ; $5e6e: $43
    add h                                         ; $5e6f: $84
    ld bc, $d2bd                                  ; $5e70: $01 $bd $d2
    ld c, h                                       ; $5e73: $4c
    push hl                                       ; $5e74: $e5
    ld [hl], a                                    ; $5e75: $77
    ld l, c                                       ; $5e76: $69
    ld e, [hl]                                    ; $5e77: $5e
    ld a, [hl]                                    ; $5e78: $7e
    db $dd                                        ; $5e79: $dd
    ld d, e                                       ; $5e7a: $53
    ld e, h                                       ; $5e7b: $5c
    db $f4                                        ; $5e7c: $f4
    ld a, [$cf4e]                                 ; $5e7d: $fa $4e $cf
    inc c                                         ; $5e80: $0c
    ld de, $bd06                                  ; $5e81: $11 $06 $bd
    jp nc, $e54c                                  ; $5e84: $d2 $4c $e5

    ld [hl], a                                    ; $5e87: $77
    ld l, c                                       ; $5e88: $69
    ld e, [hl]                                    ; $5e89: $5e
    ld a, [hl]                                    ; $5e8a: $7e
    rst $00                                       ; $5e8b: $c7
    jr jr_02a_5e98                                ; $5e8c: $18 $0a

    ld a, $09                                     ; $5e8e: $3e $09
    db $10                                        ; $5e90: $10
    ld b, $bd                                     ; $5e91: $06 $bd
    jp nc, $e54c                                  ; $5e93: $d2 $4c $e5

    ld [hl], a                                    ; $5e96: $77
    ld l, c                                       ; $5e97: $69

jr_02a_5e98:
    ld e, [hl]                                    ; $5e98: $5e
    ld a, [hl]                                    ; $5e99: $7e
    sbc l                                         ; $5e9a: $9d
    db $f4                                        ; $5e9b: $f4
    sbc e                                         ; $5e9c: $9b
    or h                                          ; $5e9d: $b4
    ldh a, [$72]                                  ; $5e9e: $f0 $72
    cp b                                          ; $5ea0: $b8
    inc d                                         ; $5ea1: $14
    ld c, h                                       ; $5ea2: $4c
    ld [hl-], a                                   ; $5ea3: $32
    ld b, e                                       ; $5ea4: $43
    add h                                         ; $5ea5: $84
    ld bc, $d2bd                                  ; $5ea6: $01 $bd $d2
    ld c, h                                       ; $5ea9: $4c
    push hl                                       ; $5eaa: $e5
    ld [hl], a                                    ; $5eab: $77
    ld l, c                                       ; $5eac: $69
    xor l                                         ; $5ead: $ad
    ld a, [hl+]                                   ; $5eae: $2a
    jp nc, Jump_02a_60d4                          ; $5eaf: $d2 $d4 $60

    ld d, [hl]                                    ; $5eb2: $56
    dec [hl]                                      ; $5eb3: $35
    pop de                                        ; $5eb4: $d1
    ld de, $bd06                                  ; $5eb5: $11 $06 $bd
    jp nc, $e54c                                  ; $5eb8: $d2 $4c $e5

    ld [hl], a                                    ; $5ebb: $77
    ld l, c                                       ; $5ebc: $69
    ld e, [hl]                                    ; $5ebd: $5e
    ld a, [hl]                                    ; $5ebe: $7e
    ld b, a                                       ; $5ebf: $47
    add c                                         ; $5ec0: $81
    ld c, e                                       ; $5ec1: $4b
    ld d, d                                       ; $5ec2: $52
    add [hl]                                      ; $5ec3: $86
    call $14aa                                    ; $5ec4: $cd $aa $14
    cp c                                          ; $5ec7: $b9
    inc l                                         ; $5ec8: $2c
    dec b                                         ; $5ec9: $05
    ld h, c                                       ; $5eca: $61
    cp l                                          ; $5ecb: $bd
    jp nc, $e54c                                  ; $5ecc: $d2 $4c $e5

    sub a                                         ; $5ecf: $97
    add $e1                                       ; $5ed0: $c6 $e1
    or d                                          ; $5ed2: $b2
    ld e, a                                       ; $5ed3: $5f
    ld l, e                                       ; $5ed4: $6b
    ld b, $bc                                     ; $5ed5: $06 $bc
    adc d                                         ; $5ed7: $8a
    inc bc                                        ; $5ed8: $03
    jp nz, $d2bd                                  ; $5ed9: $c2 $bd $d2

    ld c, h                                       ; $5edc: $4c
    push hl                                       ; $5edd: $e5
    sub a                                         ; $5ede: $97
    add $e1                                       ; $5edf: $c6 $e1
    or d                                          ; $5ee1: $b2
    ld e, a                                       ; $5ee2: $5f
    ld l, e                                       ; $5ee3: $6b
    ld b, $bc                                     ; $5ee4: $06 $bc
    adc d                                         ; $5ee6: $8a
    inc bc                                        ; $5ee7: $03
    jp nz, $d2bd                                  ; $5ee8: $c2 $bd $d2

    ld c, h                                       ; $5eeb: $4c
    push hl                                       ; $5eec: $e5
    sub a                                         ; $5eed: $97
    add $e1                                       ; $5eee: $c6 $e1

jr_02a_5ef0:
    or d                                          ; $5ef0: $b2
    ld e, a                                       ; $5ef1: $5f
    ld l, e                                       ; $5ef2: $6b
    ld b, $bc                                     ; $5ef3: $06 $bc
    adc d                                         ; $5ef5: $8a
    inc bc                                        ; $5ef6: $03
    jp nz, $d2bd                                  ; $5ef7: $c2 $bd $d2

    ld c, h                                       ; $5efa: $4c
    push hl                                       ; $5efb: $e5
    sub a                                         ; $5efc: $97
    add $e1                                       ; $5efd: $c6 $e1
    or d                                          ; $5eff: $b2
    ld e, a                                       ; $5f00: $5f
    xor e                                         ; $5f01: $ab
    ld b, $72                                     ; $5f02: $06 $72
    ld e, c                                       ; $5f04: $59
    dec c                                         ; $5f05: $0d

jr_02a_5f06:
    ld d, [hl]                                    ; $5f06: $56
    adc h                                         ; $5f07: $8c
    inc hl                                        ; $5f08: $23
    inc c                                         ; $5f09: $0c
    cp l                                          ; $5f0a: $bd
    jp nc, $e54c                                  ; $5f0b: $d2 $4c $e5

    ld [hl], a                                    ; $5f0e: $77
    ld l, c                                       ; $5f0f: $69
    ld e, [hl]                                    ; $5f10: $5e
    ld a, [hl]                                    ; $5f11: $7e
    db $dd                                        ; $5f12: $dd
    ld d, h                                       ; $5f13: $54
    ret c                                         ; $5f14: $d8

    ld a, d                                       ; $5f15: $7a
    adc b                                         ; $5f16: $88
    or d                                          ; $5f17: $b2
    ld c, e                                       ; $5f18: $4b
    pop bc                                        ; $5f19: $c1
    cp d                                          ; $5f1a: $ba
    ld b, l                                       ; $5f1b: $45
    db $d3                                        ; $5f1c: $d3
    sbc [hl]                                      ; $5f1d: $9e

jr_02a_5f1e:
    ld h, h                                       ; $5f1e: $64
    add [hl]                                      ; $5f1f: $86
    ld [$bd03], sp                                ; $5f20: $08 $03 $bd
    jp nc, $e54c                                  ; $5f23: $d2 $4c $e5

    ld [hl], a                                    ; $5f26: $77
    ld l, c                                       ; $5f27: $69
    ld e, [hl]                                    ; $5f28: $5e
    ld a, [hl]                                    ; $5f29: $7e
    rst $00                                       ; $5f2a: $c7
    res 5, e                                      ; $5f2b: $cb $ab
    xor a                                         ; $5f2d: $af
    ld d, l                                       ; $5f2e: $55
    ld h, e                                       ; $5f2f: $63

jr_02a_5f30:
    ld b, h                                       ; $5f30: $44
    jr jr_02a_5ef0                                ; $5f31: $18 $bd

    jp nc, $e54c                                  ; $5f33: $d2 $4c $e5

    ld [hl], a                                    ; $5f36: $77
    ld l, c                                       ; $5f37: $69
    ld e, [hl]                                    ; $5f38: $5e
    ld a, [hl]                                    ; $5f39: $7e
    dec l                                         ; $5f3a: $2d
    ld e, a                                       ; $5f3b: $5f
    ret                                           ; $5f3c: $c9


    ei                                            ; $5f3d: $fb
    ld c, [hl]                                    ; $5f3e: $4e
    ld [hl], $41                                  ; $5f3f: $36 $41
    db $10                                        ; $5f41: $10
    ld a, a                                       ; $5f42: $7f
    and a                                         ; $5f43: $a7
    ld h, a                                       ; $5f44: $67
    add [hl]                                      ; $5f45: $86
    ld [$bd03], sp                                ; $5f46: $08 $03 $bd
    jp nc, $e54c                                  ; $5f49: $d2 $4c $e5

    ld [hl], a                                    ; $5f4c: $77
    ld l, c                                       ; $5f4d: $69
    ld e, [hl]                                    ; $5f4e: $5e
    ld a, [hl]                                    ; $5f4f: $7e
    dec a                                         ; $5f50: $3d
    push hl                                       ; $5f51: $e5
    ld a, [$60a5]                                 ; $5f52: $fa $a5 $60
    dec l                                         ; $5f55: $2d
    and [hl]                                      ; $5f56: $a6
    db $d3                                        ; $5f57: $d3
    adc c                                         ; $5f58: $89

Call_02a_5f59:
    rst $30                                       ; $5f59: $f7

Jump_02a_5f5a:
    ld h, c                                       ; $5f5a: $61
    and a                                         ; $5f5b: $a7
    jp c, $adf6                                   ; $5f5c: $da $f6 $ad

    ld e, $61                                     ; $5f5f: $1e $61
    cp l                                          ; $5f61: $bd
    jp nc, $e54c                                  ; $5f62: $d2 $4c $e5

    ld [hl], a                                    ; $5f65: $77
    ld l, c                                       ; $5f66: $69
    ld e, [hl]                                    ; $5f67: $5e
    ld a, [hl]                                    ; $5f68: $7e
    ld b, a                                       ; $5f69: $47
    ld h, a                                       ; $5f6a: $67
    ld d, e                                       ; $5f6b: $53
    add e                                         ; $5f6c: $83
    ld a, c                                       ; $5f6d: $79
    sbc $f8                                       ; $5f6e: $de $f8
    adc [hl]                                      ; $5f70: $8e
    jr nc, jr_02a_5f30                            ; $5f71: $30 $bd

    jp nc, $e54c                                  ; $5f73: $d2 $4c $e5

    ld [hl], a                                    ; $5f76: $77
    ld l, c                                       ; $5f77: $69
    ld e, [hl]                                    ; $5f78: $5e
    ld a, [hl]                                    ; $5f79: $7e
    daa                                           ; $5f7a: $27
    sbc e                                         ; $5f7b: $9b
    jr nz, jr_02a_5f06                            ; $5f7c: $20 $88

    cp a                                          ; $5f7e: $bf
    sub e                                         ; $5f7f: $93
    dec c                                         ; $5f80: $0d
    call c, $556a                                 ; $5f81: $dc $6a $55
    ld d, h                                       ; $5f84: $54
    nop                                           ; $5f85: $00
    ret                                           ; $5f86: $c9


    inc c                                         ; $5f87: $0c
    ld de, $bd06                                  ; $5f88: $11 $06 $bd
    jp nc, $e54c                                  ; $5f8b: $d2 $4c $e5

    ld [hl], a                                    ; $5f8e: $77
    ld l, c                                       ; $5f8f: $69
    ld e, [hl]                                    ; $5f90: $5e
    ld a, [hl]                                    ; $5f91: $7e
    daa                                           ; $5f92: $27
    sbc e                                         ; $5f93: $9b
    jr nz, jr_02a_5f1e                            ; $5f94: $20 $88

    cp a                                          ; $5f96: $bf
    and e                                         ; $5f97: $a3
    call nz, $4557                                ; $5f98: $c4 $57 $45
    dec b                                         ; $5f9b: $05
    sub b                                         ; $5f9c: $90
    call z, Call_02a_6110                         ; $5f9d: $cc $10 $61
    cp l                                          ; $5fa0: $bd
    jp nc, $e54c                                  ; $5fa1: $d2 $4c $e5

    ld [hl], a                                    ; $5fa4: $77
    ld l, c                                       ; $5fa5: $69
    ld e, [hl]                                    ; $5fa6: $5e
    ld a, [hl]                                    ; $5fa7: $7e
    db $dd                                        ; $5fa8: $dd
    ld d, h                                       ; $5fa9: $54
    ret c                                         ; $5faa: $d8

    adc $54                                       ; $5fab: $ce $54
    inc de                                        ; $5fad: $13
    dec e                                         ; $5fae: $1d
    ld h, c                                       ; $5faf: $61
    cp l                                          ; $5fb0: $bd
    jp nc, $e54c                                  ; $5fb1: $d2 $4c $e5

    ld [hl], a                                    ; $5fb4: $77
    ld l, c                                       ; $5fb5: $69
    ld a, [hl-]                                   ; $5fb6: $3a
    ld hl, sp+$4a                                 ; $5fb7: $f8 $4a
    sbc $57                                       ; $5fb9: $de $57
    inc [hl]                                      ; $5fbb: $34
    ld b, [hl]                                    ; $5fbc: $46
    ld e, [hl]                                    ; $5fbd: $5e
    dec de                                        ; $5fbe: $1b
    add h                                         ; $5fbf: $84
    ld bc, $d2bd                                  ; $5fc0: $01 $bd $d2
    ld c, h                                       ; $5fc3: $4c
    push hl                                       ; $5fc4: $e5
    ld [hl], a                                    ; $5fc5: $77

Call_02a_5fc6:
    ld l, c                                       ; $5fc6: $69
    db $dd                                        ; $5fc7: $dd
    dec h                                         ; $5fc8: $25
    db $ed                                        ; $5fc9: $ed
    rlca                                          ; $5fca: $07
    ld c, b                                       ; $5fcb: $48
    reti                                          ; $5fcc: $d9


    pop de                                        ; $5fcd: $d1
    sub a                                         ; $5fce: $97

Jump_02a_5fcf:
    ld [$4b6a], sp                                ; $5fcf: $08 $6a $4b
    db $db                                        ; $5fd2: $db
    cp [hl]                                       ; $5fd3: $be
    push de                                       ; $5fd4: $d5
    inc hl                                        ; $5fd5: $23
    inc c                                         ; $5fd6: $0c
    cp l                                          ; $5fd7: $bd
    jp nc, $e54c                                  ; $5fd8: $d2 $4c $e5

    ld [hl], a                                    ; $5fdb: $77
    ld l, c                                       ; $5fdc: $69
    ld c, d                                       ; $5fdd: $4a
    ei                                            ; $5fde: $fb
    or b                                          ; $5fdf: $b0
    db $e3                                        ; $5fe0: $e3
    call $a8aa                                    ; $5fe1: $cd $aa $a8
    nop                                           ; $5fe4: $00
    sub d                                         ; $5fe5: $92
    add hl, de                                    ; $5fe6: $19
    ld [hl+], a                                   ; $5fe7: $22
    inc c                                         ; $5fe8: $0c
    cp l                                          ; $5fe9: $bd

jr_02a_5fea:
    jp nc, $e54c                                  ; $5fea: $d2 $4c $e5

    rst $20                                       ; $5fed: $e7
    push hl                                       ; $5fee: $e5
    ld [hl], a                                    ; $5fef: $77
    ld e, h                                       ; $5ff0: $5c
    ld l, h                                       ; $5ff1: $6c
    ld l, $05                                     ; $5ff2: $2e $05
    dec sp                                        ; $5ff4: $3b
    pop af                                        ; $5ff5: $f1
    dec de                                        ; $5ff6: $1b
    sbc b                                         ; $5ff7: $98
    ld h, h                                       ; $5ff8: $64
    add [hl]                                      ; $5ff9: $86
    ld [$bd03], sp                                ; $5ffa: $08 $03 $bd
    jp nc, $e54c                                  ; $5ffd: $d2 $4c $e5

    ld [hl], a                                    ; $6000: $77
    ld l, c                                       ; $6001: $69
    ld e, [hl]                                    ; $6002: $5e
    ld a, [hl]                                    ; $6003: $7e
    rst $00                                       ; $6004: $c7
    res 5, e                                      ; $6005: $cb $ab
    xor a                                         ; $6007: $af
    ld d, l                                       ; $6008: $55
    ld h, e                                       ; $6009: $63
    ld b, h                                       ; $600a: $44
    jr jr_02a_5fea                                ; $600b: $18 $dd

    ld e, [hl]                                    ; $600d: $5e
    ld e, h                                       ; $600e: $5c
    cpl                                           ; $600f: $2f
    call Call_000_2abf                            ; $6010: $cd $bf $2a
    sub h                                         ; $6013: $94
    ld sp, $6683                                  ; $6014: $31 $83 $66
    sbc h                                         ; $6017: $9c
    sub $7f                                       ; $6018: $d6 $7f
    cp a                                          ; $601a: $bf
    db $fd                                        ; $601b: $fd
    or $b7                                        ; $601c: $f6 $b7
    and e                                         ; $601e: $a3
    ld b, d                                       ; $601f: $42
    push hl                                       ; $6020: $e5
    ld hl, sp+$3b                                 ; $6021: $f8 $3b
    sub [hl]                                      ; $6023: $96
    db $fc                                        ; $6024: $fc
    push bc                                       ; $6025: $c5
    push af                                       ; $6026: $f5
    ld d, d                                       ; $6027: $52
    ld hl, sp-$1c                                 ; $6028: $f8 $e4
    call c, $a859                                 ; $602a: $dc $59 $a8
    ld b, d                                       ; $602d: $42
    dec sp                                        ; $602e: $3b
    ld h, a                                       ; $602f: $67
    dec sp                                        ; $6030: $3b
    rst $20                                       ; $6031: $e7
    xor b                                         ; $6032: $a8
    ld d, b                                       ; $6033: $50
    add hl, sp                                    ; $6034: $39
    cp $8e                                        ; $6035: $fe $8e
    dec h                                         ; $6037: $25
    ld a, a                                       ; $6038: $7f
    ld [hl], c                                    ; $6039: $71
    cp l                                          ; $603a: $bd
    inc d                                         ; $603b: $14
    ld a, $f9                                     ; $603c: $3e $f9
    sub h                                         ; $603e: $94
    ret c                                         ; $603f: $d8

    cp h                                          ; $6040: $bc
    db $fc                                        ; $6041: $fc
    adc [hl]                                      ; $6042: $8e
    ld a, [bc]                                    ; $6043: $0a
    sub l                                         ; $6044: $95
    db $e3                                        ; $6045: $e3
    rst $28                                       ; $6046: $ef
    ld e, b                                       ; $6047: $58
    ld a, [c]                                     ; $6048: $f2
    rla                                           ; $6049: $17
    rst $10                                       ; $604a: $d7
    ld c, e                                       ; $604b: $4b
    pop hl                                        ; $604c: $e1
    sub e                                         ; $604d: $93
    xor a                                         ; $604e: $af
    sbc a                                         ; $604f: $9f
    dec e                                         ; $6050: $1d
    cpl                                           ; $6051: $2f
    or a                                          ; $6052: $b7
    db $e3                                        ; $6053: $e3
    ld c, c                                       ; $6054: $49
    rst $10                                       ; $6055: $d7
    ld a, a                                       ; $6056: $7f
    ld sp, $9c83                                  ; $6057: $31 $83 $9c
    jp z, $3e4f                                   ; $605a: $ca $4f $3e

    cp b                                          ; $605d: $b8
    ldh [$2f], a                                  ; $605e: $e0 $2f
    rst $08                                       ; $6060: $cf
    and $a2                                       ; $6061: $e6 $a2
    db $ec                                        ; $6063: $ec
    ld b, e                                       ; $6064: $43
    sub l                                         ; $6065: $95
    ld a, [hl-]                                   ; $6066: $3a
    inc l                                         ; $6067: $2c
    db $ed                                        ; $6068: $ed
    dec e                                         ; $6069: $1d
    dec d                                         ; $606a: $15
    ld a, [hl+]                                   ; $606b: $2a
    rst $00                                       ; $606c: $c7
    rst $18                                       ; $606d: $df
    or c                                          ; $606e: $b1
    db $e4                                        ; $606f: $e4
    cpl                                           ; $6070: $2f
    xor [hl]                                      ; $6071: $ae
    sub a                                         ; $6072: $97
    jp nz, $e727                                  ; $6073: $c2 $27 $e7

    adc $42                                       ; $6076: $ce $42
    dec d                                         ; $6078: $15
    jp c, $79a5                                   ; $6079: $da $a5 $79

    ld sp, hl                                     ; $607c: $f9
    sbc l                                         ; $607d: $9d
    ld b, c                                       ; $607e: $41
    rst $10                                       ; $607f: $d7
    sbc a                                         ; $6080: $9f
    xor l                                         ; $6081: $ad
    push bc                                       ; $6082: $c5
    push de                                       ; $6083: $d5
    rra                                           ; $6084: $1f
    and [hl]                                      ; $6085: $a6
    call nz, Call_02a_49fa                        ; $6086: $c4 $fa $49
    ld e, c                                       ; $6089: $59
    ld a, d                                       ; $608a: $7a
    ld a, c                                       ; $608b: $79
    ld e, c                                       ; $608c: $59
    sub l                                         ; $608d: $95
    add [hl]                                      ; $608e: $86
    ld e, h                                       ; $608f: $5c
    xor $03                                       ; $6090: $ee $03
    jp c, $db39                                   ; $6092: $da $39 $db

    add hl, sp                                    ; $6095: $39
    daa                                           ; $6096: $27
    dec de                                        ; $6097: $1b
    ld l, b                                       ; $6098: $68
    adc $da                                       ; $6099: $ce $da
    ld d, c                                       ; $609b: $51
    add [hl]                                      ; $609c: $86
    db $dd                                        ; $609d: $dd
    ld e, h                                       ; $609e: $5c
    adc a                                         ; $609f: $8f
    call z, $3b08                                 ; $60a0: $cc $08 $3b
    jp hl                                         ; $60a3: $e9


    ld d, [hl]                                    ; $60a4: $56
    ld c, a                                       ; $60a5: $4f
    ldh a, [$6c]                                  ; $60a6: $f0 $6c
    db $ed                                        ; $60a8: $ed
    ld h, [hl]                                    ; $60a9: $66
    rst $00                                       ; $60aa: $c7
    ld l, c                                       ; $60ab: $69
    push hl                                       ; $60ac: $e5
    add hl, hl                                    ; $60ad: $29
    dec sp                                        ; $60ae: $3b
    ld l, b                                       ; $60af: $68
    rst $20                                       ; $60b0: $e7
    ld l, h                                       ; $60b1: $6c
    rst $20                                       ; $60b2: $e7
    sbc h                                         ; $60b3: $9c
    ld h, h                                       ; $60b4: $64
    jp hl                                         ; $60b5: $e9


    halt                                          ; $60b6: $76
    db $ec                                        ; $60b7: $ec
    add hl, hl                                    ; $60b8: $29
    dec l                                         ; $60b9: $2d
    rst $00                                       ; $60ba: $c7

Call_02a_60bb:
    ld e, $b3                                     ; $60bb: $1e $b3
    and e                                         ; $60bd: $a3
    ld a, e                                       ; $60be: $7b
    db $ed                                        ; $60bf: $ed
    inc d                                         ; $60c0: $14
    sra c                                         ; $60c1: $cb $29
    dec a                                         ; $60c3: $3d
    adc [hl]                                      ; $60c4: $8e
    dec a                                         ; $60c5: $3d
    push hl                                       ; $60c6: $e5
    sbc b                                         ; $60c7: $98
    ld d, e                                       ; $60c8: $53
    ld sp, $d69c                                  ; $60c9: $31 $9c $d6
    ld a, a                                       ; $60cc: $7f
    cp a                                          ; $60cd: $bf
    db $fd                                        ; $60ce: $fd
    or $b7                                        ; $60cf: $f6 $b7
    ld h, e                                       ; $60d1: $63
    db $e3                                        ; $60d2: $e3
    ld d, a                                       ; $60d3: $57

Jump_02a_60d4:
    ld l, $49                                     ; $60d4: $2e $49
    or a                                          ; $60d6: $b7
    jp c, $e251                                   ; $60d7: $da $51 $e2

    jr nc, jr_02a_60e7                            ; $60da: $30 $0b

    ld d, l                                       ; $60dc: $55
    ld l, b                                       ; $60dd: $68
    rst $20                                       ; $60de: $e7
    inc e                                         ; $60df: $1c
    dec d                                         ; $60e0: $15
    db $e3                                        ; $60e1: $e3
    db $e4                                        ; $60e2: $e4
    ld b, $c5                                     ; $60e3: $06 $c5
    ld h, c                                       ; $60e5: $61
    ld a, [c]                                     ; $60e6: $f2

jr_02a_60e7:
    ldh a, [$62]                                  ; $60e7: $f0 $62
    ld a, l                                       ; $60e9: $7d
    add [hl]                                      ; $60ea: $86
    jr nc, @-$21                                  ; $60eb: $30 $dd

    push hl                                       ; $60ed: $e5
    ld bc, $e2d6                                  ; $60ee: $01 $d6 $e2
    ld a, [hl+]                                   ; $60f1: $2a
    adc [hl]                                      ; $60f2: $8e
    ld bc, $bd27                                  ; $60f3: $01 $27 $bd
    push af                                       ; $60f6: $f5
    db $e3                                        ; $60f7: $e3
    pop hl                                        ; $60f8: $e1
    ld b, a                                       ; $60f9: $47
    or $37                                        ; $60fa: $f6 $37
    inc c                                         ; $60fc: $0c
    dec a                                         ; $60fd: $3d
    ld l, [hl]                                    ; $60fe: $6e
    ld hl, sp-$79                                 ; $60ff: $f8 $87
    rst $28                                       ; $6101: $ef
    ret z                                         ; $6102: $c8

    cp $0e                                        ; $6103: $fe $0e
    ccf                                           ; $6105: $3f
    or d                                          ; $6106: $b2
    rst $38                                       ; $6107: $ff
    jp Jump_000_3c8f                              ; $6108: $c3 $8f $3c


    ld h, b                                       ; $610b: $60
    jr jr_02a_6175                                ; $610c: $18 $67

    sub b                                         ; $610e: $90
    add c                                         ; $610f: $81

Call_02a_6110:
    ld h, a                                       ; $6110: $67
    dec sp                                        ; $6111: $3b
    ld h, a                                       ; $6112: $67
    dec sp                                        ; $6113: $3b
    ld h, a                                       ; $6114: $67
    dec sp                                        ; $6115: $3b
    ld h, a                                       ; $6116: $67
    jp Jump_000_312d                              ; $6117: $c3 $2d $31


    ld a, l                                       ; $611a: $7d
    sub a                                         ; $611b: $97
    ld h, [hl]                                    ; $611c: $66
    ldh [$d1], a                                  ; $611d: $e0 $d1
    adc $39                                       ; $611f: $ce $39
    push de                                       ; $6121: $d5
    ld a, [$cbc2]                                 ; $6122: $fa $c2 $cb
    push af                                       ; $6125: $f5
    rst $28                                       ; $6126: $ef
    adc d                                         ; $6127: $8a
    ld bc, $1d67                                  ; $6128: $01 $67 $1d
    ld a, [hl]                                    ; $612b: $7e

Jump_02a_612c:
    ld h, h                                       ; $612c: $64
    ld a, a                                       ; $612d: $7f
    db $eb                                        ; $612e: $eb

Call_02a_612f:
    ld [hl], l                                    ; $612f: $75
    ld hl, sp-$6f                                 ; $6130: $f8 $91
    db $fd                                        ; $6132: $fd
    rrca                                          ; $6133: $0f
    inc bc                                        ; $6134: $03
    dec a                                         ; $6135: $3d
    jp z, Jump_02a_5585                           ; $6136: $ca $85 $55

    push hl                                       ; $6139: $e5
    pop bc                                        ; $613a: $c1
    ld [hl], a                                    ; $613b: $77
    ld h, c                                       ; $613c: $61
    ld sp, $faab                                  ; $613d: $31 $ab $fa
    or e                                          ; $6140: $b3
    ld l, $18                                     ; $6141: $2e $18
    ld h, a                                       ; $6143: $67
    ret nz                                        ; $6144: $c0

    rra                                           ; $6145: $1f
    adc [hl]                                      ; $6146: $8e
    ld bc, $f5fd                                  ; $6147: $01 $fd $f5
    cp c                                          ; $614a: $b9
    inc hl                                        ; $614b: $23
    ei                                            ; $614c: $fb
    dec de                                        ; $614d: $1b
    ld b, $fd                                     ; $614e: $06 $fd
    rst $30                                       ; $6150: $f7
    cp c                                          ; $6151: $b9
    inc hl                                        ; $6152: $23
    ei                                            ; $6153: $fb
    dec de                                        ; $6154: $1b
    ld b, $07                                     ; $6155: $06 $07
    db $f4                                        ; $6157: $f4
    cp c                                          ; $6158: $b9
    inc hl                                        ; $6159: $23
    ei                                            ; $615a: $fb
    dec de                                        ; $615b: $1b
    ld b, $07                                     ; $615c: $06 $07
    or $b9                                        ; $615e: $f6 $b9
    inc hl                                        ; $6160: $23
    ei                                            ; $6161: $fb
    dec de                                        ; $6162: $1b
    ld b, $3d                                     ; $6163: $06 $3d
    ld [hl], d                                    ; $6165: $72
    daa                                           ; $6166: $27
    ld l, e                                       ; $6167: $6b
    db $fd                                        ; $6168: $fd
    rrca                                          ; $6169: $0f
    rst $00                                       ; $616a: $c7
    cp l                                          ; $616b: $bd
    jp nc, $a8ac                                  ; $616c: $d2 $ac $a8

    push af                                       ; $616f: $f5
    xor c                                         ; $6170: $a9
    and $8b                                       ; $6171: $e6 $8b
    xor a                                         ; $6173: $af
    ld b, d                                       ; $6174: $42

jr_02a_6175:
    rst $08                                       ; $6175: $cf
    and $e5                                       ; $6176: $e6 $e5
    jp nz, $abe4                                  ; $6178: $c2 $e4 $ab

    db $db                                        ; $617b: $db
    ld sp, hl                                     ; $617c: $f9
    dec [hl]                                      ; $617d: $35
    rst $28                                       ; $617e: $ef
    ld e, l                                       ; $617f: $5d
    jr nc, @-$21                                  ; $6180: $30 $dd

    ld [hl-], a                                   ; $6182: $32
    ld b, [hl]                                    ; $6183: $46
    db $ed                                        ; $6184: $ed
    ret nz                                        ; $6185: $c0

    ld l, l                                       ; $6186: $6d
    rst $00                                       ; $6187: $c7
    ld e, a                                       ; $6188: $5f
    scf                                           ; $6189: $37
    dec [hl]                                      ; $618a: $35
    sub c                                         ; $618b: $91
    ld c, c                                       ; $618c: $49
    ld [de], a                                    ; $618d: $12
    ld b, $dd                                     ; $618e: $06 $dd
    or d                                          ; $6190: $b2
    db $d3                                        ; $6191: $d3
    ld a, c                                       ; $6192: $79
    ld e, c                                       ; $6193: $59
    scf                                           ; $6194: $37
    dec [hl]                                      ; $6195: $35
    sub c                                         ; $6196: $91
    ld c, c                                       ; $6197: $49
    ld [de], a                                    ; $6198: $12
    ld b, $47                                     ; $6199: $06 $47
    adc e                                         ; $619b: $8b
    ld [bc], a                                    ; $619c: $02
    xor h                                         ; $619d: $ac
    sbc e                                         ; $619e: $9b
    sbc d                                         ; $619f: $9a
    ret z                                         ; $61a0: $c8

    inc h                                         ; $61a1: $24
    add hl, bc                                    ; $61a2: $09
    inc bc                                        ; $61a3: $03
    dec l                                         ; $61a4: $2d
    scf                                           ; $61a5: $37
    ld e, d                                       ; $61a6: $5a
    ld e, a                                       ; $61a7: $5f
    sub $4d                                       ; $61a8: $d6 $4d
    ld c, l                                       ; $61aa: $4d
    ld h, h                                       ; $61ab: $64
    sub d                                         ; $61ac: $92
    add h                                         ; $61ad: $84
    ld bc, $1f2d                                  ; $61ae: $01 $2d $1f
    db $ed                                        ; $61b1: $ed
    cp [hl]                                       ; $61b2: $be
    ld e, e                                       ; $61b3: $5b
    db $fc                                        ; $61b4: $fc
    adc d                                         ; $61b5: $8a
    ld e, h                                       ; $61b6: $5c
    ld a, [bc]                                    ; $61b7: $0a
    sub $4d                                       ; $61b8: $d6 $4d
    ld c, l                                       ; $61ba: $4d
    ld h, h                                       ; $61bb: $64
    sub d                                         ; $61bc: $92
    add h                                         ; $61bd: $84
    ld bc, $4147                                  ; $61be: $01 $47 $41
    and a                                         ; $61c1: $a7
    inc h                                         ; $61c2: $24
    ei                                            ; $61c3: $fb
    cp b                                          ; $61c4: $b8
    db $d3                                        ; $61c5: $d3
    inc sp                                        ; $61c6: $33
    dec e                                         ; $61c7: $1d
    inc bc                                        ; $61c8: $03
    daa                                           ; $61c9: $27
    daa                                           ; $61ca: $27

Jump_02a_61cb:
    push de                                       ; $61cb: $d5
    and c                                         ; $61cc: $a1
    ld h, h                                       ; $61cd: $64
    ld [hl-], a                                   ; $61ce: $32
    inc c                                         ; $61cf: $0c
    rst $00                                       ; $61d0: $c7
    ret z                                         ; $61d1: $c8

    ld a, l                                       ; $61d2: $7d
    or [hl]                                       ; $61d3: $b6
    ld d, e                                       ; $61d4: $53
    sbc $3d                                       ; $61d5: $de $3d
    ld a, $60                                     ; $61d7: $3e $60
    rst $00                                       ; $61d9: $c7
    ld e, h                                       ; $61da: $5c
    ld [hl], a                                    ; $61db: $77
    and l                                         ; $61dc: $a5
    ld b, $03                                     ; $61dd: $06 $03
    dec a                                         ; $61df: $3d
    ld d, e                                       ; $61e0: $53
    ld b, d                                       ; $61e1: $42
    ld a, $93                                     ; $61e2: $3e $93
    ld h, c                                       ; $61e4: $61
    daa                                           ; $61e5: $27
    dec hl                                        ; $61e6: $2b
    ld sp, $fad1                                  ; $61e7: $31 $d1 $fa
    rst $28                                       ; $61ea: $ef
    db $f4                                        ; $61eb: $f4
    ld c, h                                       ; $61ec: $4c
    rst $00                                       ; $61ed: $c7
    ld b, a                                       ; $61ee: $47
    ld h, a                                       ; $61ef: $67
    add [hl]                                      ; $61f0: $86
    db $10                                        ; $61f1: $10
    sub l                                         ; $61f2: $95
    add d                                         ; $61f3: $82
    or l                                          ; $61f4: $b5
    call nc, Call_02a_612f                        ; $61f5: $d4 $2f $61
    db $dd                                        ; $61f8: $dd
    ld d, e                                       ; $61f9: $53
    ld a, [hl+]                                   ; $61fa: $2a
    db $d3                                        ; $61fb: $d3
    cp c                                          ; $61fc: $b9
    db $f4                                        ; $61fd: $f4
    dec sp                                        ; $61fe: $3b
    call $18dc                                    ; $61ff: $cd $dc $18
    ld bc, $a703                                  ; $6202: $01 $03 $a7
    ld d, [hl]                                    ; $6205: $56
    sbc [hl]                                      ; $6206: $9e
    dec e                                         ; $6207: $1d
    inc bc                                        ; $6208: $03
    db $eb                                        ; $6209: $eb
    sbc [hl]                                      ; $620a: $9e
    inc a                                         ; $620b: $3c
    ld a, e                                       ; $620c: $7b
    pop bc                                        ; $620d: $c1
    ld b, a                                       ; $620e: $47
    rst $38                                       ; $620f: $ff
    ld a, e                                       ; $6210: $7b
    db $fc                                        ; $6211: $fc
    ld a, [de]                                    ; $6212: $1a
    db $ec                                        ; $6213: $ec
    ret c                                         ; $6214: $d8

    and $31                                       ; $6215: $e6 $31
    ld b, a                                       ; $6217: $47
    rst $18                                       ; $6218: $df
    ld a, [hl+]                                   ; $6219: $2a
    add l                                         ; $621a: $85
    sub $9a                                       ; $621b: $d6 $9a
    ld b, d                                       ; $621d: $42
    jr jr_02a_624d                                ; $621e: $18 $2d

    and h                                         ; $6220: $a4
    push af                                       ; $6221: $f5
    rst $18                                       ; $6222: $df
    ld [hl], c                                    ; $6223: $71
    ld c, d                                       ; $6224: $4a
    ld bc, $4706                                  ; $6225: $01 $06 $47
    ccf                                           ; $6228: $3f
    rst $00                                       ; $6229: $c7
    ld d, h                                       ; $622a: $54
    ld e, c                                       ; $622b: $59
    adc e                                         ; $622c: $8b
    daa                                           ; $622d: $27
    dec a                                         ; $622e: $3d
    ld b, $2d                                     ; $622f: $06 $2d
    scf                                           ; $6231: $37
    ld e, d                                       ; $6232: $5a
    ld e, a                                       ; $6233: $5f
    halt                                          ; $6234: $76
    ld b, $dd                                     ; $6235: $06 $dd
    ld a, [hl+]                                   ; $6237: $2a
    add l                                         ; $6238: $85
    sub $9a                                       ; $6239: $d6 $9a
    ld b, d                                       ; $623b: $42
    jr jr_02a_627b                                ; $623c: $18 $3d

    inc sp                                        ; $623e: $33
    jp c, Jump_02a_56d0                           ; $623f: $da $d0 $56

    ld a, d                                       ; $6242: $7a
    inc c                                         ; $6243: $0c
    ld b, a                                       ; $6244: $47
    ld d, l                                       ; $6245: $55
    ld c, c                                       ; $6246: $49
    rst $10                                       ; $6247: $d7
    rra                                           ; $6248: $1f
    inc bc                                        ; $6249: $03
    ld b, a                                       ; $624a: $47
    sub c                                         ; $624b: $91
    ld e, a                                       ; $624c: $5f

jr_02a_624d:
    sub [hl]                                      ; $624d: $96
    cp $18                                        ; $624e: $fe $18
    dec a                                         ; $6250: $3d
    ld l, a                                       ; $6251: $6f
    db $10                                        ; $6252: $10
    inc a                                         ; $6253: $3c
    pop af                                        ; $6254: $f1
    rra                                           ; $6255: $1f

jr_02a_6256:
    reti                                          ; $6256: $d9


    cp d                                          ; $6257: $ba
    and a                                         ; $6258: $a7
    rst $18                                       ; $6259: $df
    inc h                                         ; $625a: $24
    inc c                                         ; $625b: $0c
    rst $00                                       ; $625c: $c7
    adc e                                         ; $625d: $8b
    ld [de], a                                    ; $625e: $12
    ld e, e                                       ; $625f: $5b

jr_02a_6260:
    rst $08                                       ; $6260: $cf
    dec de                                        ; $6261: $1b
    inc b                                         ; $6262: $04
    ld c, a                                       ; $6263: $4f
    db $fc                                        ; $6264: $fc
    ld b, a                                       ; $6265: $47
    or [hl]                                       ; $6266: $b6
    xor $e9                                       ; $6267: $ee $e9
    scf                                           ; $6269: $37
    add hl, bc                                    ; $626a: $09
    inc bc                                        ; $626b: $03
    ld h, a                                       ; $626c: $67
    ld e, [hl]                                    ; $626d: $5e
    rst $10                                       ; $626e: $d7
    ldh a, [$72]                                  ; $626f: $f0 $72
    ld e, b                                       ; $6271: $58
    rst $30                                       ; $6272: $f7
    db $f4                                        ; $6273: $f4
    sbc e                                         ; $6274: $9b
    add h                                         ; $6275: $84
    ld bc, $2fad                                  ; $6276: $01 $ad $2f
    db $ed                                        ; $6279: $ed
    ld e, e                                       ; $627a: $5b

jr_02a_627b:
    ld e, l                                       ; $627b: $5d
    or $eb                                        ; $627c: $f6 $eb
    sbc [hl]                                      ; $627e: $9e
    ld a, [hl]                                    ; $627f: $7e
    sub e                                         ; $6280: $93
    jr nc, jr_02a_6260                            ; $6281: $30 $dd

    cp a                                          ; $6283: $bf
    db $d3                                        ; $6284: $d3
    ld a, c                                       ; $6285: $79
    reti                                          ; $6286: $d9


    add hl, de                                    ; $6287: $19
    sbc l                                         ; $6288: $9d
    ld [hl], l                                    ; $6289: $75
    ld c, a                                       ; $628a: $4f
    cp a                                          ; $628b: $bf
    ld c, c                                       ; $628c: $49
    jr jr_02a_6256                                ; $628d: $18 $c7

jr_02a_628f:
    adc e                                         ; $628f: $8b
    ld [de], a                                    ; $6290: $12
    ld e, e                                       ; $6291: $5b
    rst $30                                       ; $6292: $f7
    rst $28                                       ; $6293: $ef
    ld [hl], h                                    ; $6294: $74
    ld e, [hl]                                    ; $6295: $5e
    halt                                          ; $6296: $76
    ld b, [hl]                                    ; $6297: $46
    ld h, a                                       ; $6298: $67
    db $dd                                        ; $6299: $dd
    db $d3                                        ; $629a: $d3
    ld l, a                                       ; $629b: $6f
    ld [de], a                                    ; $629c: $12
    ld b, $c7                                     ; $629d: $06 $c7
    ld [hl], d                                    ; $629f: $72
    ld hl, sp-$36                                 ; $62a0: $f8 $ca
    ld hl, sp+$63                                 ; $62a2: $f8 $63
    db $dd                                        ; $62a4: $dd
    ld d, h                                       ; $62a5: $54
    ret c                                         ; $62a6: $d8

    ld c, [hl]                                    ; $62a7: $4e
    ld sp, $fb61                                  ; $62a8: $31 $61 $fb
    push hl                                       ; $62ab: $e5
    ldh a, [rNR33]                                ; $62ac: $f0 $1d
    reti                                          ; $62ae: $d9


    rst $18                                       ; $62af: $df
    jr nc, jr_02a_628f                            ; $62b0: $30 $dd

    ld c, d                                       ; $62b2: $4a
    ld h, $fc                                     ; $62b3: $26 $fc
    cp d                                          ; $62b5: $ba
    xor c                                         ; $62b6: $a9
    jr nc, jr_02a_62c5                            ; $62b7: $30 $0c

    dec a                                         ; $62b9: $3d
    ld b, h                                       ; $62ba: $44
    reti                                          ; $62bb: $d9


    ld h, e                                       ; $62bc: $63
    rst $00                                       ; $62bd: $c7
    ld [hl], d                                    ; $62be: $72
    cp b                                          ; $62bf: $b8
    adc [hl]                                      ; $62c0: $8e
    ld bc, $bfa7                                  ; $62c1: $01 $a7 $bf
    or d                                          ; $62c4: $b2

jr_02a_62c5:
    ld h, [hl]                                    ; $62c5: $66

jr_02a_62c6:
    sbc [hl]                                      ; $62c6: $9e
    db $eb                                        ; $62c7: $eb
    ld hl, $beca                                  ; $62c8: $21 $ca $be
    dec bc                                        ; $62cb: $0b
    ld b, $3d                                     ; $62cc: $06 $3d
    push af                                       ; $62ce: $f5
    ld a, [$60a5]                                 ; $62cf: $fa $a5 $60
    halt                                          ; $62d2: $76
    jp z, $cbd2                                   ; $62d3: $ca $d2 $cb

    srl d                                         ; $62d6: $cb $3a
    ld d, c                                       ; $62d8: $51
    sbc e                                         ; $62d9: $9b
    rla                                           ; $62da: $17
    or h                                          ; $62db: $b4
    ld [hl], l                                    ; $62dc: $75
    sub a                                         ; $62dd: $97
    rlca                                          ; $62de: $07
    sbc b                                         ; $62df: $98
    sub a                                         ; $62e0: $97
    rst $18                                       ; $62e1: $df
    pop de                                        ; $62e2: $d1
    dec sp                                        ; $62e3: $3b
    jp c, Jump_000_27b8                           ; $62e4: $da $b8 $27

    call $9573                                    ; $62e7: $cd $73 $95
    ld d, d                                       ; $62ea: $52
    push af                                       ; $62eb: $f5

jr_02a_62ec:
    ld [hl], c                                    ; $62ec: $71
    ld l, $ca                                     ; $62ed: $2e $ca
    ld e, $61                                     ; $62ef: $1e $61
    dec a                                         ; $62f1: $3d
    ld b, h                                       ; $62f2: $44
    reti                                          ; $62f3: $d9


    xor a                                         ; $62f4: $af

jr_02a_62f5:
    sbc e                                         ; $62f5: $9b
    ld d, d                                       ; $62f6: $52
    push af                                       ; $62f7: $f5
    ld sp, $eb3e                                  ; $62f8: $31 $3e $eb
    add d                                         ; $62fb: $82
    ld bc, $443d                                  ; $62fc: $01 $3d $44
    reti                                          ; $62ff: $d9


    xor a                                         ; $6300: $af
    ld e, e                                       ; $6301: $5b
    add [hl]                                      ; $6302: $86
    sbc l                                         ; $6303: $9d
    ld hl, sp-$02                                 ; $6304: $f8 $fe
    ld e, l                                       ; $6306: $5d
    jr nc, jr_02a_62c6                            ; $6307: $30 $bd

    jp nc, Jump_02a_52ac                          ; $6309: $d2 $ac $52

    and d                                         ; $630c: $a2
    db $f4                                        ; $630d: $f4
    ld [hl], l                                    ; $630e: $75
    ld l, [hl]                                    ; $630f: $6e
    ld d, l                                       ; $6310: $55
    scf                                           ; $6311: $37
    sbc l                                         ; $6312: $9d
    add hl, hl                                    ; $6313: $29
    dec [hl]                                      ; $6314: $35
    dec bc                                        ; $6315: $0b
    ld d, e                                       ; $6316: $53
    ld a, [hl]                                    ; $6317: $7e
    sub l                                         ; $6318: $95
    ld a, [bc]                                    ; $6319: $0a
    add e                                         ; $631a: $83
    add hl, hl                                    ; $631b: $29
    xor h                                         ; $631c: $ac
    ld c, c                                       ; $631d: $49
    inc hl                                        ; $631e: $23
    dec sp                                        ; $631f: $3b
    ld l, $e3                                     ; $6320: $2e $e3
    call $2d1d                                    ; $6322: $cd $1d $2d
    ld l, a                                       ; $6325: $6f
    cp l                                          ; $6326: $bd
    or b                                          ; $6327: $b0
    dec bc                                        ; $6328: $0b
    or e                                          ; $6329: $b3
    ld c, l                                       ; $632a: $4d
    adc h                                         ; $632b: $8c
    ld e, l                                       ; $632c: $5d
    jr nc, jr_02a_62ec                            ; $632d: $30 $bd

    jp nc, $a8ac                                  ; $632f: $d2 $ac $a8

    push af                                       ; $6332: $f5
    ld h, a                                       ; $6333: $67
    and a                                         ; $6334: $a7
    ld hl, $dd36                                  ; $6335: $21 $36 $dd
    ld [hl], c                                    ; $6338: $71
    ld a, [de]                                    ; $6339: $1a
    and [hl]                                      ; $633a: $a6
    add c                                         ; $633b: $81
    push af                                       ; $633c: $f5
    cp h                                          ; $633d: $bc
    ld e, [hl]                                    ; $633e: $5e
    sub l                                         ; $633f: $95
    add a                                         ; $6340: $87
    add hl, hl                                    ; $6341: $29
    or c                                          ; $6342: $b1
    push af                                       ; $6343: $f5
    cp h                                          ; $6344: $bc
    inc e                                         ; $6345: $1c
    ld d, l                                       ; $6346: $55
    jr jr_02a_62f5                                ; $6347: $18 $ac

    sbc e                                         ; $6349: $9b
    ld a, [bc]                                    ; $634a: $0a
    db $eb                                        ; $634b: $eb

Jump_02a_634c:
    add d                                         ; $634c: $82
    ld bc, $d2bd                                  ; $634d: $01 $bd $d2
    adc h                                         ; $6350: $8c
    cp a                                          ; $6351: $bf
    ld sp, $fdae                                  ; $6352: $31 $ae $fd
    xor e                                         ; $6355: $ab
    ld [hl-], a                                   ; $6356: $32
    add $af                                       ; $6357: $c6 $af
    db $fc                                        ; $6359: $fc
    ld d, d                                       ; $635a: $52
    jr nc, jr_02a_638c                            ; $635b: $30 $2f

    cp a                                          ; $635d: $bf
    db $e3                                        ; $635e: $e3
    and l                                         ; $635f: $a5
    or c                                          ; $6360: $b1
    db $ed                                        ; $6361: $ed
    ld c, e                                       ; $6362: $4b
    inc l                                         ; $6363: $2c
    ld h, l                                       ; $6364: $65
    rst $00                                       ; $6365: $c7
    ld a, h                                       ; $6366: $7c
    ld d, l                                       ; $6367: $55
    rst $28                                       ; $6368: $ef
    add d                                         ; $6369: $82
    ld bc, $d2bd                                  ; $636a: $01 $bd $d2
    adc h                                         ; $636d: $8c
    cp a                                          ; $636e: $bf
    ld sp, $fdae                                  ; $636f: $31 $ae $fd
    xor e                                         ; $6372: $ab
    ld [hl-], a                                   ; $6373: $32
    add $af                                       ; $6374: $c6 $af
    db $fc                                        ; $6376: $fc
    ld d, d                                       ; $6377: $52
    jr nc, @+$31                                  ; $6378: $30 $2f

    cp a                                          ; $637a: $bf
    ld d, [hl]                                    ; $637b: $56
    ld h, e                                       ; $637c: $63

jr_02a_637d:
    db $db                                        ; $637d: $db
    pop af                                        ; $637e: $f1
    dec sp                                        ; $637f: $3b
    add $b6                                       ; $6380: $c6 $b6
    ld [hl], a                                    ; $6382: $77
    call z, $f557                                 ; $6383: $cc $57 $f5
    ld l, $18                                     ; $6386: $2e $18
    cp l                                          ; $6388: $bd
    jp nc, $bf8c                                  ; $6389: $d2 $8c $bf

jr_02a_638c:
    ld sp, $fdae                                  ; $638c: $31 $ae $fd
    xor e                                         ; $638f: $ab
    ld [hl-], a                                   ; $6390: $32
    add $af                                       ; $6391: $c6 $af
    db $fc                                        ; $6393: $fc
    ld d, d                                       ; $6394: $52
    jr nc, @+$31                                  ; $6395: $30 $2f

    cp a                                          ; $6397: $bf
    db $d3                                        ; $6398: $d3
    push de                                       ; $6399: $d5
    ld a, [$4554]                                 ; $639a: $fa $54 $45
    push hl                                       ; $639d: $e5
    ld [hl], a                                    ; $639e: $77
    call z, $f557                                 ; $639f: $cc $57 $f5
    ld l, $18                                     ; $63a2: $2e $18
    cp l                                          ; $63a4: $bd
    jp nc, $bf8c                                  ; $63a5: $d2 $8c $bf

    ld sp, $fdae                                  ; $63a8: $31 $ae $fd
    xor e                                         ; $63ab: $ab
    ld [hl-], a                                   ; $63ac: $32
    add $af                                       ; $63ad: $c6 $af
    db $fc                                        ; $63af: $fc
    ld d, d                                       ; $63b0: $52
    jr nc, jr_02a_63e2                            ; $63b1: $30 $2f

    cp a                                          ; $63b3: $bf
    sub [hl]                                      ; $63b4: $96
    ret c                                         ; $63b5: $d8

    ld a, b                                       ; $63b6: $78
    ld a, c                                       ; $63b7: $79

Jump_02a_63b8:
    cp c                                          ; $63b8: $b9
    or h                                          ; $63b9: $b4
    ld h, e                                       ; $63ba: $63
    cp [hl]                                       ; $63bb: $be
    xor d                                         ; $63bc: $aa
    ld [hl], a                                    ; $63bd: $77
    pop bc                                        ; $63be: $c1
    cp l                                          ; $63bf: $bd
    jp nc, $a8ac                                  ; $63c0: $d2 $ac $a8

    push af                                       ; $63c3: $f5
    xor c                                         ; $63c4: $a9
    and $33                                       ; $63c5: $e6 $33
    inc d                                         ; $63c7: $14
    or e                                          ; $63c8: $b3
    xor d                                         ; $63c9: $aa
    ccf                                           ; $63ca: $3f
    sbc e                                         ; $63cb: $9b
    sub a                                         ; $63cc: $97
    dec bc                                        ; $63cd: $0b
    dec bc                                        ; $63ce: $0b
    inc [hl]                                      ; $63cf: $34
    db $fc                                        ; $63d0: $fc
    dec [hl]                                      ; $63d1: $35
    rst $28                                       ; $63d2: $ef
    ld e, l                                       ; $63d3: $5d
    jr nc, jr_02a_637d                            ; $63d4: $30 $a7

    ld l, e                                       ; $63d6: $6b
    push af                                       ; $63d7: $f5
    dec sp                                        ; $63d8: $3b
    ld b, [hl]                                    ; $63d9: $46
    or h                                          ; $63da: $b4
    jp z, Jump_000_2e79                           ; $63db: $ca $79 $2e

    ld a, b                                       ; $63de: $78
    ld e, a                                       ; $63df: $5f
    ld e, e                                       ; $63e0: $5b
    xor e                                         ; $63e1: $ab

jr_02a_63e2:
    ld a, [$794e]                                 ; $63e2: $fa $4e $79
    db $eb                                        ; $63e5: $eb
    adc l                                         ; $63e6: $8d
    pop af                                        ; $63e7: $f1
    ld l, e                                       ; $63e8: $6b
    or b                                          ; $63e9: $b0
    db $d3                                        ; $63ea: $d3
    ccf                                           ; $63eb: $3f
    db $fc                                        ; $63ec: $fc
    or b                                          ; $63ed: $b0
    dec l                                         ; $63ee: $2d
    ld a, [de]                                    ; $63ef: $1a
    ld h, e                                       ; $63f0: $63
    rla                                           ; $63f1: $17
    inc c                                         ; $63f2: $0c
    and a                                         ; $63f3: $a7
    and h                                         ; $63f4: $a4
    or h                                          ; $63f5: $b4
    ld e, a                                       ; $63f6: $5f
    ld a, h                                       ; $63f7: $7c
    ld b, l                                       ; $63f8: $45
    ld h, c                                       ; $63f9: $61
    rrca                                          ; $63fa: $0f
    sub l                                         ; $63fb: $95
    halt                                          ; $63fc: $76
    sbc [hl]                                      ; $63fd: $9e
    ld [hl], l                                    ; $63fe: $75
    reti                                          ; $63ff: $d9


    ld c, [hl]                                    ; $6400: $4e
    rst $10                                       ; $6401: $d7
    ld [$39e7], a                                 ; $6402: $ea $e7 $39
    ld a, c                                       ; $6405: $79
    sub a                                         ; $6406: $97
    ei                                            ; $6407: $fb
    sub $5f                                       ; $6408: $d6 $5f
    cp c                                          ; $640a: $b9
    ld hl, $c7c2                                  ; $640b: $21 $c2 $c7
    ld e, l                                       ; $640e: $5d
    ld h, d                                       ; $640f: $62
    di                                            ; $6410: $f3
    ld a, [c]                                     ; $6411: $f2
    xor e                                         ; $6412: $ab
    ld d, d                                       ; $6413: $52
    db $e4                                        ; $6414: $e4
    dec hl                                        ; $6415: $2b
    ld e, a                                       ; $6416: $5f
    db $fd                                        ; $6417: $fd
    sbc e                                         ; $6418: $9b
    ld a, c                                       ; $6419: $79
    adc $50                                       ; $641a: $ce $50
    call z, Call_000_3eaa                         ; $641c: $cc $aa $3e
    cpl                                           ; $641f: $2f
    ccf                                           ; $6420: $3f
    sub [hl]                                      ; $6421: $96
    add hl, hl                                    ; $6422: $29
    ld e, l                                       ; $6423: $5d
    jr nc, jr_02a_6453                            ; $6424: $30 $2d

    rst $38                                       ; $6426: $ff
    cp e                                          ; $6427: $bb
    or $9a                                        ; $6428: $f6 $9a
    inc [hl]                                      ; $642a: $34
    xor e                                         ; $642b: $ab
    sub h                                         ; $642c: $94
    ld d, [hl]                                    ; $642d: $56
    xor c                                         ; $642e: $a9
    ld d, a                                       ; $642f: $57
    ld h, l                                       ; $6430: $65
    ld e, [hl]                                    ; $6431: $5e

jr_02a_6432:
    ld a, [hl]                                    ; $6432: $7e
    ret                                           ; $6433: $c9


    rst $00                                       ; $6434: $c7
    ld l, $18                                     ; $6435: $2e $18
    rst $00                                       ; $6437: $c7
    ld h, l                                       ; $6438: $65
    adc h                                         ; $6439: $8c
    ret                                           ; $643a: $c9


    rst $28                                       ; $643b: $ef
    cp b                                          ; $643c: $b8
    ld a, b                                       ; $643d: $78
    sbc l                                         ; $643e: $9d
    cp a                                          ; $643f: $bf
    ld d, l                                       ; $6440: $55
    cp l                                          ; $6441: $bd
    ld b, $8b                                     ; $6442: $06 $8b
    xor a                                         ; $6444: $af
    xor h                                         ; $6445: $ac
    dec bc                                        ; $6446: $0b
    ld b, $dd                                     ; $6447: $06 $dd
    db $e4                                        ; $6449: $e4
    push de                                       ; $644a: $d5
    ld a, a                                       ; $644b: $7f
    ld e, [hl]                                    ; $644c: $5e
    ld a, [hl]                                    ; $644d: $7e
    ld d, l                                       ; $644e: $55
    adc d                                         ; $644f: $8a
    ld a, h                                       ; $6450: $7c
    push hl                                       ; $6451: $e5
    db $eb                                        ; $6452: $eb

jr_02a_6453:
    and h                                         ; $6453: $a4
    rst $18                                       ; $6454: $df
    and h                                         ; $6455: $a4
    ld l, $18                                     ; $6456: $2e $18
    rst $00                                       ; $6458: $c7
    ld l, c                                       ; $6459: $69
    sbc b                                         ; $645a: $98
    ld b, $d6                                     ; $645b: $06 $d6
    di                                            ; $645d: $f3
    ld a, d                                       ; $645e: $7a
    ld d, l                                       ; $645f: $55
    ld e, $a6                                     ; $6460: $1e $a6
    call nz, $f3d6                                ; $6462: $c4 $d6 $f3
    ld [hl], d                                    ; $6465: $72
    ld d, h                                       ; $6466: $54
    ld h, c                                       ; $6467: $61
    or b                                          ; $6468: $b0
    ld l, [hl]                                    ; $6469: $6e
    ld a, [hl+]                                   ; $646a: $2a
    ld l, h                                       ; $646b: $6c
    and c                                         ; $646c: $a1
    ld a, d                                       ; $646d: $7a
    ld d, l                                       ; $646e: $55
    ld d, $68                                     ; $646f: $16 $68
    ld hl, sp+$5d                                 ; $6471: $f8 $5d
    jr nc, jr_02a_6432                            ; $6473: $30 $bd

    jp nc, $d02c                                  ; $6475: $d2 $2c $d0

    ld c, e                                       ; $6478: $4b
    rst $08                                       ; $6479: $cf
    and [hl]                                      ; $647a: $a6
    and e                                         ; $647b: $a3
    rst $20                                       ; $647c: $e7
    rla                                           ; $647d: $17
    rst $18                                       ; $647e: $df
    ld a, [$0bb1]                                 ; $647f: $fa $b1 $0b
    ld b, $bd                                     ; $6482: $06 $bd
    jp nc, $d02c                                  ; $6484: $d2 $2c $d0

    ld c, e                                       ; $6487: $4b
    rst $08                                       ; $6488: $cf
    and [hl]                                      ; $6489: $a6
    and e                                         ; $648a: $a3
    rst $20                                       ; $648b: $e7
    rlca                                          ; $648c: $07
    sbc l                                         ; $648d: $9d
    adc a                                         ; $648e: $8f
    ld [hl], c                                    ; $648f: $71
    pop af                                        ; $6490: $f1
    xor l                                         ; $6491: $ad
    rra                                           ; $6492: $1f
    cp e                                          ; $6493: $bb
    ld h, b                                       ; $6494: $60
    dec l                                         ; $6495: $2d
    ld l, $4f                                     ; $6496: $2e $4f
    add c                                         ; $6498: $81
    sub a                                         ; $6499: $97
    push af                                       ; $649a: $f5
    ld [hl], l                                    ; $649b: $75
    ld h, h                                       ; $649c: $64
    ld a, a                                       ; $649d: $7f
    jp $bcc7                                      ; $649e: $c3 $c7 $bc


    db $fd                                        ; $64a1: $fd
    ld d, h                                       ; $64a2: $54
    db $fd                                        ; $64a3: $fd
    ld a, [$b23a]                                 ; $64a4: $fa $3a $b2
    cp a                                          ; $64a7: $bf
    ld h, c                                       ; $64a8: $61
    daa                                           ; $64a9: $27
    ld l, e                                       ; $64aa: $6b
    ld [hl], b                                    ; $64ab: $70
    xor e                                         ; $64ac: $ab
    or l                                          ; $64ad: $b5
    cp b                                          ; $64ae: $b8
    xor h                                         ; $64af: $ac
    xor a                                         ; $64b0: $af
    inc hl                                        ; $64b1: $23
    ei                                            ; $64b2: $fb
    dec de                                        ; $64b3: $1b
    ld b, $27                                     ; $64b4: $06 $27
    ld l, e                                       ; $64b6: $6b
    ld [hl], b                                    ; $64b7: $70
    xor e                                         ; $64b8: $ab
    dec e                                         ; $64b9: $1d
    di                                            ; $64ba: $f3
    or $fa                                        ; $64bb: $f6 $fa
    ld a, [hl-]                                   ; $64bd: $3a
    or d                                          ; $64be: $b2
    cp a                                          ; $64bf: $bf
    ld h, c                                       ; $64c0: $61
    ld b, a                                       ; $64c1: $47
    dec b                                         ; $64c2: $05
    scf                                           ; $64c3: $37
    ld e, [hl]                                    ; $64c4: $5e
    ld l, a                                       ; $64c5: $6f

jr_02a_64c6:
    sub $d7                                       ; $64c6: $d6 $d7
    sub c                                         ; $64c8: $91
    db $fd                                        ; $64c9: $fd
    dec c                                         ; $64ca: $0d
    inc bc                                        ; $64cb: $03
    dec l                                         ; $64cc: $2d
    xor [hl]                                      ; $64cd: $ae
    pop hl                                        ; $64ce: $e1
    dec h                                         ; $64cf: $25
    ld e, l                                       ; $64d0: $5d
    ld e, a                                       ; $64d1: $5f
    ld b, a                                       ; $64d2: $47
    or $37                                        ; $64d3: $f6 $37
    inc c                                         ; $64d5: $0c
    ld d, $9f                                     ; $64d6: $16 $9f
    dec hl                                        ; $64d8: $2b
    ld hl, sp-$3d                                 ; $64d9: $f8 $c3
    ld [bc], a                                    ; $64db: $02
    ld a, c                                       ; $64dc: $79
    push af                                       ; $64dd: $f5
    add hl, hl                                    ; $64de: $29
    or c                                          ; $64df: $b1
    ld a, c                                       ; $64e0: $79
    ld a, c                                       ; $64e1: $79
    ld sp, hl                                     ; $64e2: $f9
    ld a, [de]                                    ; $64e3: $1a
    ld c, h                                       ; $64e4: $4c
    ld d, a                                       ; $64e5: $57
    xor c                                         ; $64e6: $a9
    or b                                          ; $64e7: $b0
    ld e, l                                       ; $64e8: $5d
    jp c, $79f5                                   ; $64e9: $da $f5 $79

    ld h, [hl]                                    ; $64ec: $66
    rla                                           ; $64ed: $17
    inc c                                         ; $64ee: $0c
    xor l                                         ; $64ef: $ad
    cpl                                           ; $64f0: $2f
    ld e, a                                       ; $64f1: $5f
    add e                                         ; $64f2: $83
    dec [hl]                                      ; $64f3: $35
    ld l, c                                       ; $64f4: $69
    ld h, h                                       ; $64f5: $64
    and a                                         ; $64f6: $a7
    ld a, a                                       ; $64f7: $7f
    ld hl, sp+$61                                 ; $64f8: $f8 $61
    ld e, e                                       ; $64fa: $5b
    inc [hl]                                      ; $64fb: $34
    add $b5                                       ; $64fc: $c6 $b5
    or l                                          ; $64fe: $b5
    xor d                                         ; $64ff: $aa
    ld [hl], e                                    ; $6500: $73
    ld [hl], a                                    ; $6501: $77
    jp z, Jump_02a_6f5b                           ; $6502: $ca $5b $6f

    adc h                                         ; $6505: $8c
    adc a                                         ; $6506: $8f
    jr nc, jr_02a_64c6                            ; $6507: $30 $bd

    jp nc, $feac                                  ; $6509: $d2 $ac $fe

    rst $18                                       ; $650c: $df
    reti                                          ; $650d: $d9


    ld [hl], l                                    ; $650e: $75
    xor $5a                                       ; $650f: $ee $5a
    ld d, l                                       ; $6511: $55
    and h                                         ; $6512: $a4
    ld b, c                                       ; $6513: $41
    ld [$6935], sp                                ; $6514: $08 $35 $69
    add $3f                                       ; $6517: $c6 $3f
    ld sp, hl                                     ; $6519: $f9
    cp h                                          ; $651a: $bc
    ld c, b                                       ; $651b: $48
    sbc d                                         ; $651c: $9a
    and b                                         ; $651d: $a0
    ld c, h                                       ; $651e: $4c
    rla                                           ; $651f: $17
    db $d3                                        ; $6520: $d3
    rst $20                                       ; $6521: $e7
    cp c                                          ; $6522: $b9
    ldh [$7d], a                                  ; $6523: $e0 $7d
    rst $10                                       ; $6525: $d7
    ld de, $1606                                  ; $6526: $11 $06 $16
    ld a, e                                       ; $6529: $7b
    ld c, l                                       ; $652a: $4d
    sbc d                                         ; $652b: $9a
    sbc d                                         ; $652c: $9a
    db $fc                                        ; $652d: $fc
    jr z, jr_02a_65ad                             ; $652e: $28 $7d

    ld l, l                                       ; $6530: $6d
    db $d3                                        ; $6531: $d3
    ld e, h                                       ; $6532: $5c
    ld a, [bc]                                    ; $6533: $0a
    sub $f3                                       ; $6534: $d6 $f3
    ld [hl], d                                    ; $6536: $72
    ld d, h                                       ; $6537: $54
    ld h, c                                       ; $6538: $61
    db $eb                                        ; $6539: $eb
    and [hl]                                      ; $653a: $a6
    jp nz, Jump_000_3b80                          ; $653b: $c2 $80 $3b

    cp $57                                        ; $653e: $fe $57
    call nc, $a3fa                                ; $6540: $d4 $fa $a3
    db $f4                                        ; $6543: $f4
    ld [hl], d                                    ; $6544: $72
    add hl, hl                                    ; $6545: $29
    sbc b                                         ; $6546: $98
    rst $20                                       ; $6547: $e7
    ld e, h                                       ; $6548: $5c
    ld h, e                                       ; $6549: $63
    ld a, l                                       ; $654a: $7d
    jp c, $e34e                                   ; $654b: $da $4e $e3

    ld [$2703], sp                                ; $654e: $08 $03 $27
    ld h, l                                       ; $6551: $65
    sub $61                                       ; $6552: $d6 $61
    pop af                                        ; $6554: $f1
    sub $7f                                       ; $6555: $d6 $7f
    call $acd7                                    ; $6557: $cd $d7 $ac
    cp a                                          ; $655a: $bf
    and d                                         ; $655b: $a2
    ld l, h                                       ; $655c: $6c
    ld a, [hl-]                                   ; $655d: $3a
    ld c, c                                       ; $655e: $49
    inc de                                        ; $655f: $13
    sub h                                         ; $6560: $94
    ld sp, hl                                     ; $6561: $f9
    dec c                                         ; $6562: $0d
    sbc a                                         ; $6563: $9f
    cp e                                          ; $6564: $bb
    ld d, [hl]                                    ; $6565: $56
    dec d                                         ; $6566: $15
    ld l, c                                       ; $6567: $69
    ret nc                                        ; $6568: $d0

    sub $33                                       ; $6569: $d6 $33
    ld c, l                                       ; $656b: $4d
    ld h, h                                       ; $656c: $64
    ld l, e                                       ; $656d: $6b
    cp [hl]                                       ; $656e: $be
    inc l                                         ; $656f: $2c
    sbc $fa                                       ; $6570: $de $fa
    cpl                                           ; $6572: $2f
    db $fc                                        ; $6573: $fc
    ld sp, hl                                     ; $6574: $f9
    set 5, h                                      ; $6575: $cb $ec
    bit 4, c                                      ; $6577: $cb $61
    call $9997                                    ; $6579: $cd $97 $99
    ld c, [hl]                                    ; $657c: $4e
    ld d, a                                       ; $657d: $57
    inc c                                         ; $657e: $0c
    and a                                         ; $657f: $a7
    inc h                                         ; $6580: $24
    cp a                                          ; $6581: $bf
    ldh [$7d], a                                  ; $6582: $e0 $7d
    ld c, c                                       ; $6584: $49
    ld l, e                                       ; $6585: $6b
    ld e, [hl]                                    ; $6586: $5e
    sub $4e                                       ; $6587: $d6 $4e
    ld [hl], l                                    ; $6589: $75
    xor $5a                                       ; $658a: $ee $5a
    ld d, l                                       ; $658c: $55
    and h                                         ; $658d: $a4
    ld b, c                                       ; $658e: $41

Jump_02a_658f:
    jr jr_02a_65ad                                ; $658f: $18 $1c

    adc [hl]                                      ; $6591: $8e
    db $ec                                        ; $6592: $ec
    ld l, a                                       ; $6593: $6f
    ld a, l                                       ; $6594: $7d
    inc e                                         ; $6595: $1c
    reti                                          ; $6596: $d9


    rst $38                                       ; $6597: $ff
    ld e, d                                       ; $6598: $5a
    xor d                                         ; $6599: $aa
    ld a, c                                       ; $659a: $79
    cp d                                          ; $659b: $ba
    add $3e                                       ; $659c: $c6 $3e
    add a                                         ; $659e: $87
    ld bc, $443d                                  ; $659f: $01 $3d $44
    add hl, bc                                    ; $65a2: $09
    db $ec                                        ; $65a3: $ec
    dec de                                        ; $65a4: $1b
    jr jr_02a_65f8                                ; $65a5: $18 $51

    cp a                                          ; $65a7: $bf
    ld c, c                                       ; $65a8: $49
    db $eb                                        ; $65a9: $eb
    ld d, $15                                     ; $65aa: $16 $15
    nop                                           ; $65ac: $00

jr_02a_65ad:
    inc bc                                        ; $65ad: $03
    xor l                                         ; $65ae: $ad
    cpl                                           ; $65af: $2f
    db $ed                                        ; $65b0: $ed
    adc h                                         ; $65b1: $8c
    add hl, de                                    ; $65b2: $19
    inc [hl]                                      ; $65b3: $34
    db $eb                                        ; $65b4: $eb
    ld d, $15                                     ; $65b5: $16 $15
    nop                                           ; $65b7: $00
    inc bc                                        ; $65b8: $03
    rst $00                                       ; $65b9: $c7

Jump_02a_65ba:
jr_02a_65ba:
    cp h                                          ; $65ba: $bc
    db $fd                                        ; $65bb: $fd
    ld d, h                                       ; $65bc: $54
    db $fd                                        ; $65bd: $fd
    adc [hl]                                      ; $65be: $8e
    ld a, [bc]                                    ; $65bf: $0a
    db $f4                                        ; $65c0: $f4
    ld [de], a                                    ; $65c1: $12
    ld hl, sp-$72                                 ; $65c2: $f8 $8e
    ld d, c                                       ; $65c4: $51
    xor c                                         ; $65c5: $a9
    rst $28                                       ; $65c6: $ef
    jr z, jr_02a_65ba                             ; $65c7: $28 $f1

    ld [hl], l                                    ; $65c9: $75
    adc e                                         ; $65ca: $8b
    ld a, [bc]                                    ; $65cb: $0a
    add b                                         ; $65cc: $80
    ld bc, $4b47                                  ; $65cd: $01 $47 $4b
    ld h, [hl]                                    ; $65d0: $66
    cp b                                          ; $65d1: $b8
    db $e3                                        ; $65d2: $e3
    ld [c], a                                     ; $65d3: $e2
    dec c                                         ; $65d4: $0d
    adc d                                         ; $65d5: $8a
    xor a                                         ; $65d6: $af
    ld e, e                                       ; $65d7: $5b
    ld d, h                                       ; $65d8: $54
    nop                                           ; $65d9: $00
    inc c                                         ; $65da: $0c
    db $dd                                        ; $65db: $dd
    adc d                                         ; $65dc: $8a

jr_02a_65dd:
    ld c, d                                       ; $65dd: $4a
    ld [$16eb], sp                                ; $65de: $08 $eb $16
    dec d                                         ; $65e1: $15
    nop                                           ; $65e2: $00
    inc bc                                        ; $65e3: $03
    xor l                                         ; $65e4: $ad
    rla                                           ; $65e5: $17
    inc a                                         ; $65e6: $3c
    and l                                         ; $65e7: $a5
    ld e, c                                       ; $65e8: $59
    jp c, Jump_02a_593b                           ; $65e9: $da $3b $59

    add e                                         ; $65ec: $83
    ld e, e                                       ; $65ed: $5b
    xor l                                         ; $65ee: $ad
    ld e, e                                       ; $65ef: $5b
    ld d, h                                       ; $65f0: $54
    nop                                           ; $65f1: $00
    inc c                                         ; $65f2: $0c
    sub [hl]                                      ; $65f3: $96
    ld a, [de]                                    ; $65f4: $1a
    ld e, e                                       ; $65f5: $5b
    ei                                            ; $65f6: $fb
    db $dd                                        ; $65f7: $dd

jr_02a_65f8:
    ld e, a                                       ; $65f8: $5f
    ld b, [hl]                                    ; $65f9: $46
    jp hl                                         ; $65fa: $e9


    dec bc                                        ; $65fb: $0b
    ld [hl], d                                    ; $65fc: $72
    ld e, [hl]                                    ; $65fd: $5e
    call nc, Call_02a_6bc7                        ; $65fe: $d4 $c7 $6b
    add e                                         ; $6601: $83
    or [hl]                                       ; $6602: $b6
    ld d, $d2                                     ; $6603: $16 $d2
    adc $2f                                       ; $6605: $ce $2f
    call nc, $ed66                                ; $6607: $d4 $66 $ed
    ld e, a                                       ; $660a: $5f
    inc [hl]                                      ; $660b: $34
    ld d, d                                       ; $660c: $52
    cp a                                          ; $660d: $bf
    inc d                                         ; $660e: $14
    ld c, h                                       ; $660f: $4c
    db $db                                        ; $6610: $db
    ld l, c                                       ; $6611: $69
    ld a, h                                       ; $6612: $7c
    ldh [$37], a                                  ; $6613: $e0 $37
    ld b, [hl]                                    ; $6615: $46
    add h                                         ; $6616: $84
    ld bc, $ae2d                                  ; $6617: $01 $2d $ae
    call $f258                                    ; $661a: $cd $58 $f2
    or h                                          ; $661d: $b4
    ld a, [c]                                     ; $661e: $f2
    ld a, [c]                                     ; $661f: $f2
    call c, $aab5                                 ; $6620: $dc $b5 $aa
    ld c, b                                       ; $6623: $48
    add e                                         ; $6624: $83
    or [hl]                                       ; $6625: $b6
    ld e, $e5                                     ; $6626: $1e $e5
    rst $10                                       ; $6628: $d7
    sub d                                         ; $6629: $92
    ld [c], a                                     ; $662a: $e2
    sub a                                         ; $662b: $97
    add d                                         ; $662c: $82
    or l                                          ; $662d: $b5
    xor d                                         ; $662e: $aa
    xor a                                         ; $662f: $af
    ld a, d                                       ; $6630: $7a
    ld sp, hl                                     ; $6631: $f9
    jr nc, jr_02a_65dd                            ; $6632: $30 $a9

    reti                                          ; $6634: $d9


    add l                                         ; $6635: $85
    ld l, c                                       ; $6636: $69
    dec sp                                        ; $6637: $3b
    adc l                                         ; $6638: $8d
    rst $08                                       ; $6639: $cf
    ld [hl], e                                    ; $663a: $73
    db $ed                                        ; $663b: $ed
    rrca                                          ; $663c: $0f
    ld l, $21                                     ; $663d: $2e $21
    inc c                                         ; $663f: $0c
    dec a                                         ; $6640: $3d
    ld a, a                                       ; $6641: $7f
    ld d, b                                       ; $6642: $50
    jp nc, Jump_02a_4644                          ; $6643: $d2 $44 $46

    dec [hl]                                      ; $6646: $35
    ld e, a                                       ; $6647: $5f
    sub b                                         ; $6648: $90
    ld h, e                                       ; $6649: $63
    ret                                           ; $664a: $c9


    db $d3                                        ; $664b: $d3
    cp h                                          ; $664c: $bc
    cp h                                          ; $664d: $bc
    inc a                                         ; $664e: $3c
    ld [hl], a                                    ; $664f: $77
    xor l                                         ; $6650: $ad
    ld a, [hl+]                                   ; $6651: $2a
    jp nc, $ada0                                  ; $6652: $d2 $a0 $ad

    rst $20                                       ; $6655: $e7
    adc a                                         ; $6656: $8f
    cp $d9                                        ; $6657: $fe $d9
    inc a                                         ; $6659: $3c
    rla                                           ; $665a: $17
    cp h                                          ; $665b: $bc
    xor a                                         ; $665c: $af
    xor l                                         ; $665d: $ad
    ld d, l                                       ; $665e: $55
    ld a, l                                       ; $665f: $7d
    sbc [hl]                                      ; $6660: $9e
    di                                            ; $6661: $f3
    ld a, [c]                                     ; $6662: $f2
    ld h, e                                       ; $6663: $63
    add hl, hl                                    ; $6664: $29
    ld hl, $96c2                                  ; $6665: $21 $c2 $96
    ld a, c                                       ; $6668: $79
    cp c                                          ; $6669: $b9
    ld d, h                                       ; $666a: $54
    sbc a                                         ; $666b: $9f
    ld h, l                                       ; $666c: $65
    push hl                                       ; $666d: $e5
    ld d, l                                       ; $666e: $55
    ld b, $19                                     ; $666f: $06 $19
    ld a, [hl]                                    ; $6671: $7e
    dec sp                                        ; $6672: $3b
    ld e, c                                       ; $6673: $59
    inc sp                                        ; $6674: $33
    sub [hl]                                      ; $6675: $96
    inc a                                         ; $6676: $3c
    call $cbcb                                    ; $6677: $cd $cb $cb
    and e                                         ; $667a: $a3
    call $2832                                    ; $667b: $cd $32 $28
    ld l, c                                       ; $667e: $69
    ld [hl+], a                                   ; $667f: $22
    and e                                         ; $6680: $a3
    sbc d                                         ; $6681: $9a
    cpl                                           ; $6682: $2f
    ret z                                         ; $6683: $c8

    or l                                          ; $6684: $b5
    or l                                          ; $6685: $b5
    xor d                                         ; $6686: $aa
    adc a                                         ; $6687: $8f
    dec h                                         ; $6688: $25
    ld c, a                                       ; $6689: $4f
    ldh [$7a], a                                  ; $668a: $e0 $7a
    dec b                                         ; $668c: $05
    db $10                                        ; $668d: $10
    ld b, $c7                                     ; $668e: $06 $c7
    ld b, l                                       ; $6690: $45
    ld h, e                                       ; $6691: $63
    db $db                                        ; $6692: $db
    call $2c2e                                    ; $6693: $cd $2e $2c
    ld l, c                                       ; $6696: $69
    ld e, [hl]                                    ; $6697: $5e
    ld l, $cc                                     ; $6698: $2e $cc
    adc [hl]                                      ; $669a: $8e
    sbc c                                         ; $669b: $99
    add d                                         ; $669c: $82
    or [hl]                                       ; $669d: $b6
    sbc [hl]                                      ; $669e: $9e
    ccf                                           ; $669f: $3f
    jr z, jr_02a_670b                             ; $66a0: $28 $69

    ld [hl+], a                                   ; $66a2: $22
    ld e, e                                       ; $66a3: $5b
    ldh a, [$3e]                                  ; $66a4: $f0 $3e
    rst $08                                       ; $66a6: $cf
    sub l                                         ; $66a7: $95
    dec de                                        ; $66a8: $1b
    ld c, [hl]                                    ; $66a9: $4e
    ld h, c                                       ; $66aa: $61
    or [hl]                                       ; $66ab: $b6
    add d                                         ; $66ac: $82
    ld c, a                                       ; $66ad: $4f
    ld h, c                                       ; $66ae: $61
    sbc l                                         ; $66af: $9d
    inc b                                         ; $66b0: $04
    cp b                                          ; $66b1: $b8
    db $ed                                        ; $66b2: $ed
    ld hl, sp+$08                                 ; $66b3: $f8 $08
    inc bc                                        ; $66b5: $03
    dec a                                         ; $66b6: $3d
    adc h                                         ; $66b7: $8c
    ld [hl], e                                    ; $66b8: $73
    rst $20                                       ; $66b9: $e7
    add $b9                                       ; $66ba: $c6 $b9
    dec sp                                        ; $66bc: $3b
    ld e, c                                       ; $66bd: $59
    ret nc                                        ; $66be: $d0

    cp d                                          ; $66bf: $ba
    and a                                         ; $66c0: $a7
    ei                                            ; $66c1: $fb

Jump_02a_66c2:
    dec bc                                        ; $66c2: $0b
    ld [hl], a                                    ; $66c3: $77
    ld l, c                                       ; $66c4: $69
    ld a, h                                       ; $66c5: $7c
    ld l, d                                       ; $66c6: $6a
    ei                                            ; $66c7: $fb
    bit 1, d                                      ; $66c8: $cb $4a
    ld a, [de]                                    ; $66ca: $1a
    ld bc, $a3b4                                  ; $66cb: $01 $b4 $a3
    or l                                          ; $66ce: $b5
    xor d                                         ; $66cf: $aa
    rst $08                                       ; $66d0: $cf
    ld [hl], e                                    ; $66d1: $73
    ld c, l                                       ; $66d2: $4d
    ld a, [de]                                    ; $66d3: $1a
    add hl, de                                    ; $66d4: $19
    ld c, e                                       ; $66d5: $4b
    add hl, bc                                    ; $66d6: $09
    cp c                                          ; $66d7: $b9
    or e                                          ; $66d8: $b3
    adc h                                         ; $66d9: $8c
    ld c, a                                       ; $66da: $4f
    xor d                                         ; $66db: $aa
    ld sp, hl                                     ; $66dc: $f9
    db $fc                                        ; $66dd: $fc
    ld h, e                                       ; $66de: $63
    ld e, h                                       ; $66df: $5c
    sub e                                         ; $66e0: $93
    ld h, [hl]                                    ; $66e1: $66
    ld a, [de]                                    ; $66e2: $1a
    add sp, $25                                   ; $66e3: $e8 $25
    add h                                         ; $66e5: $84
    ld bc, $f196                                  ; $66e6: $01 $96 $f1
    ld a, [hl+]                                   ; $66e9: $2a
    db $f4                                        ; $66ea: $f4
    ld l, h                                       ; $66eb: $6c
    ld c, l                                       ; $66ec: $4d
    sbc d                                         ; $66ed: $9a
    or l                                          ; $66ee: $b5
    rst $18                                       ; $66ef: $df
    ld c, [hl]                                    ; $66f0: $4e
    ld a, c                                       ; $66f1: $79
    or h                                          ; $66f2: $b4
    cp $d6                                        ; $66f3: $fe $d6
    ret                                           ; $66f5: $c9


    ld c, e                                       ; $66f6: $4b
    ld a, $5b                                     ; $66f7: $3e $5b
    ld [hl-], a                                   ; $66f9: $32
    call c, $d2f1                                 ; $66fa: $dc $f1 $d2
    ret c                                         ; $66fd: $d8

    or $25                                        ; $66fe: $f6 $25
    sub [hl]                                      ; $6700: $96
    add d                                         ; $6701: $82
    halt                                          ; $6702: $76
    ld c, d                                       ; $6703: $4a
    ld a, [c]                                     ; $6704: $f2
    dec bc                                        ; $6705: $0b
    sbc $e7                                       ; $6706: $de $e7
    cp c                                          ; $6708: $b9
    or $33                                        ; $6709: $f6 $33

jr_02a_670b:
    add h                                         ; $670b: $84
    ld bc, $2aad                                  ; $670c: $01 $ad $2a
    jp nc, $d770                                  ; $670f: $d2 $70 $d7

    sub $aa                                       ; $6712: $d6 $aa
    ld a, $cf                                     ; $6714: $3e $cf
    or l                                          ; $6716: $b5
    sbc a                                         ; $6717: $9f
    adc l                                         ; $6718: $8d
    cp a                                          ; $6719: $bf
    or l                                          ; $671a: $b5
    dec [hl]                                      ; $671b: $35
    ld e, a                                       ; $671c: $5f
    cp d                                          ; $671d: $ba
    xor h                                         ; $671e: $ac
    ld b, a                                       ; $671f: $47
    db $ed                                        ; $6720: $ed
    ld [bc], a                                    ; $6721: $02
    push de                                       ; $6722: $d5
    ld a, h                                       ; $6723: $7c
    and b                                         ; $6724: $a0
    or $2f                                        ; $6725: $f6 $2f
    adc l                                         ; $6727: $8d
    xor a                                         ; $6728: $af
    cp h                                          ; $6729: $bc
    inc a                                         ; $672a: $3c
    ld b, d                                       ; $672b: $42
    ret z                                         ; $672c: $c8

    set 1, e                                      ; $672d: $cb $cb
    rst $10                                       ; $672f: $d7
    ld h, b                                       ; $6730: $60
    cp $5a                                        ; $6731: $fe $5a
    sub l                                         ; $6733: $95
    rla                                           ; $6734: $17
    sbc b                                         ; $6735: $98
    or [hl]                                       ; $6736: $b6
    db $d3                                        ; $6737: $d3
    ld a, b                                       ; $6738: $78
    rla                                           ; $6739: $17
    inc c                                         ; $673a: $0c
    sub [hl]                                      ; $673b: $96

Jump_02a_673c:
    ld l, c                                       ; $673c: $69
    sub h                                         ; $673d: $94
    ld d, a                                       ; $673e: $57
    sub $8c                                       ; $673f: $d6 $8c
    ld d, a                                       ; $6741: $57
    and c                                         ; $6742: $a1
    ld h, a                                       ; $6743: $67
    ld l, e                                       ; $6744: $6b
    cp [hl]                                       ; $6745: $be
    inc l                                         ; $6746: $2c
    xor c                                         ; $6747: $a9
    ld a, [$3b2e]                                 ; $6748: $fa $2e $3b
    ld e, d                                       ; $674b: $5a
    xor e                                         ; $674c: $ab
    ld a, [$773c]                                 ; $674d: $fa $3c $77
    cp h                                          ; $6750: $bc
    inc [hl]                                      ; $6751: $34
    or [hl]                                       ; $6752: $b6
    ld a, l                                       ; $6753: $7d
    adc c                                         ; $6754: $89
    and l                                         ; $6755: $a5
    call z, $7c50                                 ; $6756: $cc $50 $7c
    add b                                         ; $6759: $80
    dec [hl]                                      ; $675a: $35
    ld e, a                                       ; $675b: $5f
    add $2b                                       ; $675c: $c6 $2b
    ld sp, hl                                     ; $675e: $f9
    inc a                                         ; $675f: $3c
    rla                                           ; $6760: $17
    inc de                                        ; $6761: $13
    ld a, [hl]                                    ; $6762: $7e
    dec h                                         ; $6763: $25
    dec c                                         ; $6764: $0d
    db $fc                                        ; $6765: $fc
    ld a, [hl-]                                   ; $6766: $3a
    ld a, c                                       ; $6767: $79
    ret                                           ; $6768: $c9


    and c                                         ; $6769: $a1
    dec bc                                        ; $676a: $0b
    ld b, $3d                                     ; $676b: $06 $3d
    ccf                                           ; $676d: $3f
    ld b, [hl]                                    ; $676e: $46
    xor $2c                                       ; $676f: $ee $2c
    ld h, e                                       ; $6771: $63
    sub a                                         ; $6772: $97
    ld d, c                                       ; $6773: $51
    call Call_000_0607                            ; $6774: $cd $07 $06
    ld a, [hl-]                                   ; $6777: $3a
    ld e, a                                       ; $6778: $5f
    ld sp, hl                                     ; $6779: $f9
    sbc d                                         ; $677a: $9a
    inc [hl]                                      ; $677b: $34
    db $e3                                        ; $677c: $e3
    ld e, a                                       ; $677d: $5f
    ld a, [hl]                                    ; $677e: $7e
    ld a, [hl-]                                   ; $677f: $3a
    cp d                                          ; $6780: $ba
    ld b, c                                       ; $6781: $41
    pop af                                        ; $6782: $f1
    or l                                          ; $6783: $b5
    ld h, e                                       ; $6784: $63
    ld h, [hl]                                    ; $6785: $66
    ld hl, sp-$3e                                 ; $6786: $f8 $c2
    ld e, l                                       ; $6788: $5d
    xor e                                         ; $6789: $ab
    adc d                                         ; $678a: $8a
    inc [hl]                                      ; $678b: $34
    ld l, b                                       ; $678c: $68
    sub [hl]                                      ; $678d: $96
    pop af                                        ; $678e: $f1
    ld c, c                                       ; $678f: $49
    dec [hl]                                      ; $6790: $35
    sbc a                                         ; $6791: $9f
    dec de                                        ; $6792: $1b
    and c                                         ; $6793: $a1
    dec [hl]                                      ; $6794: $35
    ld l, c                                       ; $6795: $69
    halt                                          ; $6796: $76
    ld l, c                                       ; $6797: $69
    halt                                          ; $6798: $76
    jp z, $5cbc                                   ; $6799: $ca $bc $5c

    ldh [$ae], a                                  ; $679c: $e0 $ae
    ld l, l                                       ; $679e: $6d
    ld a, h                                       ; $679f: $7c
    ld c, l                                       ; $67a0: $4d
    sbc d                                         ; $67a1: $9a
    ld a, [de]                                    ; $67a2: $1a
    ld e, e                                       ; $67a3: $5b
    ei                                            ; $67a4: $fb
    db $dd                                        ; $67a5: $dd
    ld e, a                                       ; $67a6: $5f
    sub $89                                       ; $67a7: $d6 $89
    ld c, d                                       ; $67a9: $4a
    cp [hl]                                       ; $67aa: $be
    ld h, $8d                                     ; $67ab: $26 $8d
    ret nz                                        ; $67ad: $c0

    ld b, a                                       ; $67ae: $47
    ld a, e                                       ; $67af: $7b
    ld l, l                                       ; $67b0: $6d
    xor l                                         ; $67b1: $ad
    ld [$b4bb], a                                 ; $67b2: $ea $bb $b4
    or $33                                        ; $67b5: $f6 $33
    add h                                         ; $67b7: $84
    ld bc, $7e2d                                  ; $67b8: $01 $2d $7e
    ld h, e                                       ; $67bb: $63
    ld e, h                                       ; $67bc: $5c
    ld a, [de]                                    ; $67bd: $1a
    rst $20                                       ; $67be: $e7
    adc $32                                       ; $67bf: $ce $32
    ld hl, sp+$47                                 ; $67c1: $f8 $47
    or e                                          ; $67c3: $b3
    call nc, Call_02a_5c62                        ; $67c4: $d4 $62 $5c
    ld d, c                                       ; $67c7: $51
    db $eb                                        ; $67c8: $eb
    rst $08                                       ; $67c9: $cf
    ld [hl], e                                    ; $67ca: $73
    dec e                                         ; $67cb: $1d
    ld sp, $ebf4                                  ; $67cc: $31 $f4 $eb
    ld l, a                                       ; $67cf: $6f
    dec h                                         ; $67d0: $25
    dec c                                         ; $67d1: $0d
    db $fc                                        ; $67d2: $fc
    ld a, [hl-]                                   ; $67d3: $3a
    ld a, c                                       ; $67d4: $79
    ret                                           ; $67d5: $c9


    ld h, a                                       ; $67d6: $67
    ld c, e                                       ; $67d7: $4b
    add [hl]                                      ; $67d8: $86
    dec sp                                        ; $67d9: $3b
    ld e, [hl]                                    ; $67da: $5e
    ld a, [de]                                    ; $67db: $1a
    db $db                                        ; $67dc: $db
    cp [hl]                                       ; $67dd: $be
    call nz, $b852                                ; $67de: $c4 $52 $b8
    or e                                          ; $67e1: $b3
    call z, $157e                                 ; $67e2: $cc $7e $15
    or h                                          ; $67e5: $b4
    ld d, e                                       ; $67e6: $53
    sub d                                         ; $67e7: $92
    ld e, a                                       ; $67e8: $5f
    daa                                           ; $67e9: $27
    ld h, $bf                                     ; $67ea: $26 $bf
    or [hl]                                       ; $67ec: $b6
    ld d, [hl]                                    ; $67ed: $56
    push af                                       ; $67ee: $f5
    ld e, l                                       ; $67ef: $5d
    ld a, [c]                                     ; $67f0: $f2
    ld e, h                                       ; $67f1: $5c
    ei                                            ; $67f2: $fb
    add hl, de                                    ; $67f3: $19
    jp nz, Jump_02a_5596                          ; $67f4: $c2 $96 $55

    ld c, d                                       ; $67f7: $4a
    sub e                                         ; $67f8: $93
    ld d, a                                       ; $67f9: $57
    or [hl]                                       ; $67fa: $b6
    ld h, $cd                                     ; $67fb: $26 $cd
    ld [c], a                                     ; $67fd: $e2
    xor l                                         ; $67fe: $ad
    rst $38                                       ; $67ff: $ff
    ld [hl], h                                    ; $6800: $74
    db $ed                                        ; $6801: $ed
    call z, Call_02a_773a                         ; $6802: $cc $3a $77
    xor l                                         ; $6805: $ad
    ld a, [hl+]                                   ; $6806: $2a
    jp nc, Jump_02a_7bac                          ; $6807: $d2 $ac $7b

    cp d                                          ; $680a: $ba
    cp a                                          ; $680b: $bf
    ld [hl], h                                    ; $680c: $74
    reti                                          ; $680d: $d9


    pop de                                        ; $680e: $d1
    ld e, d                                       ; $680f: $5a
    push de                                       ; $6810: $d5
    rst $20                                       ; $6811: $e7
    cp c                                          ; $6812: $b9
    ld h, $8d                                     ; $6813: $26 $8d
    adc h                                         ; $6815: $8c
    and l                                         ; $6816: $a5
    add h                                         ; $6817: $84
    di                                            ; $6818: $f3
    ld [hl], d                                    ; $6819: $72
    ld h, c                                       ; $681a: $61
    sub a                                         ; $681b: $97
    ret nz                                        ; $681c: $c0

    sub l                                         ; $681d: $95
    cp h                                          ; $681e: $bc
    dec bc                                        ; $681f: $0b
    ld b, $3d                                     ; $6820: $06 $3d
    jp z, $4185                                   ; $6822: $ca $85 $41

    rst $20                                       ; $6825: $e7
    ld h, e                                       ; $6826: $63
    add h                                         ; $6827: $84
    cp c                                          ; $6828: $b9
    and h                                         ; $6829: $a4
    ld l, c                                       ; $682a: $69
    rst $00                                       ; $682b: $c7
    sbc a                                         ; $682c: $9f
    sbc l                                         ; $682d: $9d
    or d                                          ; $682e: $b2
    ld h, $4d                                     ; $682f: $26 $4d
    sub a                                         ; $6831: $97
    ld e, c                                       ; $6832: $59
    ld l, d                                       ; $6833: $6a
    pop hl                                        ; $6834: $e1
    sbc [hl]                                      ; $6835: $9e
    ld e, l                                       ; $6836: $5d
    cp a                                          ; $6837: $bf
    inc d                                         ; $6838: $14

jr_02a_6839:
    xor h                                         ; $6839: $ac
    cp a                                          ; $683a: $bf
    sub l                                         ; $683b: $95
    inc [hl]                                      ; $683c: $34

jr_02a_683d:
    ldh a, [$eb]                                  ; $683d: $f0 $eb
    db $e4                                        ; $683f: $e4
    dec h                                         ; $6840: $25
    sbc a                                         ; $6841: $9f
    dec l                                         ; $6842: $2d

jr_02a_6843:
    add hl, de                                    ; $6843: $19
    xor $78                                       ; $6844: $ee $78
    ld l, c                                       ; $6846: $69
    ld l, h                                       ; $6847: $6c
    ei                                            ; $6848: $fb
    ld [de], a                                    ; $6849: $12
    ld c, e                                       ; $684a: $4b
    ld b, c                                       ; $684b: $41
    dec sp                                        ; $684c: $3b
    dec h                                         ; $684d: $25
    ld a, c                                       ; $684e: $79
    xor $da                                       ; $684f: $ee $da
    ld e, d                                       ; $6851: $5a
    push de                                       ; $6852: $d5
    rst $20                                       ; $6853: $e7
    cp c                                          ; $6854: $b9
    or $b3                                        ; $6855: $f6 $b3
    ld l, $18                                     ; $6857: $2e $18
    ld b, a                                       ; $6859: $47

jr_02a_685a:
    cp a                                          ; $685a: $bf
    sbc l                                         ; $685b: $9d
    ld a, [c]                                     ; $685c: $f2
    or e                                          ; $685d: $b3
    inc l                                         ; $685e: $2c
    ld c, b                                       ; $685f: $48
    xor $9a                                       ; $6860: $ee $9a
    inc [hl]                                      ; $6862: $34
    or l                                          ; $6863: $b5
    jr jr_02a_683d                                ; $6864: $18 $d7

    cp $f1                                        ; $6866: $fe $f1
    ld c, d                                       ; $6868: $4a
    ld a, [hl]                                    ; $6869: $7e
    xor c                                         ; $686a: $a9
    ld [hl], $2f                                  ; $686b: $36 $2f
    rrca                                          ; $686d: $0f
    adc a                                         ; $686e: $8f
    halt                                          ; $686f: $76
    ld d, h                                       ; $6870: $54
    adc h                                         ; $6871: $8c
    di                                            ; $6872: $f3
    ld a, [c]                                     ; $6873: $f2
    inc bc                                        ; $6874: $03
    scf                                           ; $6875: $37
    db $ec                                        ; $6876: $ec
    ret                                           ; $6877: $c9


    ld h, c                                       ; $6878: $61
    ld [$cd6b], a                                 ; $6879: $ea $6b $cd
    add b                                         ; $687c: $80
    ld d, a                                       ; $687d: $57
    ld [hl], c                                    ; $687e: $71
    sbc b                                         ; $687f: $98
    jp z, $feaf                                   ; $6880: $ca $af $fe

    ld c, a                                       ; $6883: $4f
    ld c, e                                       ; $6884: $4b
    jp c, Jump_000_1a71                           ; $6885: $da $71 $1a

    and [hl]                                      ; $6888: $a6
    add c                                         ; $6889: $81
    push af                                       ; $688a: $f5
    cp h                                          ; $688b: $bc
    ld e, [hl]                                    ; $688c: $5e
    sub l                                         ; $688d: $95
    add a                                         ; $688e: $87
    add hl, hl                                    ; $688f: $29
    or c                                          ; $6890: $b1
    push af                                       ; $6891: $f5
    cp h                                          ; $6892: $bc
    inc e                                         ; $6893: $1c
    ld d, l                                       ; $6894: $55
    jr jr_02a_6843                                ; $6895: $18 $ac

    sbc e                                         ; $6897: $9b
    ld a, [bc]                                    ; $6898: $0a
    inc bc                                        ; $6899: $03
    or h                                          ; $689a: $b4
    ld e, $e5                                     ; $689b: $1e $e5
    pop hl                                        ; $689d: $e1
    ld [hl], a                                    ; $689e: $77
    ld e, h                                       ; $689f: $5c
    add $9b                                       ; $68a0: $c6 $9b
    jr nc, jr_02a_6839                            ; $68a2: $30 $95

    rra                                           ; $68a4: $1f
    ld e, a                                       ; $68a5: $5f
    ld e, [hl]                                    ; $68a6: $5e
    ld a, [hl]                                    ; $68a7: $7e
    call $8197                                    ; $68a8: $cd $97 $81
    and a                                         ; $68ab: $a7
    db $fc                                        ; $68ac: $fc
    cp h                                          ; $68ad: $bc
    db $fc                                        ; $68ae: $fc

Jump_02a_68af:
    ld a, [hl+]                                   ; $68af: $2a
    dec d                                         ; $68b0: $15
    ld b, $68                                     ; $68b1: $06 $68
    db $eb                                        ; $68b3: $eb
    push af                                       ; $68b4: $f5
    ld h, l                                       ; $68b5: $65
    sub l                                         ; $68b6: $95
    adc d                                         ; $68b7: $8a
    inc [hl]                                      ; $68b8: $34
    di                                            ; $68b9: $f3
    ld a, [c]                                     ; $68ba: $f2
    dec sp                                        ; $68bb: $3b
    ld l, $e3                                     ; $68bc: $2e $e3
    call $2d1d                                    ; $68be: $cd $1d $2d
    ld l, a                                       ; $68c1: $6f
    cp l                                          ; $68c2: $bd
    jr nc, jr_02a_685a                            ; $68c3: $30 $95

    inc [hl]                                      ; $68c5: $34
    call nz, Call_02a_5fc6                        ; $68c6: $c4 $c6 $5f
    cpl                                           ; $68c9: $2f
    ld l, e                                       ; $68ca: $6b
    cp [hl]                                       ; $68cb: $be
    ld [hl], b                                    ; $68cc: $70
    rst $10                                       ; $68cd: $d7
    ld [hl], $3e                                  ; $68ce: $36 $3e
    cpl                                           ; $68d0: $2f
    cp a                                          ; $68d1: $bf
    db $e3                                        ; $68d2: $e3
    ld [hl-], a                                   ; $68d3: $32
    sbc $dc                                       ; $68d4: $de $dc
    ret                                           ; $68d6: $c9


    ld a, [de]                                    ; $68d7: $1a
    ld e, h                                       ; $68d8: $5c
    xor $9a                                       ; $68d9: $ee $9a
    sub a                                         ; $68db: $97
    add l                                         ; $68dc: $85
    ld a, d                                       ; $68dd: $7a
    ld l, c                                       ; $68de: $69
    ld a, [de]                                    ; $68df: $1a
    db $db                                        ; $68e0: $db
    ld h, $e4                                     ; $68e1: $26 $e4
    xor $c2                                       ; $68e3: $ee $c2
    inc a                                         ; $68e5: $3c
    ld [hl], e                                    ; $68e6: $73
    db $ed                                        ; $68e7: $ed
    dec de                                        ; $68e8: $1b
    call z, $9573                                 ; $68e9: $cc $73 $95
    adc d                                         ; $68ec: $8a
    inc [hl]                                      ; $68ed: $34
    ld d, e                                       ; $68ee: $53
    ld c, c                                       ; $68ef: $49
    ld b, e                                       ; $68f0: $43
    dec [hl]                                      ; $68f1: $35
    or h                                          ; $68f2: $b4
    ld e, [hl]                                    ; $68f3: $5e
    ld l, c                                       ; $68f4: $69
    inc b                                         ; $68f5: $04
    halt                                          ; $68f6: $76
    ld h, c                                       ; $68f7: $61
    ld a, [de]                                    ; $68f8: $1a
    push hl                                       ; $68f9: $e5

Call_02a_68fa:
    sub l                                         ; $68fa: $95
    dec [hl]                                      ; $68fb: $35
    ld d, e                                       ; $68fc: $53
    ld e, a                                       ; $68fd: $5f

jr_02a_68fe:
    ld l, e                                       ; $68fe: $6b
    ld b, $bc                                     ; $68ff: $06 $bc
    adc d                                         ; $6901: $8a
    jp $bd78                                      ; $6902: $c3 $78 $bd


    ld a, [hl]                                    ; $6905: $7e
    add hl, hl                                    ; $6906: $29
    sbc b                                         ; $6907: $98
    sbc l                                         ; $6908: $9d
    or d                                          ; $6909: $b2
    and $0b                                       ; $690a: $e6 $0b
    ld [hl], a                                    ; $690c: $77
    ld l, l                                       ; $690d: $6d
    db $e3                                        ; $690e: $e3
    ld l, e                                       ; $690f: $6b
    cp [hl]                                       ; $6910: $be
    xor h                                         ; $6911: $ac
    ld d, d                                       ; $6912: $52
    ld a, [de]                                    ; $6913: $1a
    ld hl, sp-$73                                 ; $6914: $f8 $8d

jr_02a_6916:
    ld [hl], c                                    ; $6916: $71
    ld sp, $3eb3                                  ; $6917: $31 $b3 $3e
    push af                                       ; $691a: $f5
    ld e, l                                       ; $691b: $5d
    rra                                           ; $691c: $1f
    dec h                                         ; $691d: $25

jr_02a_691e:
    adc a                                         ; $691e: $8f
    sub $eb                                       ; $691f: $d6 $eb
    set 1, [hl]                                   ; $6921: $cb $ce
    inc sp                                        ; $6923: $33
    ld d, b                                       ; $6924: $50
    ld e, e                                       ; $6925: $5b
    and l                                         ; $6926: $a5
    ld d, h                                       ; $6927: $54
    di                                            ; $6928: $f3
    ld [hl], l                                    ; $6929: $75
    adc h                                         ; $692a: $8c
    xor a                                         ; $692b: $af
    ld c, c                                       ; $692c: $49
    inc hl                                        ; $692d: $23
    xor e                                         ; $692e: $ab
    ld d, h                                       ; $692f: $54
    jr jr_02a_691e                                ; $6930: $18 $ec

    jp nc, $afae                                  ; $6932: $d2 $ae $af

    ld a, c                                       ; $6935: $79
    ld b, a                                       ; $6936: $47
    jr jr_02a_6916                                ; $6937: $18 $dd

    db $e4                                        ; $6939: $e4
    push de                                       ; $693a: $d5
    ld a, a                                       ; $693b: $7f
    db $dd                                        ; $693c: $dd
    db $d3                                        ; $693d: $d3
    ld l, a                                       ; $693e: $6f
    ld [de], a                                    ; $693f: $12
    ld b, $ad                                     ; $6940: $06 $ad
    xor a                                         ; $6942: $af
    pop de                                        ; $6943: $d1
    res 1, [hl]                                   ; $6944: $cb $8e
    adc $04                                       ; $6946: $ce $04
    rst $00                                       ; $6948: $c7
    and a                                         ; $6949: $a7
    xor b                                         ; $694a: $a8
    add c                                         ; $694b: $81
    ld d, a                                       ; $694c: $57
    inc c                                         ; $694d: $0c
    and a                                         ; $694e: $a7
    ld a, a                                       ; $694f: $7f
    ldh a, [$f4]                                  ; $6950: $f0 $f4
    and d                                         ; $6952: $a2
    ld a, [hl]                                    ; $6953: $7e
    sub e                                         ; $6954: $93
    jr nc, jr_02a_68fe                            ; $6955: $30 $a7

    db $eb                                        ; $6957: $eb
    and l                                         ; $6958: $a5
    and l                                         ; $6959: $a5
    cp l                                          ; $695a: $bd
    and e                                         ; $695b: $a3
    and e                                         ; $695c: $a3
    ld h, c                                       ; $695d: $61
    pop bc                                        ; $695e: $c1
    dec bc                                        ; $695f: $0b
    ld h, b                                       ; $6960: $60

jr_02a_6961:
    dec l                                         ; $6961: $2d
    ld [hl], h                                    ; $6962: $74
    cp l                                          ; $6963: $bd
    ld a, [hl+]                                   ; $6964: $2a
    ld l, e                                       ; $6965: $6b
    ld [hl], c                                    ; $6966: $71
    cp c                                          ; $6967: $b9
    push af                                       ; $6968: $f5
    rst $00                                       ; $6969: $c7
    dec l                                         ; $696a: $2d
    ld [hl], h                                    ; $696b: $74
    cp l                                          ; $696c: $bd
    ld a, [hl+]                                   ; $696d: $2a
    ld l, e                                       ; $696e: $6b
    ld [hl], c                                    ; $696f: $71
    ld a, c                                       ; $6970: $79
    xor l                                         ; $6971: $ad
    ld h, e                                       ; $6972: $63
    db $dd                                        ; $6973: $dd
    sub d                                         ; $6974: $92
    adc $33                                       ; $6975: $ce $33
    ld a, [c]                                     ; $6977: $f2
    ld l, e                                       ; $6978: $6b
    ld hl, $eaad                                  ; $6979: $21 $ad $ea
    jr @-$37                                      ; $697c: $18 $c7

    ld [hl], d                                    ; $697e: $72
    ld [hl], b                                    ; $697f: $70
    pop de                                        ; $6980: $d1
    ld [hl], l                                    ; $6981: $75
    sub e                                         ; $6982: $93
    ld h, a                                       ; $6983: $67
    rst $10                                       ; $6984: $d7
    ld sp, $8cdd                                  ; $6985: $31 $dd $8c
    db $fc                                        ; $6988: $fc
    cp d                                          ; $6989: $ba
    rst $20                                       ; $698a: $e7
    add l                                         ; $698b: $85
    inc h                                         ; $698c: $24
    inc c                                         ; $698d: $0c
    and a                                         ; $698e: $a7
    ld a, a                                       ; $698f: $7f
    sbc b                                         ; $6990: $98
    sub $5f                                       ; $6991: $d6 $5f
    scf                                           ; $6993: $37
    inc hl                                        ; $6994: $23
    ldh a, [rNR23]                                ; $6995: $f0 $18
    db $dd                                        ; $6997: $dd
    dec h                                         ; $6998: $25
    db $fd                                        ; $6999: $fd
    dec hl                                        ; $699a: $2b
    rst $00                                       ; $699b: $c7
    rst $00                                       ; $699c: $c7
    cp h                                          ; $699d: $bc
    dec e                                         ; $699e: $1d
    cp a                                          ; $699f: $bf
    ld [hl], d                                    ; $69a0: $72
    inc c                                         ; $69a1: $0c
    dec l                                         ; $69a2: $2d

jr_02a_69a3:
    ld l, $4f                                     ; $69a3: $2e $4f
    add c                                         ; $69a5: $81
    rla                                           ; $69a6: $17
    inc c                                         ; $69a7: $0c
    db $dd                                        ; $69a8: $dd
    ld d, h                                       ; $69a9: $54
    jp c, $eb49                                   ; $69aa: $da $49 $eb

    sub [hl]                                      ; $69ad: $96
    sbc l                                         ; $69ae: $9d
    ld b, $03                                     ; $69af: $06 $03
    rst $00                                       ; $69b1: $c7
    ld e, h                                       ; $69b2: $5c
    ld sp, hl                                     ; $69b3: $f9
    or l                                          ; $69b4: $b5
    cp b                                          ; $69b5: $b8
    inc a                                         ; $69b6: $3c
    dec b                                         ; $69b7: $05
    ld e, [hl]                                    ; $69b8: $5e
    jr nc, jr_02a_69e8                            ; $69b9: $30 $2d

    pop af                                        ; $69bb: $f1
    cp a                                          ; $69bc: $bf
    add e                                         ; $69bd: $83
    ld bc, $ff16                                  ; $69be: $01 $16 $ff
    ld [hl], b                                    ; $69c1: $70
    ld d, $f2                                     ; $69c2: $16 $f2
    call c, $af71                                 ; $69c4: $dc $71 $af
    ld e, [hl]                                    ; $69c7: $5e
    ld e, [hl]                                    ; $69c8: $5e
    jr nc, jr_02a_6961                            ; $69c9: $30 $96

    or b                                          ; $69cb: $b0
    inc hl                                        ; $69cc: $23
    ld l, c                                       ; $69cd: $69
    ld a, l                                       ; $69ce: $7d
    or [hl]                                       ; $69cf: $b6
    sub e                                         ; $69d0: $93
    dec [hl]                                      ; $69d1: $35
    cp b                                          ; $69d2: $b8
    dec d                                         ; $69d3: $15
    ld b, $dd                                     ; $69d4: $06 $dd
    di                                            ; $69d6: $f3
    ld b, d                                       ; $69d7: $42
    jp nc, Jump_02a_612c                          ; $69d8: $d2 $2c $61

    ld l, b                                       ; $69db: $68
    add sp, $7a                                   ; $69dc: $e8 $7a
    add e                                         ; $69de: $83
    ld bc, $48c7                                  ; $69df: $01 $c7 $48
    jp nc, $c763                                  ; $69e2: $d2 $63 $c7

    ld e, h                                       ; $69e5: $5c
    ld [hl], b                                    ; $69e6: $70
    pop de                                        ; $69e7: $d1

jr_02a_69e8:
    jp z, $2731                                   ; $69e8: $ca $31 $27

    sbc c                                         ; $69eb: $99
    jr jr_02a_69a3                                ; $69ec: $18 $b5

    db $dd                                        ; $69ee: $dd
    ld h, b                                       ; $69ef: $60
    dec l                                         ; $69f0: $2d
    ld a, [hl]                                    ; $69f1: $7e
    xor c                                         ; $69f2: $a9
    adc $ff                                       ; $69f3: $ce $ff
    inc sp                                        ; $69f5: $33
    inc c                                         ; $69f6: $0c
    dec l                                         ; $69f7: $2d
    ld sp, $0c79                                  ; $69f8: $31 $79 $0c
    dec l                                         ; $69fb: $2d
    pop de                                        ; $69fc: $d1
    inc b                                         ; $69fd: $04
    pop bc                                        ; $69fe: $c1
    add l                                         ; $69ff: $85
    add d                                         ; $6a00: $82
    ld bc, $3e3d                                  ; $6a01: $01 $3d $3e
    db $ec                                        ; $6a04: $ec
    inc a                                         ; $6a05: $3c
    jr c, jr_02a_6a0e                             ; $6a06: $38 $06

    ld b, a                                       ; $6a08: $47
    ld b, l                                       ; $6a09: $45
    ld a, a                                       ; $6a0a: $7f
    reti                                          ; $6a0b: $d9


    or c                                          ; $6a0c: $b1
    db $f4                                        ; $6a0d: $f4

jr_02a_6a0e:
    ld h, c                                       ; $6a0e: $61
    add e                                         ; $6a0f: $83
    ld bc, $a4c7                                  ; $6a10: $01 $c7 $a4
    ld l, c                                       ; $6a13: $69
    rst $00                                       ; $6a14: $c7
    ld e, a                                       ; $6a15: $5f
    ld c, e                                       ; $6a16: $4b
    ld [hl], a                                    ; $6a17: $77
    inc c                                         ; $6a18: $0c
    and a                                         ; $6a19: $a7
    cp a                                          ; $6a1a: $bf
    push af                                       ; $6a1b: $f5
    dec b                                         ; $6a1c: $05
    inc [hl]                                      ; $6a1d: $34
    ld h, d                                       ; $6a1e: $62
    dec l                                         ; $6a1f: $2d
    or a                                          ; $6a20: $b7
    xor d                                         ; $6a21: $aa
    rst $00                                       ; $6a22: $c7
    ld e, a                                       ; $6a23: $5f
    bit 7, a                                      ; $6a24: $cb $7f
    dec e                                         ; $6a26: $1d
    inc bc                                        ; $6a27: $03
    rst $00                                       ; $6a28: $c7

jr_02a_6a29:
    ld d, d                                       ; $6a29: $52
    sub l                                         ; $6a2a: $95
    add [hl]                                      ; $6a2b: $86
    db $fc                                        ; $6a2c: $fc
    ld h, l                                       ; $6a2d: $65
    dec a                                         ; $6a2e: $3d
    ld b, h                                       ; $6a2f: $44
    xor e                                         ; $6a30: $ab
    ld a, [hl-]                                   ; $6a31: $3a
    ld b, $3d                                     ; $6a32: $06 $3d
    ld a, $7e                                     ; $6a34: $3e $7e
    jr nz, @-$24                                  ; $6a36: $20 $da

    add hl, hl                                    ; $6a38: $29
    db $eb                                        ; $6a39: $eb
    ld l, [hl]                                    ; $6a3a: $6e
    xor b                                         ; $6a3b: $a8
    ld a, [hl+]                                   ; $6a3c: $2a
    jr jr_02a_6a7c                                ; $6a3d: $18 $3d

    ld e, a                                       ; $6a3f: $5f
    db $eb                                        ; $6a40: $eb
    db $eb                                        ; $6a41: $eb
    sbc [hl]                                      ; $6a42: $9e
    sub a                                         ; $6a43: $97
    inc e                                         ; $6a44: $1c
    inc bc                                        ; $6a45: $03
    and a                                         ; $6a46: $a7
    ld a, a                                       ; $6a47: $7f
    daa                                           ; $6a48: $27
    ld a, $5d                                     ; $6a49: $3e $5d
    jr z, jr_02a_6a88                             ; $6a4b: $28 $3b

    ld e, c                                       ; $6a4d: $59
    add e                                         ; $6a4e: $83
    ld e, e                                       ; $6a4f: $5b
    ld h, c                                       ; $6a50: $61
    daa                                           ; $6a51: $27
    ld l, e                                       ; $6a52: $6b
    ld [hl], b                                    ; $6a53: $70
    xor e                                         ; $6a54: $ab
    sbc l                                         ; $6a55: $9d
    cp $d6                                        ; $6a56: $fe $d6
    rla                                           ; $6a58: $17
    ret nc                                        ; $6a59: $d0

    adc b                                         ; $6a5a: $88
    ld bc, $7fa7                                  ; $6a5b: $01 $a7 $7f
    daa                                           ; $6a5e: $27
    ld a, $5d                                     ; $6a5f: $3e $5d
    jr z, jr_02a_6ace                             ; $6a61: $28 $6b

    ld [hl], c                                    ; $6a63: $71
    dec c                                         ; $6a64: $0d
    cpl                                           ; $6a65: $2f
    add hl, hl                                    ; $6a66: $29
    ld b, $2d                                     ; $6a67: $06 $2d
    ld h, $0c                                     ; $6a69: $26 $0c
    sub e                                         ; $6a6b: $93
    halt                                          ; $6a6c: $76
    ld b, [hl]                                    ; $6a6d: $46
    ret c                                         ; $6a6e: $d8

    sub [hl]                                      ; $6a6f: $96
    adc a                                         ; $6a70: $8f
    ld d, c                                       ; $6a71: $51
    ld sp, $552d                                  ; $6a72: $31 $2d $55
    ret                                           ; $6a75: $c9


    xor b                                         ; $6a76: $a8
    ld [bc], a                                    ; $6a77: $02
    push hl                                       ; $6a78: $e5
    halt                                          ; $6a79: $76
    jr nc, jr_02a_6a29                            ; $6a7a: $30 $ad

jr_02a_6a7c:
    xor a                                         ; $6a7c: $af
    pop af                                        ; $6a7d: $f1
    ld d, d                                       ; $6a7e: $52
    or b                                          ; $6a7f: $b0
    and e                                         ; $6a80: $a3
    call c, $aab5                                 ; $6a81: $dc $b5 $aa
    ld h, e                                       ; $6a84: $63
    daa                                           ; $6a85: $27
    cp l                                          ; $6a86: $bd
    push af                                       ; $6a87: $f5

jr_02a_6a88:
    db $e3                                        ; $6a88: $e3
    adc $e8                                       ; $6a89: $ce $e8
    ld h, b                                       ; $6a8b: $60
    dec l                                         ; $6a8c: $2d
    db $dd                                        ; $6a8d: $dd
    ld [hl], a                                    ; $6a8e: $77
    cp h                                          ; $6a8f: $bc
    ld e, [hl]                                    ; $6a90: $5e
    jp nz, $7727                                  ; $6a91: $c2 $27 $77

    rst $18                                       ; $6a94: $df
    pop af                                        ; $6a95: $f1
    ld a, d                                       ; $6a96: $7a
    add hl, bc                                    ; $6a97: $09
    inc bc                                        ; $6a98: $03
    daa                                           ; $6a99: $27
    ld [hl], a                                    ; $6a9a: $77
    rst $18                                       ; $6a9b: $df
    or c                                          ; $6a9c: $b1

jr_02a_6a9d:
    and d                                         ; $6a9d: $a2
    ldh a, [rNR23]                                ; $6a9e: $f0 $18
    and a                                         ; $6aa0: $a7
    ld a, a                                       ; $6aa1: $7f
    daa                                           ; $6aa2: $27
    ld a, $5d                                     ; $6aa3: $3e $5d
    jr z, @+$3d                                   ; $6aa5: $28 $3b

    ld a, [hl+]                                   ; $6aa7: $2a
    ld b, [hl]                                    ; $6aa8: $46
    inc c                                         ; $6aa9: $0c
    daa                                           ; $6aaa: $27
    ld l, e                                       ; $6aab: $6b
    ld [hl], b                                    ; $6aac: $70
    xor e                                         ; $6aad: $ab
    ld e, c                                       ; $6aae: $59
    jp nz, $d0d0                                  ; $6aaf: $c2 $d0 $d0

    push af                                       ; $6ab2: $f5
    ld b, $03                                     ; $6ab3: $06 $03
    sub [hl]                                      ; $6ab5: $96
    jr nc, jr_02a_6aec                            ; $6ab6: $30 $34

    ld [hl], h                                    ; $6ab8: $74
    cp l                                          ; $6ab9: $bd
    pop bc                                        ; $6aba: $c1
    rst $00                                       ; $6abb: $c7
    ld [hl], d                                    ; $6abc: $72
    jr z, jr_02a_6b29                             ; $6abd: $28 $6a

    ret nz                                        ; $6abf: $c0

    ld sp, $4747                                  ; $6ac0: $31 $47 $47
    dec b                                         ; $6ac3: $05
    cp a                                          ; $6ac4: $bf
    inc d                                         ; $6ac5: $14
    xor h                                         ; $6ac6: $ac
    sbc e                                         ; $6ac7: $9b
    ld de, $0c78                                  ; $6ac8: $11 $78 $0c
    xor l                                         ; $6acb: $ad
    cpl                                           ; $6acc: $2f
    ld a, c                                       ; $6acd: $79

jr_02a_6ace:
    xor e                                         ; $6ace: $ab
    or l                                          ; $6acf: $b5
    cp b                                          ; $6ad0: $b8
    inc a                                         ; $6ad1: $3c
    dec b                                         ; $6ad2: $05
    ld e, [hl]                                    ; $6ad3: $5e
    jr nc, jr_02a_6a9d                            ; $6ad4: $30 $c7

    sbc c                                         ; $6ad6: $99
    jr jr_02a_6b50                                ; $6ad7: $18 $77

    inc l                                         ; $6ad9: $2c
    ld d, l                                       ; $6ada: $55
    ld b, l                                       ; $6adb: $45
    ret                                           ; $6adc: $c9


    jp $c727                                      ; $6add: $c3 $27 $c7


    dec a                                         ; $6ae0: $3d
    jp z, Jump_02a_52af                           ; $6ae1: $ca $af $52

    ld h, c                                       ; $6ae4: $61
    or b                                          ; $6ae5: $b0
    ld c, d                                       ; $6ae6: $4a
    ld e, [hl]                                    ; $6ae7: $5e
    db $fd                                        ; $6ae8: $fd
    reti                                          ; $6ae9: $d9


    ld [hl], h                                    ; $6aea: $74
    and d                                         ; $6aeb: $a2

jr_02a_6aec:
    call nz, Call_02a_5c32                        ; $6aec: $c4 $32 $5c
    daa                                           ; $6aef: $27
    db $fd                                        ; $6af0: $fd
    ld h, $75                                     ; $6af1: $26 $75
    pop bc                                        ; $6af3: $c1
    dec a                                         ; $6af4: $3d
    jp z, Jump_02a_52af                           ; $6af5: $ca $af $52

    ld h, c                                       ; $6af8: $61
    jr nc, jr_02a_6b74                            ; $6af9: $30 $79

    ldh a, [$94]                                  ; $6afb: $f0 $94
    ld h, a                                       ; $6afd: $67
    db $d3                                        ; $6afe: $d3
    ld b, c                                       ; $6aff: $41
    xor b                                         ; $6b00: $a8
    ld sp, $c34e                                  ; $6b01: $31 $4e $c3
    inc [hl]                                      ; $6b04: $34
    db $e4                                        ; $6b05: $e4
    ld c, e                                       ; $6b06: $4b
    ld a, e                                       ; $6b07: $7b
    ld c, l                                       ; $6b08: $4d
    ld a, [de]                                    ; $6b09: $1a
    ld e, c                                       ; $6b0a: $59
    ld c, e                                       ; $6b0b: $4b
    ld [hl], a                                    ; $6b0c: $77
    add h                                         ; $6b0d: $84
    ld bc, $ca3d                                  ; $6b0e: $01 $3d $ca
    xor a                                         ; $6b11: $af
    ld d, d                                       ; $6b12: $52
    ld h, c                                       ; $6b13: $61

jr_02a_6b14:
    jr nc, jr_02a_6b14                            ; $6b14: $30 $fe

    push hl                                       ; $6b16: $e5
    xor c                                         ; $6b17: $a9
    and $2b                                       ; $6b18: $e6 $2b
    rra                                           ; $6b1a: $1f
    dec sp                                        ; $6b1b: $3b
    or [hl]                                       ; $6b1c: $b6
    adc c                                         ; $6b1d: $89
    di                                            ; $6b1e: $f3
    ld [hl], d                                    ; $6b1f: $72
    ld h, c                                       ; $6b20: $61
    ld a, [hl]                                    ; $6b21: $7e
    jp $eb47                                      ; $6b22: $c3 $47 $eb


    sub l                                         ; $6b25: $95
    ld b, [hl]                                    ; $6b26: $46
    and $26                                       ; $6b27: $e6 $26

jr_02a_6b29:
    inc c                                         ; $6b29: $0c
    sbc e                                         ; $6b2a: $9b

Jump_02a_6b2b:
    ld e, l                                       ; $6b2b: $5d
    sbc b                                         ; $6b2c: $98
    jp hl                                         ; $6b2d: $e9


    ret nz                                        ; $6b2e: $c0

    dec sp                                        ; $6b2f: $3b
    ld [hl], a                                    ; $6b30: $77
    ld c, d                                       ; $6b31: $4a
    ld l, h                                       ; $6b32: $6c
    ld c, l                                       ; $6b33: $4d
    sbc d                                         ; $6b34: $9a
    reti                                          ; $6b35: $d9


    rst $38                                       ; $6b36: $ff
    ld [hl], c                                    ; $6b37: $71
    db $ec                                        ; $6b38: $ec
    ld [hl], d                                    ; $6b39: $72
    db $e4                                        ; $6b3a: $e4
    ret c                                         ; $6b3b: $d8

    ld c, h                                       ; $6b3c: $4c
    adc c                                         ; $6b3d: $89
    adc l                                         ; $6b3e: $8d
    ld a, a                                       ; $6b3f: $7f
    xor l                                         ; $6b40: $ad
    and e                                         ; $6b41: $a3
    push af                                       ; $6b42: $f5
    ld c, d                                       ; $6b43: $4a
    inc sp                                        ; $6b44: $33
    cpl                                           ; $6b45: $2f
    sub a                                         ; $6b46: $97
    ld [$d26b], a                                 ; $6b47: $ea $6b $d2
    inc l                                         ; $6b4a: $2c
    cp h                                          ; $6b4b: $bc
    ld b, c                                       ; $6b4c: $41
    pop af                                        ; $6b4d: $f1
    dec d                                         ; $6b4e: $15
    or l                                          ; $6b4f: $b5

jr_02a_6b50:
    cp $62                                        ; $6b50: $fe $62
    add d                                         ; $6b52: $82
    rrca                                          ; $6b53: $0f
    ld [hl-], a                                   ; $6b54: $32
    db $fc                                        ; $6b55: $fc
    or l                                          ; $6b56: $b5
    ld [hl], h                                    ; $6b57: $74
    ld b, a                                       ; $6b58: $47
    jr jr_02a_6b98                                ; $6b59: $18 $3d

    jp z, Jump_02a_52af                           ; $6b5b: $ca $af $52

    ld h, c                                       ; $6b5e: $61
    or b                                          ; $6b5f: $b0
    halt                                          ; $6b60: $76
    ld h, $f8                                     ; $6b61: $26 $f8
    or e                                          ; $6b63: $b3
    dec [hl]                                      ; $6b64: $35
    ld l, c                                       ; $6b65: $69
    ld h, h                                       ; $6b66: $64
    dec l                                         ; $6b67: $2d
    db $dd                                        ; $6b68: $dd
    pop de                                        ; $6b69: $d1
    inc l                                         ; $6b6a: $2c
    inc [hl]                                      ; $6b6b: $34

jr_02a_6b6c:
    ld e, e                                       ; $6b6c: $5b
    dec hl                                        ; $6b6d: $2b
    rst $20                                       ; $6b6e: $e7
    xor [hl]                                      ; $6b6f: $ae
    ld c, c                                       ; $6b70: $49
    inc sp                                        ; $6b71: $33
    ei                                            ; $6b72: $fb
    ccf                                           ; $6b73: $3f

jr_02a_6b74:
    ld l, $de                                     ; $6b74: $2e $de
    ld a, [$49af]                                 ; $6b76: $fa $af $49
    ld d, e                                       ; $6b79: $53
    sub e                                         ; $6b7a: $93
    ld e, a                                       ; $6b7b: $5f
    ldh a, [$ee]                                  ; $6b7c: $f0 $ee
    sub a                                         ; $6b7e: $97
    add d                                         ; $6b7f: $82
    add l                                         ; $6b80: $85
    add hl, hl                                    ; $6b81: $29
    ccf                                           ; $6b82: $3f
    dec h                                         ; $6b83: $25
    or [hl]                                       ; $6b84: $b6
    jr nc, jr_02a_6b6c                            ; $6b85: $30 $e5

    rst $10                                       ; $6b87: $d7
    jp nc, $1a7d                                  ; $6b88: $d2 $7d $1a

    db $e3                                        ; $6b8b: $e3
    cp h                                          ; $6b8c: $bc
    db $fc                                        ; $6b8d: $fc
    db $fc                                        ; $6b8e: $fc
    add [hl]                                      ; $6b8f: $86
    rst $18                                       ; $6b90: $df
    dec b                                         ; $6b91: $05
    inc bc                                        ; $6b92: $03
    dec a                                         ; $6b93: $3d
    jp z, Jump_02a_52af                           ; $6b94: $ca $af $52

    ld h, c                                       ; $6b97: $61

jr_02a_6b98:
    or b                                          ; $6b98: $b0
    ld c, d                                       ; $6b99: $4a
    ld e, [hl]                                    ; $6b9a: $5e
    db $fd                                        ; $6b9b: $fd
    and a                                         ; $6b9c: $a7
    di                                            ; $6b9d: $f3
    inc d                                         ; $6b9e: $14
    ld a, c                                       ; $6b9f: $79
    ld a, [c]                                     ; $6ba0: $f2
    and l                                         ; $6ba1: $a5
    cp l                                          ; $6ba2: $bd
    ld c, [hl]                                    ; $6ba3: $4e
    inc [hl]                                      ; $6ba4: $34
    inc d                                         ; $6ba5: $14
    ld e, h                                       ; $6ba6: $5c
    ld a, [bc]                                    ; $6ba7: $0a
    halt                                          ; $6ba8: $76
    ld [hl], h                                    ; $6ba9: $74
    inc [hl]                                      ; $6baa: $34
    inc l                                         ; $6bab: $2c
    ld a, b                                       ; $6bac: $78
    add c                                         ; $6bad: $81
    ld a, c                                       ; $6bae: $79
    ld d, c                                       ; $6baf: $51
    sbc a                                         ; $6bb0: $9f
    add sp, -$5b                                  ; $6bb1: $e8 $a5
    or c                                          ; $6bb3: $b1
    db $e4                                        ; $6bb4: $e4
    ld l, c                                       ; $6bb5: $69
    ld c, c                                       ; $6bb6: $49
    ld d, e                                       ; $6bb7: $53
    ld e, d                                       ; $6bb8: $5a
    halt                                          ; $6bb9: $76

Jump_02a_6bba:
    ld a, [hl-]                                   ; $6bba: $3a
    ld c, c                                       ; $6bbb: $49
    ld c, a                                       ; $6bbc: $4f
    adc [hl]                                      ; $6bbd: $8e
    jr nc, jr_02a_6bfd                            ; $6bbe: $30 $3d

    jp z, Jump_02a_52af                           ; $6bc0: $ca $af $52

    ld h, c                                       ; $6bc3: $61
    or b                                          ; $6bc4: $b0
    ld c, d                                       ; $6bc5: $4a
    ld e, [hl]                                    ; $6bc6: $5e

Call_02a_6bc7:
    db $fd                                        ; $6bc7: $fd
    and a                                         ; $6bc8: $a7
    dec sp                                        ; $6bc9: $3b
    ld a, $23                                     ; $6bca: $3e $23
    ld a, e                                       ; $6bcc: $7b
    ld e, d                                       ; $6bcd: $5a
    dec bc                                        ; $6bce: $0b
    ld e, l                                       ; $6bcf: $5d
    xor a                                         ; $6bd0: $af
    jp z, $a8bc                                   ; $6bd1: $ca $bc $a8

    rrca                                          ; $6bd4: $0f
    ld a, [hl+]                                   ; $6bd5: $2a
    sub l                                         ; $6bd6: $95
    add a                                         ; $6bd7: $87
    add hl, hl                                    ; $6bd8: $29
    xor a                                         ; $6bd9: $af
    call $9694                                    ; $6bda: $cd $94 $96
    sbc l                                         ; $6bdd: $9d
    ld c, [hl]                                    ; $6bde: $4e
    jp nc, Jump_000_2393                          ; $6bdf: $d2 $93 $23

    inc c                                         ; $6be2: $0c
    dec a                                         ; $6be3: $3d
    jp z, Jump_02a_52af                           ; $6be4: $ca $af $52

    ld h, c                                       ; $6be7: $61
    or b                                          ; $6be8: $b0
    ld c, d                                       ; $6be9: $4a
    ld e, [hl]                                    ; $6bea: $5e
    db $fd                                        ; $6beb: $fd
    and a                                         ; $6bec: $a7
    dec sp                                        ; $6bed: $3b
    ld a, $23                                     ; $6bee: $3e $23
    ld a, e                                       ; $6bf0: $7b
    ld e, d                                       ; $6bf1: $5a
    dec bc                                        ; $6bf2: $0b
    ld e, l                                       ; $6bf3: $5d
    xor a                                         ; $6bf4: $af
    jp z, $a8bc                                   ; $6bf5: $ca $bc $a8

    xor a                                         ; $6bf8: $af
    cp d                                          ; $6bf9: $ba

Call_02a_6bfa:
    ld d, d                                       ; $6bfa: $52
    push bc                                       ; $6bfb: $c5
    add a                                         ; $6bfc: $87

jr_02a_6bfd:
    add hl, hl                                    ; $6bfd: $29
    db $ed                                        ; $6bfe: $ed
    jp hl                                         ; $6bff: $e9


    jp $06a6                                      ; $6c00: $c3 $a6 $06


    dec hl                                        ; $6c03: $2b
    xor a                                         ; $6c04: $af
    adc h                                         ; $6c05: $8c
    dec sp                                        ; $6c06: $3b
    halt                                          ; $6c07: $76
    pop bc                                        ; $6c08: $c1
    ld b, l                                       ; $6c09: $45
    dec hl                                        ; $6c0a: $2b
    cp a                                          ; $6c0b: $bf
    inc d                                         ; $6c0c: $14
    db $ec                                        ; $6c0d: $ec
    ld a, [hl-]                                   ; $6c0e: $3a
    jp nz, $ca3d                                  ; $6c0f: $c2 $3d $ca

    add l                                         ; $6c12: $85
    ld d, l                                       ; $6c13: $55
    ld a, [hl+]                                   ; $6c14: $2a
    inc c                                         ; $6c15: $0c
    ld d, $a8                                     ; $6c16: $16 $a8
    push af                                       ; $6c18: $f5
    rst $10                                       ; $6c19: $d7
    and h                                         ; $6c1a: $a4
    sbc c                                         ; $6c1b: $99
    xor [hl]                                      ; $6c1c: $ae
    ld [hl], e                                    ; $6c1d: $73
    cp a                                          ; $6c1e: $bf
    ld a, [$bda5]                                 ; $6c1f: $fa $a5 $bd
    ld c, d                                       ; $6c22: $4a
    adc c                                         ; $6c23: $89
    dec [hl]                                      ; $6c24: $35
    ld e, l                                       ; $6c25: $5d
    jr nc, @+$3f                                  ; $6c26: $30 $3d

    jp z, Jump_02a_52af                           ; $6c28: $ca $af $52

    ld h, c                                       ; $6c2b: $61
    or b                                          ; $6c2c: $b0
    and d                                         ; $6c2d: $a2
    sub $df                                       ; $6c2e: $d6 $df
    and l                                         ; $6c30: $a5
    ld c, d                                       ; $6c31: $4a
    ld e, [hl]                                    ; $6c32: $5e
    pop hl                                        ; $6c33: $e1
    reti                                          ; $6c34: $d9


    cp h                                          ; $6c35: $bc
    db $fc                                        ; $6c36: $fc
    sbc [hl]                                      ; $6c37: $9e
    ld b, e                                       ; $6c38: $43
    rst $20                                       ; $6c39: $e7
    push hl                                       ; $6c3a: $e5
    ld a, $55                                     ; $6c3b: $3e $55
    cp a                                          ; $6c3d: $bf
    ld c, [hl]                                    ; $6c3e: $4e
    ld e, [hl]                                    ; $6c3f: $5e
    ld [hl], d                                    ; $6c40: $72
    ld e, b                                       ; $6c41: $58
    sub e                                         ; $6c42: $93
    ld h, [hl]                                    ; $6c43: $66
    db $fc                                        ; $6c44: $fc
    adc l                                         ; $6c45: $8d
    ld [hl], c                                    ; $6c46: $71
    ld a, [c]                                     ; $6c47: $f2
    push de                                       ; $6c48: $d5
    ld e, a                                       ; $6c49: $5f
    db $eb                                        ; $6c4a: $eb
    rst $28                                       ; $6c4b: $ef
    jp c, $d26b                                   ; $6c4c: $da $6b $d2

    adc h                                         ; $6c4f: $8c
    cp a                                          ; $6c50: $bf
    inc [hl]                                      ; $6c51: $34
    cpl                                           ; $6c52: $2f
    rla                                           ; $6c53: $17
    or $54                                        ; $6c54: $f6 $54
    and l                                         ; $6c56: $a5
    ld hl, $e97f                                  ; $6c57: $21 $7f $e9

jr_02a_6c5a:
    add d                                         ; $6c5a: $82
    ld bc, $ca3d                                  ; $6c5b: $01 $3d $ca
    xor a                                         ; $6c5e: $af
    ld d, d                                       ; $6c5f: $52
    ld h, c                                       ; $6c60: $61
    or b                                          ; $6c61: $b0
    ld c, d                                       ; $6c62: $4a
    xor c                                         ; $6c63: $a9
    ld a, [$2f38]                                 ; $6c64: $fa $38 $2f
    cp a                                          ; $6c67: $bf
    or a                                          ; $6c68: $b7
    db $ed                                        ; $6c69: $ed
    xor a                                         ; $6c6a: $af
    inc e                                         ; $6c6b: $1c
    sub [hl]                                      ; $6c6c: $96
    or $94                                        ; $6c6d: $f6 $94
    sbc d                                         ; $6c6f: $9a
    ld [hl], l                                    ; $6c70: $75
    ld a, [c]                                     ; $6c71: $f2
    ld b, d                                       ; $6c72: $42
    jp nc, $5dd4                                  ; $6c73: $d2 $d4 $5d

    xor e                                         ; $6c76: $ab
    ld a, [hl-]                                   ; $6c77: $3a
    adc h                                         ; $6c78: $8c
    add hl, de                                    ; $6c79: $19
    cp c                                          ; $6c7a: $b9
    inc d                                         ; $6c7b: $14
    call z, $85cb                                 ; $6c7c: $cc $cb $85
    dec a                                         ; $6c7f: $3d
    ld d, l                                       ; $6c80: $55
    ld l, c                                       ; $6c81: $69
    ret z                                         ; $6c82: $c8

    ld e, a                                       ; $6c83: $5f
    cp d                                          ; $6c84: $ba
    ld h, b                                       ; $6c85: $60
    dec a                                         ; $6c86: $3d
    jp z, Jump_02a_52af                           ; $6c87: $ca $af $52

    ld h, c                                       ; $6c8a: $61
    or b                                          ; $6c8b: $b0
    ld c, d                                       ; $6c8c: $4a
    xor c                                         ; $6c8d: $a9
    ld a, [$a538]                                 ; $6c8e: $fa $38 $a5
    ld h, [hl]                                    ; $6c91: $66
    sub l                                         ; $6c92: $95
    ld de, $9878                                  ; $6c93: $11 $78 $98
    rla                                           ; $6c96: $17
    push af                                       ; $6c97: $f5
    add l                                         ; $6c98: $85
    scf                                           ; $6c99: $37
    jr z, jr_02a_6c5a                             ; $6c9a: $28 $be

    and d                                         ; $6c9c: $a2
    sub $5f                                       ; $6c9d: $d6 $5f
    ei                                            ; $6c9f: $fb
    sbc a                                         ; $6ca0: $9f
    sub [hl]                                      ; $6ca1: $96
    or h                                          ; $6ca2: $b4
    ld h, $4d                                     ; $6ca3: $26 $4d
    rla                                           ; $6ca5: $17
    inc c                                         ; $6ca6: $0c
    dec a                                         ; $6ca7: $3d
    jp z, Jump_02a_52af                           ; $6ca8: $ca $af $52

    ld h, c                                       ; $6cab: $61
    or b                                          ; $6cac: $b0
    and d                                         ; $6cad: $a2
    sub $5f                                       ; $6cae: $d6 $5f
    xor b                                         ; $6cb0: $a8
    db $ec                                        ; $6cb1: $ec
    rst $10                                       ; $6cb2: $d7
    and h                                         ; $6cb3: $a4
    ld e, c                                       ; $6cb4: $59
    ld d, c                                       ; $6cb5: $51
    ld h, c                                       ; $6cb6: $61
    cpl                                           ; $6cb7: $2f
    di                                            ; $6cb8: $f3
    sbc h                                         ; $6cb9: $9c
    cp d                                          ; $6cba: $ba
    ld l, e                                       ; $6cbb: $6b
    ld d, l                                       ; $6cbc: $55
    rst $28                                       ; $6cbd: $ef
    add d                                         ; $6cbe: $82
    ld bc, $ca3d                                  ; $6cbf: $01 $3d $ca
    xor a                                         ; $6cc2: $af
    ld d, d                                       ; $6cc3: $52
    ld h, c                                       ; $6cc4: $61

jr_02a_6cc5:
    jr nc, jr_02a_6cc5                            ; $6cc5: $30 $fe

    add $38                                       ; $6cc7: $c6 $38
    or $76                                        ; $6cc9: $f6 $76
    db $fc                                        ; $6ccb: $fc
    jp z, Jump_02a_51d7                           ; $6ccc: $ca $d7 $51

    pop af                                        ; $6ccf: $f1
    and l                                         ; $6cd0: $a5
    dec a                                         ; $6cd1: $3d
    cpl                                           ; $6cd2: $2f
    ccf                                           ; $6cd3: $3f
    and [hl]                                      ; $6cd4: $a6
    and c                                         ; $6cd5: $a1
    ld b, $3f                                     ; $6cd6: $06 $3f
    ld e, e                                       ; $6cd8: $5b
    ld [hl-], a                                   ; $6cd9: $32
    sbc h                                         ; $6cda: $9c
    ld d, d                                       ; $6cdb: $52
    or e                                          ; $6cdc: $b3
    ld c, [hl]                                    ; $6cdd: $4e
    ld l, c                                       ; $6cde: $69
    ldh [rRP], a                                  ; $6cdf: $e0 $56
    ld a, [de]                                    ; $6ce1: $1a
    sub a                                         ; $6ce2: $97
    or d                                          ; $6ce3: $b2
    ld d, b                                       ; $6ce4: $50
    add e                                         ; $6ce5: $83
    ld e, e                                       ; $6ce6: $5b
    ld l, c                                       ; $6ce7: $69
    sbc h                                         ; $6ce8: $9c
    cp d                                          ; $6ce9: $ba
    ld l, e                                       ; $6cea: $6b
    ld d, l                                       ; $6ceb: $55
    add a                                         ; $6cec: $87
    ld l, $18                                     ; $6ced: $2e $18
    cp l                                          ; $6cef: $bd
    jp nc, $fecc                                  ; $6cf0: $d2 $cc $fe

    adc a                                         ; $6cf3: $8f
    inc bc                                        ; $6cf4: $03
    sub a                                         ; $6cf5: $97
    and h                                         ; $6cf6: $a4
    ldh [rTIMA], a                                ; $6cf7: $e0 $05
    xor l                                         ; $6cf9: $ad
    ld d, a                                       ; $6cfa: $57
    sbc d                                         ; $6cfb: $9a
    ld a, c                                       ; $6cfc: $79
    cp c                                          ; $6cfd: $b9
    ld d, h                                       ; $6cfe: $54
    ld e, a                                       ; $6cff: $5f
    sub e                                         ; $6d00: $93
    ld b, [hl]                                    ; $6d01: $46
    halt                                          ; $6d02: $76
    ld e, h                                       ; $6d03: $5c
    cp h                                          ; $6d04: $bc
    sbc l                                         ; $6d05: $9d
    daa                                           ; $6d06: $27
    sub [hl]                                      ; $6d07: $96
    add e                                         ; $6d08: $83
    adc $c7                                       ; $6d09: $ce $c7
    cp b                                          ; $6d0b: $b8
    ldh a, [rTMA]                                 ; $6d0c: $f0 $06
    push bc                                       ; $6d0e: $c5
    rst $10                                       ; $6d0f: $d7
    cp $85                                        ; $6d10: $fe $85
    add hl, hl                                    ; $6d12: $29
    cp a                                          ; $6d13: $bf
    ld c, [hl]                                    ; $6d14: $4e
    ld a, [c]                                     ; $6d15: $f2
    cpl                                           ; $6d16: $2f
    or [hl]                                       ; $6d17: $b6
    adc c                                         ; $6d18: $89
    and e                                         ; $6d19: $a3
    db $e4                                        ; $6d1a: $e4
    ld de, $3d06                                  ; $6d1b: $11 $06 $3d
    jp z, Jump_02a_52af                           ; $6d1e: $ca $af $52

    ld h, c                                       ; $6d21: $61
    or b                                          ; $6d22: $b0
    ld c, d                                       ; $6d23: $4a
    ld e, [hl]                                    ; $6d24: $5e
    db $fd                                        ; $6d25: $fd
    reti                                          ; $6d26: $d9


    sbc h                                         ; $6d27: $9c
    rst $08                                       ; $6d28: $cf
    ld [hl], l                                    ; $6d29: $75
    adc d                                         ; $6d2a: $8a
    sub d                                         ; $6d2b: $92
    ld h, a                                       ; $6d2c: $67
    ret c                                         ; $6d2d: $d8

    ld [hl], a                                    ; $6d2e: $77
    cp h                                          ; $6d2f: $bc
    push af                                       ; $6d30: $f5
    ld e, a                                       ; $6d31: $5f
    sub l                                         ; $6d32: $95
    sbc l                                         ; $6d33: $9d
    ei                                            ; $6d34: $fb
    or b                                          ; $6d35: $b0
    or h                                          ; $6d36: $b4
    rst $10                                       ; $6d37: $d7
    and h                                         ; $6d38: $a4
    jp hl                                         ; $6d39: $e9


    or d                                          ; $6d3a: $b2
    push af                                       ; $6d3b: $f5
    ld c, d                                       ; $6d3c: $4a
    inc hl                                        ; $6d3d: $23
    ld a, e                                       ; $6d3e: $7b
    ld a, [$19b0]                                 ; $6d3f: $fa $b0 $19
    db $fc                                        ; $6d42: $fc
    add a                                         ; $6d43: $87
    jr nc, jr_02a_6dbc                            ; $6d44: $30 $76

    pop bc                                        ; $6d46: $c1
    ld b, l                                       ; $6d47: $45
    dec hl                                        ; $6d48: $2b
    ld a, a                                       ; $6d49: $7f
    or [hl]                                       ; $6d4a: $b6
    halt                                          ; $6d4b: $76
    inc sp                                        ; $6d4c: $33
    cpl                                           ; $6d4d: $2f
    rra                                           ; $6d4e: $1f
    ld [hl+], a                                   ; $6d4f: $22
    inc c                                         ; $6d50: $0c
    dec a                                         ; $6d51: $3d
    jp z, Jump_02a_52af                           ; $6d52: $ca $af $52

    ld h, c                                       ; $6d55: $61
    jr nc, @+$78                                  ; $6d56: $30 $76

    add hl, de                                    ; $6d58: $19
    push de                                       ; $6d59: $d5
    ld a, h                                       ; $6d5a: $7c
    ldh a, [$1f]                                  ; $6d5b: $f0 $1f
    adc $73                                       ; $6d5d: $ce $73
    inc l                                         ; $6d5f: $2c
    and a                                         ; $6d60: $a7
    call nc, $b978                                ; $6d61: $d4 $78 $b9
    inc d                                         ; $6d64: $14
    call z, $4d73                                 ; $6d65: $cc $73 $4d
    ld a, [de]                                    ; $6d68: $1a
    or h                                          ; $6d69: $b4
    and e                                         ; $6d6a: $a3
    adc l                                         ; $6d6b: $8d
    xor a                                         ; $6d6c: $af
    ld c, c                                       ; $6d6d: $49
    inc hl                                        ; $6d6e: $23
    ld a, e                                       ; $6d6f: $7b
    ld a, [$59b0]                                 ; $6d70: $fa $b0 $59
    call z, $c3ac                                 ; $6d73: $cc $ac $c3
    ld [hl], h                                    ; $6d76: $74
    db $ed                                        ; $6d77: $ed
    db $eb                                        ; $6d78: $eb
    inc bc                                        ; $6d79: $03
    sub a                                         ; $6d7a: $97
    and h                                         ; $6d7b: $a4
    ldh [rTIMA], a                                ; $6d7c: $e0 $05
    ld h, c                                       ; $6d7e: $61
    dec a                                         ; $6d7f: $3d
    jp z, Jump_02a_52af                           ; $6d80: $ca $af $52

    ld h, c                                       ; $6d83: $61
    or b                                          ; $6d84: $b0
    adc [hl]                                      ; $6d85: $8e
    pop af                                        ; $6d86: $f1
    dec [hl]                                      ; $6d87: $35
    ld l, c                                       ; $6d88: $69
    ld h, h                                       ; $6d89: $64
    reti                                          ; $6d8a: $d9


    jp hl                                         ; $6d8b: $e9


    inc h                                         ; $6d8c: $24

jr_02a_6d8d:
    dec a                                         ; $6d8d: $3d
    add hl, sp                                    ; $6d8e: $39
    call z, $1073                                 ; $6d8f: $cc $73 $10
    rst $38                                       ; $6d92: $ff
    dec sp                                        ; $6d93: $3b
    ld e, l                                       ; $6d94: $5d
    halt                                          ; $6d95: $76
    adc d                                         ; $6d96: $8a
    cp d                                          ; $6d97: $ba
    ld de, $b18d                                  ; $6d98: $11 $8d $b1
    pop hl                                        ; $6d9b: $e1
    adc $cb                                       ; $6d9c: $ce $cb
    scf                                           ; $6d9e: $37
    xor e                                         ; $6d9f: $ab
    sub h                                         ; $6da0: $94
    ld l, d                                       ; $6da1: $6a
    ld a, $75                                     ; $6da2: $3e $75
    rst $10                                       ; $6da4: $d7
    xor d                                         ; $6da5: $aa
    ld a, $be                                     ; $6da6: $3e $be
    call c, Call_000_03f8                         ; $6da8: $dc $f8 $03
    jp z, Jump_02a_78e4                           ; $6dab: $ca $e4 $78

    add hl, hl                                    ; $6dae: $29
    ld b, b                                       ; $6daf: $40
    jr jr_02a_6def                                ; $6db0: $18 $3d

    jp z, Jump_02a_52af                           ; $6db2: $ca $af $52

    ld h, c                                       ; $6db5: $61
    jr nc, jr_02a_6def                            ; $6db6: $30 $37

    ld b, d                                       ; $6db8: $42
    rst $08                                       ; $6db9: $cf
    ld b, $19                                     ; $6dba: $06 $19

jr_02a_6dbc:
    cp [hl]                                       ; $6dbc: $be
    sub a                                         ; $6dbd: $97
    ld c, e                                       ; $6dbe: $4b
    pop bc                                        ; $6dbf: $c1
    ld l, $ad                                     ; $6dc0: $2e $ad
    ld c, c                                       ; $6dc2: $49
    inc hl                                        ; $6dc3: $23
    cp e                                          ; $6dc4: $bb
    ld h, h                                       ; $6dc5: $64
    ld a, l                                       ; $6dc6: $7d
    ld a, [c]                                     ; $6dc7: $f2
    sub h                                         ; $6dc8: $94
    ld h, [hl]                                    ; $6dc9: $66
    sub a                                         ; $6dca: $97
    inc a                                         ; $6dcb: $3c
    ld de, $4a42                                  ; $6dcc: $11 $42 $4a
    ld c, e                                       ; $6dcf: $4b
    ld [hl], b                                    ; $6dd0: $70
    cp c                                          ; $6dd1: $b9
    ld d, l                                       ; $6dd2: $55
    sbc c                                         ; $6dd3: $99
    db $fd                                        ; $6dd4: $fd
    ld [$a5e5], a                                 ; $6dd5: $ea $e5 $a5
    ld l, e                                       ; $6dd8: $6b
    rla                                           ; $6dd9: $17
    inc c                                         ; $6dda: $0c
    dec a                                         ; $6ddb: $3d
    jp z, Jump_02a_52af                           ; $6ddc: $ca $af $52

    ld h, c                                       ; $6ddf: $61
    or b                                          ; $6de0: $b0
    and d                                         ; $6de1: $a2
    sub $df                                       ; $6de2: $d6 $df
    and l                                         ; $6de4: $a5
    ld c, d                                       ; $6de5: $4a
    ld e, [hl]                                    ; $6de6: $5e
    pop hl                                        ; $6de7: $e1
    reti                                          ; $6de8: $d9


    cp h                                          ; $6de9: $bc
    db $fc                                        ; $6dea: $fc
    sbc b                                         ; $6deb: $98
    add [hl]                                      ; $6dec: $86
    ld a, [de]                                    ; $6ded: $1a
    db $fc                                        ; $6dee: $fc

jr_02a_6def:
    sbc d                                         ; $6def: $9a
    inc [hl]                                      ; $6df0: $34
    ld [hl-], a                                   ; $6df1: $32
    add sp, $7c                                   ; $6df2: $e8 $7c
    adc h                                         ; $6df4: $8c
    jr nc, jr_02a_6d8d                            ; $6df5: $30 $96

    cp e                                          ; $6df7: $bb
    inc [hl]                                      ; $6df8: $34
    cpl                                           ; $6df9: $2f
    rla                                           ; $6dfa: $17
    or $54                                        ; $6dfb: $f6 $54
    and l                                         ; $6dfd: $a5
    ld hl, $e97f                                  ; $6dfe: $21 $7f $e9
    add d                                         ; $6e01: $82
    ld bc, $ca3d                                  ; $6e02: $01 $3d $ca
    xor a                                         ; $6e05: $af
    ld d, d                                       ; $6e06: $52
    ld h, c                                       ; $6e07: $61
    or b                                          ; $6e08: $b0
    and d                                         ; $6e09: $a2
    sub $5f                                       ; $6e0a: $d6 $5f
    xor b                                         ; $6e0c: $a8
    db $ec                                        ; $6e0d: $ec
    rst $10                                       ; $6e0e: $d7
    and h                                         ; $6e0f: $a4
    reti                                          ; $6e10: $d9


    dec c                                         ; $6e11: $0d
    ld b, e                                       ; $6e12: $43
    ld b, e                                       ; $6e13: $43
    ccf                                           ; $6e14: $3f
    rst $08                                       ; $6e15: $cf
    ld [hl], l                                    ; $6e16: $75
    ld a, [c]                                     ; $6e17: $f2
    ld b, d                                       ; $6e18: $42
    ld [de], a                                    ; $6e19: $12
    ld [hl], a                                    ; $6e1a: $77
    halt                                          ; $6e1b: $76
    jp z, $5cbc                                   ; $6e1c: $ca $bc $5c

    ret c                                         ; $6e1f: $d8

jr_02a_6e20:
    ld d, e                                       ; $6e20: $53
    sub l                                         ; $6e21: $95
    add [hl]                                      ; $6e22: $86
    db $fc                                        ; $6e23: $fc
    ld h, l                                       ; $6e24: $65
    ld c, c                                       ; $6e25: $49
    or c                                          ; $6e26: $b1
    ld b, c                                       ; $6e27: $41
    jr jr_02a_6e67                                ; $6e28: $18 $3d

    jp z, Jump_02a_52af                           ; $6e2a: $ca $af $52

    ld h, c                                       ; $6e2d: $61
    or b                                          ; $6e2e: $b0
    ld c, d                                       ; $6e2f: $4a
    ld e, [hl]                                    ; $6e30: $5e
    db $fd                                        ; $6e31: $fd
    and a                                         ; $6e32: $a7
    di                                            ; $6e33: $f3
    rla                                           ; $6e34: $17
    cp c                                          ; $6e35: $b9
    halt                                          ; $6e36: $76
    ld [hl], e                                    ; $6e37: $73
    add hl, hl                                    ; $6e38: $29
    jr jr_02a_6e20                                ; $6e39: $18 $e5

    add l                                         ; $6e3b: $85
    sbc a                                         ; $6e3c: $9f
    rla                                           ; $6e3d: $17
    push af                                       ; $6e3e: $f5
    ld d, l                                       ; $6e3f: $55
    ld l, d                                       ; $6e40: $6a
    ldh [$61], a                                  ; $6e41: $e0 $61
    ld c, c                                       ; $6e43: $49
    cp a                                          ; $6e44: $bf
    db $ec                                        ; $6e45: $ec
    ld [hl], h                                    ; $6e46: $74
    sub d                                         ; $6e47: $92
    sbc [hl]                                      ; $6e48: $9e
    ld a, h                                       ; $6e49: $7c
    sbc [hl]                                      ; $6e4a: $9e
    or e                                          ; $6e4b: $b3
    db $e3                                        ; $6e4c: $e3
    ccf                                           ; $6e4d: $3f
    jp nz, $ca3d                                  ; $6e4e: $c2 $3d $ca

    xor a                                         ; $6e51: $af
    ld d, d                                       ; $6e52: $52
    ld h, c                                       ; $6e53: $61
    or b                                          ; $6e54: $b0
    ld c, d                                       ; $6e55: $4a
    ld e, [hl]                                    ; $6e56: $5e
    db $fd                                        ; $6e57: $fd
    rla                                           ; $6e58: $17
    ld a, [de]                                    ; $6e59: $1a
    cp b                                          ; $6e5a: $b8
    push de                                       ; $6e5b: $d5
    cp h                                          ; $6e5c: $bc
    xor b                                         ; $6e5d: $a8
    adc a                                         ; $6e5e: $8f
    ld e, l                                       ; $6e5f: $5d
    ld [hl], b                                    ; $6e60: $70
    pop de                                        ; $6e61: $d1
    jp z, $d961                                   ; $6e62: $ca $61 $d9

    jp hl                                         ; $6e65: $e9


    inc h                                         ; $6e66: $24

jr_02a_6e67:
    dec a                                         ; $6e67: $3d
    add hl, sp                                    ; $6e68: $39
    ld [hl], b                                    ; $6e69: $70
    rla                                           ; $6e6a: $17
    ld l, d                                       ; $6e6b: $6a
    db $fd                                        ; $6e6c: $fd
    ld d, d                                       ; $6e6d: $52
    jr nc, @+$31                                  ; $6e6e: $30 $2f

    rra                                           ; $6e70: $1f
    ld l, $26                                     ; $6e71: $2e $26
    db $fc                                        ; $6e73: $fc
    ld [hl], h                                    ; $6e74: $74
    ld l, [hl]                                    ; $6e75: $6e
    add h                                         ; $6e76: $84
    db $10                                        ; $6e77: $10
    ld b, $3d                                     ; $6e78: $06 $3d
    jp z, Jump_02a_52af                           ; $6e7a: $ca $af $52

    ld h, c                                       ; $6e7d: $61
    or b                                          ; $6e7e: $b0
    ld c, d                                       ; $6e7f: $4a
    ld e, [hl]                                    ; $6e80: $5e
    db $fd                                        ; $6e81: $fd
    rlca                                          ; $6e82: $07
    sbc c                                         ; $6e83: $99
    ld e, [hl]                                    ; $6e84: $5e
    ld l, $05                                     ; $6e85: $2e $05
    dec bc                                        ; $6e87: $0b
    dec c                                         ; $6e88: $0d
    call c, Call_02a_5e6a                         ; $6e89: $dc $6a $5e
    call nc, $4d17                                ; $6e8c: $d4 $17 $4d
    adc h                                         ; $6e8f: $8c
    or b                                          ; $6e90: $b0
    and h                                         ; $6e91: $a4
    rst $18                                       ; $6e92: $df
    db $d3                                        ; $6e93: $d3
    add a                                         ; $6e94: $87
    call $073c                                    ; $6e95: $cd $3c $07
    pop af                                        ; $6e98: $f1
    cp a                                          ; $6e99: $bf
    add e                                         ; $6e9a: $83
    jr nc, jr_02a_6eda                            ; $6e9b: $30 $3d

    jp z, Jump_02a_52af                           ; $6e9d: $ca $af $52

    ld h, c                                       ; $6ea0: $61
    or b                                          ; $6ea1: $b0
    ld c, d                                       ; $6ea2: $4a
    ld e, [hl]                                    ; $6ea3: $5e
    db $fd                                        ; $6ea4: $fd
    reti                                          ; $6ea5: $d9


    ld b, d                                       ; $6ea6: $42
    dec c                                         ; $6ea7: $0d
    ld l, [hl]                                    ; $6ea8: $6e
    and l                                         ; $6ea9: $a5
    ld [hl], c                                    ; $6eaa: $71
    halt                                          ; $6eab: $76
    ld c, h                                       ; $6eac: $4c
    cp $05                                        ; $6ead: $fe $05
    cp d                                          ; $6eaf: $ba
    db $ec                                        ; $6eb0: $ec
    jr z, jr_02a_6f15                             ; $6eb1: $28 $62

    di                                            ; $6eb3: $f3
    ld a, [c]                                     ; $6eb4: $f2
    call $2fc0                                    ; $6eb5: $cd $c0 $2f
    push de                                       ; $6eb8: $d5
    cp e                                          ; $6eb9: $bb
    xor h                                         ; $6eba: $ac
    ld d, a                                       ; $6ebb: $57
    sbc d                                         ; $6ebc: $9a
    reti                                          ; $6ebd: $d9


    rst $38                                       ; $6ebe: $ff
    ld [hl], c                                    ; $6ebf: $71
    ld a, [de]                                    ; $6ec0: $1a
    push hl                                       ; $6ec1: $e5
    ld b, $c5                                     ; $6ec2: $06 $c5
    cp c                                          ; $6ec4: $b9
    ld l, e                                       ; $6ec5: $6b
    dec de                                        ; $6ec6: $1b
    ld e, a                                       ; $6ec7: $5f
    sub e                                         ; $6ec8: $93
    ld b, [hl]                                    ; $6ec9: $46
    sub [hl]                                      ; $6eca: $96
    sbc l                                         ; $6ecb: $9d
    ld c, [hl]                                    ; $6ecc: $4e
    jp nc, $c393                                  ; $6ecd: $d2 $93 $c3

    ld h, d                                       ; $6ed0: $62
    ld h, [hl]                                    ; $6ed1: $66
    ld a, l                                       ; $6ed2: $7d
    ld [hl], b                                    ; $6ed3: $70
    xor e                                         ; $6ed4: $ab
    ld a, [hl-]                                   ; $6ed5: $3a

jr_02a_6ed6:
    jp nz, $ca3d                                  ; $6ed6: $c2 $3d $ca

    xor a                                         ; $6ed9: $af

jr_02a_6eda:
    ld d, d                                       ; $6eda: $52
    ld h, c                                       ; $6edb: $61
    jr nc, jr_02a_6ed6                            ; $6edc: $30 $f8

    rrca                                          ; $6ede: $0f
    rst $20                                       ; $6edf: $e7
    cp c                                          ; $6ee0: $b9
    and d                                         ; $6ee1: $a2
    sub $1f                                       ; $6ee2: $d6 $1f
    call nz, $9fe4                                ; $6ee4: $c4 $e4 $9f
    adc l                                         ; $6ee7: $8d
    dec h                                         ; $6ee8: $25
    ld c, a                                       ; $6ee9: $4f

jr_02a_6eea:
    ld l, e                                       ; $6eea: $6b
    jp nc, $b2c8                                  ; $6eeb: $d2 $c8 $b2

    db $d3                                        ; $6eee: $d3
    ld c, c                                       ; $6eef: $49
    ld a, d                                       ; $6ef0: $7a
    ld [hl], d                                    ; $6ef1: $72
    add sp, -$7e                                  ; $6ef2: $e8 $82
    ld bc, $d2bd                                  ; $6ef4: $01 $bd $d2
    ld c, h                                       ; $6ef7: $4c
    push hl                                       ; $6ef8: $e5
    rla                                           ; $6ef9: $17

jr_02a_6efa:
    and [hl]                                      ; $6efa: $a6
    push af                                       ; $6efb: $f5
    ld d, d                                       ; $6efc: $52
    jr nc, jr_02a_6eea                            ; $6efd: $30 $eb

    ld c, e                                       ; $6eff: $4b
    inc sp                                        ; $6f00: $33
    adc b                                         ; $6f01: $88
    ret                                           ; $6f02: $c9


    rst $00                                       ; $6f03: $c7
    ld b, $ad                                     ; $6f04: $06 $ad
    ld b, a                                       ; $6f06: $47
    ld sp, hl                                     ; $6f07: $f9
    ld d, l                                       ; $6f08: $55
    ld a, [hl+]                                   ; $6f09: $2a
    inc c                                         ; $6f0a: $0c
    ld d, $1a                                     ; $6f0b: $16 $1a
    ldh a, [$15]                                  ; $6f0d: $f0 $15
    or l                                          ; $6f0f: $b5
    cp $2a                                        ; $6f10: $fe $2a
    dec [hl]                                      ; $6f12: $35
    ldh a, [$6c]                                  ; $6f13: $f0 $6c

jr_02a_6f15:
    ld e, [hl]                                    ; $6f15: $5e
    ld l, $74                                     ; $6f16: $2e $74
    pop bc                                        ; $6f18: $c1
    dec a                                         ; $6f19: $3d
    jp z, Jump_02a_52af                           ; $6f1a: $ca $af $52

    ld h, c                                       ; $6f1d: $61
    or b                                          ; $6f1e: $b0
    ld c, d                                       ; $6f1f: $4a
    ld e, [hl]                                    ; $6f20: $5e
    db $fd                                        ; $6f21: $fd
    reti                                          ; $6f22: $d9


    ld [hl], h                                    ; $6f23: $74
    db $ed                                        ; $6f24: $ed
    xor b                                         ; $6f25: $a8
    ldh [rWX], a                                  ; $6f26: $e0 $4b
    ld a, e                                       ; $6f28: $7b
    db $fc                                        ; $6f29: $fc
    dec h                                         ; $6f2a: $25
    ld [hl], $2f                                  ; $6f2b: $36 $2f
    ld [$c76b], a                                 ; $6f2d: $ea $6b $c7
    db $e4                                        ; $6f30: $e4
    ld h, c                                       ; $6f31: $61
    jp z, $336b                                   ; $6f32: $ca $6b $33

    and l                                         ; $6f35: $a5
    ld h, l                                       ; $6f36: $65
    and a                                         ; $6f37: $a7
    sub e                                         ; $6f38: $93
    db $f4                                        ; $6f39: $f4
    db $e4                                        ; $6f3a: $e4
    ld e, l                                       ; $6f3b: $5d
    jr nc, jr_02a_6f7b                            ; $6f3c: $30 $3d

    jp z, Jump_02a_52af                           ; $6f3e: $ca $af $52

    ld h, c                                       ; $6f41: $61
    jr nc, jr_02a_6f5b                            ; $6f42: $30 $17

    dec h                                         ; $6f44: $25
    or b                                          ; $6f45: $b0
    ld d, e                                       ; $6f46: $53
    jp nz, $5367                                  ; $6f47: $c2 $67 $53

    ld e, d                                       ; $6f4a: $5a
    halt                                          ; $6f4b: $76
    ld a, [hl-]                                   ; $6f4c: $3a
    ld c, c                                       ; $6f4d: $49
    ld c, a                                       ; $6f4e: $4f
    cp [hl]                                       ; $6f4f: $be
    ld c, e                                       ; $6f50: $4b
    sbc [hl]                                      ; $6f51: $9e
    ld [$c821], sp                                ; $6f52: $08 $21 $c8
    ldh a, [$bd]                                  ; $6f55: $f0 $bd
    ld e, h                                       ; $6f57: $5c
    ld a, [bc]                                    ; $6f58: $0a
    or $11                                        ; $6f59: $f6 $11

Jump_02a_6f5b:
jr_02a_6f5b:
    ld e, $61                                     ; $6f5b: $1e $61
    dec a                                         ; $6f5d: $3d
    jp z, Jump_02a_52af                           ; $6f5e: $ca $af $52

    ld h, c                                       ; $6f61: $61
    jr nc, jr_02a_6efa                            ; $6f62: $30 $96

    and [hl]                                      ; $6f64: $a6
    dec e                                         ; $6f65: $1d
    ld a, a                                       ; $6f66: $7f
    ld c, l                                       ; $6f67: $4d
    ld a, [de]                                    ; $6f68: $1a
    ld e, c                                       ; $6f69: $59
    ld c, e                                       ; $6f6a: $4b
    rst $30                                       ; $6f6b: $f7
    reti                                          ; $6f6c: $d9


    add hl, hl                                    ; $6f6d: $29
    di                                            ; $6f6e: $f3
    ld a, [c]                                     ; $6f6f: $f2
    ld h, e                                       ; $6f70: $63
    ld b, [hl]                                    ; $6f71: $46
    call nc, $d26f                                ; $6f72: $d4 $6f $d2
    jp nc, $979e                                  ; $6f75: $d2 $9e $97

    dec bc                                        ; $6f78: $0b
    ld a, e                                       ; $6f79: $7b
    xor d                                         ; $6f7a: $aa

jr_02a_6f7b:
    jp nc, $bf90                                  ; $6f7b: $d2 $90 $bf

    ld [hl], h                                    ; $6f7e: $74
    pop bc                                        ; $6f7f: $c1
    dec a                                         ; $6f80: $3d
    jp z, Jump_02a_52af                           ; $6f81: $ca $af $52

    ld h, c                                       ; $6f84: $61
    jr nc, jr_02a_7001                            ; $6f85: $30 $7a

    db $e3                                        ; $6f87: $e3
    and d                                         ; $6f88: $a2
    pop af                                        ; $6f89: $f1
    ld [hl], d                                    ; $6f8a: $72
    db $fc                                        ; $6f8b: $fc
    add hl, hl                                    ; $6f8c: $29
    dec [hl]                                      ; $6f8d: $35
    db $eb                                        ; $6f8e: $eb
    db $e4                                        ; $6f8f: $e4
    add l                                         ; $6f90: $85
    and h                                         ; $6f91: $a4
    and l                                         ; $6f92: $a5
    xor h                                         ; $6f93: $ac
    xor b                                         ; $6f94: $a8
    add h                                         ; $6f95: $84
    or [hl]                                       ; $6f96: $b6
    adc c                                         ; $6f97: $89
    dec bc                                        ; $6f98: $0b
    dec [hl]                                      ; $6f99: $35
    cp b                                          ; $6f9a: $b8
    push de                                       ; $6f9b: $d5
    cp h                                          ; $6f9c: $bc
    xor b                                         ; $6f9d: $a8
    cpl                                           ; $6f9e: $2f

Call_02a_6f9f:
    cp h                                          ; $6f9f: $bc
    ld b, c                                       ; $6fa0: $41
    pop af                                        ; $6fa1: $f1
    or l                                          ; $6fa2: $b5
    ld a, a                                       ; $6fa3: $7f
    ld l, d                                       ; $6fa4: $6a
    db $db                                        ; $6fa5: $db
    ld e, a                                       ; $6fa6: $5f
    ld sp, hl                                     ; $6fa7: $f9
    and l                                         ; $6fa8: $a5
    ld h, b                                       ; $6fa9: $60
    ld c, l                                       ; $6faa: $4d
    sbc d                                         ; $6fab: $9a
    ld l, $18                                     ; $6fac: $2e $18
    dec a                                         ; $6fae: $3d
    jp z, Jump_02a_52af                           ; $6faf: $ca $af $52

    ld h, c                                       ; $6fb2: $61
    or b                                          ; $6fb3: $b0
    ldh [$5a], a                                  ; $6fb4: $e0 $5a

Jump_02a_6fb6:
    ld a, a                                       ; $6fb6: $7f
    ld c, l                                       ; $6fb7: $4d
    sbc d                                         ; $6fb8: $9a
    jp hl                                         ; $6fb9: $e9


    jp c, $feef                                   ; $6fba: $da $ef $fe

    ld [hl-], a                                   ; $6fbd: $32
    ld a, b                                       ; $6fbe: $78
    add d                                         ; $6fbf: $82
    ld e, a                                       ; $6fc0: $5f
    jp c, $cbe3                                   ; $6fc1: $da $e3 $cb

    set 1, a                                      ; $6fc4: $cb $cf
    ld [hl], e                                    ; $6fc6: $73
    ld sp, $3eb3                                  ; $6fc7: $31 $b3 $3e
    dec sp                                        ; $6fca: $3b
    ld h, l                                       ; $6fcb: $65
    ld [hl], b                                    ; $6fcc: $70
    and e                                         ; $6fcd: $a3
    push af                                       ; $6fce: $f5
    ld h, l                                       ; $6fcf: $65
    ld [hl], b                                    ; $6fd0: $70
    xor e                                         ; $6fd1: $ab
    ld a, d                                       ; $6fd2: $7a
    ld a, h                                       ; $6fd3: $7c
    add sp, -$7e                                  ; $6fd4: $e8 $82
    ld bc, $ca3d                                  ; $6fd6: $01 $3d $ca
    xor a                                         ; $6fd9: $af
    ld d, d                                       ; $6fda: $52
    ld h, c                                       ; $6fdb: $61
    or b                                          ; $6fdc: $b0

Jump_02a_6fdd:
    ld c, d                                       ; $6fdd: $4a
    ld e, [hl]                                    ; $6fde: $5e
    db $fd                                        ; $6fdf: $fd
    and a                                         ; $6fe0: $a7
    xor e                                         ; $6fe1: $ab
    add l                                         ; $6fe2: $85
    ld c, c                                       ; $6fe3: $49
    ldh [$2f], a                                  ; $6fe4: $e0 $2f
    adc e                                         ; $6fe6: $8b
    ld b, [hl]                                    ; $6fe7: $46
    cp [hl]                                       ; $6fe8: $be
    add [hl]                                      ; $6fe9: $86
    halt                                          ; $6fea: $76
    ld e, h                                       ; $6feb: $5c
    jp z, Jump_02a_5074                           ; $6fec: $ca $74 $50

    ld d, d                                       ; $6fef: $52
    ld a, h                                       ; $6ff0: $7c
    ld a, [hl]                                    ; $6ff1: $7e
    jp $aee7                                      ; $6ff2: $c3 $e7 $ae


    ld c, c                                       ; $6ff5: $49
    ld d, e                                       ; $6ff6: $53
    adc e                                         ; $6ff7: $8b
    ld [hl], c                                    ; $6ff8: $71
    db $ed                                        ; $6ff9: $ed
    rst $18                                       ; $6ffa: $df
    and l                                         ; $6ffb: $a5
    add l                                         ; $6ffc: $85
    add hl, hl                                    ; $6ffd: $29
    cp a                                          ; $6ffe: $bf
    ld d, b                                       ; $6fff: $50
    add e                                         ; $7000: $83

jr_02a_7001:
    ld e, e                                       ; $7001: $5b
    ld l, c                                       ; $7002: $69
    call c, $9553                                 ; $7003: $dc $53 $95
    add [hl]                                      ; $7006: $86
    db $fc                                        ; $7007: $fc
    dec b                                         ; $7008: $05
    and $45                                       ; $7009: $e6 $45
    ld l, c                                       ; $700b: $69
    ld b, $8c                                     ; $700c: $06 $8c
    ld b, [hl]                                    ; $700e: $46
    add h                                         ; $700f: $84
    ld bc, $ca3d                                  ; $7010: $01 $3d $ca
    rst $08                                       ; $7013: $cf
    ld d, b                                       ; $7014: $50
    ld sp, hl                                     ; $7015: $f9
    ret c                                         ; $7016: $d8

    or c                                          ; $7017: $b1
    ld c, l                                       ; $7018: $4d
    ld e, h                                       ; $7019: $5c
    and l                                         ; $701a: $a5
    jp nz, $f060                                  ; $701b: $c2 $60 $f0

    call nz, $b4a6                                ; $701e: $c4 $a6 $b4
    db $ec                                        ; $7021: $ec
    ld [hl], h                                    ; $7022: $74
    sub d                                         ; $7023: $92
    sbc [hl]                                      ; $7024: $9e
    ld a, h                                       ; $7025: $7c
    cp d                                          ; $7026: $ba
    ld [hl], d                                    ; $7027: $72
    ret                                           ; $7028: $c9


    sub a                                         ; $7029: $97
    or $f8                                        ; $702a: $f6 $f8
    and d                                         ; $702c: $a2
    cp [hl]                                       ; $702d: $be
    ld h, $4d                                     ; $702e: $26 $4d
    dec l                                         ; $7030: $2d
    add $b1                                       ; $7031: $c6 $b1
    inc e                                         ; $7033: $1c
    dec a                                         ; $7034: $3d
    rlca                                          ; $7035: $07
    rst $20                                       ; $7036: $e7
    xor $86                                       ; $7037: $ee $86
    dec e                                         ; $7039: $1d
    ld c, c                                       ; $703a: $49
    db $eb                                        ; $703b: $eb
    and l                                         ; $703c: $a5
    ld h, b                                       ; $703d: $60
    ld e, [hl]                                    ; $703e: $5e
    cp $ca                                        ; $703f: $fe $ca
    ret c                                         ; $7041: $d8

    db $db                                        ; $7042: $db
    ld c, a                                       ; $7043: $4f
    push de                                       ; $7044: $d5
    inc hl                                        ; $7045: $23
    inc c                                         ; $7046: $0c
    dec a                                         ; $7047: $3d
    jp z, Jump_02a_52af                           ; $7048: $ca $af $52

    ld h, c                                       ; $704b: $61
    jr nc, jr_02a_70c7                            ; $704c: $30 $79

    db $eb                                        ; $704e: $eb

jr_02a_704f:
    ld l, e                                       ; $704f: $6b
    ld e, h                                       ; $7050: $5c
    sub e                                         ; $7051: $93
    ld b, [hl]                                    ; $7052: $46
    sub [hl]                                      ; $7053: $96
    sbc l                                         ; $7054: $9d
    ld c, [hl]                                    ; $7055: $4e
    jp nc, Jump_02a_4393                          ; $7056: $d2 $93 $43

    ld l, l                                       ; $7059: $6d
    db $fc                                        ; $705a: $fc
    ld l, e                                       ; $705b: $6b
    ld a, l                                       ; $705c: $7d
    ret nc                                        ; $705d: $d0

    ld c, c                                       ; $705e: $49
    sbc a                                         ; $705f: $9f
    rst $20                                       ; $7060: $e7
    sbc d                                         ; $7061: $9a
    inc [hl]                                      ; $7062: $34
    call c, $b129                                 ; $7063: $dc $29 $b1
    dec [hl]                                      ; $7066: $35
    ld l, c                                       ; $7067: $69
    and [hl]                                      ; $7068: $a6
    ld a, [c]                                     ; $7069: $f2
    ld l, e                                       ; $706a: $6b
    cp a                                          ; $706b: $bf
    ei                                            ; $706c: $fb
    res 6, h                                      ; $706d: $cb $b4
    dec e                                         ; $706f: $1d
    ld a, a                                       ; $7070: $7f
    sbc [hl]                                      ; $7071: $9e
    xor e                                         ; $7072: $ab
    inc d                                         ; $7073: $14
    ld a, h                                       ; $7074: $7c
    ret nc                                        ; $7075: $d0

    ld sp, hl                                     ; $7076: $f9
    jr jr_02a_70da                                ; $7077: $18 $61

    ld a, [de]                                    ; $7079: $1a
    add sp, $25                                   ; $707a: $e8 $25
    ldh a, [$79]                                  ; $707c: $f0 $79
    ld sp, hl                                     ; $707e: $f9
    db $10                                        ; $707f: $10
    ld h, c                                       ; $7080: $61
    dec a                                         ; $7081: $3d
    jp z, Jump_02a_52af                           ; $7082: $ca $af $52

    ld h, c                                       ; $7085: $61
    jr nc, jr_02a_7101                            ; $7086: $30 $79

    ldh a, [$94]                                  ; $7088: $f0 $94
    ld e, a                                       ; $708a: $5f
    sub e                                         ; $708b: $93
    ld b, [hl]                                    ; $708c: $46
    halt                                          ; $708d: $76
    ld [hl], d                                    ; $708e: $72
    rst $30                                       ; $708f: $f7
    ld a, c                                       ; $7090: $79
    ld l, $54                                     ; $7091: $2e $54
    ld c, $37                                     ; $7093: $0e $37
    inc [hl]                                      ; $7095: $34
    ld h, c                                       ; $7096: $61
    rla                                           ; $7097: $17
    inc c                                         ; $7098: $0c

jr_02a_7099:
    dec a                                         ; $7099: $3d
    jp z, Jump_02a_52af                           ; $709a: $ca $af $52

    ld h, c                                       ; $709d: $61
    jr nc, jr_02a_7099                            ; $709e: $30 $f9

    jr nc, jr_02a_704f                            ; $70a0: $30 $ad

    ccf                                           ; $70a2: $3f
    and l                                         ; $70a3: $a5
    ld h, [hl]                                    ; $70a4: $66
    and c                                         ; $70a5: $a1
    ld b, $b7                                     ; $70a6: $06 $b7
    jp nc, $b7b8                                  ; $70a8: $d2 $b8 $b7

    db $ed                                        ; $70ab: $ed
    xor a                                         ; $70ac: $af
    inc e                                         ; $70ad: $1c
    ld hl, $97c4                                  ; $70ae: $21 $c4 $97
    rst $30                                       ; $70b1: $f7
    ld a, [c]                                     ; $70b2: $f2
    or d                                          ; $70b3: $b2
    or $d3                                        ; $70b4: $f6 $d3
    db $db                                        ; $70b6: $db
    or a                                          ; $70b7: $b7
    cp d                                          ; $70b8: $ba
    ld a, [de]                                    ; $70b9: $1a
    sub a                                         ; $70ba: $97
    or d                                          ; $70bb: $b2
    and d                                         ; $70bc: $a2
    ld [de], a                                    ; $70bd: $12
    jp c, $2226                                   ; $70be: $da $26 $22

    add h                                         ; $70c1: $84
    sub $91                                       ; $70c2: $d6 $91
    or a                                          ; $70c4: $b7
    sbc $34                                       ; $70c5: $de $34

jr_02a_70c7:
    db $10                                        ; $70c7: $10
    sbc e                                         ; $70c8: $9b
    ld d, l                                       ; $70c9: $55
    ld a, [bc]                                    ; $70ca: $0a
    ld a, $d3                                     ; $70cb: $3e $d3
    ld c, c                                       ; $70cd: $49
    ld e, d                                       ; $70ce: $5a
    sub e                                         ; $70cf: $93
    ld b, $61                                     ; $70d0: $06 $61
    dec a                                         ; $70d2: $3d
    jp z, Jump_02a_52af                           ; $70d3: $ca $af $52

    ld h, c                                       ; $70d6: $61
    or b                                          ; $70d7: $b0
    ld a, [c]                                     ; $70d8: $f2

Jump_02a_70d9:
    ld a, [de]                                    ; $70d9: $1a

jr_02a_70da:
    and a                                         ; $70da: $a7
    ld sp, $49ae                                  ; $70db: $31 $ae $49
    inc hl                                        ; $70de: $23
    db $e3                                        ; $70df: $e3
    db $d3                                        ; $70e0: $d3
    db $10                                        ; $70e1: $10
    add e                                         ; $70e2: $83
    add hl, hl                                    ; $70e3: $29
    or c                                          ; $70e4: $b1
    ret                                           ; $70e5: $c9


    add e                                         ; $70e6: $83
    and a                                         ; $70e7: $a7
    db $fc                                        ; $70e8: $fc
    sbc d                                         ; $70e9: $9a
    inc [hl]                                      ; $70ea: $34
    or d                                          ; $70eb: $b2
    sub [hl]                                      ; $70ec: $96
    xor $f3                                       ; $70ed: $ee $f3
    ld e, h                                       ; $70ef: $5c
    xor b                                         ; $70f0: $a8
    inc e                                         ; $70f1: $1c
    ld l, [hl]                                    ; $70f2: $6e
    ld l, b                                       ; $70f3: $68
    jp nz, $182e                                  ; $70f4: $c2 $2e $18

    dec a                                         ; $70f7: $3d
    jp z, Jump_02a_52af                           ; $70f8: $ca $af $52

    ld h, c                                       ; $70fb: $61
    or b                                          ; $70fc: $b0
    and d                                         ; $70fd: $a2
    sub $5f                                       ; $70fe: $d6 $5f
    ld [hl], b                                    ; $7100: $70

jr_02a_7101:
    xor l                                         ; $7101: $ad
    ld c, a                                       ; $7102: $4f
    ld l, e                                       ; $7103: $6b
    jp nc, $8420                                  ; $7104: $d2 $20 $84

    sub h                                         ; $7107: $94
    ld h, [hl]                                    ; $7108: $66
    jp nz, Jump_02a_7cb6                          ; $7109: $c2 $b6 $7c

    adc h                                         ; $710c: $8c
    jp c, Jump_000_0bb5                           ; $710d: $da $b5 $0b

    ld b, $3d                                     ; $7110: $06 $3d
    jp z, Jump_02a_52af                           ; $7112: $ca $af $52

    ld h, c                                       ; $7115: $61
    or b                                          ; $7116: $b0
    ld d, b                                       ; $7117: $50
    reti                                          ; $7118: $d9


    xor a                                         ; $7119: $af
    ld c, c                                       ; $711a: $49
    inc sp                                        ; $711b: $33
    ld [$bc55], sp                                ; $711c: $08 $55 $bc
    bit 7, d                                      ; $711f: $cb $7a
    sub h                                         ; $7121: $94
    rra                                           ; $7122: $1f
    sbc c                                         ; $7123: $99
    or b                                          ; $7124: $b0
    db $fd                                        ; $7125: $fd
    or d                                          ; $7126: $b2
    or h                                          ; $7127: $b4
    ld [hl], a                                    ; $7128: $77
    ld [hl], d                                    ; $7129: $72
    rst $30                                       ; $712a: $f7
    pop de                                        ; $712b: $d1
    ccf                                           ; $712c: $3f
    ld a, e                                       ; $712d: $7b
    ld [hl], $cf                                  ; $712e: $36 $cf
    ld d, l                                       ; $7130: $55
    ld a, [bc]                                    ; $7131: $0a
    ld a, $e8                                     ; $7132: $3e $e8
    ld a, h                                       ; $7134: $7c
    adc h                                         ; $7135: $8c
    or b                                          ; $7136: $b0
    dec bc                                        ; $7137: $0b
    xor e                                         ; $7138: $ab
    adc h                                         ; $7139: $8c
    xor a                                         ; $713a: $af
    db $dd                                        ; $713b: $dd
    xor h                                         ; $713c: $ac
    ld l, b                                       ; $713d: $68
    or h                                          ; $713e: $b4
    cp e                                          ; $713f: $bb
    ld h, b                                       ; $7140: $60
    dec a                                         ; $7141: $3d
    jp z, Jump_02a_52af                           ; $7142: $ca $af $52

    ld h, c                                       ; $7145: $61
    or b                                          ; $7146: $b0
    and a                                         ; $7147: $a7
    xor d                                         ; $7148: $aa
    jr z, @-$05                                   ; $7149: $28 $f9

    sub h                                         ; $714b: $94
    sub [hl]                                      ; $714c: $96
    sbc l                                         ; $714d: $9d
    ld c, [hl]                                    ; $714e: $4e
    jp nc, Jump_000_0f93                          ; $714f: $d2 $93 $0f

    ld [hl], d                                    ; $7152: $72
    ld e, [hl]                                    ; $7153: $5e
    call nc, $e5e7                                ; $7154: $d4 $e7 $e5
    xor a                                         ; $7157: $af
    xor h                                         ; $7158: $ac
    ld d, e                                       ; $7159: $53
    ld a, [de]                                    ; $715a: $1a
    cp b                                          ; $715b: $b8
    sub l                                         ; $715c: $95
    add $a9                                       ; $715d: $c6 $a9
    cp e                                          ; $715f: $bb
    ld d, [hl]                                    ; $7160: $56
    ld [hl], l                                    ; $7161: $75
    jr jr_02a_71e3                                ; $7162: $18 $7f

    ld h, e                                       ; $7164: $63
    ld e, h                                       ; $7165: $5c
    ld a, c                                       ; $7166: $79
    adc l                                         ; $7167: $8d
    ld l, e                                       ; $7168: $6b
    jp nc, Jump_02a_4174                          ; $7169: $d2 $74 $41

    jr jr_02a_71ab                                ; $716c: $18 $3d

    jp z, Jump_02a_52af                           ; $716e: $ca $af $52

    ld h, c                                       ; $7171: $61
    or b                                          ; $7172: $b0
    ld c, e                                       ; $7173: $4b
    sub l                                         ; $7174: $95
    cp h                                          ; $7175: $bc
    jp nz, $35b3                                  ; $7176: $c2 $b3 $35

    ld l, c                                       ; $7179: $69
    ld h, h                                       ; $717a: $64
    pop af                                        ; $717b: $f1
    xor l                                         ; $717c: $ad
    rra                                           ; $717d: $1f

Jump_02a_717e:
    cp e                                          ; $717e: $bb
    xor h                                         ; $717f: $ac
    ld b, a                                       ; $7180: $47
    cp c                                          ; $7181: $b9
    or b                                          ; $7182: $b0
    ld a, [hl+]                                   ; $7183: $2a
    jp $25f6                                      ; $7184: $c3 $f6 $25


    push af                                       ; $7187: $f5
    sbc e                                         ; $7188: $9b
    inc [hl]                                      ; $7189: $34
    ld a, $a5                                     ; $718a: $3e $a5
    ld c, $4b                                     ; $718c: $0e $4b
    adc d                                         ; $718e: $8a
    call $aa92                                    ; $718f: $cd $92 $aa
    ld b, a                                       ; $7192: $47
    jr jr_02a_71d2                                ; $7193: $18 $3d

    jp z, Jump_02a_52af                           ; $7195: $ca $af $52

    ld h, c                                       ; $7198: $61
    or b                                          ; $7199: $b0
    ldh [$5a], a                                  ; $719a: $e0 $5a
    ld a, a                                       ; $719c: $7f
    ld c, l                                       ; $719d: $4d
    sbc d                                         ; $719e: $9a
    jp hl                                         ; $719f: $e9


    ld a, [hl-]                                   ; $71a0: $3a
    cpl                                           ; $71a1: $2f
    and c                                         ; $71a2: $a1
    jp nc, $ef93                                  ; $71a3: $d2 $93 $ef

    ld d, d                                       ; $71a6: $52
    dec h                                         ; $71a7: $25
    xor a                                         ; $71a8: $af
    ldh a, [$bb]                                  ; $71a9: $f0 $bb

jr_02a_71ab:
    or h                                          ; $71ab: $b4
    sub [hl]                                      ; $71ac: $96
    xor $5d                                       ; $71ad: $ee $5d
    sub $a3                                       ; $71af: $d6 $a3
    ld e, h                                       ; $71b1: $5c
    ld e, b                                       ; $71b2: $58
    sub l                                         ; $71b3: $95
    ld h, c                                       ; $71b4: $61
    ei                                            ; $71b5: $fb
    sub d                                         ; $71b6: $92
    ld a, [$1a4d]                                 ; $71b7: $fa $4d $1a
    sbc a                                         ; $71ba: $9f
    ld d, d                                       ; $71bb: $52
    add a                                         ; $71bc: $87
    dec h                                         ; $71bd: $25
    push bc                                       ; $71be: $c5
    ld h, [hl]                                    ; $71bf: $66
    ld c, c                                       ; $71c0: $49
    push de                                       ; $71c1: $d5
    inc hl                                        ; $71c2: $23
    inc c                                         ; $71c3: $0c
    dec a                                         ; $71c4: $3d
    jp z, Jump_02a_52af                           ; $71c5: $ca $af $52

    ld h, c                                       ; $71c8: $61
    or b                                          ; $71c9: $b0
    ldh [$5a], a                                  ; $71ca: $e0 $5a
    ld a, a                                       ; $71cc: $7f
    ld c, l                                       ; $71cd: $4d
    sbc d                                         ; $71ce: $9a
    jp hl                                         ; $71cf: $e9


    ld a, [hl-]                                   ; $71d0: $3a
    cpl                                           ; $71d1: $2f

jr_02a_71d2:
    and c                                         ; $71d2: $a1
    jp nc, $ef93                                  ; $71d3: $d2 $93 $ef

    ld d, d                                       ; $71d6: $52
    dec h                                         ; $71d7: $25
    xor a                                         ; $71d8: $af
    ldh a, [$bb]                                  ; $71d9: $f0 $bb
    or h                                          ; $71db: $b4
    sub e                                         ; $71dc: $93
    cp e                                          ; $71dd: $bb
    ld [hl], a                                    ; $71de: $77
    ld e, c                                       ; $71df: $59
    adc a                                         ; $71e0: $8f
    ld [hl], d                                    ; $71e1: $72
    ld h, c                                       ; $71e2: $61

jr_02a_71e3:
    ld d, l                                       ; $71e3: $55
    add [hl]                                      ; $71e4: $86
    db $ed                                        ; $71e5: $ed
    ld c, e                                       ; $71e6: $4b
    ld [$6937], a                                 ; $71e7: $ea $37 $69
    ld a, h                                       ; $71ea: $7c
    ld c, d                                       ; $71eb: $4a
    dec e                                         ; $71ec: $1d
    sub [hl]                                      ; $71ed: $96
    inc d                                         ; $71ee: $14
    sbc e                                         ; $71ef: $9b
    dec h                                         ; $71f0: $25
    ld d, l                                       ; $71f1: $55
    adc a                                         ; $71f2: $8f
    jr nc, jr_02a_723c                            ; $71f3: $30 $47

    push bc                                       ; $71f5: $c5
    cp b                                          ; $71f6: $b8
    ld h, $8d                                     ; $71f7: $26 $8d
    db $ec                                        ; $71f9: $ec
    db $e4                                        ; $71fa: $e4
    xor $53                                       ; $71fb: $ee $53
    ld sp, hl                                     ; $71fd: $f9
    ld sp, $4bd1                                  ; $71fe: $31 $d1 $4b
    rst $08                                       ; $7201: $cf
    and [hl]                                      ; $7202: $a6
    cp h                                          ; $7203: $bc
    ld [hl], $5d                                  ; $7204: $36 $5d
    sub $a3                                       ; $7206: $d6 $a3
    db $fc                                        ; $7208: $fc
    ld c, d                                       ; $7209: $4a
    adc d                                         ; $720a: $8a
    and h                                         ; $720b: $a4
    ld [hl], h                                    ; $720c: $74
    ld e, c                                       ; $720d: $59
    adc a                                         ; $720e: $8f
    ld a, [c]                                     ; $720f: $f2
    dec hl                                        ; $7210: $2b
    add hl, hl                                    ; $7211: $29
    sub d                                         ; $7212: $92
    jp nc, $0305                                  ; $7213: $d2 $05 $03

    dec a                                         ; $7216: $3d
    xor a                                         ; $7217: $af
    sub a                                         ; $7218: $97
    jp hl                                         ; $7219: $e9


    adc $cb                                       ; $721a: $ce $cb
    add sp, -$24                                  ; $721c: $e8 $dc
    dec [hl]                                      ; $721e: $35
    ld l, c                                       ; $721f: $69
    ld h, [hl]                                    ; $7220: $66
    rst $38                                       ; $7221: $ff
    rst $00                                       ; $7222: $c7
    dec [hl]                                      ; $7223: $35
    ld l, c                                       ; $7224: $69
    ld h, h                                       ; $7225: $64
    dec l                                         ; $7226: $2d
    db $dd                                        ; $7227: $dd
    and a                                         ; $7228: $a7
    call nz, Call_02a_7276                        ; $7229: $c4 $76 $72
    rst $30                                       ; $722c: $f7
    ret                                           ; $722d: $c9


    add e                                         ; $722e: $83
    and a                                         ; $722f: $a7
    inc a                                         ; $7230: $3c
    sbc e                                         ; $7231: $9b
    sub a                                         ; $7232: $97
    ld e, a                                       ; $7233: $5f
    xor b                                         ; $7234: $a8
    inc e                                         ; $7235: $1c
    ld l, [hl]                                    ; $7236: $6e
    ld l, b                                       ; $7237: $68
    jp nz, $182e                                  ; $7238: $c2 $2e $18

    cp l                                          ; $723b: $bd

jr_02a_723c:
    jp nc, Jump_02a_782c                          ; $723c: $d2 $2c $78

    sbc a                                         ; $723f: $9f
    jp nc, $d52e                                  ; $7240: $d2 $2e $d5

    db $e3                                        ; $7243: $e3
    and l                                         ; $7244: $a5
    ld h, b                                       ; $7245: $60
    ld e, [hl]                                    ; $7246: $5e
    call nc, $a4d7                                ; $7247: $d4 $d7 $a4
    sbc c                                         ; $724a: $99
    jp z, $cc2f                                   ; $724b: $ca $2f $cc

    ldh a, [$c9]                                  ; $724e: $f0 $c9
    ld d, l                                       ; $7250: $55
    ld l, [hl]                                    ; $7251: $6e
    ld l, h                                       ; $7252: $6c
    halt                                          ; $7253: $76
    jp $d0d0                                      ; $7254: $c3 $d0 $d0


    rst $08                                       ; $7257: $cf
    ld [hl], e                                    ; $7258: $73
    ld a, [de]                                    ; $7259: $1a
    db $e3                                        ; $725a: $e3
    ld b, d                                       ; $725b: $42
    dec c                                         ; $725c: $0d
    ld l, [hl]                                    ; $725d: $6e
    push de                                       ; $725e: $d5
    dec b                                         ; $725f: $05
    inc bc                                        ; $7260: $03
    dec a                                         ; $7261: $3d
    jp z, Jump_02a_5585                           ; $7262: $ca $85 $55

    ld a, [hl+]                                   ; $7265: $2a
    ld l, h                                       ; $7266: $6c
    ld d, l                                       ; $7267: $55
    add [hl]                                      ; $7268: $86
    db $ed                                        ; $7269: $ed
    ld c, e                                       ; $726a: $4b
    ld [$6937], a                                 ; $726b: $ea $37 $69
    and c                                         ; $726e: $a1
    sub $1f                                       ; $726f: $d6 $1f
    sub $a4                                       ; $7271: $d6 $a4
    reti                                          ; $7273: $d9


    dec c                                         ; $7274: $0d
    ld b, e                                       ; $7275: $43

Call_02a_7276:
    ld b, e                                       ; $7276: $43
    ccf                                           ; $7277: $3f
    ld e, e                                       ; $7278: $5b
    ld [hl-], a                                   ; $7279: $32
    sbc h                                         ; $727a: $9c
    add $38                                       ; $727b: $c6 $38
    ld c, d                                       ; $727d: $4a
    ld [$d43b], a                                 ; $727e: $ea $3b $d4
    ldh [rRP], a                                  ; $7281: $e0 $56
    ld a, [de]                                    ; $7283: $1a
    and a                                         ; $7284: $a7
    xor $5a                                       ; $7285: $ee $5a
    push de                                       ; $7287: $d5
    ld h, c                                       ; $7288: $61
    sub a                                         ; $7289: $97
    and [hl]                                      ; $728a: $a6
    or h                                          ; $728b: $b4
    and a                                         ; $728c: $a7
    ld a, [hl+]                                   ; $728d: $2a
    dec c                                         ; $728e: $0d
    ld sp, hl                                     ; $728f: $f9
    dec bc                                        ; $7290: $0b
    jp nz, $d947                                  ; $7291: $c2 $47 $d9

    cp $b2                                        ; $7294: $fe $b2
    ld h, $cd                                     ; $7296: $26 $cd
    xor d                                         ; $7298: $aa
    inc c                                         ; $7299: $0c
    db $db                                        ; $729a: $db
    sub a                                         ; $729b: $97
    ld a, [hl]                                    ; $729c: $7e
    ld e, [hl]                                    ; $729d: $5e
    ld e, $7e                                     ; $729e: $1e $7e
    sub l                                         ; $72a0: $95
    ld a, [bc]                                    ; $72a1: $0a
    inc bc                                        ; $72a2: $03
    xor $9a                                       ; $72a3: $ee $9a
    inc [hl]                                      ; $72a5: $34
    or d                                          ; $72a6: $b2
    db $ec                                        ; $72a7: $ec
    ld [hl], h                                    ; $72a8: $74

jr_02a_72a9:
    sub d                                         ; $72a9: $92
    sbc [hl]                                      ; $72aa: $9e
    inc e                                         ; $72ab: $1c
    ld d, $33                                     ; $72ac: $16 $33
    db $eb                                        ; $72ae: $eb
    or e                                          ; $72af: $b3
    cp [hl]                                       ; $72b0: $be
    inc [hl]                                      ; $72b1: $34
    call c, Call_02a_5f59                         ; $72b2: $dc $59 $5f
    sbc d                                         ; $72b5: $9a
    pop af                                        ; $72b6: $f1
    xor a                                         ; $72b7: $af
    ld [hl], l                                    ; $72b8: $75
    add h                                         ; $72b9: $84
    db $10                                        ; $72ba: $10
    ld b, $47                                     ; $72bb: $06 $47
    reti                                          ; $72bd: $d9


    cp $b2                                        ; $72be: $fe $b2
    ld a, [hl+]                                   ; $72c0: $2a
    jp $a5f6                                      ; $72c1: $c3 $f6 $a5


    ld c, e                                       ; $72c4: $4b
    pop bc                                        ; $72c5: $c1
    cp h                                          ; $72c6: $bc
    inc a                                         ; $72c7: $3c
    db $fc                                        ; $72c8: $fc
    ld a, [hl+]                                   ; $72c9: $2a
    dec d                                         ; $72ca: $15
    ld b, $dc                                     ; $72cb: $06 $dc
    dec [hl]                                      ; $72cd: $35
    ld l, c                                       ; $72ce: $69
    ld h, [hl]                                    ; $72cf: $66
    rst $38                                       ; $72d0: $ff
    rst $00                                       ; $72d1: $c7
    push bc                                       ; $72d2: $c5
    ld e, e                                       ; $72d3: $5b
    rst $38                                       ; $72d4: $ff
    add hl, hl                                    ; $72d5: $29
    dec [hl]                                      ; $72d6: $35
    add e                                         ; $72d7: $83
    adc $c7                                       ; $72d8: $ce $c7
    ld [$d26b], sp                                ; $72da: $08 $6b $d2
    xor h                                         ; $72dd: $ac
    ld d, d                                       ; $72de: $52
    ldh a, [$f1]                                  ; $72df: $f0 $f1
    scf                                           ; $72e1: $37
    add $b5                                       ; $72e2: $c6 $b5
    ld a, a                                       ; $72e4: $7f
    and c                                         ; $72e5: $a1
    xor c                                         ; $72e6: $a9
    jp z, Jump_000_25c0                           ; $72e7: $ca $c0 $25

    add hl, hl                                    ; $72ea: $29
    ld a, b                                       ; $72eb: $78
    jp hl                                         ; $72ec: $e9


    add d                                         ; $72ed: $82
    ld bc, $ca3d                                  ; $72ee: $01 $3d $ca
    xor a                                         ; $72f1: $af
    ld d, d                                       ; $72f2: $52
    ld h, c                                       ; $72f3: $61
    or b                                          ; $72f4: $b0
    and d                                         ; $72f5: $a2
    sub $5f                                       ; $72f6: $d6 $5f

Jump_02a_72f8:
    jr nz, jr_02a_72a9                            ; $72f8: $20 $af

    ld e, $9b                                     ; $72fa: $1e $9b
    ld e, l                                       ; $72fc: $5d
    xor d                                         ; $72fd: $aa
    db $e4                                        ; $72fe: $e4
    dec d                                         ; $72ff: $15
    sbc [hl]                                      ; $7300: $9e
    call $8fcb                                    ; $7301: $cd $cb $8f
    ld l, c                                       ; $7304: $69
    xor b                                         ; $7305: $a8
    pop bc                                        ; $7306: $c1
    xor a                                         ; $7307: $af
    ld c, c                                       ; $7308: $49
    inc sp                                        ; $7309: $33
    sub [hl]                                      ; $730a: $96
    cp e                                          ; $730b: $bb
    inc [hl]                                      ; $730c: $34
    and l                                         ; $730d: $a5
    dec a                                         ; $730e: $3d
    ld d, l                                       ; $730f: $55
    ld l, c                                       ; $7310: $69
    ret z                                         ; $7311: $c8

    ld e, a                                       ; $7312: $5f
    db $10                                        ; $7313: $10
    ld b, $3d                                     ; $7314: $06 $3d
    jp z, Jump_02a_55af                           ; $7316: $ca $af $55

    ld b, l                                       ; $7319: $45
    sbc d                                         ; $731a: $9a
    ld [hl], l                                    ; $731b: $75
    ld c, a                                       ; $731c: $4f
    rst $30                                       ; $731d: $f7
    sub a                                         ; $731e: $97
    ld d, l                                       ; $731f: $55
    ld a, [hl+]                                   ; $7320: $2a
    ld l, h                                       ; $7321: $6c
    ld b, l                                       ; $7322: $45
    ld h, c                                       ; $7323: $61
    pop bc                                        ; $7324: $c1
    or l                                          ; $7325: $b5
    ld a, $ad                                     ; $7326: $3e $ad
    ld c, c                                       ; $7328: $49
    inc sp                                        ; $7329: $33
    adc l                                         ; $732a: $8d
    ld [hl], c                                    ; $732b: $71
    ret nc                                        ; $732c: $d0

    ld sp, hl                                     ; $732d: $f9
    jr jr_02a_7391                                ; $732e: $18 $61

    ld [$950b], a                                 ; $7330: $ea $0b $95
    jp Jump_02a_4d0d                              ; $7333: $c3 $0d $4d


    cp b                                          ; $7336: $b8
    ld hl, sp-$2a                                 ; $7337: $f8 $d6
    adc a                                         ; $7339: $8f
    call c, $b129                                 ; $733a: $dc $29 $b1
    ld d, l                                       ; $733d: $55
    add hl, de                                    ; $733e: $19
    ld d, e                                       ; $733f: $53
    ld a, [$92ae]                                 ; $7340: $fa $ae $92
    dec a                                         ; $7343: $3d
    sbc e                                         ; $7344: $9b
    sub a                                         ; $7345: $97
    ld e, a                                       ; $7346: $5f
    and l                                         ; $7347: $a5
    jp nz, $9760                                  ; $7348: $c2 $60 $97

    sub $a4                                       ; $734b: $d6 $a4
    sub c                                         ; $734d: $91
    dec e                                         ; $734e: $1d
    sub a                                         ; $734f: $97
    pop af                                        ; $7350: $f1
    and $4e                                       ; $7351: $e6 $4e
    sub $e0                                       ; $7353: $d6 $e0
    xor [hl]                                      ; $7355: $ae
    db $dd                                        ; $7356: $dd
    adc h                                         ; $7357: $8c
    ld a, l                                       ; $7358: $7d
    ld d, l                                       ; $7359: $55
    rst $28                                       ; $735a: $ef
    add d                                         ; $735b: $82
    ld bc, $d2bd                                  ; $735c: $01 $bd $d2
    xor h                                         ; $735f: $ac
    xor b                                         ; $7360: $a8
    push af                                       ; $7361: $f5
    and a                                         ; $7362: $a7
    push de                                       ; $7363: $d5
    ld sp, hl                                     ; $7364: $f9
    and $ca                                       ; $7365: $e6 $ca
    or e                                          ; $7367: $b3
    add hl, hl                                    ; $7368: $29
    db $ed                                        ; $7369: $ed
    rst $08                                       ; $736a: $cf
    scf                                           ; $736b: $37
    or a                                          ; $736c: $b7
    and e                                         ; $736d: $a3
    db $ed                                        ; $736e: $ed
    ld hl, sp-$45                                 ; $736f: $f8 $bb
    cp $21                                        ; $7371: $fe $21
    ld e, d                                       ; $7373: $5a
    adc a                                         ; $7374: $8f
    call c, Call_02a_6f9f                         ; $7375: $dc $9f $6f
    ld l, [hl]                                    ; $7378: $6e
    ld h, a                                       ; $7379: $67
    ld c, d                                       ; $737a: $4a
    cp e                                          ; $737b: $bb
    cp $21                                        ; $737c: $fe $21
    ld [hl], a                                    ; $737e: $77
    dec e                                         ; $737f: $1d
    ld a, c                                       ; $7380: $79
    add b                                         ; $7381: $80
    or l                                          ; $7382: $b5
    cp b                                          ; $7383: $b8
    adc d                                         ; $7384: $8a
    rst $08                                       ; $7385: $cf
    ld [hl], e                                    ; $7386: $73
    ld l, l                                       ; $7387: $6d
    cp c                                          ; $7388: $b9
    inc d                                         ; $7389: $14
    call z, $e674                                 ; $738a: $cc $74 $e6
    push hl                                       ; $738d: $e5
    ld [hl], a                                    ; $738e: $77
    or d                                          ; $738f: $b2
    ld e, [hl]                                    ; $7390: $5e

jr_02a_7391:
    jp c, Jump_02a_4fc9                           ; $7391: $da $c9 $4f

    ld h, [hl]                                    ; $7394: $66
    ld c, d                                       ; $7395: $4a
    ld l, h                                       ; $7396: $6c
    ld e, [hl]                                    ; $7397: $5e
    sbc [hl]                                      ; $7398: $9e
    ld b, $1f                                     ; $7399: $06 $1f
    cp a                                          ; $739b: $bf
    ld a, [c]                                     ; $739c: $f2
    or l                                          ; $739d: $b5
    cp b                                          ; $739e: $b8
    cp d                                          ; $739f: $ba
    add c                                         ; $73a0: $81
    push af                                       ; $73a1: $f5
    or e                                          ; $73a2: $b3
    ld h, e                                       ; $73a3: $63
    rst $08                                       ; $73a4: $cf
    scf                                           ; $73a5: $37
    or a                                          ; $73a6: $b7
    add e                                         ; $73a7: $83
    ld h, [hl]                                    ; $73a8: $66
    and c                                         ; $73a9: $a1
    and l                                         ; $73aa: $a5
    or b                                          ; $73ab: $b0
    sub a                                         ; $73ac: $97
    ld a, c                                       ; $73ad: $79
    xor $d8                                       ; $73ae: $ee $d8
    di                                            ; $73b0: $f3
    call $cced                                    ; $73b1: $cd $ed $cc
    set 5, a                                      ; $73b4: $cb $ef
    ld a, [$dc87]                                 ; $73b6: $fa $87 $dc
    sub l                                         ; $73b9: $95
    dec de                                        ; $73ba: $1b
    sub h                                         ; $73bb: $94
    ld a, b                                       ; $73bc: $78
    add e                                         ; $73bd: $83
    ld [c], a                                     ; $73be: $e2
    di                                            ; $73bf: $f3
    ld a, [c]                                     ; $73c0: $f2
    db $eb                                        ; $73c1: $eb
    ld b, h                                       ; $73c2: $44
    xor l                                         ; $73c3: $ad
    ld a, [hl]                                    ; $73c4: $7e
    ld c, c                                       ; $73c5: $49
    ld l, e                                       ; $73c6: $6b
    ld d, l                                       ; $73c7: $55
    sub c                                         ; $73c8: $91
    and [hl]                                      ; $73c9: $a6
    ld b, $eb                                     ; $73ca: $06 $eb

Jump_02a_73cc:
    call c, $8dca                                 ; $73cc: $dc $ca $8d
    db $fc                                        ; $73cf: $fc
    ld hl, sp-$0e                                 ; $73d0: $f8 $f2
    ld a, [c]                                     ; $73d2: $f2
    cp e                                          ; $73d3: $bb
    ld a, $28                                     ; $73d4: $3e $28
    ld l, c                                       ; $73d6: $69
    ld [hl+], a                                   ; $73d7: $22
    ld e, e                                       ; $73d8: $5b
    sub b                                         ; $73d9: $90
    ld d, e                                       ; $73da: $53
    ld h, d                                       ; $73db: $62
    db $eb                                        ; $73dc: $eb
    ret z                                         ; $73dd: $c8

    inc bc                                        ; $73de: $03
    call z, $efcb                                 ; $73df: $cc $cb $ef
    xor b                                         ; $73e2: $a8
    dec e                                         ; $73e3: $1d
    ld l, l                                       ; $73e4: $6d
    call c, $d093                                 ; $73e5: $dc $93 $d0
    ld a, d                                       ; $73e8: $7a
    sub h                                         ; $73e9: $94
    dec bc                                        ; $73ea: $0b
    add e                                         ; $73eb: $83
    ld c, d                                       ; $73ec: $4a
    cp $69                                        ; $73ed: $fe $69
    ld a, [de]                                    ; $73ef: $1a
    ld hl, $91d7                                  ; $73f0: $21 $d7 $91
    or h                                          ; $73f3: $b4
    ld e, [hl]                                    ; $73f4: $5e
    or $b0                                        ; $73f5: $f6 $b0
    ld h, $cd                                     ; $73f7: $26 $cd
    ld hl, sp-$15                                 ; $73f9: $f8 $eb
    ld h, l                                       ; $73fb: $65
    sub a                                         ; $73fc: $97
    db $ec                                        ; $73fd: $ec
    sub h                                         ; $73fe: $94
    ld d, b                                       ; $73ff: $50
    db $fd                                        ; $7400: $fd
    ld h, $4d                                     ; $7401: $26 $4d
    db $db                                        ; $7403: $db
    ld l, c                                       ; $7404: $69
    ld a, h                                       ; $7405: $7c
    ld c, l                                       ; $7406: $4d
    ld a, [de]                                    ; $7407: $1a
    add hl, de                                    ; $7408: $19
    cp b                                          ; $7409: $b8
    ld a, [$bf05]                                 ; $740a: $fa $05 $bf
    dec d                                         ; $740d: $15
    ld [hl], b                                    ; $740e: $70
    ld [hl], a                                    ; $740f: $77
    jp nc, $3f5b                                  ; $7410: $d2 $5b $3f

    ld [hl], d                                    ; $7413: $72
    ld [hl], a                                    ; $7414: $77
    inc l                                         ; $7415: $2c
    add a                                         ; $7416: $87
    adc $cb                                       ; $7417: $ce $cb
    ld a, l                                       ; $7419: $7d
    xor d                                         ; $741a: $aa
    ld a, [hl]                                    ; $741b: $7e
    ld c, d                                       ; $741c: $4a
    ld l, h                                       ; $741d: $6c
    dec l                                         ; $741e: $2d
    or a                                          ; $741f: $b7
    xor d                                         ; $7420: $aa
    rst $00                                       ; $7421: $c7
    rlca                                          ; $7422: $07
    add h                                         ; $7423: $84
    ld bc, $723d                                  ; $7424: $01 $3d $72
    ld b, $7e                                     ; $7427: $06 $7e
    ld c, d                                       ; $7429: $4a
    cp e                                          ; $742a: $bb
    cp $21                                        ; $742b: $fe $21
    ld [hl], a                                    ; $742d: $77
    dec e                                         ; $742e: $1d
    ld a, c                                       ; $742f: $79
    add b                                         ; $7430: $80
    or l                                          ; $7431: $b5
    cp b                                          ; $7432: $b8
    adc d                                         ; $7433: $8a
    rst $08                                       ; $7434: $cf
    ld [hl], e                                    ; $7435: $73
    ld l, l                                       ; $7436: $6d
    cp c                                          ; $7437: $b9
    inc d                                         ; $7438: $14
    call z, $e674                                 ; $7439: $cc $74 $e6
    push hl                                       ; $743c: $e5
    ld [hl], a                                    ; $743d: $77
    or d                                          ; $743e: $b2
    ld e, [hl]                                    ; $743f: $5e
    jp c, Jump_02a_4fc9                           ; $7440: $da $c9 $4f

    add [hl]                                      ; $7443: $86
    dec sp                                        ; $7444: $3b
    cpl                                           ; $7445: $2f
    ld c, a                                       ; $7446: $4f
    add e                                         ; $7447: $83
    adc a                                         ; $7448: $8f
    ld e, a                                       ; $7449: $5f
    ld sp, hl                                     ; $744a: $f9
    inc l                                         ; $744b: $2c
    cp $e1                                        ; $744c: $fe $e1
    inc a                                         ; $744e: $3c
    rlca                                          ; $744f: $07
    rst $38                                       ; $7450: $ff
    db $e3                                        ; $7451: $e3
    adc e                                         ; $7452: $8b
    ld a, [$7fae]                                 ; $7453: $fa $ae $7f
    ld [$d26b], sp                                ; $7456: $08 $6b $d2
    xor h                                         ; $7459: $ac
    xor b                                         ; $745a: $a8
    push af                                       ; $745b: $f5
    pop de                                        ; $745c: $d1
    ld e, d                                       ; $745d: $5a
    ld l, a                                       ; $745e: $6f
    ld d, b                                       ; $745f: $50
    ld [c], a                                     ; $7460: $e2
    dec c                                         ; $7461: $0d
    adc d                                         ; $7462: $8a
    rst $08                                       ; $7463: $cf
    set 5, a                                      ; $7464: $cb $ef
    ld a, [$6b87]                                 ; $7466: $fa $87 $6b
    jp nc, $bf8c                                  ; $7469: $d2 $8c $bf

    ld d, b                                       ; $746c: $50
    and $39                                       ; $746d: $e6 $39
    inc bc                                        ; $746f: $03
    ccf                                           ; $7470: $3f
    dec h                                         ; $7471: $25
    or [hl]                                       ; $7472: $b6
    adc [hl]                                      ; $7473: $8e
    inc a                                         ; $7474: $3c
    ret nz                                        ; $7475: $c0

    cp h                                          ; $7476: $bc
    db $fc                                        ; $7477: $fc
    adc [hl]                                      ; $7478: $8e
    jp c, $c6d1                                   ; $7479: $da $d1 $c6

    dec a                                         ; $747c: $3d
    add hl, bc                                    ; $747d: $09
    ld h, c                                       ; $747e: $61
    ld b, a                                       ; $747f: $47
    push bc                                       ; $7480: $c5
    cp b                                          ; $7481: $b8

Jump_02a_7482:
    xor $e9                                       ; $7482: $ee $e9
    scf                                           ; $7484: $37
    add hl, bc                                    ; $7485: $09
    and [hl]                                      ; $7486: $a6
    ld a, [c]                                     ; $7487: $f2
    dec bc                                        ; $7488: $0b
    sub l                                         ; $7489: $95
    db $fd                                        ; $748a: $fd
    ld l, $ad                                     ; $748b: $2e $ad
    sbc e                                         ; $748d: $9b
    sbc d                                         ; $748e: $9a
    ret z                                         ; $748f: $c8

    inc h                                         ; $7490: $24
    add hl, bc                                    ; $7491: $09
    ret nc                                        ; $7492: $d0

    inc l                                         ; $7493: $2c
    or $9a                                        ; $7494: $f6 $9a
    inc [hl]                                      ; $7496: $34
    add e                                         ; $7497: $83
    adc a                                         ; $7498: $8f
    ld e, a                                       ; $7499: $5f
    ld sp, hl                                     ; $749a: $f9
    sub h                                         ; $749b: $94
    ret c                                         ; $749c: $d8

    inc c                                         ; $749d: $0c
    db $fc                                        ; $749e: $fc
    sbc d                                         ; $749f: $9a
    inc [hl]                                      ; $74a0: $34
    or d                                          ; $74a1: $b2
    ld l, [hl]                                    ; $74a2: $6e
    ld l, d                                       ; $74a3: $6a
    ld [hl+], a                                   ; $74a4: $22
    sub e                                         ; $74a5: $93
    inc h                                         ; $74a6: $24
    xor $9a                                       ; $74a7: $ee $9a
    inc [hl]                                      ; $74a9: $34

jr_02a_74aa:
    db $e3                                        ; $74aa: $e3
    ld l, a                                       ; $74ab: $6f
    adc h                                         ; $74ac: $8c
    dec bc                                        ; $74ad: $0b
    sbc $a7                                       ; $74ae: $de $a7
    add e                                         ; $74b0: $83
    ld c, d                                       ; $74b1: $4a
    cp $69                                        ; $74b2: $fe $69
    ld d, b                                       ; $74b4: $50
    sub d                                         ; $74b5: $92
    cp a                                          ; $74b6: $bf
    inc d                                         ; $74b7: $14
    ld c, h                                       ; $74b8: $4c
    ld h, e                                       ; $74b9: $63
    call c, Call_02a_40a5                         ; $74ba: $dc $a5 $40
    sbc [hl]                                      ; $74bd: $9e
    db $dd                                        ; $74be: $dd
    daa                                           ; $74bf: $27
    add a                                         ; $74c0: $87
    dec [hl]                                      ; $74c1: $35
    ld l, c                                       ; $74c2: $69
    ld d, [hl]                                    ; $74c3: $56
    call nc, Call_02a_68fa                        ; $74c4: $d4 $fa $68
    dec l                                         ; $74c7: $2d
    rra                                           ; $74c8: $1f
    cp a                                          ; $74c9: $bf

jr_02a_74ca:
    ld a, [c]                                     ; $74ca: $f2
    ld a, c                                       ; $74cb: $79
    ld sp, hl                                     ; $74cc: $f9
    ld e, l                                       ; $74cd: $5d
    ld a, [bc]                                    ; $74ce: $0a
    db $e4                                        ; $74cf: $e4
    reti                                          ; $74d0: $d9


    ld a, l                                       ; $74d1: $7d
    ld [hl], d                                    ; $74d2: $72
    ld e, b                                       ; $74d3: $58
    sub e                                         ; $74d4: $93
    ld h, [hl]                                    ; $74d5: $66
    cp h                                          ; $74d6: $bc
    sub d                                         ; $74d7: $92
    ld c, a                                       ; $74d8: $4f
    adc c                                         ; $74d9: $89
    call $d3cb                                    ; $74da: $cd $cb $d3
    ld a, [hl-]                                   ; $74dd: $3a
    ld a, [c]                                     ; $74de: $f2
    nop                                           ; $74df: $00
    ld l, e                                       ; $74e0: $6b
    ld [hl], c                                    ; $74e1: $71
    dec d                                         ; $74e2: $15
    sbc a                                         ; $74e3: $9f
    rst $20                                       ; $74e4: $e7
    jp nz, Jump_02a_61cb                          ; $74e5: $c2 $cb $61

    ld e, [hl]                                    ; $74e8: $5e
    ld a, $44                                     ; $74e9: $3e $44
    jr jr_02a_74aa                                ; $74eb: $18 $bd

    jp nc, $a8ac                                  ; $74ed: $d2 $ac $a8

    push af                                       ; $74f0: $f5
    rst $20                                       ; $74f1: $e7
    push hl                                       ; $74f2: $e5
    ld h, a                                       ; $74f3: $67
    and c                                         ; $74f4: $a1
    ld b, b                                       ; $74f5: $40
    sbc [hl]                                      ; $74f6: $9e
    db $dd                                        ; $74f7: $dd
    daa                                           ; $74f8: $27
    rst $18                                       ; $74f9: $df
    or c                                          ; $74fa: $b1
    ld d, h                                       ; $74fb: $54
    dec [hl]                                      ; $74fc: $35
    ld d, l                                       ; $74fd: $55
    call z, $b3ce                                 ; $74fe: $cc $ce $b3
    xor e                                         ; $7501: $ab
    ld l, b                                       ; $7502: $68
    and a                                         ; $7503: $a7
    inc h                                         ; $7504: $24
    cp a                                          ; $7505: $bf
    ld h, $cd                                     ; $7506: $26 $cd
    ld a, [hl+]                                   ; $7508: $2a
    and l                                         ; $7509: $a5
    ld d, l                                       ; $750a: $55
    add hl, de                                    ; $750b: $19
    db $e3                                        ; $750c: $e3
    ld d, a                                       ; $750d: $57
    cp [hl]                                       ; $750e: $be
    ld c, [hl]                                    ; $750f: $4e
    ld a, [$da4d]                                 ; $7510: $fa $4d $da
    and l                                         ; $7513: $a5
    ld b, b                                       ; $7514: $40
    sbc [hl]                                      ; $7515: $9e
    db $dd                                        ; $7516: $dd
    daa                                           ; $7517: $27
    add a                                         ; $7518: $87
    add hl, hl                                    ; $7519: $29
    or c                                          ; $751a: $b1
    add c                                         ; $751b: $81
    and a                                         ; $751c: $a7
    db $fc                                        ; $751d: $fc
    ld a, [hl-]                                   ; $751e: $3a
    jp hl                                         ; $751f: $e9


    scf                                           ; $7520: $37
    ld l, c                                       ; $7521: $69
    ld a, [c]                                     ; $7522: $f2
    push de                                       ; $7523: $d5
    db $ed                                        ; $7524: $ed
    inc a                                         ; $7525: $3c
    and b                                         ; $7526: $a0
    ld [hl], l                                    ; $7527: $75
    sub a                                         ; $7528: $97
    rlca                                          ; $7529: $07
    ld e, b                                       ; $752a: $58
    adc e                                         ; $752b: $8b
    xor e                                         ; $752c: $ab
    jr c, @+$79                                   ; $752d: $38 $77

    ld e, [hl]                                    ; $752f: $5e
    sbc [hl]                                      ; $7530: $9e
    ld b, $1f                                     ; $7531: $06 $1f
    cp a                                          ; $7533: $bf
    ld a, [c]                                     ; $7534: $f2
    ld a, c                                       ; $7535: $79
    ld sp, hl                                     ; $7536: $f9
    ld e, c                                       ; $7537: $59
    jr z, jr_02a_74ca                             ; $7538: $28 $90

    ld h, a                                       ; $753a: $67
    rst $30                                       ; $753b: $f7
    ret                                           ; $753c: $c9


    ld [hl], a                                    ; $753d: $77
    inc l                                         ; $753e: $2c
    ld d, l                                       ; $753f: $55
    ld c, l                                       ; $7540: $4d
    dec d                                         ; $7541: $15
    or e                                          ; $7542: $b3
    di                                            ; $7543: $f3
    db $ec                                        ; $7544: $ec
    ld [$c96c], a                                 ; $7545: $ea $6c $c9
    ld [hl], b                                    ; $7548: $70
    ld e, [hl]                                    ; $7549: $5e
    ld a, [hl]                                    ; $754a: $7e
    daa                                           ; $754b: $27
    db $eb                                        ; $754c: $eb
    and l                                         ; $754d: $a5
    sbc l                                         ; $754e: $9d
    db $fc                                        ; $754f: $fc
    ld h, h                                       ; $7550: $64
    and $39                                       ; $7551: $e6 $39
    ld hl, sp+$5f                                 ; $7553: $f8 $5f
    sub e                                         ; $7555: $93
    ld b, [hl]                                    ; $7556: $46
    halt                                          ; $7557: $76
    add hl, hl                                    ; $7558: $29
    sub b                                         ; $7559: $90
    ld h, a                                       ; $755a: $67
    rst $30                                       ; $755b: $f7
    ret                                           ; $755c: $c9


    ld h, c                                       ; $755d: $61
    ld c, d                                       ; $755e: $4a
    ld l, h                                       ; $755f: $6c
    sub $fb                                       ; $7560: $d6 $fb
    db $fc                                        ; $7562: $fc
    sbc d                                         ; $7563: $9a
    inc [hl]                                      ; $7564: $34
    ld [hl-], a                                   ; $7565: $32
    ld sp, hl                                     ; $7566: $f9
    ld [$7e76], a                                 ; $7567: $ea $76 $7e
    db $ed                                        ; $756a: $ed
    call z, $c23a                                 ; $756b: $cc $3a $c2
    dec a                                         ; $756e: $3d
    ld [hl], d                                    ; $756f: $72
    sub $fb                                       ; $7570: $d6 $fb
    db $fc                                        ; $7572: $fc

Call_02a_7573:
    sbc d                                         ; $7573: $9a
    inc [hl]                                      ; $7574: $34
    or d                                          ; $7575: $b2
    db $e3                                        ; $7576: $e3
    ld [hl-], a                                   ; $7577: $32
    sbc $dc                                       ; $7578: $de $dc
    ret                                           ; $757a: $c9


    ld a, [de]                                    ; $757b: $1a
    call c, $b129                                 ; $757c: $dc $29 $b1
    dec e                                         ; $757f: $1d
    sub a                                         ; $7580: $97
    pop af                                        ; $7581: $f1
    and $7a                                       ; $7582: $e6 $7a
    ret z                                         ; $7584: $c8

    db $ed                                        ; $7585: $ed
    call nz, $195b                                ; $7586: $c4 $5b $19
    ldh [$ae], a                                  ; $7589: $e0 $ae
    inc hl                                        ; $758b: $23
    rrca                                          ; $758c: $0f
    or b                                          ; $758d: $b0
    ld d, $57                                     ; $758e: $16 $57
    pop af                                        ; $7590: $f1
    ld a, c                                       ; $7591: $79
    xor [hl]                                      ; $7592: $ae
    dec l                                         ; $7593: $2d
    sub a                                         ; $7594: $97
    add d                                         ; $7595: $82
    sbc c                                         ; $7596: $99
    adc $bc                                       ; $7597: $ce $bc
    db $fc                                        ; $7599: $fc
    ld c, [hl]                                    ; $759a: $4e
    sub $4b                                       ; $759b: $d6 $4b
    dec sp                                        ; $759d: $3b
    ld sp, hl                                     ; $759e: $f9
    ret                                           ; $759f: $c9


    ld c, h                                       ; $75a0: $4c
    adc c                                         ; $75a1: $89
    call $d3cb                                    ; $75a2: $cd $cb $d3
    ldh [$e3], a                                  ; $75a5: $e0 $e3
    ld d, a                                       ; $75a7: $57
    cp [hl]                                       ; $75a8: $be
    db $e3                                        ; $75a9: $e3
    ld [hl-], a                                   ; $75aa: $32
    sbc $dc                                       ; $75ab: $de $dc
    ret                                           ; $75ad: $c9


    ld a, [de]                                    ; $75ae: $1a
    call c, $eca5                                 ; $75af: $dc $a5 $ec
    cp b                                          ; $75b2: $b8
    adc h                                         ; $75b3: $8c
    scf                                           ; $75b4: $37
    rst $10                                       ; $75b5: $d7
    ld b, e                                       ; $75b6: $43
    ld l, [hl]                                    ; $75b7: $6e
    daa                                           ; $75b8: $27
    sbc $ca                                       ; $75b9: $de $ca
    nop                                           ; $75bb: $00
    jp nz, $d2bd                                  ; $75bc: $c2 $bd $d2

    ld c, h                                       ; $75bf: $4c
    push hl                                       ; $75c0: $e5
    and a                                         ; $75c1: $a7
    db $ed                                        ; $75c2: $ed
    inc [hl]                                      ; $75c3: $34
    ld a, $cf                                     ; $75c4: $3e $cf
    dec a                                         ; $75c6: $3d
    ld sp, hl                                     ; $75c7: $f9
    bit 6, h                                      ; $75c8: $cb $74
    daa                                           ; $75ca: $27
    ld l, e                                       ; $75cb: $6b
    ld [hl], b                                    ; $75cc: $70
    dec hl                                        ; $75cd: $2b
    adc l                                         ; $75ce: $8d
    dec sp                                        ; $75cf: $3b
    sub [hl]                                      ; $75d0: $96
    xor d                                         ; $75d1: $aa
    inc [hl]                                      ; $75d2: $34
    db $e4                                        ; $75d3: $e4
    cpl                                           ; $75d4: $2f
    ld d, e                                       ; $75d5: $53
    ld h, d                                       ; $75d6: $62
    dec hl                                        ; $75d7: $2b
    ld l, d                                       ; $75d8: $6a
    db $fd                                        ; $75d9: $fd
    pop bc                                        ; $75da: $c1
    ld e, e                                       ; $75db: $5b
    ld e, a                                       ; $75dc: $5f
    inc [hl]                                      ; $75dd: $34
    ld l, $3b                                     ; $75de: $2e $3b
    ld a, [hl]                                    ; $75e0: $7e
    sub e                                         ; $75e1: $93
    ldh [$f0], a                                  ; $75e2: $e0 $f0
    or l                                          ; $75e4: $b5
    ld [hl], h                                    ; $75e5: $74
    ld a, $c6                                     ; $75e6: $3e $c6
    push bc                                       ; $75e8: $c5
    ld [hl], a                                    ; $75e9: $77
    ld e, b                                       ; $75ea: $58
    sub e                                         ; $75eb: $93
    ld h, [hl]                                    ; $75ec: $66
    sub l                                         ; $75ed: $95
    add d                                         ; $75ee: $82
    ld c, a                                       ; $75ef: $4f
    rlca                                          ; $75f0: $07
    sbc l                                         ; $75f1: $9d
    adc a                                         ; $75f2: $8f
    pop af                                        ; $75f3: $f1
    adc b                                         ; $75f4: $88
    ld e, c                                       ; $75f5: $59
    db $fc                                        ; $75f6: $fc
    jp $8c69                                      ; $75f7: $c3 $69 $8c


jr_02a_75fa:
    ret                                           ; $75fa: $c9


    jp $349a                                      ; $75fb: $c3 $9a $34


    di                                            ; $75fe: $f3
    sbc h                                         ; $75ff: $9c
    add c                                         ; $7600: $81
    sbc a                                         ; $7601: $9f
    jp nc, Jump_02a_7fae                          ; $7602: $d2 $ae $7f

    ld a, b                                       ; $7605: $78
    call nz, $a9ba                                ; $7606: $c4 $ba $a9
    or b                                          ; $7609: $b0
    push bc                                       ; $760a: $c5
    ld [hl], a                                    ; $760b: $77
    ld e, b                                       ; $760c: $58
    sub e                                         ; $760d: $93
    ld h, [hl]                                    ; $760e: $66
    sub l                                         ; $760f: $95
    cp h                                          ; $7610: $bc
    ld a, [$574f]                                 ; $7611: $fa $4f $57
    xor c                                         ; $7614: $a9
    or b                                          ; $7615: $b0
    cp l                                          ; $7616: $bd
    ld l, l                                       ; $7617: $6d
    ld a, a                                       ; $7618: $7f
    push hl                                       ; $7619: $e5
    db $e3                                        ; $761a: $e3
    xor a                                         ; $761b: $af
    sub a                                         ; $761c: $97
    dec e                                         ; $761d: $1d
    and a                                         ; $761e: $a7
    ld h, c                                       ; $761f: $61
    ld a, [de]                                    ; $7620: $1a
    ld e, b                                       ; $7621: $58
    rst $08                                       ; $7622: $cf
    db $eb                                        ; $7623: $eb
    ld d, l                                       ; $7624: $55
    ld a, c                                       ; $7625: $79
    sbc b                                         ; $7626: $98
    ld [de], a                                    ; $7627: $12
    ld e, e                                       ; $7628: $5b
    rst $08                                       ; $7629: $cf
    bit 2, c                                      ; $762a: $cb $51
    add l                                         ; $762c: $85
    pop bc                                        ; $762d: $c1
    cp d                                          ; $762e: $ba
    xor c                                         ; $762f: $a9
    jr nc, jr_02a_766a                            ; $7630: $30 $38

    ld h, d                                       ; $7632: $62
    ld c, d                                       ; $7633: $4a
    ld l, h                                       ; $7634: $6c
    rst $00                                       ; $7635: $c7
    push bc                                       ; $7636: $c5
    rst $38                                       ; $7637: $ff
    push bc                                       ; $7638: $c5
    ld [hl], a                                    ; $7639: $77
    ld e, b                                       ; $763a: $58
    sub e                                         ; $763b: $93
    ld h, [hl]                                    ; $763c: $66
    ld [$61fe], a                                 ; $763d: $ea $fe $61
    rst $00                                       ; $7640: $c7
    rst $20                                       ; $7641: $e7
    cp c                                          ; $7642: $b9
    add a                                         ; $7643: $87
    ld c, d                                       ; $7644: $4a
    dec sp                                        ; $7645: $3b
    ccf                                           ; $7646: $3f
    ld e, e                                       ; $7647: $5b
    ld [hl-], a                                   ; $7648: $32
    sbc h                                         ; $7649: $9c
    sub a                                         ; $764a: $97
    rst $18                                       ; $764b: $df
    ld d, e                                       ; $764c: $53
    sub l                                         ; $764d: $95
    add [hl]                                      ; $764e: $86
    db $fc                                        ; $764f: $fc
    dec b                                         ; $7650: $05
    xor l                                         ; $7651: $ad
    ld d, a                                       ; $7652: $57
    ld a, [de]                                    ; $7653: $1a
    ld e, c                                       ; $7654: $59
    adc e                                         ; $7655: $8b
    ld l, e                                       ; $7656: $6b
    ld a, b                                       ; $7657: $78
    ld c, c                                       ; $7658: $49

Call_02a_7659:
    and a                                         ; $7659: $a7
    call nz, $b276                                ; $765a: $c4 $76 $b2
    ld b, $b7                                     ; $765d: $06 $b7
    ld e, d                                       ; $765f: $5a
    rst $30                                       ; $7660: $f7
    cp h                                          ; $7661: $bc
    db $e4                                        ; $7662: $e4
    jr nc, jr_02a_75fa                            ; $7663: $30 $95

    rra                                           ; $7665: $1f
    sub h                                         ; $7666: $94
    db $e4                                        ; $7667: $e4
    ld l, c                                       ; $7668: $69
    sub a                                         ; $7669: $97

jr_02a_766a:
    and $e5                                       ; $766a: $e6 $e5
    rst $00                                       ; $766c: $c7
    ld l, $74                                     ; $766d: $2e $74
    and d                                         ; $766f: $a2
    ld [hl], $f3                                  ; $7670: $36 $f3
    sbc h                                         ; $7672: $9c
    sub a                                         ; $7673: $97
    sbc a                                         ; $7674: $9f
    call c, Call_000_38a0                         ; $7675: $dc $a0 $38
    jp nz, $3f3d                                  ; $7678: $c2 $3d $3f

    ld d, [hl]                                    ; $767b: $56
    add hl, de                                    ; $767c: $19
    cp $3c                                        ; $767d: $fe $3c
    rst $10                                       ; $767f: $d7
    xor l                                         ; $7680: $ad
    xor b                                         ; $7681: $a8
    add h                                         ; $7682: $84
    or b                                          ; $7683: $b0
    ld a, [hl+]                                   ; $7684: $2a
    ld a, [hl+]                                   ; $7685: $2a
    nop                                           ; $7686: $00
    ld e, d                                       ; $7687: $5a
    or a                                          ; $7688: $b7
    db $ec                                        ; $7689: $ec
    inc [hl]                                      ; $768a: $34
    dec bc                                        ; $768b: $0b
    sbc e                                         ; $768c: $9b
    add l                                         ; $768d: $85
    ld l, c                                       ; $768e: $69

Jump_02a_768f:
    db $fd                                        ; $768f: $fd
    ldh a, [$c9]                                  ; $7690: $f0 $c9
    ld h, c                                       ; $7692: $61
    sbc [hl]                                      ; $7693: $9e
    adc e                                         ; $7694: $8b
    ld l, a                                       ; $7695: $6f
    cp l                                          ; $7696: $bd
    xor [hl]                                      ; $7697: $ae
    cp $d3                                        ; $7698: $fe $d3
    pop bc                                        ; $769a: $c1
    bit 7, l                                      ; $769b: $cb $7d
    ld e, b                                       ; $769d: $58
    jp c, $f6cb                                   ; $769e: $da $cb $f6

    ld a, c                                       ; $76a1: $79
    ld e, a                                       ; $76a2: $5f
    add hl, sp                                    ; $76a3: $39
    and b                                         ; $76a4: $a0
    ld e, c                                       ; $76a5: $59
    db $ec                                        ; $76a6: $ec
    dec [hl]                                      ; $76a7: $35
    ld l, c                                       ; $76a8: $69
    ld d, $bc                                     ; $76a9: $16 $bc
    rst $08                                       ; $76ab: $cf
    sra a                                         ; $76ac: $cb $2f
    db $db                                        ; $76ae: $db
    rst $20                                       ; $76af: $e7
    ld a, l                                       ; $76b0: $7d
    push hl                                       ; $76b1: $e5
    di                                            ; $76b2: $f3
    sbc h                                         ; $76b3: $9c
    sub a                                         ; $76b4: $97
    sbc a                                         ; $76b5: $9f
    call c, $f8a0                                 ; $76b6: $dc $a0 $f8
    jp z, $a0df                                   ; $76b9: $ca $df $a0

    jr c, jr_02a_7735                             ; $76bc: $38 $77

    ld c, l                                       ; $76be: $4d
    sbc d                                         ; $76bf: $9a
    ld d, l                                       ; $76c0: $55
    ld c, d                                       ; $76c1: $4a

jr_02a_76c2:
    dec bc                                        ; $76c2: $0b
    db $d3                                        ; $76c3: $d3
    ld a, [$f24b]                                 ; $76c4: $fa $4b $f2
    sbc h                                         ; $76c7: $9c
    xor [hl]                                      ; $76c8: $ae
    cp h                                          ; $76c9: $bc
    ld e, d                                       ; $76ca: $5a
    rst $28                                       ; $76cb: $ef
    res 6, d                                      ; $76cc: $cb $b2
    ld a, l                                       ; $76ce: $7d
    sbc $57                                       ; $76cf: $de $57
    adc [hl]                                      ; $76d1: $8e
    ld h, [hl]                                    ; $76d2: $66
    or c                                          ; $76d3: $b1
    rst $10                                       ; $76d4: $d7
    and h                                         ; $76d5: $a4
    ld e, c                                       ; $76d6: $59
    xor b                                         ; $76d7: $a8
    push af                                       ; $76d8: $f5
    sbc a                                         ; $76d9: $9f
    ld h, a                                       ; $76da: $67
    ld l, $54                                     ; $76db: $2e $54
    ld l, d                                       ; $76dd: $6a
    ld d, $5e                                     ; $76de: $16 $5e
    ld [hl], b                                    ; $76e0: $70
    xor l                                         ; $76e1: $ad
    ccf                                           ; $76e2: $3f
    ld [hl], b                                    ; $76e3: $70
    rst $10                                       ; $76e4: $d7
    and h                                         ; $76e5: $a4
    xor c                                         ; $76e6: $a9
    push bc                                       ; $76e7: $c5
    cp b                                          ; $76e8: $b8
    and d                                         ; $76e9: $a2
    sub $9f                                       ; $76ea: $d6 $9f
    rst $20                                       ; $76ec: $e7
    ret nz                                        ; $76ed: $c0

    ld d, l                                       ; $76ee: $55
    ld a, h                                       ; $76ef: $7c
    ld l, c                                       ; $76f0: $69
    ld a, l                                       ; $76f1: $7d
    ld b, c                                       ; $76f2: $41
    jr @+$2f                                      ; $76f3: $18 $2d

    rra                                           ; $76f5: $1f
    cp a                                          ; $76f6: $bf
    ld a, [c]                                     ; $76f7: $f2
    ld a, c                                       ; $76f8: $79
    ld sp, hl                                     ; $76f9: $f9
    ret                                           ; $76fa: $c9


    dec c                                         ; $76fb: $0d
    adc d                                         ; $76fc: $8a
    xor a                                         ; $76fd: $af
    jp z, Jump_02a_7db0                           ; $76fe: $ca $b0 $7d

    ld c, c                                       ; $7701: $49
    db $fd                                        ; $7702: $fd
    ld h, $2d                                     ; $7703: $26 $2d
    db $ed                                        ; $7705: $ed
    ld d, l                                       ; $7706: $55
    ld l, d                                       ; $7707: $6a
    ld [hl+], a                                   ; $7708: $22
    sub e                                         ; $7709: $93
    and h                                         ; $770a: $a4
    add hl, hl                                    ; $770b: $29
    or c                                          ; $770c: $b1
    ld e, l                                       ; $770d: $5d
    ld a, [bc]                                    ; $770e: $0a
    db $e4                                        ; $770f: $e4
    reti                                          ; $7710: $d9


    ld a, l                                       ; $7711: $7d
    ld [hl], d                                    ; $7712: $72
    sbc b                                         ; $7713: $98
    rst $20                                       ; $7714: $e7
    jr nz, @-$5b                                  ; $7715: $20 $a3

    push af                                       ; $7717: $f5
    rst $20                                       ; $7718: $e7
    push hl                                       ; $7719: $e5
    rst $10                                       ; $771a: $d7
    dec a                                         ; $771b: $3d
    db $fd                                        ; $771c: $fd
    ld h, $ad                                     ; $771d: $26 $ad
    ld e, e                                       ; $771f: $5b
    pop de                                        ; $7720: $d1
    jr jr_02a_76c2                                ; $7721: $18 $9f

    add d                                         ; $7723: $82
    ld b, a                                       ; $7724: $47
    db $eb                                        ; $7725: $eb
    ld l, $0f                                     ; $7726: $2e $0f
    or b                                          ; $7728: $b0
    inc sp                                        ; $7729: $33
    ld a, [hl-]                                   ; $772a: $3a
    ld c, e                                       ; $772b: $4b
    reti                                          ; $772c: $d9


    ld sp, $d3c9                                  ; $772d: $31 $c9 $d3
    inc a                                         ; $7730: $3c
    rla                                           ; $7731: $17
    ld l, d                                       ; $7732: $6a
    db $fd                                        ; $7733: $fd
    rst $10                                       ; $7734: $d7

jr_02a_7735:
    and h                                         ; $7735: $a4
    sub c                                         ; $7736: $91
    ld d, l                                       ; $7737: $55
    dec h                                         ; $7738: $25
    ld l, a                                       ; $7739: $6f

Call_02a_773a:
    push af                                       ; $773a: $f5
    ld l, b                                       ; $773b: $68
    db $eb                                        ; $773c: $eb
    ld l, $0f                                     ; $773d: $2e $0f
    or b                                          ; $773f: $b0
    db $d3                                        ; $7740: $d3
    ld l, a                                       ; $7741: $6f
    ld d, b                                       ; $7742: $50
    ld a, h                                       ; $7743: $7c
    sbc [hl]                                      ; $7744: $9e
    dec bc                                        ; $7745: $0b
    db $d3                                        ; $7746: $d3
    ld a, [$9cf3]                                 ; $7747: $fa $f3 $9c
    sub a                                         ; $774a: $97
    rra                                           ; $774b: $1f
    dec a                                         ; $774c: $3d
    rlca                                          ; $774d: $07
    ld e, a                                       ; $774e: $5f
    ld d, l                                       ; $774f: $55
    ld a, [c]                                     ; $7750: $f2
    ld d, [hl]                                    ; $7751: $56
    rst $08                                       ; $7752: $cf
    ld e, l                                       ; $7753: $5d
    jp z, $f23a                                   ; $7754: $ca $3a $f2

    nop                                           ; $7757: $00
    dec sp                                        ; $7758: $3b
    jp hl                                         ; $7759: $e9


    ld l, l                                       ; $775a: $6d
    sbc a                                         ; $775b: $9f
    rst $20                                       ; $775c: $e7
    add d                                         ; $775d: $82
    ld e, h                                       ; $775e: $5c
    ld e, e                                       ; $775f: $5b
    xor e                                         ; $7760: $ab
    ld a, [$d894]                                 ; $7761: $fa $94 $d8
    xor d                                         ; $7764: $aa
    and d                                         ; $7765: $a2
    inc d                                         ; $7766: $14
    db $fc                                        ; $7767: $fc
    sbc d                                         ; $7768: $9a
    inc [hl]                                      ; $7769: $34
    or d                                          ; $776a: $b2
    ldh a, [rNR12]                                ; $776b: $f0 $12
    ld b, e                                       ; $776d: $43
    db $eb                                        ; $776e: $eb
    ld e, c                                       ; $776f: $59
    sbc [hl]                                      ; $7770: $9e
    sub $a4                                       ; $7771: $d6 $a4
    sbc c                                         ; $7773: $99
    jp z, Jump_02a_68af                           ; $7774: $ca $af $68

    and a                                         ; $7777: $a7
    db $d3                                        ; $7778: $d3
    adc h                                         ; $7779: $8c
    cp a                                          ; $777a: $bf
    ld e, [hl]                                    ; $777b: $5e
    sub $a4                                       ; $777c: $d6 $a4
    sub c                                         ; $777e: $91
    ld d, l                                       ; $777f: $55
    dec h                                         ; $7780: $25
    ld l, a                                       ; $7781: $6f
    push af                                       ; $7782: $f5
    ret nz                                        ; $7783: $c0

    ld e, l                                       ; $7784: $5d
    ld b, a                                       ; $7785: $47
    ld e, $60                                     ; $7786: $1e $60
    ld e, [hl]                                    ; $7788: $5e
    ld a, [hl]                                    ; $7789: $7e
    ld b, a                                       ; $778a: $47
    db $ed                                        ; $778b: $ed
    ld l, b                                       ; $778c: $68
    db $e3                                        ; $778d: $e3
    sbc [hl]                                      ; $778e: $9e
    inc [hl]                                      ; $778f: $34
    rst $08                                       ; $7790: $cf
    ld d, l                                       ; $7791: $55
    ld c, c                                       ; $7792: $49
    or $95                                        ; $7793: $f6 $95
    ld [hl], b                                    ; $7795: $70
    ld e, [hl]                                    ; $7796: $5e
    ld a, $44                                     ; $7797: $3e $44
    db $db                                        ; $7799: $db
    pop de                                        ; $779a: $d1
    ld d, c                                       ; $779b: $51
    xor e                                         ; $779c: $ab
    ld a, [$9542]                                 ; $779d: $fa $42 $95
    ld a, [hl-]                                   ; $77a0: $3a
    adc h                                         ; $77a1: $8c
    sbc [hl]                                      ; $77a2: $9e
    add e                                         ; $77a3: $83
    rst $08                                       ; $77a4: $cf
    ld [hl], e                                    ; $77a5: $73
    ld c, l                                       ; $77a6: $4d
    ld a, [de]                                    ; $77a7: $1a
    ld e, c                                       ; $77a8: $59
    ld d, l                                       ; $77a9: $55
    ld a, [c]                                     ; $77aa: $f2
    ld d, [hl]                                    ; $77ab: $56
    rrca                                          ; $77ac: $0f
    cp e                                          ; $77ad: $bb
    call nz, $a56e                                ; $77ae: $c4 $6e $a5
    cp $ab                                        ; $77b1: $fe $ab
    ld d, d                                       ; $77b3: $52
    db $e4                                        ; $77b4: $e4
    dec hl                                        ; $77b5: $2b
    sbc a                                         ; $77b6: $9f
    inc a                                         ; $77b7: $3c
    ld [hl], h                                    ; $77b8: $74
    sub d                                         ; $77b9: $92
    ldh [$61], a                                  ; $77ba: $e0 $61
    ld a, l                                       ; $77bc: $7d
    rst $08                                       ; $77bd: $cf
    sra a                                         ; $77be: $cb $2f
    ld c, h                                       ; $77c0: $4c
    ld a, c                                       ; $77c1: $79
    xor $bc                                       ; $77c2: $ee $bc
    db $fc                                        ; $77c4: $fc
    jp c, $feef                                   ; $77c5: $da $ef $fe

    jp nc, $b365                                  ; $77c8: $d2 $65 $b3

    ret c                                         ; $77cb: $d8

    ld l, e                                       ; $77cc: $6b
    jp nc, Jump_02a_782c                          ; $77cd: $d2 $2c $78

    sbc a                                         ; $77d0: $9f
    sub a                                         ; $77d1: $97
    sbc a                                         ; $77d2: $9f
    call c, $f8a0                                 ; $77d3: $dc $a0 $f8
    ld a, [hl+]                                   ; $77d6: $2a
    dec [hl]                                      ; $77d7: $35
    sub c                                         ; $77d8: $91
    ld c, c                                       ; $77d9: $49
    jp nc, $d894                                  ; $77da: $d2 $94 $d8

    cp h                                          ; $77dd: $bc
    db $fc                                        ; $77de: $fc
    db $e4                                        ; $77df: $e4
    ld b, $c5                                     ; $77e0: $06 $c5
    ld [hl], a                                    ; $77e2: $77
    add hl, hl                                    ; $77e3: $29
    sub b                                         ; $77e4: $90
    ld h, a                                       ; $77e5: $67
    rst $30                                       ; $77e6: $f7
    ret                                           ; $77e7: $c9


    add c                                         ; $77e8: $81
    cp e                                          ; $77e9: $bb
    ld h, $cd                                     ; $77ea: $26 $cd
    ld hl, sp+$4b                                 ; $77ec: $f8 $4b
    di                                            ; $77ee: $f3
    ld a, [c]                                     ; $77ef: $f2
    xor e                                         ; $77f0: $ab
    adc d                                         ; $77f1: $8a
    add $f8                                       ; $77f2: $c6 $f8
    inc d                                         ; $77f4: $14
    ld a, h                                       ; $77f5: $7c
    sub a                                         ; $77f6: $97
    push af                                       ; $77f7: $f5
    ld c, d                                       ; $77f8: $4a
    or e                                          ; $77f9: $b3
    and d                                         ; $77fa: $a2
    sub $5f                                       ; $77fb: $d6 $5f
    ld a, a                                       ; $77fd: $7f
    db $fd                                        ; $77fe: $fd
    xor a                                         ; $77ff: $af
    ld a, [hl+]                                   ; $7800: $2a
    ld c, d                                       ; $7801: $4a
    push de                                       ; $7802: $d5
    jp Jump_02a_673c                              ; $7803: $c3 $3c $67


    ld e, a                                       ; $7806: $5f
    ld h, d                                       ; $7807: $62
    di                                            ; $7808: $f3
    ld a, [c]                                     ; $7809: $f2
    sub e                                         ; $780a: $93
    dec de                                        ; $780b: $1b
    inc d                                         ; $780c: $14
    ld e, a                                       ; $780d: $5f
    sub l                                         ; $780e: $95
    ld h, c                                       ; $780f: $61
    ei                                            ; $7810: $fb
    sub d                                         ; $7811: $92
    ld a, [$424d]                                 ; $7812: $fa $4d $42

jr_02a_7815:
    jr jr_02a_7854                                ; $7815: $18 $3d

    and h                                         ; $7817: $a4
    sbc c                                         ; $7818: $99
    rst $20                                       ; $7819: $e7
    ld b, d                                       ; $781a: $42
    push af                                       ; $781b: $f5
    xor d                                         ; $781c: $aa
    call z, $afcb                                 ; $781d: $cc $cb $af
    and e                                         ; $7820: $a3
    ld d, a                                       ; $7821: $57
    ld h, b                                       ; $7822: $60
    ld l, c                                       ; $7823: $69
    xor a                                         ; $7824: $af
    ld d, d                                       ; $7825: $52
    ld h, c                                       ; $7826: $61
    add b                                         ; $7827: $80
    halt                                          ; $7828: $76
    call c, $f015                                 ; $7829: $dc $15 $f0

Jump_02a_782c:
    add l                                         ; $782c: $85
    ld l, c                                       ; $782d: $69
    db $fd                                        ; $782e: $fd
    ld a, c                                       ; $782f: $79
    ld sp, hl                                     ; $7830: $f9
    ld d, l                                       ; $7831: $55
    ld b, [hl]                                    ; $7832: $46
    jr nz, jr_02a_789a                            ; $7833: $20 $65

    ld c, d                                       ; $7835: $4a
    ld l, h                                       ; $7836: $6c
    dec e                                         ; $7837: $1d
    ld a, c                                       ; $7838: $79
    add b                                         ; $7839: $80
    ld a, c                                       ; $783a: $79
    ld sp, hl                                     ; $783b: $f9
    dec e                                         ; $783c: $1d
    or l                                          ; $783d: $b5
    and e                                         ; $783e: $a3
    adc l                                         ; $783f: $8d
    ld a, e                                       ; $7840: $7b
    jp nc, $e73c                                  ; $7841: $d2 $3c $e7

    ld b, [hl]                                    ; $7844: $46
    ld l, b                                       ; $7845: $68
    ld l, c                                       ; $7846: $69
    ld a, l                                       ; $7847: $7d
    sbc c                                         ; $7848: $99
    xor [hl]                                      ; $7849: $ae
    ld d, d                                       ; $784a: $52
    ld h, c                                       ; $784b: $61
    ld l, b                                       ; $784c: $68
    db $eb                                        ; $784d: $eb
    ld h, c                                       ; $784e: $61
    add h                                         ; $784f: $84
    sub [hl]                                      ; $7850: $96
    sub $97                                       ; $7851: $d6 $97
    jp hl                                         ; $7853: $e9


jr_02a_7854:
    ldh [$ab], a                                  ; $7854: $e0 $ab
    inc h                                         ; $7856: $24
    or [hl]                                       ; $7857: $b6
    ld c, d                                       ; $7858: $4a
    add l                                         ; $7859: $85
    xor l                                         ; $785a: $ad
    db $dd                                        ; $785b: $dd
    ld c, h                                       ; $785c: $4c
    cp [hl]                                       ; $785d: $be
    di                                            ; $785e: $f3
    ld [$8297], a                                 ; $785f: $ea $97 $82
    ld a, c                                       ; $7862: $79
    cp c                                          ; $7863: $b9
    or b                                          ; $7864: $b0
    adc [hl]                                      ; $7865: $8e
    ld h, h                                       ; $7866: $64
    push af                                       ; $7867: $f5
    nop                                           ; $7868: $00
    ld l, b                                       ; $7869: $68
    ld d, $7b                                     ; $786a: $16 $7b
    ld c, l                                       ; $786c: $4d
    sbc d                                         ; $786d: $9a
    add l                                         ; $786e: $85
    ld e, d                                       ; $786f: $5a
    rst $38                                       ; $7870: $ff
    jp hl                                         ; $7871: $e9


    ld b, d                                       ; $7872: $42
    push af                                       ; $7873: $f5
    xor d                                         ; $7874: $aa
    ld [hl], b                                    ; $7875: $70
    rst $20                                       ; $7876: $e7
    dec h                                         ; $7877: $25
    pop hl                                        ; $7878: $e1
    rst $20                                       ; $7879: $e7
    ld a, h                                       ; $787a: $7c
    xor [hl]                                      ; $787b: $ae
    ld d, d                                       ; $787c: $52
    ld h, c                                       ; $787d: $61
    jr nc, jr_02a_7815                            ; $787e: $30 $95

    sbc a                                         ; $7880: $9f
    ld a, h                                       ; $7881: $7c
    sbc b                                         ; $7882: $98
    sub $67                                       ; $7883: $d6 $67
    ld l, b                                       ; $7885: $68
    daa                                           ; $7886: $27
    xor e                                         ; $7887: $ab
    ld d, a                                       ; $7888: $57
    ld h, l                                       ; $7889: $65
    ld c, d                                       ; $788a: $4a
    ld l, h                                       ; $788b: $6c
    ld a, [c]                                     ; $788c: $f2
    ld h, c                                       ; $788d: $61
    ld e, d                                       ; $788e: $5a
    ld a, a                                       ; $788f: $7f
    ld a, [de]                                    ; $7890: $1a
    db $e3                                        ; $7891: $e3
    cp h                                          ; $7892: $bc
    db $fc                                        ; $7893: $fc
    ld a, [hl-]                                   ; $7894: $3a
    ld a, d                                       ; $7895: $7a
    dec b                                         ; $7896: $05
    sub [hl]                                      ; $7897: $96
    or $2a                                        ; $7898: $f6 $2a

jr_02a_789a:
    dec d                                         ; $789a: $15
    ld b, $f3                                     ; $789b: $06 $f3
    inc e                                         ; $789d: $1c
    ld a, a                                       ; $789e: $7f
    add hl, bc                                    ; $789f: $09

Call_02a_78a0:
    ld h, c                                       ; $78a0: $61
    ld d, $7b                                     ; $78a1: $16 $7b
    ld c, l                                       ; $78a3: $4d
    sbc d                                         ; $78a4: $9a
    cp l                                          ; $78a5: $bd
    push af                                       ; $78a6: $f5
    ld h, l                                       ; $78a7: $65
    pop bc                                        ; $78a8: $c1
    ei                                            ; $78a9: $fb

jr_02a_78aa:
    ld h, d                                       ; $78aa: $62
    add d                                         ; $78ab: $82
    ld [hl], e                                    ; $78ac: $73
    rst $10                                       ; $78ad: $d7
    sub c                                         ; $78ae: $91
    rlca                                          ; $78af: $07
    ld e, b                                       ; $78b0: $58
    set 0, a                                      ; $78b1: $cb $c7
    xor a                                         ; $78b3: $af
    ld a, h                                       ; $78b4: $7c
    sbc [hl]                                      ; $78b5: $9e
    ld l, e                                       ; $78b6: $6b
    res 4, l                                      ; $78b7: $cb $a5
    ld h, b                                       ; $78b9: $60
    and [hl]                                      ; $78ba: $a6
    inc sp                                        ; $78bb: $33
    ld e, l                                       ; $78bc: $5d
    ld hl, sp+$00                                 ; $78bd: $f8 $00
    ld a, [de]                                    ; $78bf: $1a
    db $fc                                        ; $78c0: $fc
    or h                                          ; $78c1: $b4
    sbc l                                         ; $78c2: $9d
    add $d7                                       ; $78c3: $c6 $d7
    and h                                         ; $78c5: $a4
    sub c                                         ; $78c6: $91
    ld d, l                                       ; $78c7: $55
    ld b, [hl]                                    ; $78c8: $46
    db $e4                                        ; $78c9: $e4
    ret                                           ; $78ca: $c9


    rla                                           ; $78cb: $17
    or e                                          ; $78cc: $b3
    ld d, d                                       ; $78cd: $52
    cp a                                          ; $78ce: $bf
    ld c, c                                       ; $78cf: $49
    ld [$dd03], sp                                ; $78d0: $08 $03 $dd
    push hl                                       ; $78d3: $e5
    ld bc, $e5e6                                  ; $78d4: $01 $e6 $e5
    ld [hl], a                                    ; $78d7: $77
    call nc, Call_000_368e                        ; $78d8: $d4 $8e $36
    xor $49                                       ; $78db: $ee $49
    di                                            ; $78dd: $f3
    inc e                                         ; $78de: $1c
    cp h                                          ; $78df: $bc
    ld c, d                                       ; $78e0: $4a
    ld d, l                                       ; $78e1: $55
    ld h, [hl]                                    ; $78e2: $66
    and a                                         ; $78e3: $a7

Jump_02a_78e4:
    xor h                                         ; $78e4: $ac
    ld e, h                                       ; $78e5: $5c
    add $9e                                       ; $78e6: $c6 $9e
    halt                                          ; $78e8: $76
    db $fd                                        ; $78e9: $fd
    ld b, e                                       ; $78ea: $43
    jr jr_02a_78aa                                ; $78eb: $18 $bd

    ld c, d                                       ; $78ed: $4a
    cp e                                          ; $78ee: $bb
    reti                                          ; $78ef: $d9


    and l                                         ; $78f0: $a5
    reti                                          ; $78f1: $d9


    sub d                                         ; $78f2: $92
    db $e4                                        ; $78f3: $e4
    ld c, e                                       ; $78f4: $4b
    ld a, e                                       ; $78f5: $7b
    ld c, l                                       ; $78f6: $4d
    ld a, [de]                                    ; $78f7: $1a
    or h                                          ; $78f8: $b4
    ld e, c                                       ; $78f9: $59
    db $ec                                        ; $78fa: $ec
    add hl, hl                                    ; $78fb: $29
    db $ed                                        ; $78fc: $ed
    ld a, [$bb87]                                 ; $78fd: $fa $87 $bb
    or b                                          ; $7900: $b0
    adc [hl]                                      ; $7901: $8e
    inc a                                         ; $7902: $3c
    inc a                                         ; $7903: $3c
    add hl, sp                                    ; $7904: $39
    ld [hl], a                                    ; $7905: $77
    cp d                                          ; $7906: $ba
    ldh a, [rSB]                                  ; $7907: $f0 $01
    inc [hl]                                      ; $7909: $34
    ld hl, sp-$0f                                 ; $790a: $f8 $f1
    scf                                           ; $790c: $37
    add $69                                       ; $790d: $c6 $69
    and a                                         ; $790f: $a7
    di                                            ; $7910: $f3
    ld a, [hl+]                                   ; $7911: $2a
    di                                            ; $7912: $f3
    sbc h                                         ; $7913: $9c
    ld a, a                                       ; $7914: $7f
    adc h                                         ; $7915: $8c
    ld l, e                                       ; $7916: $6b
    jp nc, $2f8c                                  ; $7917: $d2 $8c $2f

    ld [$d26b], a                                 ; $791a: $ea $6b $d2
    xor h                                         ; $791d: $ac
    xor b                                         ; $791e: $a8
    push af                                       ; $791f: $f5
    ld h, a                                       ; $7920: $67
    and a                                         ; $7921: $a7
    ld hl, $3086                                  ; $7922: $21 $86 $30
    db $dd                                        ; $7925: $dd

jr_02a_7926:
    db $e3                                        ; $7926: $e3
    dec hl                                        ; $7927: $2b
    db $fc                                        ; $7928: $fc
    add d                                         ; $7929: $82
    inc e                                         ; $792a: $1c
    db $fc                                        ; $792b: $fc
    xor a                                         ; $792c: $af
    cp e                                          ; $792d: $bb
    and h                                         ; $792e: $a4
    db $fd                                        ; $792f: $fd
    nop                                           ; $7930: $00
    add hl, hl                                    ; $7931: $29
    ld l, e                                       ; $7932: $6b
    ld hl, $fced                                  ; $7933: $21 $ed $fc
    db $ec                                        ; $7936: $ec
    sub h                                         ; $7937: $94
    dec [hl]                                      ; $7938: $35
    ld l, c                                       ; $7939: $69
    ld h, h                                       ; $793a: $64
    sbc l                                         ; $793b: $9d
    db $f4                                        ; $793c: $f4
    sbc e                                         ; $793d: $9b
    inc [hl]                                      ; $793e: $34
    ld sp, hl                                     ; $793f: $f9
    ld [$1e76], a                                 ; $7940: $ea $76 $1e
    cp b                                          ; $7943: $b8
    ld l, e                                       ; $7944: $6b
    ld d, l                                       ; $7945: $55
    sub c                                         ; $7946: $91
    ld b, $61                                     ; $7947: $06 $61
    rst $00                                       ; $7949: $c7
    db $fd                                        ; $794a: $fd
    rst $00                                       ; $794b: $c7
    reti                                          ; $794c: $d9


    ld a, [c]                                     ; $794d: $f2
    ccf                                           ; $794e: $3f
    rst $08                                       ; $794f: $cf
    or l                                          ; $7950: $b5
    dec h                                         ; $7951: $25
    ld a, c                                       ; $7952: $79
    ld hl, sp+$79                                 ; $7953: $f8 $79
    ld sp, hl                                     ; $7955: $f9
    ld b, c                                       ; $7956: $41
    ld sp, hl                                     ; $7957: $f9
    ld l, b                                       ; $7958: $68
    ld a, l                                       ; $7959: $7d
    ld b, b                                       ; $795a: $40
    ld e, e                                       ; $795b: $5b
    xor a                                         ; $795c: $af
    inc [hl]                                      ; $795d: $34
    and e                                         ; $795e: $a3
    or a                                          ; $795f: $b7
    cp [hl]                                       ; $7960: $be
    xor h                                         ; $7961: $ac
    ld c, [hl]                                    ; $7962: $4e
    ret                                           ; $7963: $c9


    adc a                                         ; $7964: $8f
    cpl                                           ; $7965: $2f
    ld [$e4bb], a                                 ; $7966: $ea $bb $e4
    cpl                                           ; $7969: $2f
    rrca                                          ; $796a: $0f
    ld a, [hl]                                    ; $796b: $7e
    add hl, hl                                    ; $796c: $29
    sbc b                                         ; $796d: $98
    sub a                                         ; $796e: $97
    ld c, e                                       ; $796f: $4b
    ld bc, $49ac                                  ; $7970: $01 $ac $49
    or e                                          ; $7973: $b3
    ldh a, [rTMA]                                 ; $7974: $f0 $06
    push bc                                       ; $7976: $c5
    rst $00                                       ; $7977: $c7
    ld l, $54                                     ; $7978: $2e $54
    ld l, c                                       ; $797a: $69
    ld a, l                                       ; $797b: $7d
    ld b, c                                       ; $797c: $41
    jr jr_02a_7926                                ; $797d: $18 $a7

    db $e4                                        ; $797f: $e4
    sub d                                         ; $7980: $92
    ld a, [hl]                                    ; $7981: $7e
    rla                                           ; $7982: $17
    and [hl]                                      ; $7983: $a6
    ld sp, $ff26                                  ; $7984: $31 $26 $ff
    ld l, h                                       ; $7987: $6c
    sub a                                         ; $7988: $97
    and $e5                                       ; $7989: $e6 $e5
    ld [hl], a                                    ; $798b: $77
    ld a, [$cb83]                                 ; $798c: $fa $83 $cb
    xor l                                         ; $798f: $ad
    db $fc                                        ; $7990: $fc
    reti                                          ; $7991: $d9


    ld e, d                                       ; $7992: $5a
    cp [hl]                                       ; $7993: $be
    ld a, [c]                                     ; $7994: $f2
    sbc e                                         ; $7995: $9b
    inc [hl]                                      ; $7996: $34
    cp $7a                                        ; $7997: $fe $7a
    ld c, c                                       ; $7999: $49
    db $e3                                        ; $799a: $e3
    db $eb                                        ; $799b: $eb
    cp h                                          ; $799c: $bc
    add h                                         ; $799d: $84
    rla                                           ; $799e: $17
    ldh [rNR52], a                                ; $799f: $e0 $26
    ld hl, $bd0c                                  ; $79a1: $21 $0c $bd
    jp nc, Jump_02a_4a0c                          ; $79a4: $d2 $0c $4a

    sbc d                                         ; $79a7: $9a
    ret z                                         ; $79a8: $c8

    ld d, $e4                                     ; $79a9: $16 $e4
    db $fc                                        ; $79ab: $fc
    ld h, e                                       ; $79ac: $63
    ld e, h                                       ; $79ad: $5c
    ld [hl], a                                    ; $79ae: $77
    ld c, c                                       ; $79af: $49
    ei                                            ; $79b0: $fb
    ld bc, $7652                                  ; $79b1: $01 $52 $76
    sbc d                                         ; $79b4: $9a
    cp c                                          ; $79b5: $b9
    ld [hl+], a                                   ; $79b6: $22
    rra                                           ; $79b7: $1f
    db $e3                                        ; $79b8: $e3
    cp h                                          ; $79b9: $bc
    xor b                                         ; $79ba: $a8
    xor a                                         ; $79bb: $af
    ld c, c                                       ; $79bc: $49
    inc sp                                        ; $79bd: $33
    dec sp                                        ; $79be: $3b
    dec c                                         ; $79bf: $0d
    or c                                          ; $79c0: $b1
    ld a, c                                       ; $79c1: $79
    ld sp, hl                                     ; $79c2: $f9
    ld d, l                                       ; $79c3: $55
    ld b, [hl]                                    ; $79c4: $46
    ld a, [hl]                                    ; $79c5: $7e
    halt                                          ; $79c6: $76
    jp z, $349a                                   ; $79c7: $ca $9a $34

    or d                                          ; $79ca: $b2
    dec de                                        ; $79cb: $1b
    inc hl                                        ; $79cc: $23
    dec a                                         ; $79cd: $3d
    nop                                           ; $79ce: $00
    jp nz, $f196                                  ; $79cf: $c2 $96 $f1

    rla                                           ; $79d2: $17
    jp z, $bcbc                                   ; $79d3: $ca $bc $bc

    db $fc                                        ; $79d6: $fc
    ld hl, sp-$69                                 ; $79d7: $f8 $97
    sbc a                                         ; $79d9: $9f
    adc $7e                                       ; $79da: $ce $7e
    ld a, [hl]                                    ; $79dc: $7e
    pop af                                        ; $79dd: $f1
    ld bc, $9556                                  ; $79de: $01 $56 $95
    ld e, e                                       ; $79e1: $5b
    push de                                       ; $79e2: $d5
    sbc a                                         ; $79e3: $9f
    ld h, b                                       ; $79e4: $60
    ld c, c                                       ; $79e5: $49
    di                                            ; $79e6: $f3
    ld a, [c]                                     ; $79e7: $f2
    dec bc                                        ; $79e8: $0b
    inc h                                         ; $79e9: $24
    dec c                                         ; $79ea: $0d
    ld sp, $1840                                  ; $79eb: $31 $40 $18
    ld b, a                                       ; $79ee: $47
    push bc                                       ; $79ef: $c5
    jr c, jr_02a_7a21                             ; $79f0: $38 $2f

    cp a                                          ; $79f2: $bf
    xor d                                         ; $79f3: $aa
    call c, $feaa                                 ; $79f4: $dc $aa $fe
    inc b                                         ; $79f7: $04
    ld c, e                                       ; $79f8: $4b
    db $e3                                        ; $79f9: $e3
    ld [hl], b                                    ; $79fa: $70
    reti                                          ; $79fb: $d9


    cpl                                           ; $79fc: $2f
    call nc, $cffa                                ; $79fd: $d4 $fa $cf
    dec [hl]                                      ; $7a00: $35
    sub $2f                                       ; $7a01: $d6 $2f
    dec b                                         ; $7a03: $05
    db $d3                                        ; $7a04: $d3
    pop af                                        ; $7a05: $f1
    ld a, [de]                                    ; $7a06: $1a
    db $eb                                        ; $7a07: $eb
    db $d3                                        ; $7a08: $d3
    sub c                                         ; $7a09: $91
    add d                                         ; $7a0a: $82
    scf                                           ; $7a0b: $37
    ld a, e                                       ; $7a0c: $7b
    ld c, $9d                                     ; $7a0d: $0e $9d
    sub a                                         ; $7a0f: $97
    ei                                            ; $7a10: $fb

jr_02a_7a11:
    ld d, h                                       ; $7a11: $54
    dec a                                         ; $7a12: $3d
    jp nz, $8996                                  ; $7a13: $c2 $96 $89

    cp c                                          ; $7a16: $b9
    db $f4                                        ; $7a17: $f4
    ld l, h                                       ; $7a18: $6c
    db $ed                                        ; $7a19: $ed
    ld h, [hl]                                    ; $7a1a: $66
    db $f4                                        ; $7a1b: $f4
    db $fc                                        ; $7a1c: $fc
    ret nz                                        ; $7a1d: $c0

    inc a                                         ; $7a1e: $3c
    ei                                            ; $7a1f: $fb
    ld b, c                                       ; $7a20: $41

jr_02a_7a21:
    ret                                           ; $7a21: $c9


    add a                                         ; $7a22: $87
    and l                                         ; $7a23: $a5
    ld [hl], c                                    ; $7a24: $71
    cp b                                          ; $7a25: $b8
    db $ec                                        ; $7a26: $ec
    rst $10                                       ; $7a27: $d7
    ld l, [hl]                                    ; $7a28: $6e
    ld b, $fe                                     ; $7a29: $06 $fe
    sbc l                                         ; $7a2b: $9d
    adc $a5                                       ; $7a2c: $ce $a5
    ld h, b                                       ; $7a2e: $60
    ld c, c                                       ; $7a2f: $49
    ei                                            ; $7a30: $fb
    jr nz, jr_02a_7a33                            ; $7a31: $20 $00

jr_02a_7a33:
    add h                                         ; $7a33: $84
    ld bc, $b196                                  ; $7a34: $01 $96 $b1
    and h                                         ; $7a37: $a4
    sbc d                                         ; $7a38: $9a
    xor a                                         ; $7a39: $af
    ld c, [hl]                                    ; $7a3a: $4e
    ret                                           ; $7a3b: $c9


    adc a                                         ; $7a3c: $8f
    cpl                                           ; $7a3d: $2f
    call Call_02a_7cbc                            ; $7a3e: $cd $bc $7c
    inc sp                                        ; $7a41: $33
    sub [hl]                                      ; $7a42: $96
    ld d, h                                       ; $7a43: $54
    di                                            ; $7a44: $f3
    pop bc                                        ; $7a45: $c1
    adc e                                         ; $7a46: $8b
    push af                                       ; $7a47: $f5
    rla                                           ; $7a48: $17
    and [hl]                                      ; $7a49: $a6
    db $fc                                        ; $7a4a: $fc
    xor d                                         ; $7a4b: $aa
    ld [hl], d                                    ; $7a4c: $72
    xor e                                         ; $7a4d: $ab
    ld a, [$ecd3]                                 ; $7a4e: $fa $d3 $ec
    sub h                                         ; $7a51: $94
    or c                                          ; $7a52: $b1
    ld c, e                                       ; $7a53: $4b
    db $f4                                        ; $7a54: $f4
    add d                                         ; $7a55: $82
    jr nc, @-$21                                  ; $7a56: $30 $dd

    jp z, $eaad                                   ; $7a58: $ca $ad $ea

    ld c, a                                       ; $7a5b: $4f
    db $eb                                        ; $7a5c: $eb
    and h                                         ; $7a5d: $a4
    xor a                                         ; $7a5e: $af
    ld [hl], e                                    ; $7a5f: $73
    ld a, a                                       ; $7a60: $7f
    sub b                                         ; $7a61: $90
    add [hl]                                      ; $7a62: $86
    jr jr_02a_7a11                                ; $7a63: $18 $ac

    inc hl                                        ; $7a65: $23
    rst $28                                       ; $7a66: $ef
    sbc $cc                                       ; $7a67: $de $cc
    dec d                                         ; $7a69: $15
    cp h                                          ; $7a6a: $bc
    sbc c                                         ; $7a6b: $99

jr_02a_7a6c:
    call c, $f8a0                                 ; $7a6c: $dc $a0 $f8
    or h                                          ; $7a6f: $b4
    sbc l                                         ; $7a70: $9d
    add $47                                       ; $7a71: $c6 $47
    ret                                           ; $7a73: $c9


    inc hl                                        ; $7a74: $23
    inc c                                         ; $7a75: $0c
    rst $00                                       ; $7a76: $c7
    ld e, d                                       ; $7a77: $5a
    ld e, a                                       ; $7a78: $5f
    ld d, $33                                     ; $7a79: $16 $33
    db $eb                                        ; $7a7b: $eb
    db $d3                                        ; $7a7c: $d3
    ld d, l                                       ; $7a7d: $55
    push hl                                       ; $7a7e: $e5
    ld d, [hl]                                    ; $7a7f: $56
    push af                                       ; $7a80: $f5
    and a                                         ; $7a81: $a7
    add c                                         ; $7a82: $81
    adc e                                         ; $7a83: $8b
    sbc $a0                                       ; $7a84: $de $a0
    ld hl, sp+$2e                                 ; $7a86: $f8 $2e
    call $efcb                                    ; $7a88: $cd $cb $ef
    sbc e                                         ; $7a8b: $9b
    rst $28                                       ; $7a8c: $ef
    ld a, [hl-]                                   ; $7a8d: $3a
    adc e                                         ; $7a8e: $8b
    rst $10                                       ; $7a8f: $d7
    ld h, b                                       ; $7a90: $60
    ld d, l                                       ; $7a91: $55
    cp c                                          ; $7a92: $b9
    ld sp, $0a5e                                  ; $7a93: $31 $5e $0a
    db $10                                        ; $7a96: $10
    ld b, $3d                                     ; $7a97: $06 $3d
    ld c, e                                       ; $7a99: $4b
    or e                                          ; $7a9a: $b3
    dec bc                                        ; $7a9b: $0b
    ld a, e                                       ; $7a9c: $7b
    db $eb                                        ; $7a9d: $eb
    ld c, e                                       ; $7a9e: $4b
    sub e                                         ; $7a9f: $93
    db $f4                                        ; $7aa0: $f4
    ld [hl], e                                    ; $7aa1: $73
    adc l                                         ; $7aa2: $8d
    push af                                       ; $7aa3: $f5
    ld c, e                                       ; $7aa4: $4b
    pop bc                                        ; $7aa5: $c1
    or h                                          ; $7aa6: $b4
    sbc l                                         ; $7aa7: $9d
    add $57                                       ; $7aa8: $c6 $57
    sub l                                         ; $7aaa: $95
    ld e, e                                       ; $7aab: $5b
    push de                                       ; $7aac: $d5
    sbc a                                         ; $7aad: $9f
    and b                                         ; $7aae: $a0
    dec hl                                        ; $7aaf: $2b
    ld b, $96                                     ; $7ab0: $06 $96
    add l                                         ; $7ab2: $85
    rla                                           ; $7ab3: $17
    ld h, b                                       ; $7ab4: $60
    ld h, c                                       ; $7ab5: $61
    or e                                          ; $7ab6: $b3
    ret nc                                        ; $7ab7: $d0

    add h                                         ; $7ab8: $84
    dec [hl]                                      ; $7ab9: $35
    ld e, b                                       ; $7aba: $58
    ld d, l                                       ; $7abb: $55
    ld l, [hl]                                    ; $7abc: $6e
    ld d, l                                       ; $7abd: $55
    ld a, a                                       ; $7abe: $7f
    ld a, [de]                                    ; $7abf: $1a
    ld l, b                                       ; $7ac0: $68
    ld d, h                                       ; $7ac1: $54
    add [hl]                                      ; $7ac2: $86
    jr nc, jr_02a_7a6c                            ; $7ac3: $30 $a7

    inc a                                         ; $7ac5: $3c
    rlca                                          ; $7ac6: $07
    sbc a                                         ; $7ac7: $9f
    rst $18                                       ; $7ac8: $df
    ldh a, [$67]                                  ; $7ac9: $f0 $67
    ld e, c                                       ; $7acb: $59
    ldh a, [$3e]                                  ; $7acc: $f0 $3e
    ld e, l                                       ; $7ace: $5d
    pop de                                        ; $7acf: $d1
    dec hl                                        ; $7ad0: $2b
    sub l                                         ; $7ad1: $95
    ld [hl], c                                    ; $7ad2: $71
    xor $2c                                       ; $7ad3: $ee $2c
    di                                            ; $7ad5: $f3
    ld [hl], d                                    ; $7ad6: $72
    xor c                                         ; $7ad7: $a9
    ld a, $4b                                     ; $7ad8: $3e $4b
    dec l                                         ; $7ada: $2d
    add $15                                       ; $7adb: $c6 $15
    or l                                          ; $7add: $b5
    cp $ae                                        ; $7ade: $fe $ae
    rst $08                                       ; $7ae0: $cf
    ld a, [hl]                                    ; $7ae1: $7e
    push af                                       ; $7ae2: $f5
    ld a, [c]                                     ; $7ae3: $f2
    ld a, [c]                                     ; $7ae4: $f2
    inc c                                         ; $7ae5: $0c
    ld h, c                                       ; $7ae6: $61
    dec a                                         ; $7ae7: $3d
    ld c, d                                       ; $7ae8: $4a
    jp nz, $dc0f                                  ; $7ae9: $c2 $0f $dc

    ld d, h                                       ; $7aec: $54
    push af                                       ; $7aed: $f5
    cp [hl]                                       ; $7aee: $be
    ld c, l                                       ; $7aef: $4d
    ld h, a                                       ; $7af0: $67
    dec l                                         ; $7af1: $2d
    or c                                          ; $7af2: $b1
    pop af                                        ; $7af3: $f1
    ld a, [c]                                     ; $7af4: $f2
    ld [hl], d                                    ; $7af5: $72
    add hl, bc                                    ; $7af6: $09
    cp d                                          ; $7af7: $ba
    xor h                                         ; $7af8: $ac
    ld b, a                                       ; $7af9: $47
    ld sp, hl                                     ; $7afa: $f9
    ld h, [hl]                                    ; $7afb: $66
    ldh [$62], a                                  ; $7afc: $e0 $62
    ld a, h                                       ; $7afe: $7c
    pop af                                        ; $7aff: $f1
    sub $7f                                       ; $7b00: $d6 $7f
    sub d                                         ; $7b02: $92
    add hl, bc                                    ; $7b03: $09
    cp $02                                        ; $7b04: $fe $02
    ld [$2703], sp                                ; $7b06: $08 $03 $27
    ld l, e                                       ; $7b09: $6b
    or h                                          ; $7b0a: $b4
    or e                                          ; $7b0b: $b3
    ld e, c                                       ; $7b0c: $59
    ld d, l                                       ; $7b0d: $55
    inc [hl]                                      ; $7b0e: $34
    add $a7                                       ; $7b0f: $c6 $a7
    ldh [$d9], a                                  ; $7b11: $e0 $d9
    jp nz, $e79f                                  ; $7b13: $c2 $9f $e7

Jump_02a_7b16:
    ld a, [hl-]                                   ; $7b16: $3a
    ld d, c                                       ; $7b17: $51
    sbc e                                         ; $7b18: $9b
    ld d, l                                       ; $7b19: $55
    push hl                                       ; $7b1a: $e5
    ld d, [hl]                                    ; $7b1b: $56
    push af                                       ; $7b1c: $f5
    and a                                         ; $7b1d: $a7
    dec h                                         ; $7b1e: $25
    dec l                                         ; $7b1f: $2d
    adc l                                         ; $7b20: $8d
    xor h                                         ; $7b21: $ac
    dec l                                         ; $7b22: $2d
    sbc c                                         ; $7b23: $99
    ld hl, $9da0                                  ; $7b24: $21 $a0 $9d
    sub d                                         ; $7b27: $92
    db $e3                                        ; $7b28: $e3
    or l                                          ; $7b29: $b5
    pop hl                                        ; $7b2a: $e1
    adc $8b                                       ; $7b2b: $ce $8b
    ld a, [$34f8]                                 ; $7b2d: $fa $f8 $34
    sub c                                         ; $7b30: $91
    xor l                                         ; $7b31: $ad
    db $fd                                        ; $7b32: $fd
    ld h, e                                       ; $7b33: $63
    ld c, d                                       ; $7b34: $4a
    pop bc                                        ; $7b35: $c1
    ld c, e                                       ; $7b36: $4b
    ld a, [de]                                    ; $7b37: $1a
    add sp, -$7e                                  ; $7b38: $e8 $82
    ld bc, $3727                                  ; $7b3a: $01 $27 $37
    dec bc                                        ; $7b3d: $0b
    ld b, h                                       ; $7b3e: $44
    ld l, c                                       ; $7b3f: $69
    and c                                         ; $7b40: $a1
    sub $1f                                       ; $7b41: $d6 $1f
    and [hl]                                      ; $7b43: $a6
    ld h, e                                       ; $7b44: $63
    rra                                           ; $7b45: $1f
    ld l, a                                       ; $7b46: $6f
    ld [hl], l                                    ; $7b47: $75
    db $d3                                        ; $7b48: $d3
    ret nz                                        ; $7b49: $c0

    xor d                                         ; $7b4a: $aa
    ld [hl], d                                    ; $7b4b: $72
    xor e                                         ; $7b4c: $ab
    ld a, [$6cd3]                                 ; $7b4d: $fa $d3 $6c
    cp c                                          ; $7b50: $b9
    sub l                                         ; $7b51: $95
    ld [bc], a                                    ; $7b52: $02
    db $fc                                        ; $7b53: $fc
    inc hl                                        ; $7b54: $23
    inc c                                         ; $7b55: $0c
    cp l                                          ; $7b56: $bd
    jp nc, Jump_000_258c                          ; $7b57: $d2 $8c $25

    push de                                       ; $7b5a: $d5
    ld a, h                                       ; $7b5b: $7c
    ld l, c                                       ; $7b5c: $69
    ei                                            ; $7b5d: $fb
    db $d3                                        ; $7b5e: $d3
    ldh [$7f], a                                  ; $7b5f: $e0 $7f
    ld d, l                                       ; $7b61: $55
    cp c                                          ; $7b62: $b9
    ld d, l                                       ; $7b63: $55
    db $fd                                        ; $7b64: $fd
    add hl, bc                                    ; $7b65: $09
    and [hl]                                      ; $7b66: $a6

jr_02a_7b67:
    db $ed                                        ; $7b67: $ed
    or h                                          ; $7b68: $b4
    cp $bc                                        ; $7b69: $fe $bc
    db $fc                                        ; $7b6b: $fc
    adc [hl]                                      ; $7b6c: $8e
    sub a                                         ; $7b6d: $97
    inc [hl]                                      ; $7b6e: $34
    call nz, Call_02a_5c76                        ; $7b6f: $c4 $76 $5c
    call z, $b414                                 ; $7b72: $cc $14 $b4
    ld d, $d7                                     ; $7b75: $16 $d7
    dec hl                                        ; $7b77: $2b
    or b                                          ; $7b78: $b0
    or $f3                                        ; $7b79: $f6 $f3
    scf                                           ; $7b7b: $37
    or d                                          ; $7b7c: $b2
    sub a                                         ; $7b7d: $97
    ld a, c                                       ; $7b7e: $79
    ld sp, hl                                     ; $7b7f: $f9
    db $10                                        ; $7b80: $10
    ld h, c                                       ; $7b81: $61
    daa                                           ; $7b82: $27
    scf                                           ; $7b83: $37
    ld h, e                                       ; $7b84: $63
    jp z, $a7c6                                   ; $7b85: $ca $c6 $a7

    call nc, $f061                                ; $7b88: $d4 $61 $f0
    sub $a7                                       ; $7b8b: $d6 $a7
    ld sp, $606d                                  ; $7b8d: $31 $6d $60
    ld a, [hl-]                                   ; $7b90: $3a
    cp $bf                                        ; $7b91: $fe $bf
    adc $9d                                       ; $7b93: $ce $9d
    ld c, e                                       ; $7b95: $4b
    ld [hl], e                                    ; $7b96: $73
    add hl, hl                                    ; $7b97: $29
    sbc b                                         ; $7b98: $98
    rst $20                                       ; $7b99: $e7
    ld b, b                                       ; $7b9a: $40
    xor l                                         ; $7b9b: $ad
    ccf                                           ; $7b9c: $3f
    db $d3                                        ; $7b9d: $d3
    sbc c                                         ; $7b9e: $99
    adc [hl]                                      ; $7b9f: $8e
    ld e, $7c                                     ; $7ba0: $1e $7c
    rra                                           ; $7ba2: $1f
    inc b                                         ; $7ba3: $04
    ld [$9603], sp                                ; $7ba4: $08 $03 $96
    add l                                         ; $7ba7: $85
    rla                                           ; $7ba8: $17
    ld h, b                                       ; $7ba9: $60
    ld b, c                                       ; $7baa: $41
    ld e, [hl]                                    ; $7bab: $5e

Jump_02a_7bac:
    ld a, [bc]                                    ; $7bac: $0a
    sub [hl]                                      ; $7bad: $96
    add $97                                       ; $7bae: $c6 $97
    inc [hl]                                      ; $7bb0: $34
    cpl                                           ; $7bb1: $2f
    cp a                                          ; $7bb2: $bf
    ld a, b                                       ; $7bb3: $78
    xor c                                         ; $7bb4: $a9
    ld c, $e3                                     ; $7bb5: $0e $e3
    xor a                                         ; $7bb7: $af
    sub a                                         ; $7bb8: $97
    ld sp, $6865                                  ; $7bb9: $31 $65 $68
    xor l                                         ; $7bbc: $ad
    ld e, a                                       ; $7bbd: $5f
    add e                                         ; $7bbe: $83
    jp hl                                         ; $7bbf: $e9


    and b                                         ; $7bc0: $a0
    ld [de], a                                    ; $7bc1: $12
    push af                                       ; $7bc2: $f5
    xor d                                         ; $7bc3: $aa
    inc l                                         ; $7bc4: $2c
    ret z                                         ; $7bc5: $c8

    ld l, b                                       ; $7bc6: $68
    cp a                                          ; $7bc7: $bf
    ld [hl], b                                    ; $7bc8: $70
    rst $10                                       ; $7bc9: $d7
    and h                                         ; $7bca: $a4
    ld e, c                                       ; $7bcb: $59
    sbc l                                         ; $7bcc: $9d
    sub d                                         ; $7bcd: $92
    ld b, a                                       ; $7bce: $47
    jr jr_02a_7b67                                ; $7bcf: $18 $96

    pop af                                        ; $7bd1: $f1
    ld c, c                                       ; $7bd2: $49
    db $ec                                        ; $7bd3: $ec
    ld h, l                                       ; $7bd4: $65
    rst $10                                       ; $7bd5: $d7
    sbc $c9                                       ; $7bd6: $de $c9
    ld [bc], a                                    ; $7bd8: $02
    ld l, b                                       ; $7bd9: $68
    and a                                         ; $7bda: $a7
    and h                                         ; $7bdb: $a4
    ret z                                         ; $7bdc: $c8

    add l                                         ; $7bdd: $85
    ld d, l                                       ; $7bde: $55
    ld l, c                                       ; $7bdf: $69
    ld [hl+], a                                   ; $7be0: $22
    dec de                                        ; $7be1: $1b
    ld a, a                                       ; $7be2: $7f
    ld l, c                                       ; $7be3: $69
    ld a, [hl-]                                   ; $7be4: $3a
    ld e, e                                       ; $7be5: $5b
    xor a                                         ; $7be6: $af
    call z, $41be                                 ; $7be7: $cc $be $41
    pop af                                        ; $7bea: $f1
    pop af                                        ; $7beb: $f1
    rst $10                                       ; $7bec: $d7
    bit 6, h                                      ; $7bed: $cb $74
    ld d, l                                       ; $7bef: $55
    cp c                                          ; $7bf0: $b9
    ld d, l                                       ; $7bf1: $55
    db $fd                                        ; $7bf2: $fd
    xor c                                         ; $7bf3: $a9
    dec hl                                        ; $7bf4: $2b
    ld b, $bd                                     ; $7bf5: $06 $bd
    jp nc, $6cc8                                  ; $7bf7: $d2 $c8 $6c

    cp c                                          ; $7bfa: $b9
    ld c, a                                       ; $7bfb: $4f
    ld l, h                                       ; $7bfc: $6c
    xor l                                         ; $7bfd: $ad
    cpl                                           ; $7bfe: $2f
    pop hl                                        ; $7bff: $e1
    ld c, l                                       ; $7c00: $4d
    ld a, [$d85d]                                 ; $7c01: $fa $5d $d8
    ld sp, hl                                     ; $7c04: $f9
    and $fa                                       ; $7c05: $e6 $fa
    ld c, a                                       ; $7c07: $4f
    ld l, c                                       ; $7c08: $69
    rra                                           ; $7c09: $1f
    inc b                                         ; $7c0a: $04
    push hl                                       ; $7c0b: $e5
    sub l                                         ; $7c0c: $95
    ld hl, $960c                                  ; $7c0d: $21 $0c $96
    ret                                           ; $7c10: $c9


    ld l, e                                       ; $7c11: $6b
    adc h                                         ; $7c12: $8c
    call $ffec                                    ; $7c13: $cd $ec $ff
    cp b                                          ; $7c16: $b8
    ld a, b                                       ; $7c17: $78
    db $eb                                        ; $7c18: $eb
    ccf                                           ; $7c19: $3f
    ld c, e                                       ; $7c1a: $4b
    call $abfa                                    ; $7c1b: $cd $fa $ab
    ld [hl-], a                                   ; $7c1e: $32
    db $fc                                        ; $7c1f: $fc
    and l                                         ; $7c20: $a5
    pop af                                        ; $7c21: $f1
    and l                                         ; $7c22: $a5
    cp l                                          ; $7c23: $bd
    or b                                          ; $7c24: $b0
    add hl, de                                    ; $7c25: $19
    sub h                                         ; $7c26: $94
    adc a                                         ; $7c27: $8f
    ld [hl], c                                    ; $7c28: $71
    ld [hl], b                                    ; $7c29: $70
    xor c                                         ; $7c2a: $a9
    ld a, [$5659]                                 ; $7c2b: $fa $59 $56
    ld l, c                                       ; $7c2e: $69
    ld hl, sp-$0d                                 ; $7c2f: $f8 $f3
    ld e, h                                       ; $7c31: $5c
    ld l, e                                       ; $7c32: $6b
    ld b, $bc                                     ; $7c33: $06 $bc
    adc d                                         ; $7c35: $8a
    inc bc                                        ; $7c36: $03
    jp nz, $dfad                                  ; $7c37: $c2 $ad $df

    ld [hl], b                                    ; $7c3a: $70
    rst $00                                       ; $7c3b: $c7
    sub a                                         ; $7c3c: $97
    ld e, h                                       ; $7c3d: $5c
    daa                                           ; $7c3e: $27
    or l                                          ; $7c3f: $b5
    ld a, [hl+]                                   ; $7c40: $2a
    rst $08                                       ; $7c41: $cf
    ld b, $19                                     ; $7c42: $06 $19
    cp $d2                                        ; $7c44: $fe $d2
    ld e, [hl]                                    ; $7c46: $5e
    ret c                                         ; $7c47: $d8

    xor h                                         ; $7c48: $ac
    ld d, d                                       ; $7c49: $52
    inc de                                        ; $7c4a: $13
    sbc c                                         ; $7c4b: $99
    inc h                                         ; $7c4c: $24
    xor l                                         ; $7c4d: $ad
    jp nc, Jump_02a_43fa                          ; $7c4e: $d2 $fa $43

    ld d, a                                       ; $7c51: $57
    inc c                                         ; $7c52: $0c
    sub [hl]                                      ; $7c53: $96
    ld l, c                                       ; $7c54: $69
    db $e4                                        ; $7c55: $e4
    or l                                          ; $7c56: $b5
    add c                                         ; $7c57: $81
    reti                                          ; $7c58: $d9


    rst $38                                       ; $7c59: $ff
    ld [hl], c                                    ; $7c5a: $71
    pop af                                        ; $7c5b: $f1
    sub $7f                                       ; $7c5c: $d6 $7f
    sub [hl]                                      ; $7c5e: $96
    dec d                                         ; $7c5f: $15
    or l                                          ; $7c60: $b5
    cp $3c                                        ; $7c61: $fe $3c
    rst $00                                       ; $7c63: $c7
    ld l, e                                       ; $7c64: $6b
    xor h                                         ; $7c65: $ac
    cpl                                           ; $7c66: $2f
    ld l, c                                       ; $7c67: $69
    rra                                           ; $7c68: $1f
    inc b                                         ; $7c69: $04
    ld d, b                                       ; $7c6a: $50
    ld a, $46                                     ; $7c6b: $3e $46
    ret c                                         ; $7c6d: $d8

    and l                                         ; $7c6e: $a5
    or l                                          ; $7c6f: $b5
    sub b                                         ; $7c70: $90
    halt                                          ; $7c71: $76
    cp [hl]                                       ; $7c72: $be
    ld b, $ab                                     ; $7c73: $06 $ab
    and d                                         ; $7c75: $a2

Jump_02a_7c76:
    ld [bc], a                                    ; $7c76: $02
    jr nz, @+$0e                                  ; $7c77: $20 $0c

    sub [hl]                                      ; $7c79: $96
    ld e, d                                       ; $7c7a: $5a
    jr c, @-$36                                   ; $7c7b: $38 $c8

    ld sp, hl                                     ; $7c7d: $f9
    sub l                                         ; $7c7e: $95
    ld h, a                                       ; $7c7f: $67
    call c, Call_02a_7659                         ; $7c80: $dc $59 $76
    sbc [hl]                                      ; $7c83: $9e
    ld bc, $af1f                                  ; $7c84: $01 $1f $af
    db $e4                                        ; $7c87: $e4
    di                                            ; $7c88: $f3
    inc e                                         ; $7c89: $1c
    ld e, h                                       ; $7c8a: $5c
    xor d                                         ; $7c8b: $aa
    rst $28                                       ; $7c8c: $ef
    sub d                                         ; $7c8d: $92
    rst $20                                       ; $7c8e: $e7
    ld [hl], h                                    ; $7c8f: $74
    ld [hl], h                                    ; $7c90: $74
    xor e                                         ; $7c91: $ab
    rst $20                                       ; $7c92: $e7
    ld c, $d2                                     ; $7c93: $0e $d2
    or $d9                                        ; $7c95: $f6 $d9
    xor a                                         ; $7c97: $af

jr_02a_7c98:
    ld e, [hl]                                    ; $7c98: $5e
    ld e, [hl]                                    ; $7c99: $5e
    jp c, Jump_000_10cf                           ; $7c9a: $da $cf $10

    ld b, $3d                                     ; $7c9d: $06 $3d
    jp z, $2aaf                                   ; $7c9f: $ca $af $2a

    or a                                          ; $7ca2: $b7
    xor d                                         ; $7ca3: $aa
    ccf                                           ; $7ca4: $3f
    dec c                                         ; $7ca5: $0d
    xor [hl]                                      ; $7ca6: $ae
    dec de                                        ; $7ca7: $1b
    push af                                       ; $7ca8: $f5
    sbc e                                         ; $7ca9: $9b
    or h                                          ; $7caa: $b4
    inc [hl]                                      ; $7cab: $34
    ld c, $97                                     ; $7cac: $0e $97
    db $fd                                        ; $7cae: $fd
    adc d                                         ; $7caf: $8a
    jp nz, Jump_02a_7482                          ; $7cb0: $c2 $82 $74

    ld a, a                                       ; $7cb3: $7f
    ld a, [de]                                    ; $7cb4: $1a
    cp h                                          ; $7cb5: $bc

Jump_02a_7cb6:
    call c, $8034                                 ; $7cb6: $dc $34 $80
    jr nc, jr_02a_7ce8                            ; $7cb9: $30 $2d

    add hl, hl                                    ; $7cbb: $29

Call_02a_7cbc:
    jp nc, $6770                                  ; $7cbc: $d2 $70 $67

    add hl, de                                    ; $7cbf: $19
    ld c, e                                       ; $7cc0: $4b
    xor d                                         ; $7cc1: $aa
    ld sp, hl                                     ; $7cc2: $f9
    ld a, b                                       ; $7cc3: $78
    dec h                                         ; $7cc4: $25
    sbc a                                         ; $7cc5: $9f
    rst $20                                       ; $7cc6: $e7
    ld e, h                                       ; $7cc7: $5c
    ld h, e                                       ; $7cc8: $63
    dec e                                         ; $7cc9: $1d
    call $0b52                                    ; $7cca: $cd $52 $0b
    ld h, a                                       ; $7ccd: $67
    rst $38                                       ; $7cce: $ff
    rst $00                                       ; $7ccf: $c7
    ld c, e                                       ; $7cd0: $4b
    pop bc                                        ; $7cd1: $c1
    ld [hl], h                                    ; $7cd2: $74
    pop af                                        ; $7cd3: $f1
    cp d                                          ; $7cd4: $ba
    rst $00                                       ; $7cd5: $c7
    rra                                           ; $7cd6: $1f

Call_02a_7cd7:
    ld c, e                                       ; $7cd7: $4b
    sbc [hl]                                      ; $7cd8: $9e
    and $c9                                       ; $7cd9: $e6 $c9
    or h                                          ; $7cdb: $b4
    ld b, c                                       ; $7cdc: $41
    jr jr_02a_7cf5                                ; $7cdd: $18 $16

    ld a, e                                       ; $7cdf: $7b
    ld c, l                                       ; $7ce0: $4d
    sbc d                                         ; $7ce1: $9a
    add hl, hl                                    ; $7ce2: $29
    call nc, Call_000_3e17                        ; $7ce3: $d4 $17 $3e
    ld [hl], a                                    ; $7ce6: $77
    dec l                                         ; $7ce7: $2d

jr_02a_7ce8:
    and h                                         ; $7ce8: $a4
    sbc l                                         ; $7ce9: $9d
    rst $18                                       ; $7cea: $df
    add l                                         ; $7ceb: $85
    sbc l                                         ; $7cec: $9d
    ld h, a                                       ; $7ced: $67
    ret nz                                        ; $7cee: $c0

    rst $20                                       ; $7cef: $e7
    jp nc, $0a5c                                  ; $7cf0: $d2 $5c $0a

    and $39                                       ; $7cf3: $e6 $39

jr_02a_7cf5:
    ei                                            ; $7cf5: $fb
    push de                                       ; $7cf6: $d5
    set 1, e                                      ; $7cf7: $cb $cb
    jp z, $2585                                   ; $7cf9: $ca $85 $25

    ld c, a                                       ; $7cfc: $4f
    and e                                         ; $7cfd: $a3
    rlca                                          ; $7cfe: $07
    ld b, a                                       ; $7cff: $47
    jr jr_02a_7c98                                ; $7d00: $18 $96

    ld e, d                                       ; $7d02: $5a
    cp b                                          ; $7d03: $b8
    jr nz, jr_02a_7d35                            ; $7d04: $20 $2f

    dec b                                         ; $7d06: $05
    di                                            ; $7d07: $f3
    sbc h                                         ; $7d08: $9c
    sub a                                         ; $7d09: $97
    ld e, a                                       ; $7d0a: $5f
    ld l, b                                       ; $7d0b: $68
    ldh [rRP], a                                  ; $7d0c: $e0 $56
    sub e                                         ; $7d0e: $93
    call z, $9e70                                 ; $7d0f: $cc $70 $9e
    ld [hl], e                                    ; $7d12: $73
    ld l, c                                       ; $7d13: $69
    sub [hl]                                      ; $7d14: $96
    add $17                                       ; $7d15: $c6 $17
    ld [hl], $a3                                  ; $7d17: $36 $a3
    rst $20                                       ; $7d19: $e7
    rst $00                                       ; $7d1a: $c7
    call nz, $e084                                ; $7d1b: $c4 $84 $e0
    or a                                          ; $7d1e: $b7
    xor d                                         ; $7d1f: $aa
    inc bc                                        ; $7d20: $03
    jp nz, $b196                                  ; $7d21: $c2 $96 $b1

    res 5, b                                      ; $7d24: $cb $a8
    and $03                                       ; $7d26: $e6 $03
    scf                                           ; $7d28: $37
    xor h                                         ; $7d29: $ac
    reti                                          ; $7d2a: $d9


    ld d, e                                       ; $7d2b: $53
    sbc d                                         ; $7d2c: $9a
    and b                                         ; $7d2d: $a0
    call z, $594e                                 ; $7d2e: $cc $4e $59
    ret c                                         ; $7d31: $d8

    call z, Call_000_1c1f                         ; $7d32: $cc $1f $1c

jr_02a_7d35:
    call $c0b2                                    ; $7d35: $cd $b2 $c0
    inc a                                         ; $7d38: $3c
    ret nz                                        ; $7d39: $c0

    inc l                                         ; $7d3a: $2c
    or l                                          ; $7d3b: $b5
    jr jr_02a_7db5                                ; $7d3c: $18 $77

    sbc [hl]                                      ; $7d3e: $9e
    ld bc, $515f                                  ; $7d3f: $01 $5f $51
    db $eb                                        ; $7d42: $eb
    rst $08                                       ; $7d43: $cf
    ld [hl], e                                    ; $7d44: $73
    db $fc                                        ; $7d45: $fc
    and l                                         ; $7d46: $a5
    ld h, b                                       ; $7d47: $60
    rst $10                                       ; $7d48: $d7
    ld de, $9606                                  ; $7d49: $11 $06 $96
    sub l                                         ; $7d4c: $95
    ld d, a                                       ; $7d4d: $57
    ld h, c                                       ; $7d4e: $61
    di                                            ; $7d4f: $f3
    and d                                         ; $7d50: $a2
    cp [hl]                                       ; $7d51: $be
    db $d3                                        ; $7d52: $d3
    call z, $f915                                 ; $7d53: $cc $15 $f9
    jr jr_02a_7dc3                                ; $7d56: $18 $6b

    or b                                          ; $7d58: $b0
    ld a, [c]                                     ; $7d59: $f2
    jp z, $dfc6                                   ; $7d5a: $ca $c6 $df

jr_02a_7d5d:
    jr @-$27                                      ; $7d5d: $18 $d7

    cp $25                                        ; $7d5f: $fe $25
    call $afcb                                    ; $7d61: $cd $cb $af
    ld a, [hl+]                                   ; $7d64: $2a
    reti                                          ; $7d65: $d9


    jp hl                                         ; $7d66: $e9


Call_02a_7d67:
    ld e, h                                       ; $7d67: $5c
    ld a, [bc]                                    ; $7d68: $0a
    sub $8e                                       ; $7d69: $d6 $8e
    ld e, c                                       ; $7d6b: $59
    push de                                       ; $7d6c: $d5
    ld [hl], a                                    ; $7d6d: $77
    db $ed                                        ; $7d6e: $ed
    sub l                                         ; $7d6f: $95
    dec bc                                        ; $7d70: $0b
    adc e                                         ; $7d71: $8b
    rrca                                          ; $7d72: $0f
    sub b                                         ; $7d73: $90
    inc b                                         ; $7d74: $04
    ld h, e                                       ; $7d75: $63
    ld c, c                                       ; $7d76: $49
    dec [hl]                                      ; $7d77: $35
    rst $18                                       ; $7d78: $df
    dec c                                         ; $7d79: $0d
    dec sp                                        ; $7d7a: $3b
    sub d                                         ; $7d7b: $92
    sub $47                                       ; $7d7c: $d6 $47
    jr jr_02a_7d5d                                ; $7d7e: $18 $dd

    dec h                                         ; $7d80: $25
    db $ed                                        ; $7d81: $ed
    rlca                                          ; $7d82: $07
    ld c, b                                       ; $7d83: $48
    reti                                          ; $7d84: $d9


    ret                                           ; $7d85: $c9


    push de                                       ; $7d86: $d5
    pop af                                        ; $7d87: $f1
    ld c, c                                       ; $7d88: $49
    ld a, [de]                                    ; $7d89: $1a
    ld l, b                                       ; $7d8a: $68
    adc h                                         ; $7d8b: $8c
    cp e                                          ; $7d8c: $bb
    or b                                          ; $7d8d: $b0
    ld a, b                                       ; $7d8e: $78
    db $eb                                        ; $7d8f: $eb
    ccf                                           ; $7d90: $3f
    ld e, l                                       ; $7d91: $5d
    sbc b                                         ; $7d92: $98
    ld e, [hl]                                    ; $7d93: $5e
    ld e, [hl]                                    ; $7d94: $5e
    ld d, [hl]                                    ; $7d95: $56
    sbc [hl]                                      ; $7d96: $9e
    and $39                                       ; $7d97: $e6 $39
    adc l                                         ; $7d99: $8d
    ld [hl], c                                    ; $7d9a: $71
    ld e, [hl]                                    ; $7d9b: $5e
    ld a, [hl]                                    ; $7d9c: $7e
    rst $00                                       ; $7d9d: $c7
    ld c, e                                       ; $7d9e: $4b
    ld h, e                                       ; $7d9f: $63
    db $db                                        ; $7da0: $db
    sub a                                         ; $7da1: $97
    ld e, b                                       ; $7da2: $58
    ld a, [bc]                                    ; $7da3: $0a
    jr nz, jr_02a_7db2                            ; $7da4: $20 $0c

    dec a                                         ; $7da6: $3d
    jp z, $2aaf                                   ; $7da7: $ca $af $2a

    or a                                          ; $7daa: $b7
    xor d                                         ; $7dab: $aa
    ccf                                           ; $7dac: $3f
    adc l                                         ; $7dad: $8d
    ld [hl-], a                                   ; $7dae: $32
    ld e, c                                       ; $7daf: $59

Jump_02a_7db0:
    db $fc                                        ; $7db0: $fc
    ld b, c                                       ; $7db1: $41

jr_02a_7db2:
    sbc d                                         ; $7db2: $9a
    adc $f8                                       ; $7db3: $ce $f8

jr_02a_7db5:
    ld e, a                                       ; $7db5: $5f
    ld d, c                                       ; $7db6: $51
    ld [hl], $3b                                  ; $7db7: $36 $3b
    ld h, l                                       ; $7db9: $65
    pop de                                        ; $7dba: $d1
    ld d, b                                       ; $7dbb: $50
    ld d, l                                       ; $7dbc: $55
    and $c9                                       ; $7dbd: $e6 $c9
    or h                                          ; $7dbf: $b4
    add hl, de                                    ; $7dc0: $19
    xor a                                         ; $7dc1: $af
    or b                                          ; $7dc2: $b0

jr_02a_7dc3:
    rst $20                                       ; $7dc3: $e7
    ld d, b                                       ; $7dc4: $50
    ld a, l                                       ; $7dc5: $7d
    adc h                                         ; $7dc6: $8c
    ld c, a                                       ; $7dc7: $4f
    sbc $05                                       ; $7dc8: $de $05
    inc bc                                        ; $7dca: $03
    sub [hl]                                      ; $7dcb: $96
    ld e, d                                       ; $7dcc: $5a
    jr c, @+$7b                                   ; $7dcd: $38 $79

    adc l                                         ; $7dcf: $8d
    or c                                          ; $7dd0: $b1
    add hl, de                                    ; $7dd1: $19
    cp b                                          ; $7dd2: $b8
    adc d                                         ; $7dd3: $8a
    ld e, a                                       ; $7dd4: $5f
    ld a, [bc]                                    ; $7dd5: $0a
    and $b9                                       ; $7dd6: $e6 $b9
    and a                                         ; $7dd8: $a7
    di                                            ; $7dd9: $f3
    or d                                          ; $7dda: $b2
    add hl, de                                    ; $7ddb: $19
    cpl                                           ; $7ddc: $2f
    rst $10                                       ; $7ddd: $d7
    cpl                                           ; $7dde: $2f
    dec b                                         ; $7ddf: $05
    db $e3                                        ; $7de0: $e3
    xor a                                         ; $7de1: $af
    sub a                                         ; $7de2: $97
    jp hl                                         ; $7de3: $e9


    adc $37                                       ; $7de4: $ce $37
    scf                                           ; $7de6: $37
    ld b, [hl]                                    ; $7de7: $46
    add h                                         ; $7de8: $84
    ld bc, $67c7                                  ; $7de9: $01 $c7 $67
    or d                                          ; $7dec: $b2
    pop af                                        ; $7ded: $f1
    add hl, hl                                    ; $7dee: $29
    ld [hl], l                                    ; $7def: $75
    xor $5a                                       ; $7df0: $ee $5a
    ld d, l                                       ; $7df2: $55
    and h                                         ; $7df3: $a4
    jp hl                                         ; $7df4: $e9


    add d                                         ; $7df5: $82
    ld bc, $5596                                  ; $7df6: $01 $96 $55
    ld c, d                                       ; $7df9: $4a
    dec [hl]                                      ; $7dfa: $35
    rra                                           ; $7dfb: $1f
    xor a                                         ; $7dfc: $af
    rst $10                                       ; $7dfd: $d7
    ld h, a                                       ; $7dfe: $67
    ret z                                         ; $7dff: $c8

    ld l, a                                       ; $7e00: $6f
    inc e                                         ; $7e01: $1c
    ld d, h                                       ; $7e02: $54
    dec h                                         ; $7e03: $25
    inc sp                                        ; $7e04: $33
    ld c, $5c                                     ; $7e05: $0e $5c
    push bc                                       ; $7e07: $c5
    and c                                         ; $7e08: $a1
    res 1, [hl]                                   ; $7e09: $cb $8e
    adc d                                         ; $7e0b: $8a
    ld [hl], c                                    ; $7e0c: $71
    ld e, [hl]                                    ; $7e0d: $5e
    ld a, [hl]                                    ; $7e0e: $7e
    dec a                                         ; $7e0f: $3d
    ld e, a                                       ; $7e10: $5f
    ld hl, $037e                                  ; $7e11: $21 $7e $03
    dec bc                                        ; $7e14: $0b
    ld [hl], d                                    ; $7e15: $72
    sbc [hl]                                      ; $7e16: $9e
    ld l, e                                       ; $7e17: $6b
    call Call_02a_5780                            ; $7e18: $cd $80 $57
    ld [hl], c                                    ; $7e1b: $71
    ld b, b                                       ; $7e1c: $40
    jr jr_02a_7e5c                                ; $7e1d: $18 $3d

    ccf                                           ; $7e1f: $3f
    add $b1                                       ; $7e20: $c6 $b1
    and h                                         ; $7e22: $a4
    rst $28                                       ; $7e23: $ef
    ld [hl-], a                                   ; $7e24: $32
    bit 1, d                                      ; $7e25: $cb $4a
    halt                                          ; $7e27: $76
    ld a, [hl]                                    ; $7e28: $7e
    sub [hl]                                      ; $7e29: $96
    ld e, d                                       ; $7e2a: $5a
    jr c, @+$4a                                   ; $7e2b: $38 $48

    pop af                                        ; $7e2d: $f1
    ld h, a                                       ; $7e2e: $67
    cp e                                          ; $7e2f: $bb
    db $e4                                        ; $7e30: $e4
    cp c                                          ; $7e31: $b9
    db $e3                                        ; $7e32: $e3
    and l                                         ; $7e33: $a5
    or c                                          ; $7e34: $b1
    db $ed                                        ; $7e35: $ed
    ld c, e                                       ; $7e36: $4b
    inc l                                         ; $7e37: $2c
    add l                                         ; $7e38: $85
    dec sp                                        ; $7e39: $3b
    rst $08                                       ; $7e3a: $cf
    db $ec                                        ; $7e3b: $ec
    add d                                         ; $7e3c: $82
    ld bc, $192d                                  ; $7e3d: $01 $2d $19
    cp $02                                        ; $7e40: $fe $02
    cp c                                          ; $7e42: $b9
    or [hl]                                       ; $7e43: $b6
    ld a, l                                       ; $7e44: $7d

jr_02a_7e45:
    add hl, bc                                    ; $7e45: $09
    ld d, [hl]                                    ; $7e46: $56
    call nc, $b3fa                                ; $7e47: $d4 $fa $b3
    sub l                                         ; $7e4a: $95
    ld [bc], a                                    ; $7e4b: $02
    sbc b                                         ; $7e4c: $98
    jp nz, $8ff8                                  ; $7e4d: $c2 $f8 $8f

    ld [hl], c                                    ; $7e50: $71
    ld a, [bc]                                    ; $7e51: $0a
    ld l, e                                       ; $7e52: $6b
    cp a                                          ; $7e53: $bf
    sub $01                                       ; $7e54: $d6 $01
    ld h, c                                       ; $7e56: $61
    db $dd                                        ; $7e57: $dd
    jp z, $eaad                                   ; $7e58: $ca $ad $ea

    ld c, a                                       ; $7e5b: $4f

jr_02a_7e5c:
    or b                                          ; $7e5c: $b0
    ld d, b                                       ; $7e5d: $50
    sbc e                                         ; $7e5e: $9b
    ld d, c                                       ; $7e5f: $51
    ld a, [$5a8a]                                 ; $7e60: $fa $8a $5a
    ld a, a                                       ; $7e63: $7f
    pop af                                        ; $7e64: $f1
    halt                                          ; $7e65: $76
    add b                                         ; $7e66: $80
    cp e                                          ; $7e67: $bb
    or [hl]                                       ; $7e68: $b6
    pop af                                        ; $7e69: $f1
    ld b, c                                       ; $7e6a: $41
    add [hl]                                      ; $7e6b: $86
    cp a                                          ; $7e6c: $bf
    ld b, b                                       ; $7e6d: $40
    xor [hl]                                      ; $7e6e: $ae
    ld l, l                                       ; $7e6f: $6d
    ld e, a                                       ; $7e70: $5f
    add d                                         ; $7e71: $82
    dec d                                         ; $7e72: $15
    or l                                          ; $7e73: $b5
    cp $fc                                        ; $7e74: $fe $fc
    rst $18                                       ; $7e76: $df
    dec bc                                        ; $7e77: $0b
    jp nz, $5a96                                  ; $7e78: $c2 $96 $5a

    jr c, jr_02a_7e45                             ; $7e7b: $38 $c8

    ld a, c                                       ; $7e7d: $79
    sub c                                         ; $7e7e: $91
    dec de                                        ; $7e7f: $1b
    db $e3                                        ; $7e80: $e3
    or e                                          ; $7e81: $b3
    ld a, c                                       ; $7e82: $79
    xor [hl]                                      ; $7e83: $ae
    db $fd                                        ; $7e84: $fd
    dec hl                                        ; $7e85: $2b
    cpl                                           ; $7e86: $2f
    rst $18                                       ; $7e87: $df
    ld h, l                                       ; $7e88: $65
    sub [hl]                                      ; $7e89: $96
    ld e, d                                       ; $7e8a: $5a
    cp b                                          ; $7e8b: $b8
    jr nz, jr_02a_7ebd                            ; $7e8c: $20 $2f

    dec b                                         ; $7e8e: $05
    di                                            ; $7e8f: $f3
    ld e, h                                       ; $7e90: $5c
    ld a, h                                       ; $7e91: $7c
    dec d                                         ; $7e92: $15
    ld a, [de]                                    ; $7e93: $1a
    db $e4                                        ; $7e94: $e4
    ld b, d                                       ; $7e95: $42
    ld d, e                                       ; $7e96: $53
    sub l                                         ; $7e97: $95
    add hl, hl                                    ; $7e98: $29
    or c                                          ; $7e99: $b1
    or c                                          ; $7e9a: $b1
    inc e                                         ; $7e9b: $1c
    db $e4                                        ; $7e9c: $e4
    ld hl, sp-$71                                 ; $7e9d: $f8 $8f
    or c                                          ; $7e9f: $b1
    dec bc                                        ; $7ea0: $0b
    ld b, $3d                                     ; $7ea1: $06 $3d
    ld c, e                                       ; $7ea3: $4b
    inc sp                                        ; $7ea4: $33

jr_02a_7ea5:
    sub [hl]                                      ; $7ea5: $96
    rrca                                          ; $7ea6: $0f
    dec bc                                        ; $7ea7: $0b
    ld d, e                                       ; $7ea8: $53
    add sp, $52                                   ; $7ea9: $e8 $52
    or b                                          ; $7eab: $b0
    and d                                         ; $7eac: $a2
    sub $9f                                       ; $7ead: $d6 $9f
    rst $20                                       ; $7eaf: $e7
    xor d                                         ; $7eb0: $aa
    inc c                                         ; $7eb1: $0c
    ld a, a                                       ; $7eb2: $7f
    sub b                                         ; $7eb3: $90
    ld a, e                                       ; $7eb4: $7b
    sub l                                         ; $7eb5: $95
    ret c                                         ; $7eb6: $d8

    ld [hl], h                                    ; $7eb7: $74
    push bc                                       ; $7eb8: $c5
    sub [hl]                                      ; $7eb9: $96
    ld e, d                                       ; $7eba: $5a
    adc h                                         ; $7ebb: $8c
    ld l, e                                       ; $7ebc: $6b

jr_02a_7ebd:
    rst $38                                       ; $7ebd: $ff
    sbc [hl]                                      ; $7ebe: $9e
    ld b, e                                       ; $7ebf: $43
    ld [hl], l                                    ; $7ec0: $75
    db $fd                                        ; $7ec1: $fd
    reti                                          ; $7ec2: $d9


    or h                                          ; $7ec3: $b4
    sbc l                                         ; $7ec4: $9d
    add $17                                       ; $7ec5: $c6 $17
    ld [hl], $b3                                  ; $7ec7: $36 $b3
    xor a                                         ; $7ec9: $af
    add b                                         ; $7eca: $80
    adc a                                         ; $7ecb: $8f
    ld l, c                                       ; $7ecc: $69
    or e                                          ; $7ecd: $b3
    or h                                          ; $7ece: $b4
    ld d, a                                       ; $7ecf: $57
    ld b, l                                       ; $7ed0: $45
    dec b                                         ; $7ed1: $05
    ld a, b                                       ; $7ed2: $78
    sbc b                                         ; $7ed3: $98
    jp nz, $9320                                  ; $7ed4: $c2 $20 $93

    and [hl]                                      ; $7ed7: $a6
    jr nc, jr_02a_7ea5                            ; $7ed8: $30 $cb

    ld a, b                                       ; $7eda: $78
    xor l                                         ; $7edb: $ad
    rst $38                                       ; $7edc: $ff
    ld c, h                                       ; $7edd: $4c
    rlca                                          ; $7ede: $07
    ld h, c                                       ; $7edf: $61
    cp l                                          ; $7ee0: $bd
    jp nc, Jump_000_258c                          ; $7ee1: $d2 $8c $25

    push de                                       ; $7ee4: $d5
    ld a, h                                       ; $7ee5: $7c
    ld [hl], l                                    ; $7ee6: $75
    ld c, d                                       ; $7ee7: $4a
    ld a, [hl]                                    ; $7ee8: $7e
    ld c, d                                       ; $7ee9: $4a
    call $a9ba                                    ; $7eea: $cd $ba $a9
    or b                                          ; $7eed: $b0
    ld [hl], l                                    ; $7eee: $75
    res 6, b                                      ; $7eef: $cb $b0
    ld a, l                                       ; $7ef1: $7d
    ld c, c                                       ; $7ef2: $49
    db $fd                                        ; $7ef3: $fd
    ld h, $41                                     ; $7ef4: $26 $41
    rla                                           ; $7ef6: $17
    inc c                                         ; $7ef7: $0c
    dec a                                         ; $7ef8: $3d
    ccf                                           ; $7ef9: $3f
    ld d, [hl]                                    ; $7efa: $56
    add hl, de                                    ; $7efb: $19
    cp $da                                        ; $7efc: $fe $da
    ld e, d                                       ; $7efe: $5a
    push de                                       ; $7eff: $d5
    cp c                                          ; $7f00: $b9
    ld l, e                                       ; $7f01: $6b
    ld d, l                                       ; $7f02: $55
    sub c                                         ; $7f03: $91
    ld b, $6d                                     ; $7f04: $06 $6d
    rst $00                                       ; $7f06: $c7
    and l                                         ; $7f07: $a5
    adc h                                         ; $7f08: $8c
    push hl                                       ; $7f09: $e5
    and l                                         ; $7f0a: $a5
    ld h, b                                       ; $7f0b: $60
    sub b                                         ; $7f0c: $90
    db $e3                                        ; $7f0d: $e3
    ccf                                           ; $7f0e: $3f
    add $25                                       ; $7f0f: $c6 $25
    xor l                                         ; $7f11: $ad
    ld c, c                                       ; $7f12: $49
    inc hl                                        ; $7f13: $23
    ld l, e                                       ; $7f14: $6b
    ld c, e                                       ; $7f15: $4b
    ld h, [hl]                                    ; $7f16: $66
    cp b                                          ; $7f17: $b8
    ld d, a                                       ; $7f18: $57
    adc c                                         ; $7f19: $89
    rst $30                                       ; $7f1a: $f7
    add l                                         ; $7f1b: $85
    dec sp                                        ; $7f1c: $3b
    set 7, b                                      ; $7f1d: $cb $f8

Jump_02a_7f1f:
    dec de                                        ; $7f1f: $1b
    db $e3                                        ; $7f20: $e3
    db $e4                                        ; $7f21: $e4
    ld a, c                                       ; $7f22: $79
    dec d                                         ; $7f23: $15
    or [hl]                                       ; $7f24: $b6
    ld h, $cd                                     ; $7f25: $26 $cd
    jp c, $e2cd                                   ; $7f27: $da $cd $e2

    cp e                                          ; $7f2a: $bb
    ld e, a                                       ; $7f2b: $5f
    ld a, [bc]                                    ; $7f2c: $0a
    sub $a4                                       ; $7f2d: $d6 $a4
    ld e, c                                       ; $7f2f: $59
    ld b, a                                       ; $7f30: $47
    or h                                          ; $7f31: $b4
    ld a, [c]                                     ; $7f32: $f2
    ld e, e                                       ; $7f33: $5b
    db $fd                                        ; $7f34: $fd
    xor d                                         ; $7f35: $aa
    and d                                         ; $7f36: $a2
    ld [hl], b                                    ; $7f37: $70
    add hl, hl                                    ; $7f38: $29
    sbc b                                         ; $7f39: $98
    jp nc, $8f92                                  ; $7f3a: $d2 $92 $8f

    ld [$c703], sp                                ; $7f3d: $08 $03 $c7
    ld h, a                                       ; $7f40: $67
    or d                                          ; $7f41: $b2
    pop af                                        ; $7f42: $f1
    add hl, hl                                    ; $7f43: $29
    ld [hl], l                                    ; $7f44: $75
    xor $5a                                       ; $7f45: $ee $5a
    ld d, l                                       ; $7f47: $55
    and h                                         ; $7f48: $a4
    ld b, c                                       ; $7f49: $41
    ld e, e                                       ; $7f4a: $5b
    or a                                          ; $7f4b: $b7
    inc c                                         ; $7f4c: $0c
    ld a, a                                       ; $7f4d: $7f
    ld l, l                                       ; $7f4e: $6d
    xor l                                         ; $7f4f: $ad
    ld [$6253], a                                 ; $7f50: $ea $53 $62
    or e                                          ; $7f53: $b3
    ld h, e                                       ; $7f54: $63
    inc sp                                        ; $7f55: $33
    dec c                                         ; $7f56: $0d
    db $f4                                        ; $7f57: $f4
    jp nc, $9a94                                  ; $7f58: $d2 $94 $9a

    ld sp, hl                                     ; $7f5b: $f9
    dec c                                         ; $7f5c: $0d
    rra                                           ; $7f5d: $1f
    ld h, c                                       ; $7f5e: $61
    dec l                                         ; $7f5f: $2d
    add hl, de                                    ; $7f60: $19
    ld a, [hl]                                    ; $7f61: $7e
    dec sp                                        ; $7f62: $3b
    ld e, c                                       ; $7f63: $59
    inc sp                                        ; $7f64: $33
    ret nc                                        ; $7f65: $d0

    set 4, [hl]                                   ; $7f66: $cb $e6
    add hl, sp                                    ; $7f68: $39
    ei                                            ; $7f69: $fb
    ld [de], a                                    ; $7f6a: $12
    sbc e                                         ; $7f6b: $9b
    sub a                                         ; $7f6c: $97
    rst $18                                       ; $7f6d: $df
    pop af                                        ; $7f6e: $f1
    jp nc, $f6d8                                  ; $7f6f: $d2 $d8 $f6

    dec h                                         ; $7f72: $25
    sub [hl]                                      ; $7f73: $96
    or d                                          ; $7f74: $b2
    sub d                                         ; $7f75: $92
    ld b, $7e                                     ; $7f76: $06 $7e
    ld b, c                                       ; $7f78: $41
    ld c, c                                       ; $7f79: $49
    ld [hl], b                                    ; $7f7a: $70
    inc [hl]                                      ; $7f7b: $34
    bit 3, b                                      ; $7f7c: $cb $58
    ld d, d                                       ; $7f7e: $52
    call $ff07                                    ; $7f7f: $cd $07 $ff
    dec hl                                        ; $7f82: $2b
    scf                                           ; $7f83: $37
    sbc h                                         ; $7f84: $9c
    jp hl                                         ; $7f85: $e9


    xor h                                         ; $7f86: $ac
    cp h                                          ; $7f87: $bc
    inc a                                         ; $7f88: $3c
    jp nz, $ca3d                                  ; $7f89: $c2 $3d $ca

    xor a                                         ; $7f8c: $af
    and h                                         ; $7f8d: $a4
    add c                                         ; $7f8e: $81
    ld e, a                                       ; $7f8f: $5f
    ld d, b                                       ; $7f90: $50
    ld [de], a                                    ; $7f91: $12
    inc e                                         ; $7f92: $1c
    ld d, [hl]                                    ; $7f93: $56
    and a                                         ; $7f94: $a7
    db $e4                                        ; $7f95: $e4
    rst $20                                       ; $7f96: $e7
    push hl                                       ; $7f97: $e5
    xor a                                         ; $7f98: $af
    xor h                                         ; $7f99: $ac
    and h                                         ; $7f9a: $a4
    add c                                         ; $7f9b: $81
    ld e, a                                       ; $7f9c: $5f
    ld b, a                                       ; $7f9d: $47
    ld bc, $14f8                                  ; $7f9e: $01 $f8 $14
    ld b, $dc                                     ; $7fa1: $06 $dc
    or l                                          ; $7fa3: $b5
    adc l                                         ; $7fa4: $8d
    rst $08                                       ; $7fa5: $cf
    ld d, d                                       ; $7fa6: $52
    dec bc                                        ; $7fa7: $0b
    rst $20                                       ; $7fa8: $e7
    sbc c                                         ; $7fa9: $99
    add e                                         ; $7faa: $83
    ld c, d                                       ; $7fab: $4a
    push hl                                       ; $7fac: $e5
    reti                                          ; $7fad: $d9


Jump_02a_7fae:
    inc a                                         ; $7fae: $3c
    and a                                         ; $7faf: $a7
    ld d, b                                       ; $7fb0: $50
    ld e, a                                       ; $7fb1: $5f
    jp nc, Jump_000_0c23                          ; $7fb2: $d2 $23 $0c

Jump_02a_7fb5:
    xor l                                         ; $7fb5: $ad
    ld l, c                                       ; $7fb6: $69
    ldh [rNR22], a                                ; $7fb7: $e0 $17
    sub h                                         ; $7fb9: $94
    inc b                                         ; $7fba: $04
    add a                                         ; $7fbb: $87
    push de                                       ; $7fbc: $d5
    add hl, hl                                    ; $7fbd: $29
    ld sp, hl                                     ; $7fbe: $f9
    ld [hl], l                                    ; $7fbf: $75
    inc d                                         ; $7fc0: $14
    add b                                         ; $7fc1: $80
    ld c, a                                       ; $7fc2: $4f
    ld h, c                                       ; $7fc3: $61
    add b                                         ; $7fc4: $80
    halt                                          ; $7fc5: $76

Call_02a_7fc6:
    call c, $3625                                 ; $7fc6: $dc $25 $36
    ret z                                         ; $7fc9: $c8

    ldh a, [$93]                                  ; $7fca: $f0 $93
    ld a, [hl]                                    ; $7fcc: $7e
    ld a, h                                       ; $7fcd: $7c
    ret                                           ; $7fce: $c9


    ld a, [de]                                    ; $7fcf: $1a
    adc h                                         ; $7fd0: $8c
    cp l                                          ; $7fd1: $bd
    or d                                          ; $7fd2: $b2
    add hl, hl                                    ; $7fd3: $29
    or c                                          ; $7fd4: $b1
    add hl, hl                                    ; $7fd5: $29
    call nc, $bca7                                ; $7fd6: $d4 $a7 $bc
    ld [hl], $08                                  ; $7fd9: $36 $08
    inc bc                                        ; $7fdb: $03
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
