; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    db $24

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
    jr nc, jr_024_407d                            ; $4040: $30 $3b

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
    jr jr_024_406a                                ; $4052: $18 $16

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

jr_024_406a:
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

jr_024_407d:
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
    jp nz, Jump_024_6527                          ; $4090: $c2 $27 $65

    sub $b9                                       ; $4093: $d6 $b9
    db $e3                                        ; $4095: $e3
    ld a, a                                       ; $4096: $7f
    ld d, b                                       ; $4097: $50

jr_024_4098:
    jp nc, $b644                                  ; $4098: $d2 $44 $b6

jr_024_409b:
    or $cf                                        ; $409b: $f6 $cf
    sub [hl]                                      ; $409d: $96
    ei                                            ; $409e: $fb
    call nz, Call_024_4a60                        ; $409f: $c4 $60 $4a
    ld l, h                                       ; $40a2: $6c
    push hl                                       ; $40a3: $e5
    ld h, e                                       ; $40a4: $63

Call_024_40a5:
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

jr_024_40b0:
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
    jr jr_024_409b                                ; $40d2: $18 $c7

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
    jp nc, Jump_024_5644                          ; $40e0: $d2 $44 $56

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
    jr nc, jr_024_4098                            ; $4100: $30 $96

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
    jr nz, jr_024_40b0                            ; $4117: $20 $97

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
    call nc, Call_024_6808                        ; $4131: $d4 $08 $68
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
    jp z, $6b2b                                   ; $416c: $ca $2b $6b

    ld d, [hl]                                    ; $416f: $56
    and a                                         ; $4170: $a7
    db $e4                                        ; $4171: $e4
    cp c                                          ; $4172: $b9
    or e                                          ; $4173: $b3

Jump_024_4174:
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
    call nc, Call_024_5ad1                        ; $419b: $d4 $d1 $5a
    sub e                                         ; $419e: $93
    sbc a                                         ; $419f: $9f
    jp z, $49af                                   ; $41a0: $ca $af $49

    inc sp                                        ; $41a3: $33
    jr nc, @-$61                                  ; $41a4: $30 $9d

    ld c, [hl]                                    ; $41a6: $4e
    jp nz, Jump_024_79b3                          ; $41a7: $c2 $b3 $79

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

jr_024_41e8:
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
    jr nc, jr_024_41e8                            ; $4201: $30 $e5

    and a                                         ; $4203: $a7
    xor $4f                                       ; $4204: $ee $4f
    ld a, [hl]                                    ; $4206: $7e
    sub e                                         ; $4207: $93
    and $b9                                       ; $4208: $e6 $b9
    ld h, $8d                                     ; $420a: $26 $8d
    inc c                                         ; $420c: $0c

jr_024_420d:
    call c, $fbb0                                 ; $420d: $dc $b0 $fb
    jr nc, jr_024_4237                            ; $4210: $30 $25

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

jr_024_4237:
    add d                                         ; $4237: $82
    rst $30                                       ; $4238: $f7
    ld [hl], l                                    ; $4239: $75
    inc d                                         ; $423a: $14
    ld a, h                                       ; $423b: $7c
    ld e, [hl]                                    ; $423c: $5e
    call nc, Call_024_45e7                        ; $423d: $d4 $e7 $45
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
    call nz, $5966                                ; $4252: $c4 $66 $59
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
    jr nz, jr_024_420d                            ; $4274: $20 $97

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

jr_024_4300:
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
    jp z, Jump_024_5fcf                           ; $432a: $ca $cf $5f

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
    jr jr_024_4300                                ; $433c: $18 $c2

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

Jump_024_4393:
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

jr_024_43b4:
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
    jp nc, Jump_024_73cc                          ; $43c8: $d2 $cc $73

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

Jump_024_43fa:
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
    jr nz, jr_024_43b4                            ; $442e: $20 $84

    jr nc, jr_024_445f                            ; $4430: $30 $2d

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

jr_024_445f:
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
    jr jr_024_449e                                ; $448b: $18 $11

    ld b, $47                                     ; $448d: $06 $47
    dec de                                        ; $448f: $1b
    ld b, a                                       ; $4490: $47
    ld [$4761], sp                                ; $4491: $08 $61 $47
    push bc                                       ; $4494: $c5
    jr c, jr_024_44c6                             ; $4495: $38 $2f

    ld a, [c]                                     ; $4497: $f2
    cp a                                          ; $4498: $bf
    or h                                          ; $4499: $b4
    rst $10                                       ; $449a: $d7
    and h                                         ; $449b: $a4
    add hl, de                                    ; $449c: $19
    ld a, a                                       ; $449d: $7f

jr_024_449e:
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
    call nz, $5076                                ; $44aa: $c4 $76 $50
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

jr_024_44c6:
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
    jr c, jr_024_4530                             ; $44e2: $38 $4c

    ld a, l                                       ; $44e4: $7d
    rra                                           ; $44e5: $1f
    rst $18                                       ; $44e6: $df
    ld a, [$acb4]                                 ; $44e7: $fa $b4 $ac
    ld d, l                                       ; $44ea: $55
    ld sp, $faab                                  ; $44eb: $31 $ab $fa
    inc a                                         ; $44ee: $3c
    jp Jump_024_4914                              ; $44ef: $c3 $14 $49


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

jr_024_4530:
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

jr_024_455f:
    jr nc, jr_024_455f                            ; $455f: $30 $fe

    rla                                           ; $4561: $17
    inc de                                        ; $4562: $13
    ld a, h                                       ; $4563: $7c
    db $fd                                        ; $4564: $fd
    dec e                                         ; $4565: $1d
    call nc, Call_024_4aef                        ; $4566: $d4 $ef $4a
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

Call_024_45ba:
    cp h                                          ; $45ba: $bc
    ld e, h                                       ; $45bb: $5c
    sbc d                                         ; $45bc: $9a
    sbc l                                         ; $45bd: $9d
    ld [hl-], a                                   ; $45be: $32
    cpl                                           ; $45bf: $2f
    cp a                                          ; $45c0: $bf
    sub $34                                       ; $45c1: $d6 $34

jr_024_45c3:
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

Call_024_45e7:
    adc d                                         ; $45e7: $8a
    ld a, [$0d20]                                 ; $45e8: $fa $20 $0d
    ld sp, $bc58                                  ; $45eb: $31 $58 $bc
    push af                                       ; $45ee: $f5
    rst $18                                       ; $45ef: $df
    ld l, c                                       ; $45f0: $69
    and $8a                                       ; $45f1: $e6 $8a

jr_024_45f3:
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
    jr c, jr_024_45c3                             ; $4608: $38 $b9

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

    jr jr_024_45f3                                ; $461a: $18 $d7

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

Jump_024_4644:
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
    call nc, $6bfa                                ; $4654: $d4 $fa $6b
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
    jr nc, jr_024_46c1                            ; $4682: $30 $3d

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
    jp nz, Jump_024_7c76                          ; $468e: $c2 $76 $7c

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
    jr z, jr_024_4708                             ; $469d: $28 $69

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

jr_024_46a9:
    ld b, $89                                     ; $46a9: $06 $89
    jr nc, jr_024_46f4                            ; $46ab: $30 $47

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
    call nz, Call_024_7fc6                        ; $46bc: $c4 $c6 $7f
    ld c, l                                       ; $46bf: $4d
    ld a, [hl]                                    ; $46c0: $7e

jr_024_46c1:
    and e                                         ; $46c1: $a3
    db $f4                                        ; $46c2: $f4
    add c                                         ; $46c3: $81
    jp hl                                         ; $46c4: $e9


    ld [hl], h                                    ; $46c5: $74
    ld [de], a                                    ; $46c6: $12
    sbc [hl]                                      ; $46c7: $9e
    call $7573                                    ; $46c8: $cd $73 $75
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
    jr jr_024_46a9                                ; $46e0: $18 $c7

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

jr_024_46f4:
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

jr_024_4708:
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
    call Call_024_7cbc                            ; $4718: $cd $bc $7c
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
    jp nc, Jump_024_66c2                          ; $4739: $d2 $c2 $66

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

jr_024_4758:
    db $dd                                        ; $4758: $dd
    ld e, a                                       ; $4759: $5f
    halt                                          ; $475a: $76
    ld e, [hl]                                    ; $475b: $5e
    ld e, [hl]                                    ; $475c: $5e
    add d                                         ; $475d: $82
    add hl, de                                    ; $475e: $19
    sbc b                                         ; $475f: $98
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
    jr jr_024_4758                                ; $478f: $18 $c7

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
    jr c, jr_024_47f7                             ; $47ab: $38 $4a

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

jr_024_47f7:
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

jr_024_4801:
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
    jr jr_024_4861                                ; $4822: $18 $3d

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

jr_024_4845:
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
    call nz, Call_024_7cd7                        ; $4853: $c4 $d7 $7c
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

jr_024_4861:
    ld e, a                                       ; $4861: $5f
    jp z, Jump_024_538e                           ; $4862: $ca $8e $53

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
    jr nz, jr_024_4801                            ; $4876: $20 $89

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
    jp nz, Jump_024_7b16                          ; $488b: $c2 $16 $7b

    sub [hl]                                      ; $488e: $96
    ld e, d                                       ; $488f: $5a
    cp b                                          ; $4890: $b8
    jr nz, jr_024_48c2                            ; $4891: $20 $2f

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
    jr c, jr_024_4845                             ; $489e: $38 $a5

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
    jp c, Jump_024_5f5a                           ; $48b2: $da $5a $5f

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

jr_024_48c2:
    sub e                                         ; $48c2: $93
    dec [hl]                                      ; $48c3: $35
    jp c, Jump_024_70d9                           ; $48c4: $da $d9 $70

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

Jump_024_4914:
    add $94                                       ; $4914: $c6 $94
    add d                                         ; $4916: $82
    sub a                                         ; $4917: $97
    inc [hl]                                      ; $4918: $34
    add b                                         ; $4919: $80
    jr nc, jr_024_4959                            ; $491a: $30 $3d

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

jr_024_4959:
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
    jp nz, $4f4e                                  ; $4969: $c2 $4e $4f

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

jr_024_49a5:
    ret nz                                        ; $49a5: $c0

    ld l, $cc                                     ; $49a6: $2e $cc
    sub b                                         ; $49a8: $90
    ld bc, $31a3                                  ; $49a9: $01 $a3 $31
    ld [hl], $6b                                  ; $49ac: $36 $6b
    rrc l                                         ; $49ae: $cb $0d

jr_024_49b0:
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
    jp z, Jump_024_4ecf                           ; $49c7: $ca $cf $4e

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
    jr nc, jr_024_49a5                            ; $49f6: $30 $ad

    rra                                           ; $49f8: $1f
    ld h, e                                       ; $49f9: $63

jr_024_49fa:
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

Jump_024_4a0c:
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
    jr jr_024_49b0                                ; $4a21: $18 $8d

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
    jr nc, jr_024_49fa                            ; $4a3b: $30 $bd

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

Jump_024_4a5a:
    xor a                                         ; $4a5a: $af
    ld sp, hl                                     ; $4a5b: $f9
    ld [hl-], a                                   ; $4a5c: $32
    sub [hl]                                      ; $4a5d: $96
    add e                                         ; $4a5e: $83
    rst $38                                       ; $4a5f: $ff

Call_024_4a60:
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
    call Call_024_7d67                            ; $4abd: $cd $67 $7d
    ld l, c                                       ; $4ac0: $69
    sub $96                                       ; $4ac1: $d6 $96
    dec de                                        ; $4ac3: $1b
    inc d                                         ; $4ac4: $14
    sbc a                                         ; $4ac5: $9f
    daa                                           ; $4ac6: $27
    db $dd                                        ; $4ac7: $dd
    and b                                         ; $4ac8: $a0
    jr c, jr_024_4b42                             ; $4ac9: $38 $77

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

jr_024_4ae5:
    ld sp, hl                                     ; $4ae5: $f9
    ret c                                         ; $4ae6: $d8

    sbc c                                         ; $4ae7: $99
    sub a                                         ; $4ae8: $97
    add h                                         ; $4ae9: $84
    rra                                           ; $4aea: $1f

jr_024_4aeb:
    ld e, a                                       ; $4aeb: $5f
    ld [hl-], a                                   ; $4aec: $32
    sbc h                                         ; $4aed: $9c
    sub a                                         ; $4aee: $97

Call_024_4aef:
    rra                                           ; $4aef: $1f
    cp b                                          ; $4af0: $b8
    ld a, [bc]                                    ; $4af1: $0a
    inc c                                         ; $4af2: $0c
    or h                                          ; $4af3: $b4
    sbc c                                         ; $4af4: $99
    jp z, $658f                                   ; $4af5: $ca $8f $65

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

jr_024_4b42:
    ld a, h                                       ; $4b42: $7c
    add h                                         ; $4b43: $84
    ld bc, $d2bd                                  ; $4b44: $01 $bd $d2
    adc h                                         ; $4b47: $8c
    rst $10                                       ; $4b48: $d7
    db $eb                                        ; $4b49: $eb
    dec hl                                        ; $4b4a: $2b
    cpl                                           ; $4b4b: $2f
    adc a                                         ; $4b4c: $8f
    jr nc, jr_024_4ae5                            ; $4b4d: $30 $96

    sub l                                         ; $4b4f: $95
    db $ec                                        ; $4b50: $ec
    db $fc                                        ; $4b51: $fc
    jr z, jr_024_4aeb                             ; $4b52: $28 $97

    db $f4                                        ; $4b54: $f4
    cp e                                          ; $4b55: $bb
    or b                                          ; $4b56: $b0

jr_024_4b57:
    ld h, d                                       ; $4b57: $62
    call nz, $60bb                                ; $4b58: $c4 $bb $60
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
    jr nz, jr_024_4b57                            ; $4b7b: $20 $da

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
    jr z, jr_024_4baa                             ; $4ba3: $28 $05

    sub a                                         ; $4ba5: $97
    ld l, d                                       ; $4ba6: $6a
    dec bc                                        ; $4ba7: $0b
    inc h                                         ; $4ba8: $24
    ld c, l                                       ; $4ba9: $4d

jr_024_4baa:
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
    jp Jump_024_7f1f                              ; $4bbb: $c3 $1f $7f


    cp l                                          ; $4bbe: $bd
    inc l                                         ; $4bbf: $2c
    ld a, h                                       ; $4bc0: $7c
    or h                                          ; $4bc1: $b4
    ld d, [hl]                                    ; $4bc2: $56
    dec d                                         ; $4bc3: $15
    ld l, c                                       ; $4bc4: $69
    cp b                                          ; $4bc5: $b8
    ld l, e                                       ; $4bc6: $6b

Call_024_4bc7:
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
    call nc, Call_024_5c62                        ; $4bda: $d4 $62 $5c
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
    jp nz, Jump_024_6527                          ; $4bef: $c2 $27 $65

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
    jr nc, jr_024_4c7c                            ; $4c13: $30 $67

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
    jr nc, jr_024_4ca1                            ; $4c70: $30 $2f

    ccf                                           ; $4c72: $3f
    ld b, e                                       ; $4c73: $43
    or a                                          ; $4c74: $b7
    ld c, d                                       ; $4c75: $4a
    ld hl, $8ae8                                  ; $4c76: $21 $e8 $8a
    ld bc, $d2a7                                  ; $4c79: $01 $a7 $d2

jr_024_4c7c:
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

jr_024_4ca1:
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
    jp nc, Jump_024_7fb5                          ; $4cee: $d2 $b5 $7f

    or [hl]                                       ; $4cf1: $b6
    ld h, h                                       ; $4cf2: $64
    jr c, jr_024_4d24                             ; $4cf3: $38 $2f

    cp a                                          ; $4cf5: $bf
    sub [hl]                                      ; $4cf6: $96
    sub h                                         ; $4cf7: $94
    ld [$a5e5], a                                 ; $4cf8: $ea $e5 $a5
    ld b, $6b                                     ; $4cfb: $06 $6b
    pop af                                        ; $4cfd: $f1
    and h                                         ; $4cfe: $a4
    rst $28                                       ; $4cff: $ef
    or d                                          ; $4d00: $b2
    and e                                         ; $4d01: $a3
    adc l                                         ; $4d02: $8d
    adc a                                         ; $4d03: $8f
    cpl                                           ; $4d04: $2f
    ld e, c                                       ; $4d05: $59
    ld h, e                                       ; $4d06: $63
    ld l, e                                       ; $4d07: $6b
    rst $38                                       ; $4d08: $ff
    cp h                                          ; $4d09: $bc
    xor b                                         ; $4d0a: $a8
    adc a                                         ; $4d0b: $8f
    dec a                                         ; $4d0c: $3d

Jump_024_4d0d:
    ld [hl], h                                    ; $4d0d: $74
    ld e, [hl]                                    ; $4d0e: $5e
    call nc, Call_000_2bbf                        ; $4d0f: $d4 $bf $2b
    ld b, $3d                                     ; $4d12: $06 $3d
    jp z, $340f                                   ; $4d14: $ca $0f $34

Call_024_4d17:
    db $fc                                        ; $4d17: $fc
    dec h                                         ; $4d18: $25
    db $fd                                        ; $4d19: $fd
    ld hl, sp-$6e                                 ; $4d1a: $f8 $92
    add e                                         ; $4d1c: $83
    inc c                                         ; $4d1d: $0c
    ld a, a                                       ; $4d1e: $7f
    db $dd                                        ; $4d1f: $dd
    sbc [hl]                                      ; $4d20: $9e
    ld e, h                                       ; $4d21: $5c
    adc l                                         ; $4d22: $8d
    ret nz                                        ; $4d23: $c0

jr_024_4d24:
    jp c, $ef1f                                   ; $4d24: $da $1f $ef

    ld e, e                                       ; $4d27: $5b
    ld a, a                                       ; $4d28: $7f
    ld e, [hl]                                    ; $4d29: $5e
    ld a, [hl]                                    ; $4d2a: $7e
    ldh [$2a], a                                  ; $4d2b: $e0 $2a
    or b                                          ; $4d2d: $b0
    and d                                         ; $4d2e: $a2
    sub $1f                                       ; $4d2f: $d6 $1f
    add sp, $65                                   ; $4d31: $e8 $65
    db $e3                                        ; $4d33: $e3
    ld l, a                                       ; $4d34: $6f
    adc h                                         ; $4d35: $8c
    xor e                                         ; $4d36: $ab
    rst $18                                       ; $4d37: $df
    jr @-$27                                      ; $4d38: $18 $d7

    and h                                         ; $4d3a: $a4
    ld b, c                                       ; $4d3b: $41
    db $eb                                        ; $4d3c: $eb
    ld d, c                                       ; $4d3d: $51
    ld a, [hl]                                    ; $4d3e: $7e
    and b                                         ; $4d3f: $a0
    pop hl                                        ; $4d40: $e1
    cpl                                           ; $4d41: $2f
    jp hl                                         ; $4d42: $e9


    rst $00                                       ; $4d43: $c7
    sub a                                         ; $4d44: $97
    ld e, h                                       ; $4d45: $5c
    ld d, c                                       ; $4d46: $51
    ld e, b                                       ; $4d47: $58
    dec d                                         ; $4d48: $15
    dec c                                         ; $4d49: $0d
    dec b                                         ; $4d4a: $05
    di                                            ; $4d4b: $f3
    ld e, h                                       ; $4d4c: $5c
    cp h                                          ; $4d4d: $bc
    or $cf                                        ; $4d4e: $f6 $cf
    ld c, [hl]                                    ; $4d50: $4e
    add hl, de                                    ; $4d51: $19
    db $e4                                        ; $4d52: $e4
    ld h, d                                       ; $4d53: $62
    ld d, d                                       ; $4d54: $52
    ret nz                                        ; $4d55: $c0

    dec e                                         ; $4d56: $1d
    xor a                                         ; $4d57: $af
    rst $10                                       ; $4d58: $d7
    cpl                                           ; $4d59: $2f
    dec b                                         ; $4d5a: $05
    di                                            ; $4d5b: $f3
    sbc h                                         ; $4d5c: $9c
    cp h                                          ; $4d5d: $bc
    dec de                                        ; $4d5e: $1b
    and c                                         ; $4d5f: $a1
    ld a, c                                       ; $4d60: $79
    xor [hl]                                      ; $4d61: $ae
    sub e                                         ; $4d62: $93
    db $fc                                        ; $4d63: $fc
    dec bc                                        ; $4d64: $0b
    jp nz, Jump_024_6667                          ; $4d65: $c2 $67 $66

    ld h, h                                       ; $4d68: $64
    rra                                           ; $4d69: $1f
    and [hl]                                      ; $4d6a: $a6
    ld a, b                                       ; $4d6b: $78
    rla                                           ; $4d6c: $17
    inc c                                         ; $4d6d: $0c
    xor l                                         ; $4d6e: $ad
    ld a, [hl+]                                   ; $4d6f: $2a
    jp nc, $d974                                  ; $4d70: $d2 $74 $d9

Call_024_4d73:
    ld d, c                                       ; $4d73: $51
    ld a, [c]                                     ; $4d74: $f2
    ld l, e                                       ; $4d75: $6b
    jp nc, $634c                                  ; $4d76: $d2 $4c $63

    sbc h                                         ; $4d79: $9c
    call c, Call_024_78a0                         ; $4d7a: $dc $a0 $78
    ld d, a                                       ; $4d7d: $57
    inc c                                         ; $4d7e: $0c
    cp l                                          ; $4d7f: $bd
    ld e, $d0                                     ; $4d80: $1e $d0
    adc [hl]                                      ; $4d82: $8e
    ld [hl], $3e                                  ; $4d83: $36 $3e
    cpl                                           ; $4d85: $2f
    ccf                                           ; $4d86: $3f
    ld b, e                                       ; $4d87: $43
    or a                                          ; $4d88: $b7
    ld c, d                                       ; $4d89: $4a
    and c                                         ; $4d8a: $a1
    ld e, l                                       ; $4d8b: $5d
    ld e, b                                       ; $4d8c: $58
    ld e, d                                       ; $4d8d: $5a
    ld e, a                                       ; $4d8e: $5f
    and $e5                                       ; $4d8f: $e6 $e5
    push hl                                       ; $4d91: $e5
    cp c                                          ; $4d92: $b9
    ld h, e                                       ; $4d93: $63
    xor a                                         ; $4d94: $af
    inc c                                         ; $4d95: $0c
    ld h, c                                       ; $4d96: $61
    dec a                                         ; $4d97: $3d
    ld l, [hl]                                    ; $4d98: $6e
    ld hl, sp-$4d                                 ; $4d99: $f8 $b3
    ld d, e                                       ; $4d9b: $53
    ld d, $fe                                     ; $4d9c: $16 $fe
    inc a                                         ; $4d9e: $3c
    rla                                           ; $4d9f: $17
    ld e, a                                       ; $4da0: $5f
    xor l                                         ; $4da1: $ad
    rst $08                                       ; $4da2: $cf
    ld e, l                                       ; $4da3: $5d
    xor e                                         ; $4da4: $ab
    adc d                                         ; $4da5: $8a
    inc [hl]                                      ; $4da6: $34
    ld l, b                                       ; $4da7: $68
    cp l                                          ; $4da8: $bd
    jp nc, $bf8c                                  ; $4da9: $d2 $8c $bf

    ld sp, $fdae                                  ; $4dac: $31 $ae $fd
    inc bc                                        ; $4daf: $03
    or l                                          ; $4db0: $b5
    ld a, a                                       ; $4db1: $7f
    sub h                                         ; $4db2: $94
    inc a                                         ; $4db3: $3c
    jp c, $c451                                   ; $4db4: $da $51 $c4

    ld h, $1f                                     ; $4db7: $26 $1f
    ld a, [hl]                                    ; $4db9: $7e
    ret c                                         ; $4dba: $d8

    ld a, [hl]                                    ; $4dbb: $7e
    pop hl                                        ; $4dbc: $e1
    ld c, $32                                     ; $4dbd: $0e $32
    ld a, h                                       ; $4dbf: $7c
    cp a                                          ; $4dc0: $bf
    pop hl                                        ; $4dc1: $e1
    jp $fcbc                                      ; $4dc2: $c3 $bc $fc


    ret nz                                        ; $4dc5: $c0

    ld d, l                                       ; $4dc6: $55
    ld h, b                                       ; $4dc7: $60
    ld a, [hl+]                                   ; $4dc8: $2a
    ccf                                           ; $4dc9: $3f
    ld e, [hl]                                    ; $4dca: $5e
    sub d                                         ; $4dcb: $92
    ld [bc], a                                    ; $4dcc: $02
    add h                                         ; $4dcd: $84
    ld bc, $bd27                                  ; $4dce: $01 $27 $bd
    rst $10                                       ; $4dd1: $d7
    ld h, b                                       ; $4dd2: $60
    pop bc                                        ; $4dd3: $c1
    ei                                            ; $4dd4: $fb
    jp c, $d55a                                   ; $4dd5: $da $5a $d5

    ld d, a                                       ; $4dd8: $57
    ld [hl-], a                                   ; $4dd9: $32
    db $fc                                        ; $4dda: $fc
    ld d, c                                       ; $4ddb: $51
    ld a, [c]                                     ; $4ddc: $f2
    ld l, b                                       ; $4ddd: $68
    sub [hl]                                      ; $4dde: $96
    ld e, d                                       ; $4ddf: $5a
    adc h                                         ; $4de0: $8c
    ld l, e                                       ; $4de1: $6b
    cp a                                          ; $4de2: $bf
    rst $08                                       ; $4de3: $cf
    sra a                                         ; $4de4: $cb $2f
    cp l                                          ; $4de6: $bd
    cp h                                          ; $4de7: $bc
    ret nz                                        ; $4de8: $c0

    ld d, h                                       ; $4de9: $54
    ld a, [hl]                                    ; $4dea: $7e
    ld e, [hl]                                    ; $4deb: $5e
    ld e, [hl]                                    ; $4dec: $5e
    ld a, [hl]                                    ; $4ded: $7e
    ld a, [de]                                    ; $4dee: $1a
    push hl                                       ; $4def: $e5
    sub l                                         ; $4df0: $95
    dec [hl]                                      ; $4df1: $35
    ld [$1603], sp                                ; $4df2: $08 $03 $16
    xor a                                         ; $4df5: $af
    pop bc                                        ; $4df6: $c1
    ld [hl], h                                    ; $4df7: $74
    ld b, c                                       ; $4df8: $41
    ld h, $9b                                     ; $4df9: $26 $9b
    sub a                                         ; $4dfb: $97
    ld c, e                                       ; $4dfc: $4b
    pop bc                                        ; $4dfd: $c1
    ld e, d                                       ; $4dfe: $5a
    dec [hl]                                      ; $4dff: $35
    sub b                                         ; $4e00: $90
    bit 4, [hl]                                   ; $4e01: $cb $66
    and a                                         ; $4e03: $a7

jr_024_4e04:
    ld hl, $26b6                                  ; $4e04: $21 $b6 $26
    call $cd2e                                    ; $4e07: $cd $2e $cd
    set 1, a                                      ; $4e0a: $cb $cf
    ld c, [hl]                                    ; $4e0c: $4e
    ld a, c                                       ; $4e0d: $79
    ld [hl], b                                    ; $4e0e: $70
    or h                                          ; $4e0f: $b4
    ld d, e                                       ; $4e10: $53
    sub d                                         ; $4e11: $92
    rst $20                                       ; $4e12: $e7
    xor [hl]                                      ; $4e13: $ae
    ld c, c                                       ; $4e14: $49

jr_024_4e15:
    ld d, e                                       ; $4e15: $53
    ld h, e                                       ; $4e16: $63
    ld l, e                                       ; $4e17: $6b
    ccf                                           ; $4e18: $3f
    ld hl, sp-$7e                                 ; $4e19: $f8 $82
    sbc h                                         ; $4e1b: $9c
    call c, $f8a0                                 ; $4e1c: $dc $a0 $f8
    inc a                                         ; $4e1f: $3c
    ld [hl], a                                    ; $4e20: $77
    cp h                                          ; $4e21: $bc
    inc [hl]                                      ; $4e22: $34
    or [hl]                                       ; $4e23: $b6
    ld a, l                                       ; $4e24: $7d
    adc c                                         ; $4e25: $89
    and l                                         ; $4e26: $a5
    jr nz, @+$0e                                  ; $4e27: $20 $0c

    ld b, a                                       ; $4e29: $47
    ld l, e                                       ; $4e2a: $6b
    ld d, l                                       ; $4e2b: $55
    sbc a                                         ; $4e2c: $9f
    rst $20                                       ; $4e2d: $e7
    jp c, $a6cf                                   ; $4e2e: $da $cf $a6

    cp [hl]                                       ; $4e31: $be
    and h                                         ; $4e32: $a4
    ld [$ebb9], a                                 ; $4e33: $ea $b9 $eb
    sbc [hl]                                      ; $4e36: $9e
    xor $2f                                       ; $4e37: $ee $2f
    ld [$bd03], sp                                ; $4e39: $08 $03 $bd
    jp nc, $d8c8                                  ; $4e3c: $d2 $c8 $d8

    ei                                            ; $4e3f: $fb
    sub e                                         ; $4e40: $93
    rst $18                                       ; $4e41: $df
    and h                                         ; $4e42: $a4
    ld e, l                                       ; $4e43: $5d
    ld e, b                                       ; $4e44: $58
    sub l                                         ; $4e45: $95
    ld h, c                                       ; $4e46: $61
    daa                                           ; $4e47: $27
    cp [hl]                                       ; $4e48: $be
    ccf                                           ; $4e49: $3f
    ld [hl], a                                    ; $4e4a: $77
    xor l                                         ; $4e4b: $ad
    ld a, [hl+]                                   ; $4e4c: $2a
    jp nc, Jump_000_1da0                          ; $4e4d: $d2 $a0 $1d

    sbc a                                         ; $4e50: $9f

jr_024_4e51:
    ld h, e                                       ; $4e51: $63
    ld d, a                                       ; $4e52: $57
    cp [hl]                                       ; $4e53: $be
    ld a, [c]                                     ; $4e54: $f2
    ret c                                         ; $4e55: $d8

    call z, $c773                                 ; $4e56: $cc $73 $c7
    ld c, e                                       ; $4e59: $4b
    ld h, e                                       ; $4e5a: $63
    db $db                                        ; $4e5b: $db
    sub a                                         ; $4e5c: $97
    ld e, b                                       ; $4e5d: $58
    ld a, [bc]                                    ; $4e5e: $0a
    jp nz, Jump_024_6fdd                          ; $4e5f: $c2 $dd $6f

    jr nc, jr_024_4e04                            ; $4e62: $30 $a0

    inc [hl]                                      ; $4e64: $34
    adc [hl]                                      ; $4e65: $8e
    jr nc, jr_024_4e15                            ; $4e66: $30 $ad

    ld a, [hl+]                                   ; $4e68: $2a
    jp nc, Jump_024_5974                          ; $4e69: $d2 $74 $59

    rst $08                                       ; $4e6c: $cf
    and d                                         ; $4e6d: $a2
    cp [hl]                                       ; $4e6e: $be
    and d                                         ; $4e6f: $a2
    sbc l                                         ; $4e70: $9d
    adc $d3                                       ; $4e71: $ce $d3
    or e                                          ; $4e73: $b3
    xor [hl]                                      ; $4e74: $ae
    jr jr_024_4ede                                ; $4e75: $18 $67

    ld h, [hl]                                    ; $4e77: $66
    ld h, h                                       ; $4e78: $64
    rra                                           ; $4e79: $1f
    and [hl]                                      ; $4e7a: $a6
    ld hl, sp+$2e                                 ; $4e7b: $f8 $2e
    db $ec                                        ; $4e7d: $ec
    jp nc, $fcbc                                  ; $4e7e: $d2 $bc $fc

    db $ec                                        ; $4e81: $ec
    sub h                                         ; $4e82: $94
    rlca                                          ; $4e83: $07
    rst $20                                       ; $4e84: $e7
    adc [hl]                                      ; $4e85: $8e
    rst $10                                       ; $4e86: $d7
    db $eb                                        ; $4e87: $eb
    sub a                                         ; $4e88: $97
    add d                                         ; $4e89: $82
    ld a, c                                       ; $4e8a: $79
    ld l, $78                                     ; $4e8b: $2e $78
    sbc a                                         ; $4e8d: $9f
    sub a                                         ; $4e8e: $97
    ld e, a                                       ; $4e8f: $5f
    ld c, e                                       ; $4e90: $4b
    ld c, d                                       ; $4e91: $4a
    push af                                       ; $4e92: $f5
    ld a, [c]                                     ; $4e93: $f2
    ld d, d                                       ; $4e94: $52
    add e                                         ; $4e95: $83
    or l                                          ; $4e96: $b5
    ld a, b                                       ; $4e97: $78
    jp nc, $eda3                                  ; $4e98: $d2 $a3 $ed

    jr z, jr_024_4eff                             ; $4e9b: $28 $62

    or e                                          ; $4e9d: $b3
    call z, $a5cb                                 ; $4e9e: $cc $cb $a5
    ld a, [$485a]                                 ; $4ea1: $fa $5a $48
    dec sp                                        ; $4ea4: $3b
    cp a                                          ; $4ea5: $bf
    and d                                         ; $4ea6: $a2
    jr nc, jr_024_4e51                            ; $4ea7: $30 $a8

    ld d, h                                       ; $4ea9: $54
    sbc [hl]                                      ; $4eaa: $9e
    db $ed                                        ; $4eab: $ed
    inc [hl]                                      ; $4eac: $34
    ld [hl], e                                    ; $4ead: $73
    ld b, l                                       ; $4eae: $45
    ld a, $c6                                     ; $4eaf: $3e $c6

jr_024_4eb1:
    ld e, l                                       ; $4eb1: $5d
    ld a, [c]                                     ; $4eb2: $f2
    ld e, h                                       ; $4eb3: $5c
    ld sp, hl                                     ; $4eb4: $f9
    ret c                                         ; $4eb5: $d8

    cp c                                          ; $4eb6: $b9
    inc d                                         ; $4eb7: $14
    xor h                                         ; $4eb8: $ac
    call c, Call_024_6110                         ; $4eb9: $dc $10 $61
    rst $00                                       ; $4ebc: $c7
    inc h                                         ; $4ebd: $24
    push de                                       ; $4ebe: $d5
    ld a, h                                       ; $4ebf: $7c
    and b                                         ; $4ec0: $a0
    call $85ca                                    ; $4ec1: $cd $ca $85
    sub c                                         ; $4ec4: $91
    add [hl]                                      ; $4ec5: $86
    rst $18                                       ; $4ec6: $df
    dec b                                         ; $4ec7: $05
    inc bc                                        ; $4ec8: $03
    rst $00                                       ; $4ec9: $c7
    ld e, l                                       ; $4eca: $5d
    ld a, c                                       ; $4ecb: $79
    ld [c], a                                     ; $4ecc: $e2
    ld hl, sp-$0d                                 ; $4ecd: $f8 $f3

Jump_024_4ecf:
    ld a, [c]                                     ; $4ecf: $f2
    db $eb                                        ; $4ed0: $eb
    or $e4                                        ; $4ed1: $f6 $e4
    ld l, d                                       ; $4ed3: $6a
    ld h, h                                       ; $4ed4: $64
    and b                                         ; $4ed5: $a0
    sub $67                                       ; $4ed6: $d6 $67
    dec bc                                        ; $4ed8: $0b
    sbc a                                         ; $4ed9: $9f
    cp e                                          ; $4eda: $bb
    or [hl]                                       ; $4edb: $b6
    pop af                                        ; $4edc: $f1
    and l                                         ; $4edd: $a5

jr_024_4ede:
    sub a                                         ; $4ede: $97
    sub a                                         ; $4edf: $97
    ld [hl], l                                    ; $4ee0: $75
    ld a, e                                       ; $4ee1: $7b
    ld [hl], d                                    ; $4ee2: $72
    dec [hl]                                      ; $4ee3: $35
    ld [bc], a                                    ; $4ee4: $02
    ld l, e                                       ; $4ee5: $6b
    ld a, a                                       ; $4ee6: $7f
    cp h                                          ; $4ee7: $bc
    ld l, a                                       ; $4ee8: $6f
    db $fd                                        ; $4ee9: $fd
    sbc l                                         ; $4eea: $9d
    sbc c                                         ; $4eeb: $99
    sub c                                         ; $4eec: $91
    ld a, l                                       ; $4eed: $7d
    sbc b                                         ; $4eee: $98
    ld [c], a                                     ; $4eef: $e2
    db $e3                                        ; $4ef0: $e3
    ld l, a                                       ; $4ef1: $6f
    adc h                                         ; $4ef2: $8c
    xor e                                         ; $4ef3: $ab
    rst $18                                       ; $4ef4: $df
    jr @+$19                                      ; $4ef5: $18 $17

    ld a, $5a                                     ; $4ef7: $3e $5a
    adc a                                         ; $4ef9: $8f
    ld a, [c]                                     ; $4efa: $f2
    inc bc                                        ; $4efb: $03
    ld d, a                                       ; $4efc: $57
    add c                                         ; $4efd: $81
    add c                                         ; $4efe: $81

jr_024_4eff:
    ld [hl], $83                                  ; $4eff: $36 $83
    ld b, h                                       ; $4f01: $44
    jr jr_024_4eb1                                ; $4f02: $18 $ad

    ld e, a                                       ; $4f04: $5f
    adc e                                         ; $4f05: $8b
    ld [hl], c                                    ; $4f06: $71
    pop bc                                        ; $4f07: $c1
    ei                                            ; $4f08: $fb
    inc c                                         ; $4f09: $0c
    ld c, h                                       ; $4f0a: $4c
    ld h, e                                       ; $4f0b: $63
    call c, $d7b5                                 ; $4f0c: $dc $b5 $d7
    and h                                         ; $4f0f: $a4
    ld e, c                                       ; $4f10: $59
    db $fd                                        ; $4f11: $fd
    cp a                                          ; $4f12: $bf
    inc sp                                        ; $4f13: $33
    ret nc                                        ; $4f14: $d0

    and $52                                       ; $4f15: $e6 $52
    or b                                          ; $4f17: $b0
    ld [hl], d                                    ; $4f18: $72
    ld h, c                                       ; $4f19: $61
    and h                                         ; $4f1a: $a4
    pop hl                                        ; $4f1b: $e1
    ld [hl], a                                    ; $4f1c: $77
    pop bc                                        ; $4f1d: $c1
    xor l                                         ; $4f1e: $ad
    ld a, [hl+]                                   ; $4f1f: $2a
    jp nc, Jump_024_6770                          ; $4f20: $d2 $70 $67

    xor c                                         ; $4f23: $a9
    ld e, c                                       ; $4f24: $59
    ld a, a                                       ; $4f25: $7f
    push hl                                       ; $4f26: $e5
    ld d, l                                       ; $4f27: $55
    ret c                                         ; $4f28: $d8

    cp h                                          ; $4f29: $bc

jr_024_4f2a:
    xor b                                         ; $4f2a: $a8
    rst $28                                       ; $4f2b: $ef
    call z, $ec8c                                 ; $4f2c: $cc $8c $ec
    jp $df14                                      ; $4f2f: $c3 $14 $df


    add l                                         ; $4f32: $85
    xor c                                         ; $4f33: $a9
    dec l                                         ; $4f34: $2d
    ld a, d                                       ; $4f35: $7a
    reti                                          ; $4f36: $d9


    jp nc, Jump_000_31de                          ; $4f37: $d2 $de $31

    ld h, $6c                                     ; $4f3a: $26 $6c
    rst $00                                       ; $4f3c: $c7
    ld h, a                                       ; $4f3d: $67
    add hl, hl                                    ; $4f3e: $29
    adc a                                         ; $4f3f: $8f
    halt                                          ; $4f40: $76
    inc d                                         ; $4f41: $14
    inc l                                         ; $4f42: $2c
    ld h, $05                                     ; $4f43: $26 $05
    ld d, e                                       ; $4f45: $53
    ld e, b                                       ; $4f46: $58
    ld sp, hl                                     ; $4f47: $f9
    ld a, [de]                                    ; $4f48: $1a
    ld c, h                                       ; $4f49: $4c
    dec h                                         ; $4f4a: $25
    dec c                                         ; $4f4b: $0d
    ld sp, $9aee                                  ; $4f4c: $31 $ee $9a
    inc [hl]                                      ; $4f4f: $34
    or l                                          ; $4f50: $b5
    jr jr_024_4f2a                                ; $4f51: $18 $d7

    cp $81                                        ; $4f53: $fe $81
    jp c, Jump_024_768f                           ; $4f55: $da $8f $76

    ld c, d                                       ; $4f58: $4a
    ld a, [c]                                     ; $4f59: $f2
    db $e3                                        ; $4f5a: $e3
    ld a, a                                       ; $4f5b: $7f
    ld d, b                                       ; $4f5c: $50
    jp nc, $b644                                  ; $4f5d: $d2 $44 $b6

    ldh [$7d], a                                  ; $4f60: $e0 $7d
    sub b                                         ; $4f62: $90
    pop hl                                        ; $4f63: $e1
    rrca                                          ; $4f64: $0f
    ld [c], a                                     ; $4f65: $e2
    ld a, a                                       ; $4f66: $7f
    rlca                                          ; $4f67: $07
    ld h, c                                       ; $4f68: $61
    daa                                           ; $4f69: $27
    scf                                           ; $4f6a: $37
    or e                                          ; $4f6b: $b3
    sub b                                         ; $4f6c: $90
    push af                                       ; $4f6d: $f5
    jp nz, $df6d                                  ; $4f6e: $c2 $6d $df

    ld a, b                                       ; $4f71: $78
    cp l                                          ; $4f72: $bd
    ld e, c                                       ; $4f73: $59
    or a                                          ; $4f74: $b7
    sbc b                                         ; $4f75: $98
    ld e, d                                       ; $4f76: $5a
    ld b, a                                       ; $4f77: $47
    ld [$af5d], sp                                ; $4f78: $08 $5d $af
    pop bc                                        ; $4f7b: $c1
    jp c, $d55a                                   ; $4f7c: $da $5a $d5

    cp e                                          ; $4f7f: $bb
    db $ec                                        ; $4f80: $ec
    jr z, jr_024_4fe5                             ; $4f81: $28 $62

    di                                            ; $4f83: $f3

jr_024_4f84:
    ld a, [c]                                     ; $4f84: $f2
    ld a, [c]                                     ; $4f85: $f2
    dec [hl]                                      ; $4f86: $35
    sbc b                                         ; $4f87: $98
    adc [hl]                                      ; $4f88: $8e
    jp nc, $fc7f                                  ; $4f89: $d2 $7f $fc

    push af                                       ; $4f8c: $f5
    or d                                          ; $4f8d: $b2
    db $eb                                        ; $4f8e: $eb
    ld [$2703], sp                                ; $4f8f: $08 $03 $27
    jr jr_024_4f84                                ; $4f92: $18 $f0

    ld e, l                                       ; $4f94: $5d
    ld e, d                                       ; $4f95: $5a
    and l                                         ; $4f96: $a5
    ldh a, [$08]                                  ; $4f97: $f0 $08
    inc bc                                        ; $4f99: $03

    db $c7, $5d, $62, $6b, $d5, $40, $2e, $db, $a5, $1d, $2f, $97, $82, $74, $87, $da
    db $4e, $ca, $76, $bb, $41, $18

    ld b, a                                       ; $4fb0: $47
    sbc e                                         ; $4fb1: $9b
    ld h, [hl]                                    ; $4fb2: $66
    dec l                                         ; $4fb3: $2d
    ld d, l                                       ; $4fb4: $55
    ret                                           ; $4fb5: $c9


    adc h                                         ; $4fb6: $8c
    ld l, e                                       ; $4fb7: $6b
    ld sp, $4e9d                                  ; $4fb8: $31 $9d $4e
    cp h                                          ; $4fbb: $bc
    rrca                                          ; $4fbc: $0f
    cp e                                          ; $4fbd: $bb
    or h                                          ; $4fbe: $b4
    ld h, e                                       ; $4fbf: $63
    xor [hl]                                      ; $4fc0: $ae
    ld b, $49                                     ; $4fc1: $06 $49
    dec sp                                        ; $4fc3: $3b
    ld a, [hl+]                                   ; $4fc4: $2a
    add $6f                                       ; $4fc5: $c6 $6f
    db $10                                        ; $4fc7: $10
    ld b, $c7                                     ; $4fc8: $06 $c7
    cp a                                          ; $4fca: $bf
    cpl                                           ; $4fcb: $2f
    ld l, c                                       ; $4fcc: $69
    ld e, [hl]                                    ; $4fcd: $5e
    ld a, [hl]                                    ; $4fce: $7e
    xor l                                         ; $4fcf: $ad
    add hl, de                                    ; $4fd0: $19
    ldh a, [$2a]                                  ; $4fd1: $f0 $2a
    ld c, $3b                                     ; $4fd3: $0e $3b
    sub [hl]                                      ; $4fd5: $96
    ld b, e                                       ; $4fd6: $43
    ld b, a                                       ; $4fd7: $47
    ld e, $00                                     ; $4fd8: $1e $00
    ld h, c                                       ; $4fda: $61
    rst $00                                       ; $4fdb: $c7
    ld e, l                                       ; $4fdc: $5d
    ld h, d                                       ; $4fdd: $62
    db $d3                                        ; $4fde: $d3
    pop bc                                        ; $4fdf: $c1
    xor e                                         ; $4fe0: $ab
    cpl                                           ; $4fe1: $2f
    ld l, c                                       ; $4fe2: $69
    ld e, [hl]                                    ; $4fe3: $5e
    ld a, [hl]                                    ; $4fe4: $7e

jr_024_4fe5:
    xor l                                         ; $4fe5: $ad
    add hl, de                                    ; $4fe6: $19
    ldh a, [$2a]                                  ; $4fe7: $f0 $2a
    ld c, $3b                                     ; $4fe9: $0e $3b
    sub [hl]                                      ; $4feb: $96
    ld b, e                                       ; $4fec: $43
    ld b, a                                       ; $4fed: $47
    ld e, $00                                     ; $4fee: $1e $00
    ld h, c                                       ; $4ff0: $61
    db $dd                                        ; $4ff1: $dd
    inc h                                         ; $4ff2: $24
    ld bc, $e5e6                                  ; $4ff3: $01 $e6 $e5
    rla                                           ; $4ff6: $17
    or l                                          ; $4ff7: $b5
    cp $53                                        ; $4ff8: $fe $53
    ld e, a                                       ; $4ffa: $5f
    ld l, e                                       ; $4ffb: $6b
    ld b, $bc                                     ; $4ffc: $06 $bc
    adc d                                         ; $4ffe: $8a
    jp Jump_024_524e                              ; $4fff: $c3 $4e $52


    ld h, d                                       ; $5002: $62
    sub a                                         ; $5003: $97
    ld [bc], a                                    ; $5004: $02
    add h                                         ; $5005: $84
    ld bc, $bfc7                                  ; $5006: $01 $c7 $bf
    rst $08                                       ; $5009: $cf
    adc e                                         ; $500a: $8b
    and h                                         ; $500b: $a4
    add hl, bc                                    ; $500c: $09
    jp z, $fcbc                                   ; $500d: $ca $bc $fc

    ld e, d                                       ; $5010: $5a
    inc sp                                        ; $5011: $33
    ldh [rHDMA5], a                               ; $5012: $e0 $55
    inc e                                         ; $5014: $1c
    add $0c                                       ; $5015: $c6 $0c
    dec b                                         ; $5017: $05
    sbc a                                         ; $5018: $9f
    inc b                                         ; $5019: $04

jr_024_501a:
    ld [$c761], sp                                ; $501a: $08 $61 $c7
    cp a                                          ; $501d: $bf
    rrca                                          ; $501e: $0f
    ld d, d                                       ; $501f: $52
    db $fc                                        ; $5020: $fc
    reti                                          ; $5021: $d9


    ld l, $79                                     ; $5022: $2e $79
    ld c, [hl]                                    ; $5024: $4e
    rst $10                                       ; $5025: $d7
    sbc d                                         ; $5026: $9a
    ld b, $1e                                     ; $5027: $06 $1e
    ld h, c                                       ; $5029: $61
    rst $00                                       ; $502a: $c7
    ld e, l                                       ; $502b: $5d
    ld h, d                                       ; $502c: $62
    dec sp                                        ; $502d: $3b
    ld e, [hl]                                    ; $502e: $5e
    ld a, [de]                                    ; $502f: $1a
    db $db                                        ; $5030: $db
    cp [hl]                                       ; $5031: $be
    call nz, $1052                                ; $5032: $c4 $52 $10
    ld b, $c7                                     ; $5035: $06 $c7
    cp a                                          ; $5037: $bf
    rst $08                                       ; $5038: $cf
    ld [hl], e                                    ; $5039: $73
    db $dd                                        ; $503a: $dd
    db $d3                                        ; $503b: $d3
    ld l, a                                       ; $503c: $6f
    ld [de], a                                    ; $503d: $12
    xor h                                         ; $503e: $ac
    ld e, e                                       ; $503f: $5b
    ld d, h                                       ; $5040: $54
    nop                                           ; $5041: $00
    add h                                         ; $5042: $84
    ld bc, $5dc7                                  ; $5043: $01 $c7 $5d
    ld h, d                                       ; $5046: $62
    or e                                          ; $5047: $b3
    ld d, b                                       ; $5048: $50
    jr nz, jr_024_501a                            ; $5049: $20 $cf

    xor $93                                       ; $504b: $ee $93
    jp $94ec                                      ; $504d: $c3 $ec $94


    or l                                          ; $5050: $b5
    sub b                                         ; $5051: $90
    halt                                          ; $5052: $76
    ld e, $61                                     ; $5053: $1e $61
    jp $b4dd                                      ; $5055: $c3 $dd $b4


    db $e3                                        ; $5058: $e3
    ld b, [hl]                                    ; $5059: $46
    ld a, [hl]                                    ; $505a: $7e
    ld e, [hl]                                    ; $505b: $5e
    ld a, [hl]                                    ; $505c: $7e
    db $dd                                        ; $505d: $dd
    adc l                                         ; $505e: $8d
    ld [hl], h                                    ; $505f: $74
    ld [c], a                                     ; $5060: $e2
    rst $28                                       ; $5061: $ef
    ld [hl], h                                    ; $5062: $74
    ld l, l                                       ; $5063: $6d
    or a                                          ; $5064: $b7
    xor a                                         ; $5065: $af
    inc hl                                        ; $5066: $23
    inc c                                         ; $5067: $0c
    rst $00                                       ; $5068: $c7
    ld e, l                                       ; $5069: $5d
    ld h, d                                       ; $506a: $62
    dec sp                                        ; $506b: $3b
    ld a, b                                       ; $506c: $78
    push hl                                       ; $506d: $e5
    and l                                         ; $506e: $a5
    dec c                                         ; $506f: $0d
    or e                                          ; $5070: $b3
    ld d, e                                       ; $5071: $53
    and $e5                                       ; $5072: $e6 $e5

Jump_024_5074:
    rst $10                                       ; $5074: $d7
    ld a, [$ced2]                                 ; $5075: $fa $d2 $ce
    sbc b                                         ; $5078: $98
    ld b, c                                       ; $5079: $41
    or e                                          ; $507a: $b3
    ld l, [hl]                                    ; $507b: $6e
    ld d, c                                       ; $507c: $51
    ld bc, $0610                                  ; $507d: $01 $10 $06
    rst $00                                       ; $5080: $c7
    ld e, l                                       ; $5081: $5d
    ld h, d                                       ; $5082: $62
    dec sp                                        ; $5083: $3b
    ld a, b                                       ; $5084: $78
    push hl                                       ; $5085: $e5
    and l                                         ; $5086: $a5
    dec c                                         ; $5087: $0d
    or e                                          ; $5088: $b3
    ld d, e                                       ; $5089: $53
    and $e5                                       ; $508a: $e6 $e5
    rst $10                                       ; $508c: $d7
    ld a, [$ced2]                                 ; $508d: $fa $d2 $ce
    sbc b                                         ; $5090: $98
    ld b, c                                       ; $5091: $41
    or e                                          ; $5092: $b3
    ld l, [hl]                                    ; $5093: $6e
    ld d, c                                       ; $5094: $51
    ld bc, $0610                                  ; $5095: $01 $10 $06
    jp $c7c3                                      ; $5098: $c3 $c3 $c7


    ld e, l                                       ; $509b: $5d
    ld h, d                                       ; $509c: $62
    di                                            ; $509d: $f3
    ld a, [c]                                     ; $509e: $f2
    dec sp                                        ; $509f: $3b
    and $ed                                       ; $50a0: $e6 $ed
    daa                                           ; $50a2: $27
    ld hl, sp+$1d                                 ; $50a3: $f8 $1d
    dec d                                         ; $50a5: $15
    add sp, $25                                   ; $50a6: $e8 $25
    ldh a, [rNR33]                                ; $50a8: $f0 $1d

jr_024_50aa:
    and e                                         ; $50aa: $a3
    ld d, d                                       ; $50ab: $52
    rst $18                                       ; $50ac: $df
    ld d, c                                       ; $50ad: $51
    ld [c], a                                     ; $50ae: $e2
    or b                                          ; $50af: $b0
    ld l, [hl]                                    ; $50b0: $6e
    ld d, c                                       ; $50b1: $51
    ld bc, $0610                                  ; $50b2: $01 $10 $06
    rst $00                                       ; $50b5: $c7
    ld e, l                                       ; $50b6: $5d
    ld h, d                                       ; $50b7: $62
    db $d3                                        ; $50b8: $d3
    pop af                                        ; $50b9: $f1
    jp c, Jump_024_73cc                           ; $50ba: $da $cc $73

    ld a, [c]                                     ; $50bd: $f2
    ld h, c                                       ; $50be: $61
    ld e, d                                       ; $50bf: $5a
    ld a, a                                       ; $50c0: $7f
    ld c, l                                       ; $50c1: $4d
    ld a, [de]                                    ; $50c2: $1a
    ld e, c                                       ; $50c3: $59
    scf                                           ; $50c4: $37
    inc hl                                        ; $50c5: $23
    ldh a, [$08]                                  ; $50c6: $f0 $08
    inc bc                                        ; $50c8: $03
    jp $bfc7                                      ; $50c9: $c3 $c7 $bf


    rst $28                                       ; $50cc: $ef
    sub h                                         ; $50cd: $94
    or a                                          ; $50ce: $b7
    sbc $18                                       ; $50cf: $de $18
    cp a                                          ; $50d1: $bf
    ld b, $3b                                     ; $50d2: $06 $3b
    db $fd                                        ; $50d4: $fd
    jp $db0f                                      ; $50d5: $c3 $0f $db


    and d                                         ; $50d8: $a2
    ld sp, $adae                                  ; $50d9: $31 $ae $ad
    ld d, l                                       ; $50dc: $55
    ld a, l                                       ; $50dd: $7d
    or [hl]                                       ; $50de: $b6
    ld h, h                                       ; $50df: $64
    cp b                                          ; $50e0: $b8
    ld h, e                                       ; $50e1: $63
    ld b, h                                       ; $50e2: $44
    xor e                                         ; $50e3: $ab
    ld b, h                                       ; $50e4: $44
    jr jr_024_50aa                                ; $50e5: $18 $c3

    jp $bfa7                                      ; $50e7: $c3 $a7 $bf


    dec de                                        ; $50ea: $1b
    and c                                         ; $50eb: $a1
    ld a, c                                       ; $50ec: $79
    adc $cb                                       ; $50ed: $ce $cb
    xor a                                         ; $50ef: $af
    push af                                       ; $50f0: $f5
    add d                                         ; $50f1: $82
    and a                                         ; $50f2: $a7
    inc [hl]                                      ; $50f3: $34
    ld c, e                                       ; $50f4: $4b
    ld a, e                                       ; $50f5: $7b
    daa                                           ; $50f6: $27
    ld l, e                                       ; $50f7: $6b
    ld [hl], b                                    ; $50f8: $70

jr_024_50f9:
    xor e                                         ; $50f9: $ab
    ld [hl], l                                    ; $50fa: $75
    adc e                                         ; $50fb: $8b
    ld a, [bc]                                    ; $50fc: $0a
    add b                                         ; $50fd: $80
    jr nc, @-$37                                  ; $50fe: $30 $c7

    ld e, l                                       ; $5100: $5d
    ld h, d                                       ; $5101: $62
    di                                            ; $5102: $f3
    ld a, [c]                                     ; $5103: $f2
    db $eb                                        ; $5104: $eb
    halt                                          ; $5105: $76
    and l                                         ; $5106: $a5
    ld a, [$5375]                                 ; $5107: $fa $75 $53
    ld h, c                                       ; $510a: $61
    ld [$c703], sp                                ; $510b: $08 $03 $c7
    ld e, l                                       ; $510e: $5d
    ld h, d                                       ; $510f: $62
    di                                            ; $5110: $f3
    ld a, [c]                                     ; $5111: $f2
    db $eb                                        ; $5112: $eb
    halt                                          ; $5113: $76
    and l                                         ; $5114: $a5
    ld a, [$5375]                                 ; $5115: $fa $75 $53
    ld h, c                                       ; $5118: $61
    ld [$c303], sp                                ; $5119: $08 $03 $c3
    jp $a7c3                                      ; $511c: $c3 $c3 $a7


    cp a                                          ; $511f: $bf
    dec de                                        ; $5120: $1b
    and c                                         ; $5121: $a1
    ld a, c                                       ; $5122: $79
    adc $cb                                       ; $5123: $ce $cb
    xor a                                         ; $5125: $af
    push af                                       ; $5126: $f5
    add d                                         ; $5127: $82
    and a                                         ; $5128: $a7
    inc [hl]                                      ; $5129: $34
    ld c, e                                       ; $512a: $4b
    ld a, e                                       ; $512b: $7b
    daa                                           ; $512c: $27
    ld l, e                                       ; $512d: $6b
    ld [hl], b                                    ; $512e: $70
    xor e                                         ; $512f: $ab
    ld [hl], l                                    ; $5130: $75
    adc e                                         ; $5131: $8b
    ld a, [bc]                                    ; $5132: $0a
    add b                                         ; $5133: $80
    jr nc, jr_024_50f9                            ; $5134: $30 $c3

    jp $c3c3                                      ; $5136: $c3 $c3 $c3


    jp $c3c3                                      ; $5139: $c3 $c3 $c3


    jp $c7c3                                      ; $513c: $c3 $c3 $c7


    rst $20                                       ; $513f: $e7
    inc a                                         ; $5140: $3c
    rst $20                                       ; $5141: $e7
    push hl                                       ; $5142: $e5
    rst $10                                       ; $5143: $d7
    ld b, e                                       ; $5144: $43
    or d                                          ; $5145: $b2
    ld d, e                                       ; $5146: $53
    sbc d                                         ; $5147: $9a
    sbc l                                         ; $5148: $9d
    sbc [hl]                                      ; $5149: $9e
    add hl, de                                    ; $514a: $19

jr_024_514b:
    adc $4e                                       ; $514b: $ce $4e
    sbc c                                         ; $514d: $99
    sub a                                         ; $514e: $97
    rst $18                                       ; $514f: $df
    ret                                           ; $5150: $c9


    sub a                                         ; $5151: $97
    pop de                                        ; $5152: $d1
    dec c                                         ; $5153: $0d
    adc d                                         ; $5154: $8a
    rst $28                                       ; $5155: $ef
    jr jr_024_514b                                ; $5156: $18 $f3

    ld de, $c761                                  ; $5158: $11 $61 $c7
    rst $20                                       ; $515b: $e7
    jp c, $d55a                                   ; $515c: $da $5a $d5

    rst $20                                       ; $515f: $e7
    cp c                                          ; $5160: $b9
    db $e3                                        ; $5161: $e3
    and l                                         ; $5162: $a5
    or c                                          ; $5163: $b1
    db $ed                                        ; $5164: $ed
    ld c, e                                       ; $5165: $4b
    inc l                                         ; $5166: $2c
    dec b                                         ; $5167: $05
    ld h, c                                       ; $5168: $61
    jp $c3c3                                      ; $5169: $c3 $c3 $c3


    jp $c3c3                                      ; $516c: $c3 $c3 $c3


    jp $c3c3                                      ; $516f: $c3 $c3 $c3


    jp $e7c7                                      ; $5172: $c3 $c7 $e7


    inc a                                         ; $5175: $3c
    rst $20                                       ; $5176: $e7
    push hl                                       ; $5177: $e5
    rst $10                                       ; $5178: $d7
    xor d                                         ; $5179: $aa
    ld sp, $ff26                                  ; $517a: $31 $26 $ff
    ld c, a                                       ; $517d: $4f
    dec sp                                        ; $517e: $3b
    xor $15                                       ; $517f: $ee $15
    inc e                                         ; $5181: $1c
    ld h, c                                       ; $5182: $61
    dec l                                         ; $5183: $2d
    ld l, d                                       ; $5184: $6a
    db $fd                                        ; $5185: $fd
    or l                                          ; $5186: $b5
    cp [hl]                                       ; $5187: $be
    add h                                         ; $5188: $84
    scf                                           ; $5189: $37
    jp hl                                         ; $518a: $e9


    ld h, a                                       ; $518b: $67
    ld c, e                                       ; $518c: $4b
    add [hl]                                      ; $518d: $86
    di                                            ; $518e: $f3
    ld a, [c]                                     ; $518f: $f2
    db $eb                                        ; $5190: $eb
    ld hl, $2319                                  ; $5191: $21 $19 $23
    jp nz, $e7c7                                  ; $5194: $c2 $c7 $e7

    inc a                                         ; $5197: $3c
    rst $10                                       ; $5198: $d7
    xor d                                         ; $5199: $aa
    add c                                         ; $519a: $81
    ld e, h                                       ; $519b: $5c
    ld d, [hl]                                    ; $519c: $56
    add e                                         ; $519d: $83
    or l                                          ; $519e: $b5
    ld a, [de]                                    ; $519f: $1a
    ld b, a                                       ; $51a0: $47
    jr @-$37                                      ; $51a1: $18 $c7

    rst $20                                       ; $51a3: $e7
    inc a                                         ; $51a4: $3c
    ld [hl], a                                    ; $51a5: $77
    cp h                                          ; $51a6: $bc
    inc [hl]                                      ; $51a7: $34
    or [hl]                                       ; $51a8: $b6
    ld a, l                                       ; $51a9: $7d
    adc c                                         ; $51aa: $89
    and l                                         ; $51ab: $a5
    jr nz, @+$0e                                  ; $51ac: $20 $0c

    and a                                         ; $51ae: $a7
    ld a, a                                       ; $51af: $7f
    push af                                       ; $51b0: $f5
    rst $10                                       ; $51b1: $d7
    ld a, [$d26b]                                 ; $51b2: $fa $6b $d2
    ret z                                         ; $51b5: $c8

    cp d                                          ; $51b6: $ba
    dec d                                         ; $51b7: $15
    cp c                                          ; $51b8: $b9
    ldh [$a1], a                                  ; $51b9: $e0 $a1
    jp nz, Jump_024_6bba                          ; $51bb: $c2 $ba $6b

    ld d, l                                       ; $51be: $55
    rst $10                                       ; $51bf: $d7
    ldh [$31], a                                  ; $51c0: $e0 $31
    rst $00                                       ; $51c2: $c7
    ld [hl], d                                    ; $51c3: $72
    add sp, -$3c                                  ; $51c4: $e8 $c4
    sub h                                         ; $51c6: $94
    ld e, a                                       ; $51c7: $5f
    ld l, e                                       ; $51c8: $6b
    ld b, $bc                                     ; $51c9: $06 $bc
    adc d                                         ; $51cb: $8a
    jp Jump_024_72f8                              ; $51cc: $c3 $f8 $72


    db $e3                                        ; $51cf: $e3
    rst $08                                       ; $51d0: $cf
    ret nz                                        ; $51d1: $c0

    and l                                         ; $51d2: $a5
    ld h, b                                       ; $51d3: $60
    ld e, [hl]                                    ; $51d4: $5e
    ld a, [hl]                                    ; $51d5: $7e
    ld d, $b2                                     ; $51d6: $16 $b2
    ld e, [hl]                                    ; $51d8: $5e

jr_024_51d9:
    cp b                                          ; $51d9: $b8
    db $ed                                        ; $51da: $ed
    dec de                                        ; $51db: $1b
    xor a                                         ; $51dc: $af
    scf                                           ; $51dd: $37
    db $eb                                        ; $51de: $eb
    ld d, $53                                     ; $51df: $16 $53
    db $eb                                        ; $51e1: $eb
    ld [$c303], sp                                ; $51e2: $08 $03 $c3
    rst $00                                       ; $51e5: $c7
    ld b, d                                       ; $51e6: $42
    and l                                         ; $51e7: $a5
    sbc l                                         ; $51e8: $9d
    sbc a                                         ; $51e9: $9f
    dec l                                         ; $51ea: $2d
    add hl, de                                    ; $51eb: $19
    adc $cb                                       ; $51ec: $ce $cb
    rst $28                                       ; $51ee: $ef
    and h                                         ; $51ef: $a4
    db $db                                        ; $51f0: $db
    ld d, $95                                     ; $51f1: $16 $95
    ld b, $61                                     ; $51f3: $06 $61
    jp Jump_024_5dc7                              ; $51f5: $c3 $c7 $5d


    ld h, d                                       ; $51f8: $62
    di                                            ; $51f9: $f3
    ld a, [c]                                     ; $51fa: $f2
    dec sp                                        ; $51fb: $3b
    ld sp, hl                                     ; $51fc: $f9
    adc d                                         ; $51fd: $8a
    and h                                         ; $51fe: $a4
    inc l                                         ; $51ff: $2c
    db $ed                                        ; $5200: $ed
    dec e                                         ; $5201: $1d
    dec hl                                        ; $5202: $2b
    rla                                           ; $5203: $17
    sbc [hl]                                      ; $5204: $9e
    ld hl, $c30c                                  ; $5205: $21 $0c $c3
    rst $00                                       ; $5208: $c7
    rst $20                                       ; $5209: $e7
    inc a                                         ; $520a: $3c
    rst $10                                       ; $520b: $d7
    xor d                                         ; $520c: $aa
    add c                                         ; $520d: $81
    ld e, h                                       ; $520e: $5c
    ld d, [hl]                                    ; $520f: $56
    add e                                         ; $5210: $83
    or l                                          ; $5211: $b5
    ld a, [de]                                    ; $5212: $1a
    ld b, a                                       ; $5213: $47
    jr jr_024_51d9                                ; $5214: $18 $c3

    rst $00                                       ; $5216: $c7
    ld e, l                                       ; $5217: $5d
    ld h, d                                       ; $5218: $62
    dec sp                                        ; $5219: $3b
    ld l, b                                       ; $521a: $68
    ld d, l                                       ; $521b: $55
    cp c                                          ; $521c: $b9
    ld d, l                                       ; $521d: $55
    db $fd                                        ; $521e: $fd
    add hl, bc                                    ; $521f: $09
    ld h, [hl]                                    ; $5220: $66
    and a                                         ; $5221: $a7
    db $ec                                        ; $5222: $ec
    sub h                                         ; $5223: $94
    sub h                                         ; $5224: $94
    or $8b                                        ; $5225: $f6 $8b

jr_024_5227:
    inc hl                                        ; $5227: $23
    inc c                                         ; $5228: $0c
    db $dd                                        ; $5229: $dd
    adc d                                         ; $522a: $8a
    jp nz, $cbcf                                  ; $522b: $c2 $cf $cb

    rst $28                                       ; $522e: $ef
    and c                                         ; $522f: $a1
    jp nc, $b3ce                                  ; $5230: $d2 $ce $b3

    sbc l                                         ; $5233: $9d
    sub d                                         ; $5234: $92
    jp nc, Jump_024_717e                          ; $5235: $d2 $7e $71

    add h                                         ; $5238: $84
    ld bc, $b43d                                  ; $5239: $01 $3d $b4
    cp $3b                                        ; $523c: $fe $3b
    dec h                                         ; $523e: $25
    and l                                         ; $523f: $a5
    db $fd                                        ; $5240: $fd
    ld [c], a                                     ; $5241: $e2
    di                                            ; $5242: $f3
    sbc h                                         ; $5243: $9c
    sub a                                         ; $5244: $97
    rst $18                                       ; $5245: $df
    ld d, c                                       ; $5246: $51
    ldh [$92], a                                  ; $5247: $e0 $92
    sub h                                         ; $5249: $94
    ld h, c                                       ; $524a: $61
    or e                                          ; $524b: $b3
    ld e, $c9                                     ; $524c: $1e $c9

Jump_024_524e:
    cp a                                          ; $524e: $bf
    jr nz, jr_024_525d                            ; $524f: $20 $0c

    and a                                         ; $5251: $a7
    cp a                                          ; $5252: $bf
    dec de                                        ; $5253: $1b
    and c                                         ; $5254: $a1
    ld a, c                                       ; $5255: $79
    xor $78                                       ; $5256: $ee $78
    ld l, c                                       ; $5258: $69
    ld l, h                                       ; $5259: $6c
    ei                                            ; $525a: $fb
    ld [de], a                                    ; $525b: $12
    ld c, e                                       ; $525c: $4b

jr_024_525d:
    ld b, c                                       ; $525d: $41
    jr jr_024_5227                                ; $525e: $18 $c7

    ld e, l                                       ; $5260: $5d
    ld h, d                                       ; $5261: $62
    di                                            ; $5262: $f3
    ld a, [c]                                     ; $5263: $f2
    cp e                                          ; $5264: $bb
    ld [hl], h                                    ; $5265: $74
    sbc [hl]                                      ; $5266: $9e
    sub c                                         ; $5267: $91
    ld h, a                                       ; $5268: $67
    dec sp                                        ; $5269: $3b
    add e                                         ; $526a: $83
    ld l, [hl]                                    ; $526b: $6e
    sub l                                         ; $526c: $95
    ld b, d                                       ; $526d: $42
    ld [$c303], sp                                ; $526e: $08 $03 $c3
    jp $c3c3                                      ; $5271: $c3 $c3 $c3


    rst $00                                       ; $5274: $c7
    rst $20                                       ; $5275: $e7
    inc a                                         ; $5276: $3c
    rst $20                                       ; $5277: $e7
    push hl                                       ; $5278: $e5
    ld [hl], a                                    ; $5279: $77
    ld e, h                                       ; $527a: $5c
    ld c, d                                       ; $527b: $4a
    ei                                            ; $527c: $fb
    ld [hl-], a                                   ; $527d: $32
    or $b4                                        ; $527e: $f6 $b4
    ld l, [hl]                                    ; $5280: $6e
    add hl, hl                                    ; $5281: $29
    ld [hl], d                                    ; $5282: $72
    ld e, c                                       ; $5283: $59
    ld a, [bc]                                    ; $5284: $0a
    jp nz, $bcc7                                  ; $5285: $c2 $c7 $bc

    db $fd                                        ; $5288: $fd
    ld [$f2f3], a                                 ; $5289: $ea $f3 $f2
    dec sp                                        ; $528c: $3b
    and $ad                                       ; $528d: $e6 $ad
    scf                                           ; $528f: $37
    sub $60                                       ; $5290: $d6 $60
    dec l                                         ; $5292: $2d
    and h                                         ; $5293: $a4
    ld a, [c]                                     ; $5294: $f2
    ld [$c703], sp                                ; $5295: $08 $03 $c7
    ld e, l                                       ; $5298: $5d
    ld h, d                                       ; $5299: $62
    di                                            ; $529a: $f3
    ld a, [c]                                     ; $529b: $f2
    sub e                                         ; $529c: $93
    dec de                                        ; $529d: $1b
    inc d                                         ; $529e: $14
    rst $18                                       ; $529f: $df
    ld [hl], c                                    ; $52a0: $71
    or c                                          ; $52a1: $b1
    cp c                                          ; $52a2: $b9
    inc d                                         ; $52a3: $14
    db $ec                                        ; $52a4: $ec
    call nz, $106f                                ; $52a5: $c4 $6f $10
    ld b, $c7                                     ; $52a8: $06 $c7
    db $dd                                        ; $52aa: $dd
    and b                                         ; $52ab: $a0

Jump_024_52ac:
    ld hl, sp-$44                                 ; $52ac: $f8 $bc
    db $fc                                        ; $52ae: $fc

Jump_024_52af:
    ld c, [hl]                                    ; $52af: $4e
    cp d                                          ; $52b0: $ba

jr_024_52b1:
    sub $4b                                       ; $52b1: $d6 $4b
    pop bc                                        ; $52b3: $c1
    cp d                                          ; $52b4: $ba
    sub l                                         ; $52b5: $95
    rlca                                          ; $52b6: $07
    ld e, b                                       ; $52b7: $58
    rst $30                                       ; $52b8: $f7
    ei                                            ; $52b9: $fb
    push de                                       ; $52ba: $d5
    inc bc                                        ; $52bb: $03
    jp nz, Jump_000_192d                          ; $52bc: $c2 $2d $19

    xor l                                         ; $52bf: $ad
    ccf                                           ; $52c0: $3f
    cpl                                           ; $52c1: $2f
    cp a                                          ; $52c2: $bf
    xor $e9                                       ; $52c3: $ee $e9
    scf                                           ; $52c5: $37
    ld l, c                                       ; $52c6: $69
    daa                                           ; $52c7: $27
    ld e, a                                       ; $52c8: $5f
    ld c, $97                                     ; $52c9: $0e $97
    add d                                         ; $52cb: $82
    ld [hl], l                                    ; $52cc: $75
    scf                                           ; $52cd: $37
    inc e                                         ; $52ce: $1c
    add hl, sp                                    ; $52cf: $39
    add $47                                       ; $52d0: $c6 $47
    jr jr_024_5301                                ; $52d2: $18 $2d

    add hl, de                                    ; $52d4: $19
    xor l                                         ; $52d5: $ad

Call_024_52d6:
    ccf                                           ; $52d6: $3f
    cpl                                           ; $52d7: $2f
    cp a                                          ; $52d8: $bf
    xor $e9                                       ; $52d9: $ee $e9
    scf                                           ; $52db: $37
    ld l, c                                       ; $52dc: $69
    daa                                           ; $52dd: $27
    ld e, a                                       ; $52de: $5f
    ld c, $97                                     ; $52df: $0e $97
    add d                                         ; $52e1: $82
    ld [hl], l                                    ; $52e2: $75
    scf                                           ; $52e3: $37
    inc e                                         ; $52e4: $1c
    add hl, sp                                    ; $52e5: $39
    add $47                                       ; $52e6: $c6 $47
    jr jr_024_52b1                                ; $52e8: $18 $c7

    ld e, l                                       ; $52ea: $5d
    ld h, d                                       ; $52eb: $62
    di                                            ; $52ec: $f3
    ld a, [c]                                     ; $52ed: $f2
    ld l, e                                       ; $52ee: $6b
    ld c, c                                       ; $52ef: $49
    xor c                                         ; $52f0: $a9
    ld e, [hl]                                    ; $52f1: $5e
    ld e, [hl]                                    ; $52f2: $5e
    ld l, d                                       ; $52f3: $6a
    or b                                          ; $52f4: $b0
    ld d, $4f                                     ; $52f5: $16 $4f
    ld a, d                                       ; $52f7: $7a
    add h                                         ; $52f8: $84
    ld bc, $e7c7                                  ; $52f9: $01 $c7 $e7
    inc a                                         ; $52fc: $3c
    rst $20                                       ; $52fd: $e7

jr_024_52fe:
    push hl                                       ; $52fe: $e5
    ld [hl], a                                    ; $52ff: $77
    cp h                                          ; $5300: $bc

jr_024_5301:
    cp h                                          ; $5301: $bc
    ld a, [$355a]                                 ; $5302: $fa $5a $35
    ld b, [hl]                                    ; $5305: $46
    add h                                         ; $5306: $84
    ld bc, $5dc7                                  ; $5307: $01 $c7 $5d
    ld h, d                                       ; $530a: $62
    ld l, e                                       ; $530b: $6b
    ld d, l                                       ; $530c: $55
    sub c                                         ; $530d: $91
    ld h, [hl]                                    ; $530e: $66
    dec a                                         ; $530f: $3d
    cpl                                           ; $5310: $2f
    rst $00                                       ; $5311: $c7
    ld [hl], l                                    ; $5312: $75
    ld d, e                                       ; $5313: $53
    ld h, c                                       ; $5314: $61
    ld [$c703], sp                                ; $5315: $08 $03 $c7
    ld e, l                                       ; $5318: $5d
    ld h, d                                       ; $5319: $62
    ld l, e                                       ; $531a: $6b
    push de                                       ; $531b: $d5
    ld b, b                                       ; $531c: $40
    ld l, $db                                     ; $531d: $2e $db
    and l                                         ; $531f: $a5
    sbc l                                         ; $5320: $9d
    xor c                                         ; $5321: $a9
    ld h, $3a                                     ; $5322: $26 $3a
    jp nz, Jump_024_5dc7                          ; $5324: $c2 $c7 $5d

    ld h, d                                       ; $5327: $62
    dec sp                                        ; $5328: $3b
    ld e, [hl]                                    ; $5329: $5e
    ld a, [de]                                    ; $532a: $1a
    db $db                                        ; $532b: $db
    cp [hl]                                       ; $532c: $be
    call nz, $d652                                ; $532d: $c4 $52 $d6
    ld e, l                                       ; $5330: $5d
    ld bc, $14f8                                  ; $5331: $01 $f8 $14
    add [hl]                                      ; $5334: $86
    jr nc, jr_024_52fe                            ; $5335: $30 $c7

    ld e, l                                       ; $5337: $5d
    ld h, d                                       ; $5338: $62
    ld l, e                                       ; $5339: $6b
    jp nc, $e8c8                                  ; $533a: $d2 $c8 $e8

jr_024_533d:
    add hl, sp                                    ; $533d: $39
    ld hl, sp-$56                                 ; $533e: $f8 $aa
    xor b                                         ; $5340: $a8
    nop                                           ; $5341: $00
    ld [$a703], sp                                ; $5342: $08 $03 $a7
    cp a                                          ; $5345: $bf
    dec de                                        ; $5346: $1b
    and c                                         ; $5347: $a1
    ld a, c                                       ; $5348: $79
    ld sp, hl                                     ; $5349: $f9
    add c                                         ; $534a: $81
    ld h, a                                       ; $534b: $67
    ld a, h                                       ; $534c: $7c

jr_024_534d:
    ld e, d                                       ; $534d: $5a
    scf                                           ; $534e: $37
    inc hl                                        ; $534f: $23
    ldh a, [$3b]                                  ; $5350: $f0 $3b
    ld a, [hl-]                                   ; $5352: $3a
    or e                                          ; $5353: $b3
    ld a, $cf                                     ; $5354: $3e $cf
    ld a, c                                       ; $5356: $79
    ld sp, hl                                     ; $5357: $f9
    sbc l                                         ; $5358: $9d
    ld [hl], h                                    ; $5359: $74
    db $db                                        ; $535a: $db
    and d                                         ; $535b: $a2
    jp nc, $0c20                                  ; $535c: $d2 $20 $0c

jr_024_535f:
    jp $bfc7                                      ; $535f: $c3 $c7 $bf


    rst $08                                       ; $5362: $cf
    res 5, a                                      ; $5363: $cb $af
    sub e                                         ; $5365: $93
    ld a, [hl]                                    ; $5366: $7e

Jump_024_5367:
    sub e                                         ; $5367: $93
    ld h, $5f                                     ; $5368: $26 $5f
    db $dd                                        ; $536a: $dd
    adc $c3                                       ; $536b: $ce $c3
    ld l, h                                       ; $536d: $6c
    ret                                           ; $536e: $c9


    ld [hl], b                                    ; $536f: $70
    dec l                                         ; $5370: $2d
    and h                                         ; $5371: $a4
    sbc l                                         ; $5372: $9d
    ld b, a                                       ; $5373: $47
    jr jr_024_533d                                ; $5374: $18 $c7

    ld b, d                                       ; $5376: $42
    and l                                         ; $5377: $a5
    sbc l                                         ; $5378: $9d
    sbc a                                         ; $5379: $9f
    sub a                                         ; $537a: $97
    ld e, a                                       ; $537b: $5f
    rrca                                          ; $537c: $0f
    ret                                           ; $537d: $c9


    ld c, [hl]                                    ; $537e: $4e
    ld l, c                                       ; $537f: $69
    halt                                          ; $5380: $76
    ld a, d                                       ; $5381: $7a
    ld h, [hl]                                    ; $5382: $66
    adc b                                         ; $5383: $88
    jr nc, jr_024_534d                            ; $5384: $30 $c7

    ld e, l                                       ; $5386: $5d
    ld h, d                                       ; $5387: $62
    di                                            ; $5388: $f3
    ld a, [c]                                     ; $5389: $f2
    ld l, e                                       ; $538a: $6b
    cp l                                          ; $538b: $bd
    adc h                                         ; $538c: $8c
    dec a                                         ; $538d: $3d

Jump_024_538e:
    xor l                                         ; $538e: $ad
    cp e                                          ; $538f: $bb
    ld d, [hl]                                    ; $5390: $56
    ld [hl], l                                    ; $5391: $75
    dec c                                         ; $5392: $0d
    ld e, $61                                     ; $5393: $1e $61
    ld b, a                                       ; $5395: $47
    sbc e                                         ; $5396: $9b
    ld h, [hl]                                    ; $5397: $66
    ld c, l                                       ; $5398: $4d
    ld a, [de]                                    ; $5399: $1a
    ld e, c                                       ; $539a: $59

jr_024_539b:
    ld c, a                                       ; $539b: $4f
    dec h                                         ; $539c: $25
    ld [hl], $f5                                  ; $539d: $36 $f5
    sbc l                                         ; $539f: $9d
    ld a, [de]                                    ; $53a0: $1a
    db $e3                                        ; $53a1: $e3
    or l                                          ; $53a2: $b5
    ld a, [hl+]                                   ; $53a3: $2a
    or c                                          ; $53a4: $b1
    sub a                                         ; $53a5: $97
    ld a, [de]                                    ; $53a6: $1a
    jr nz, jr_024_53b5                            ; $53a7: $20 $0c

    and a                                         ; $53a9: $a7
    cp a                                          ; $53aa: $bf
    dec de                                        ; $53ab: $1b
    and c                                         ; $53ac: $a1
    ld a, c                                       ; $53ad: $79
    xor $78                                       ; $53ae: $ee $78
    ld l, c                                       ; $53b0: $69
    ld l, h                                       ; $53b1: $6c
    ei                                            ; $53b2: $fb
    ld [de], a                                    ; $53b3: $12
    ld c, e                                       ; $53b4: $4b

jr_024_53b5:
    ld b, c                                       ; $53b5: $41
    jr jr_024_535f                                ; $53b6: $18 $a7

    cp a                                          ; $53b8: $bf
    dec de                                        ; $53b9: $1b
    and c                                         ; $53ba: $a1
    ld a, c                                       ; $53bb: $79
    xor $78                                       ; $53bc: $ee $78
    ld l, c                                       ; $53be: $69
    ld l, h                                       ; $53bf: $6c
    ei                                            ; $53c0: $fb
    ld [de], a                                    ; $53c1: $12
    ld c, e                                       ; $53c2: $4b
    ld b, c                                       ; $53c3: $41
    jr jr_024_53ed                                ; $53c4: $18 $27

    ld h, l                                       ; $53c6: $65
    sub $67                                       ; $53c7: $d6 $67
    and a                                         ; $53c9: $a7
    db $ec                                        ; $53ca: $ec
    jr @+$15                                      ; $53cb: $18 $13

    or [hl]                                       ; $53cd: $b6
    db $e3                                        ; $53ce: $e3
    or e                                          ; $53cf: $b3
    sub h                                         ; $53d0: $94
    ld b, a                                       ; $53d1: $47
    jr jr_024_539b                                ; $53d2: $18 $c7

    rst $20                                       ; $53d4: $e7
    jp c, $d55a                                   ; $53d5: $da $5a $d5

    rst $20                                       ; $53d8: $e7
    add hl, sp                                    ; $53d9: $39
    cpl                                           ; $53da: $2f
    cp a                                          ; $53db: $bf
    ld e, $92                                     ; $53dc: $1e $92
    sbc l                                         ; $53de: $9d
    jp nc, $f4ec                                  ; $53df: $d2 $ec $f4

    call z, Call_024_6110                         ; $53e2: $cc $10 $61
    rst $00                                       ; $53e5: $c7
    ld e, l                                       ; $53e6: $5d
    ld h, d                                       ; $53e7: $62
    di                                            ; $53e8: $f3
    ld a, [c]                                     ; $53e9: $f2
    db $eb                                        ; $53ea: $eb
    halt                                          ; $53eb: $76
    and l                                         ; $53ec: $a5

jr_024_53ed:
    ld a, [$5375]                                 ; $53ed: $fa $75 $53
    ld h, c                                       ; $53f0: $61
    ld [$c703], sp                                ; $53f1: $08 $03 $c7
    ld e, h                                       ; $53f4: $5c
    dec c                                         ; $53f5: $0d
    sub d                                         ; $53f6: $92
    halt                                          ; $53f7: $76
    ld d, h                                       ; $53f8: $54
    adc h                                         ; $53f9: $8c
    rst $18                                       ; $53fa: $df

jr_024_53fb:
    ld h, b                                       ; $53fb: $60
    db $dd                                        ; $53fc: $dd
    call nc, Call_000_2644                        ; $53fd: $d4 $44 $26
    ld c, c                                       ; $5400: $49
    ld l, e                                       ; $5401: $6b
    add hl, hl                                    ; $5402: $29
    reti                                          ; $5403: $d9


    pop bc                                        ; $5404: $c1
    ld b, a                                       ; $5405: $47
    ld [hl], l                                    ; $5406: $75

jr_024_5407:
    jp nc, Jump_024_57cb                          ; $5407: $d2 $cb $57

    ld a, [hl+]                                   ; $540a: $2a
    dec c                                         ; $540b: $0d
    ld b, $a7                                     ; $540c: $06 $a7
    ld a, [c]                                     ; $540e: $f2
    ld [hl], c                                    ; $540f: $71
    dec l                                         ; $5410: $2d
    dec h                                         ; $5411: $25
    dec sp                                        ; $5412: $3b
    jr jr_024_5452                                ; $5413: $18 $3d

jr_024_5415:
    sub l                                         ; $5415: $95
    ret c                                         ; $5416: $d8

    ld e, d                                       ; $5417: $5a
    ld c, d                                       ; $5418: $4a
    halt                                          ; $5419: $76
    jr nc, jr_024_5463                            ; $541a: $30 $47

    ld h, a                                       ; $541c: $67
    sub $d7                                       ; $541d: $d6 $d7
    ld d, d                                       ; $541f: $52
    or d                                          ; $5420: $b2

jr_024_5421:
    add e                                         ; $5421: $83
    ld bc, $67a7                                  ; $5422: $01 $a7 $67
    ei                                            ; $5425: $fb
    rst $10                                       ; $5426: $d7
    ld d, d                                       ; $5427: $52
    or d                                          ; $5428: $b2
    add e                                         ; $5429: $83
    ld bc, $fc2d                                  ; $542a: $01 $2d $fc
    cp a                                          ; $542d: $bf
    jp Jump_024_4a5a                              ; $542e: $c3 $5a $4a


    halt                                          ; $5431: $76
    jr nc, jr_024_53fb                            ; $5432: $30 $c7

    res 4, l                                      ; $5434: $cb $a5
    jr nz, jr_024_5415                            ; $5436: $20 $dd

    ld h, c                                       ; $5438: $61
    rst $00                                       ; $5439: $c7
    sub d                                         ; $543a: $92
    adc e                                         ; $543b: $8b
    ld d, d                                       ; $543c: $52
    push af                                       ; $543d: $f5

jr_024_543e:
    jr jr_024_5407                                ; $543e: $18 $c7

    res 4, l                                      ; $5440: $cb $a5
    jr nz, jr_024_5421                            ; $5442: $20 $dd

    ld h, c                                       ; $5444: $61
    rst $00                                       ; $5445: $c7
    jr jr_024_5452                                ; $5446: $18 $0a

    ld a, $69                                     ; $5448: $3e $69
    db $fd                                        ; $544a: $fd
    ld h, c                                       ; $544b: $61
    db $dd                                        ; $544c: $dd
    inc h                                         ; $544d: $24
    ld bc, $052e                                  ; $544e: $01 $2e $05
    di                                            ; $5451: $f3

jr_024_5452:
    ld a, [c]                                     ; $5452: $f2
    dec sp                                        ; $5453: $3b
    ld c, c                                       ; $5454: $49
    db $eb                                        ; $5455: $eb
    adc a                                         ; $5456: $8f
    ld bc, $19ad                                  ; $5457: $01 $ad $19
    ldh a, [$2a]                                  ; $545a: $f0 $2a
    ld c, $3b                                     ; $545c: $0e $3b
    add $50                                       ; $545e: $c6 $50
    ldh a, [rOBP1]                                ; $5460: $f0 $49
    db $eb                                        ; $5462: $eb

jr_024_5463:
    rrca                                          ; $5463: $0f
    inc bc                                        ; $5464: $03
    xor l                                         ; $5465: $ad
    add hl, de                                    ; $5466: $19
    ldh a, [$2a]                                  ; $5467: $f0 $2a
    ld c, $3b                                     ; $5469: $0e $3b
    add $50                                       ; $546b: $c6 $50
    ldh a, [rOBP1]                                ; $546d: $f0 $49
    db $eb                                        ; $546f: $eb
    rra                                           ; $5470: $1f
    inc bc                                        ; $5471: $03
    xor l                                         ; $5472: $ad
    add hl, de                                    ; $5473: $19
    ldh a, [$2a]                                  ; $5474: $f0 $2a
    ld c, $3b                                     ; $5476: $0e $3b
    add $50                                       ; $5478: $c6 $50
    ldh a, [rOBP1]                                ; $547a: $f0 $49
    dec sp                                        ; $547c: $3b
    nop                                           ; $547d: $00
    inc bc                                        ; $547e: $03
    xor l                                         ; $547f: $ad
    add hl, de                                    ; $5480: $19
    ldh a, [$2a]                                  ; $5481: $f0 $2a
    ld c, $3b                                     ; $5483: $0e $3b
    sub [hl]                                      ; $5485: $96
    ld b, e                                       ; $5486: $43
    ld b, a                                       ; $5487: $47
    ld e, $00                                     ; $5488: $1e $00
    inc bc                                        ; $548a: $03
    ld b, a                                       ; $548b: $47
    ld d, c                                       ; $548c: $51

jr_024_548d:
    ld [hl], l                                    ; $548d: $75
    sbc a                                         ; $548e: $9f
    ld a, h                                       ; $548f: $7c
    and a                                         ; $5490: $a7
    dec de                                        ; $5491: $1b
    ld a, d                                       ; $5492: $7a
    ld e, b                                       ; $5493: $58
    dec d                                         ; $5494: $15
    dec d                                         ; $5495: $15
    ld b, b                                       ; $5496: $40
    ld [hl-], a                                   ; $5497: $32
    ld b, e                                       ; $5498: $43
    inc c                                         ; $5499: $0c
    ld b, a                                       ; $549a: $47
    ret                                           ; $549b: $c9


    push af                                       ; $549c: $f5
    ld [de], a                                    ; $549d: $12
    ld l, d                                       ; $549e: $6a
    push de                                       ; $549f: $d5
    xor h                                         ; $54a0: $ac
    adc d                                         ; $54a1: $8a
    ld a, [bc]                                    ; $54a2: $0a
    jr nz, jr_024_543e                            ; $54a3: $20 $99

    ld hl, $4706                                  ; $54a5: $21 $06 $47
    ld c, c                                       ; $54a8: $49
    sbc b                                         ; $54a9: $98
    or d                                          ; $54aa: $b2
    db $e3                                        ; $54ab: $e3
    dec [hl]                                      ; $54ac: $35
    add $97                                       ; $54ad: $c6 $97
    ld b, $03                                     ; $54af: $06 $03
    ld b, a                                       ; $54b1: $47
    add c                                         ; $54b2: $81
    ld c, e                                       ; $54b3: $4b
    ld d, d                                       ; $54b4: $52
    add [hl]                                      ; $54b5: $86
    call Call_024_45ba                            ; $54b6: $cd $ba $45
    dec b                                         ; $54b9: $05
    sub b                                         ; $54ba: $90
    call z, Call_000_0310                         ; $54bb: $cc $10 $03
    ld b, a                                       ; $54be: $47
    ccf                                           ; $54bf: $3f
    ld e, e                                       ; $54c0: $5b
    ld [hl], a                                    ; $54c1: $77
    and l                                         ; $54c2: $a5
    sbc l                                         ; $54c3: $9d
    sbc [hl]                                      ; $54c4: $9e
    add hl, de                                    ; $54c5: $19
    ld h, d                                       ; $54c6: $62
    ld b, a                                       ; $54c7: $47
    ld c, e                                       ; $54c8: $4b
    ld h, [hl]                                    ; $54c9: $66
    cp b                                          ; $54ca: $b8
    sub [hl]                                      ; $54cb: $96
    sub d                                         ; $54cc: $92
    dec e                                         ; $54cd: $1d
    inc c                                         ; $54ce: $0c
    db $dd                                        ; $54cf: $dd
    adc d                                         ; $54d0: $8a
    ld c, d                                       ; $54d1: $4a
    ld [$16eb], sp                                ; $54d2: $08 $eb $16
    dec d                                         ; $54d5: $15
    ld b, b                                       ; $54d6: $40
    ld [hl-], a                                   ; $54d7: $32
    ld b, e                                       ; $54d8: $43
    inc c                                         ; $54d9: $0c
    rst $00                                       ; $54da: $c7
    xor b                                         ; $54db: $a8
    call nc, $9477                                ; $54dc: $d4 $77 $94
    jr c, jr_024_548d                             ; $54df: $38 $ac

    ld e, e                                       ; $54e1: $5b
    ld d, h                                       ; $54e2: $54
    nop                                           ; $54e3: $00
    ret                                           ; $54e4: $c9


    inc c                                         ; $54e5: $0c
    ld sp, $5f27                                  ; $54e6: $31 $27 $5f
    sub c                                         ; $54e9: $91
    sub h                                         ; $54ea: $94
    and l                                         ; $54eb: $a5
    cp l                                          ; $54ec: $bd
    ld h, e                                       ; $54ed: $63
    push hl                                       ; $54ee: $e5
    jp nz, $0c33                                  ; $54ef: $c2 $33 $0c

    rst $00                                       ; $54f2: $c7
    and l                                         ; $54f3: $a5
    or h                                          ; $54f4: $b4
    cpl                                           ; $54f5: $2f
    ld h, e                                       ; $54f6: $63
    ld c, a                                       ; $54f7: $4f
    dec sp                                        ; $54f8: $3b
    ld l, $e5                                     ; $54f9: $2e $e5
    pop bc                                        ; $54fb: $c1
    rst $10                                       ; $54fc: $d7
    rra                                           ; $54fd: $1f
    ld b, $c7                                     ; $54fe: $06 $c7
    and l                                         ; $5500: $a5
    or h                                          ; $5501: $b4
    cpl                                           ; $5502: $2f
    ld h, e                                       ; $5503: $63
    ld c, a                                       ; $5504: $4f
    dec sp                                        ; $5505: $3b
    ld l, $e5                                     ; $5506: $2e $e5
    pop bc                                        ; $5508: $c1
    rst $10                                       ; $5509: $d7
    ccf                                           ; $550a: $3f
    ld b, $c7                                     ; $550b: $06 $c7
    and l                                         ; $550d: $a5
    or h                                          ; $550e: $b4
    cpl                                           ; $550f: $2f
    ld h, e                                       ; $5510: $63
    ld c, a                                       ; $5511: $4f
    dec sp                                        ; $5512: $3b
    ld l, $e5                                     ; $5513: $2e $e5
    pop bc                                        ; $5515: $c1
    ld [hl], a                                    ; $5516: $77
    nop                                           ; $5517: $00
    ld b, $c7                                     ; $5518: $06 $c7
    and l                                         ; $551a: $a5
    or h                                          ; $551b: $b4
    cpl                                           ; $551c: $2f
    ld h, e                                       ; $551d: $63
    ld c, a                                       ; $551e: $4f
    dec sp                                        ; $551f: $3b
    ld l, $e5                                     ; $5520: $2e $e5
    pop bc                                        ; $5522: $c1
    ld [hl], a                                    ; $5523: $77
    jr nz, jr_024_552c                            ; $5524: $20 $06

    rst $00                                       ; $5526: $c7
    and l                                         ; $5527: $a5
    or h                                          ; $5528: $b4

jr_024_5529:
    cpl                                           ; $5529: $2f
    ld h, e                                       ; $552a: $63
    ld c, a                                       ; $552b: $4f

jr_024_552c:
    dec sp                                        ; $552c: $3b
    ld l, $e5                                     ; $552d: $2e $e5
    pop bc                                        ; $552f: $c1
    ld [hl], a                                    ; $5530: $77
    db $10                                        ; $5531: $10
    ld b, $c7                                     ; $5532: $06 $c7
    and l                                         ; $5534: $a5
    or h                                          ; $5535: $b4
    cpl                                           ; $5536: $2f
    ld h, e                                       ; $5537: $63
    ld c, a                                       ; $5538: $4f
    dec sp                                        ; $5539: $3b
    ld l, $e5                                     ; $553a: $2e $e5
    pop bc                                        ; $553c: $c1
    ld [hl], a                                    ; $553d: $77
    jr nc, jr_024_5546                            ; $553e: $30 $06

    rst $00                                       ; $5540: $c7
    ld e, l                                       ; $5541: $5d
    jp nc, Jump_024_63b8                          ; $5542: $d2 $b8 $63

    inc c                                         ; $5545: $0c

jr_024_5546:
    dec b                                         ; $5546: $05
    sbc a                                         ; $5547: $9f
    or h                                          ; $5548: $b4
    cp $30                                        ; $5549: $fe $30
    rst $00                                       ; $554b: $c7
    ld e, l                                       ; $554c: $5d
    jp nc, Jump_024_63b8                          ; $554d: $d2 $b8 $63

    inc c                                         ; $5550: $0c
    dec b                                         ; $5551: $05
    sbc a                                         ; $5552: $9f
    or h                                          ; $5553: $b4
    cp $31                                        ; $5554: $fe $31
    rst $00                                       ; $5556: $c7
    ld e, l                                       ; $5557: $5d
    jp nc, Jump_024_63b8                          ; $5558: $d2 $b8 $63

    inc c                                         ; $555b: $0c
    dec b                                         ; $555c: $05
    sbc a                                         ; $555d: $9f
    or h                                          ; $555e: $b4
    inc bc                                        ; $555f: $03
    jr nc, jr_024_5529                            ; $5560: $30 $c7

    ld e, l                                       ; $5562: $5d
    jp nc, Jump_024_63b8                          ; $5563: $d2 $b8 $63

    inc c                                         ; $5566: $0c
    dec b                                         ; $5567: $05
    sbc a                                         ; $5568: $9f
    or h                                          ; $5569: $b4

Call_024_556a:
    inc bc                                        ; $556a: $03
    ld sp, $5dc7                                  ; $556b: $31 $c7 $5d
    jp nc, Jump_024_63b8                          ; $556e: $d2 $b8 $63

    inc c                                         ; $5571: $0c
    dec b                                         ; $5572: $05
    sbc a                                         ; $5573: $9f
    or h                                          ; $5574: $b4

jr_024_5575:
    add e                                         ; $5575: $83
    jr nc, @-$37                                  ; $5576: $30 $c7

    ld e, l                                       ; $5578: $5d
    jp nc, Jump_024_63b8                          ; $5579: $d2 $b8 $63

    inc c                                         ; $557c: $0c
    dec b                                         ; $557d: $05
    sbc a                                         ; $557e: $9f
    or h                                          ; $557f: $b4
    add e                                         ; $5580: $83
    ld sp, $c5c7                                  ; $5581: $31 $c7 $c5
    db $eb                                        ; $5584: $eb

Jump_024_5585:
    db $fc                                        ; $5585: $fc
    xor l                                         ; $5586: $ad
    ld [$d835], a                                 ; $5587: $ea $35 $d8
    xor c                                         ; $558a: $a9
    or [hl]                                       ; $558b: $b6
    ld a, l                                       ; $558c: $7d
    xor e                                         ; $558d: $ab
    rst $00                                       ; $558e: $c7
    rst $00                                       ; $558f: $c7
    add [hl]                                      ; $5590: $86
    dec e                                         ; $5591: $1d
    ld l, a                                       ; $5592: $6f
    sub $2d                                       ; $5593: $d6 $2d
    ld a, [hl+]                                   ; $5595: $2a

Jump_024_5596:
    nop                                           ; $5596: $00
    ld b, $c7                                     ; $5597: $06 $c7
    add [hl]                                      ; $5599: $86
    dec e                                         ; $559a: $1d
    ld l, a                                       ; $559b: $6f
    sub $2d                                       ; $559c: $d6 $2d
    ld a, [hl+]                                   ; $559e: $2a
    nop                                           ; $559f: $00
    ld b, $c7                                     ; $55a0: $06 $c7
    and l                                         ; $55a2: $a5
    or h                                          ; $55a3: $b4
    cpl                                           ; $55a4: $2f
    ld h, e                                       ; $55a5: $63
    ld c, a                                       ; $55a6: $4f
    ld l, e                                       ; $55a7: $6b
    push de                                       ; $55a8: $d5
    jr @+$7b                                      ; $55a9: $18 $79

    ld l, l                                       ; $55ab: $6d
    jr nc, jr_024_5575                            ; $55ac: $30 $c7

    srl a                                         ; $55ae: $cb $3f

jr_024_55b0:
    sub l                                         ; $55b0: $95
    inc [hl]                                      ; $55b1: $34
    ldh a, [rNR23]                                ; $55b2: $f0 $18
    rst $00                                       ; $55b4: $c7
    ld e, a                                       ; $55b5: $5f
    adc c                                         ; $55b6: $89
    ld d, b                                       ; $55b7: $50
    db $db                                        ; $55b8: $db
    pop de                                        ; $55b9: $d1
    ld [$3245], a                                 ; $55ba: $ea $45 $32
    ld b, e                                       ; $55bd: $43
    inc c                                         ; $55be: $0c
    xor l                                         ; $55bf: $ad
    add hl, de                                    ; $55c0: $19
    ldh a, [$2a]                                  ; $55c1: $f0 $2a
    ld c, $3b                                     ; $55c3: $0e $3b
    ld e, c                                       ; $55c5: $59

jr_024_55c6:
    cpl                                           ; $55c6: $2f
    db $ed                                        ; $55c7: $ed
    ld a, b                                       ; $55c8: $78
    ld c, c                                       ; $55c9: $49
    ld b, e                                       ; $55ca: $43
    inc c                                         ; $55cb: $0c
    sub $1f                                       ; $55cc: $d6 $1f
    ld b, $ad                                     ; $55ce: $06 $ad
    ld a, [de]                                    ; $55d0: $1a

jr_024_55d1:
    ret z                                         ; $55d1: $c8

    ld h, l                                       ; $55d2: $65
    dec [hl]                                      ; $55d3: $35
    ld e, b                                       ; $55d4: $58
    xor e                                         ; $55d5: $ab
    pop af                                        ; $55d6: $f1
    ld e, c                                       ; $55d7: $59

jr_024_55d8:
    ret z                                         ; $55d8: $c8

    ld e, a                                       ; $55d9: $5f
    ld l, [hl]                                    ; $55da: $6e
    ld a, [bc]                                    ; $55db: $0a

jr_024_55dc:
    ld b, $c7                                     ; $55dc: $06 $c7
    push bc                                       ; $55de: $c5
    ld c, h                                       ; $55df: $4c
    ld e, c                                       ; $55e0: $59
    ld a, a                                       ; $55e1: $7f
    ld l, e                                       ; $55e2: $6b
    push de                                       ; $55e3: $d5
    jr jr_024_565f                                ; $55e4: $18 $79

    ld l, l                                       ; $55e6: $6d

jr_024_55e7:
    jr nc, jr_024_55b0                            ; $55e7: $30 $c7

    push bc                                       ; $55e9: $c5
    ld c, h                                       ; $55ea: $4c
    ld e, c                                       ; $55eb: $59
    rst $38                                       ; $55ec: $ff
    ld l, e                                       ; $55ed: $6b
    push de                                       ; $55ee: $d5
    jr jr_024_566a                                ; $55ef: $18 $79

    ld l, l                                       ; $55f1: $6d
    jr nc, @-$37                                  ; $55f2: $30 $c7

    push bc                                       ; $55f4: $c5
    ld c, h                                       ; $55f5: $4c

jr_024_55f6:
    reti                                          ; $55f6: $d9


    ld bc, $d56b                                  ; $55f7: $01 $6b $d5
    jr jr_024_5675                                ; $55fa: $18 $79

    ld l, l                                       ; $55fc: $6d
    jr nc, jr_024_55c6                            ; $55fd: $30 $c7

    push bc                                       ; $55ff: $c5
    ld c, h                                       ; $5600: $4c
    reti                                          ; $5601: $d9


    add c                                         ; $5602: $81
    ld l, e                                       ; $5603: $6b
    push de                                       ; $5604: $d5
    jr jr_024_5680                                ; $5605: $18 $79

    ld l, l                                       ; $5607: $6d
    jr nc, jr_024_55d1                            ; $5608: $30 $c7

    push bc                                       ; $560a: $c5
    ld c, h                                       ; $560b: $4c
    reti                                          ; $560c: $d9


    ld b, c                                       ; $560d: $41
    ld l, e                                       ; $560e: $6b
    push de                                       ; $560f: $d5
    jr jr_024_568b                                ; $5610: $18 $79

    ld l, l                                       ; $5612: $6d
    jr nc, jr_024_55dc                            ; $5613: $30 $c7

    push bc                                       ; $5615: $c5
    ld c, h                                       ; $5616: $4c
    reti                                          ; $5617: $d9


    pop bc                                        ; $5618: $c1
    ld l, e                                       ; $5619: $6b
    push de                                       ; $561a: $d5
    jr jr_024_5696                                ; $561b: $18 $79

    ld l, l                                       ; $561d: $6d
    jr nc, jr_024_55e7                            ; $561e: $30 $c7

    push bc                                       ; $5620: $c5
    ld c, h                                       ; $5621: $4c
    reti                                          ; $5622: $d9


    ld hl, $d56b                                  ; $5623: $21 $6b $d5

jr_024_5626:
    jr @+$7b                                      ; $5626: $18 $79

    ld l, l                                       ; $5628: $6d
    jr nc, jr_024_55d8                            ; $5629: $30 $ad

    xor a                                         ; $562b: $af
    pop af                                        ; $562c: $f1
    and l                                         ; $562d: $a5
    ld b, $6b                                     ; $562e: $06 $6b
    add hl, hl                                    ; $5630: $29
    reti                                          ; $5631: $d9


    pop bc                                        ; $5632: $c1
    xor l                                         ; $5633: $ad
    rla                                           ; $5634: $17
    inc a                                         ; $5635: $3c
    and l                                         ; $5636: $a5
    ld e, c                                       ; $5637: $59
    jp c, Jump_024_593b                           ; $5638: $da $3b $59

    add e                                         ; $563b: $83
    ld e, e                                       ; $563c: $5b
    xor l                                         ; $563d: $ad
    adc d                                         ; $563e: $8a
    ld a, [bc]                                    ; $563f: $0a
    add b                                         ; $5640: $80
    ld bc, $09ad                                  ; $5641: $01 $ad $09

Jump_024_5644:
    sbc l                                         ; $5644: $9d
    db $eb                                        ; $5645: $eb
    ld a, [de]                                    ; $5646: $1a
    rst $10                                       ; $5647: $d7
    ld d, e                                       ; $5648: $53
    add l                                         ; $5649: $85
    ld h, c                                       ; $564a: $61
    daa                                           ; $564b: $27
    db $dd                                        ; $564c: $dd
    or [hl]                                       ; $564d: $b6
    xor b                                         ; $564e: $a8
    inc [hl]                                      ; $564f: $34
    db $eb                                        ; $5650: $eb
    rrca                                          ; $5651: $0f
    inc bc                                        ; $5652: $03
    daa                                           ; $5653: $27
    db $dd                                        ; $5654: $dd
    or [hl]                                       ; $5655: $b6
    xor b                                         ; $5656: $a8
    inc [hl]                                      ; $5657: $34
    db $eb                                        ; $5658: $eb
    rra                                           ; $5659: $1f
    inc bc                                        ; $565a: $03
    daa                                           ; $565b: $27
    ld d, a                                       ; $565c: $57
    rst $00                                       ; $565d: $c7
    daa                                           ; $565e: $27

jr_024_565f:
    ld l, c                                       ; $565f: $69
    and b                                         ; $5660: $a0
    ld sp, $60d6                                  ; $5661: $31 $d6 $60
    and a                                         ; $5664: $a7
    jp c, $adf6                                   ; $5665: $da $f6 $ad

    ld e, $03                                     ; $5668: $1e $03

jr_024_566a:
    daa                                           ; $566a: $27
    sbc e                                         ; $566b: $9b
    jr nz, jr_024_55f6                            ; $566c: $20 $88

    cp a                                          ; $566e: $bf
    ld d, $37                                     ; $566f: $16 $37
    db $ec                                        ; $5671: $ec
    ld a, $ac                                     ; $5672: $3e $ac
    adc d                                         ; $5674: $8a

jr_024_5675:
    ld a, [bc]                                    ; $5675: $0a
    add b                                         ; $5676: $80
    ld bc, $33dd                                  ; $5677: $01 $dd $33
    or h                                          ; $567a: $b4
    push hl                                       ; $567b: $e5
    sbc e                                         ; $567c: $9b
    ld a, [de]                                    ; $567d: $1a
    db $ec                                        ; $567e: $ec
    ld d, h                                       ; $567f: $54

jr_024_5680:
    db $db                                        ; $5680: $db
    cp [hl]                                       ; $5681: $be
    push de                                       ; $5682: $d5
    ld h, e                                       ; $5683: $63
    db $dd                                        ; $5684: $dd
    db $d3                                        ; $5685: $d3
    ld l, a                                       ; $5686: $6f
    ld [de], a                                    ; $5687: $12
    xor h                                         ; $5688: $ac
    adc d                                         ; $5689: $8a
    ld a, [bc]                                    ; $568a: $0a

jr_024_568b:
    jr nz, jr_024_5626                            ; $568b: $20 $99

    ld hl, $a706                                  ; $568d: $21 $06 $a7
    sbc c                                         ; $5690: $99
    dec hl                                        ; $5691: $2b
    ld a, [c]                                     ; $5692: $f2
    ld sp, $60d6                                  ; $5693: $31 $d6 $60

jr_024_5696:
    ld l, c                                       ; $5696: $69
    db $db                                        ; $5697: $db
    or a                                          ; $5698: $b7
    ld a, d                                       ; $5699: $7a
    inc c                                         ; $569a: $0c
    dec l                                         ; $569b: $2d
    and h                                         ; $569c: $a4
    sbc l                                         ; $569d: $9d
    xor a                                         ; $569e: $af
    pop bc                                        ; $569f: $c1
    jp nc, Jump_024_6fb6                          ; $56a0: $d2 $b6 $6f

    push af                                       ; $56a3: $f5
    jr jr_024_56d3                                ; $56a4: $18 $2d

    dec e                                         ; $56a6: $1d
    ld c, c                                       ; $56a7: $49
    db $e3                                        ; $56a8: $e3
    dec [hl]                                      ; $56a9: $35
    ld e, b                                       ; $56aa: $58
    jp c, $adf6                                   ; $56ab: $da $f6 $ad

jr_024_56ae:
    ld e, $03                                     ; $56ae: $1e $03
    dec l                                         ; $56b0: $2d
    sbc [hl]                                      ; $56b1: $9e
    ld a, [c]                                     ; $56b2: $f2
    sub d                                         ; $56b3: $92
    add hl, de                                    ; $56b4: $19
    ld h, d                                       ; $56b5: $62
    dec a                                         ; $56b6: $3d
    ld b, h                                       ; $56b7: $44
    add hl, bc                                    ; $56b8: $09
    db $ec                                        ; $56b9: $ec
    dec de                                        ; $56ba: $1b
    jr jr_024_570e                                ; $56bb: $18 $51

    cp a                                          ; $56bd: $bf
    ld c, c                                       ; $56be: $49
    xor e                                         ; $56bf: $ab
    and d                                         ; $56c0: $a2
    ld [bc], a                                    ; $56c1: $02
    ld h, b                                       ; $56c2: $60
    dec a                                         ; $56c3: $3d
    inc h                                         ; $56c4: $24
    dec sp                                        ; $56c5: $3b
    and l                                         ; $56c6: $a5
    reti                                          ; $56c7: $d9


    jp hl                                         ; $56c8: $e9


    sbc c                                         ; $56c9: $99
    ld hl, $c706                                  ; $56ca: $21 $06 $c7
    res 4, l                                      ; $56cd: $cb $a5
    jr nz, jr_024_56ae                            ; $56cf: $20 $dd

    ld h, c                                       ; $56d1: $61
    rst $00                                       ; $56d2: $c7

jr_024_56d3:
    jr @+$0c                                      ; $56d3: $18 $0a

    ld a, $69                                     ; $56d5: $3e $69
    db $fd                                        ; $56d7: $fd
    ld h, e                                       ; $56d8: $63
    db $dd                                        ; $56d9: $dd
    and e                                         ; $56da: $a3
    cp d                                          ; $56db: $ba
    sbc l                                         ; $56dc: $9d
    ld [de], a                                    ; $56dd: $12
    xor $b0                                       ; $56de: $ee $b0
    dec e                                         ; $56e0: $1d
    ret nc                                        ; $56e1: $d0

    rst $08                                       ; $56e2: $cf
    add c                                         ; $56e3: $81
    jr jr_024_570d                                ; $56e4: $18 $27

    ld l, c                                       ; $56e6: $69
    db $fd                                        ; $56e7: $fd
    rst $10                                       ; $56e8: $d7
    ld d, d                                       ; $56e9: $52
    ld d, d                                       ; $56ea: $52
    ld e, $03                                     ; $56eb: $1e $03
    xor l                                         ; $56ed: $ad
    add hl, de                                    ; $56ee: $19
    ldh a, [$2a]                                  ; $56ef: $f0 $2a
    ld c, $3b                                     ; $56f1: $0e $3b
    sub [hl]                                      ; $56f3: $96
    ld e, h                                       ; $56f4: $5c
    sub h                                         ; $56f5: $94
    xor d                                         ; $56f6: $aa
    ld e, a                                       ; $56f7: $5f
    xor e                                         ; $56f8: $ab
    add $88                                       ; $56f9: $c6 $88
    ld bc, $4bc7                                  ; $56fb: $01 $c7 $4b
    ld h, e                                       ; $56fe: $63
    db $db                                        ; $56ff: $db
    sub a                                         ; $5700: $97
    ld e, b                                       ; $5701: $58
    jp z, $d9da                                   ; $5702: $ca $da $d9

    ld b, b                                       ; $5705: $40
    ld l, l                                       ; $5706: $6d
    inc l                                         ; $5707: $2c
    dec h                                         ; $5708: $25
    call nz, Call_024_4bc7                        ; $5709: $c4 $c7 $4b
    ld h, e                                       ; $570c: $63

jr_024_570d:
    db $db                                        ; $570d: $db

jr_024_570e:
    sub a                                         ; $570e: $97
    ld e, b                                       ; $570f: $58
    jp z, $65ba                                   ; $5710: $ca $ba $65

    jr jr_024_573b                                ; $5713: $18 $26

    db $ed                                        ; $5715: $ed
    db $f4                                        ; $5716: $f4
    call z, Call_000_0310                         ; $5717: $cc $10 $03
    ld b, a                                       ; $571a: $47
    ld c, e                                       ; $571b: $4b
    ld h, [hl]                                    ; $571c: $66
    cp b                                          ; $571d: $b8
    ld l, [hl]                                    ; $571e: $6e
    and [hl]                                      ; $571f: $a6
    db $d3                                        ; $5720: $d3
    ld c, [hl]                                    ; $5721: $4e
    dec d                                         ; $5722: $15
    add [hl]                                      ; $5723: $86
    ld bc, $ddc7                                  ; $5724: $01 $c7 $dd
    ld e, b                                       ; $5727: $58
    sub l                                         ; $5728: $95
    ld a, [de]                                    ; $5729: $1a

jr_024_572a:
    db $ec                                        ; $572a: $ec
    ld d, h                                       ; $572b: $54
    db $db                                        ; $572c: $db
    cp [hl]                                       ; $572d: $be
    push de                                       ; $572e: $d5
    ld h, e                                       ; $572f: $63
    xor l                                         ; $5730: $ad
    add hl, de                                    ; $5731: $19
    ldh a, [$2a]                                  ; $5732: $f0 $2a
    ld c, $3b                                     ; $5734: $0e $3b
    ld e, [hl]                                    ; $5736: $5e
    ld e, [hl]                                    ; $5737: $5e
    ld a, l                                       ; $5738: $7d
    xor l                                         ; $5739: $ad
    ld a, [de]                                    ; $573a: $1a

jr_024_573b:
    inc hl                                        ; $573b: $23
    ld b, $ad                                     ; $573c: $06 $ad
    add hl, de                                    ; $573e: $19
    ldh a, [$2a]                                  ; $573f: $f0 $2a
    ld c, $6b                                     ; $5741: $0e $6b
    ld [hl], c                                    ; $5743: $71
    or l                                          ; $5744: $b5
    db $ed                                        ; $5745: $ed
    sbc l                                         ; $5746: $9d

jr_024_5747:
    sbc [hl]                                      ; $5747: $9e
    add hl, de                                    ; $5748: $19
    ld h, d                                       ; $5749: $62
    db $dd                                        ; $574a: $dd
    ld d, e                                       ; $574b: $53
    ld e, h                                       ; $574c: $5c
    db $f4                                        ; $574d: $f4
    ld a, [$cf4e]                                 ; $574e: $fa $4e $cf
    inc c                                         ; $5751: $0c
    ld sp, $c5c7                                  ; $5752: $31 $c7 $c5
    ld c, h                                       ; $5755: $4c
    ld e, c                                       ; $5756: $59
    cp a                                          ; $5757: $bf
    dec sp                                        ; $5758: $3b
    add $50                                       ; $5759: $c6 $50
    ldh a, [rOBP1]                                ; $575b: $f0 $49
    add b                                         ; $575d: $80
    ld bc, $d3dd                                  ; $575e: $01 $dd $d3

jr_024_5761:
    ld l, a                                       ; $5761: $6f
    jp nc, $c7fa                                  ; $5762: $d2 $fa $c7

    rst $00                                       ; $5765: $c7
    res 4, l                                      ; $5766: $cb $a5
    jr nz, jr_024_5747                            ; $5768: $20 $dd

    ld h, c                                       ; $576a: $61
    ld h, a                                       ; $576b: $67
    xor d                                         ; $576c: $aa
    adc c                                         ; $576d: $89
    adc [hl]                                      ; $576e: $8e
    ld bc, $8147                                  ; $576f: $01 $47 $81
    ld c, e                                       ; $5772: $4b
    ld d, d                                       ; $5773: $52
    add [hl]                                      ; $5774: $86
    call $a5ba                                    ; $5775: $cd $ba $a5
    ret z                                         ; $5778: $c8

    ld h, l                                       ; $5779: $65
    add hl, hl                                    ; $577a: $29
    jr jr_024_572a                                ; $577b: $18 $ad

    add hl, de                                    ; $577d: $19
    ldh a, [$2a]                                  ; $577e: $f0 $2a

Call_024_5780:
    ld c, $3b                                     ; $5780: $0e $3b
    ld e, c                                       ; $5782: $59
    cpl                                           ; $5783: $2f

jr_024_5784:
    db $ed                                        ; $5784: $ed
    ld a, b                                       ; $5785: $78
    ld c, c                                       ; $5786: $49
    ld b, e                                       ; $5787: $43
    inc c                                         ; $5788: $0c
    sub $3f                                       ; $5789: $d6 $3f
    ld b, $ad                                     ; $578b: $06 $ad
    add hl, de                                    ; $578d: $19
    ldh a, [$2a]                                  ; $578e: $f0 $2a
    ld c, $3b                                     ; $5790: $0e $3b
    ld e, c                                       ; $5792: $59
    cpl                                           ; $5793: $2f
    db $ed                                        ; $5794: $ed
    ld a, b                                       ; $5795: $78
    ld c, c                                       ; $5796: $49
    ld b, e                                       ; $5797: $43
    inc c                                         ; $5798: $0c
    halt                                          ; $5799: $76
    nop                                           ; $579a: $00
    ld b, $ad                                     ; $579b: $06 $ad
    add hl, de                                    ; $579d: $19
    ldh a, [$2a]                                  ; $579e: $f0 $2a
    ld c, $3b                                     ; $57a0: $0e $3b
    ld e, c                                       ; $57a2: $59
    cpl                                           ; $57a3: $2f
    db $ed                                        ; $57a4: $ed
    ld a, b                                       ; $57a5: $78
    ld c, c                                       ; $57a6: $49
    ld b, e                                       ; $57a7: $43
    inc c                                         ; $57a8: $0c
    halt                                          ; $57a9: $76
    jr nz, jr_024_57b2                            ; $57aa: $20 $06

    xor l                                         ; $57ac: $ad
    ld a, [de]                                    ; $57ad: $1a
    ret z                                         ; $57ae: $c8

    ld h, l                                       ; $57af: $65
    dec [hl]                                      ; $57b0: $35
    ld e, b                                       ; $57b1: $58

jr_024_57b2:
    xor e                                         ; $57b2: $ab
    pop af                                        ; $57b3: $f1
    dec e                                         ; $57b4: $1d
    set 0, c                                      ; $57b5: $cb $c1
    ld e, a                                       ; $57b7: $5f
    ld l, [hl]                                    ; $57b8: $6e
    ld a, [bc]                                    ; $57b9: $0a
    ld b, $dd                                     ; $57ba: $06 $dd
    ld d, h                                       ; $57bc: $54
    ret c                                         ; $57bd: $d8

    ld a, d                                       ; $57be: $7a
    adc b                                         ; $57bf: $88
    or d                                          ; $57c0: $b2
    ld c, e                                       ; $57c1: $4b
    pop bc                                        ; $57c2: $c1
    cp d                                          ; $57c3: $ba
    ld b, l                                       ; $57c4: $45
    db $d3                                        ; $57c5: $d3
    add $c7                                       ; $57c6: $c6 $c7
    res 5, e                                      ; $57c8: $cb $ab
    xor a                                         ; $57ca: $af

Jump_024_57cb:
    ld d, l                                       ; $57cb: $55
    ld h, e                                       ; $57cc: $63
    ld e, h                                       ; $57cd: $5c
    rst $18                                       ; $57ce: $df
    dec sp                                        ; $57cf: $3b
    ld [hl], $ec                                  ; $57d0: $36 $ec
    ld a, b                                       ; $57d2: $78
    add e                                         ; $57d3: $83
    ld bc, $9b27                                  ; $57d4: $01 $27 $9b
    jr nz, jr_024_5761                            ; $57d7: $20 $88

    cp a                                          ; $57d9: $bf
    sub [hl]                                      ; $57da: $96
    xor a                                         ; $57db: $af
    db $e4                                        ; $57dc: $e4
    ld a, l                                       ; $57dd: $7d
    and a                                         ; $57de: $a7
    ld h, a                                       ; $57df: $67
    add [hl]                                      ; $57e0: $86
    jr jr_024_5820                                ; $57e1: $18 $3d

    push hl                                       ; $57e3: $e5
    ld a, [$60a5]                                 ; $57e4: $fa $a5 $60
    dec l                                         ; $57e7: $2d
    and [hl]                                      ; $57e8: $a6
    db $d3                                        ; $57e9: $d3
    adc c                                         ; $57ea: $89
    rst $30                                       ; $57eb: $f7
    ld bc, $4703                                  ; $57ec: $01 $03 $47
    ld h, a                                       ; $57ef: $67
    inc bc                                        ; $57f0: $03
    or l                                          ; $57f1: $b5
    dec e                                         ; $57f2: $1d
    xor l                                         ; $57f3: $ad
    ld e, [hl]                                    ; $57f4: $5e
    inc h                                         ; $57f5: $24
    inc sp                                        ; $57f6: $33
    call nz, $9b27                                ; $57f7: $c4 $27 $9b
    jr nz, jr_024_5784                            ; $57fa: $20 $88

    cp a                                          ; $57fc: $bf
    sub e                                         ; $57fd: $93
    dec c                                         ; $57fe: $0d
    call c, $dd6a                                 ; $57ff: $dc $6a $dd
    and d                                         ; $5802: $a2
    ld [bc], a                                    ; $5803: $02
    ld h, b                                       ; $5804: $60
    daa                                           ; $5805: $27
    sbc e                                         ; $5806: $9b
    jr nz, @-$76                                  ; $5807: $20 $88

    cp a                                          ; $5809: $bf
    and e                                         ; $580a: $a3
    call nz, Call_000_2dd7                        ; $580b: $c4 $d7 $2d
    ld a, [hl+]                                   ; $580e: $2a
    nop                                           ; $580f: $00
    ld b, $dd                                     ; $5810: $06 $dd
    ld d, h                                       ; $5812: $54
    ret c                                         ; $5813: $d8

    adc $54                                       ; $5814: $ce $54
    inc de                                        ; $5816: $13
    dec e                                         ; $5817: $1d
    inc bc                                        ; $5818: $03
    rlca                                          ; $5819: $07
    ld a, e                                       ; $581a: $7b
    reti                                          ; $581b: $d9


    ld [hl], c                                    ; $581c: $71
    ld sp, $d653                                  ; $581d: $31 $53 $d6

jr_024_5820:
    ld a, [c]                                     ; $5820: $f2
    sub l                                         ; $5821: $95
    cp h                                          ; $5822: $bc
    xor a                                         ; $5823: $af
    ld d, l                                       ; $5824: $55
    ld h, e                                       ; $5825: $63
    db $e4                                        ; $5826: $e4
    or l                                          ; $5827: $b5
    pop bc                                        ; $5828: $c1
    ld b, a                                       ; $5829: $47
    ld e, a                                       ; $582a: $5f
    ld [hl+], a                                   ; $582b: $22
    xor b                                         ; $582c: $a8
    db $ed                                        ; $582d: $ed
    ld d, h                                       ; $582e: $54
    db $db                                        ; $582f: $db
    cp [hl]                                       ; $5830: $be
    push de                                       ; $5831: $d5
    ld h, e                                       ; $5832: $63
    rst $00                                       ; $5833: $c7
    add [hl]                                      ; $5834: $86
    dec e                                         ; $5835: $1d
    ld l, a                                       ; $5836: $6f
    sub $2d                                       ; $5837: $d6 $2d
    ld a, [hl+]                                   ; $5839: $2a
    nop                                           ; $583a: $00
    ld b, $c7                                     ; $583b: $06 $c7
    push bc                                       ; $583d: $c5
    and $52                                       ; $583e: $e6 $52
    or b                                          ; $5840: $b0
    inc de                                        ; $5841: $13
    cp a                                          ; $5842: $bf
    reti                                          ; $5843: $d9


    ret                                           ; $5844: $c9


    jp c, $c7c1                                   ; $5845: $da $c1 $c7

    res 5, e                                      ; $5848: $cb $ab
    xor a                                         ; $584a: $af
    ld d, l                                       ; $584b: $55
    ld h, e                                       ; $584c: $63
    ld e, h                                       ; $584d: $5c
    rst $18                                       ; $584e: $df
    dec sp                                        ; $584f: $3b
    sub [hl]                                      ; $5850: $96
    ret c                                         ; $5851: $d8

    adc [hl]                                      ; $5852: $8e
    rst $10                                       ; $5853: $d7
    ldh a, [$31]                                  ; $5854: $f0 $31
    dec l                                         ; $5856: $2d
    ld l, c                                       ; $5857: $69
    adc b                                         ; $5858: $88
    push af                                       ; $5859: $f5
    ld [hl], e                                    ; $585a: $73
    or d                                          ; $585b: $b2
    add c                                         ; $585c: $81
    ld e, e                                       ; $585d: $5b
    dec e                                         ; $585e: $1d
    cp [hl]                                       ; $585f: $be
    inc hl                                        ; $5860: $23
    ei                                            ; $5861: $fb
    dec de                                        ; $5862: $1b
    ld b, $bd                                     ; $5863: $06 $bd
    jp nc, $e54c                                  ; $5865: $d2 $4c $e5

    ld [hl], a                                    ; $5868: $77
    ld l, c                                       ; $5869: $69
    rst $00                                       ; $586a: $c7
    ld e, h                                       ; $586b: $5c
    dec c                                         ; $586c: $0d
    sub d                                         ; $586d: $92
    halt                                          ; $586e: $76
    ld d, h                                       ; $586f: $54
    adc h                                         ; $5870: $8c
    rst $18                                       ; $5871: $df
    jr nz, jr_024_5880                            ; $5872: $20 $0c

    cp l                                          ; $5874: $bd
    jp nc, $e54c                                  ; $5875: $d2 $4c $e5

    ld [hl], a                                    ; $5878: $77
    ld l, c                                       ; $5879: $69
    db $dd                                        ; $587a: $dd
    db $d3                                        ; $587b: $d3
    dec [hl]                                      ; $587c: $35
    ld hl, sp+$1a                                 ; $587d: $f8 $1a
    xor h                                         ; $587f: $ac

jr_024_5880:
    sbc e                                         ; $5880: $9b
    sbc d                                         ; $5881: $9a
    ret z                                         ; $5882: $c8

    inc h                                         ; $5883: $24

jr_024_5884:
    ld l, c                                       ; $5884: $69
    dec l                                         ; $5885: $2d
    dec h                                         ; $5886: $25
    dec sp                                        ; $5887: $3b
    ld [$bd03], sp                                ; $5888: $08 $03 $bd
    jp nc, $e54c                                  ; $588b: $d2 $4c $e5

    ld [hl], a                                    ; $588e: $77
    ld l, c                                       ; $588f: $69
    ld e, [hl]                                    ; $5890: $5e
    ld a, [hl]                                    ; $5891: $7e
    ld b, a                                       ; $5892: $47
    ld [hl], l                                    ; $5893: $75
    jp nc, Jump_024_57cb                          ; $5894: $d2 $cb $57

    ld a, [hl+]                                   ; $5897: $2a
    dec c                                         ; $5898: $0d
    jp nz, $d2bd                                  ; $5899: $c2 $bd $d2

    ld c, h                                       ; $589c: $4c
    push hl                                       ; $589d: $e5

jr_024_589e:
    ld [hl], a                                    ; $589e: $77
    ld l, c                                       ; $589f: $69
    rst $00                                       ; $58a0: $c7
    ld a, [hl]                                    ; $58a1: $7e
    inc de                                        ; $58a2: $13
    or e                                          ; $58a3: $b3
    inc bc                                        ; $58a4: $03
    dec sp                                        ; $58a5: $3b
    sub l                                         ; $58a6: $95
    adc a                                         ; $58a7: $8f
    dec sp                                        ; $58a8: $3b
    ld [hl], $ec                                  ; $58a9: $36 $ec
    and h                                         ; $58ab: $a4
    ld e, h                                       ; $58ac: $5c
    inc de                                        ; $58ad: $13
    ld [hl+], a                                   ; $58ae: $22
    inc c                                         ; $58af: $0c
    cp l                                          ; $58b0: $bd
    jp nc, $e54c                                  ; $58b1: $d2 $4c $e5

    ld [hl], a                                    ; $58b4: $77
    ld l, c                                       ; $58b5: $69
    and a                                         ; $58b6: $a7
    add $78                                       ; $58b7: $c6 $78
    xor l                                         ; $58b9: $ad
    ld c, d                                       ; $58ba: $4a
    db $ec                                        ; $58bb: $ec
    and l                                         ; $58bc: $a5
    ld b, $eb                                     ; $58bd: $06 $eb
    xor c                                         ; $58bf: $a9
    call nz, Call_024_52d6                        ; $58c0: $c4 $d6 $52
    or d                                          ; $58c3: $b2
    add e                                         ; $58c4: $83
    jr nc, jr_024_5884                            ; $58c5: $30 $bd

    jp nc, $e54c                                  ; $58c7: $d2 $4c $e5

    ld [hl], a                                    ; $58ca: $77
    ld l, c                                       ; $58cb: $69
    rst $00                                       ; $58cc: $c7
    push bc                                       ; $58cd: $c5
    inc [hl]                                      ; $58ce: $34
    ld [hl], d                                    ; $58cf: $72
    and c                                         ; $58d0: $a1
    ld c, h                                       ; $58d1: $4c
    adc c                                         ; $58d2: $89
    db $ed                                        ; $58d3: $ed
    add sp, -$68                                  ; $58d4: $e8 $98
    xor $b0                                       ; $58d6: $ee $b0
    and e                                         ; $58d8: $a3
    inc sp                                        ; $58d9: $33
    db $eb                                        ; $58da: $eb

jr_024_58db:
    ld l, e                                       ; $58db: $6b
    add hl, hl                                    ; $58dc: $29
    reti                                          ; $58dd: $d9


    ld b, c                                       ; $58de: $41
    jr jr_024_589e                                ; $58df: $18 $bd

    jp nc, $e54c                                  ; $58e1: $d2 $4c $e5

    ld [hl], a                                    ; $58e4: $77
    ld l, c                                       ; $58e5: $69
    daa                                           ; $58e6: $27
    dec hl                                        ; $58e7: $2b
    db $d3                                        ; $58e8: $d3
    ld [hl], b                                    ; $58e9: $70
    daa                                           ; $58ea: $27
    ld l, e                                       ; $58eb: $6b
    xor h                                         ; $58ec: $ac
    ld e, a                                       ; $58ed: $5f
    xor d                                         ; $58ee: $aa
    pop bc                                        ; $58ef: $c1
    ld c, [hl]                                    ; $58f0: $4e
    rst $08                                       ; $58f1: $cf
    or $c3                                        ; $58f2: $f6 $c3
    db $ec                                        ; $58f4: $ec
    sub h                                         ; $58f5: $94
    dec e                                         ; $58f6: $1d
    dec d                                         ; $58f7: $15
    db $e3                                        ; $58f8: $e3
    ld c, [hl]                                    ; $58f9: $4e
    xor l                                         ; $58fa: $ad
    ld a, [hl+]                                   ; $58fb: $2a
    add l                                         ; $58fc: $85
    sbc e                                         ; $58fd: $9b
    inc b                                         ; $58fe: $04
    ld [$bd03], sp                                ; $58ff: $08 $03 $bd
    jp nc, $e54c                                  ; $5902: $d2 $4c $e5

jr_024_5905:
    ld [hl], a                                    ; $5905: $77
    ld l, c                                       ; $5906: $69
    dec l                                         ; $5907: $2d
    ld h, $50                                     ; $5908: $26 $50
    jp hl                                         ; $590a: $e9


    ld b, h                                       ; $590b: $44
    inc de                                        ; $590c: $13
    sub $60                                       ; $590d: $d6 $60
    daa                                           ; $590f: $27
    ld l, e                                       ; $5910: $6b
    ld [hl], b                                    ; $5911: $70
    dec hl                                        ; $5912: $2b
    adc l                                         ; $5913: $8d
    ld l, e                                       ; $5914: $6b
    pop hl                                        ; $5915: $e1
    rst $38                                       ; $5916: $ff
    dec e                                         ; $5917: $1d
    sub $52                                       ; $5918: $d6 $52
    or d                                          ; $591a: $b2
    add e                                         ; $591b: $83
    jr nc, jr_024_58db                            ; $591c: $30 $bd

    jp nc, $e54c                                  ; $591e: $d2 $4c $e5

    ld [hl], a                                    ; $5921: $77
    ld l, c                                       ; $5922: $69
    rst $00                                       ; $5923: $c7
    res 4, l                                      ; $5924: $cb $a5
    jr nz, jr_024_5905                            ; $5926: $20 $dd

    add c                                         ; $5928: $81
    dec sp                                        ; $5929: $3b
    cpl                                           ; $592a: $2f
    cp a                                          ; $592b: $bf
    sbc [hl]                                      ; $592c: $9e
    sub a                                         ; $592d: $97
    and e                                         ; $592e: $a3
    ld a, [bc]                                    ; $592f: $0a
    db $db                                        ; $5930: $db
    pop de                                        ; $5931: $d1
    ld c, d                                       ; $5932: $4a
    ld [hl], l                                    ; $5933: $75
    add h                                         ; $5934: $84
    ld bc, $d2bd                                  ; $5935: $01 $bd $d2

jr_024_5938:
    ld c, h                                       ; $5938: $4c
    push hl                                       ; $5939: $e5
    ld [hl], a                                    ; $593a: $77

Jump_024_593b:
    ld l, c                                       ; $593b: $69
    ld a, [hl-]                                   ; $593c: $3a
    ld h, [hl]                                    ; $593d: $66
    jr z, jr_024_5938                             ; $593e: $28 $f8

    and h                                         ; $5940: $a4
    or l                                          ; $5941: $b5
    sbc a                                         ; $5942: $9f
    ld e, [hl]                                    ; $5943: $5e
    cp l                                          ; $5944: $bd
    db $ec                                        ; $5945: $ec
    ld a, b                                       ; $5946: $78
    cp c                                          ; $5947: $b9
    inc d                                         ; $5948: $14
    and h                                         ; $5949: $a4
    dec sp                                        ; $594a: $3b
    jr nz, jr_024_5959                            ; $594b: $20 $0c

    cp l                                          ; $594d: $bd

Call_024_594e:
    jp nc, $e54c                                  ; $594e: $d2 $4c $e5

    ld d, a                                       ; $5951: $57
    ld c, c                                       ; $5952: $49
    ld [bc], a                                    ; $5953: $02
    ld e, h                                       ; $5954: $5c
    ld a, [bc]                                    ; $5955: $0a

jr_024_5956:
    and $e5                                       ; $5956: $e6 $e5
    ld [hl], a                                    ; $5958: $77

jr_024_5959:
    sub d                                         ; $5959: $92
    sub $1f                                       ; $595a: $d6 $1f

jr_024_595c:
    ld h, c                                       ; $595c: $61
    cp l                                          ; $595d: $bd
    jp nc, $e54c                                  ; $595e: $d2 $4c $e5

    ld [hl], a                                    ; $5961: $77
    ld l, c                                       ; $5962: $69
    ld a, [hl-]                                   ; $5963: $3a
    ld h, [hl]                                    ; $5964: $66
    jr z, @-$06                                   ; $5965: $28 $f8

    inc h                                         ; $5967: $24
    add h                                         ; $5968: $84
    ld bc, $d2bd                                  ; $5969: $01 $bd $d2

jr_024_596c:
    ld c, h                                       ; $596c: $4c
    push hl                                       ; $596d: $e5
    ld [hl], a                                    ; $596e: $77
    ld l, c                                       ; $596f: $69
    ld a, [hl-]                                   ; $5970: $3a
    ld h, [hl]                                    ; $5971: $66
    jr z, jr_024_596c                             ; $5972: $28 $f8

Jump_024_5974:
    inc h                                         ; $5974: $24
    add h                                         ; $5975: $84
    ld bc, $d2bd                                  ; $5976: $01 $bd $d2

jr_024_5979:
    ld c, h                                       ; $5979: $4c
    push hl                                       ; $597a: $e5
    ld [hl], a                                    ; $597b: $77
    ld l, c                                       ; $597c: $69
    ld a, [hl-]                                   ; $597d: $3a
    ld h, [hl]                                    ; $597e: $66
    jr z, jr_024_5979                             ; $597f: $28 $f8

    inc h                                         ; $5981: $24
    add h                                         ; $5982: $84
    ld bc, $d2bd                                  ; $5983: $01 $bd $d2
    ld c, h                                       ; $5986: $4c
    push hl                                       ; $5987: $e5
    sub a                                         ; $5988: $97
    inc [hl]                                      ; $5989: $34
    cpl                                           ; $598a: $2f
    cp a                                          ; $598b: $bf
    sub $0c                                       ; $598c: $d6 $0c
    ld a, b                                       ; $598e: $78
    dec d                                         ; $598f: $15
    add a                                         ; $5990: $87
    dec e                                         ; $5991: $1d
    res 4, c                                      ; $5992: $cb $a1
    inc hl                                        ; $5994: $23
    rrca                                          ; $5995: $0f
    add b                                         ; $5996: $80
    jr nc, jr_024_5956                            ; $5997: $30 $bd

    jp nc, $e54c                                  ; $5999: $d2 $4c $e5

    ld [hl], a                                    ; $599c: $77
    ld l, c                                       ; $599d: $69
    ld e, [hl]                                    ; $599e: $5e
    ld a, [hl]                                    ; $599f: $7e
    ld b, a                                       ; $59a0: $47
    ld d, c                                       ; $59a1: $51
    ld [hl], l                                    ; $59a2: $75
    sbc a                                         ; $59a3: $9f
    ld a, h                                       ; $59a4: $7c
    and a                                         ; $59a5: $a7
    dec de                                        ; $59a6: $1b
    ld a, d                                       ; $59a7: $7a
    ld e, b                                       ; $59a8: $58
    dec d                                         ; $59a9: $15
    dec d                                         ; $59aa: $15
    ld b, b                                       ; $59ab: $40
    ld [hl-], a                                   ; $59ac: $32
    ld b, e                                       ; $59ad: $43
    add h                                         ; $59ae: $84
    ld bc, $d2bd                                  ; $59af: $01 $bd $d2
    ld c, h                                       ; $59b2: $4c
    push hl                                       ; $59b3: $e5
    ld [hl], a                                    ; $59b4: $77
    ld l, c                                       ; $59b5: $69
    ld e, [hl]                                    ; $59b6: $5e
    ld a, [hl]                                    ; $59b7: $7e
    ld b, a                                       ; $59b8: $47
    ret                                           ; $59b9: $c9


    push af                                       ; $59ba: $f5

jr_024_59bb:
    ld [de], a                                    ; $59bb: $12
    ld l, d                                       ; $59bc: $6a
    push de                                       ; $59bd: $d5
    xor h                                         ; $59be: $ac
    adc d                                         ; $59bf: $8a
    ld a, [bc]                                    ; $59c0: $0a
    jr nz, jr_024_595c                            ; $59c1: $20 $99

    ld hl, $bdc2                                  ; $59c3: $21 $c2 $bd
    jp nc, $e54c                                  ; $59c6: $d2 $4c $e5

    ld [hl], a                                    ; $59c9: $77
    ld l, c                                       ; $59ca: $69
    ld e, [hl]                                    ; $59cb: $5e
    ld a, [hl]                                    ; $59cc: $7e

jr_024_59cd:
    ld b, a                                       ; $59cd: $47
    ld c, c                                       ; $59ce: $49
    sbc b                                         ; $59cf: $98
    or d                                          ; $59d0: $b2
    db $e3                                        ; $59d1: $e3
    dec [hl]                                      ; $59d2: $35
    add $97                                       ; $59d3: $c6 $97
    ld b, $61                                     ; $59d5: $06 $61
    cp l                                          ; $59d7: $bd
    jp nc, $e54c                                  ; $59d8: $d2 $4c $e5

    ld [hl], a                                    ; $59db: $77

jr_024_59dc:
    ld l, c                                       ; $59dc: $69
    ld e, [hl]                                    ; $59dd: $5e
    ld a, [hl]                                    ; $59de: $7e

jr_024_59df:
    ld b, a                                       ; $59df: $47
    add c                                         ; $59e0: $81
    ld c, e                                       ; $59e1: $4b
    ld d, d                                       ; $59e2: $52
    add [hl]                                      ; $59e3: $86
    call $a8aa                                    ; $59e4: $cd $aa $a8
    nop                                           ; $59e7: $00
    sub d                                         ; $59e8: $92
    add hl, de                                    ; $59e9: $19
    ld [hl+], a                                   ; $59ea: $22
    inc c                                         ; $59eb: $0c
    cp l                                          ; $59ec: $bd
    jp nc, $e54c                                  ; $59ed: $d2 $4c $e5

    ld [hl], a                                    ; $59f0: $77
    ld l, c                                       ; $59f1: $69
    ld e, [hl]                                    ; $59f2: $5e
    ld a, [hl]                                    ; $59f3: $7e
    ld b, a                                       ; $59f4: $47
    ccf                                           ; $59f5: $3f
    ld e, e                                       ; $59f6: $5b
    ld [hl], a                                    ; $59f7: $77
    and l                                         ; $59f8: $a5
    ld c, c                                       ; $59f9: $49
    ld h, [hl]                                    ; $59fa: $66
    adc b                                         ; $59fb: $88
    jr nc, jr_024_59bb                            ; $59fc: $30 $bd

    jp nc, $e54c                                  ; $59fe: $d2 $4c $e5

    ld [hl], a                                    ; $5a01: $77
    ld l, c                                       ; $5a02: $69
    ld e, [hl]                                    ; $5a03: $5e
    ld a, [hl]                                    ; $5a04: $7e
    ld b, a                                       ; $5a05: $47
    ld c, e                                       ; $5a06: $4b
    ld h, [hl]                                    ; $5a07: $66
    cp b                                          ; $5a08: $b8
    sub [hl]                                      ; $5a09: $96
    sub d                                         ; $5a0a: $92
    dec e                                         ; $5a0b: $1d
    add h                                         ; $5a0c: $84
    ld bc, $d2bd                                  ; $5a0d: $01 $bd $d2
    ld c, h                                       ; $5a10: $4c
    push hl                                       ; $5a11: $e5
    ld [hl], a                                    ; $5a12: $77
    ld l, c                                       ; $5a13: $69
    ld e, [hl]                                    ; $5a14: $5e
    ld a, [hl]                                    ; $5a15: $7e
    db $dd                                        ; $5a16: $dd
    adc d                                         ; $5a17: $8a
    ld c, d                                       ; $5a18: $4a
    ld [$a2ab], sp                                ; $5a19: $08 $ab $a2
    ld [bc], a                                    ; $5a1c: $02
    ld c, b                                       ; $5a1d: $48
    ld h, [hl]                                    ; $5a1e: $66
    adc b                                         ; $5a1f: $88
    jr nc, jr_024_59df                            ; $5a20: $30 $bd

    jp nc, $e54c                                  ; $5a22: $d2 $4c $e5

    ld [hl], a                                    ; $5a25: $77
    ld l, c                                       ; $5a26: $69
    ld e, [hl]                                    ; $5a27: $5e
    ld a, [hl]                                    ; $5a28: $7e
    rst $00                                       ; $5a29: $c7
    xor b                                         ; $5a2a: $a8
    call nc, $9477                                ; $5a2b: $d4 $77 $94
    jr c, jr_024_59dc                             ; $5a2e: $38 $ac

    adc d                                         ; $5a30: $8a
    ld a, [bc]                                    ; $5a31: $0a
    jr nz, jr_024_59cd                            ; $5a32: $20 $99

    ld hl, $bdc2                                  ; $5a34: $21 $c2 $bd
    jp nc, $a8ac                                  ; $5a37: $d2 $ac $a8

    push af                                       ; $5a3a: $f5
    ld h, a                                       ; $5a3b: $67
    and a                                         ; $5a3c: $a7
    ld hl, $2f36                                  ; $5a3d: $21 $36 $2f
    cp a                                          ; $5a40: $bf
    sub e                                         ; $5a41: $93
    xor a                                         ; $5a42: $af
    ld c, b                                       ; $5a43: $48
    jp z, $ded2                                   ; $5a44: $ca $d2 $de

    or c                                          ; $5a47: $b1
    ld [hl], d                                    ; $5a48: $72
    pop hl                                        ; $5a49: $e1

jr_024_5a4a:
    add hl, de                                    ; $5a4a: $19
    jp nz, $d2bd                                  ; $5a4b: $c2 $bd $d2

    ld c, h                                       ; $5a4e: $4c
    push hl                                       ; $5a4f: $e5
    ld [hl], a                                    ; $5a50: $77
    ld l, c                                       ; $5a51: $69
    ld e, [hl]                                    ; $5a52: $5e
    ld a, [hl]                                    ; $5a53: $7e
    db $fd                                        ; $5a54: $fd
    add c                                         ; $5a55: $81
    rrca                                          ; $5a56: $0f
    cp [hl]                                       ; $5a57: $be
    ld a, [c]                                     ; $5a58: $f2
    sbc e                                         ; $5a59: $9b
    or h                                          ; $5a5a: $b4
    or h                                          ; $5a5b: $b4
    rst $20                                       ; $5a5c: $e7
    push hl                                       ; $5a5d: $e5
    ld [hl], a                                    ; $5a5e: $77
    ld e, h                                       ; $5a5f: $5c
    ld c, d                                       ; $5a60: $4a
    ei                                            ; $5a61: $fb
    ld [hl-], a                                   ; $5a62: $32
    or $b4                                        ; $5a63: $f6 $b4
    db $e3                                        ; $5a65: $e3
    ld d, d                                       ; $5a66: $52
    ld e, $1c                                     ; $5a67: $1e $1c
    ld h, c                                       ; $5a69: $61
    cp l                                          ; $5a6a: $bd
    jp nc, $e54c                                  ; $5a6b: $d2 $4c $e5

    ld [hl], a                                    ; $5a6e: $77
    ld l, c                                       ; $5a6f: $69
    ld e, [hl]                                    ; $5a70: $5e
    ld a, [hl]                                    ; $5a71: $7e
    db $fd                                        ; $5a72: $fd
    inc de                                        ; $5a73: $13
    dec de                                        ; $5a74: $1b
    ld a, h                                       ; $5a75: $7c
    push hl                                       ; $5a76: $e5
    scf                                           ; $5a77: $37
    ld l, c                                       ; $5a78: $69
    ld l, c                                       ; $5a79: $69
    rst $08                                       ; $5a7a: $cf
    set 5, a                                      ; $5a7b: $cb $ef
    cp b                                          ; $5a7d: $b8
    sub h                                         ; $5a7e: $94
    or $65                                        ; $5a7f: $f6 $65
    db $ec                                        ; $5a81: $ec
    ld l, c                                       ; $5a82: $69
    rst $00                                       ; $5a83: $c7
    and l                                         ; $5a84: $a5
    inc a                                         ; $5a85: $3c

jr_024_5a86:
    jr c, jr_024_5a4a                             ; $5a86: $38 $c2

    cp l                                          ; $5a88: $bd
    jp nc, $e54c                                  ; $5a89: $d2 $4c $e5

    ld [hl], a                                    ; $5a8c: $77
    ld l, c                                       ; $5a8d: $69
    ld e, [hl]                                    ; $5a8e: $5e
    ld a, [hl]                                    ; $5a8f: $7e
    rlca                                          ; $5a90: $07
    ld [$7c1b], sp                                ; $5a91: $08 $1b $7c
    push hl                                       ; $5a94: $e5
    scf                                           ; $5a95: $37

Jump_024_5a96:
    ld l, c                                       ; $5a96: $69
    ld l, c                                       ; $5a97: $69
    rst $08                                       ; $5a98: $cf
    set 5, a                                      ; $5a99: $cb $ef
    cp b                                          ; $5a9b: $b8
    sub h                                         ; $5a9c: $94
    or $65                                        ; $5a9d: $f6 $65
    db $ec                                        ; $5a9f: $ec
    ld l, c                                       ; $5aa0: $69
    rst $00                                       ; $5aa1: $c7
    and l                                         ; $5aa2: $a5
    inc a                                         ; $5aa3: $3c

jr_024_5aa4:
    jr c, @-$3c                                   ; $5aa4: $38 $c2

    cp l                                          ; $5aa6: $bd
    jp nc, $e54c                                  ; $5aa7: $d2 $4c $e5

    ld [hl], a                                    ; $5aaa: $77
    ld l, c                                       ; $5aab: $69
    ld e, [hl]                                    ; $5aac: $5e
    ld a, [hl]                                    ; $5aad: $7e
    rlca                                          ; $5aae: $07
    ld a, d                                       ; $5aaf: $7a
    add hl, de                                    ; $5ab0: $19
    ld a, h                                       ; $5ab1: $7c
    push hl                                       ; $5ab2: $e5
    scf                                           ; $5ab3: $37
    ld l, c                                       ; $5ab4: $69
    ld l, c                                       ; $5ab5: $69
    rst $08                                       ; $5ab6: $cf
    set 5, a                                      ; $5ab7: $cb $ef
    cp b                                          ; $5ab9: $b8
    sub h                                         ; $5aba: $94
    or $65                                        ; $5abb: $f6 $65
    db $ec                                        ; $5abd: $ec
    ld l, c                                       ; $5abe: $69
    rst $00                                       ; $5abf: $c7
    and l                                         ; $5ac0: $a5
    inc a                                         ; $5ac1: $3c

jr_024_5ac2:
    jr c, jr_024_5a86                             ; $5ac2: $38 $c2

    cp l                                          ; $5ac4: $bd
    jp nc, $e54c                                  ; $5ac5: $d2 $4c $e5

    ld [hl], a                                    ; $5ac8: $77
    ld l, c                                       ; $5ac9: $69
    ld e, [hl]                                    ; $5aca: $5e
    ld a, [hl]                                    ; $5acb: $7e
    rlca                                          ; $5acc: $07
    ld a, c                                       ; $5acd: $79
    add hl, de                                    ; $5ace: $19
    ld a, h                                       ; $5acf: $7c
    push hl                                       ; $5ad0: $e5

Call_024_5ad1:
    scf                                           ; $5ad1: $37
    ld l, c                                       ; $5ad2: $69
    ld l, c                                       ; $5ad3: $69
    rst $08                                       ; $5ad4: $cf
    set 5, a                                      ; $5ad5: $cb $ef
    cp b                                          ; $5ad7: $b8
    sub h                                         ; $5ad8: $94
    or $65                                        ; $5ad9: $f6 $65
    db $ec                                        ; $5adb: $ec
    ld l, c                                       ; $5adc: $69
    rst $00                                       ; $5add: $c7
    and l                                         ; $5ade: $a5
    inc a                                         ; $5adf: $3c
    jr c, jr_024_5aa4                             ; $5ae0: $38 $c2

    cp l                                          ; $5ae2: $bd
    jp nc, $e54c                                  ; $5ae3: $d2 $4c $e5

    ld [hl], a                                    ; $5ae6: $77
    ld l, c                                       ; $5ae7: $69
    ld e, [hl]                                    ; $5ae8: $5e
    ld a, [hl]                                    ; $5ae9: $7e
    rlca                                          ; $5aea: $07
    ld a, e                                       ; $5aeb: $7b
    add hl, de                                    ; $5aec: $19
    ld a, h                                       ; $5aed: $7c
    push hl                                       ; $5aee: $e5
    scf                                           ; $5aef: $37
    ld l, c                                       ; $5af0: $69
    ld l, c                                       ; $5af1: $69
    rst $08                                       ; $5af2: $cf
    set 5, a                                      ; $5af3: $cb $ef
    cp b                                          ; $5af5: $b8
    sub h                                         ; $5af6: $94
    or $65                                        ; $5af7: $f6 $65
    db $ec                                        ; $5af9: $ec
    ld l, c                                       ; $5afa: $69
    rst $00                                       ; $5afb: $c7
    and l                                         ; $5afc: $a5
    inc a                                         ; $5afd: $3c
    jr c, jr_024_5ac2                             ; $5afe: $38 $c2

    cp l                                          ; $5b00: $bd
    jp nc, $e54c                                  ; $5b01: $d2 $4c $e5

    ld [hl], a                                    ; $5b04: $77
    ld l, c                                       ; $5b05: $69
    ld a, [hl-]                                   ; $5b06: $3a
    ld h, [hl]                                    ; $5b07: $66
    jr z, @-$06                                   ; $5b08: $28 $f8

    inc h                                         ; $5b0a: $24
    add h                                         ; $5b0b: $84
    ld bc, $d2bd                                  ; $5b0c: $01 $bd $d2

jr_024_5b0f:
    ld c, h                                       ; $5b0f: $4c
    push hl                                       ; $5b10: $e5
    ld [hl], a                                    ; $5b11: $77
    ld l, c                                       ; $5b12: $69
    ld a, [hl-]                                   ; $5b13: $3a
    ld h, [hl]                                    ; $5b14: $66
    jr z, jr_024_5b0f                             ; $5b15: $28 $f8

    inc h                                         ; $5b17: $24
    add h                                         ; $5b18: $84
    ld bc, $d2bd                                  ; $5b19: $01 $bd $d2

jr_024_5b1c:
    ld c, h                                       ; $5b1c: $4c
    push hl                                       ; $5b1d: $e5
    ld [hl], a                                    ; $5b1e: $77
    ld l, c                                       ; $5b1f: $69
    ld a, [hl-]                                   ; $5b20: $3a
    ld h, [hl]                                    ; $5b21: $66
    jr z, jr_024_5b1c                             ; $5b22: $28 $f8

    inc h                                         ; $5b24: $24

jr_024_5b25:
    add h                                         ; $5b25: $84
    ld bc, $d2bd                                  ; $5b26: $01 $bd $d2

jr_024_5b29:
    ld c, h                                       ; $5b29: $4c
    push hl                                       ; $5b2a: $e5
    ld [hl], a                                    ; $5b2b: $77
    ld l, c                                       ; $5b2c: $69
    ld a, [hl-]                                   ; $5b2d: $3a
    ld h, [hl]                                    ; $5b2e: $66
    jr z, jr_024_5b29                             ; $5b2f: $28 $f8

    inc h                                         ; $5b31: $24
    add h                                         ; $5b32: $84
    ld bc, $d2bd                                  ; $5b33: $01 $bd $d2

jr_024_5b36:
    ld c, h                                       ; $5b36: $4c
    push hl                                       ; $5b37: $e5
    ld [hl], a                                    ; $5b38: $77
    ld l, c                                       ; $5b39: $69
    ld a, [hl-]                                   ; $5b3a: $3a
    ld h, [hl]                                    ; $5b3b: $66
    jr z, jr_024_5b36                             ; $5b3c: $28 $f8

    inc h                                         ; $5b3e: $24
    add h                                         ; $5b3f: $84
    ld bc, $d2bd                                  ; $5b40: $01 $bd $d2

jr_024_5b43:
    ld c, h                                       ; $5b43: $4c
    push hl                                       ; $5b44: $e5
    ld [hl], a                                    ; $5b45: $77
    ld l, c                                       ; $5b46: $69
    ld a, [hl-]                                   ; $5b47: $3a
    ld h, [hl]                                    ; $5b48: $66
    jr z, jr_024_5b43                             ; $5b49: $28 $f8

    inc h                                         ; $5b4b: $24
    add h                                         ; $5b4c: $84
    ld bc, $d2bd                                  ; $5b4d: $01 $bd $d2
    ld c, h                                       ; $5b50: $4c
    push hl                                       ; $5b51: $e5
    ld [hl], a                                    ; $5b52: $77
    ld l, c                                       ; $5b53: $69
    db $dd                                        ; $5b54: $dd
    dec h                                         ; $5b55: $25
    db $ed                                        ; $5b56: $ed
    rlca                                          ; $5b57: $07
    ld c, b                                       ; $5b58: $48
    reti                                          ; $5b59: $d9


    ld [hl], c                                    ; $5b5a: $71
    pop af                                        ; $5b5b: $f1
    ld a, [hl-]                                   ; $5b5c: $3a
    ld a, a                                       ; $5b5d: $7f
    xor e                                         ; $5b5e: $ab
    ld a, d                                       ; $5b5f: $7a
    dec c                                         ; $5b60: $0d
    sub [hl]                                      ; $5b61: $96
    or [hl]                                       ; $5b62: $b6
    ld a, l                                       ; $5b63: $7d
    xor e                                         ; $5b64: $ab
    ld b, a                                       ; $5b65: $47
    jr jr_024_5b25                                ; $5b66: $18 $bd

    jp nc, $e54c                                  ; $5b68: $d2 $4c $e5

    ld [hl], a                                    ; $5b6b: $77
    ld l, c                                       ; $5b6c: $69
    ld c, d                                       ; $5b6d: $4a
    ei                                            ; $5b6e: $fb
    or b                                          ; $5b6f: $b0
    db $e3                                        ; $5b70: $e3
    call $a8aa                                    ; $5b71: $cd $aa $a8
    nop                                           ; $5b74: $00
    sub d                                         ; $5b75: $92

jr_024_5b76:
    add hl, de                                    ; $5b76: $19
    ld [hl+], a                                   ; $5b77: $22
    inc c                                         ; $5b78: $0c
    cp l                                          ; $5b79: $bd
    jp nc, $e54c                                  ; $5b7a: $d2 $4c $e5

    ld [hl], a                                    ; $5b7d: $77
    ld l, c                                       ; $5b7e: $69
    ld c, d                                       ; $5b7f: $4a
    ei                                            ; $5b80: $fb
    or b                                          ; $5b81: $b0
    db $e3                                        ; $5b82: $e3
    call $a8aa                                    ; $5b83: $cd $aa $a8
    nop                                           ; $5b86: $00
    sub d                                         ; $5b87: $92
    add hl, de                                    ; $5b88: $19
    ld [hl+], a                                   ; $5b89: $22
    inc c                                         ; $5b8a: $0c
    cp l                                          ; $5b8b: $bd
    jp nc, $e54c                                  ; $5b8c: $d2 $4c $e5

    ld [hl], a                                    ; $5b8f: $77
    ld l, c                                       ; $5b90: $69
    ld e, [hl]                                    ; $5b91: $5e
    ld a, [hl]                                    ; $5b92: $7e
    rst $00                                       ; $5b93: $c7
    and l                                         ; $5b94: $a5
    or h                                          ; $5b95: $b4
    cpl                                           ; $5b96: $2f
    ld h, e                                       ; $5b97: $63
    ld c, a                                       ; $5b98: $4f
    ld l, e                                       ; $5b99: $6b
    push de                                       ; $5b9a: $d5
    jr @+$7b                                      ; $5b9b: $18 $79

    ld l, l                                       ; $5b9d: $6d
    db $10                                        ; $5b9e: $10
    ld b, $bd                                     ; $5b9f: $06 $bd
    jp nc, $e54c                                  ; $5ba1: $d2 $4c $e5

    ld [hl], a                                    ; $5ba4: $77
    ld l, c                                       ; $5ba5: $69

jr_024_5ba6:
    ld e, [hl]                                    ; $5ba6: $5e
    ld a, [hl]                                    ; $5ba7: $7e
    rst $00                                       ; $5ba8: $c7
    srl a                                         ; $5ba9: $cb $3f
    sub l                                         ; $5bab: $95
    inc [hl]                                      ; $5bac: $34
    ldh a, [$08]                                  ; $5bad: $f0 $08
    inc bc                                        ; $5baf: $03
    cp l                                          ; $5bb0: $bd
    jp nc, $e54c                                  ; $5bb1: $d2 $4c $e5

    ld [hl], a                                    ; $5bb4: $77
    ld l, c                                       ; $5bb5: $69
    ld e, [hl]                                    ; $5bb6: $5e
    ld a, [hl]                                    ; $5bb7: $7e
    rst $00                                       ; $5bb8: $c7
    ld e, a                                       ; $5bb9: $5f
    adc c                                         ; $5bba: $89
    ld d, b                                       ; $5bbb: $50
    db $db                                        ; $5bbc: $db
    pop de                                        ; $5bbd: $d1
    ld [$3245], a                                 ; $5bbe: $ea $45 $32
    ld b, e                                       ; $5bc1: $43
    add h                                         ; $5bc2: $84
    ld bc, $d2bd                                  ; $5bc3: $01 $bd $d2
    ld c, h                                       ; $5bc6: $4c
    push hl                                       ; $5bc7: $e5
    sub a                                         ; $5bc8: $97
    add $e1                                       ; $5bc9: $c6 $e1
    or d                                          ; $5bcb: $b2
    ld e, a                                       ; $5bcc: $5f
    ld l, e                                       ; $5bcd: $6b
    ld b, $bc                                     ; $5bce: $06 $bc
    adc d                                         ; $5bd0: $8a
    inc bc                                        ; $5bd1: $03
    jp nz, $d2bd                                  ; $5bd2: $c2 $bd $d2

    ld c, h                                       ; $5bd5: $4c
    push hl                                       ; $5bd6: $e5
    ld [hl], a                                    ; $5bd7: $77
    add hl, bc                                    ; $5bd8: $09
    ld l, $fb                                     ; $5bd9: $2e $fb
    or l                                          ; $5bdb: $b5
    ld l, d                                       ; $5bdc: $6a
    jr nz, jr_024_5b76                            ; $5bdd: $20 $97

    push de                                       ; $5bdf: $d5
    ld h, b                                       ; $5be0: $60
    push bc                                       ; $5be1: $c5
    jr c, jr_024_5ba6                             ; $5be2: $38 $c2

    cp l                                          ; $5be4: $bd
    jp nc, $e54c                                  ; $5be5: $d2 $4c $e5

    ld [hl], a                                    ; $5be8: $77
    ld l, c                                       ; $5be9: $69
    ld e, [hl]                                    ; $5bea: $5e
    ld a, [hl]                                    ; $5beb: $7e
    db $fd                                        ; $5bec: $fd
    add c                                         ; $5bed: $81
    rst $08                                       ; $5bee: $cf
    adc [hl]                                      ; $5bef: $8e
    sbc c                                         ; $5bf0: $99
    or d                                          ; $5bf1: $b2

jr_024_5bf2:
    and d                                         ; $5bf2: $a2
    ld sp, $daf2                                  ; $5bf3: $31 $f2 $da
    jr nz, jr_024_5c04                            ; $5bf6: $20 $0c

    cp l                                          ; $5bf8: $bd
    jp nc, $e54c                                  ; $5bf9: $d2 $4c $e5

    ld [hl], a                                    ; $5bfc: $77
    ld l, c                                       ; $5bfd: $69
    ld e, [hl]                                    ; $5bfe: $5e
    ld a, [hl]                                    ; $5bff: $7e
    db $fd                                        ; $5c00: $fd
    inc de                                        ; $5c01: $13
    sbc e                                         ; $5c02: $9b
    dec e                                         ; $5c03: $1d

jr_024_5c04:
    inc sp                                        ; $5c04: $33
    ld h, l                                       ; $5c05: $65

jr_024_5c06:
    ld b, l                                       ; $5c06: $45
    ld h, e                                       ; $5c07: $63
    db $e4                                        ; $5c08: $e4
    or l                                          ; $5c09: $b5
    ld b, c                                       ; $5c0a: $41
    jr @-$41                                      ; $5c0b: $18 $bd

    jp nc, $e54c                                  ; $5c0d: $d2 $4c $e5

    ld [hl], a                                    ; $5c10: $77
    ld l, c                                       ; $5c11: $69
    ld e, [hl]                                    ; $5c12: $5e
    ld a, [hl]                                    ; $5c13: $7e
    rlca                                          ; $5c14: $07
    ld [$1d9b], sp                                ; $5c15: $08 $9b $1d
    inc sp                                        ; $5c18: $33
    ld h, l                                       ; $5c19: $65

jr_024_5c1a:
    ld b, l                                       ; $5c1a: $45
    ld h, e                                       ; $5c1b: $63
    db $e4                                        ; $5c1c: $e4
    or l                                          ; $5c1d: $b5
    ld b, c                                       ; $5c1e: $41
    jr @-$41                                      ; $5c1f: $18 $bd

    jp nc, $e54c                                  ; $5c21: $d2 $4c $e5

    ld [hl], a                                    ; $5c24: $77
    ld l, c                                       ; $5c25: $69
    ld e, [hl]                                    ; $5c26: $5e
    ld a, [hl]                                    ; $5c27: $7e
    rlca                                          ; $5c28: $07
    ld a, d                                       ; $5c29: $7a
    sbc c                                         ; $5c2a: $99
    dec e                                         ; $5c2b: $1d
    inc sp                                        ; $5c2c: $33
    ld h, l                                       ; $5c2d: $65

jr_024_5c2e:
    ld b, l                                       ; $5c2e: $45
    ld h, e                                       ; $5c2f: $63
    db $e4                                        ; $5c30: $e4
    or l                                          ; $5c31: $b5

Call_024_5c32:
jr_024_5c32:
    ld b, c                                       ; $5c32: $41
    jr jr_024_5bf2                                ; $5c33: $18 $bd

    jp nc, $e54c                                  ; $5c35: $d2 $4c $e5

    ld [hl], a                                    ; $5c38: $77
    ld l, c                                       ; $5c39: $69
    ld e, [hl]                                    ; $5c3a: $5e
    ld a, [hl]                                    ; $5c3b: $7e
    rlca                                          ; $5c3c: $07
    ld a, c                                       ; $5c3d: $79
    sbc c                                         ; $5c3e: $99
    dec e                                         ; $5c3f: $1d
    inc sp                                        ; $5c40: $33
    ld h, l                                       ; $5c41: $65
    ld b, l                                       ; $5c42: $45
    ld h, e                                       ; $5c43: $63
    db $e4                                        ; $5c44: $e4
    or l                                          ; $5c45: $b5
    ld b, c                                       ; $5c46: $41
    jr jr_024_5c06                                ; $5c47: $18 $bd

    jp nc, $e54c                                  ; $5c49: $d2 $4c $e5

    ld [hl], a                                    ; $5c4c: $77
    ld l, c                                       ; $5c4d: $69
    ld e, [hl]                                    ; $5c4e: $5e
    ld a, [hl]                                    ; $5c4f: $7e
    rlca                                          ; $5c50: $07
    ld a, e                                       ; $5c51: $7b
    sbc c                                         ; $5c52: $99
    dec e                                         ; $5c53: $1d
    inc sp                                        ; $5c54: $33
    ld h, l                                       ; $5c55: $65
    ld b, l                                       ; $5c56: $45
    ld h, e                                       ; $5c57: $63
    db $e4                                        ; $5c58: $e4
    or l                                          ; $5c59: $b5
    ld b, c                                       ; $5c5a: $41
    jr jr_024_5c1a                                ; $5c5b: $18 $bd

    jp nc, $e54c                                  ; $5c5d: $d2 $4c $e5

    ld [hl], a                                    ; $5c60: $77
    ld l, c                                       ; $5c61: $69

Call_024_5c62:
    ld e, [hl]                                    ; $5c62: $5e
    ld a, [hl]                                    ; $5c63: $7e
    add a                                         ; $5c64: $87
    ld a, b                                       ; $5c65: $78
    sbc c                                         ; $5c66: $99
    dec e                                         ; $5c67: $1d
    inc sp                                        ; $5c68: $33
    ld h, l                                       ; $5c69: $65
    ld b, l                                       ; $5c6a: $45
    ld h, e                                       ; $5c6b: $63
    db $e4                                        ; $5c6c: $e4
    or l                                          ; $5c6d: $b5
    ld b, c                                       ; $5c6e: $41
    jr jr_024_5c2e                                ; $5c6f: $18 $bd

    jp nc, $e54c                                  ; $5c71: $d2 $4c $e5

    ld [hl], a                                    ; $5c74: $77
    ld l, c                                       ; $5c75: $69

Call_024_5c76:
    ld e, [hl]                                    ; $5c76: $5e
    ld a, [hl]                                    ; $5c77: $7e
    xor l                                         ; $5c78: $ad

jr_024_5c79:
    xor a                                         ; $5c79: $af
    pop af                                        ; $5c7a: $f1
    and l                                         ; $5c7b: $a5
    ld b, $83                                     ; $5c7c: $06 $83
    sub d                                         ; $5c7e: $92
    dec e                                         ; $5c7f: $1d
    add h                                         ; $5c80: $84
    ld bc, $d2bd                                  ; $5c81: $01 $bd $d2
    ld c, h                                       ; $5c84: $4c
    push hl                                       ; $5c85: $e5
    ld [hl], a                                    ; $5c86: $77
    ld l, c                                       ; $5c87: $69
    ld e, [hl]                                    ; $5c88: $5e
    ld a, [hl]                                    ; $5c89: $7e
    xor l                                         ; $5c8a: $ad
    rla                                           ; $5c8b: $17
    inc a                                         ; $5c8c: $3c
    and l                                         ; $5c8d: $a5
    ld e, c                                       ; $5c8e: $59
    jp c, Jump_024_593b                           ; $5c8f: $da $3b $59

    add e                                         ; $5c92: $83
    ld e, e                                       ; $5c93: $5b

jr_024_5c94:
    xor l                                         ; $5c94: $ad
    adc d                                         ; $5c95: $8a
    ld a, [bc]                                    ; $5c96: $0a
    jr nz, jr_024_5c32                            ; $5c97: $20 $99

    ld hl, $bdc2                                  ; $5c99: $21 $c2 $bd
    jp nc, $e54c                                  ; $5c9c: $d2 $4c $e5

    ld [hl], a                                    ; $5c9f: $77
    ld l, c                                       ; $5ca0: $69
    ld e, [hl]                                    ; $5ca1: $5e
    ld a, [hl]                                    ; $5ca2: $7e
    xor l                                         ; $5ca3: $ad
    add hl, bc                                    ; $5ca4: $09
    sbc l                                         ; $5ca5: $9d
    db $eb                                        ; $5ca6: $eb
    ld a, [de]                                    ; $5ca7: $1a
    rst $10                                       ; $5ca8: $d7
    ld d, e                                       ; $5ca9: $53
    add l                                         ; $5caa: $85
    ld hl, $bd0c                                  ; $5cab: $21 $0c $bd
    jp nc, $e54c                                  ; $5cae: $d2 $4c $e5

    ld [hl], a                                    ; $5cb1: $77
    ld l, c                                       ; $5cb2: $69
    ld e, [hl]                                    ; $5cb3: $5e
    ld a, [hl]                                    ; $5cb4: $7e
    daa                                           ; $5cb5: $27
    db $dd                                        ; $5cb6: $dd
    or [hl]                                       ; $5cb7: $b6
    xor b                                         ; $5cb8: $a8
    inc [hl]                                      ; $5cb9: $34
    ld [$bd03], sp                                ; $5cba: $08 $03 $bd

jr_024_5cbd:
    jp nc, $e54c                                  ; $5cbd: $d2 $4c $e5

    ld [hl], a                                    ; $5cc0: $77
    ld l, c                                       ; $5cc1: $69
    ld e, [hl]                                    ; $5cc2: $5e
    ld a, [hl]                                    ; $5cc3: $7e
    daa                                           ; $5cc4: $27
    db $dd                                        ; $5cc5: $dd
    or [hl]                                       ; $5cc6: $b6
    xor b                                         ; $5cc7: $a8
    inc [hl]                                      ; $5cc8: $34
    ld [$bd03], sp                                ; $5cc9: $08 $03 $bd
    jp nc, $e54c                                  ; $5ccc: $d2 $4c $e5

    ld [hl], a                                    ; $5ccf: $77
    ld l, c                                       ; $5cd0: $69

jr_024_5cd1:
    db $dd                                        ; $5cd1: $dd
    dec h                                         ; $5cd2: $25
    db $ed                                        ; $5cd3: $ed
    rlca                                          ; $5cd4: $07
    ld c, b                                       ; $5cd5: $48
    reti                                          ; $5cd6: $d9


    ret                                           ; $5cd7: $c9


    push de                                       ; $5cd8: $d5
    pop af                                        ; $5cd9: $f1
    ld c, c                                       ; $5cda: $49
    ld a, [de]                                    ; $5cdb: $1a
    ld l, b                                       ; $5cdc: $68
    adc h                                         ; $5cdd: $8c
    dec [hl]                                      ; $5cde: $35
    ld e, b                                       ; $5cdf: $58
    jp c, $adf6                                   ; $5ce0: $da $f6 $ad

    ld e, $61                                     ; $5ce3: $1e $61
    cp l                                          ; $5ce5: $bd
    jp nc, $e54c                                  ; $5ce6: $d2 $4c $e5

    ld [hl], a                                    ; $5ce9: $77
    ld l, c                                       ; $5cea: $69
    ld e, [hl]                                    ; $5ceb: $5e
    ld a, [hl]                                    ; $5cec: $7e
    daa                                           ; $5ced: $27
    sbc e                                         ; $5cee: $9b
    jr nz, jr_024_5c79                            ; $5cef: $20 $88

    cp a                                          ; $5cf1: $bf
    ld d, $37                                     ; $5cf2: $16 $37
    db $ec                                        ; $5cf4: $ec
    ld a, $ac                                     ; $5cf5: $3e $ac
    adc d                                         ; $5cf7: $8a
    ld a, [bc]                                    ; $5cf8: $0a
    jr nz, jr_024_5c94                            ; $5cf9: $20 $99

    ld hl, $bdc2                                  ; $5cfb: $21 $c2 $bd
    jp nc, $e54c                                  ; $5cfe: $d2 $4c $e5

    ld [hl], a                                    ; $5d01: $77
    ld l, c                                       ; $5d02: $69
    daa                                           ; $5d03: $27
    dec hl                                        ; $5d04: $2b
    db $d3                                        ; $5d05: $d3
    ld [hl], b                                    ; $5d06: $70
    db $dd                                        ; $5d07: $dd
    inc sp                                        ; $5d08: $33
    or h                                          ; $5d09: $b4
    push hl                                       ; $5d0a: $e5
    sbc e                                         ; $5d0b: $9b
    ld a, [de]                                    ; $5d0c: $1a
    inc l                                         ; $5d0d: $2c
    ld l, l                                       ; $5d0e: $6d
    ei                                            ; $5d0f: $fb
    ld d, [hl]                                    ; $5d10: $56
    adc a                                         ; $5d11: $8f
    jr nc, jr_024_5cd1                            ; $5d12: $30 $bd

    jp nc, $e54c                                  ; $5d14: $d2 $4c $e5

    ld [hl], a                                    ; $5d17: $77
    ld l, c                                       ; $5d18: $69
    ld e, [hl]                                    ; $5d19: $5e
    ld a, [hl]                                    ; $5d1a: $7e
    db $dd                                        ; $5d1b: $dd
    db $d3                                        ; $5d1c: $d3
    ld l, a                                       ; $5d1d: $6f
    ld [de], a                                    ; $5d1e: $12
    xor h                                         ; $5d1f: $ac
    adc d                                         ; $5d20: $8a
    ld a, [bc]                                    ; $5d21: $0a
    jr nz, jr_024_5cbd                            ; $5d22: $20 $99

    ld hl, $bdc2                                  ; $5d24: $21 $c2 $bd
    jp nc, $e54c                                  ; $5d27: $d2 $4c $e5

    ld [hl], a                                    ; $5d2a: $77
    ld l, c                                       ; $5d2b: $69
    db $dd                                        ; $5d2c: $dd
    dec h                                         ; $5d2d: $25
    db $ed                                        ; $5d2e: $ed
    rlca                                          ; $5d2f: $07
    ld c, b                                       ; $5d30: $48
    reti                                          ; $5d31: $d9


    ld l, c                                       ; $5d32: $69
    and $8a                                       ; $5d33: $e6 $8a
    ld a, h                                       ; $5d35: $7c
    adc h                                         ; $5d36: $8c
    dec [hl]                                      ; $5d37: $35
    ld e, b                                       ; $5d38: $58
    jp c, $adf6                                   ; $5d39: $da $f6 $ad

    ld e, $61                                     ; $5d3c: $1e $61
    cp l                                          ; $5d3e: $bd
    jp nc, $e54c                                  ; $5d3f: $d2 $4c $e5

    ld [hl], a                                    ; $5d42: $77
    ld l, c                                       ; $5d43: $69
    db $dd                                        ; $5d44: $dd
    dec h                                         ; $5d45: $25
    db $ed                                        ; $5d46: $ed
    rlca                                          ; $5d47: $07
    ld c, b                                       ; $5d48: $48
    ld e, c                                       ; $5d49: $59
    dec bc                                        ; $5d4a: $0b
    ld l, c                                       ; $5d4b: $69
    rst $20                                       ; $5d4c: $e7
    ld l, e                                       ; $5d4d: $6b

jr_024_5d4e:
    or b                                          ; $5d4e: $b0
    or h                                          ; $5d4f: $b4
    db $ed                                        ; $5d50: $ed
    ld e, e                                       ; $5d51: $5b
    dec a                                         ; $5d52: $3d
    jp nz, $d2bd                                  ; $5d53: $c2 $bd $d2

    ld c, h                                       ; $5d56: $4c
    push hl                                       ; $5d57: $e5
    ld [hl], a                                    ; $5d58: $77
    ld l, c                                       ; $5d59: $69
    db $dd                                        ; $5d5a: $dd
    dec h                                         ; $5d5b: $25
    db $ed                                        ; $5d5c: $ed
    rlca                                          ; $5d5d: $07
    ld c, b                                       ; $5d5e: $48
    ld e, c                                       ; $5d5f: $59
    ld c, e                                       ; $5d60: $4b
    ld b, a                                       ; $5d61: $47
    jp nc, $0d78                                  ; $5d62: $d2 $78 $0d

    sub [hl]                                      ; $5d65: $96
    or [hl]                                       ; $5d66: $b6
    ld a, l                                       ; $5d67: $7d
    xor e                                         ; $5d68: $ab
    ld b, a                                       ; $5d69: $47
    jr @-$41                                      ; $5d6a: $18 $bd

    jp nc, $e54c                                  ; $5d6c: $d2 $4c $e5

    ld [hl], a                                    ; $5d6f: $77
    ld l, c                                       ; $5d70: $69
    ld a, [hl-]                                   ; $5d71: $3a
    ldh a, [$94]                                  ; $5d72: $f0 $94
    sub a                                         ; $5d74: $97
    call z, Call_024_6110                         ; $5d75: $cc $10 $61
    cp l                                          ; $5d78: $bd
    jp nc, $e54c                                  ; $5d79: $d2 $4c $e5

    ld [hl], a                                    ; $5d7c: $77
    ld l, c                                       ; $5d7d: $69
    ld e, [hl]                                    ; $5d7e: $5e
    ld a, [hl]                                    ; $5d7f: $7e
    dec a                                         ; $5d80: $3d
    ld b, h                                       ; $5d81: $44
    add hl, bc                                    ; $5d82: $09
    db $ec                                        ; $5d83: $ec
    dec de                                        ; $5d84: $1b
    jr jr_024_5dd8                                ; $5d85: $18 $51

    cp a                                          ; $5d87: $bf
    ld c, c                                       ; $5d88: $49
    xor e                                         ; $5d89: $ab
    and d                                         ; $5d8a: $a2
    ld [bc], a                                    ; $5d8b: $02
    ld c, b                                       ; $5d8c: $48
    ld h, [hl]                                    ; $5d8d: $66
    adc b                                         ; $5d8e: $88
    jr nc, jr_024_5d4e                            ; $5d8f: $30 $bd

    jp nc, $e54c                                  ; $5d91: $d2 $4c $e5

    ld [hl], a                                    ; $5d94: $77
    ld l, c                                       ; $5d95: $69
    ld e, [hl]                                    ; $5d96: $5e
    ld a, [hl]                                    ; $5d97: $7e
    dec a                                         ; $5d98: $3d
    inc h                                         ; $5d99: $24
    dec sp                                        ; $5d9a: $3b
    and l                                         ; $5d9b: $a5
    reti                                          ; $5d9c: $d9


    jp hl                                         ; $5d9d: $e9


    sbc c                                         ; $5d9e: $99
    ld hl, $bdc2                                  ; $5d9f: $21 $c2 $bd
    jp nc, $e54c                                  ; $5da2: $d2 $4c $e5

    ld [hl], a                                    ; $5da5: $77
    ld l, c                                       ; $5da6: $69
    ld a, [hl-]                                   ; $5da7: $3a
    ld h, [hl]                                    ; $5da8: $66
    jr z, @-$06                                   ; $5da9: $28 $f8

    and h                                         ; $5dab: $a4
    or l                                          ; $5dac: $b5
    sbc a                                         ; $5dad: $9f
    ld e, [hl]                                    ; $5dae: $5e
    cp l                                          ; $5daf: $bd
    db $ec                                        ; $5db0: $ec
    ld a, b                                       ; $5db1: $78
    cp c                                          ; $5db2: $b9
    inc d                                         ; $5db3: $14
    and h                                         ; $5db4: $a4
    dec sp                                        ; $5db5: $3b
    jr nz, jr_024_5dc4                            ; $5db6: $20 $0c

    cp l                                          ; $5db8: $bd
    jp nc, $e54c                                  ; $5db9: $d2 $4c $e5

    and a                                         ; $5dbc: $a7
    cp [hl]                                       ; $5dbd: $be
    xor $51                                       ; $5dbe: $ee $51
    db $dd                                        ; $5dc0: $dd
    ld c, [hl]                                    ; $5dc1: $4e
    add hl, bc                                    ; $5dc2: $09
    ld [hl], a                                    ; $5dc3: $77

jr_024_5dc4:
    jp z, $9fa5                                   ; $5dc4: $ca $a5 $9f

Jump_024_5dc7:
    ld [de], a                                    ; $5dc7: $12
    ld e, e                                       ; $5dc8: $5b
    adc a                                         ; $5dc9: $8f
    ld [hl+], a                                   ; $5dca: $22
    rst $38                                       ; $5dcb: $ff
    dec sp                                        ; $5dcc: $3b
    call $f8a8                                    ; $5dcd: $cd $a8 $f8
    dec bc                                        ; $5dd0: $0b
    jr nz, jr_024_5ddf                            ; $5dd1: $20 $0c

    cp l                                          ; $5dd3: $bd

Jump_024_5dd4:
    jp nc, $e54c                                  ; $5dd4: $d2 $4c $e5

    and a                                         ; $5dd7: $a7

jr_024_5dd8:
    ld a, $2f                                     ; $5dd8: $3e $2f
    ccf                                           ; $5dda: $3f
    jr z, jr_024_5e06                             ; $5ddb: $28 $29

    cp a                                          ; $5ddd: $bf
    or h                                          ; $5dde: $b4

jr_024_5ddf:
    rst $20                                       ; $5ddf: $e7
    push hl                                       ; $5de0: $e5
    ld [hl], a                                    ; $5de1: $77
    sub d                                         ; $5de2: $92
    sub $1f                                       ; $5de3: $d6 $1f
    ld h, c                                       ; $5de5: $61
    cp l                                          ; $5de6: $bd
    jp nc, $e54c                                  ; $5de7: $d2 $4c $e5

    ld [hl], a                                    ; $5dea: $77
    ld l, c                                       ; $5deb: $69
    ld e, [hl]                                    ; $5dec: $5e
    ld a, [hl]                                    ; $5ded: $7e
    xor l                                         ; $5dee: $ad
    add hl, de                                    ; $5def: $19
    ldh a, [$2a]                                  ; $5df0: $f0 $2a
    ld c, $3b                                     ; $5df2: $0e $3b
    sub [hl]                                      ; $5df4: $96
    ld e, h                                       ; $5df5: $5c
    sub h                                         ; $5df6: $94
    xor d                                         ; $5df7: $aa
    ld e, a                                       ; $5df8: $5f
    xor e                                         ; $5df9: $ab
    add $88                                       ; $5dfa: $c6 $88
    jr nc, @-$41                                  ; $5dfc: $30 $bd

    jp nc, $e54c                                  ; $5dfe: $d2 $4c $e5

    ld [hl], a                                    ; $5e01: $77
    ld l, c                                       ; $5e02: $69
    ld e, [hl]                                    ; $5e03: $5e
    ld a, [hl]                                    ; $5e04: $7e
    rst $00                                       ; $5e05: $c7

jr_024_5e06:
    ld c, e                                       ; $5e06: $4b
    ld h, e                                       ; $5e07: $63
    db $db                                        ; $5e08: $db
    sub a                                         ; $5e09: $97
    ld e, b                                       ; $5e0a: $58
    jp z, $ce8e                                   ; $5e0b: $ca $8e $ce

    ld b, $6a                                     ; $5e0e: $06 $6a

jr_024_5e10:
    dec sp                                        ; $5e10: $3b
    ld h, $25                                     ; $5e11: $26 $25
    cp h                                          ; $5e13: $bc
    sbc [hl]                                      ; $5e14: $9e
    jp nc, $0c20                                  ; $5e15: $d2 $20 $0c

    cp l                                          ; $5e18: $bd
    jp nc, $e54c                                  ; $5e19: $d2 $4c $e5

    ld [hl], a                                    ; $5e1c: $77
    ld l, c                                       ; $5e1d: $69
    ld e, [hl]                                    ; $5e1e: $5e
    ld a, [hl]                                    ; $5e1f: $7e

jr_024_5e20:
    rst $00                                       ; $5e20: $c7
    ld c, e                                       ; $5e21: $4b
    ld h, e                                       ; $5e22: $63
    db $db                                        ; $5e23: $db
    sub a                                         ; $5e24: $97
    ld e, b                                       ; $5e25: $58
    jp z, $65ba                                   ; $5e26: $ca $ba $65

    jr jr_024_5e51                                ; $5e29: $18 $26

    db $ed                                        ; $5e2b: $ed
    db $f4                                        ; $5e2c: $f4
    call z, Call_024_6110                         ; $5e2d: $cc $10 $61
    cp l                                          ; $5e30: $bd
    jp nc, $e54c                                  ; $5e31: $d2 $4c $e5

    ld [hl], a                                    ; $5e34: $77
    ld l, c                                       ; $5e35: $69
    cp d                                          ; $5e36: $ba
    or [hl]                                       ; $5e37: $b6
    ld h, h                                       ; $5e38: $64
    add [hl]                                      ; $5e39: $86
    xor e                                         ; $5e3a: $ab
    ld c, h                                       ; $5e3b: $4c
    and a                                         ; $5e3c: $a7
    sbc l                                         ; $5e3d: $9d
    ld a, [hl+]                                   ; $5e3e: $2a
    inc c                                         ; $5e3f: $0c
    ld h, c                                       ; $5e40: $61
    cp l                                          ; $5e41: $bd
    jp nc, $e54c                                  ; $5e42: $d2 $4c $e5

    ld [hl], a                                    ; $5e45: $77
    ld l, c                                       ; $5e46: $69
    rst $00                                       ; $5e47: $c7
    db $dd                                        ; $5e48: $dd
    ld e, b                                       ; $5e49: $58
    sub l                                         ; $5e4a: $95
    ld a, [de]                                    ; $5e4b: $1a
    inc l                                         ; $5e4c: $2c
    ld l, l                                       ; $5e4d: $6d
    ei                                            ; $5e4e: $fb
    ld d, [hl]                                    ; $5e4f: $56
    adc a                                         ; $5e50: $8f

jr_024_5e51:
    jr nc, jr_024_5e10                            ; $5e51: $30 $bd

    jp nc, $e54c                                  ; $5e53: $d2 $4c $e5

    ld [hl], a                                    ; $5e56: $77
    ld l, c                                       ; $5e57: $69
    ld e, [hl]                                    ; $5e58: $5e
    ld a, [hl]                                    ; $5e59: $7e
    rst $00                                       ; $5e5a: $c7
    res 5, e                                      ; $5e5b: $cb $ab
    xor a                                         ; $5e5d: $af
    ld d, l                                       ; $5e5e: $55
    ld h, e                                       ; $5e5f: $63
    ld b, h                                       ; $5e60: $44
    jr jr_024_5e20                                ; $5e61: $18 $bd

    jp nc, $e54c                                  ; $5e63: $d2 $4c $e5

    ld [hl], a                                    ; $5e66: $77
    ld l, c                                       ; $5e67: $69
    ld e, [hl]                                    ; $5e68: $5e
    ld a, [hl]                                    ; $5e69: $7e

Call_024_5e6a:
    dec l                                         ; $5e6a: $2d
    xor [hl]                                      ; $5e6b: $ae
    or [hl]                                       ; $5e6c: $b6
    cp l                                          ; $5e6d: $bd
    db $d3                                        ; $5e6e: $d3
    inc sp                                        ; $5e6f: $33
    ld b, e                                       ; $5e70: $43
    add h                                         ; $5e71: $84
    ld bc, $d2bd                                  ; $5e72: $01 $bd $d2
    ld c, h                                       ; $5e75: $4c
    push hl                                       ; $5e76: $e5
    ld [hl], a                                    ; $5e77: $77
    ld l, c                                       ; $5e78: $69
    ld e, [hl]                                    ; $5e79: $5e
    ld a, [hl]                                    ; $5e7a: $7e
    db $dd                                        ; $5e7b: $dd
    ld d, e                                       ; $5e7c: $53
    ld e, h                                       ; $5e7d: $5c
    db $f4                                        ; $5e7e: $f4
    ld a, [$cf4e]                                 ; $5e7f: $fa $4e $cf
    inc c                                         ; $5e82: $0c
    ld de, $bd06                                  ; $5e83: $11 $06 $bd
    jp nc, $e54c                                  ; $5e86: $d2 $4c $e5

    ld [hl], a                                    ; $5e89: $77
    ld l, c                                       ; $5e8a: $69
    ld e, [hl]                                    ; $5e8b: $5e
    ld a, [hl]                                    ; $5e8c: $7e
    rst $00                                       ; $5e8d: $c7
    jr jr_024_5e9a                                ; $5e8e: $18 $0a

    ld a, $09                                     ; $5e90: $3e $09
    db $10                                        ; $5e92: $10
    ld b, $bd                                     ; $5e93: $06 $bd
    jp nc, $e54c                                  ; $5e95: $d2 $4c $e5

    ld [hl], a                                    ; $5e98: $77
    ld l, c                                       ; $5e99: $69

jr_024_5e9a:
    ld e, [hl]                                    ; $5e9a: $5e
    ld a, [hl]                                    ; $5e9b: $7e
    sbc l                                         ; $5e9c: $9d
    db $f4                                        ; $5e9d: $f4
    sbc e                                         ; $5e9e: $9b
    or h                                          ; $5e9f: $b4
    ldh a, [$72]                                  ; $5ea0: $f0 $72
    cp b                                          ; $5ea2: $b8
    inc d                                         ; $5ea3: $14
    ld c, h                                       ; $5ea4: $4c
    ld [hl-], a                                   ; $5ea5: $32
    ld b, e                                       ; $5ea6: $43
    add h                                         ; $5ea7: $84
    ld bc, $d2bd                                  ; $5ea8: $01 $bd $d2
    ld c, h                                       ; $5eab: $4c
    push hl                                       ; $5eac: $e5
    ld [hl], a                                    ; $5ead: $77
    ld l, c                                       ; $5eae: $69
    xor l                                         ; $5eaf: $ad
    ld a, [hl+]                                   ; $5eb0: $2a
    jp nc, $60d4                                  ; $5eb1: $d2 $d4 $60

    ld d, [hl]                                    ; $5eb4: $56
    dec [hl]                                      ; $5eb5: $35
    pop de                                        ; $5eb6: $d1
    ld de, $bd06                                  ; $5eb7: $11 $06 $bd
    jp nc, $e54c                                  ; $5eba: $d2 $4c $e5

    ld [hl], a                                    ; $5ebd: $77
    ld l, c                                       ; $5ebe: $69
    ld e, [hl]                                    ; $5ebf: $5e
    ld a, [hl]                                    ; $5ec0: $7e
    ld b, a                                       ; $5ec1: $47
    add c                                         ; $5ec2: $81
    ld c, e                                       ; $5ec3: $4b
    ld d, d                                       ; $5ec4: $52
    add [hl]                                      ; $5ec5: $86
    call $14aa                                    ; $5ec6: $cd $aa $14
    cp c                                          ; $5ec9: $b9
    inc l                                         ; $5eca: $2c
    dec b                                         ; $5ecb: $05
    ld h, c                                       ; $5ecc: $61
    cp l                                          ; $5ecd: $bd
    jp nc, $e54c                                  ; $5ece: $d2 $4c $e5

    sub a                                         ; $5ed1: $97
    add $e1                                       ; $5ed2: $c6 $e1
    or d                                          ; $5ed4: $b2
    ld e, a                                       ; $5ed5: $5f
    ld l, e                                       ; $5ed6: $6b
    ld b, $bc                                     ; $5ed7: $06 $bc
    adc d                                         ; $5ed9: $8a
    inc bc                                        ; $5eda: $03
    jp nz, $d2bd                                  ; $5edb: $c2 $bd $d2

    ld c, h                                       ; $5ede: $4c
    push hl                                       ; $5edf: $e5
    sub a                                         ; $5ee0: $97
    add $e1                                       ; $5ee1: $c6 $e1
    or d                                          ; $5ee3: $b2
    ld e, a                                       ; $5ee4: $5f
    ld l, e                                       ; $5ee5: $6b
    ld b, $bc                                     ; $5ee6: $06 $bc
    adc d                                         ; $5ee8: $8a
    inc bc                                        ; $5ee9: $03
    jp nz, $d2bd                                  ; $5eea: $c2 $bd $d2

    ld c, h                                       ; $5eed: $4c
    push hl                                       ; $5eee: $e5
    sub a                                         ; $5eef: $97
    add $e1                                       ; $5ef0: $c6 $e1

jr_024_5ef2:
    or d                                          ; $5ef2: $b2
    ld e, a                                       ; $5ef3: $5f
    ld l, e                                       ; $5ef4: $6b
    ld b, $bc                                     ; $5ef5: $06 $bc
    adc d                                         ; $5ef7: $8a
    inc bc                                        ; $5ef8: $03
    jp nz, $d2bd                                  ; $5ef9: $c2 $bd $d2

    ld c, h                                       ; $5efc: $4c
    push hl                                       ; $5efd: $e5
    sub a                                         ; $5efe: $97
    add $e1                                       ; $5eff: $c6 $e1
    or d                                          ; $5f01: $b2
    ld e, a                                       ; $5f02: $5f
    xor e                                         ; $5f03: $ab
    ld b, $72                                     ; $5f04: $06 $72
    ld e, c                                       ; $5f06: $59
    dec c                                         ; $5f07: $0d
    ld d, [hl]                                    ; $5f08: $56
    adc h                                         ; $5f09: $8c

jr_024_5f0a:
    inc hl                                        ; $5f0a: $23
    inc c                                         ; $5f0b: $0c
    cp l                                          ; $5f0c: $bd
    jp nc, $e54c                                  ; $5f0d: $d2 $4c $e5

    ld [hl], a                                    ; $5f10: $77
    ld l, c                                       ; $5f11: $69
    ld e, [hl]                                    ; $5f12: $5e
    ld a, [hl]                                    ; $5f13: $7e
    db $dd                                        ; $5f14: $dd
    ld d, h                                       ; $5f15: $54
    ret c                                         ; $5f16: $d8

    ld a, d                                       ; $5f17: $7a
    adc b                                         ; $5f18: $88
    or d                                          ; $5f19: $b2
    ld c, e                                       ; $5f1a: $4b
    pop bc                                        ; $5f1b: $c1
    cp d                                          ; $5f1c: $ba
    ld b, l                                       ; $5f1d: $45
    db $d3                                        ; $5f1e: $d3
    sbc [hl]                                      ; $5f1f: $9e
    ld h, h                                       ; $5f20: $64
    add [hl]                                      ; $5f21: $86

jr_024_5f22:
    ld [$bd03], sp                                ; $5f22: $08 $03 $bd
    jp nc, $e54c                                  ; $5f25: $d2 $4c $e5

    ld [hl], a                                    ; $5f28: $77
    ld l, c                                       ; $5f29: $69
    ld e, [hl]                                    ; $5f2a: $5e
    ld a, [hl]                                    ; $5f2b: $7e
    rst $00                                       ; $5f2c: $c7
    res 5, e                                      ; $5f2d: $cb $ab
    xor a                                         ; $5f2f: $af
    ld d, l                                       ; $5f30: $55
    ld h, e                                       ; $5f31: $63
    ld b, h                                       ; $5f32: $44
    jr jr_024_5ef2                                ; $5f33: $18 $bd

    jp nc, $e54c                                  ; $5f35: $d2 $4c $e5

    ld [hl], a                                    ; $5f38: $77
    ld l, c                                       ; $5f39: $69
    ld e, [hl]                                    ; $5f3a: $5e
    ld a, [hl]                                    ; $5f3b: $7e
    dec l                                         ; $5f3c: $2d
    ld e, a                                       ; $5f3d: $5f
    ret                                           ; $5f3e: $c9


    ei                                            ; $5f3f: $fb
    ld c, [hl]                                    ; $5f40: $4e
    ld [hl], $41                                  ; $5f41: $36 $41
    db $10                                        ; $5f43: $10
    ld a, a                                       ; $5f44: $7f
    and a                                         ; $5f45: $a7
    ld h, a                                       ; $5f46: $67
    add [hl]                                      ; $5f47: $86
    ld [$bd03], sp                                ; $5f48: $08 $03 $bd
    jp nc, $e54c                                  ; $5f4b: $d2 $4c $e5

    ld [hl], a                                    ; $5f4e: $77
    ld l, c                                       ; $5f4f: $69
    ld e, [hl]                                    ; $5f50: $5e
    ld a, [hl]                                    ; $5f51: $7e
    dec a                                         ; $5f52: $3d
    push hl                                       ; $5f53: $e5
    ld a, [$60a5]                                 ; $5f54: $fa $a5 $60
    dec l                                         ; $5f57: $2d
    and [hl]                                      ; $5f58: $a6

Call_024_5f59:
    db $d3                                        ; $5f59: $d3

Jump_024_5f5a:
    adc c                                         ; $5f5a: $89
    rst $30                                       ; $5f5b: $f7
    ld h, c                                       ; $5f5c: $61
    and a                                         ; $5f5d: $a7
    jp c, $adf6                                   ; $5f5e: $da $f6 $ad

    ld e, $61                                     ; $5f61: $1e $61
    cp l                                          ; $5f63: $bd
    jp nc, $e54c                                  ; $5f64: $d2 $4c $e5

    ld [hl], a                                    ; $5f67: $77
    ld l, c                                       ; $5f68: $69
    ld e, [hl]                                    ; $5f69: $5e
    ld a, [hl]                                    ; $5f6a: $7e
    ld b, a                                       ; $5f6b: $47
    ld h, a                                       ; $5f6c: $67
    inc bc                                        ; $5f6d: $03
    or l                                          ; $5f6e: $b5
    dec e                                         ; $5f6f: $1d
    xor l                                         ; $5f70: $ad
    ld e, [hl]                                    ; $5f71: $5e
    inc h                                         ; $5f72: $24
    inc sp                                        ; $5f73: $33
    ld b, h                                       ; $5f74: $44
    jr @-$41                                      ; $5f75: $18 $bd

    jp nc, $e54c                                  ; $5f77: $d2 $4c $e5

    ld [hl], a                                    ; $5f7a: $77
    ld l, c                                       ; $5f7b: $69
    ld e, [hl]                                    ; $5f7c: $5e
    ld a, [hl]                                    ; $5f7d: $7e
    daa                                           ; $5f7e: $27
    sbc e                                         ; $5f7f: $9b
    jr nz, jr_024_5f0a                            ; $5f80: $20 $88

    cp a                                          ; $5f82: $bf
    sub e                                         ; $5f83: $93
    dec c                                         ; $5f84: $0d
    call c, Call_024_556a                         ; $5f85: $dc $6a $55
    ld d, h                                       ; $5f88: $54
    nop                                           ; $5f89: $00
    ret                                           ; $5f8a: $c9


    inc c                                         ; $5f8b: $0c
    ld de, $bd06                                  ; $5f8c: $11 $06 $bd
    jp nc, $e54c                                  ; $5f8f: $d2 $4c $e5

    ld [hl], a                                    ; $5f92: $77
    ld l, c                                       ; $5f93: $69
    ld e, [hl]                                    ; $5f94: $5e
    ld a, [hl]                                    ; $5f95: $7e
    daa                                           ; $5f96: $27
    sbc e                                         ; $5f97: $9b
    jr nz, jr_024_5f22                            ; $5f98: $20 $88

    cp a                                          ; $5f9a: $bf
    and e                                         ; $5f9b: $a3
    call nz, $4557                                ; $5f9c: $c4 $57 $45
    dec b                                         ; $5f9f: $05
    sub b                                         ; $5fa0: $90
    call z, Call_024_6110                         ; $5fa1: $cc $10 $61
    cp l                                          ; $5fa4: $bd
    jp nc, $e54c                                  ; $5fa5: $d2 $4c $e5

    ld [hl], a                                    ; $5fa8: $77
    ld l, c                                       ; $5fa9: $69
    ld e, [hl]                                    ; $5faa: $5e
    ld a, [hl]                                    ; $5fab: $7e
    db $dd                                        ; $5fac: $dd
    ld d, h                                       ; $5fad: $54
    ret c                                         ; $5fae: $d8

    adc $54                                       ; $5faf: $ce $54
    inc de                                        ; $5fb1: $13
    dec e                                         ; $5fb2: $1d
    ld h, c                                       ; $5fb3: $61
    cp l                                          ; $5fb4: $bd
    jp nc, $e54c                                  ; $5fb5: $d2 $4c $e5

    ld [hl], a                                    ; $5fb8: $77
    ld l, c                                       ; $5fb9: $69
    ld a, [hl-]                                   ; $5fba: $3a
    ld hl, sp+$4a                                 ; $5fbb: $f8 $4a
    sbc $57                                       ; $5fbd: $de $57
    inc [hl]                                      ; $5fbf: $34
    ld b, [hl]                                    ; $5fc0: $46
    ld e, [hl]                                    ; $5fc1: $5e
    dec de                                        ; $5fc2: $1b
    add h                                         ; $5fc3: $84
    ld bc, $d2bd                                  ; $5fc4: $01 $bd $d2
    ld c, h                                       ; $5fc7: $4c
    push hl                                       ; $5fc8: $e5
    ld [hl], a                                    ; $5fc9: $77
    ld l, c                                       ; $5fca: $69
    db $dd                                        ; $5fcb: $dd
    dec h                                         ; $5fcc: $25
    db $ed                                        ; $5fcd: $ed
    rlca                                          ; $5fce: $07

Jump_024_5fcf:
    ld c, b                                       ; $5fcf: $48
    reti                                          ; $5fd0: $d9


    pop de                                        ; $5fd1: $d1
    sub a                                         ; $5fd2: $97
    ld [$4b6a], sp                                ; $5fd3: $08 $6a $4b
    db $db                                        ; $5fd6: $db
    cp [hl]                                       ; $5fd7: $be
    push de                                       ; $5fd8: $d5
    inc hl                                        ; $5fd9: $23
    inc c                                         ; $5fda: $0c
    cp l                                          ; $5fdb: $bd
    jp nc, $e54c                                  ; $5fdc: $d2 $4c $e5

    ld [hl], a                                    ; $5fdf: $77
    ld l, c                                       ; $5fe0: $69
    ld c, d                                       ; $5fe1: $4a
    ei                                            ; $5fe2: $fb
    or b                                          ; $5fe3: $b0
    db $e3                                        ; $5fe4: $e3
    call $a8aa                                    ; $5fe5: $cd $aa $a8
    nop                                           ; $5fe8: $00
    sub d                                         ; $5fe9: $92
    add hl, de                                    ; $5fea: $19
    ld [hl+], a                                   ; $5feb: $22
    inc c                                         ; $5fec: $0c
    cp l                                          ; $5fed: $bd

jr_024_5fee:
    jp nc, $e54c                                  ; $5fee: $d2 $4c $e5

    rst $20                                       ; $5ff1: $e7
    push hl                                       ; $5ff2: $e5
    ld [hl], a                                    ; $5ff3: $77
    ld e, h                                       ; $5ff4: $5c
    ld l, h                                       ; $5ff5: $6c
    ld l, $05                                     ; $5ff6: $2e $05
    dec sp                                        ; $5ff8: $3b
    pop af                                        ; $5ff9: $f1
    dec de                                        ; $5ffa: $1b
    sbc b                                         ; $5ffb: $98
    ld h, h                                       ; $5ffc: $64
    add [hl]                                      ; $5ffd: $86
    ld [$bd03], sp                                ; $5ffe: $08 $03 $bd
    jp nc, $e54c                                  ; $6001: $d2 $4c $e5

    ld [hl], a                                    ; $6004: $77
    ld l, c                                       ; $6005: $69
    ld e, [hl]                                    ; $6006: $5e
    ld a, [hl]                                    ; $6007: $7e
    rst $00                                       ; $6008: $c7
    res 5, e                                      ; $6009: $cb $ab
    xor a                                         ; $600b: $af
    ld d, l                                       ; $600c: $55
    ld h, e                                       ; $600d: $63
    ld b, h                                       ; $600e: $44
    db $18                                        ; $600f: $18

    db $dd, $5e, $5c, $2f, $cd, $bf, $2a, $94, $31, $83, $66, $9c, $d6, $7f, $bf, $fd
    db $f6, $b7, $a3, $42, $e5, $f8, $3b, $96, $fc, $c5, $f5, $52, $f8, $e4, $dc, $59
    db $a8, $42, $3b, $67, $3b, $e7, $a8, $50, $39, $fe, $8e, $25, $7f, $71, $bd, $14
    db $3e, $f9, $94, $d8, $bc, $fc, $8e, $0a, $95, $e3, $ef, $58, $f2, $17, $d7, $4b
    db $e1, $93, $af, $9f, $1d, $2f, $b7, $e3, $49, $d7, $7f, $31, $83, $9c, $ca, $4f
    db $3e, $b8, $e0, $2f, $cf, $e6, $a2, $ec, $43, $95, $3a, $2c, $ed, $1d, $15, $2a
    db $c7, $df, $b1, $e4, $2f, $ae, $97, $c2, $27, $e7, $ce, $42, $15, $da, $a5, $79
    db $f9, $9d, $41, $d7, $9f, $ad, $c5, $d5, $1f, $a6, $c4, $fa, $49, $59, $7a, $79
    db $59, $95, $86, $5c, $ee, $03, $da, $39, $db, $39, $27, $1b, $68, $ce, $da, $51
    db $86, $dd, $5c, $8f, $cc, $08, $3b, $e9, $56, $4f, $f0, $6c, $ed, $66, $c7, $69
    db $e5, $29, $3b, $68, $e7, $6c, $e7, $9c, $64, $e9, $76, $ec, $29, $2d, $c7, $1e
    db $b3, $a3, $7b, $ed, $14, $cb, $29, $3d, $8e, $3d, $e5, $98, $53, $31, $9c, $d6
    db $7f, $bf, $fd, $f6, $b7, $63, $e3, $57, $2e, $49, $b7, $da, $51, $e2, $30, $0b
    db $55, $68, $e7, $1c, $15, $e3, $e4, $06, $c5, $61, $f2, $f0, $62, $7d, $86, $30
    db $dd, $e5, $01, $d6, $e2, $2a, $8e, $01

    daa                                           ; $60f8: $27
    cp l                                          ; $60f9: $bd
    push af                                       ; $60fa: $f5
    db $e3                                        ; $60fb: $e3
    pop hl                                        ; $60fc: $e1
    ld b, a                                       ; $60fd: $47
    or $37                                        ; $60fe: $f6 $37
    inc c                                         ; $6100: $0c
    dec a                                         ; $6101: $3d
    ld l, [hl]                                    ; $6102: $6e
    ld hl, sp-$79                                 ; $6103: $f8 $87
    rst $28                                       ; $6105: $ef
    ret z                                         ; $6106: $c8

    cp $0e                                        ; $6107: $fe $0e
    ccf                                           ; $6109: $3f
    or d                                          ; $610a: $b2
    rst $38                                       ; $610b: $ff
    jp Jump_000_3c8f                              ; $610c: $c3 $8f $3c


    ld h, b                                       ; $610f: $60

Call_024_6110:
    db $18                                        ; $6110: $18

    db $67, $90, $81, $67, $3b, $67, $3b, $67, $3b, $67, $c3

    dec l                                         ; $611c: $2d
    ld sp, $977d                                  ; $611d: $31 $7d $97
    ld h, [hl]                                    ; $6120: $66
    ldh [$d1], a                                  ; $6121: $e0 $d1
    adc $39                                       ; $6123: $ce $39
    push de                                       ; $6125: $d5
    ld a, [$cbc2]                                 ; $6126: $fa $c2 $cb
    push af                                       ; $6129: $f5
    rst $28                                       ; $612a: $ef
    adc d                                         ; $612b: $8a
    ld bc, $1d67                                  ; $612c: $01 $67 $1d

Call_024_612f:
    ld a, [hl]                                    ; $612f: $7e
    ld h, h                                       ; $6130: $64
    ld a, a                                       ; $6131: $7f
    db $eb                                        ; $6132: $eb
    ld [hl], l                                    ; $6133: $75
    ld hl, sp-$6f                                 ; $6134: $f8 $91
    db $fd                                        ; $6136: $fd
    rrca                                          ; $6137: $0f
    inc bc                                        ; $6138: $03
    dec a                                         ; $6139: $3d
    jp z, Jump_024_5585                           ; $613a: $ca $85 $55

    push hl                                       ; $613d: $e5
    pop bc                                        ; $613e: $c1
    ld [hl], a                                    ; $613f: $77
    ld h, c                                       ; $6140: $61
    ld sp, $faab                                  ; $6141: $31 $ab $fa
    or e                                          ; $6144: $b3
    ld l, $18                                     ; $6145: $2e $18
    ld h, a                                       ; $6147: $67
    ret nz                                        ; $6148: $c0

    rra                                           ; $6149: $1f
    adc [hl]                                      ; $614a: $8e
    ld bc, $f5fd                                  ; $614b: $01 $fd $f5
    cp c                                          ; $614e: $b9
    inc hl                                        ; $614f: $23
    ei                                            ; $6150: $fb
    dec de                                        ; $6151: $1b
    ld b, $fd                                     ; $6152: $06 $fd
    rst $30                                       ; $6154: $f7
    cp c                                          ; $6155: $b9
    inc hl                                        ; $6156: $23
    ei                                            ; $6157: $fb
    dec de                                        ; $6158: $1b
    ld b, $07                                     ; $6159: $06 $07
    db $f4                                        ; $615b: $f4
    cp c                                          ; $615c: $b9
    inc hl                                        ; $615d: $23
    ei                                            ; $615e: $fb
    dec de                                        ; $615f: $1b
    ld b, $07                                     ; $6160: $06 $07
    or $b9                                        ; $6162: $f6 $b9
    inc hl                                        ; $6164: $23
    ei                                            ; $6165: $fb
    dec de                                        ; $6166: $1b
    ld b, $3d                                     ; $6167: $06 $3d
    ld [hl], d                                    ; $6169: $72
    daa                                           ; $616a: $27
    ld l, e                                       ; $616b: $6b
    db $fd                                        ; $616c: $fd
    rrca                                          ; $616d: $0f
    rst $00                                       ; $616e: $c7
    cp l                                          ; $616f: $bd
    jp nc, $a8ac                                  ; $6170: $d2 $ac $a8

    push af                                       ; $6173: $f5
    xor c                                         ; $6174: $a9
    and $8b                                       ; $6175: $e6 $8b
    xor a                                         ; $6177: $af
    ld b, d                                       ; $6178: $42

jr_024_6179:
    rst $08                                       ; $6179: $cf
    and $e5                                       ; $617a: $e6 $e5
    jp nz, $abe4                                  ; $617c: $c2 $e4 $ab

    db $db                                        ; $617f: $db
    ld sp, hl                                     ; $6180: $f9
    dec [hl]                                      ; $6181: $35
    rst $28                                       ; $6182: $ef
    ld e, l                                       ; $6183: $5d
    jr nc, @-$21                                  ; $6184: $30 $dd

    ld [hl-], a                                   ; $6186: $32
    ld b, [hl]                                    ; $6187: $46
    db $ed                                        ; $6188: $ed
    ret nz                                        ; $6189: $c0

    ld l, l                                       ; $618a: $6d
    rst $00                                       ; $618b: $c7
    ld e, a                                       ; $618c: $5f
    scf                                           ; $618d: $37
    dec [hl]                                      ; $618e: $35
    sub c                                         ; $618f: $91
    ld c, c                                       ; $6190: $49
    ld [de], a                                    ; $6191: $12
    ld b, $dd                                     ; $6192: $06 $dd
    or d                                          ; $6194: $b2
    db $d3                                        ; $6195: $d3
    ld a, c                                       ; $6196: $79
    ld e, c                                       ; $6197: $59
    scf                                           ; $6198: $37
    dec [hl]                                      ; $6199: $35
    sub c                                         ; $619a: $91
    ld c, c                                       ; $619b: $49
    ld [de], a                                    ; $619c: $12
    ld b, $47                                     ; $619d: $06 $47
    adc e                                         ; $619f: $8b
    ld [bc], a                                    ; $61a0: $02
    xor h                                         ; $61a1: $ac
    sbc e                                         ; $61a2: $9b
    sbc d                                         ; $61a3: $9a
    ret z                                         ; $61a4: $c8

    inc h                                         ; $61a5: $24
    add hl, bc                                    ; $61a6: $09
    inc bc                                        ; $61a7: $03
    dec l                                         ; $61a8: $2d
    scf                                           ; $61a9: $37
    ld e, d                                       ; $61aa: $5a
    ld e, a                                       ; $61ab: $5f
    sub $4d                                       ; $61ac: $d6 $4d
    ld c, l                                       ; $61ae: $4d
    ld h, h                                       ; $61af: $64
    sub d                                         ; $61b0: $92
    add h                                         ; $61b1: $84
    ld bc, $1f2d                                  ; $61b2: $01 $2d $1f
    db $ed                                        ; $61b5: $ed
    cp [hl]                                       ; $61b6: $be
    ld e, e                                       ; $61b7: $5b
    db $fc                                        ; $61b8: $fc
    adc d                                         ; $61b9: $8a
    ld e, h                                       ; $61ba: $5c
    ld a, [bc]                                    ; $61bb: $0a
    sub $4d                                       ; $61bc: $d6 $4d
    ld c, l                                       ; $61be: $4d
    ld h, h                                       ; $61bf: $64
    sub d                                         ; $61c0: $92
    add h                                         ; $61c1: $84
    ld bc, $4147                                  ; $61c2: $01 $47 $41
    and a                                         ; $61c5: $a7
    inc h                                         ; $61c6: $24
    ei                                            ; $61c7: $fb
    cp b                                          ; $61c8: $b8
    db $d3                                        ; $61c9: $d3
    inc sp                                        ; $61ca: $33

Jump_024_61cb:
    dec e                                         ; $61cb: $1d
    inc bc                                        ; $61cc: $03
    daa                                           ; $61cd: $27
    daa                                           ; $61ce: $27
    push de                                       ; $61cf: $d5
    and c                                         ; $61d0: $a1
    ld h, h                                       ; $61d1: $64
    ld [hl-], a                                   ; $61d2: $32
    inc c                                         ; $61d3: $0c
    rst $00                                       ; $61d4: $c7
    ret z                                         ; $61d5: $c8

    ld a, l                                       ; $61d6: $7d
    or [hl]                                       ; $61d7: $b6
    ld d, e                                       ; $61d8: $53
    sbc $3d                                       ; $61d9: $de $3d
    ld a, $60                                     ; $61db: $3e $60
    rst $00                                       ; $61dd: $c7
    ld e, h                                       ; $61de: $5c
    ld [hl], a                                    ; $61df: $77
    and l                                         ; $61e0: $a5
    ld b, $03                                     ; $61e1: $06 $03
    dec a                                         ; $61e3: $3d
    ld d, e                                       ; $61e4: $53
    ld b, d                                       ; $61e5: $42
    ld a, $93                                     ; $61e6: $3e $93
    ld h, c                                       ; $61e8: $61
    daa                                           ; $61e9: $27
    dec hl                                        ; $61ea: $2b
    ld sp, $fad1                                  ; $61eb: $31 $d1 $fa
    rst $28                                       ; $61ee: $ef
    db $f4                                        ; $61ef: $f4
    ld c, h                                       ; $61f0: $4c
    rst $00                                       ; $61f1: $c7
    ld b, a                                       ; $61f2: $47
    ld h, a                                       ; $61f3: $67
    add [hl]                                      ; $61f4: $86
    db $10                                        ; $61f5: $10
    sub l                                         ; $61f6: $95
    add d                                         ; $61f7: $82
    or l                                          ; $61f8: $b5
    call nc, Call_024_612f                        ; $61f9: $d4 $2f $61
    db $dd                                        ; $61fc: $dd
    ld d, e                                       ; $61fd: $53
    ld a, [hl+]                                   ; $61fe: $2a
    db $d3                                        ; $61ff: $d3
    cp c                                          ; $6200: $b9
    db $f4                                        ; $6201: $f4
    dec sp                                        ; $6202: $3b
    call $18dc                                    ; $6203: $cd $dc $18
    ld bc, $a703                                  ; $6206: $01 $03 $a7
    ld d, [hl]                                    ; $6209: $56
    sbc [hl]                                      ; $620a: $9e
    dec e                                         ; $620b: $1d
    inc bc                                        ; $620c: $03
    db $eb                                        ; $620d: $eb
    sbc [hl]                                      ; $620e: $9e
    inc a                                         ; $620f: $3c
    ld a, e                                       ; $6210: $7b
    pop bc                                        ; $6211: $c1
    ld b, a                                       ; $6212: $47
    rst $38                                       ; $6213: $ff
    ld a, e                                       ; $6214: $7b
    db $fc                                        ; $6215: $fc
    ld a, [de]                                    ; $6216: $1a
    db $ec                                        ; $6217: $ec
    ret c                                         ; $6218: $d8

    and $31                                       ; $6219: $e6 $31
    ld b, a                                       ; $621b: $47
    rst $18                                       ; $621c: $df
    ld a, [hl+]                                   ; $621d: $2a
    add l                                         ; $621e: $85
    sub $9a                                       ; $621f: $d6 $9a
    ld b, d                                       ; $6221: $42
    jr jr_024_6251                                ; $6222: $18 $2d

    and h                                         ; $6224: $a4
    push af                                       ; $6225: $f5
    rst $18                                       ; $6226: $df
    ld [hl], c                                    ; $6227: $71
    ld c, d                                       ; $6228: $4a
    ld bc, $4706                                  ; $6229: $01 $06 $47
    ccf                                           ; $622c: $3f
    rst $00                                       ; $622d: $c7
    ld d, h                                       ; $622e: $54
    ld e, c                                       ; $622f: $59
    adc e                                         ; $6230: $8b
    daa                                           ; $6231: $27
    dec a                                         ; $6232: $3d
    ld b, $2d                                     ; $6233: $06 $2d
    scf                                           ; $6235: $37
    ld e, d                                       ; $6236: $5a
    ld e, a                                       ; $6237: $5f
    halt                                          ; $6238: $76
    ld b, $dd                                     ; $6239: $06 $dd
    ld a, [hl+]                                   ; $623b: $2a
    add l                                         ; $623c: $85
    sub $9a                                       ; $623d: $d6 $9a
    ld b, d                                       ; $623f: $42
    jr jr_024_627f                                ; $6240: $18 $3d

    inc sp                                        ; $6242: $33
    jp c, $56d0                                   ; $6243: $da $d0 $56

    ld a, d                                       ; $6246: $7a
    inc c                                         ; $6247: $0c
    ld b, a                                       ; $6248: $47
    ld d, l                                       ; $6249: $55
    ld c, c                                       ; $624a: $49
    rst $10                                       ; $624b: $d7
    rra                                           ; $624c: $1f
    inc bc                                        ; $624d: $03
    ld b, a                                       ; $624e: $47
    sub c                                         ; $624f: $91
    ld e, a                                       ; $6250: $5f

jr_024_6251:
    sub [hl]                                      ; $6251: $96
    cp $18                                        ; $6252: $fe $18
    dec a                                         ; $6254: $3d
    ld l, a                                       ; $6255: $6f
    db $10                                        ; $6256: $10
    inc a                                         ; $6257: $3c
    pop af                                        ; $6258: $f1
    rra                                           ; $6259: $1f

jr_024_625a:
    reti                                          ; $625a: $d9


    cp d                                          ; $625b: $ba
    and a                                         ; $625c: $a7
    rst $18                                       ; $625d: $df
    inc h                                         ; $625e: $24
    inc c                                         ; $625f: $0c
    rst $00                                       ; $6260: $c7
    adc e                                         ; $6261: $8b
    ld [de], a                                    ; $6262: $12
    ld e, e                                       ; $6263: $5b

jr_024_6264:
    rst $08                                       ; $6264: $cf
    dec de                                        ; $6265: $1b
    inc b                                         ; $6266: $04
    ld c, a                                       ; $6267: $4f
    db $fc                                        ; $6268: $fc
    ld b, a                                       ; $6269: $47
    or [hl]                                       ; $626a: $b6
    xor $e9                                       ; $626b: $ee $e9
    scf                                           ; $626d: $37
    add hl, bc                                    ; $626e: $09
    inc bc                                        ; $626f: $03
    ld h, a                                       ; $6270: $67
    ld e, [hl]                                    ; $6271: $5e
    rst $10                                       ; $6272: $d7
    ldh a, [$72]                                  ; $6273: $f0 $72
    ld e, b                                       ; $6275: $58
    rst $30                                       ; $6276: $f7
    db $f4                                        ; $6277: $f4
    sbc e                                         ; $6278: $9b
    add h                                         ; $6279: $84
    ld bc, $2fad                                  ; $627a: $01 $ad $2f
    db $ed                                        ; $627d: $ed
    ld e, e                                       ; $627e: $5b

jr_024_627f:
    ld e, l                                       ; $627f: $5d
    or $eb                                        ; $6280: $f6 $eb
    sbc [hl]                                      ; $6282: $9e
    ld a, [hl]                                    ; $6283: $7e
    sub e                                         ; $6284: $93
    jr nc, jr_024_6264                            ; $6285: $30 $dd

    cp a                                          ; $6287: $bf
    db $d3                                        ; $6288: $d3
    ld a, c                                       ; $6289: $79
    reti                                          ; $628a: $d9


    add hl, de                                    ; $628b: $19
    sbc l                                         ; $628c: $9d
    ld [hl], l                                    ; $628d: $75
    ld c, a                                       ; $628e: $4f
    cp a                                          ; $628f: $bf
    ld c, c                                       ; $6290: $49
    jr jr_024_625a                                ; $6291: $18 $c7

jr_024_6293:
    adc e                                         ; $6293: $8b
    ld [de], a                                    ; $6294: $12
    ld e, e                                       ; $6295: $5b
    rst $30                                       ; $6296: $f7
    rst $28                                       ; $6297: $ef
    ld [hl], h                                    ; $6298: $74
    ld e, [hl]                                    ; $6299: $5e
    halt                                          ; $629a: $76
    ld b, [hl]                                    ; $629b: $46
    ld h, a                                       ; $629c: $67
    db $dd                                        ; $629d: $dd
    db $d3                                        ; $629e: $d3
    ld l, a                                       ; $629f: $6f
    ld [de], a                                    ; $62a0: $12
    ld b, $c7                                     ; $62a1: $06 $c7
    ld [hl], d                                    ; $62a3: $72
    ld hl, sp-$36                                 ; $62a4: $f8 $ca
    ld hl, sp+$63                                 ; $62a6: $f8 $63
    db $dd                                        ; $62a8: $dd
    ld d, h                                       ; $62a9: $54
    ret c                                         ; $62aa: $d8

    ld c, [hl]                                    ; $62ab: $4e
    ld sp, $fb61                                  ; $62ac: $31 $61 $fb
    push hl                                       ; $62af: $e5
    ldh a, [rNR33]                                ; $62b0: $f0 $1d
    reti                                          ; $62b2: $d9


    rst $18                                       ; $62b3: $df
    jr nc, jr_024_6293                            ; $62b4: $30 $dd

    ld c, d                                       ; $62b6: $4a
    ld h, $fc                                     ; $62b7: $26 $fc
    cp d                                          ; $62b9: $ba
    xor c                                         ; $62ba: $a9
    jr nc, jr_024_62c9                            ; $62bb: $30 $0c

    dec a                                         ; $62bd: $3d
    ld b, h                                       ; $62be: $44
    reti                                          ; $62bf: $d9


    ld h, e                                       ; $62c0: $63
    rst $00                                       ; $62c1: $c7
    ld [hl], d                                    ; $62c2: $72
    cp b                                          ; $62c3: $b8
    adc [hl]                                      ; $62c4: $8e
    ld bc, $bfa7                                  ; $62c5: $01 $a7 $bf
    or d                                          ; $62c8: $b2

jr_024_62c9:
    ld h, [hl]                                    ; $62c9: $66

jr_024_62ca:
    sbc [hl]                                      ; $62ca: $9e
    db $eb                                        ; $62cb: $eb
    ld hl, $beca                                  ; $62cc: $21 $ca $be
    dec bc                                        ; $62cf: $0b
    ld b, $3d                                     ; $62d0: $06 $3d
    push af                                       ; $62d2: $f5
    ld a, [$60a5]                                 ; $62d3: $fa $a5 $60
    halt                                          ; $62d6: $76
    jp z, $cbd2                                   ; $62d7: $ca $d2 $cb

    srl d                                         ; $62da: $cb $3a
    ld d, c                                       ; $62dc: $51
    sbc e                                         ; $62dd: $9b
    rla                                           ; $62de: $17
    or h                                          ; $62df: $b4
    ld [hl], l                                    ; $62e0: $75
    sub a                                         ; $62e1: $97
    rlca                                          ; $62e2: $07
    sbc b                                         ; $62e3: $98
    sub a                                         ; $62e4: $97
    rst $18                                       ; $62e5: $df
    pop de                                        ; $62e6: $d1
    dec sp                                        ; $62e7: $3b
    jp c, Jump_000_27b8                           ; $62e8: $da $b8 $27

    call $9573                                    ; $62eb: $cd $73 $95
    ld d, d                                       ; $62ee: $52
    push af                                       ; $62ef: $f5

jr_024_62f0:
    ld [hl], c                                    ; $62f0: $71
    ld l, $ca                                     ; $62f1: $2e $ca
    ld e, $61                                     ; $62f3: $1e $61
    dec a                                         ; $62f5: $3d
    ld b, h                                       ; $62f6: $44
    reti                                          ; $62f7: $d9


    xor a                                         ; $62f8: $af
    sbc e                                         ; $62f9: $9b
    ld d, d                                       ; $62fa: $52
    push af                                       ; $62fb: $f5
    ld sp, $eb3e                                  ; $62fc: $31 $3e $eb
    add d                                         ; $62ff: $82
    ld bc, $443d                                  ; $6300: $01 $3d $44
    reti                                          ; $6303: $d9


    xor a                                         ; $6304: $af
    ld e, e                                       ; $6305: $5b
    add [hl]                                      ; $6306: $86
    sbc l                                         ; $6307: $9d
    ld hl, sp-$02                                 ; $6308: $f8 $fe
    ld e, l                                       ; $630a: $5d
    jr nc, jr_024_62ca                            ; $630b: $30 $bd

    jp nc, Jump_024_52ac                          ; $630d: $d2 $ac $52

    and d                                         ; $6310: $a2
    db $f4                                        ; $6311: $f4
    ld [hl], l                                    ; $6312: $75
    ld l, [hl]                                    ; $6313: $6e
    ld d, l                                       ; $6314: $55
    scf                                           ; $6315: $37
    sbc l                                         ; $6316: $9d
    add hl, hl                                    ; $6317: $29
    dec [hl]                                      ; $6318: $35
    dec bc                                        ; $6319: $0b
    ld d, e                                       ; $631a: $53
    ld a, [hl]                                    ; $631b: $7e
    sub l                                         ; $631c: $95
    ld a, [bc]                                    ; $631d: $0a
    add e                                         ; $631e: $83
    add hl, hl                                    ; $631f: $29
    xor h                                         ; $6320: $ac
    ld c, c                                       ; $6321: $49
    inc hl                                        ; $6322: $23
    dec sp                                        ; $6323: $3b
    ld l, $e3                                     ; $6324: $2e $e3
    call $2d1d                                    ; $6326: $cd $1d $2d
    ld l, a                                       ; $6329: $6f
    cp l                                          ; $632a: $bd
    or b                                          ; $632b: $b0
    dec bc                                        ; $632c: $0b
    or e                                          ; $632d: $b3
    ld c, l                                       ; $632e: $4d
    adc h                                         ; $632f: $8c
    ld e, l                                       ; $6330: $5d
    db $30                                        ; $6331: $30

    db $bd, $d2, $ac, $a8, $f5, $67, $a7, $21, $36, $dd, $71, $1a, $a6, $81, $f5, $bc
    db $5e, $95, $87, $29, $b1, $f5, $bc, $1c, $55, $18, $ac, $9b, $0a, $eb, $82, $01

    cp l                                          ; $6352: $bd
    jp nc, $bf8c                                  ; $6353: $d2 $8c $bf

    ld sp, $fdae                                  ; $6356: $31 $ae $fd
    xor e                                         ; $6359: $ab
    ld [hl-], a                                   ; $635a: $32
    add $af                                       ; $635b: $c6 $af
    db $fc                                        ; $635d: $fc
    ld d, d                                       ; $635e: $52
    jr nc, jr_024_6390                            ; $635f: $30 $2f

    cp a                                          ; $6361: $bf
    db $e3                                        ; $6362: $e3
    and l                                         ; $6363: $a5
    or c                                          ; $6364: $b1
    db $ed                                        ; $6365: $ed
    ld c, e                                       ; $6366: $4b
    inc l                                         ; $6367: $2c
    ld h, l                                       ; $6368: $65
    rst $00                                       ; $6369: $c7
    ld a, h                                       ; $636a: $7c
    ld d, l                                       ; $636b: $55
    rst $28                                       ; $636c: $ef
    add d                                         ; $636d: $82
    ld bc, $d2bd                                  ; $636e: $01 $bd $d2
    adc h                                         ; $6371: $8c
    cp a                                          ; $6372: $bf
    ld sp, $fdae                                  ; $6373: $31 $ae $fd
    xor e                                         ; $6376: $ab
    ld [hl-], a                                   ; $6377: $32
    add $af                                       ; $6378: $c6 $af
    db $fc                                        ; $637a: $fc
    ld d, d                                       ; $637b: $52
    jr nc, @+$31                                  ; $637c: $30 $2f

    cp a                                          ; $637e: $bf
    ld d, [hl]                                    ; $637f: $56
    ld h, e                                       ; $6380: $63

jr_024_6381:
    db $db                                        ; $6381: $db
    pop af                                        ; $6382: $f1
    dec sp                                        ; $6383: $3b
    add $b6                                       ; $6384: $c6 $b6
    ld [hl], a                                    ; $6386: $77
    call z, $f557                                 ; $6387: $cc $57 $f5
    ld l, $18                                     ; $638a: $2e $18
    cp l                                          ; $638c: $bd
    jp nc, $bf8c                                  ; $638d: $d2 $8c $bf

jr_024_6390:
    ld sp, $fdae                                  ; $6390: $31 $ae $fd
    xor e                                         ; $6393: $ab
    ld [hl-], a                                   ; $6394: $32
    add $af                                       ; $6395: $c6 $af
    db $fc                                        ; $6397: $fc
    ld d, d                                       ; $6398: $52
    jr nc, @+$31                                  ; $6399: $30 $2f

    cp a                                          ; $639b: $bf
    db $d3                                        ; $639c: $d3
    push de                                       ; $639d: $d5
    ld a, [$4554]                                 ; $639e: $fa $54 $45
    push hl                                       ; $63a1: $e5
    ld [hl], a                                    ; $63a2: $77
    call z, $f557                                 ; $63a3: $cc $57 $f5
    ld l, $18                                     ; $63a6: $2e $18
    cp l                                          ; $63a8: $bd
    jp nc, $bf8c                                  ; $63a9: $d2 $8c $bf

    ld sp, $fdae                                  ; $63ac: $31 $ae $fd
    xor e                                         ; $63af: $ab
    ld [hl-], a                                   ; $63b0: $32
    add $af                                       ; $63b1: $c6 $af
    db $fc                                        ; $63b3: $fc
    ld d, d                                       ; $63b4: $52
    jr nc, jr_024_63e6                            ; $63b5: $30 $2f

    cp a                                          ; $63b7: $bf

Jump_024_63b8:
    sub [hl]                                      ; $63b8: $96
    ret c                                         ; $63b9: $d8

    ld a, b                                       ; $63ba: $78
    ld a, c                                       ; $63bb: $79
    cp c                                          ; $63bc: $b9
    or h                                          ; $63bd: $b4
    ld h, e                                       ; $63be: $63
    cp [hl]                                       ; $63bf: $be
    xor d                                         ; $63c0: $aa
    ld [hl], a                                    ; $63c1: $77
    pop bc                                        ; $63c2: $c1
    cp l                                          ; $63c3: $bd
    jp nc, $a8ac                                  ; $63c4: $d2 $ac $a8

    push af                                       ; $63c7: $f5
    xor c                                         ; $63c8: $a9
    and $33                                       ; $63c9: $e6 $33
    inc d                                         ; $63cb: $14
    or e                                          ; $63cc: $b3
    xor d                                         ; $63cd: $aa
    ccf                                           ; $63ce: $3f
    sbc e                                         ; $63cf: $9b
    sub a                                         ; $63d0: $97
    dec bc                                        ; $63d1: $0b
    dec bc                                        ; $63d2: $0b
    inc [hl]                                      ; $63d3: $34
    db $fc                                        ; $63d4: $fc
    dec [hl]                                      ; $63d5: $35
    rst $28                                       ; $63d6: $ef
    ld e, l                                       ; $63d7: $5d
    jr nc, jr_024_6381                            ; $63d8: $30 $a7

    ld l, e                                       ; $63da: $6b
    push af                                       ; $63db: $f5
    dec sp                                        ; $63dc: $3b
    ld b, [hl]                                    ; $63dd: $46
    or h                                          ; $63de: $b4
    jp z, Jump_000_2e79                           ; $63df: $ca $79 $2e

    ld a, b                                       ; $63e2: $78
    ld e, a                                       ; $63e3: $5f
    ld e, e                                       ; $63e4: $5b
    xor e                                         ; $63e5: $ab

jr_024_63e6:
    ld a, [$794e]                                 ; $63e6: $fa $4e $79
    db $eb                                        ; $63e9: $eb
    adc l                                         ; $63ea: $8d
    pop af                                        ; $63eb: $f1
    ld l, e                                       ; $63ec: $6b
    or b                                          ; $63ed: $b0
    db $d3                                        ; $63ee: $d3
    ccf                                           ; $63ef: $3f
    db $fc                                        ; $63f0: $fc
    or b                                          ; $63f1: $b0
    dec l                                         ; $63f2: $2d
    ld a, [de]                                    ; $63f3: $1a
    ld h, e                                       ; $63f4: $63
    rla                                           ; $63f5: $17
    inc c                                         ; $63f6: $0c
    and a                                         ; $63f7: $a7
    and h                                         ; $63f8: $a4
    or h                                          ; $63f9: $b4
    ld e, a                                       ; $63fa: $5f
    ld a, h                                       ; $63fb: $7c
    ld b, l                                       ; $63fc: $45
    ld h, c                                       ; $63fd: $61
    rrca                                          ; $63fe: $0f
    sub l                                         ; $63ff: $95
    halt                                          ; $6400: $76
    sbc [hl]                                      ; $6401: $9e
    ld [hl], l                                    ; $6402: $75
    reti                                          ; $6403: $d9


    ld c, [hl]                                    ; $6404: $4e
    rst $10                                       ; $6405: $d7
    ld [$39e7], a                                 ; $6406: $ea $e7 $39
    ld a, c                                       ; $6409: $79
    sub a                                         ; $640a: $97
    ei                                            ; $640b: $fb
    sub $5f                                       ; $640c: $d6 $5f
    cp c                                          ; $640e: $b9
    ld hl, $c7c2                                  ; $640f: $21 $c2 $c7
    ld e, l                                       ; $6412: $5d
    ld h, d                                       ; $6413: $62
    di                                            ; $6414: $f3
    ld a, [c]                                     ; $6415: $f2
    xor e                                         ; $6416: $ab
    ld d, d                                       ; $6417: $52
    db $e4                                        ; $6418: $e4
    dec hl                                        ; $6419: $2b
    ld e, a                                       ; $641a: $5f
    db $fd                                        ; $641b: $fd
    sbc e                                         ; $641c: $9b
    ld a, c                                       ; $641d: $79
    adc $50                                       ; $641e: $ce $50
    call z, Call_000_3eaa                         ; $6420: $cc $aa $3e
    cpl                                           ; $6423: $2f
    ccf                                           ; $6424: $3f
    sub [hl]                                      ; $6425: $96
    add hl, hl                                    ; $6426: $29
    ld e, l                                       ; $6427: $5d
    jr nc, jr_024_6457                            ; $6428: $30 $2d

    rst $38                                       ; $642a: $ff
    cp e                                          ; $642b: $bb
    or $9a                                        ; $642c: $f6 $9a
    inc [hl]                                      ; $642e: $34
    xor e                                         ; $642f: $ab
    sub h                                         ; $6430: $94
    ld d, [hl]                                    ; $6431: $56
    xor c                                         ; $6432: $a9
    ld d, a                                       ; $6433: $57
    ld h, l                                       ; $6434: $65
    ld e, [hl]                                    ; $6435: $5e

jr_024_6436:
    ld a, [hl]                                    ; $6436: $7e
    ret                                           ; $6437: $c9


    rst $00                                       ; $6438: $c7
    ld l, $18                                     ; $6439: $2e $18
    rst $00                                       ; $643b: $c7
    ld h, l                                       ; $643c: $65
    adc h                                         ; $643d: $8c
    ret                                           ; $643e: $c9


    rst $28                                       ; $643f: $ef
    cp b                                          ; $6440: $b8
    ld a, b                                       ; $6441: $78
    sbc l                                         ; $6442: $9d
    cp a                                          ; $6443: $bf
    ld d, l                                       ; $6444: $55
    cp l                                          ; $6445: $bd
    ld b, $8b                                     ; $6446: $06 $8b
    xor a                                         ; $6448: $af
    xor h                                         ; $6449: $ac
    dec bc                                        ; $644a: $0b
    ld b, $dd                                     ; $644b: $06 $dd
    db $e4                                        ; $644d: $e4
    push de                                       ; $644e: $d5
    ld a, a                                       ; $644f: $7f
    ld e, [hl]                                    ; $6450: $5e
    ld a, [hl]                                    ; $6451: $7e
    ld d, l                                       ; $6452: $55
    adc d                                         ; $6453: $8a
    ld a, h                                       ; $6454: $7c
    push hl                                       ; $6455: $e5
    db $eb                                        ; $6456: $eb

jr_024_6457:
    and h                                         ; $6457: $a4
    rst $18                                       ; $6458: $df
    and h                                         ; $6459: $a4
    ld l, $18                                     ; $645a: $2e $18
    rst $00                                       ; $645c: $c7
    ld l, c                                       ; $645d: $69
    sbc b                                         ; $645e: $98
    ld b, $d6                                     ; $645f: $06 $d6
    di                                            ; $6461: $f3
    ld a, d                                       ; $6462: $7a
    ld d, l                                       ; $6463: $55
    ld e, $a6                                     ; $6464: $1e $a6
    call nz, $f3d6                                ; $6466: $c4 $d6 $f3
    ld [hl], d                                    ; $6469: $72
    ld d, h                                       ; $646a: $54
    ld h, c                                       ; $646b: $61
    or b                                          ; $646c: $b0
    ld l, [hl]                                    ; $646d: $6e
    ld a, [hl+]                                   ; $646e: $2a
    ld l, h                                       ; $646f: $6c
    and c                                         ; $6470: $a1
    ld a, d                                       ; $6471: $7a
    ld d, l                                       ; $6472: $55
    ld d, $68                                     ; $6473: $16 $68
    ld hl, sp+$5d                                 ; $6475: $f8 $5d
    jr nc, jr_024_6436                            ; $6477: $30 $bd

    jp nc, $d02c                                  ; $6479: $d2 $2c $d0

    ld c, e                                       ; $647c: $4b
    rst $08                                       ; $647d: $cf
    and [hl]                                      ; $647e: $a6
    and e                                         ; $647f: $a3
    rst $20                                       ; $6480: $e7
    rla                                           ; $6481: $17
    rst $18                                       ; $6482: $df
    ld a, [$0bb1]                                 ; $6483: $fa $b1 $0b
    ld b, $bd                                     ; $6486: $06 $bd
    jp nc, $d02c                                  ; $6488: $d2 $2c $d0

    ld c, e                                       ; $648b: $4b
    rst $08                                       ; $648c: $cf
    and [hl]                                      ; $648d: $a6
    and e                                         ; $648e: $a3
    rst $20                                       ; $648f: $e7
    rlca                                          ; $6490: $07
    sbc l                                         ; $6491: $9d
    adc a                                         ; $6492: $8f
    ld [hl], c                                    ; $6493: $71
    pop af                                        ; $6494: $f1
    xor l                                         ; $6495: $ad
    rra                                           ; $6496: $1f
    cp e                                          ; $6497: $bb
    ld h, b                                       ; $6498: $60
    dec l                                         ; $6499: $2d
    ld l, $4f                                     ; $649a: $2e $4f
    add c                                         ; $649c: $81
    sub a                                         ; $649d: $97
    push af                                       ; $649e: $f5
    ld [hl], l                                    ; $649f: $75
    ld h, h                                       ; $64a0: $64
    ld a, a                                       ; $64a1: $7f
    jp $bcc7                                      ; $64a2: $c3 $c7 $bc


    db $fd                                        ; $64a5: $fd
    inc b                                         ; $64a6: $04
    cp a                                          ; $64a7: $bf
    cp [hl]                                       ; $64a8: $be
    adc [hl]                                      ; $64a9: $8e
    db $ec                                        ; $64aa: $ec
    ld l, a                                       ; $64ab: $6f
    jr jr_024_64d5                                ; $64ac: $18 $27

    ld l, e                                       ; $64ae: $6b
    ld [hl], b                                    ; $64af: $70
    xor e                                         ; $64b0: $ab
    or l                                          ; $64b1: $b5
    cp b                                          ; $64b2: $b8
    xor h                                         ; $64b3: $ac
    xor a                                         ; $64b4: $af
    inc hl                                        ; $64b5: $23
    ei                                            ; $64b6: $fb
    dec de                                        ; $64b7: $1b
    ld b, $27                                     ; $64b8: $06 $27
    ld l, e                                       ; $64ba: $6b
    ld [hl], b                                    ; $64bb: $70
    xor e                                         ; $64bc: $ab
    dec e                                         ; $64bd: $1d
    di                                            ; $64be: $f3
    or $fa                                        ; $64bf: $f6 $fa
    ld a, [hl-]                                   ; $64c1: $3a
    or d                                          ; $64c2: $b2
    cp a                                          ; $64c3: $bf
    ld h, c                                       ; $64c4: $61
    ld b, a                                       ; $64c5: $47
    dec b                                         ; $64c6: $05
    scf                                           ; $64c7: $37
    ld e, [hl]                                    ; $64c8: $5e
    ld l, a                                       ; $64c9: $6f

jr_024_64ca:
    sub $d7                                       ; $64ca: $d6 $d7
    sub c                                         ; $64cc: $91
    db $fd                                        ; $64cd: $fd
    dec c                                         ; $64ce: $0d
    inc bc                                        ; $64cf: $03
    dec l                                         ; $64d0: $2d
    xor [hl]                                      ; $64d1: $ae
    pop hl                                        ; $64d2: $e1
    dec h                                         ; $64d3: $25
    ld e, l                                       ; $64d4: $5d

jr_024_64d5:
    ld e, a                                       ; $64d5: $5f
    ld b, a                                       ; $64d6: $47
    or $37                                        ; $64d7: $f6 $37
    inc c                                         ; $64d9: $0c
    ld d, $9f                                     ; $64da: $16 $9f
    dec hl                                        ; $64dc: $2b
    ld hl, sp-$3d                                 ; $64dd: $f8 $c3
    ld [bc], a                                    ; $64df: $02
    ld a, c                                       ; $64e0: $79
    push af                                       ; $64e1: $f5
    add hl, hl                                    ; $64e2: $29
    or c                                          ; $64e3: $b1
    ld a, c                                       ; $64e4: $79
    ld a, c                                       ; $64e5: $79
    ld sp, hl                                     ; $64e6: $f9
    ld a, [de]                                    ; $64e7: $1a
    ld c, h                                       ; $64e8: $4c
    ld d, a                                       ; $64e9: $57
    xor c                                         ; $64ea: $a9
    or b                                          ; $64eb: $b0
    ld e, l                                       ; $64ec: $5d
    jp c, Jump_024_79f5                           ; $64ed: $da $f5 $79

    ld h, [hl]                                    ; $64f0: $66
    rla                                           ; $64f1: $17
    inc c                                         ; $64f2: $0c
    xor l                                         ; $64f3: $ad
    cpl                                           ; $64f4: $2f
    ld e, a                                       ; $64f5: $5f
    add e                                         ; $64f6: $83
    dec [hl]                                      ; $64f7: $35
    ld l, c                                       ; $64f8: $69
    ld h, h                                       ; $64f9: $64
    and a                                         ; $64fa: $a7
    ld a, a                                       ; $64fb: $7f
    ld hl, sp+$61                                 ; $64fc: $f8 $61
    ld e, e                                       ; $64fe: $5b
    inc [hl]                                      ; $64ff: $34
    add $b5                                       ; $6500: $c6 $b5
    or l                                          ; $6502: $b5
    xor d                                         ; $6503: $aa
    ld [hl], e                                    ; $6504: $73
    ld [hl], a                                    ; $6505: $77
    jp z, Jump_024_6f5b                           ; $6506: $ca $5b $6f

    adc h                                         ; $6509: $8c
    adc a                                         ; $650a: $8f
    jr nc, jr_024_64ca                            ; $650b: $30 $bd

    jp nc, $feac                                  ; $650d: $d2 $ac $fe

    rst $18                                       ; $6510: $df
    reti                                          ; $6511: $d9


    ld [hl], l                                    ; $6512: $75
    xor $5a                                       ; $6513: $ee $5a
    ld d, l                                       ; $6515: $55
    and h                                         ; $6516: $a4
    ld b, c                                       ; $6517: $41
    ld [$6935], sp                                ; $6518: $08 $35 $69
    add $3f                                       ; $651b: $c6 $3f
    ld sp, hl                                     ; $651d: $f9
    cp h                                          ; $651e: $bc
    ld c, b                                       ; $651f: $48
    sbc d                                         ; $6520: $9a
    and b                                         ; $6521: $a0
    ld c, h                                       ; $6522: $4c
    rla                                           ; $6523: $17
    db $d3                                        ; $6524: $d3
    rst $20                                       ; $6525: $e7
    cp c                                          ; $6526: $b9

Jump_024_6527:
    ldh [$7d], a                                  ; $6527: $e0 $7d
    rst $10                                       ; $6529: $d7
    ld de, $1606                                  ; $652a: $11 $06 $16
    ld a, e                                       ; $652d: $7b
    ld c, l                                       ; $652e: $4d
    sbc d                                         ; $652f: $9a
    sbc d                                         ; $6530: $9a
    db $fc                                        ; $6531: $fc
    jr z, jr_024_65b1                             ; $6532: $28 $7d

    ld l, l                                       ; $6534: $6d
    db $d3                                        ; $6535: $d3
    ld e, h                                       ; $6536: $5c
    ld a, [bc]                                    ; $6537: $0a
    sub $f3                                       ; $6538: $d6 $f3
    ld [hl], d                                    ; $653a: $72
    ld d, h                                       ; $653b: $54
    ld h, c                                       ; $653c: $61
    db $eb                                        ; $653d: $eb
    and [hl]                                      ; $653e: $a6
    jp nz, Jump_000_3b80                          ; $653f: $c2 $80 $3b

    cp $57                                        ; $6542: $fe $57
    call nc, $a3fa                                ; $6544: $d4 $fa $a3
    db $f4                                        ; $6547: $f4
    ld [hl], d                                    ; $6548: $72
    add hl, hl                                    ; $6549: $29
    sbc b                                         ; $654a: $98
    rst $20                                       ; $654b: $e7
    ld e, h                                       ; $654c: $5c
    ld h, e                                       ; $654d: $63
    ld a, l                                       ; $654e: $7d
    jp c, $e34e                                   ; $654f: $da $4e $e3

    ld [$2703], sp                                ; $6552: $08 $03 $27
    ld h, l                                       ; $6555: $65
    sub $61                                       ; $6556: $d6 $61
    pop af                                        ; $6558: $f1
    sub $7f                                       ; $6559: $d6 $7f
    call $acd7                                    ; $655b: $cd $d7 $ac
    cp a                                          ; $655e: $bf
    and d                                         ; $655f: $a2
    ld l, h                                       ; $6560: $6c
    ld a, [hl-]                                   ; $6561: $3a
    ld c, c                                       ; $6562: $49
    inc de                                        ; $6563: $13
    sub h                                         ; $6564: $94
    ld sp, hl                                     ; $6565: $f9
    dec c                                         ; $6566: $0d
    sbc a                                         ; $6567: $9f
    cp e                                          ; $6568: $bb
    ld d, [hl]                                    ; $6569: $56
    dec d                                         ; $656a: $15
    ld l, c                                       ; $656b: $69
    ret nc                                        ; $656c: $d0

    sub $33                                       ; $656d: $d6 $33
    ld c, l                                       ; $656f: $4d
    ld h, h                                       ; $6570: $64
    ld l, e                                       ; $6571: $6b
    cp [hl]                                       ; $6572: $be
    inc l                                         ; $6573: $2c
    sbc $fa                                       ; $6574: $de $fa
    cpl                                           ; $6576: $2f
    db $fc                                        ; $6577: $fc
    ld sp, hl                                     ; $6578: $f9
    set 5, h                                      ; $6579: $cb $ec
    bit 4, c                                      ; $657b: $cb $61
    call $9997                                    ; $657d: $cd $97 $99
    ld c, [hl]                                    ; $6580: $4e
    ld d, a                                       ; $6581: $57
    inc c                                         ; $6582: $0c
    and a                                         ; $6583: $a7
    inc h                                         ; $6584: $24
    cp a                                          ; $6585: $bf
    ldh [$7d], a                                  ; $6586: $e0 $7d
    ld c, c                                       ; $6588: $49
    ld l, e                                       ; $6589: $6b
    ld e, [hl]                                    ; $658a: $5e
    sub $4e                                       ; $658b: $d6 $4e
    ld [hl], l                                    ; $658d: $75
    xor $5a                                       ; $658e: $ee $5a
    ld d, l                                       ; $6590: $55
    and h                                         ; $6591: $a4
    ld b, c                                       ; $6592: $41
    jr jr_024_65b1                                ; $6593: $18 $1c

    adc [hl]                                      ; $6595: $8e
    db $ec                                        ; $6596: $ec
    ld l, a                                       ; $6597: $6f
    ld a, l                                       ; $6598: $7d
    inc e                                         ; $6599: $1c
    reti                                          ; $659a: $d9


    rst $38                                       ; $659b: $ff
    ld e, d                                       ; $659c: $5a
    xor d                                         ; $659d: $aa
    ld a, c                                       ; $659e: $79
    cp d                                          ; $659f: $ba
    add $3e                                       ; $65a0: $c6 $3e
    add a                                         ; $65a2: $87
    ld bc, $443d                                  ; $65a3: $01 $3d $44
    add hl, bc                                    ; $65a6: $09
    db $ec                                        ; $65a7: $ec
    dec de                                        ; $65a8: $1b
    jr jr_024_65fc                                ; $65a9: $18 $51

    cp a                                          ; $65ab: $bf
    ld c, c                                       ; $65ac: $49
    db $eb                                        ; $65ad: $eb
    ld d, $15                                     ; $65ae: $16 $15
    nop                                           ; $65b0: $00

jr_024_65b1:
    inc bc                                        ; $65b1: $03
    xor l                                         ; $65b2: $ad
    cpl                                           ; $65b3: $2f
    db $ed                                        ; $65b4: $ed
    adc h                                         ; $65b5: $8c
    add hl, de                                    ; $65b6: $19
    inc [hl]                                      ; $65b7: $34
    db $eb                                        ; $65b8: $eb
    ld d, $15                                     ; $65b9: $16 $15
    nop                                           ; $65bb: $00
    inc bc                                        ; $65bc: $03
    rst $00                                       ; $65bd: $c7
    cp h                                          ; $65be: $bc
    db $fd                                        ; $65bf: $fd
    inc b                                         ; $65c0: $04
    cp a                                          ; $65c1: $bf
    and e                                         ; $65c2: $a3
    ld [bc], a                                    ; $65c3: $02
    cp l                                          ; $65c4: $bd
    inc b                                         ; $65c5: $04
    cp [hl]                                       ; $65c6: $be
    ld h, e                                       ; $65c7: $63
    ld d, h                                       ; $65c8: $54
    ld [$4a3b], a                                 ; $65c9: $ea $3b $4a
    ld a, h                                       ; $65cc: $7c
    db $dd                                        ; $65cd: $dd
    and d                                         ; $65ce: $a2
    ld [bc], a                                    ; $65cf: $02
    ld h, b                                       ; $65d0: $60
    ld b, a                                       ; $65d1: $47
    ld c, e                                       ; $65d2: $4b
    ld h, [hl]                                    ; $65d3: $66
    cp b                                          ; $65d4: $b8
    db $e3                                        ; $65d5: $e3
    ld [c], a                                     ; $65d6: $e2
    dec c                                         ; $65d7: $0d
    adc d                                         ; $65d8: $8a
    xor a                                         ; $65d9: $af
    ld e, e                                       ; $65da: $5b
    ld d, h                                       ; $65db: $54
    nop                                           ; $65dc: $00
    inc c                                         ; $65dd: $0c
    db $dd                                        ; $65de: $dd
    adc d                                         ; $65df: $8a

jr_024_65e0:
    ld c, d                                       ; $65e0: $4a
    ld [$16eb], sp                                ; $65e1: $08 $eb $16
    dec d                                         ; $65e4: $15
    nop                                           ; $65e5: $00
    inc bc                                        ; $65e6: $03
    xor l                                         ; $65e7: $ad
    rla                                           ; $65e8: $17
    inc a                                         ; $65e9: $3c
    and l                                         ; $65ea: $a5
    ld e, c                                       ; $65eb: $59
    jp c, Jump_024_593b                           ; $65ec: $da $3b $59

    add e                                         ; $65ef: $83
    ld e, e                                       ; $65f0: $5b
    xor l                                         ; $65f1: $ad
    ld e, e                                       ; $65f2: $5b
    ld d, h                                       ; $65f3: $54
    nop                                           ; $65f4: $00
    inc c                                         ; $65f5: $0c
    sub [hl]                                      ; $65f6: $96
    ld a, [de]                                    ; $65f7: $1a
    ld e, e                                       ; $65f8: $5b
    ei                                            ; $65f9: $fb
    db $dd                                        ; $65fa: $dd
    ld e, a                                       ; $65fb: $5f

jr_024_65fc:
    ld b, [hl]                                    ; $65fc: $46
    jp hl                                         ; $65fd: $e9


    dec bc                                        ; $65fe: $0b
    ld [hl], d                                    ; $65ff: $72
    ld e, [hl]                                    ; $6600: $5e
    call nc, Call_024_6bc7                        ; $6601: $d4 $c7 $6b
    add e                                         ; $6604: $83
    or [hl]                                       ; $6605: $b6
    ld d, $d2                                     ; $6606: $16 $d2
    adc $2f                                       ; $6608: $ce $2f
    call nc, $ed66                                ; $660a: $d4 $66 $ed
    ld e, a                                       ; $660d: $5f
    inc [hl]                                      ; $660e: $34
    ld d, d                                       ; $660f: $52
    cp a                                          ; $6610: $bf
    inc d                                         ; $6611: $14
    ld c, h                                       ; $6612: $4c
    db $db                                        ; $6613: $db
    ld l, c                                       ; $6614: $69
    ld a, h                                       ; $6615: $7c
    ldh [$37], a                                  ; $6616: $e0 $37
    ld b, [hl]                                    ; $6618: $46
    add h                                         ; $6619: $84
    ld bc, $ae2d                                  ; $661a: $01 $2d $ae
    call $f258                                    ; $661d: $cd $58 $f2
    or h                                          ; $6620: $b4
    ld a, [c]                                     ; $6621: $f2
    ld a, [c]                                     ; $6622: $f2
    call c, $aab5                                 ; $6623: $dc $b5 $aa
    ld c, b                                       ; $6626: $48
    add e                                         ; $6627: $83
    or [hl]                                       ; $6628: $b6
    ld e, $e5                                     ; $6629: $1e $e5
    rst $10                                       ; $662b: $d7
    sub d                                         ; $662c: $92
    ld [c], a                                     ; $662d: $e2
    sub a                                         ; $662e: $97
    add d                                         ; $662f: $82
    or l                                          ; $6630: $b5
    xor d                                         ; $6631: $aa
    xor a                                         ; $6632: $af
    ld a, d                                       ; $6633: $7a
    ld sp, hl                                     ; $6634: $f9
    jr nc, jr_024_65e0                            ; $6635: $30 $a9

    reti                                          ; $6637: $d9


    add l                                         ; $6638: $85
    ld l, c                                       ; $6639: $69
    dec sp                                        ; $663a: $3b
    adc l                                         ; $663b: $8d
    rst $08                                       ; $663c: $cf
    ld [hl], e                                    ; $663d: $73
    db $ed                                        ; $663e: $ed
    rrca                                          ; $663f: $0f
    ld l, $21                                     ; $6640: $2e $21
    inc c                                         ; $6642: $0c
    dec a                                         ; $6643: $3d
    ld a, a                                       ; $6644: $7f
    ld d, b                                       ; $6645: $50
    jp nc, Jump_024_4644                          ; $6646: $d2 $44 $46

    dec [hl]                                      ; $6649: $35
    ld e, a                                       ; $664a: $5f
    sub b                                         ; $664b: $90
    ld h, e                                       ; $664c: $63
    ret                                           ; $664d: $c9


    db $d3                                        ; $664e: $d3
    cp h                                          ; $664f: $bc
    cp h                                          ; $6650: $bc
    inc a                                         ; $6651: $3c
    ld [hl], a                                    ; $6652: $77
    xor l                                         ; $6653: $ad
    ld a, [hl+]                                   ; $6654: $2a
    jp nc, $ada0                                  ; $6655: $d2 $a0 $ad

    rst $20                                       ; $6658: $e7
    adc a                                         ; $6659: $8f
    cp $d9                                        ; $665a: $fe $d9
    inc a                                         ; $665c: $3c
    rla                                           ; $665d: $17
    cp h                                          ; $665e: $bc
    xor a                                         ; $665f: $af
    xor l                                         ; $6660: $ad
    ld d, l                                       ; $6661: $55
    ld a, l                                       ; $6662: $7d
    sbc [hl]                                      ; $6663: $9e
    di                                            ; $6664: $f3
    ld a, [c]                                     ; $6665: $f2
    ld h, e                                       ; $6666: $63

Jump_024_6667:
    add hl, hl                                    ; $6667: $29
    ld hl, $96c2                                  ; $6668: $21 $c2 $96
    ld a, c                                       ; $666b: $79
    cp c                                          ; $666c: $b9
    ld d, h                                       ; $666d: $54
    sbc a                                         ; $666e: $9f
    ld h, l                                       ; $666f: $65
    push hl                                       ; $6670: $e5
    ld d, l                                       ; $6671: $55
    ld b, $19                                     ; $6672: $06 $19
    ld a, [hl]                                    ; $6674: $7e
    dec sp                                        ; $6675: $3b
    ld e, c                                       ; $6676: $59
    inc sp                                        ; $6677: $33
    sub [hl]                                      ; $6678: $96
    inc a                                         ; $6679: $3c
    call $cbcb                                    ; $667a: $cd $cb $cb
    and e                                         ; $667d: $a3
    call $2832                                    ; $667e: $cd $32 $28
    ld l, c                                       ; $6681: $69
    ld [hl+], a                                   ; $6682: $22
    and e                                         ; $6683: $a3
    sbc d                                         ; $6684: $9a
    cpl                                           ; $6685: $2f
    ret z                                         ; $6686: $c8

    or l                                          ; $6687: $b5
    or l                                          ; $6688: $b5
    xor d                                         ; $6689: $aa
    adc a                                         ; $668a: $8f
    dec h                                         ; $668b: $25
    ld c, a                                       ; $668c: $4f
    ldh [$7a], a                                  ; $668d: $e0 $7a
    dec b                                         ; $668f: $05
    db $10                                        ; $6690: $10
    ld b, $c7                                     ; $6691: $06 $c7
    ld b, l                                       ; $6693: $45
    ld h, e                                       ; $6694: $63
    db $db                                        ; $6695: $db
    call $2c2e                                    ; $6696: $cd $2e $2c
    ld l, c                                       ; $6699: $69
    ld e, [hl]                                    ; $669a: $5e
    ld l, $cc                                     ; $669b: $2e $cc
    adc [hl]                                      ; $669d: $8e
    sbc c                                         ; $669e: $99
    add d                                         ; $669f: $82
    or [hl]                                       ; $66a0: $b6
    sbc [hl]                                      ; $66a1: $9e
    ccf                                           ; $66a2: $3f
    jr z, jr_024_670e                             ; $66a3: $28 $69

    ld [hl+], a                                   ; $66a5: $22
    ld e, e                                       ; $66a6: $5b
    ldh a, [$3e]                                  ; $66a7: $f0 $3e
    rst $08                                       ; $66a9: $cf
    sub l                                         ; $66aa: $95
    dec de                                        ; $66ab: $1b
    ld c, [hl]                                    ; $66ac: $4e
    ld h, c                                       ; $66ad: $61
    or [hl]                                       ; $66ae: $b6
    add d                                         ; $66af: $82
    ld c, a                                       ; $66b0: $4f
    ld h, c                                       ; $66b1: $61
    sbc l                                         ; $66b2: $9d
    inc b                                         ; $66b3: $04
    cp b                                          ; $66b4: $b8
    db $ed                                        ; $66b5: $ed
    ld hl, sp+$08                                 ; $66b6: $f8 $08
    inc bc                                        ; $66b8: $03
    dec a                                         ; $66b9: $3d
    adc h                                         ; $66ba: $8c
    ld [hl], e                                    ; $66bb: $73
    rst $20                                       ; $66bc: $e7
    add $b9                                       ; $66bd: $c6 $b9
    dec sp                                        ; $66bf: $3b
    ld e, c                                       ; $66c0: $59
    ret nc                                        ; $66c1: $d0

Jump_024_66c2:
    cp d                                          ; $66c2: $ba
    and a                                         ; $66c3: $a7
    ei                                            ; $66c4: $fb
    dec bc                                        ; $66c5: $0b
    ld [hl], a                                    ; $66c6: $77
    ld l, c                                       ; $66c7: $69
    ld a, h                                       ; $66c8: $7c
    ld l, d                                       ; $66c9: $6a
    ei                                            ; $66ca: $fb
    bit 1, d                                      ; $66cb: $cb $4a
    ld a, [de]                                    ; $66cd: $1a
    ld bc, $a3b4                                  ; $66ce: $01 $b4 $a3
    or l                                          ; $66d1: $b5
    xor d                                         ; $66d2: $aa
    rst $08                                       ; $66d3: $cf
    ld [hl], e                                    ; $66d4: $73
    ld c, l                                       ; $66d5: $4d
    ld a, [de]                                    ; $66d6: $1a
    add hl, de                                    ; $66d7: $19
    ld c, e                                       ; $66d8: $4b
    add hl, bc                                    ; $66d9: $09
    cp c                                          ; $66da: $b9
    or e                                          ; $66db: $b3
    adc h                                         ; $66dc: $8c
    ld c, a                                       ; $66dd: $4f
    xor d                                         ; $66de: $aa
    ld sp, hl                                     ; $66df: $f9
    db $fc                                        ; $66e0: $fc
    ld h, e                                       ; $66e1: $63
    ld e, h                                       ; $66e2: $5c
    sub e                                         ; $66e3: $93
    ld h, [hl]                                    ; $66e4: $66
    ld a, [de]                                    ; $66e5: $1a
    add sp, $25                                   ; $66e6: $e8 $25
    add h                                         ; $66e8: $84
    ld bc, $f196                                  ; $66e9: $01 $96 $f1
    ld a, [hl+]                                   ; $66ec: $2a
    db $f4                                        ; $66ed: $f4
    ld l, h                                       ; $66ee: $6c
    ld c, l                                       ; $66ef: $4d
    sbc d                                         ; $66f0: $9a
    or l                                          ; $66f1: $b5
    rst $18                                       ; $66f2: $df
    ld c, [hl]                                    ; $66f3: $4e
    ld a, c                                       ; $66f4: $79
    or h                                          ; $66f5: $b4
    cp $d6                                        ; $66f6: $fe $d6
    ret                                           ; $66f8: $c9


    ld c, e                                       ; $66f9: $4b
    ld a, $5b                                     ; $66fa: $3e $5b
    ld [hl-], a                                   ; $66fc: $32
    call c, $d2f1                                 ; $66fd: $dc $f1 $d2
    ret c                                         ; $6700: $d8

    or $25                                        ; $6701: $f6 $25
    sub [hl]                                      ; $6703: $96
    add d                                         ; $6704: $82
    halt                                          ; $6705: $76
    ld c, d                                       ; $6706: $4a
    ld a, [c]                                     ; $6707: $f2
    dec bc                                        ; $6708: $0b
    sbc $e7                                       ; $6709: $de $e7
    cp c                                          ; $670b: $b9
    or $33                                        ; $670c: $f6 $33

jr_024_670e:
    add h                                         ; $670e: $84
    ld bc, $2aad                                  ; $670f: $01 $ad $2a
    jp nc, $d770                                  ; $6712: $d2 $70 $d7

    sub $aa                                       ; $6715: $d6 $aa
    ld a, $cf                                     ; $6717: $3e $cf
    or l                                          ; $6719: $b5
    sbc a                                         ; $671a: $9f
    adc l                                         ; $671b: $8d
    cp a                                          ; $671c: $bf
    or l                                          ; $671d: $b5
    dec [hl]                                      ; $671e: $35
    ld e, a                                       ; $671f: $5f
    cp d                                          ; $6720: $ba
    xor h                                         ; $6721: $ac
    ld b, a                                       ; $6722: $47
    db $ed                                        ; $6723: $ed
    ld [bc], a                                    ; $6724: $02
    push de                                       ; $6725: $d5
    ld a, h                                       ; $6726: $7c
    and b                                         ; $6727: $a0
    or $2f                                        ; $6728: $f6 $2f
    adc l                                         ; $672a: $8d
    xor a                                         ; $672b: $af
    cp h                                          ; $672c: $bc
    inc a                                         ; $672d: $3c
    ld b, d                                       ; $672e: $42
    ret z                                         ; $672f: $c8

    set 1, e                                      ; $6730: $cb $cb
    rst $10                                       ; $6732: $d7
    ld h, b                                       ; $6733: $60
    cp $5a                                        ; $6734: $fe $5a
    sub l                                         ; $6736: $95
    rla                                           ; $6737: $17
    sbc b                                         ; $6738: $98
    or [hl]                                       ; $6739: $b6
    db $d3                                        ; $673a: $d3
    ld a, b                                       ; $673b: $78

Jump_024_673c:
    rla                                           ; $673c: $17
    inc c                                         ; $673d: $0c
    sub [hl]                                      ; $673e: $96
    ld l, c                                       ; $673f: $69
    sub h                                         ; $6740: $94
    ld d, a                                       ; $6741: $57
    sub $8c                                       ; $6742: $d6 $8c
    ld d, a                                       ; $6744: $57
    and c                                         ; $6745: $a1
    ld h, a                                       ; $6746: $67
    ld l, e                                       ; $6747: $6b
    cp [hl]                                       ; $6748: $be
    inc l                                         ; $6749: $2c
    xor c                                         ; $674a: $a9
    ld a, [$3b2e]                                 ; $674b: $fa $2e $3b
    ld e, d                                       ; $674e: $5a
    xor e                                         ; $674f: $ab
    ld a, [$773c]                                 ; $6750: $fa $3c $77
    cp h                                          ; $6753: $bc
    inc [hl]                                      ; $6754: $34
    or [hl]                                       ; $6755: $b6
    ld a, l                                       ; $6756: $7d
    adc c                                         ; $6757: $89
    and l                                         ; $6758: $a5
    call z, Call_024_7c50                         ; $6759: $cc $50 $7c
    add b                                         ; $675c: $80
    dec [hl]                                      ; $675d: $35
    ld e, a                                       ; $675e: $5f
    add $2b                                       ; $675f: $c6 $2b
    ld sp, hl                                     ; $6761: $f9
    inc a                                         ; $6762: $3c
    rla                                           ; $6763: $17
    inc de                                        ; $6764: $13
    ld a, [hl]                                    ; $6765: $7e
    dec h                                         ; $6766: $25
    dec c                                         ; $6767: $0d
    db $fc                                        ; $6768: $fc
    ld a, [hl-]                                   ; $6769: $3a
    ld a, c                                       ; $676a: $79
    ret                                           ; $676b: $c9


    and c                                         ; $676c: $a1
    dec bc                                        ; $676d: $0b
    ld b, $3d                                     ; $676e: $06 $3d

Jump_024_6770:
    ccf                                           ; $6770: $3f
    ld b, [hl]                                    ; $6771: $46
    xor $2c                                       ; $6772: $ee $2c
    ld h, e                                       ; $6774: $63
    sub a                                         ; $6775: $97
    ld d, c                                       ; $6776: $51
    call Call_000_0607                            ; $6777: $cd $07 $06
    ld a, [hl-]                                   ; $677a: $3a
    ld e, a                                       ; $677b: $5f
    ld sp, hl                                     ; $677c: $f9
    sbc d                                         ; $677d: $9a
    inc [hl]                                      ; $677e: $34
    db $e3                                        ; $677f: $e3
    ld e, a                                       ; $6780: $5f
    ld a, [hl]                                    ; $6781: $7e
    ld a, [hl-]                                   ; $6782: $3a
    cp d                                          ; $6783: $ba
    ld b, c                                       ; $6784: $41
    pop af                                        ; $6785: $f1
    or l                                          ; $6786: $b5
    ld h, e                                       ; $6787: $63
    ld h, [hl]                                    ; $6788: $66
    ld hl, sp-$3e                                 ; $6789: $f8 $c2
    ld e, l                                       ; $678b: $5d
    xor e                                         ; $678c: $ab
    adc d                                         ; $678d: $8a
    inc [hl]                                      ; $678e: $34
    ld l, b                                       ; $678f: $68
    sub [hl]                                      ; $6790: $96
    pop af                                        ; $6791: $f1
    ld c, c                                       ; $6792: $49
    dec [hl]                                      ; $6793: $35
    sbc a                                         ; $6794: $9f
    dec de                                        ; $6795: $1b
    and c                                         ; $6796: $a1
    dec [hl]                                      ; $6797: $35
    ld l, c                                       ; $6798: $69
    halt                                          ; $6799: $76
    ld l, c                                       ; $679a: $69
    halt                                          ; $679b: $76
    jp z, $5cbc                                   ; $679c: $ca $bc $5c

    ldh [$ae], a                                  ; $679f: $e0 $ae
    ld l, l                                       ; $67a1: $6d
    ld a, h                                       ; $67a2: $7c
    ld c, l                                       ; $67a3: $4d
    sbc d                                         ; $67a4: $9a
    ld a, [de]                                    ; $67a5: $1a
    ld e, e                                       ; $67a6: $5b
    ei                                            ; $67a7: $fb
    db $dd                                        ; $67a8: $dd
    ld e, a                                       ; $67a9: $5f
    sub $89                                       ; $67aa: $d6 $89
    ld c, d                                       ; $67ac: $4a
    cp [hl]                                       ; $67ad: $be
    ld h, $8d                                     ; $67ae: $26 $8d
    ret nz                                        ; $67b0: $c0

    ld b, a                                       ; $67b1: $47
    ld a, e                                       ; $67b2: $7b
    ld l, l                                       ; $67b3: $6d
    xor l                                         ; $67b4: $ad
    ld [$b4bb], a                                 ; $67b5: $ea $bb $b4
    or $33                                        ; $67b8: $f6 $33
    add h                                         ; $67ba: $84
    ld bc, $7e2d                                  ; $67bb: $01 $2d $7e
    ld h, e                                       ; $67be: $63
    ld e, h                                       ; $67bf: $5c
    ld a, [de]                                    ; $67c0: $1a
    rst $20                                       ; $67c1: $e7
    adc $32                                       ; $67c2: $ce $32
    ld hl, sp+$47                                 ; $67c4: $f8 $47
    or e                                          ; $67c6: $b3
    call nc, Call_024_5c62                        ; $67c7: $d4 $62 $5c
    ld d, c                                       ; $67ca: $51
    db $eb                                        ; $67cb: $eb
    rst $08                                       ; $67cc: $cf
    ld [hl], e                                    ; $67cd: $73
    dec e                                         ; $67ce: $1d
    ld sp, $ebf4                                  ; $67cf: $31 $f4 $eb
    ld l, a                                       ; $67d2: $6f
    dec h                                         ; $67d3: $25
    dec c                                         ; $67d4: $0d
    db $fc                                        ; $67d5: $fc
    ld a, [hl-]                                   ; $67d6: $3a
    ld a, c                                       ; $67d7: $79
    ret                                           ; $67d8: $c9


    ld h, a                                       ; $67d9: $67
    ld c, e                                       ; $67da: $4b
    add [hl]                                      ; $67db: $86
    dec sp                                        ; $67dc: $3b
    ld e, [hl]                                    ; $67dd: $5e
    ld a, [de]                                    ; $67de: $1a
    db $db                                        ; $67df: $db
    cp [hl]                                       ; $67e0: $be
    call nz, $b852                                ; $67e1: $c4 $52 $b8
    or e                                          ; $67e4: $b3
    call z, $157e                                 ; $67e5: $cc $7e $15
    or h                                          ; $67e8: $b4
    ld d, e                                       ; $67e9: $53
    sub d                                         ; $67ea: $92
    ld e, a                                       ; $67eb: $5f
    daa                                           ; $67ec: $27
    ld h, $bf                                     ; $67ed: $26 $bf
    or [hl]                                       ; $67ef: $b6
    ld d, [hl]                                    ; $67f0: $56
    push af                                       ; $67f1: $f5
    ld e, l                                       ; $67f2: $5d
    ld a, [c]                                     ; $67f3: $f2
    ld e, h                                       ; $67f4: $5c
    ei                                            ; $67f5: $fb
    add hl, de                                    ; $67f6: $19
    jp nz, Jump_024_5596                          ; $67f7: $c2 $96 $55

    ld c, d                                       ; $67fa: $4a
    sub e                                         ; $67fb: $93
    ld d, a                                       ; $67fc: $57
    or [hl]                                       ; $67fd: $b6
    ld h, $cd                                     ; $67fe: $26 $cd
    ld [c], a                                     ; $6800: $e2
    xor l                                         ; $6801: $ad
    rst $38                                       ; $6802: $ff
    ld [hl], h                                    ; $6803: $74
    db $ed                                        ; $6804: $ed
    call z, Call_024_773a                         ; $6805: $cc $3a $77

Call_024_6808:
    xor l                                         ; $6808: $ad
    ld a, [hl+]                                   ; $6809: $2a
    jp nc, Jump_024_7bac                          ; $680a: $d2 $ac $7b

    cp d                                          ; $680d: $ba
    cp a                                          ; $680e: $bf
    ld [hl], h                                    ; $680f: $74
    reti                                          ; $6810: $d9


    pop de                                        ; $6811: $d1
    ld e, d                                       ; $6812: $5a
    push de                                       ; $6813: $d5
    rst $20                                       ; $6814: $e7
    cp c                                          ; $6815: $b9
    ld h, $8d                                     ; $6816: $26 $8d
    adc h                                         ; $6818: $8c
    and l                                         ; $6819: $a5
    add h                                         ; $681a: $84
    di                                            ; $681b: $f3
    ld [hl], d                                    ; $681c: $72
    ld h, c                                       ; $681d: $61
    sub a                                         ; $681e: $97
    ret nz                                        ; $681f: $c0

    sub l                                         ; $6820: $95
    cp h                                          ; $6821: $bc
    dec bc                                        ; $6822: $0b
    ld b, $3d                                     ; $6823: $06 $3d
    jp z, $4185                                   ; $6825: $ca $85 $41

    rst $20                                       ; $6828: $e7
    ld h, e                                       ; $6829: $63
    add h                                         ; $682a: $84
    cp c                                          ; $682b: $b9
    and h                                         ; $682c: $a4
    ld l, c                                       ; $682d: $69
    rst $00                                       ; $682e: $c7
    sbc a                                         ; $682f: $9f
    sbc l                                         ; $6830: $9d
    or d                                          ; $6831: $b2
    ld h, $4d                                     ; $6832: $26 $4d
    sub a                                         ; $6834: $97
    ld e, c                                       ; $6835: $59
    ld l, d                                       ; $6836: $6a
    pop hl                                        ; $6837: $e1
    sbc [hl]                                      ; $6838: $9e
    ld e, l                                       ; $6839: $5d
    cp a                                          ; $683a: $bf
    inc d                                         ; $683b: $14

jr_024_683c:
    xor h                                         ; $683c: $ac
    cp a                                          ; $683d: $bf
    sub l                                         ; $683e: $95
    inc [hl]                                      ; $683f: $34

jr_024_6840:
    ldh a, [$eb]                                  ; $6840: $f0 $eb
    db $e4                                        ; $6842: $e4
    dec h                                         ; $6843: $25
    sbc a                                         ; $6844: $9f
    dec l                                         ; $6845: $2d

jr_024_6846:
    add hl, de                                    ; $6846: $19
    xor $78                                       ; $6847: $ee $78
    ld l, c                                       ; $6849: $69
    ld l, h                                       ; $684a: $6c
    ei                                            ; $684b: $fb
    ld [de], a                                    ; $684c: $12
    ld c, e                                       ; $684d: $4b
    ld b, c                                       ; $684e: $41
    dec sp                                        ; $684f: $3b
    dec h                                         ; $6850: $25
    ld a, c                                       ; $6851: $79
    xor $da                                       ; $6852: $ee $da
    ld e, d                                       ; $6854: $5a
    push de                                       ; $6855: $d5
    rst $20                                       ; $6856: $e7
    cp c                                          ; $6857: $b9
    or $b3                                        ; $6858: $f6 $b3
    ld l, $18                                     ; $685a: $2e $18
    ld b, a                                       ; $685c: $47

jr_024_685d:
    cp a                                          ; $685d: $bf
    sbc l                                         ; $685e: $9d
    ld a, [c]                                     ; $685f: $f2
    or e                                          ; $6860: $b3
    inc l                                         ; $6861: $2c
    ld c, b                                       ; $6862: $48
    xor $9a                                       ; $6863: $ee $9a
    inc [hl]                                      ; $6865: $34
    or l                                          ; $6866: $b5
    jr jr_024_6840                                ; $6867: $18 $d7

    cp $f1                                        ; $6869: $fe $f1
    ld c, d                                       ; $686b: $4a
    ld a, [hl]                                    ; $686c: $7e
    xor c                                         ; $686d: $a9
    ld [hl], $2f                                  ; $686e: $36 $2f
    rrca                                          ; $6870: $0f
    adc a                                         ; $6871: $8f
    halt                                          ; $6872: $76
    ld d, h                                       ; $6873: $54
    adc h                                         ; $6874: $8c
    di                                            ; $6875: $f3
    ld a, [c]                                     ; $6876: $f2
    inc bc                                        ; $6877: $03
    scf                                           ; $6878: $37
    db $ec                                        ; $6879: $ec
    ret                                           ; $687a: $c9


    ld h, c                                       ; $687b: $61
    ld [$cd6b], a                                 ; $687c: $ea $6b $cd
    add b                                         ; $687f: $80
    ld d, a                                       ; $6880: $57
    ld [hl], c                                    ; $6881: $71
    sbc b                                         ; $6882: $98
    jp z, $feaf                                   ; $6883: $ca $af $fe

    ld c, a                                       ; $6886: $4f
    ld c, e                                       ; $6887: $4b
    jp c, Jump_000_1a71                           ; $6888: $da $71 $1a

    and [hl]                                      ; $688b: $a6
    add c                                         ; $688c: $81
    push af                                       ; $688d: $f5
    cp h                                          ; $688e: $bc
    ld e, [hl]                                    ; $688f: $5e
    sub l                                         ; $6890: $95
    add a                                         ; $6891: $87
    add hl, hl                                    ; $6892: $29
    or c                                          ; $6893: $b1
    push af                                       ; $6894: $f5
    cp h                                          ; $6895: $bc
    inc e                                         ; $6896: $1c
    ld d, l                                       ; $6897: $55
    jr jr_024_6846                                ; $6898: $18 $ac

    sbc e                                         ; $689a: $9b
    ld a, [bc]                                    ; $689b: $0a
    inc bc                                        ; $689c: $03
    or h                                          ; $689d: $b4
    ld e, $e5                                     ; $689e: $1e $e5
    pop hl                                        ; $68a0: $e1
    ld [hl], a                                    ; $68a1: $77
    ld e, h                                       ; $68a2: $5c
    add $9b                                       ; $68a3: $c6 $9b
    jr nc, jr_024_683c                            ; $68a5: $30 $95

    rra                                           ; $68a7: $1f
    ld e, a                                       ; $68a8: $5f
    ld e, [hl]                                    ; $68a9: $5e
    ld a, [hl]                                    ; $68aa: $7e
    call $8197                                    ; $68ab: $cd $97 $81
    and a                                         ; $68ae: $a7

Jump_024_68af:
    db $fc                                        ; $68af: $fc
    cp h                                          ; $68b0: $bc
    db $fc                                        ; $68b1: $fc
    ld a, [hl+]                                   ; $68b2: $2a
    dec d                                         ; $68b3: $15
    ld b, $68                                     ; $68b4: $06 $68
    db $eb                                        ; $68b6: $eb
    push af                                       ; $68b7: $f5
    ld h, l                                       ; $68b8: $65
    sub l                                         ; $68b9: $95
    adc d                                         ; $68ba: $8a
    inc [hl]                                      ; $68bb: $34
    di                                            ; $68bc: $f3
    ld a, [c]                                     ; $68bd: $f2
    dec sp                                        ; $68be: $3b
    ld l, $e3                                     ; $68bf: $2e $e3
    call $2d1d                                    ; $68c1: $cd $1d $2d
    ld l, a                                       ; $68c4: $6f
    cp l                                          ; $68c5: $bd
    jr nc, jr_024_685d                            ; $68c6: $30 $95

    inc [hl]                                      ; $68c8: $34
    call nz, $5fc6                                ; $68c9: $c4 $c6 $5f
    cpl                                           ; $68cc: $2f
    ld l, e                                       ; $68cd: $6b
    cp [hl]                                       ; $68ce: $be
    ld [hl], b                                    ; $68cf: $70
    rst $10                                       ; $68d0: $d7
    ld [hl], $3e                                  ; $68d1: $36 $3e
    cpl                                           ; $68d3: $2f
    cp a                                          ; $68d4: $bf
    db $e3                                        ; $68d5: $e3
    ld [hl-], a                                   ; $68d6: $32
    sbc $dc                                       ; $68d7: $de $dc
    ret                                           ; $68d9: $c9


    ld a, [de]                                    ; $68da: $1a
    ld e, h                                       ; $68db: $5c
    xor $9a                                       ; $68dc: $ee $9a
    sub a                                         ; $68de: $97
    add l                                         ; $68df: $85
    ld a, d                                       ; $68e0: $7a
    ld l, c                                       ; $68e1: $69
    ld a, [de]                                    ; $68e2: $1a
    db $db                                        ; $68e3: $db
    ld h, $e4                                     ; $68e4: $26 $e4
    xor $c2                                       ; $68e6: $ee $c2
    inc a                                         ; $68e8: $3c
    ld [hl], e                                    ; $68e9: $73
    db $ed                                        ; $68ea: $ed
    dec de                                        ; $68eb: $1b
    call z, $9573                                 ; $68ec: $cc $73 $95
    adc d                                         ; $68ef: $8a
    inc [hl]                                      ; $68f0: $34
    ld d, e                                       ; $68f1: $53
    ld c, c                                       ; $68f2: $49
    ld b, e                                       ; $68f3: $43
    dec [hl]                                      ; $68f4: $35
    or h                                          ; $68f5: $b4
    ld e, [hl]                                    ; $68f6: $5e
    ld l, c                                       ; $68f7: $69
    inc b                                         ; $68f8: $04
    halt                                          ; $68f9: $76

Call_024_68fa:
    ld h, c                                       ; $68fa: $61
    ld a, [de]                                    ; $68fb: $1a
    push hl                                       ; $68fc: $e5
    sub l                                         ; $68fd: $95
    dec [hl]                                      ; $68fe: $35
    ld d, e                                       ; $68ff: $53
    ld e, a                                       ; $6900: $5f

jr_024_6901:
    ld l, e                                       ; $6901: $6b
    ld b, $bc                                     ; $6902: $06 $bc
    adc d                                         ; $6904: $8a
    jp $bd78                                      ; $6905: $c3 $78 $bd


    ld a, [hl]                                    ; $6908: $7e
    add hl, hl                                    ; $6909: $29
    sbc b                                         ; $690a: $98
    sbc l                                         ; $690b: $9d
    or d                                          ; $690c: $b2
    and $0b                                       ; $690d: $e6 $0b
    ld [hl], a                                    ; $690f: $77
    ld l, l                                       ; $6910: $6d
    db $e3                                        ; $6911: $e3
    ld l, e                                       ; $6912: $6b
    cp [hl]                                       ; $6913: $be
    xor h                                         ; $6914: $ac
    ld d, d                                       ; $6915: $52
    ld a, [de]                                    ; $6916: $1a
    ld hl, sp-$73                                 ; $6917: $f8 $8d

jr_024_6919:
    ld [hl], c                                    ; $6919: $71
    ld sp, $3eb3                                  ; $691a: $31 $b3 $3e
    push af                                       ; $691d: $f5
    ld e, l                                       ; $691e: $5d
    rra                                           ; $691f: $1f
    dec h                                         ; $6920: $25

jr_024_6921:
    adc a                                         ; $6921: $8f
    sub $eb                                       ; $6922: $d6 $eb
    set 1, [hl]                                   ; $6924: $cb $ce
    inc sp                                        ; $6926: $33
    ld d, b                                       ; $6927: $50
    ld e, e                                       ; $6928: $5b
    and l                                         ; $6929: $a5
    ld d, h                                       ; $692a: $54
    di                                            ; $692b: $f3
    ld [hl], l                                    ; $692c: $75
    adc h                                         ; $692d: $8c
    xor a                                         ; $692e: $af
    ld c, c                                       ; $692f: $49
    inc hl                                        ; $6930: $23
    xor e                                         ; $6931: $ab
    ld d, h                                       ; $6932: $54
    jr jr_024_6921                                ; $6933: $18 $ec

    jp nc, $afae                                  ; $6935: $d2 $ae $af

    ld a, c                                       ; $6938: $79
    ld b, a                                       ; $6939: $47
    jr jr_024_6919                                ; $693a: $18 $dd

    db $e4                                        ; $693c: $e4
    push de                                       ; $693d: $d5
    ld a, a                                       ; $693e: $7f
    db $dd                                        ; $693f: $dd
    db $d3                                        ; $6940: $d3
    ld l, a                                       ; $6941: $6f
    ld [de], a                                    ; $6942: $12
    ld b, $ad                                     ; $6943: $06 $ad
    xor a                                         ; $6945: $af
    pop de                                        ; $6946: $d1
    res 1, [hl]                                   ; $6947: $cb $8e
    adc $04                                       ; $6949: $ce $04
    rst $00                                       ; $694b: $c7
    and a                                         ; $694c: $a7
    xor b                                         ; $694d: $a8
    add c                                         ; $694e: $81
    ld d, a                                       ; $694f: $57
    inc c                                         ; $6950: $0c
    and a                                         ; $6951: $a7
    ld a, a                                       ; $6952: $7f
    ldh a, [$f4]                                  ; $6953: $f0 $f4
    and d                                         ; $6955: $a2
    ld a, [hl]                                    ; $6956: $7e
    sub e                                         ; $6957: $93
    jr nc, jr_024_6901                            ; $6958: $30 $a7

    db $eb                                        ; $695a: $eb
    and l                                         ; $695b: $a5
    and l                                         ; $695c: $a5
    cp l                                          ; $695d: $bd
    and e                                         ; $695e: $a3
    and e                                         ; $695f: $a3
    ld h, c                                       ; $6960: $61
    pop bc                                        ; $6961: $c1
    dec bc                                        ; $6962: $0b
    ld h, b                                       ; $6963: $60

jr_024_6964:
    dec l                                         ; $6964: $2d
    ld [hl], h                                    ; $6965: $74
    cp l                                          ; $6966: $bd
    ld a, [hl+]                                   ; $6967: $2a
    ld l, e                                       ; $6968: $6b
    ld [hl], c                                    ; $6969: $71
    cp c                                          ; $696a: $b9
    push af                                       ; $696b: $f5
    rst $00                                       ; $696c: $c7
    dec l                                         ; $696d: $2d
    ld [hl], h                                    ; $696e: $74
    cp l                                          ; $696f: $bd
    ld a, [hl+]                                   ; $6970: $2a
    ld l, e                                       ; $6971: $6b
    ld [hl], c                                    ; $6972: $71
    ld a, c                                       ; $6973: $79
    xor l                                         ; $6974: $ad
    ld h, e                                       ; $6975: $63
    db $dd                                        ; $6976: $dd
    sub d                                         ; $6977: $92
    adc $33                                       ; $6978: $ce $33
    ld a, [c]                                     ; $697a: $f2
    ld l, e                                       ; $697b: $6b
    ld hl, $eaad                                  ; $697c: $21 $ad $ea
    jr @-$37                                      ; $697f: $18 $c7

    ld [hl], d                                    ; $6981: $72
    ld [hl], b                                    ; $6982: $70
    pop de                                        ; $6983: $d1
    ld [hl], l                                    ; $6984: $75
    sub e                                         ; $6985: $93
    ld h, a                                       ; $6986: $67
    rst $10                                       ; $6987: $d7
    ld sp, $8cdd                                  ; $6988: $31 $dd $8c
    db $fc                                        ; $698b: $fc
    cp d                                          ; $698c: $ba
    rst $20                                       ; $698d: $e7
    add l                                         ; $698e: $85
    inc h                                         ; $698f: $24
    inc c                                         ; $6990: $0c
    and a                                         ; $6991: $a7
    ld a, a                                       ; $6992: $7f
    sbc b                                         ; $6993: $98
    sub $5f                                       ; $6994: $d6 $5f
    scf                                           ; $6996: $37
    inc hl                                        ; $6997: $23
    ldh a, [rNR23]                                ; $6998: $f0 $18
    db $dd                                        ; $699a: $dd
    dec h                                         ; $699b: $25
    db $fd                                        ; $699c: $fd
    dec hl                                        ; $699d: $2b
    rst $00                                       ; $699e: $c7

    db $c7, $bc, $1d, $bf, $72, $0c

    dec l                                         ; $69a5: $2d

jr_024_69a6:
    ld l, $4f                                     ; $69a6: $2e $4f
    add c                                         ; $69a8: $81
    rla                                           ; $69a9: $17
    inc c                                         ; $69aa: $0c
    db $dd                                        ; $69ab: $dd
    ld d, h                                       ; $69ac: $54
    jp c, $eb49                                   ; $69ad: $da $49 $eb

    sub [hl]                                      ; $69b0: $96
    sbc l                                         ; $69b1: $9d
    ld b, $03                                     ; $69b2: $06 $03
    rst $00                                       ; $69b4: $c7
    ld e, h                                       ; $69b5: $5c
    ld sp, hl                                     ; $69b6: $f9
    or l                                          ; $69b7: $b5
    cp b                                          ; $69b8: $b8
    inc a                                         ; $69b9: $3c
    dec b                                         ; $69ba: $05
    ld e, [hl]                                    ; $69bb: $5e
    jr nc, jr_024_69eb                            ; $69bc: $30 $2d

    pop af                                        ; $69be: $f1
    cp a                                          ; $69bf: $bf
    add e                                         ; $69c0: $83
    ld bc, $ff16                                  ; $69c1: $01 $16 $ff
    ld [hl], b                                    ; $69c4: $70
    ld d, $f2                                     ; $69c5: $16 $f2
    call c, $af71                                 ; $69c7: $dc $71 $af
    ld e, [hl]                                    ; $69ca: $5e
    ld e, [hl]                                    ; $69cb: $5e
    jr nc, jr_024_6964                            ; $69cc: $30 $96

    or b                                          ; $69ce: $b0
    inc hl                                        ; $69cf: $23
    ld l, c                                       ; $69d0: $69
    ld a, l                                       ; $69d1: $7d
    or [hl]                                       ; $69d2: $b6
    sub e                                         ; $69d3: $93
    dec [hl]                                      ; $69d4: $35
    cp b                                          ; $69d5: $b8
    dec d                                         ; $69d6: $15
    db $06                                        ; $69d7: $06

    db $dd, $f3, $42, $d2, $2c, $61, $68, $e8, $7a, $83, $01

    rst $00                                       ; $69e3: $c7
    ld c, b                                       ; $69e4: $48
    jp nc, $c763                                  ; $69e5: $d2 $63 $c7

    ld e, h                                       ; $69e8: $5c
    ld [hl], b                                    ; $69e9: $70
    pop de                                        ; $69ea: $d1

jr_024_69eb:
    jp z, $2731                                   ; $69eb: $ca $31 $27

    sbc c                                         ; $69ee: $99
    jr jr_024_69a6                                ; $69ef: $18 $b5

    db $dd                                        ; $69f1: $dd
    ld h, b                                       ; $69f2: $60
    dec l                                         ; $69f3: $2d
    ld a, [hl]                                    ; $69f4: $7e
    xor c                                         ; $69f5: $a9
    adc $ff                                       ; $69f6: $ce $ff
    inc sp                                        ; $69f8: $33
    inc c                                         ; $69f9: $0c
    dec l                                         ; $69fa: $2d
    ld sp, $0c79                                  ; $69fb: $31 $79 $0c
    dec l                                         ; $69fe: $2d
    pop de                                        ; $69ff: $d1
    inc b                                         ; $6a00: $04
    pop bc                                        ; $6a01: $c1
    add l                                         ; $6a02: $85
    add d                                         ; $6a03: $82
    ld bc, $3e3d                                  ; $6a04: $01 $3d $3e
    db $ec                                        ; $6a07: $ec
    inc a                                         ; $6a08: $3c
    jr c, jr_024_6a11                             ; $6a09: $38 $06

    ld b, a                                       ; $6a0b: $47
    ld b, l                                       ; $6a0c: $45
    ld a, a                                       ; $6a0d: $7f
    reti                                          ; $6a0e: $d9


    or c                                          ; $6a0f: $b1
    db $f4                                        ; $6a10: $f4

jr_024_6a11:
    ld h, c                                       ; $6a11: $61
    add e                                         ; $6a12: $83
    ld bc, $a4c7                                  ; $6a13: $01 $c7 $a4
    ld l, c                                       ; $6a16: $69
    rst $00                                       ; $6a17: $c7
    ld e, a                                       ; $6a18: $5f
    ld c, e                                       ; $6a19: $4b
    ld [hl], a                                    ; $6a1a: $77
    inc c                                         ; $6a1b: $0c
    and a                                         ; $6a1c: $a7
    cp a                                          ; $6a1d: $bf
    push af                                       ; $6a1e: $f5
    dec b                                         ; $6a1f: $05
    inc [hl]                                      ; $6a20: $34
    ld h, d                                       ; $6a21: $62
    dec l                                         ; $6a22: $2d
    or a                                          ; $6a23: $b7
    xor d                                         ; $6a24: $aa
    rst $00                                       ; $6a25: $c7
    ld e, a                                       ; $6a26: $5f
    bit 7, a                                      ; $6a27: $cb $7f
    dec e                                         ; $6a29: $1d
    inc bc                                        ; $6a2a: $03
    rst $00                                       ; $6a2b: $c7

jr_024_6a2c:
    ld d, d                                       ; $6a2c: $52
    sub l                                         ; $6a2d: $95
    add [hl]                                      ; $6a2e: $86
    db $fc                                        ; $6a2f: $fc
    ld h, l                                       ; $6a30: $65
    dec a                                         ; $6a31: $3d
    ld b, h                                       ; $6a32: $44
    xor e                                         ; $6a33: $ab
    ld a, [hl-]                                   ; $6a34: $3a
    ld b, $3d                                     ; $6a35: $06 $3d
    ld a, $7e                                     ; $6a37: $3e $7e
    jr nz, @-$24                                  ; $6a39: $20 $da

    add hl, hl                                    ; $6a3b: $29
    db $eb                                        ; $6a3c: $eb
    ld l, [hl]                                    ; $6a3d: $6e
    xor b                                         ; $6a3e: $a8
    ld a, [hl+]                                   ; $6a3f: $2a
    jr jr_024_6a7f                                ; $6a40: $18 $3d

    ld e, a                                       ; $6a42: $5f
    db $eb                                        ; $6a43: $eb
    db $eb                                        ; $6a44: $eb
    sbc [hl]                                      ; $6a45: $9e
    sub a                                         ; $6a46: $97
    inc e                                         ; $6a47: $1c
    inc bc                                        ; $6a48: $03
    and a                                         ; $6a49: $a7
    ld a, a                                       ; $6a4a: $7f
    daa                                           ; $6a4b: $27
    ld a, $5d                                     ; $6a4c: $3e $5d
    jr z, jr_024_6a8b                             ; $6a4e: $28 $3b

    ld e, c                                       ; $6a50: $59
    add e                                         ; $6a51: $83
    ld e, e                                       ; $6a52: $5b
    ld h, c                                       ; $6a53: $61
    daa                                           ; $6a54: $27
    ld l, e                                       ; $6a55: $6b
    ld [hl], b                                    ; $6a56: $70
    xor e                                         ; $6a57: $ab
    sbc l                                         ; $6a58: $9d
    cp $d6                                        ; $6a59: $fe $d6
    rla                                           ; $6a5b: $17
    ret nc                                        ; $6a5c: $d0

    adc b                                         ; $6a5d: $88
    ld bc, $7fa7                                  ; $6a5e: $01 $a7 $7f
    daa                                           ; $6a61: $27
    ld a, $5d                                     ; $6a62: $3e $5d
    jr z, jr_024_6ad1                             ; $6a64: $28 $6b

    ld [hl], c                                    ; $6a66: $71
    dec c                                         ; $6a67: $0d
    cpl                                           ; $6a68: $2f
    add hl, hl                                    ; $6a69: $29
    ld b, $2d                                     ; $6a6a: $06 $2d
    ld h, $0c                                     ; $6a6c: $26 $0c
    sub e                                         ; $6a6e: $93
    halt                                          ; $6a6f: $76
    ld b, [hl]                                    ; $6a70: $46
    ret c                                         ; $6a71: $d8

    sub [hl]                                      ; $6a72: $96
    adc a                                         ; $6a73: $8f
    ld d, c                                       ; $6a74: $51
    ld sp, $552d                                  ; $6a75: $31 $2d $55
    ret                                           ; $6a78: $c9


    xor b                                         ; $6a79: $a8
    ld [bc], a                                    ; $6a7a: $02
    push hl                                       ; $6a7b: $e5
    halt                                          ; $6a7c: $76
    jr nc, jr_024_6a2c                            ; $6a7d: $30 $ad

jr_024_6a7f:
    xor a                                         ; $6a7f: $af
    pop af                                        ; $6a80: $f1
    ld d, d                                       ; $6a81: $52
    or b                                          ; $6a82: $b0
    and e                                         ; $6a83: $a3
    call c, $aab5                                 ; $6a84: $dc $b5 $aa
    ld h, e                                       ; $6a87: $63
    daa                                           ; $6a88: $27
    cp l                                          ; $6a89: $bd
    push af                                       ; $6a8a: $f5

jr_024_6a8b:
    db $e3                                        ; $6a8b: $e3
    adc $e8                                       ; $6a8c: $ce $e8
    ld h, b                                       ; $6a8e: $60
    dec l                                         ; $6a8f: $2d
    db $dd                                        ; $6a90: $dd
    ld [hl], a                                    ; $6a91: $77
    cp h                                          ; $6a92: $bc
    ld e, [hl]                                    ; $6a93: $5e
    jp nz, Jump_024_7727                          ; $6a94: $c2 $27 $77

    rst $18                                       ; $6a97: $df
    pop af                                        ; $6a98: $f1
    ld a, d                                       ; $6a99: $7a
    add hl, bc                                    ; $6a9a: $09
    inc bc                                        ; $6a9b: $03
    daa                                           ; $6a9c: $27
    ld [hl], a                                    ; $6a9d: $77
    rst $18                                       ; $6a9e: $df
    or c                                          ; $6a9f: $b1

jr_024_6aa0:
    and d                                         ; $6aa0: $a2
    ldh a, [rNR23]                                ; $6aa1: $f0 $18
    and a                                         ; $6aa3: $a7
    ld a, a                                       ; $6aa4: $7f
    daa                                           ; $6aa5: $27
    ld a, $5d                                     ; $6aa6: $3e $5d
    jr z, @+$3d                                   ; $6aa8: $28 $3b

    ld a, [hl+]                                   ; $6aaa: $2a
    ld b, [hl]                                    ; $6aab: $46
    inc c                                         ; $6aac: $0c
    daa                                           ; $6aad: $27
    ld l, e                                       ; $6aae: $6b
    ld [hl], b                                    ; $6aaf: $70
    xor e                                         ; $6ab0: $ab
    ld e, c                                       ; $6ab1: $59
    jp nz, $d0d0                                  ; $6ab2: $c2 $d0 $d0

    push af                                       ; $6ab5: $f5
    ld b, $03                                     ; $6ab6: $06 $03
    sub [hl]                                      ; $6ab8: $96
    jr nc, jr_024_6aef                            ; $6ab9: $30 $34

    ld [hl], h                                    ; $6abb: $74
    cp l                                          ; $6abc: $bd
    pop bc                                        ; $6abd: $c1
    rst $00                                       ; $6abe: $c7
    ld [hl], d                                    ; $6abf: $72
    jr z, jr_024_6b2c                             ; $6ac0: $28 $6a

    ret nz                                        ; $6ac2: $c0

    ld sp, $4747                                  ; $6ac3: $31 $47 $47
    dec b                                         ; $6ac6: $05
    cp a                                          ; $6ac7: $bf
    inc d                                         ; $6ac8: $14
    xor h                                         ; $6ac9: $ac
    sbc e                                         ; $6aca: $9b
    ld de, $0c78                                  ; $6acb: $11 $78 $0c
    xor l                                         ; $6ace: $ad
    cpl                                           ; $6acf: $2f
    ld a, c                                       ; $6ad0: $79

jr_024_6ad1:
    xor e                                         ; $6ad1: $ab
    or l                                          ; $6ad2: $b5
    cp b                                          ; $6ad3: $b8
    inc a                                         ; $6ad4: $3c
    dec b                                         ; $6ad5: $05
    ld e, [hl]                                    ; $6ad6: $5e
    jr nc, jr_024_6aa0                            ; $6ad7: $30 $c7

    sbc c                                         ; $6ad9: $99
    jr jr_024_6b53                                ; $6ada: $18 $77

    inc l                                         ; $6adc: $2c
    ld d, l                                       ; $6add: $55
    ld b, l                                       ; $6ade: $45
    ret                                           ; $6adf: $c9


    jp $c727                                      ; $6ae0: $c3 $27 $c7


    dec a                                         ; $6ae3: $3d
    jp z, Jump_024_52af                           ; $6ae4: $ca $af $52

    ld h, c                                       ; $6ae7: $61
    or b                                          ; $6ae8: $b0
    ld c, d                                       ; $6ae9: $4a
    ld e, [hl]                                    ; $6aea: $5e
    db $fd                                        ; $6aeb: $fd
    reti                                          ; $6aec: $d9


    ld [hl], h                                    ; $6aed: $74
    and d                                         ; $6aee: $a2

jr_024_6aef:
    call nz, Call_024_5c32                        ; $6aef: $c4 $32 $5c
    daa                                           ; $6af2: $27
    db $fd                                        ; $6af3: $fd
    ld h, $75                                     ; $6af4: $26 $75
    pop bc                                        ; $6af6: $c1
    dec a                                         ; $6af7: $3d
    jp z, Jump_024_52af                           ; $6af8: $ca $af $52

    ld h, c                                       ; $6afb: $61
    jr nc, jr_024_6b77                            ; $6afc: $30 $79

    ldh a, [$94]                                  ; $6afe: $f0 $94
    ld h, a                                       ; $6b00: $67
    db $d3                                        ; $6b01: $d3
    ld b, c                                       ; $6b02: $41
    xor b                                         ; $6b03: $a8
    ld sp, $c34e                                  ; $6b04: $31 $4e $c3
    inc [hl]                                      ; $6b07: $34
    db $e4                                        ; $6b08: $e4
    ld c, e                                       ; $6b09: $4b
    ld a, e                                       ; $6b0a: $7b
    ld c, l                                       ; $6b0b: $4d
    ld a, [de]                                    ; $6b0c: $1a
    ld e, c                                       ; $6b0d: $59
    ld c, e                                       ; $6b0e: $4b
    ld [hl], a                                    ; $6b0f: $77
    add h                                         ; $6b10: $84
    ld bc, $ca3d                                  ; $6b11: $01 $3d $ca
    xor a                                         ; $6b14: $af
    ld d, d                                       ; $6b15: $52
    ld h, c                                       ; $6b16: $61

jr_024_6b17:
    jr nc, jr_024_6b17                            ; $6b17: $30 $fe

    push hl                                       ; $6b19: $e5
    xor c                                         ; $6b1a: $a9
    and $2b                                       ; $6b1b: $e6 $2b
    rra                                           ; $6b1d: $1f
    dec sp                                        ; $6b1e: $3b
    or [hl]                                       ; $6b1f: $b6
    adc c                                         ; $6b20: $89
    di                                            ; $6b21: $f3
    ld [hl], d                                    ; $6b22: $72
    ld h, c                                       ; $6b23: $61
    ld a, [hl]                                    ; $6b24: $7e
    jp $eb47                                      ; $6b25: $c3 $47 $eb


    sub l                                         ; $6b28: $95
    ld b, [hl]                                    ; $6b29: $46
    and $26                                       ; $6b2a: $e6 $26

jr_024_6b2c:
    inc c                                         ; $6b2c: $0c
    sbc e                                         ; $6b2d: $9b
    ld e, l                                       ; $6b2e: $5d
    sbc b                                         ; $6b2f: $98
    jp hl                                         ; $6b30: $e9


    ret nz                                        ; $6b31: $c0

    dec sp                                        ; $6b32: $3b
    ld [hl], a                                    ; $6b33: $77
    ld c, d                                       ; $6b34: $4a
    ld l, h                                       ; $6b35: $6c
    ld c, l                                       ; $6b36: $4d
    sbc d                                         ; $6b37: $9a
    reti                                          ; $6b38: $d9


    rst $38                                       ; $6b39: $ff
    ld [hl], c                                    ; $6b3a: $71
    db $ec                                        ; $6b3b: $ec
    ld [hl], d                                    ; $6b3c: $72
    db $e4                                        ; $6b3d: $e4
    ret c                                         ; $6b3e: $d8

    ld c, h                                       ; $6b3f: $4c
    adc c                                         ; $6b40: $89
    adc l                                         ; $6b41: $8d
    ld a, a                                       ; $6b42: $7f
    xor l                                         ; $6b43: $ad
    and e                                         ; $6b44: $a3
    push af                                       ; $6b45: $f5
    ld c, d                                       ; $6b46: $4a
    inc sp                                        ; $6b47: $33
    cpl                                           ; $6b48: $2f
    sub a                                         ; $6b49: $97
    ld [$d26b], a                                 ; $6b4a: $ea $6b $d2
    inc l                                         ; $6b4d: $2c
    cp h                                          ; $6b4e: $bc
    ld b, c                                       ; $6b4f: $41
    pop af                                        ; $6b50: $f1
    dec d                                         ; $6b51: $15
    or l                                          ; $6b52: $b5

jr_024_6b53:
    cp $62                                        ; $6b53: $fe $62
    add d                                         ; $6b55: $82
    rrca                                          ; $6b56: $0f
    ld [hl-], a                                   ; $6b57: $32
    db $fc                                        ; $6b58: $fc
    or l                                          ; $6b59: $b5
    ld [hl], h                                    ; $6b5a: $74
    ld b, a                                       ; $6b5b: $47
    jr jr_024_6b9b                                ; $6b5c: $18 $3d

    jp z, Jump_024_52af                           ; $6b5e: $ca $af $52

    ld h, c                                       ; $6b61: $61
    or b                                          ; $6b62: $b0
    halt                                          ; $6b63: $76
    ld h, $f8                                     ; $6b64: $26 $f8
    or e                                          ; $6b66: $b3
    dec [hl]                                      ; $6b67: $35
    ld l, c                                       ; $6b68: $69
    ld h, h                                       ; $6b69: $64
    dec l                                         ; $6b6a: $2d
    db $dd                                        ; $6b6b: $dd
    pop de                                        ; $6b6c: $d1
    inc l                                         ; $6b6d: $2c
    inc [hl]                                      ; $6b6e: $34

jr_024_6b6f:
    ld e, e                                       ; $6b6f: $5b
    dec hl                                        ; $6b70: $2b
    rst $20                                       ; $6b71: $e7
    xor [hl]                                      ; $6b72: $ae
    ld c, c                                       ; $6b73: $49
    inc sp                                        ; $6b74: $33
    ei                                            ; $6b75: $fb
    ccf                                           ; $6b76: $3f

jr_024_6b77:
    ld l, $de                                     ; $6b77: $2e $de
    ld a, [$49af]                                 ; $6b79: $fa $af $49
    ld d, e                                       ; $6b7c: $53
    sub e                                         ; $6b7d: $93
    ld e, a                                       ; $6b7e: $5f
    ldh a, [$ee]                                  ; $6b7f: $f0 $ee
    sub a                                         ; $6b81: $97
    add d                                         ; $6b82: $82
    add l                                         ; $6b83: $85
    add hl, hl                                    ; $6b84: $29
    ccf                                           ; $6b85: $3f
    dec h                                         ; $6b86: $25
    or [hl]                                       ; $6b87: $b6
    jr nc, jr_024_6b6f                            ; $6b88: $30 $e5

    rst $10                                       ; $6b8a: $d7
    jp nc, $1a7d                                  ; $6b8b: $d2 $7d $1a

    db $e3                                        ; $6b8e: $e3
    cp h                                          ; $6b8f: $bc
    db $fc                                        ; $6b90: $fc
    db $fc                                        ; $6b91: $fc
    add [hl]                                      ; $6b92: $86
    rst $18                                       ; $6b93: $df
    dec b                                         ; $6b94: $05
    inc bc                                        ; $6b95: $03
    dec a                                         ; $6b96: $3d
    jp z, Jump_024_52af                           ; $6b97: $ca $af $52

    ld h, c                                       ; $6b9a: $61

jr_024_6b9b:
    or b                                          ; $6b9b: $b0
    ld c, d                                       ; $6b9c: $4a
    ld e, [hl]                                    ; $6b9d: $5e
    db $fd                                        ; $6b9e: $fd
    and a                                         ; $6b9f: $a7
    di                                            ; $6ba0: $f3
    inc d                                         ; $6ba1: $14
    ld a, c                                       ; $6ba2: $79
    ld a, [c]                                     ; $6ba3: $f2
    and l                                         ; $6ba4: $a5
    cp l                                          ; $6ba5: $bd
    ld c, [hl]                                    ; $6ba6: $4e
    inc [hl]                                      ; $6ba7: $34
    inc d                                         ; $6ba8: $14
    ld e, h                                       ; $6ba9: $5c
    ld a, [bc]                                    ; $6baa: $0a
    halt                                          ; $6bab: $76
    ld [hl], h                                    ; $6bac: $74
    inc [hl]                                      ; $6bad: $34
    inc l                                         ; $6bae: $2c
    ld a, b                                       ; $6baf: $78
    add c                                         ; $6bb0: $81
    ld a, c                                       ; $6bb1: $79
    ld d, c                                       ; $6bb2: $51
    sbc a                                         ; $6bb3: $9f
    add sp, -$5b                                  ; $6bb4: $e8 $a5
    or c                                          ; $6bb6: $b1
    db $e4                                        ; $6bb7: $e4
    ld l, c                                       ; $6bb8: $69
    ld c, c                                       ; $6bb9: $49

Jump_024_6bba:
    ld d, e                                       ; $6bba: $53
    ld e, d                                       ; $6bbb: $5a
    halt                                          ; $6bbc: $76
    ld a, [hl-]                                   ; $6bbd: $3a
    ld c, c                                       ; $6bbe: $49
    ld c, a                                       ; $6bbf: $4f
    adc [hl]                                      ; $6bc0: $8e
    jr nc, jr_024_6c00                            ; $6bc1: $30 $3d

    jp z, Jump_024_52af                           ; $6bc3: $ca $af $52

    ld h, c                                       ; $6bc6: $61

Call_024_6bc7:
    or b                                          ; $6bc7: $b0
    ld c, d                                       ; $6bc8: $4a
    ld e, [hl]                                    ; $6bc9: $5e
    db $fd                                        ; $6bca: $fd
    and a                                         ; $6bcb: $a7
    dec sp                                        ; $6bcc: $3b
    ld a, $23                                     ; $6bcd: $3e $23
    ld a, e                                       ; $6bcf: $7b
    ld e, d                                       ; $6bd0: $5a
    dec bc                                        ; $6bd1: $0b
    ld e, l                                       ; $6bd2: $5d
    xor a                                         ; $6bd3: $af
    jp z, $a8bc                                   ; $6bd4: $ca $bc $a8

    rrca                                          ; $6bd7: $0f
    ld a, [hl+]                                   ; $6bd8: $2a
    sub l                                         ; $6bd9: $95
    add a                                         ; $6bda: $87
    add hl, hl                                    ; $6bdb: $29
    xor a                                         ; $6bdc: $af
    call $9694                                    ; $6bdd: $cd $94 $96
    sbc l                                         ; $6be0: $9d
    ld c, [hl]                                    ; $6be1: $4e
    jp nc, Jump_000_2393                          ; $6be2: $d2 $93 $23

    inc c                                         ; $6be5: $0c
    dec a                                         ; $6be6: $3d
    jp z, Jump_024_52af                           ; $6be7: $ca $af $52

    ld h, c                                       ; $6bea: $61
    or b                                          ; $6beb: $b0
    ld c, d                                       ; $6bec: $4a
    ld e, [hl]                                    ; $6bed: $5e
    db $fd                                        ; $6bee: $fd
    and a                                         ; $6bef: $a7
    dec sp                                        ; $6bf0: $3b
    ld a, $23                                     ; $6bf1: $3e $23
    ld a, e                                       ; $6bf3: $7b
    ld e, d                                       ; $6bf4: $5a
    dec bc                                        ; $6bf5: $0b
    ld e, l                                       ; $6bf6: $5d
    xor a                                         ; $6bf7: $af
    jp z, $a8bc                                   ; $6bf8: $ca $bc $a8

    xor a                                         ; $6bfb: $af
    cp d                                          ; $6bfc: $ba
    ld d, d                                       ; $6bfd: $52
    push bc                                       ; $6bfe: $c5
    add a                                         ; $6bff: $87

jr_024_6c00:
    add hl, hl                                    ; $6c00: $29
    db $ed                                        ; $6c01: $ed
    jp hl                                         ; $6c02: $e9


    jp $06a6                                      ; $6c03: $c3 $a6 $06


    dec hl                                        ; $6c06: $2b
    xor a                                         ; $6c07: $af
    adc h                                         ; $6c08: $8c
    dec sp                                        ; $6c09: $3b
    halt                                          ; $6c0a: $76
    pop bc                                        ; $6c0b: $c1
    ld b, l                                       ; $6c0c: $45
    dec hl                                        ; $6c0d: $2b
    cp a                                          ; $6c0e: $bf
    inc d                                         ; $6c0f: $14
    db $ec                                        ; $6c10: $ec
    ld a, [hl-]                                   ; $6c11: $3a
    jp nz, $ca3d                                  ; $6c12: $c2 $3d $ca

    add l                                         ; $6c15: $85
    ld d, l                                       ; $6c16: $55
    ld a, [hl+]                                   ; $6c17: $2a
    inc c                                         ; $6c18: $0c
    ld d, $a8                                     ; $6c19: $16 $a8
    push af                                       ; $6c1b: $f5
    rst $10                                       ; $6c1c: $d7
    and h                                         ; $6c1d: $a4
    sbc c                                         ; $6c1e: $99
    xor [hl]                                      ; $6c1f: $ae
    ld [hl], e                                    ; $6c20: $73
    cp a                                          ; $6c21: $bf
    ld a, [$bda5]                                 ; $6c22: $fa $a5 $bd
    ld c, d                                       ; $6c25: $4a
    adc c                                         ; $6c26: $89
    dec [hl]                                      ; $6c27: $35
    ld e, l                                       ; $6c28: $5d
    jr nc, @+$3f                                  ; $6c29: $30 $3d

    jp z, Jump_024_52af                           ; $6c2b: $ca $af $52

    ld h, c                                       ; $6c2e: $61
    or b                                          ; $6c2f: $b0
    and d                                         ; $6c30: $a2
    sub $df                                       ; $6c31: $d6 $df
    and l                                         ; $6c33: $a5
    ld c, d                                       ; $6c34: $4a
    ld e, [hl]                                    ; $6c35: $5e
    pop hl                                        ; $6c36: $e1
    reti                                          ; $6c37: $d9


    cp h                                          ; $6c38: $bc
    db $fc                                        ; $6c39: $fc
    sbc [hl]                                      ; $6c3a: $9e
    ld b, e                                       ; $6c3b: $43
    rst $20                                       ; $6c3c: $e7
    push hl                                       ; $6c3d: $e5
    ld a, $55                                     ; $6c3e: $3e $55
    cp a                                          ; $6c40: $bf
    ld c, [hl]                                    ; $6c41: $4e
    ld e, [hl]                                    ; $6c42: $5e
    ld [hl], d                                    ; $6c43: $72
    ld e, b                                       ; $6c44: $58
    sub e                                         ; $6c45: $93
    ld h, [hl]                                    ; $6c46: $66
    db $fc                                        ; $6c47: $fc
    adc l                                         ; $6c48: $8d
    ld [hl], c                                    ; $6c49: $71
    ld a, [c]                                     ; $6c4a: $f2
    push de                                       ; $6c4b: $d5
    ld e, a                                       ; $6c4c: $5f
    db $eb                                        ; $6c4d: $eb
    rst $28                                       ; $6c4e: $ef
    jp c, $d26b                                   ; $6c4f: $da $6b $d2

    adc h                                         ; $6c52: $8c
    cp a                                          ; $6c53: $bf
    inc [hl]                                      ; $6c54: $34
    cpl                                           ; $6c55: $2f
    rla                                           ; $6c56: $17
    or $54                                        ; $6c57: $f6 $54
    and l                                         ; $6c59: $a5
    ld hl, $e97f                                  ; $6c5a: $21 $7f $e9

jr_024_6c5d:
    add d                                         ; $6c5d: $82
    ld bc, $ca3d                                  ; $6c5e: $01 $3d $ca
    xor a                                         ; $6c61: $af
    ld d, d                                       ; $6c62: $52
    ld h, c                                       ; $6c63: $61
    or b                                          ; $6c64: $b0
    ld c, d                                       ; $6c65: $4a
    xor c                                         ; $6c66: $a9
    ld a, [$2f38]                                 ; $6c67: $fa $38 $2f
    cp a                                          ; $6c6a: $bf
    or a                                          ; $6c6b: $b7
    db $ed                                        ; $6c6c: $ed
    xor a                                         ; $6c6d: $af
    inc e                                         ; $6c6e: $1c
    sub [hl]                                      ; $6c6f: $96
    or $94                                        ; $6c70: $f6 $94
    sbc d                                         ; $6c72: $9a
    ld [hl], l                                    ; $6c73: $75
    ld a, [c]                                     ; $6c74: $f2
    ld b, d                                       ; $6c75: $42
    jp nc, Jump_024_5dd4                          ; $6c76: $d2 $d4 $5d

    xor e                                         ; $6c79: $ab
    ld a, [hl-]                                   ; $6c7a: $3a
    adc h                                         ; $6c7b: $8c
    add hl, de                                    ; $6c7c: $19
    cp c                                          ; $6c7d: $b9
    inc d                                         ; $6c7e: $14
    call z, $85cb                                 ; $6c7f: $cc $cb $85
    dec a                                         ; $6c82: $3d
    ld d, l                                       ; $6c83: $55
    ld l, c                                       ; $6c84: $69
    ret z                                         ; $6c85: $c8

    ld e, a                                       ; $6c86: $5f
    cp d                                          ; $6c87: $ba
    ld h, b                                       ; $6c88: $60
    dec a                                         ; $6c89: $3d
    jp z, Jump_024_52af                           ; $6c8a: $ca $af $52

    ld h, c                                       ; $6c8d: $61
    or b                                          ; $6c8e: $b0
    ld c, d                                       ; $6c8f: $4a
    xor c                                         ; $6c90: $a9
    ld a, [$a538]                                 ; $6c91: $fa $38 $a5
    ld h, [hl]                                    ; $6c94: $66
    sub l                                         ; $6c95: $95
    ld de, $9878                                  ; $6c96: $11 $78 $98
    rla                                           ; $6c99: $17
    push af                                       ; $6c9a: $f5
    add l                                         ; $6c9b: $85
    scf                                           ; $6c9c: $37
    jr z, jr_024_6c5d                             ; $6c9d: $28 $be

    and d                                         ; $6c9f: $a2
    sub $5f                                       ; $6ca0: $d6 $5f
    ei                                            ; $6ca2: $fb
    sbc a                                         ; $6ca3: $9f
    sub [hl]                                      ; $6ca4: $96
    or h                                          ; $6ca5: $b4
    ld h, $4d                                     ; $6ca6: $26 $4d
    rla                                           ; $6ca8: $17
    inc c                                         ; $6ca9: $0c
    dec a                                         ; $6caa: $3d
    jp z, Jump_024_52af                           ; $6cab: $ca $af $52

    ld h, c                                       ; $6cae: $61
    or b                                          ; $6caf: $b0
    and d                                         ; $6cb0: $a2
    sub $5f                                       ; $6cb1: $d6 $5f
    xor b                                         ; $6cb3: $a8
    db $ec                                        ; $6cb4: $ec
    rst $10                                       ; $6cb5: $d7
    and h                                         ; $6cb6: $a4
    ld e, c                                       ; $6cb7: $59
    ld d, c                                       ; $6cb8: $51
    ld h, c                                       ; $6cb9: $61
    cpl                                           ; $6cba: $2f
    di                                            ; $6cbb: $f3
    sbc h                                         ; $6cbc: $9c
    cp d                                          ; $6cbd: $ba
    ld l, e                                       ; $6cbe: $6b
    ld d, l                                       ; $6cbf: $55
    rst $28                                       ; $6cc0: $ef
    add d                                         ; $6cc1: $82
    db $01                                        ; $6cc2: $01

    db $3d, $ca, $af, $52, $61, $30, $fe, $c6, $38, $f6, $76, $fc, $ca, $d7, $51, $f1
    db $a5, $3d, $2f, $3f, $a6, $a1, $06, $3f, $5b, $32, $9c, $52, $b3, $4e, $69, $e0
    db $56, $1a, $97, $b2, $50, $83, $5b, $69, $9c, $ba, $6b, $55, $87, $2e, $18

    cp l                                          ; $6cf2: $bd
    jp nc, $fecc                                  ; $6cf3: $d2 $cc $fe

    adc a                                         ; $6cf6: $8f
    inc bc                                        ; $6cf7: $03
    sub a                                         ; $6cf8: $97
    and h                                         ; $6cf9: $a4
    ldh [rTIMA], a                                ; $6cfa: $e0 $05
    xor l                                         ; $6cfc: $ad
    ld d, a                                       ; $6cfd: $57
    sbc d                                         ; $6cfe: $9a
    ld a, c                                       ; $6cff: $79
    cp c                                          ; $6d00: $b9
    ld d, h                                       ; $6d01: $54
    ld e, a                                       ; $6d02: $5f
    sub e                                         ; $6d03: $93
    ld b, [hl]                                    ; $6d04: $46
    halt                                          ; $6d05: $76
    ld e, h                                       ; $6d06: $5c
    cp h                                          ; $6d07: $bc
    sbc l                                         ; $6d08: $9d
    daa                                           ; $6d09: $27
    sub [hl]                                      ; $6d0a: $96
    add e                                         ; $6d0b: $83
    adc $c7                                       ; $6d0c: $ce $c7
    cp b                                          ; $6d0e: $b8
    ldh a, [rTMA]                                 ; $6d0f: $f0 $06
    push bc                                       ; $6d11: $c5
    rst $10                                       ; $6d12: $d7
    cp $85                                        ; $6d13: $fe $85
    add hl, hl                                    ; $6d15: $29
    cp a                                          ; $6d16: $bf
    ld c, [hl]                                    ; $6d17: $4e
    ld a, [c]                                     ; $6d18: $f2
    cpl                                           ; $6d19: $2f
    or [hl]                                       ; $6d1a: $b6
    adc c                                         ; $6d1b: $89
    and e                                         ; $6d1c: $a3
    db $e4                                        ; $6d1d: $e4
    ld de, $3d06                                  ; $6d1e: $11 $06 $3d
    jp z, Jump_024_52af                           ; $6d21: $ca $af $52

    ld h, c                                       ; $6d24: $61
    or b                                          ; $6d25: $b0
    ld c, d                                       ; $6d26: $4a
    ld e, [hl]                                    ; $6d27: $5e
    db $fd                                        ; $6d28: $fd
    reti                                          ; $6d29: $d9


    sbc h                                         ; $6d2a: $9c
    rst $08                                       ; $6d2b: $cf
    ld [hl], l                                    ; $6d2c: $75
    adc d                                         ; $6d2d: $8a
    sub d                                         ; $6d2e: $92
    ld h, a                                       ; $6d2f: $67
    ret c                                         ; $6d30: $d8

    ld [hl], a                                    ; $6d31: $77
    cp h                                          ; $6d32: $bc
    push af                                       ; $6d33: $f5
    ld e, a                                       ; $6d34: $5f
    sub l                                         ; $6d35: $95
    sbc l                                         ; $6d36: $9d
    ei                                            ; $6d37: $fb
    or b                                          ; $6d38: $b0
    or h                                          ; $6d39: $b4
    rst $10                                       ; $6d3a: $d7
    and h                                         ; $6d3b: $a4
    jp hl                                         ; $6d3c: $e9


    or d                                          ; $6d3d: $b2
    push af                                       ; $6d3e: $f5
    ld c, d                                       ; $6d3f: $4a
    inc hl                                        ; $6d40: $23
    ld a, e                                       ; $6d41: $7b
    ld a, [$19b0]                                 ; $6d42: $fa $b0 $19
    db $fc                                        ; $6d45: $fc
    add a                                         ; $6d46: $87
    jr nc, jr_024_6dbf                            ; $6d47: $30 $76

    pop bc                                        ; $6d49: $c1
    ld b, l                                       ; $6d4a: $45
    dec hl                                        ; $6d4b: $2b
    ld a, a                                       ; $6d4c: $7f
    or [hl]                                       ; $6d4d: $b6
    halt                                          ; $6d4e: $76
    inc sp                                        ; $6d4f: $33
    cpl                                           ; $6d50: $2f
    rra                                           ; $6d51: $1f
    ld [hl+], a                                   ; $6d52: $22
    inc c                                         ; $6d53: $0c
    dec a                                         ; $6d54: $3d
    jp z, Jump_024_52af                           ; $6d55: $ca $af $52

    ld h, c                                       ; $6d58: $61
    jr nc, @+$78                                  ; $6d59: $30 $76

    add hl, de                                    ; $6d5b: $19
    push de                                       ; $6d5c: $d5
    ld a, h                                       ; $6d5d: $7c
    ldh a, [$1f]                                  ; $6d5e: $f0 $1f
    adc $73                                       ; $6d60: $ce $73
    inc l                                         ; $6d62: $2c
    and a                                         ; $6d63: $a7
    call nc, $b978                                ; $6d64: $d4 $78 $b9
    inc d                                         ; $6d67: $14
    call z, Call_024_4d73                         ; $6d68: $cc $73 $4d
    ld a, [de]                                    ; $6d6b: $1a
    or h                                          ; $6d6c: $b4
    and e                                         ; $6d6d: $a3
    adc l                                         ; $6d6e: $8d
    xor a                                         ; $6d6f: $af
    ld c, c                                       ; $6d70: $49
    inc hl                                        ; $6d71: $23
    ld a, e                                       ; $6d72: $7b
    ld a, [$59b0]                                 ; $6d73: $fa $b0 $59
    call z, $c3ac                                 ; $6d76: $cc $ac $c3
    ld [hl], h                                    ; $6d79: $74
    db $ed                                        ; $6d7a: $ed
    db $eb                                        ; $6d7b: $eb
    inc bc                                        ; $6d7c: $03
    sub a                                         ; $6d7d: $97
    and h                                         ; $6d7e: $a4
    ldh [rTIMA], a                                ; $6d7f: $e0 $05
    ld h, c                                       ; $6d81: $61
    dec a                                         ; $6d82: $3d
    jp z, Jump_024_52af                           ; $6d83: $ca $af $52

    ld h, c                                       ; $6d86: $61
    or b                                          ; $6d87: $b0
    adc [hl]                                      ; $6d88: $8e
    pop af                                        ; $6d89: $f1
    dec [hl]                                      ; $6d8a: $35
    ld l, c                                       ; $6d8b: $69
    ld h, h                                       ; $6d8c: $64
    reti                                          ; $6d8d: $d9


    jp hl                                         ; $6d8e: $e9


    inc h                                         ; $6d8f: $24

jr_024_6d90:
    dec a                                         ; $6d90: $3d
    add hl, sp                                    ; $6d91: $39
    call z, $1073                                 ; $6d92: $cc $73 $10
    rst $38                                       ; $6d95: $ff
    dec sp                                        ; $6d96: $3b
    ld e, l                                       ; $6d97: $5d
    halt                                          ; $6d98: $76
    adc d                                         ; $6d99: $8a
    cp d                                          ; $6d9a: $ba
    ld de, $b18d                                  ; $6d9b: $11 $8d $b1
    pop hl                                        ; $6d9e: $e1
    adc $cb                                       ; $6d9f: $ce $cb
    scf                                           ; $6da1: $37
    xor e                                         ; $6da2: $ab
    sub h                                         ; $6da3: $94
    ld l, d                                       ; $6da4: $6a
    ld a, $75                                     ; $6da5: $3e $75
    rst $10                                       ; $6da7: $d7
    xor d                                         ; $6da8: $aa
    ld a, $be                                     ; $6da9: $3e $be
    call c, Call_000_03f8                         ; $6dab: $dc $f8 $03
    jp z, Jump_024_78e4                           ; $6dae: $ca $e4 $78

    add hl, hl                                    ; $6db1: $29
    ld b, b                                       ; $6db2: $40
    jr jr_024_6df2                                ; $6db3: $18 $3d

    jp z, Jump_024_52af                           ; $6db5: $ca $af $52

    ld h, c                                       ; $6db8: $61
    jr nc, jr_024_6df2                            ; $6db9: $30 $37

    ld b, d                                       ; $6dbb: $42
    rst $08                                       ; $6dbc: $cf
    ld b, $19                                     ; $6dbd: $06 $19

jr_024_6dbf:
    cp [hl]                                       ; $6dbf: $be
    sub a                                         ; $6dc0: $97
    ld c, e                                       ; $6dc1: $4b
    pop bc                                        ; $6dc2: $c1
    ld l, $ad                                     ; $6dc3: $2e $ad
    ld c, c                                       ; $6dc5: $49
    inc hl                                        ; $6dc6: $23
    cp e                                          ; $6dc7: $bb
    ld h, h                                       ; $6dc8: $64
    ld a, l                                       ; $6dc9: $7d
    ld a, [c]                                     ; $6dca: $f2
    sub h                                         ; $6dcb: $94
    ld h, [hl]                                    ; $6dcc: $66
    sub a                                         ; $6dcd: $97
    inc a                                         ; $6dce: $3c
    ld de, $4a42                                  ; $6dcf: $11 $42 $4a
    ld c, e                                       ; $6dd2: $4b
    ld [hl], b                                    ; $6dd3: $70
    cp c                                          ; $6dd4: $b9
    ld d, l                                       ; $6dd5: $55
    sbc c                                         ; $6dd6: $99
    db $fd                                        ; $6dd7: $fd
    ld [$a5e5], a                                 ; $6dd8: $ea $e5 $a5
    ld l, e                                       ; $6ddb: $6b
    rla                                           ; $6ddc: $17
    inc c                                         ; $6ddd: $0c
    dec a                                         ; $6dde: $3d
    jp z, Jump_024_52af                           ; $6ddf: $ca $af $52

    ld h, c                                       ; $6de2: $61
    or b                                          ; $6de3: $b0
    and d                                         ; $6de4: $a2
    sub $df                                       ; $6de5: $d6 $df
    and l                                         ; $6de7: $a5
    ld c, d                                       ; $6de8: $4a
    ld e, [hl]                                    ; $6de9: $5e
    pop hl                                        ; $6dea: $e1
    reti                                          ; $6deb: $d9


    cp h                                          ; $6dec: $bc
    db $fc                                        ; $6ded: $fc
    sbc b                                         ; $6dee: $98
    add [hl]                                      ; $6def: $86
    ld a, [de]                                    ; $6df0: $1a
    db $fc                                        ; $6df1: $fc

jr_024_6df2:
    sbc d                                         ; $6df2: $9a
    inc [hl]                                      ; $6df3: $34
    ld [hl-], a                                   ; $6df4: $32
    add sp, $7c                                   ; $6df5: $e8 $7c
    adc h                                         ; $6df7: $8c
    jr nc, jr_024_6d90                            ; $6df8: $30 $96

    cp e                                          ; $6dfa: $bb
    inc [hl]                                      ; $6dfb: $34
    cpl                                           ; $6dfc: $2f
    rla                                           ; $6dfd: $17
    or $54                                        ; $6dfe: $f6 $54
    and l                                         ; $6e00: $a5
    ld hl, $e97f                                  ; $6e01: $21 $7f $e9
    add d                                         ; $6e04: $82
    ld bc, $ca3d                                  ; $6e05: $01 $3d $ca
    xor a                                         ; $6e08: $af
    ld d, d                                       ; $6e09: $52
    ld h, c                                       ; $6e0a: $61
    or b                                          ; $6e0b: $b0
    and d                                         ; $6e0c: $a2
    sub $5f                                       ; $6e0d: $d6 $5f
    xor b                                         ; $6e0f: $a8
    db $ec                                        ; $6e10: $ec
    rst $10                                       ; $6e11: $d7
    and h                                         ; $6e12: $a4
    reti                                          ; $6e13: $d9


    dec c                                         ; $6e14: $0d
    ld b, e                                       ; $6e15: $43
    ld b, e                                       ; $6e16: $43
    ccf                                           ; $6e17: $3f
    rst $08                                       ; $6e18: $cf
    ld [hl], l                                    ; $6e19: $75
    ld a, [c]                                     ; $6e1a: $f2
    ld b, d                                       ; $6e1b: $42
    ld [de], a                                    ; $6e1c: $12
    ld [hl], a                                    ; $6e1d: $77
    halt                                          ; $6e1e: $76
    jp z, $5cbc                                   ; $6e1f: $ca $bc $5c

    ret c                                         ; $6e22: $d8

jr_024_6e23:
    ld d, e                                       ; $6e23: $53
    sub l                                         ; $6e24: $95
    add [hl]                                      ; $6e25: $86
    db $fc                                        ; $6e26: $fc
    ld h, l                                       ; $6e27: $65
    ld c, c                                       ; $6e28: $49
    or c                                          ; $6e29: $b1
    ld b, c                                       ; $6e2a: $41
    jr jr_024_6e6a                                ; $6e2b: $18 $3d

    jp z, Jump_024_52af                           ; $6e2d: $ca $af $52

    ld h, c                                       ; $6e30: $61
    or b                                          ; $6e31: $b0
    ld c, d                                       ; $6e32: $4a
    ld e, [hl]                                    ; $6e33: $5e
    db $fd                                        ; $6e34: $fd
    and a                                         ; $6e35: $a7
    di                                            ; $6e36: $f3
    rla                                           ; $6e37: $17
    cp c                                          ; $6e38: $b9
    halt                                          ; $6e39: $76
    ld [hl], e                                    ; $6e3a: $73
    add hl, hl                                    ; $6e3b: $29
    jr jr_024_6e23                                ; $6e3c: $18 $e5

    add l                                         ; $6e3e: $85
    sbc a                                         ; $6e3f: $9f
    rla                                           ; $6e40: $17
    push af                                       ; $6e41: $f5
    ld d, l                                       ; $6e42: $55
    ld l, d                                       ; $6e43: $6a
    ldh [$61], a                                  ; $6e44: $e0 $61
    ld c, c                                       ; $6e46: $49
    cp a                                          ; $6e47: $bf
    db $ec                                        ; $6e48: $ec
    ld [hl], h                                    ; $6e49: $74
    sub d                                         ; $6e4a: $92
    sbc [hl]                                      ; $6e4b: $9e
    ld a, h                                       ; $6e4c: $7c
    sbc [hl]                                      ; $6e4d: $9e
    or e                                          ; $6e4e: $b3
    db $e3                                        ; $6e4f: $e3
    ccf                                           ; $6e50: $3f
    jp nz, $ca3d                                  ; $6e51: $c2 $3d $ca

    xor a                                         ; $6e54: $af
    ld d, d                                       ; $6e55: $52
    ld h, c                                       ; $6e56: $61
    or b                                          ; $6e57: $b0
    ld c, d                                       ; $6e58: $4a
    ld e, [hl]                                    ; $6e59: $5e
    db $fd                                        ; $6e5a: $fd
    rla                                           ; $6e5b: $17
    ld a, [de]                                    ; $6e5c: $1a
    cp b                                          ; $6e5d: $b8
    push de                                       ; $6e5e: $d5
    cp h                                          ; $6e5f: $bc
    xor b                                         ; $6e60: $a8
    adc a                                         ; $6e61: $8f
    ld e, l                                       ; $6e62: $5d
    ld [hl], b                                    ; $6e63: $70
    pop de                                        ; $6e64: $d1
    jp z, $d961                                   ; $6e65: $ca $61 $d9

    jp hl                                         ; $6e68: $e9


    inc h                                         ; $6e69: $24

jr_024_6e6a:
    dec a                                         ; $6e6a: $3d
    add hl, sp                                    ; $6e6b: $39
    ld [hl], b                                    ; $6e6c: $70
    rla                                           ; $6e6d: $17
    ld l, d                                       ; $6e6e: $6a
    db $fd                                        ; $6e6f: $fd
    ld d, d                                       ; $6e70: $52
    jr nc, @+$31                                  ; $6e71: $30 $2f

    rra                                           ; $6e73: $1f
    ld l, $26                                     ; $6e74: $2e $26
    db $fc                                        ; $6e76: $fc
    ld [hl], h                                    ; $6e77: $74
    ld l, [hl]                                    ; $6e78: $6e
    add h                                         ; $6e79: $84
    db $10                                        ; $6e7a: $10
    ld b, $3d                                     ; $6e7b: $06 $3d
    jp z, Jump_024_52af                           ; $6e7d: $ca $af $52

    ld h, c                                       ; $6e80: $61
    or b                                          ; $6e81: $b0
    ld c, d                                       ; $6e82: $4a
    ld e, [hl]                                    ; $6e83: $5e
    db $fd                                        ; $6e84: $fd
    rlca                                          ; $6e85: $07
    sbc c                                         ; $6e86: $99
    ld e, [hl]                                    ; $6e87: $5e
    ld l, $05                                     ; $6e88: $2e $05
    dec bc                                        ; $6e8a: $0b
    dec c                                         ; $6e8b: $0d
    call c, Call_024_5e6a                         ; $6e8c: $dc $6a $5e
    call nc, Call_024_4d17                        ; $6e8f: $d4 $17 $4d
    adc h                                         ; $6e92: $8c
    or b                                          ; $6e93: $b0
    and h                                         ; $6e94: $a4
    rst $18                                       ; $6e95: $df
    db $d3                                        ; $6e96: $d3
    add a                                         ; $6e97: $87
    call $073c                                    ; $6e98: $cd $3c $07
    pop af                                        ; $6e9b: $f1
    cp a                                          ; $6e9c: $bf
    add e                                         ; $6e9d: $83
    jr nc, jr_024_6edd                            ; $6e9e: $30 $3d

    jp z, Jump_024_52af                           ; $6ea0: $ca $af $52

    ld h, c                                       ; $6ea3: $61
    or b                                          ; $6ea4: $b0
    ld c, d                                       ; $6ea5: $4a
    ld e, [hl]                                    ; $6ea6: $5e
    db $fd                                        ; $6ea7: $fd
    reti                                          ; $6ea8: $d9


    ld b, d                                       ; $6ea9: $42
    dec c                                         ; $6eaa: $0d
    ld l, [hl]                                    ; $6eab: $6e
    and l                                         ; $6eac: $a5
    ld [hl], c                                    ; $6ead: $71
    halt                                          ; $6eae: $76
    ld c, h                                       ; $6eaf: $4c
    cp $05                                        ; $6eb0: $fe $05
    cp d                                          ; $6eb2: $ba
    db $ec                                        ; $6eb3: $ec
    jr z, jr_024_6f18                             ; $6eb4: $28 $62

    di                                            ; $6eb6: $f3
    ld a, [c]                                     ; $6eb7: $f2
    call $2fc0                                    ; $6eb8: $cd $c0 $2f
    push de                                       ; $6ebb: $d5
    cp e                                          ; $6ebc: $bb
    xor h                                         ; $6ebd: $ac
    ld d, a                                       ; $6ebe: $57
    sbc d                                         ; $6ebf: $9a
    reti                                          ; $6ec0: $d9


    rst $38                                       ; $6ec1: $ff
    ld [hl], c                                    ; $6ec2: $71
    ld a, [de]                                    ; $6ec3: $1a
    push hl                                       ; $6ec4: $e5
    ld b, $c5                                     ; $6ec5: $06 $c5
    cp c                                          ; $6ec7: $b9
    ld l, e                                       ; $6ec8: $6b
    dec de                                        ; $6ec9: $1b
    ld e, a                                       ; $6eca: $5f
    sub e                                         ; $6ecb: $93
    ld b, [hl]                                    ; $6ecc: $46
    sub [hl]                                      ; $6ecd: $96
    sbc l                                         ; $6ece: $9d
    ld c, [hl]                                    ; $6ecf: $4e
    jp nc, $c393                                  ; $6ed0: $d2 $93 $c3

    ld h, d                                       ; $6ed3: $62
    ld h, [hl]                                    ; $6ed4: $66
    ld a, l                                       ; $6ed5: $7d
    ld [hl], b                                    ; $6ed6: $70
    xor e                                         ; $6ed7: $ab
    ld a, [hl-]                                   ; $6ed8: $3a

jr_024_6ed9:
    jp nz, $ca3d                                  ; $6ed9: $c2 $3d $ca

    xor a                                         ; $6edc: $af

jr_024_6edd:
    ld d, d                                       ; $6edd: $52
    ld h, c                                       ; $6ede: $61
    jr nc, jr_024_6ed9                            ; $6edf: $30 $f8

    rrca                                          ; $6ee1: $0f
    rst $20                                       ; $6ee2: $e7
    cp c                                          ; $6ee3: $b9
    and d                                         ; $6ee4: $a2
    sub $1f                                       ; $6ee5: $d6 $1f
    call nz, $9fe4                                ; $6ee7: $c4 $e4 $9f
    adc l                                         ; $6eea: $8d
    dec h                                         ; $6eeb: $25
    ld c, a                                       ; $6eec: $4f

jr_024_6eed:
    ld l, e                                       ; $6eed: $6b
    jp nc, $b2c8                                  ; $6eee: $d2 $c8 $b2

    db $d3                                        ; $6ef1: $d3
    ld c, c                                       ; $6ef2: $49
    ld a, d                                       ; $6ef3: $7a
    ld [hl], d                                    ; $6ef4: $72
    add sp, -$7e                                  ; $6ef5: $e8 $82
    ld bc, $d2bd                                  ; $6ef7: $01 $bd $d2
    ld c, h                                       ; $6efa: $4c
    push hl                                       ; $6efb: $e5
    rla                                           ; $6efc: $17

jr_024_6efd:
    and [hl]                                      ; $6efd: $a6
    push af                                       ; $6efe: $f5
    ld d, d                                       ; $6eff: $52
    jr nc, jr_024_6eed                            ; $6f00: $30 $eb

    ld c, e                                       ; $6f02: $4b
    inc sp                                        ; $6f03: $33
    adc b                                         ; $6f04: $88
    ret                                           ; $6f05: $c9


    rst $00                                       ; $6f06: $c7
    ld b, $ad                                     ; $6f07: $06 $ad
    ld b, a                                       ; $6f09: $47
    ld sp, hl                                     ; $6f0a: $f9
    ld d, l                                       ; $6f0b: $55
    ld a, [hl+]                                   ; $6f0c: $2a
    inc c                                         ; $6f0d: $0c
    ld d, $1a                                     ; $6f0e: $16 $1a
    ldh a, [$15]                                  ; $6f10: $f0 $15
    or l                                          ; $6f12: $b5
    cp $2a                                        ; $6f13: $fe $2a
    dec [hl]                                      ; $6f15: $35
    ldh a, [$6c]                                  ; $6f16: $f0 $6c

jr_024_6f18:
    ld e, [hl]                                    ; $6f18: $5e
    ld l, $74                                     ; $6f19: $2e $74
    pop bc                                        ; $6f1b: $c1
    dec a                                         ; $6f1c: $3d
    jp z, Jump_024_52af                           ; $6f1d: $ca $af $52

    ld h, c                                       ; $6f20: $61
    or b                                          ; $6f21: $b0
    ld c, d                                       ; $6f22: $4a
    ld e, [hl]                                    ; $6f23: $5e
    db $fd                                        ; $6f24: $fd
    reti                                          ; $6f25: $d9


    ld [hl], h                                    ; $6f26: $74
    db $ed                                        ; $6f27: $ed
    xor b                                         ; $6f28: $a8
    ldh [rWX], a                                  ; $6f29: $e0 $4b
    ld a, e                                       ; $6f2b: $7b
    db $fc                                        ; $6f2c: $fc
    dec h                                         ; $6f2d: $25
    ld [hl], $2f                                  ; $6f2e: $36 $2f
    ld [$c76b], a                                 ; $6f30: $ea $6b $c7
    db $e4                                        ; $6f33: $e4
    ld h, c                                       ; $6f34: $61
    jp z, $336b                                   ; $6f35: $ca $6b $33

    and l                                         ; $6f38: $a5
    ld h, l                                       ; $6f39: $65
    and a                                         ; $6f3a: $a7
    sub e                                         ; $6f3b: $93
    db $f4                                        ; $6f3c: $f4
    db $e4                                        ; $6f3d: $e4
    ld e, l                                       ; $6f3e: $5d
    jr nc, jr_024_6f7e                            ; $6f3f: $30 $3d

    jp z, Jump_024_52af                           ; $6f41: $ca $af $52

    ld h, c                                       ; $6f44: $61
    jr nc, jr_024_6f5e                            ; $6f45: $30 $17

    dec h                                         ; $6f47: $25
    or b                                          ; $6f48: $b0
    ld d, e                                       ; $6f49: $53
    jp nz, Jump_024_5367                          ; $6f4a: $c2 $67 $53

    ld e, d                                       ; $6f4d: $5a
    halt                                          ; $6f4e: $76
    ld a, [hl-]                                   ; $6f4f: $3a
    ld c, c                                       ; $6f50: $49
    ld c, a                                       ; $6f51: $4f
    cp [hl]                                       ; $6f52: $be
    ld c, e                                       ; $6f53: $4b
    sbc [hl]                                      ; $6f54: $9e
    ld [$c821], sp                                ; $6f55: $08 $21 $c8
    ldh a, [$bd]                                  ; $6f58: $f0 $bd
    ld e, h                                       ; $6f5a: $5c

Jump_024_6f5b:
    ld a, [bc]                                    ; $6f5b: $0a
    or $11                                        ; $6f5c: $f6 $11

jr_024_6f5e:
    ld e, $61                                     ; $6f5e: $1e $61
    dec a                                         ; $6f60: $3d
    jp z, Jump_024_52af                           ; $6f61: $ca $af $52

    ld h, c                                       ; $6f64: $61
    jr nc, jr_024_6efd                            ; $6f65: $30 $96

    and [hl]                                      ; $6f67: $a6
    dec e                                         ; $6f68: $1d
    ld a, a                                       ; $6f69: $7f
    ld c, l                                       ; $6f6a: $4d
    ld a, [de]                                    ; $6f6b: $1a
    ld e, c                                       ; $6f6c: $59
    ld c, e                                       ; $6f6d: $4b
    rst $30                                       ; $6f6e: $f7
    reti                                          ; $6f6f: $d9


    add hl, hl                                    ; $6f70: $29
    di                                            ; $6f71: $f3
    ld a, [c]                                     ; $6f72: $f2
    ld h, e                                       ; $6f73: $63
    ld b, [hl]                                    ; $6f74: $46
    call nc, $d26f                                ; $6f75: $d4 $6f $d2
    jp nc, $979e                                  ; $6f78: $d2 $9e $97

    dec bc                                        ; $6f7b: $0b
    ld a, e                                       ; $6f7c: $7b
    xor d                                         ; $6f7d: $aa

jr_024_6f7e:
    jp nc, $bf90                                  ; $6f7e: $d2 $90 $bf

    ld [hl], h                                    ; $6f81: $74
    pop bc                                        ; $6f82: $c1
    dec a                                         ; $6f83: $3d
    jp z, Jump_024_52af                           ; $6f84: $ca $af $52

    ld h, c                                       ; $6f87: $61
    jr nc, jr_024_7004                            ; $6f88: $30 $7a

    db $e3                                        ; $6f8a: $e3
    and d                                         ; $6f8b: $a2
    pop af                                        ; $6f8c: $f1
    ld [hl], d                                    ; $6f8d: $72
    db $fc                                        ; $6f8e: $fc
    add hl, hl                                    ; $6f8f: $29
    dec [hl]                                      ; $6f90: $35
    db $eb                                        ; $6f91: $eb
    db $e4                                        ; $6f92: $e4
    add l                                         ; $6f93: $85
    and h                                         ; $6f94: $a4
    and l                                         ; $6f95: $a5
    xor h                                         ; $6f96: $ac
    xor b                                         ; $6f97: $a8
    add h                                         ; $6f98: $84
    or [hl]                                       ; $6f99: $b6
    adc c                                         ; $6f9a: $89
    dec bc                                        ; $6f9b: $0b
    dec [hl]                                      ; $6f9c: $35
    cp b                                          ; $6f9d: $b8
    push de                                       ; $6f9e: $d5

Call_024_6f9f:
    cp h                                          ; $6f9f: $bc
    xor b                                         ; $6fa0: $a8
    cpl                                           ; $6fa1: $2f
    cp h                                          ; $6fa2: $bc
    ld b, c                                       ; $6fa3: $41
    pop af                                        ; $6fa4: $f1
    or l                                          ; $6fa5: $b5
    ld a, a                                       ; $6fa6: $7f
    ld l, d                                       ; $6fa7: $6a
    db $db                                        ; $6fa8: $db
    ld e, a                                       ; $6fa9: $5f
    ld sp, hl                                     ; $6faa: $f9
    and l                                         ; $6fab: $a5
    ld h, b                                       ; $6fac: $60
    ld c, l                                       ; $6fad: $4d
    sbc d                                         ; $6fae: $9a
    ld l, $18                                     ; $6faf: $2e $18
    dec a                                         ; $6fb1: $3d
    jp z, Jump_024_52af                           ; $6fb2: $ca $af $52

    ld h, c                                       ; $6fb5: $61

Jump_024_6fb6:
    or b                                          ; $6fb6: $b0
    ldh [$5a], a                                  ; $6fb7: $e0 $5a
    ld a, a                                       ; $6fb9: $7f
    ld c, l                                       ; $6fba: $4d
    sbc d                                         ; $6fbb: $9a
    jp hl                                         ; $6fbc: $e9


    jp c, $feef                                   ; $6fbd: $da $ef $fe

    ld [hl-], a                                   ; $6fc0: $32
    ld a, b                                       ; $6fc1: $78
    add d                                         ; $6fc2: $82
    ld e, a                                       ; $6fc3: $5f
    jp c, $cbe3                                   ; $6fc4: $da $e3 $cb

    set 1, a                                      ; $6fc7: $cb $cf
    ld [hl], e                                    ; $6fc9: $73
    ld sp, $3eb3                                  ; $6fca: $31 $b3 $3e
    dec sp                                        ; $6fcd: $3b
    ld h, l                                       ; $6fce: $65
    ld [hl], b                                    ; $6fcf: $70
    and e                                         ; $6fd0: $a3
    push af                                       ; $6fd1: $f5
    ld h, l                                       ; $6fd2: $65
    ld [hl], b                                    ; $6fd3: $70
    xor e                                         ; $6fd4: $ab
    ld a, d                                       ; $6fd5: $7a
    ld a, h                                       ; $6fd6: $7c
    add sp, -$7e                                  ; $6fd7: $e8 $82
    ld bc, $ca3d                                  ; $6fd9: $01 $3d $ca
    xor a                                         ; $6fdc: $af

Jump_024_6fdd:
    ld d, d                                       ; $6fdd: $52
    ld h, c                                       ; $6fde: $61
    or b                                          ; $6fdf: $b0
    ld c, d                                       ; $6fe0: $4a
    ld e, [hl]                                    ; $6fe1: $5e
    db $fd                                        ; $6fe2: $fd
    and a                                         ; $6fe3: $a7
    xor e                                         ; $6fe4: $ab
    add l                                         ; $6fe5: $85
    ld c, c                                       ; $6fe6: $49
    ldh [$2f], a                                  ; $6fe7: $e0 $2f
    adc e                                         ; $6fe9: $8b
    ld b, [hl]                                    ; $6fea: $46
    cp [hl]                                       ; $6feb: $be
    add [hl]                                      ; $6fec: $86
    halt                                          ; $6fed: $76
    ld e, h                                       ; $6fee: $5c
    jp z, Jump_024_5074                           ; $6fef: $ca $74 $50

    ld d, d                                       ; $6ff2: $52
    ld a, h                                       ; $6ff3: $7c
    ld a, [hl]                                    ; $6ff4: $7e
    jp $aee7                                      ; $6ff5: $c3 $e7 $ae


    ld c, c                                       ; $6ff8: $49
    ld d, e                                       ; $6ff9: $53
    adc e                                         ; $6ffa: $8b
    ld [hl], c                                    ; $6ffb: $71
    db $ed                                        ; $6ffc: $ed
    rst $18                                       ; $6ffd: $df
    and l                                         ; $6ffe: $a5
    add l                                         ; $6fff: $85
    add hl, hl                                    ; $7000: $29
    cp a                                          ; $7001: $bf
    ld d, b                                       ; $7002: $50
    add e                                         ; $7003: $83

jr_024_7004:
    ld e, e                                       ; $7004: $5b
    ld l, c                                       ; $7005: $69
    call c, $9553                                 ; $7006: $dc $53 $95
    add [hl]                                      ; $7009: $86
    db $fc                                        ; $700a: $fc
    dec b                                         ; $700b: $05
    and $45                                       ; $700c: $e6 $45
    ld l, c                                       ; $700e: $69
    ld b, $8c                                     ; $700f: $06 $8c
    ld b, [hl]                                    ; $7011: $46
    add h                                         ; $7012: $84
    ld bc, $ca3d                                  ; $7013: $01 $3d $ca
    rst $08                                       ; $7016: $cf
    ld d, b                                       ; $7017: $50
    ld sp, hl                                     ; $7018: $f9
    ret c                                         ; $7019: $d8

    or c                                          ; $701a: $b1
    ld c, l                                       ; $701b: $4d
    ld e, h                                       ; $701c: $5c
    and l                                         ; $701d: $a5
    jp nz, $f060                                  ; $701e: $c2 $60 $f0

    call nz, $b4a6                                ; $7021: $c4 $a6 $b4
    db $ec                                        ; $7024: $ec
    ld [hl], h                                    ; $7025: $74
    sub d                                         ; $7026: $92
    sbc [hl]                                      ; $7027: $9e
    ld a, h                                       ; $7028: $7c
    cp d                                          ; $7029: $ba
    ld [hl], d                                    ; $702a: $72
    ret                                           ; $702b: $c9


    sub a                                         ; $702c: $97
    or $f8                                        ; $702d: $f6 $f8
    and d                                         ; $702f: $a2
    cp [hl]                                       ; $7030: $be
    ld h, $4d                                     ; $7031: $26 $4d
    dec l                                         ; $7033: $2d
    add $b1                                       ; $7034: $c6 $b1
    inc e                                         ; $7036: $1c
    dec a                                         ; $7037: $3d
    rlca                                          ; $7038: $07
    rst $20                                       ; $7039: $e7
    xor $86                                       ; $703a: $ee $86
    dec e                                         ; $703c: $1d
    ld c, c                                       ; $703d: $49
    db $eb                                        ; $703e: $eb
    and l                                         ; $703f: $a5
    ld h, b                                       ; $7040: $60
    ld e, [hl]                                    ; $7041: $5e
    cp $ca                                        ; $7042: $fe $ca
    ret c                                         ; $7044: $d8

    db $db                                        ; $7045: $db
    ld c, a                                       ; $7046: $4f
    ldh a, [$08]                                  ; $7047: $f0 $08
    inc bc                                        ; $7049: $03
    dec a                                         ; $704a: $3d
    jp z, Jump_024_52af                           ; $704b: $ca $af $52

    ld h, c                                       ; $704e: $61
    jr nc, jr_024_70ca                            ; $704f: $30 $79

    db $eb                                        ; $7051: $eb

jr_024_7052:
    ld l, e                                       ; $7052: $6b
    ld e, h                                       ; $7053: $5c
    sub e                                         ; $7054: $93
    ld b, [hl]                                    ; $7055: $46
    sub [hl]                                      ; $7056: $96
    sbc l                                         ; $7057: $9d
    ld c, [hl]                                    ; $7058: $4e
    jp nc, Jump_024_4393                          ; $7059: $d2 $93 $43

    ld l, l                                       ; $705c: $6d
    db $fc                                        ; $705d: $fc
    ld l, e                                       ; $705e: $6b
    ld a, l                                       ; $705f: $7d
    ret nc                                        ; $7060: $d0

    ld c, c                                       ; $7061: $49
    sbc a                                         ; $7062: $9f
    rst $20                                       ; $7063: $e7
    sbc d                                         ; $7064: $9a
    inc [hl]                                      ; $7065: $34
    call c, $b129                                 ; $7066: $dc $29 $b1
    dec [hl]                                      ; $7069: $35
    ld l, c                                       ; $706a: $69
    and [hl]                                      ; $706b: $a6
    ld a, [c]                                     ; $706c: $f2
    ld l, e                                       ; $706d: $6b
    cp a                                          ; $706e: $bf
    ei                                            ; $706f: $fb
    res 6, h                                      ; $7070: $cb $b4
    dec e                                         ; $7072: $1d
    ld a, a                                       ; $7073: $7f
    sbc [hl]                                      ; $7074: $9e
    xor e                                         ; $7075: $ab
    inc d                                         ; $7076: $14
    ld a, h                                       ; $7077: $7c
    ret nc                                        ; $7078: $d0

    ld sp, hl                                     ; $7079: $f9
    jr jr_024_70dd                                ; $707a: $18 $61

    ld a, [de]                                    ; $707c: $1a
    add sp, $25                                   ; $707d: $e8 $25
    ldh a, [$79]                                  ; $707f: $f0 $79
    ld sp, hl                                     ; $7081: $f9
    db $10                                        ; $7082: $10
    ld h, c                                       ; $7083: $61
    dec a                                         ; $7084: $3d
    jp z, Jump_024_52af                           ; $7085: $ca $af $52

    ld h, c                                       ; $7088: $61
    jr nc, jr_024_7104                            ; $7089: $30 $79

    ldh a, [$94]                                  ; $708b: $f0 $94
    ld e, a                                       ; $708d: $5f
    sub e                                         ; $708e: $93
    ld b, [hl]                                    ; $708f: $46
    halt                                          ; $7090: $76
    ld [hl], d                                    ; $7091: $72
    rst $30                                       ; $7092: $f7
    ld a, c                                       ; $7093: $79
    ld l, $54                                     ; $7094: $2e $54
    ld c, $37                                     ; $7096: $0e $37
    inc [hl]                                      ; $7098: $34
    ld h, c                                       ; $7099: $61
    rla                                           ; $709a: $17
    inc c                                         ; $709b: $0c

jr_024_709c:
    dec a                                         ; $709c: $3d
    jp z, Jump_024_52af                           ; $709d: $ca $af $52

    ld h, c                                       ; $70a0: $61
    jr nc, jr_024_709c                            ; $70a1: $30 $f9

    jr nc, jr_024_7052                            ; $70a3: $30 $ad

    ccf                                           ; $70a5: $3f
    and l                                         ; $70a6: $a5
    ld h, [hl]                                    ; $70a7: $66
    and c                                         ; $70a8: $a1
    ld b, $b7                                     ; $70a9: $06 $b7
    jp nc, $b7b8                                  ; $70ab: $d2 $b8 $b7

    db $ed                                        ; $70ae: $ed
    xor a                                         ; $70af: $af
    inc e                                         ; $70b0: $1c
    ld hl, $97c4                                  ; $70b1: $21 $c4 $97
    rst $30                                       ; $70b4: $f7
    ld a, [c]                                     ; $70b5: $f2
    or d                                          ; $70b6: $b2
    or $d3                                        ; $70b7: $f6 $d3
    db $db                                        ; $70b9: $db
    or a                                          ; $70ba: $b7
    cp d                                          ; $70bb: $ba
    ld a, [de]                                    ; $70bc: $1a
    sub a                                         ; $70bd: $97
    or d                                          ; $70be: $b2
    and d                                         ; $70bf: $a2
    ld [de], a                                    ; $70c0: $12
    jp c, $2226                                   ; $70c1: $da $26 $22

    add h                                         ; $70c4: $84
    sub $91                                       ; $70c5: $d6 $91
    or a                                          ; $70c7: $b7
    sbc $34                                       ; $70c8: $de $34

jr_024_70ca:
    db $10                                        ; $70ca: $10
    sbc e                                         ; $70cb: $9b
    ld d, l                                       ; $70cc: $55
    ld a, [bc]                                    ; $70cd: $0a
    ld a, $d3                                     ; $70ce: $3e $d3
    ld c, c                                       ; $70d0: $49
    ld e, d                                       ; $70d1: $5a
    sub e                                         ; $70d2: $93
    ld b, $61                                     ; $70d3: $06 $61
    dec a                                         ; $70d5: $3d
    jp z, Jump_024_52af                           ; $70d6: $ca $af $52

Jump_024_70d9:
    ld h, c                                       ; $70d9: $61
    or b                                          ; $70da: $b0
    ld a, [c]                                     ; $70db: $f2
    ld a, [de]                                    ; $70dc: $1a

jr_024_70dd:
    and a                                         ; $70dd: $a7
    ld sp, $49ae                                  ; $70de: $31 $ae $49
    inc hl                                        ; $70e1: $23
    db $e3                                        ; $70e2: $e3
    db $d3                                        ; $70e3: $d3
    db $10                                        ; $70e4: $10
    add e                                         ; $70e5: $83
    add hl, hl                                    ; $70e6: $29
    or c                                          ; $70e7: $b1
    ret                                           ; $70e8: $c9


    add e                                         ; $70e9: $83
    and a                                         ; $70ea: $a7
    db $fc                                        ; $70eb: $fc
    sbc d                                         ; $70ec: $9a
    inc [hl]                                      ; $70ed: $34
    or d                                          ; $70ee: $b2
    sub [hl]                                      ; $70ef: $96
    xor $f3                                       ; $70f0: $ee $f3
    ld e, h                                       ; $70f2: $5c
    xor b                                         ; $70f3: $a8
    inc e                                         ; $70f4: $1c
    ld l, [hl]                                    ; $70f5: $6e
    ld l, b                                       ; $70f6: $68
    jp nz, $182e                                  ; $70f7: $c2 $2e $18

    dec a                                         ; $70fa: $3d
    jp z, Jump_024_52af                           ; $70fb: $ca $af $52

    ld h, c                                       ; $70fe: $61
    or b                                          ; $70ff: $b0
    and d                                         ; $7100: $a2
    sub $5f                                       ; $7101: $d6 $5f
    ld [hl], b                                    ; $7103: $70

jr_024_7104:
    xor l                                         ; $7104: $ad
    ld c, a                                       ; $7105: $4f
    ld l, e                                       ; $7106: $6b
    jp nc, $8420                                  ; $7107: $d2 $20 $84

    sub h                                         ; $710a: $94
    ld h, [hl]                                    ; $710b: $66
    jp nz, Jump_024_7cb6                          ; $710c: $c2 $b6 $7c

    adc h                                         ; $710f: $8c
    jp c, Jump_000_0bb5                           ; $7110: $da $b5 $0b

    ld b, $3d                                     ; $7113: $06 $3d
    jp z, Jump_024_52af                           ; $7115: $ca $af $52

    ld h, c                                       ; $7118: $61
    or b                                          ; $7119: $b0
    ld d, b                                       ; $711a: $50
    reti                                          ; $711b: $d9


    xor a                                         ; $711c: $af
    ld c, c                                       ; $711d: $49
    inc sp                                        ; $711e: $33
    ld [$bc55], sp                                ; $711f: $08 $55 $bc
    bit 7, d                                      ; $7122: $cb $7a
    sub h                                         ; $7124: $94
    rra                                           ; $7125: $1f
    sbc c                                         ; $7126: $99
    or b                                          ; $7127: $b0
    db $fd                                        ; $7128: $fd
    or d                                          ; $7129: $b2
    or h                                          ; $712a: $b4
    ld [hl], a                                    ; $712b: $77
    ld [hl], d                                    ; $712c: $72
    rst $30                                       ; $712d: $f7
    pop de                                        ; $712e: $d1
    ccf                                           ; $712f: $3f
    ld a, e                                       ; $7130: $7b
    ld [hl], $cf                                  ; $7131: $36 $cf
    ld d, l                                       ; $7133: $55
    ld a, [bc]                                    ; $7134: $0a
    ld a, $e8                                     ; $7135: $3e $e8
    ld a, h                                       ; $7137: $7c
    adc h                                         ; $7138: $8c
    or b                                          ; $7139: $b0
    dec bc                                        ; $713a: $0b
    xor e                                         ; $713b: $ab
    adc h                                         ; $713c: $8c
    xor a                                         ; $713d: $af
    db $dd                                        ; $713e: $dd
    xor h                                         ; $713f: $ac
    ld l, b                                       ; $7140: $68
    or h                                          ; $7141: $b4
    cp e                                          ; $7142: $bb
    ld h, b                                       ; $7143: $60
    dec a                                         ; $7144: $3d
    jp z, Jump_024_52af                           ; $7145: $ca $af $52

    ld h, c                                       ; $7148: $61
    or b                                          ; $7149: $b0
    and a                                         ; $714a: $a7
    xor d                                         ; $714b: $aa
    jr z, @-$05                                   ; $714c: $28 $f9

    sub h                                         ; $714e: $94
    sub [hl]                                      ; $714f: $96
    sbc l                                         ; $7150: $9d
    ld c, [hl]                                    ; $7151: $4e
    jp nc, Jump_000_0f93                          ; $7152: $d2 $93 $0f

    ld [hl], d                                    ; $7155: $72
    ld e, [hl]                                    ; $7156: $5e
    call nc, $e5e7                                ; $7157: $d4 $e7 $e5
    xor a                                         ; $715a: $af
    xor h                                         ; $715b: $ac
    ld d, e                                       ; $715c: $53
    ld a, [de]                                    ; $715d: $1a
    cp b                                          ; $715e: $b8
    sub l                                         ; $715f: $95
    add $a9                                       ; $7160: $c6 $a9
    cp e                                          ; $7162: $bb
    ld d, [hl]                                    ; $7163: $56
    ld [hl], l                                    ; $7164: $75
    jr jr_024_71e6                                ; $7165: $18 $7f

    ld h, e                                       ; $7167: $63
    ld e, h                                       ; $7168: $5c
    ld a, c                                       ; $7169: $79
    adc l                                         ; $716a: $8d
    ld l, e                                       ; $716b: $6b
    jp nc, Jump_024_4174                          ; $716c: $d2 $74 $41

    jr jr_024_71ae                                ; $716f: $18 $3d

    jp z, Jump_024_52af                           ; $7171: $ca $af $52

    ld h, c                                       ; $7174: $61
    or b                                          ; $7175: $b0
    ld c, e                                       ; $7176: $4b
    sub l                                         ; $7177: $95
    cp h                                          ; $7178: $bc
    jp nz, $35b3                                  ; $7179: $c2 $b3 $35

    ld l, c                                       ; $717c: $69
    ld h, h                                       ; $717d: $64

Jump_024_717e:
    pop af                                        ; $717e: $f1
    xor l                                         ; $717f: $ad
    rra                                           ; $7180: $1f
    cp e                                          ; $7181: $bb
    xor h                                         ; $7182: $ac
    ld b, a                                       ; $7183: $47
    cp c                                          ; $7184: $b9
    or b                                          ; $7185: $b0
    ld a, [hl+]                                   ; $7186: $2a
    jp $25f6                                      ; $7187: $c3 $f6 $25


    push af                                       ; $718a: $f5
    sbc e                                         ; $718b: $9b
    inc [hl]                                      ; $718c: $34
    ld a, $a5                                     ; $718d: $3e $a5
    ld c, $4b                                     ; $718f: $0e $4b
    adc d                                         ; $7191: $8a
    call $aa92                                    ; $7192: $cd $92 $aa
    ld b, a                                       ; $7195: $47
    jr jr_024_71d5                                ; $7196: $18 $3d

    jp z, Jump_024_52af                           ; $7198: $ca $af $52

    ld h, c                                       ; $719b: $61
    or b                                          ; $719c: $b0
    ldh [$5a], a                                  ; $719d: $e0 $5a
    ld a, a                                       ; $719f: $7f
    ld c, l                                       ; $71a0: $4d
    sbc d                                         ; $71a1: $9a
    jp hl                                         ; $71a2: $e9


    ld a, [hl-]                                   ; $71a3: $3a
    cpl                                           ; $71a4: $2f
    and c                                         ; $71a5: $a1
    jp nc, $ef93                                  ; $71a6: $d2 $93 $ef

    ld d, d                                       ; $71a9: $52
    dec h                                         ; $71aa: $25
    xor a                                         ; $71ab: $af
    ldh a, [$bb]                                  ; $71ac: $f0 $bb

jr_024_71ae:
    or h                                          ; $71ae: $b4
    sub [hl]                                      ; $71af: $96
    xor $5d                                       ; $71b0: $ee $5d
    sub $a3                                       ; $71b2: $d6 $a3
    ld e, h                                       ; $71b4: $5c
    ld e, b                                       ; $71b5: $58
    sub l                                         ; $71b6: $95
    ld h, c                                       ; $71b7: $61
    ei                                            ; $71b8: $fb
    sub d                                         ; $71b9: $92
    ld a, [$1a4d]                                 ; $71ba: $fa $4d $1a
    sbc a                                         ; $71bd: $9f
    ld d, d                                       ; $71be: $52
    add a                                         ; $71bf: $87
    dec h                                         ; $71c0: $25
    push bc                                       ; $71c1: $c5
    ld h, [hl]                                    ; $71c2: $66
    ld c, c                                       ; $71c3: $49
    push de                                       ; $71c4: $d5
    inc hl                                        ; $71c5: $23
    inc c                                         ; $71c6: $0c
    dec a                                         ; $71c7: $3d
    jp z, Jump_024_52af                           ; $71c8: $ca $af $52

    ld h, c                                       ; $71cb: $61
    or b                                          ; $71cc: $b0
    ldh [$5a], a                                  ; $71cd: $e0 $5a
    ld a, a                                       ; $71cf: $7f
    ld c, l                                       ; $71d0: $4d
    sbc d                                         ; $71d1: $9a
    jp hl                                         ; $71d2: $e9


    ld a, [hl-]                                   ; $71d3: $3a
    cpl                                           ; $71d4: $2f

jr_024_71d5:
    and c                                         ; $71d5: $a1
    jp nc, $ef93                                  ; $71d6: $d2 $93 $ef

    ld d, d                                       ; $71d9: $52
    dec h                                         ; $71da: $25
    xor a                                         ; $71db: $af
    ldh a, [$bb]                                  ; $71dc: $f0 $bb
    or h                                          ; $71de: $b4
    sub e                                         ; $71df: $93
    cp e                                          ; $71e0: $bb
    ld [hl], a                                    ; $71e1: $77
    ld e, c                                       ; $71e2: $59
    adc a                                         ; $71e3: $8f
    ld [hl], d                                    ; $71e4: $72
    ld h, c                                       ; $71e5: $61

jr_024_71e6:
    ld d, l                                       ; $71e6: $55
    add [hl]                                      ; $71e7: $86
    db $ed                                        ; $71e8: $ed
    ld c, e                                       ; $71e9: $4b
    ld [$6937], a                                 ; $71ea: $ea $37 $69
    ld a, h                                       ; $71ed: $7c
    ld c, d                                       ; $71ee: $4a
    dec e                                         ; $71ef: $1d
    sub [hl]                                      ; $71f0: $96
    inc d                                         ; $71f1: $14
    sbc e                                         ; $71f2: $9b
    dec h                                         ; $71f3: $25
    ld d, l                                       ; $71f4: $55
    adc a                                         ; $71f5: $8f
    jr nc, jr_024_723f                            ; $71f6: $30 $47

    push bc                                       ; $71f8: $c5
    cp b                                          ; $71f9: $b8
    ld h, $8d                                     ; $71fa: $26 $8d
    db $ec                                        ; $71fc: $ec
    db $e4                                        ; $71fd: $e4
    xor $53                                       ; $71fe: $ee $53
    ld sp, hl                                     ; $7200: $f9
    ld sp, $4bd1                                  ; $7201: $31 $d1 $4b
    rst $08                                       ; $7204: $cf
    and [hl]                                      ; $7205: $a6
    cp h                                          ; $7206: $bc
    ld [hl], $5d                                  ; $7207: $36 $5d
    sub $a3                                       ; $7209: $d6 $a3
    db $fc                                        ; $720b: $fc
    ld c, d                                       ; $720c: $4a
    adc d                                         ; $720d: $8a
    and h                                         ; $720e: $a4
    ld [hl], h                                    ; $720f: $74
    ld e, c                                       ; $7210: $59
    adc a                                         ; $7211: $8f
    ld a, [c]                                     ; $7212: $f2
    dec hl                                        ; $7213: $2b
    add hl, hl                                    ; $7214: $29
    sub d                                         ; $7215: $92
    jp nc, $0305                                  ; $7216: $d2 $05 $03

    dec a                                         ; $7219: $3d
    xor a                                         ; $721a: $af
    sub a                                         ; $721b: $97
    jp hl                                         ; $721c: $e9


    adc $cb                                       ; $721d: $ce $cb
    add sp, -$24                                  ; $721f: $e8 $dc
    dec [hl]                                      ; $7221: $35
    ld l, c                                       ; $7222: $69
    ld h, [hl]                                    ; $7223: $66
    rst $38                                       ; $7224: $ff
    rst $00                                       ; $7225: $c7
    dec [hl]                                      ; $7226: $35
    ld l, c                                       ; $7227: $69
    ld h, h                                       ; $7228: $64
    dec l                                         ; $7229: $2d
    db $dd                                        ; $722a: $dd
    and a                                         ; $722b: $a7
    call nz, Call_024_7276                        ; $722c: $c4 $76 $72
    rst $30                                       ; $722f: $f7
    ret                                           ; $7230: $c9


    add e                                         ; $7231: $83
    and a                                         ; $7232: $a7
    inc a                                         ; $7233: $3c
    sbc e                                         ; $7234: $9b
    sub a                                         ; $7235: $97
    ld e, a                                       ; $7236: $5f
    xor b                                         ; $7237: $a8
    inc e                                         ; $7238: $1c
    ld l, [hl]                                    ; $7239: $6e
    ld l, b                                       ; $723a: $68
    jp nz, $182e                                  ; $723b: $c2 $2e $18

    cp l                                          ; $723e: $bd

jr_024_723f:
    jp nc, Jump_024_782c                          ; $723f: $d2 $2c $78

    sbc a                                         ; $7242: $9f
    jp nc, $d52e                                  ; $7243: $d2 $2e $d5

    db $e3                                        ; $7246: $e3
    and l                                         ; $7247: $a5
    ld h, b                                       ; $7248: $60
    ld e, [hl]                                    ; $7249: $5e
    call nc, $a4d7                                ; $724a: $d4 $d7 $a4
    sbc c                                         ; $724d: $99
    jp z, $cc2f                                   ; $724e: $ca $2f $cc

    ldh a, [$c9]                                  ; $7251: $f0 $c9
    ld d, l                                       ; $7253: $55
    ld l, [hl]                                    ; $7254: $6e
    ld l, h                                       ; $7255: $6c
    halt                                          ; $7256: $76
    jp $d0d0                                      ; $7257: $c3 $d0 $d0


    rst $08                                       ; $725a: $cf
    ld [hl], e                                    ; $725b: $73
    ld a, [de]                                    ; $725c: $1a
    db $e3                                        ; $725d: $e3
    ld b, d                                       ; $725e: $42
    dec c                                         ; $725f: $0d
    ld l, [hl]                                    ; $7260: $6e
    push de                                       ; $7261: $d5
    dec b                                         ; $7262: $05
    inc bc                                        ; $7263: $03
    dec a                                         ; $7264: $3d
    jp z, Jump_024_5585                           ; $7265: $ca $85 $55

    ld a, [hl+]                                   ; $7268: $2a
    ld l, h                                       ; $7269: $6c
    ld d, l                                       ; $726a: $55
    add [hl]                                      ; $726b: $86
    db $ed                                        ; $726c: $ed
    ld c, e                                       ; $726d: $4b
    ld [$6937], a                                 ; $726e: $ea $37 $69
    and c                                         ; $7271: $a1
    sub $1f                                       ; $7272: $d6 $1f
    sub $a4                                       ; $7274: $d6 $a4

Call_024_7276:
    reti                                          ; $7276: $d9


    dec c                                         ; $7277: $0d
    ld b, e                                       ; $7278: $43
    ld b, e                                       ; $7279: $43
    ccf                                           ; $727a: $3f
    ld e, e                                       ; $727b: $5b
    ld [hl-], a                                   ; $727c: $32
    sbc h                                         ; $727d: $9c
    add $38                                       ; $727e: $c6 $38
    ld c, d                                       ; $7280: $4a
    ld [$d43b], a                                 ; $7281: $ea $3b $d4
    ldh [rRP], a                                  ; $7284: $e0 $56
    ld a, [de]                                    ; $7286: $1a
    and a                                         ; $7287: $a7
    xor $5a                                       ; $7288: $ee $5a
    push de                                       ; $728a: $d5
    ld h, c                                       ; $728b: $61
    sub a                                         ; $728c: $97
    and [hl]                                      ; $728d: $a6
    or h                                          ; $728e: $b4
    and a                                         ; $728f: $a7
    ld a, [hl+]                                   ; $7290: $2a
    dec c                                         ; $7291: $0d
    ld sp, hl                                     ; $7292: $f9
    dec bc                                        ; $7293: $0b
    jp nz, $d947                                  ; $7294: $c2 $47 $d9

    cp $b2                                        ; $7297: $fe $b2
    ld h, $cd                                     ; $7299: $26 $cd
    xor d                                         ; $729b: $aa
    inc c                                         ; $729c: $0c
    db $db                                        ; $729d: $db
    sub a                                         ; $729e: $97
    ld a, [hl]                                    ; $729f: $7e
    ld e, [hl]                                    ; $72a0: $5e
    ld e, $7e                                     ; $72a1: $1e $7e
    sub l                                         ; $72a3: $95
    ld a, [bc]                                    ; $72a4: $0a
    inc bc                                        ; $72a5: $03
    xor $9a                                       ; $72a6: $ee $9a
    inc [hl]                                      ; $72a8: $34
    or d                                          ; $72a9: $b2
    db $ec                                        ; $72aa: $ec
    ld [hl], h                                    ; $72ab: $74

jr_024_72ac:
    sub d                                         ; $72ac: $92
    sbc [hl]                                      ; $72ad: $9e
    inc e                                         ; $72ae: $1c
    ld d, $33                                     ; $72af: $16 $33
    db $eb                                        ; $72b1: $eb
    or e                                          ; $72b2: $b3
    cp [hl]                                       ; $72b3: $be
    inc [hl]                                      ; $72b4: $34
    call c, Call_024_5f59                         ; $72b5: $dc $59 $5f
    sbc d                                         ; $72b8: $9a
    pop af                                        ; $72b9: $f1
    xor a                                         ; $72ba: $af
    ld [hl], l                                    ; $72bb: $75
    add h                                         ; $72bc: $84
    db $10                                        ; $72bd: $10
    ld b, $47                                     ; $72be: $06 $47
    reti                                          ; $72c0: $d9


    cp $b2                                        ; $72c1: $fe $b2
    ld a, [hl+]                                   ; $72c3: $2a
    jp $a5f6                                      ; $72c4: $c3 $f6 $a5


    ld c, e                                       ; $72c7: $4b
    pop bc                                        ; $72c8: $c1
    cp h                                          ; $72c9: $bc
    inc a                                         ; $72ca: $3c
    db $fc                                        ; $72cb: $fc
    ld a, [hl+]                                   ; $72cc: $2a
    dec d                                         ; $72cd: $15
    ld b, $dc                                     ; $72ce: $06 $dc
    dec [hl]                                      ; $72d0: $35
    ld l, c                                       ; $72d1: $69
    ld h, [hl]                                    ; $72d2: $66
    rst $38                                       ; $72d3: $ff
    rst $00                                       ; $72d4: $c7
    push bc                                       ; $72d5: $c5
    ld e, e                                       ; $72d6: $5b
    rst $38                                       ; $72d7: $ff
    add hl, hl                                    ; $72d8: $29
    dec [hl]                                      ; $72d9: $35
    add e                                         ; $72da: $83
    adc $c7                                       ; $72db: $ce $c7
    ld [$d26b], sp                                ; $72dd: $08 $6b $d2
    xor h                                         ; $72e0: $ac
    ld d, d                                       ; $72e1: $52
    ldh a, [$f1]                                  ; $72e2: $f0 $f1
    scf                                           ; $72e4: $37
    add $b5                                       ; $72e5: $c6 $b5
    ld a, a                                       ; $72e7: $7f
    and c                                         ; $72e8: $a1
    xor c                                         ; $72e9: $a9
    jp z, Jump_000_25c0                           ; $72ea: $ca $c0 $25

    add hl, hl                                    ; $72ed: $29
    ld a, b                                       ; $72ee: $78
    jp hl                                         ; $72ef: $e9


    add d                                         ; $72f0: $82
    ld bc, $ca3d                                  ; $72f1: $01 $3d $ca
    xor a                                         ; $72f4: $af
    ld d, d                                       ; $72f5: $52
    ld h, c                                       ; $72f6: $61
    or b                                          ; $72f7: $b0

Jump_024_72f8:
    and d                                         ; $72f8: $a2
    sub $5f                                       ; $72f9: $d6 $5f
    jr nz, jr_024_72ac                            ; $72fb: $20 $af

    ld e, $9b                                     ; $72fd: $1e $9b
    ld e, l                                       ; $72ff: $5d
    xor d                                         ; $7300: $aa
    db $e4                                        ; $7301: $e4
    dec d                                         ; $7302: $15
    sbc [hl]                                      ; $7303: $9e
    call $8fcb                                    ; $7304: $cd $cb $8f
    ld l, c                                       ; $7307: $69
    xor b                                         ; $7308: $a8
    pop bc                                        ; $7309: $c1
    xor a                                         ; $730a: $af
    ld c, c                                       ; $730b: $49
    inc sp                                        ; $730c: $33
    sub [hl]                                      ; $730d: $96
    cp e                                          ; $730e: $bb
    inc [hl]                                      ; $730f: $34
    and l                                         ; $7310: $a5
    dec a                                         ; $7311: $3d
    ld d, l                                       ; $7312: $55
    ld l, c                                       ; $7313: $69
    ret z                                         ; $7314: $c8

    ld e, a                                       ; $7315: $5f
    db $10                                        ; $7316: $10
    ld b, $3d                                     ; $7317: $06 $3d
    jp z, $55af                                   ; $7319: $ca $af $55

    ld b, l                                       ; $731c: $45
    sbc d                                         ; $731d: $9a
    ld [hl], l                                    ; $731e: $75
    ld c, a                                       ; $731f: $4f
    rst $30                                       ; $7320: $f7
    sub a                                         ; $7321: $97
    ld d, l                                       ; $7322: $55
    ld a, [hl+]                                   ; $7323: $2a
    ld l, h                                       ; $7324: $6c
    ld b, l                                       ; $7325: $45
    ld h, c                                       ; $7326: $61
    pop bc                                        ; $7327: $c1
    or l                                          ; $7328: $b5
    ld a, $ad                                     ; $7329: $3e $ad
    ld c, c                                       ; $732b: $49
    inc sp                                        ; $732c: $33
    adc l                                         ; $732d: $8d
    ld [hl], c                                    ; $732e: $71
    ret nc                                        ; $732f: $d0

    ld sp, hl                                     ; $7330: $f9
    jr jr_024_7394                                ; $7331: $18 $61

    ld [$950b], a                                 ; $7333: $ea $0b $95
    jp Jump_024_4d0d                              ; $7336: $c3 $0d $4d


    cp b                                          ; $7339: $b8
    ld hl, sp-$2a                                 ; $733a: $f8 $d6
    adc a                                         ; $733c: $8f
    call c, $b129                                 ; $733d: $dc $29 $b1
    ld d, l                                       ; $7340: $55
    add hl, de                                    ; $7341: $19
    ld d, e                                       ; $7342: $53
    ld a, [$92ae]                                 ; $7343: $fa $ae $92
    dec a                                         ; $7346: $3d
    sbc e                                         ; $7347: $9b
    sub a                                         ; $7348: $97
    ld e, a                                       ; $7349: $5f
    and l                                         ; $734a: $a5
    jp nz, $9760                                  ; $734b: $c2 $60 $97

    sub $a4                                       ; $734e: $d6 $a4
    sub c                                         ; $7350: $91
    dec e                                         ; $7351: $1d
    sub a                                         ; $7352: $97
    pop af                                        ; $7353: $f1
    and $4e                                       ; $7354: $e6 $4e
    sub $e0                                       ; $7356: $d6 $e0
    xor [hl]                                      ; $7358: $ae
    db $dd                                        ; $7359: $dd
    adc h                                         ; $735a: $8c
    ld a, l                                       ; $735b: $7d
    ld d, l                                       ; $735c: $55
    rst $28                                       ; $735d: $ef
    add d                                         ; $735e: $82
    ld bc, $d2bd                                  ; $735f: $01 $bd $d2
    xor h                                         ; $7362: $ac
    xor b                                         ; $7363: $a8
    push af                                       ; $7364: $f5
    and a                                         ; $7365: $a7
    push de                                       ; $7366: $d5
    ld sp, hl                                     ; $7367: $f9
    and $ca                                       ; $7368: $e6 $ca
    or e                                          ; $736a: $b3
    add hl, hl                                    ; $736b: $29
    db $ed                                        ; $736c: $ed
    rst $08                                       ; $736d: $cf
    scf                                           ; $736e: $37
    or a                                          ; $736f: $b7
    and e                                         ; $7370: $a3
    db $ed                                        ; $7371: $ed
    ld hl, sp-$45                                 ; $7372: $f8 $bb
    cp $21                                        ; $7374: $fe $21
    ld e, d                                       ; $7376: $5a
    adc a                                         ; $7377: $8f
    call c, Call_024_6f9f                         ; $7378: $dc $9f $6f
    ld l, [hl]                                    ; $737b: $6e
    ld h, a                                       ; $737c: $67
    ld c, d                                       ; $737d: $4a
    cp e                                          ; $737e: $bb
    cp $21                                        ; $737f: $fe $21
    ld [hl], a                                    ; $7381: $77
    dec e                                         ; $7382: $1d
    ld a, c                                       ; $7383: $79
    add b                                         ; $7384: $80
    or l                                          ; $7385: $b5
    cp b                                          ; $7386: $b8
    adc d                                         ; $7387: $8a
    rst $08                                       ; $7388: $cf
    ld [hl], e                                    ; $7389: $73
    ld l, l                                       ; $738a: $6d
    cp c                                          ; $738b: $b9
    inc d                                         ; $738c: $14
    call z, $e674                                 ; $738d: $cc $74 $e6
    push hl                                       ; $7390: $e5
    ld [hl], a                                    ; $7391: $77
    or d                                          ; $7392: $b2
    ld e, [hl]                                    ; $7393: $5e

jr_024_7394:
    jp c, $4fc9                                   ; $7394: $da $c9 $4f

    ld h, [hl]                                    ; $7397: $66
    ld c, d                                       ; $7398: $4a
    ld l, h                                       ; $7399: $6c
    ld e, [hl]                                    ; $739a: $5e
    sbc [hl]                                      ; $739b: $9e
    ld b, $1f                                     ; $739c: $06 $1f
    cp a                                          ; $739e: $bf
    ld a, [c]                                     ; $739f: $f2
    or l                                          ; $73a0: $b5
    cp b                                          ; $73a1: $b8
    cp d                                          ; $73a2: $ba
    add c                                         ; $73a3: $81
    push af                                       ; $73a4: $f5
    or e                                          ; $73a5: $b3
    ld h, e                                       ; $73a6: $63
    rst $08                                       ; $73a7: $cf
    scf                                           ; $73a8: $37
    or a                                          ; $73a9: $b7
    add e                                         ; $73aa: $83
    ld h, [hl]                                    ; $73ab: $66
    and c                                         ; $73ac: $a1
    and l                                         ; $73ad: $a5
    or b                                          ; $73ae: $b0
    sub a                                         ; $73af: $97
    ld a, c                                       ; $73b0: $79
    xor $d8                                       ; $73b1: $ee $d8
    di                                            ; $73b3: $f3
    call $cced                                    ; $73b4: $cd $ed $cc
    set 5, a                                      ; $73b7: $cb $ef
    ld a, [$dc87]                                 ; $73b9: $fa $87 $dc
    sub l                                         ; $73bc: $95
    dec de                                        ; $73bd: $1b
    sub h                                         ; $73be: $94
    ld a, b                                       ; $73bf: $78
    add e                                         ; $73c0: $83
    ld [c], a                                     ; $73c1: $e2
    di                                            ; $73c2: $f3
    ld a, [c]                                     ; $73c3: $f2
    db $eb                                        ; $73c4: $eb
    ld b, h                                       ; $73c5: $44
    xor l                                         ; $73c6: $ad
    ld a, [hl]                                    ; $73c7: $7e
    ld c, c                                       ; $73c8: $49
    ld l, e                                       ; $73c9: $6b
    ld d, l                                       ; $73ca: $55
    sub c                                         ; $73cb: $91

Jump_024_73cc:
    and [hl]                                      ; $73cc: $a6
    ld b, $eb                                     ; $73cd: $06 $eb
    call c, $8dca                                 ; $73cf: $dc $ca $8d
    db $fc                                        ; $73d2: $fc
    ld hl, sp-$0e                                 ; $73d3: $f8 $f2
    ld a, [c]                                     ; $73d5: $f2
    cp e                                          ; $73d6: $bb
    ld a, $28                                     ; $73d7: $3e $28
    ld l, c                                       ; $73d9: $69
    ld [hl+], a                                   ; $73da: $22
    ld e, e                                       ; $73db: $5b
    sub b                                         ; $73dc: $90
    ld d, e                                       ; $73dd: $53
    ld h, d                                       ; $73de: $62
    db $eb                                        ; $73df: $eb
    ret z                                         ; $73e0: $c8

    inc bc                                        ; $73e1: $03
    call z, $efcb                                 ; $73e2: $cc $cb $ef
    xor b                                         ; $73e5: $a8
    dec e                                         ; $73e6: $1d
    ld l, l                                       ; $73e7: $6d
    call c, $d093                                 ; $73e8: $dc $93 $d0
    ld a, d                                       ; $73eb: $7a
    sub h                                         ; $73ec: $94
    dec bc                                        ; $73ed: $0b
    add e                                         ; $73ee: $83
    ld c, d                                       ; $73ef: $4a
    cp $69                                        ; $73f0: $fe $69
    ld a, [de]                                    ; $73f2: $1a
    ld hl, $91d7                                  ; $73f3: $21 $d7 $91
    or h                                          ; $73f6: $b4
    ld e, [hl]                                    ; $73f7: $5e
    or $b0                                        ; $73f8: $f6 $b0
    ld h, $cd                                     ; $73fa: $26 $cd
    ld hl, sp-$15                                 ; $73fc: $f8 $eb
    ld h, l                                       ; $73fe: $65
    sub a                                         ; $73ff: $97
    db $ec                                        ; $7400: $ec
    sub h                                         ; $7401: $94
    ld d, b                                       ; $7402: $50
    db $fd                                        ; $7403: $fd
    ld h, $4d                                     ; $7404: $26 $4d
    db $db                                        ; $7406: $db
    ld l, c                                       ; $7407: $69
    ld a, h                                       ; $7408: $7c
    ld c, l                                       ; $7409: $4d
    ld a, [de]                                    ; $740a: $1a
    add hl, de                                    ; $740b: $19
    cp b                                          ; $740c: $b8
    ld a, [$bf05]                                 ; $740d: $fa $05 $bf
    dec d                                         ; $7410: $15
    ld [hl], b                                    ; $7411: $70
    ld [hl], a                                    ; $7412: $77
    jp nc, $3f5b                                  ; $7413: $d2 $5b $3f

    ld [hl], d                                    ; $7416: $72
    ld [hl], a                                    ; $7417: $77
    inc l                                         ; $7418: $2c
    add a                                         ; $7419: $87
    adc $cb                                       ; $741a: $ce $cb
    ld a, l                                       ; $741c: $7d
    xor d                                         ; $741d: $aa
    ld a, [hl]                                    ; $741e: $7e
    ld c, d                                       ; $741f: $4a
    ld l, h                                       ; $7420: $6c
    dec l                                         ; $7421: $2d
    or a                                          ; $7422: $b7
    xor d                                         ; $7423: $aa
    rst $00                                       ; $7424: $c7
    rlca                                          ; $7425: $07
    add h                                         ; $7426: $84
    ld bc, $723d                                  ; $7427: $01 $3d $72
    ld b, $7e                                     ; $742a: $06 $7e
    ld c, d                                       ; $742c: $4a
    cp e                                          ; $742d: $bb
    cp $21                                        ; $742e: $fe $21
    ld [hl], a                                    ; $7430: $77
    dec e                                         ; $7431: $1d
    ld a, c                                       ; $7432: $79
    add b                                         ; $7433: $80
    or l                                          ; $7434: $b5
    cp b                                          ; $7435: $b8
    adc d                                         ; $7436: $8a
    rst $08                                       ; $7437: $cf
    ld [hl], e                                    ; $7438: $73
    ld l, l                                       ; $7439: $6d
    cp c                                          ; $743a: $b9
    inc d                                         ; $743b: $14
    call z, $e674                                 ; $743c: $cc $74 $e6
    push hl                                       ; $743f: $e5
    ld [hl], a                                    ; $7440: $77
    or d                                          ; $7441: $b2
    ld e, [hl]                                    ; $7442: $5e
    jp c, $4fc9                                   ; $7443: $da $c9 $4f

    add [hl]                                      ; $7446: $86
    dec sp                                        ; $7447: $3b
    cpl                                           ; $7448: $2f
    ld c, a                                       ; $7449: $4f
    add e                                         ; $744a: $83
    adc a                                         ; $744b: $8f
    ld e, a                                       ; $744c: $5f
    ld sp, hl                                     ; $744d: $f9
    inc l                                         ; $744e: $2c
    cp $e1                                        ; $744f: $fe $e1
    inc a                                         ; $7451: $3c
    rlca                                          ; $7452: $07
    rst $38                                       ; $7453: $ff
    db $e3                                        ; $7454: $e3
    adc e                                         ; $7455: $8b
    ld a, [$7fae]                                 ; $7456: $fa $ae $7f
    ld [$d26b], sp                                ; $7459: $08 $6b $d2
    xor h                                         ; $745c: $ac
    xor b                                         ; $745d: $a8
    push af                                       ; $745e: $f5
    pop de                                        ; $745f: $d1
    ld e, d                                       ; $7460: $5a
    ld l, a                                       ; $7461: $6f
    ld d, b                                       ; $7462: $50
    ld [c], a                                     ; $7463: $e2
    dec c                                         ; $7464: $0d
    adc d                                         ; $7465: $8a
    rst $08                                       ; $7466: $cf
    set 5, a                                      ; $7467: $cb $ef
    ld a, [$6b87]                                 ; $7469: $fa $87 $6b
    jp nc, $bf8c                                  ; $746c: $d2 $8c $bf

    ld d, b                                       ; $746f: $50
    and $39                                       ; $7470: $e6 $39
    inc bc                                        ; $7472: $03
    ccf                                           ; $7473: $3f
    dec h                                         ; $7474: $25
    or [hl]                                       ; $7475: $b6
    adc [hl]                                      ; $7476: $8e
    inc a                                         ; $7477: $3c
    ret nz                                        ; $7478: $c0

    cp h                                          ; $7479: $bc
    db $fc                                        ; $747a: $fc
    adc [hl]                                      ; $747b: $8e
    jp c, $c6d1                                   ; $747c: $da $d1 $c6

    dec a                                         ; $747f: $3d
    add hl, bc                                    ; $7480: $09
    ld h, c                                       ; $7481: $61

Jump_024_7482:
    ld b, a                                       ; $7482: $47
    push bc                                       ; $7483: $c5
    cp b                                          ; $7484: $b8
    xor $e9                                       ; $7485: $ee $e9
    scf                                           ; $7487: $37
    add hl, bc                                    ; $7488: $09
    and [hl]                                      ; $7489: $a6
    ld a, [c]                                     ; $748a: $f2
    dec bc                                        ; $748b: $0b
    sub l                                         ; $748c: $95
    db $fd                                        ; $748d: $fd
    ld l, $ad                                     ; $748e: $2e $ad
    sbc e                                         ; $7490: $9b
    sbc d                                         ; $7491: $9a
    ret z                                         ; $7492: $c8

    inc h                                         ; $7493: $24
    add hl, bc                                    ; $7494: $09
    ret nc                                        ; $7495: $d0

    inc l                                         ; $7496: $2c
    or $9a                                        ; $7497: $f6 $9a
    inc [hl]                                      ; $7499: $34
    add e                                         ; $749a: $83
    adc a                                         ; $749b: $8f
    ld e, a                                       ; $749c: $5f
    ld sp, hl                                     ; $749d: $f9
    sub h                                         ; $749e: $94
    ret c                                         ; $749f: $d8

    inc c                                         ; $74a0: $0c
    db $fc                                        ; $74a1: $fc
    sbc d                                         ; $74a2: $9a
    inc [hl]                                      ; $74a3: $34
    or d                                          ; $74a4: $b2
    ld l, [hl]                                    ; $74a5: $6e
    ld l, d                                       ; $74a6: $6a
    ld [hl+], a                                   ; $74a7: $22
    sub e                                         ; $74a8: $93
    inc h                                         ; $74a9: $24
    xor $9a                                       ; $74aa: $ee $9a
    inc [hl]                                      ; $74ac: $34

jr_024_74ad:
    db $e3                                        ; $74ad: $e3
    ld l, a                                       ; $74ae: $6f
    adc h                                         ; $74af: $8c
    dec bc                                        ; $74b0: $0b
    sbc $a7                                       ; $74b1: $de $a7
    add e                                         ; $74b3: $83
    ld c, d                                       ; $74b4: $4a
    cp $69                                        ; $74b5: $fe $69
    ld d, b                                       ; $74b7: $50
    sub d                                         ; $74b8: $92
    cp a                                          ; $74b9: $bf
    inc d                                         ; $74ba: $14
    ld c, h                                       ; $74bb: $4c
    ld h, e                                       ; $74bc: $63
    call c, Call_024_40a5                         ; $74bd: $dc $a5 $40
    sbc [hl]                                      ; $74c0: $9e
    db $dd                                        ; $74c1: $dd
    daa                                           ; $74c2: $27
    add a                                         ; $74c3: $87
    dec [hl]                                      ; $74c4: $35
    ld l, c                                       ; $74c5: $69
    ld d, [hl]                                    ; $74c6: $56
    call nc, Call_024_68fa                        ; $74c7: $d4 $fa $68
    dec l                                         ; $74ca: $2d
    rra                                           ; $74cb: $1f
    cp a                                          ; $74cc: $bf

jr_024_74cd:
    ld a, [c]                                     ; $74cd: $f2
    ld a, c                                       ; $74ce: $79
    ld sp, hl                                     ; $74cf: $f9
    ld e, l                                       ; $74d0: $5d
    ld a, [bc]                                    ; $74d1: $0a
    db $e4                                        ; $74d2: $e4
    reti                                          ; $74d3: $d9


    ld a, l                                       ; $74d4: $7d
    ld [hl], d                                    ; $74d5: $72
    ld e, b                                       ; $74d6: $58
    sub e                                         ; $74d7: $93
    ld h, [hl]                                    ; $74d8: $66
    cp h                                          ; $74d9: $bc
    sub d                                         ; $74da: $92
    ld c, a                                       ; $74db: $4f
    adc c                                         ; $74dc: $89
    call $d3cb                                    ; $74dd: $cd $cb $d3
    ld a, [hl-]                                   ; $74e0: $3a
    ld a, [c]                                     ; $74e1: $f2
    nop                                           ; $74e2: $00
    ld l, e                                       ; $74e3: $6b
    ld [hl], c                                    ; $74e4: $71
    dec d                                         ; $74e5: $15
    sbc a                                         ; $74e6: $9f
    rst $20                                       ; $74e7: $e7
    jp nz, Jump_024_61cb                          ; $74e8: $c2 $cb $61

    ld e, [hl]                                    ; $74eb: $5e
    ld a, $44                                     ; $74ec: $3e $44
    jr jr_024_74ad                                ; $74ee: $18 $bd

    jp nc, $a8ac                                  ; $74f0: $d2 $ac $a8

    push af                                       ; $74f3: $f5
    rst $20                                       ; $74f4: $e7
    push hl                                       ; $74f5: $e5
    ld h, a                                       ; $74f6: $67
    and c                                         ; $74f7: $a1
    ld b, b                                       ; $74f8: $40
    sbc [hl]                                      ; $74f9: $9e
    db $dd                                        ; $74fa: $dd
    daa                                           ; $74fb: $27
    rst $18                                       ; $74fc: $df
    or c                                          ; $74fd: $b1
    ld d, h                                       ; $74fe: $54
    dec [hl]                                      ; $74ff: $35
    ld d, l                                       ; $7500: $55
    call z, $b3ce                                 ; $7501: $cc $ce $b3
    xor e                                         ; $7504: $ab
    ld l, b                                       ; $7505: $68
    and a                                         ; $7506: $a7
    inc h                                         ; $7507: $24
    cp a                                          ; $7508: $bf
    ld h, $cd                                     ; $7509: $26 $cd
    ld a, [hl+]                                   ; $750b: $2a
    and l                                         ; $750c: $a5
    ld d, l                                       ; $750d: $55
    add hl, de                                    ; $750e: $19
    db $e3                                        ; $750f: $e3
    ld d, a                                       ; $7510: $57
    cp [hl]                                       ; $7511: $be
    ld c, [hl]                                    ; $7512: $4e
    ld a, [$da4d]                                 ; $7513: $fa $4d $da
    and l                                         ; $7516: $a5
    ld b, b                                       ; $7517: $40
    sbc [hl]                                      ; $7518: $9e
    db $dd                                        ; $7519: $dd
    daa                                           ; $751a: $27
    add a                                         ; $751b: $87
    add hl, hl                                    ; $751c: $29
    or c                                          ; $751d: $b1
    add c                                         ; $751e: $81
    and a                                         ; $751f: $a7
    db $fc                                        ; $7520: $fc
    ld a, [hl-]                                   ; $7521: $3a
    jp hl                                         ; $7522: $e9


    scf                                           ; $7523: $37
    ld l, c                                       ; $7524: $69
    ld a, [c]                                     ; $7525: $f2
    push de                                       ; $7526: $d5
    db $ed                                        ; $7527: $ed
    inc a                                         ; $7528: $3c
    and b                                         ; $7529: $a0
    ld [hl], l                                    ; $752a: $75
    sub a                                         ; $752b: $97
    rlca                                          ; $752c: $07
    ld e, b                                       ; $752d: $58
    adc e                                         ; $752e: $8b
    xor e                                         ; $752f: $ab
    jr c, @+$79                                   ; $7530: $38 $77

    ld e, [hl]                                    ; $7532: $5e
    sbc [hl]                                      ; $7533: $9e
    ld b, $1f                                     ; $7534: $06 $1f
    cp a                                          ; $7536: $bf
    ld a, [c]                                     ; $7537: $f2
    ld a, c                                       ; $7538: $79
    ld sp, hl                                     ; $7539: $f9
    ld e, c                                       ; $753a: $59
    jr z, jr_024_74cd                             ; $753b: $28 $90

    ld h, a                                       ; $753d: $67
    rst $30                                       ; $753e: $f7
    ret                                           ; $753f: $c9


    ld [hl], a                                    ; $7540: $77
    inc l                                         ; $7541: $2c
    ld d, l                                       ; $7542: $55
    ld c, l                                       ; $7543: $4d
    dec d                                         ; $7544: $15
    or e                                          ; $7545: $b3
    di                                            ; $7546: $f3
    db $ec                                        ; $7547: $ec
    ld [$c96c], a                                 ; $7548: $ea $6c $c9
    ld [hl], b                                    ; $754b: $70
    ld e, [hl]                                    ; $754c: $5e
    ld a, [hl]                                    ; $754d: $7e
    daa                                           ; $754e: $27
    db $eb                                        ; $754f: $eb
    and l                                         ; $7550: $a5
    sbc l                                         ; $7551: $9d
    db $fc                                        ; $7552: $fc
    ld h, h                                       ; $7553: $64
    and $39                                       ; $7554: $e6 $39
    ld hl, sp+$5f                                 ; $7556: $f8 $5f
    sub e                                         ; $7558: $93
    ld b, [hl]                                    ; $7559: $46
    halt                                          ; $755a: $76
    add hl, hl                                    ; $755b: $29
    sub b                                         ; $755c: $90
    ld h, a                                       ; $755d: $67
    rst $30                                       ; $755e: $f7
    ret                                           ; $755f: $c9


    ld h, c                                       ; $7560: $61
    ld c, d                                       ; $7561: $4a
    ld l, h                                       ; $7562: $6c
    sub $fb                                       ; $7563: $d6 $fb
    db $fc                                        ; $7565: $fc
    sbc d                                         ; $7566: $9a
    inc [hl]                                      ; $7567: $34
    ld [hl-], a                                   ; $7568: $32
    ld sp, hl                                     ; $7569: $f9
    ld [$7e76], a                                 ; $756a: $ea $76 $7e
    db $ed                                        ; $756d: $ed
    call z, $c23a                                 ; $756e: $cc $3a $c2

    db $3d, $72, $d6, $fb, $fc, $9a, $34, $b2, $e3, $32, $de, $dc, $c9, $1a, $dc, $29
    db $b1, $1d, $97, $f1, $e6, $7a, $c8, $ed, $c4, $5b, $19, $e0, $ae, $23, $0f, $b0
    db $16, $57, $f1, $79, $ae, $2d, $97, $82, $99, $ce, $bc, $fc, $4e, $d6, $4b, $3b
    db $f9, $c9, $4c, $89, $cd, $cb, $d3, $e0, $e3, $57, $be, $e3, $32, $de, $dc, $c9
    db $1a, $dc, $a5, $ec, $b8, $8c, $37, $d7, $43, $6e, $27, $de, $ca, $00, $c2, $bd
    db $d2, $4c, $e5, $a7, $ed, $34, $3e, $cf, $3d, $f9, $cb, $74, $27, $6b, $70, $2b
    db $8d, $3b, $96, $aa, $34, $e4, $2f, $53, $62, $2b, $6a, $fd, $c1, $5b, $5f, $34
    db $2e, $3b, $7e, $93, $e0, $f0, $b5, $74, $3e, $c6, $c5, $77, $58, $93, $66, $95
    db $82, $4f, $07, $9d, $8f, $f1, $88, $59, $fc, $c3, $69, $8c, $c9, $c3, $9a, $34
    db $f3, $9c, $81, $9f, $d2, $ae, $7f, $78, $c4, $ba, $a9, $b0, $c5, $77, $58, $93
    db $66, $95, $bc, $fa, $4f, $57, $a9, $b0, $bd, $6d, $7f, $e5, $e3, $af, $97, $1d
    db $a7, $61, $1a, $58, $cf, $eb, $55, $79, $98, $12, $5b, $cf, $cb, $51, $85, $c1
    db $ba, $a9, $30, $38, $62, $4a, $6c, $c7, $c5, $ff, $c5, $77, $58, $93, $66, $ea
    db $fe, $61, $c7, $e7, $b9, $87, $4a, $3b, $3f, $5b, $32, $9c, $97, $df, $53, $95
    db $86, $fc, $05, $ad, $57, $1a, $59, $8b, $6b, $78, $49, $a7, $c4, $76, $b2, $06
    db $b7, $5a, $f7, $bc, $e4, $30, $95, $1f, $94, $e4, $69, $97, $e6, $e5, $c7, $2e
    db $74, $a2, $36, $f3, $9c, $97, $9f, $dc, $a0, $38, $c2

    dec a                                         ; $767c: $3d
    ccf                                           ; $767d: $3f
    ld d, [hl]                                    ; $767e: $56
    add hl, de                                    ; $767f: $19
    cp $3c                                        ; $7680: $fe $3c
    rst $10                                       ; $7682: $d7
    xor l                                         ; $7683: $ad
    xor b                                         ; $7684: $a8
    add h                                         ; $7685: $84
    or b                                          ; $7686: $b0
    ld a, [hl+]                                   ; $7687: $2a
    ld a, [hl+]                                   ; $7688: $2a
    nop                                           ; $7689: $00
    ld e, d                                       ; $768a: $5a
    or a                                          ; $768b: $b7
    db $ec                                        ; $768c: $ec
    inc [hl]                                      ; $768d: $34
    dec bc                                        ; $768e: $0b

Jump_024_768f:
    sbc e                                         ; $768f: $9b
    add l                                         ; $7690: $85
    ld l, c                                       ; $7691: $69
    db $fd                                        ; $7692: $fd
    ldh a, [$c9]                                  ; $7693: $f0 $c9
    ld h, c                                       ; $7695: $61
    sbc [hl]                                      ; $7696: $9e
    adc e                                         ; $7697: $8b
    ld l, a                                       ; $7698: $6f
    cp l                                          ; $7699: $bd
    xor [hl]                                      ; $769a: $ae
    cp $d3                                        ; $769b: $fe $d3
    pop bc                                        ; $769d: $c1
    bit 7, l                                      ; $769e: $cb $7d
    ld e, b                                       ; $76a0: $58
    jp c, $f6cb                                   ; $76a1: $da $cb $f6

    ld a, c                                       ; $76a4: $79
    ld e, a                                       ; $76a5: $5f
    add hl, sp                                    ; $76a6: $39
    and b                                         ; $76a7: $a0
    ld e, c                                       ; $76a8: $59
    db $ec                                        ; $76a9: $ec
    dec [hl]                                      ; $76aa: $35
    ld l, c                                       ; $76ab: $69
    ld d, $bc                                     ; $76ac: $16 $bc
    rst $08                                       ; $76ae: $cf
    sra a                                         ; $76af: $cb $2f
    db $db                                        ; $76b1: $db
    rst $20                                       ; $76b2: $e7
    ld a, l                                       ; $76b3: $7d
    push hl                                       ; $76b4: $e5
    di                                            ; $76b5: $f3
    sbc h                                         ; $76b6: $9c
    sub a                                         ; $76b7: $97
    sbc a                                         ; $76b8: $9f
    call c, $f8a0                                 ; $76b9: $dc $a0 $f8
    jp z, $a0df                                   ; $76bc: $ca $df $a0

    jr c, jr_024_7738                             ; $76bf: $38 $77

    ld c, l                                       ; $76c1: $4d
    sbc d                                         ; $76c2: $9a
    ld d, l                                       ; $76c3: $55
    ld c, d                                       ; $76c4: $4a

jr_024_76c5:
    dec bc                                        ; $76c5: $0b
    db $d3                                        ; $76c6: $d3
    ld a, [$f24b]                                 ; $76c7: $fa $4b $f2
    sbc h                                         ; $76ca: $9c
    xor [hl]                                      ; $76cb: $ae
    cp h                                          ; $76cc: $bc
    ld e, d                                       ; $76cd: $5a
    rst $28                                       ; $76ce: $ef
    res 6, d                                      ; $76cf: $cb $b2
    ld a, l                                       ; $76d1: $7d
    sbc $57                                       ; $76d2: $de $57
    adc [hl]                                      ; $76d4: $8e
    ld h, [hl]                                    ; $76d5: $66
    or c                                          ; $76d6: $b1
    rst $10                                       ; $76d7: $d7
    and h                                         ; $76d8: $a4
    ld e, c                                       ; $76d9: $59
    xor b                                         ; $76da: $a8
    push af                                       ; $76db: $f5
    sbc a                                         ; $76dc: $9f
    ld h, a                                       ; $76dd: $67
    ld l, $54                                     ; $76de: $2e $54
    ld l, d                                       ; $76e0: $6a
    ld d, $5e                                     ; $76e1: $16 $5e
    ld [hl], b                                    ; $76e3: $70
    xor l                                         ; $76e4: $ad
    ccf                                           ; $76e5: $3f
    ld [hl], b                                    ; $76e6: $70
    rst $10                                       ; $76e7: $d7
    and h                                         ; $76e8: $a4
    xor c                                         ; $76e9: $a9
    push bc                                       ; $76ea: $c5
    cp b                                          ; $76eb: $b8
    and d                                         ; $76ec: $a2
    sub $9f                                       ; $76ed: $d6 $9f
    rst $20                                       ; $76ef: $e7
    ret nz                                        ; $76f0: $c0

    ld d, l                                       ; $76f1: $55
    ld a, h                                       ; $76f2: $7c
    ld l, c                                       ; $76f3: $69
    ld a, l                                       ; $76f4: $7d
    ld b, c                                       ; $76f5: $41
    jr @+$2f                                      ; $76f6: $18 $2d

    rra                                           ; $76f8: $1f
    cp a                                          ; $76f9: $bf
    ld a, [c]                                     ; $76fa: $f2
    ld a, c                                       ; $76fb: $79
    ld sp, hl                                     ; $76fc: $f9
    ret                                           ; $76fd: $c9


    dec c                                         ; $76fe: $0d
    adc d                                         ; $76ff: $8a
    xor a                                         ; $7700: $af
    jp z, Jump_024_7db0                           ; $7701: $ca $b0 $7d

    ld c, c                                       ; $7704: $49
    db $fd                                        ; $7705: $fd
    ld h, $2d                                     ; $7706: $26 $2d
    db $ed                                        ; $7708: $ed
    ld d, l                                       ; $7709: $55
    ld l, d                                       ; $770a: $6a
    ld [hl+], a                                   ; $770b: $22
    sub e                                         ; $770c: $93
    and h                                         ; $770d: $a4
    add hl, hl                                    ; $770e: $29
    or c                                          ; $770f: $b1
    ld e, l                                       ; $7710: $5d
    ld a, [bc]                                    ; $7711: $0a
    db $e4                                        ; $7712: $e4
    reti                                          ; $7713: $d9


    ld a, l                                       ; $7714: $7d
    ld [hl], d                                    ; $7715: $72
    sbc b                                         ; $7716: $98
    rst $20                                       ; $7717: $e7
    jr nz, @-$5b                                  ; $7718: $20 $a3

    push af                                       ; $771a: $f5
    rst $20                                       ; $771b: $e7
    push hl                                       ; $771c: $e5
    rst $10                                       ; $771d: $d7
    dec a                                         ; $771e: $3d
    db $fd                                        ; $771f: $fd
    ld h, $ad                                     ; $7720: $26 $ad
    ld e, e                                       ; $7722: $5b
    pop de                                        ; $7723: $d1
    jr jr_024_76c5                                ; $7724: $18 $9f

    add d                                         ; $7726: $82

Jump_024_7727:
    ld b, a                                       ; $7727: $47
    db $eb                                        ; $7728: $eb
    ld l, $0f                                     ; $7729: $2e $0f
    or b                                          ; $772b: $b0
    inc sp                                        ; $772c: $33
    ld a, [hl-]                                   ; $772d: $3a
    ld c, e                                       ; $772e: $4b
    reti                                          ; $772f: $d9


    ld sp, $d3c9                                  ; $7730: $31 $c9 $d3
    inc a                                         ; $7733: $3c
    rla                                           ; $7734: $17
    ld l, d                                       ; $7735: $6a
    db $fd                                        ; $7736: $fd
    rst $10                                       ; $7737: $d7

jr_024_7738:
    and h                                         ; $7738: $a4
    sub c                                         ; $7739: $91

Call_024_773a:
    ld d, l                                       ; $773a: $55
    dec h                                         ; $773b: $25
    ld l, a                                       ; $773c: $6f
    push af                                       ; $773d: $f5
    ld l, b                                       ; $773e: $68
    db $eb                                        ; $773f: $eb
    ld l, $0f                                     ; $7740: $2e $0f
    or b                                          ; $7742: $b0
    db $d3                                        ; $7743: $d3
    ld l, a                                       ; $7744: $6f
    ld d, b                                       ; $7745: $50
    ld a, h                                       ; $7746: $7c
    sbc [hl]                                      ; $7747: $9e
    dec bc                                        ; $7748: $0b
    db $d3                                        ; $7749: $d3
    ld a, [$9cf3]                                 ; $774a: $fa $f3 $9c
    sub a                                         ; $774d: $97
    rra                                           ; $774e: $1f
    dec a                                         ; $774f: $3d
    rlca                                          ; $7750: $07
    ld e, a                                       ; $7751: $5f
    ld d, l                                       ; $7752: $55
    ld a, [c]                                     ; $7753: $f2
    ld d, [hl]                                    ; $7754: $56
    rst $08                                       ; $7755: $cf
    ld e, l                                       ; $7756: $5d
    jp z, $f23a                                   ; $7757: $ca $3a $f2

    nop                                           ; $775a: $00
    dec sp                                        ; $775b: $3b
    jp hl                                         ; $775c: $e9


    ld l, l                                       ; $775d: $6d
    sbc a                                         ; $775e: $9f
    rst $20                                       ; $775f: $e7
    add d                                         ; $7760: $82
    ld e, h                                       ; $7761: $5c
    ld e, e                                       ; $7762: $5b
    xor e                                         ; $7763: $ab
    ld a, [$d894]                                 ; $7764: $fa $94 $d8
    xor d                                         ; $7767: $aa
    and d                                         ; $7768: $a2
    inc d                                         ; $7769: $14
    db $fc                                        ; $776a: $fc
    sbc d                                         ; $776b: $9a
    inc [hl]                                      ; $776c: $34
    or d                                          ; $776d: $b2
    ldh a, [rNR12]                                ; $776e: $f0 $12
    ld b, e                                       ; $7770: $43
    db $eb                                        ; $7771: $eb
    ld e, c                                       ; $7772: $59
    sbc [hl]                                      ; $7773: $9e
    sub $a4                                       ; $7774: $d6 $a4
    sbc c                                         ; $7776: $99
    jp z, Jump_024_68af                           ; $7777: $ca $af $68

    and a                                         ; $777a: $a7
    db $d3                                        ; $777b: $d3
    adc h                                         ; $777c: $8c
    cp a                                          ; $777d: $bf
    ld e, [hl]                                    ; $777e: $5e
    sub $a4                                       ; $777f: $d6 $a4
    sub c                                         ; $7781: $91
    ld d, l                                       ; $7782: $55
    dec h                                         ; $7783: $25
    ld l, a                                       ; $7784: $6f
    push af                                       ; $7785: $f5
    ret nz                                        ; $7786: $c0

    ld e, l                                       ; $7787: $5d
    ld b, a                                       ; $7788: $47
    ld e, $60                                     ; $7789: $1e $60
    ld e, [hl]                                    ; $778b: $5e
    ld a, [hl]                                    ; $778c: $7e
    ld b, a                                       ; $778d: $47
    db $ed                                        ; $778e: $ed
    ld l, b                                       ; $778f: $68
    db $e3                                        ; $7790: $e3
    sbc [hl]                                      ; $7791: $9e
    inc [hl]                                      ; $7792: $34
    rst $08                                       ; $7793: $cf
    ld d, l                                       ; $7794: $55
    ld c, c                                       ; $7795: $49
    or $95                                        ; $7796: $f6 $95
    ld [hl], b                                    ; $7798: $70
    ld e, [hl]                                    ; $7799: $5e
    ld a, $44                                     ; $779a: $3e $44
    db $db                                        ; $779c: $db
    pop de                                        ; $779d: $d1
    ld d, c                                       ; $779e: $51
    xor e                                         ; $779f: $ab
    ld a, [$9542]                                 ; $77a0: $fa $42 $95
    ld a, [hl-]                                   ; $77a3: $3a
    adc h                                         ; $77a4: $8c
    sbc [hl]                                      ; $77a5: $9e
    add e                                         ; $77a6: $83
    rst $08                                       ; $77a7: $cf
    ld [hl], e                                    ; $77a8: $73
    ld c, l                                       ; $77a9: $4d
    ld a, [de]                                    ; $77aa: $1a
    ld e, c                                       ; $77ab: $59
    ld d, l                                       ; $77ac: $55
    ld a, [c]                                     ; $77ad: $f2
    ld d, [hl]                                    ; $77ae: $56
    rrca                                          ; $77af: $0f
    cp e                                          ; $77b0: $bb
    call nz, $a56e                                ; $77b1: $c4 $6e $a5
    cp $ab                                        ; $77b4: $fe $ab
    ld d, d                                       ; $77b6: $52
    db $e4                                        ; $77b7: $e4
    dec hl                                        ; $77b8: $2b
    sbc a                                         ; $77b9: $9f
    inc a                                         ; $77ba: $3c
    ld [hl], h                                    ; $77bb: $74
    sub d                                         ; $77bc: $92
    ldh [$61], a                                  ; $77bd: $e0 $61
    ld a, l                                       ; $77bf: $7d
    rst $08                                       ; $77c0: $cf
    sra a                                         ; $77c1: $cb $2f
    ld c, h                                       ; $77c3: $4c
    ld a, c                                       ; $77c4: $79
    xor $bc                                       ; $77c5: $ee $bc
    db $fc                                        ; $77c7: $fc
    jp c, $feef                                   ; $77c8: $da $ef $fe

    jp nc, $b365                                  ; $77cb: $d2 $65 $b3

    ret c                                         ; $77ce: $d8

    ld l, e                                       ; $77cf: $6b
    jp nc, Jump_024_782c                          ; $77d0: $d2 $2c $78

    sbc a                                         ; $77d3: $9f
    sub a                                         ; $77d4: $97
    sbc a                                         ; $77d5: $9f
    call c, $f8a0                                 ; $77d6: $dc $a0 $f8
    ld a, [hl+]                                   ; $77d9: $2a
    dec [hl]                                      ; $77da: $35
    sub c                                         ; $77db: $91
    ld c, c                                       ; $77dc: $49
    jp nc, $d894                                  ; $77dd: $d2 $94 $d8

    cp h                                          ; $77e0: $bc
    db $fc                                        ; $77e1: $fc
    db $e4                                        ; $77e2: $e4
    ld b, $c5                                     ; $77e3: $06 $c5
    ld [hl], a                                    ; $77e5: $77
    add hl, hl                                    ; $77e6: $29
    sub b                                         ; $77e7: $90
    ld h, a                                       ; $77e8: $67
    rst $30                                       ; $77e9: $f7
    ret                                           ; $77ea: $c9


    add c                                         ; $77eb: $81
    cp e                                          ; $77ec: $bb
    ld h, $cd                                     ; $77ed: $26 $cd
    ld hl, sp+$4b                                 ; $77ef: $f8 $4b
    di                                            ; $77f1: $f3
    ld a, [c]                                     ; $77f2: $f2
    xor e                                         ; $77f3: $ab
    adc d                                         ; $77f4: $8a
    add $f8                                       ; $77f5: $c6 $f8
    inc d                                         ; $77f7: $14
    ld a, h                                       ; $77f8: $7c
    sub a                                         ; $77f9: $97
    push af                                       ; $77fa: $f5
    ld c, d                                       ; $77fb: $4a
    or e                                          ; $77fc: $b3
    and d                                         ; $77fd: $a2
    sub $5f                                       ; $77fe: $d6 $5f
    ld a, a                                       ; $7800: $7f
    db $fd                                        ; $7801: $fd
    xor a                                         ; $7802: $af
    ld a, [hl+]                                   ; $7803: $2a
    ld c, d                                       ; $7804: $4a
    push de                                       ; $7805: $d5
    jp Jump_024_673c                              ; $7806: $c3 $3c $67


    ld e, a                                       ; $7809: $5f
    ld h, d                                       ; $780a: $62
    di                                            ; $780b: $f3
    ld a, [c]                                     ; $780c: $f2
    sub e                                         ; $780d: $93
    dec de                                        ; $780e: $1b
    inc d                                         ; $780f: $14
    ld e, a                                       ; $7810: $5f
    sub l                                         ; $7811: $95
    ld h, c                                       ; $7812: $61
    ei                                            ; $7813: $fb
    sub d                                         ; $7814: $92
    ld a, [$424d]                                 ; $7815: $fa $4d $42

jr_024_7818:
    jr jr_024_7857                                ; $7818: $18 $3d

    and h                                         ; $781a: $a4
    sbc c                                         ; $781b: $99
    rst $20                                       ; $781c: $e7
    ld b, d                                       ; $781d: $42
    push af                                       ; $781e: $f5
    xor d                                         ; $781f: $aa
    call z, $afcb                                 ; $7820: $cc $cb $af
    and e                                         ; $7823: $a3
    ld d, a                                       ; $7824: $57
    ld h, b                                       ; $7825: $60
    ld l, c                                       ; $7826: $69
    xor a                                         ; $7827: $af
    ld d, d                                       ; $7828: $52
    ld h, c                                       ; $7829: $61
    add b                                         ; $782a: $80
    halt                                          ; $782b: $76

Jump_024_782c:
    call c, $f015                                 ; $782c: $dc $15 $f0
    add l                                         ; $782f: $85
    ld l, c                                       ; $7830: $69
    db $fd                                        ; $7831: $fd
    ld a, c                                       ; $7832: $79
    ld sp, hl                                     ; $7833: $f9
    ld d, l                                       ; $7834: $55
    ld b, [hl]                                    ; $7835: $46
    jr nz, jr_024_789d                            ; $7836: $20 $65

    ld c, d                                       ; $7838: $4a
    ld l, h                                       ; $7839: $6c
    dec e                                         ; $783a: $1d
    ld a, c                                       ; $783b: $79
    add b                                         ; $783c: $80
    ld a, c                                       ; $783d: $79
    ld sp, hl                                     ; $783e: $f9
    dec e                                         ; $783f: $1d
    or l                                          ; $7840: $b5
    and e                                         ; $7841: $a3
    adc l                                         ; $7842: $8d
    ld a, e                                       ; $7843: $7b
    jp nc, $e73c                                  ; $7844: $d2 $3c $e7

    ld b, [hl]                                    ; $7847: $46
    ld l, b                                       ; $7848: $68
    ld l, c                                       ; $7849: $69
    ld a, l                                       ; $784a: $7d
    sbc c                                         ; $784b: $99
    xor [hl]                                      ; $784c: $ae
    ld d, d                                       ; $784d: $52
    ld h, c                                       ; $784e: $61
    ld l, b                                       ; $784f: $68
    db $eb                                        ; $7850: $eb
    ld h, c                                       ; $7851: $61
    add h                                         ; $7852: $84
    sub [hl]                                      ; $7853: $96
    sub $97                                       ; $7854: $d6 $97
    jp hl                                         ; $7856: $e9


jr_024_7857:
    ldh [$ab], a                                  ; $7857: $e0 $ab
    inc h                                         ; $7859: $24
    or [hl]                                       ; $785a: $b6
    ld c, d                                       ; $785b: $4a
    add l                                         ; $785c: $85
    xor l                                         ; $785d: $ad
    db $dd                                        ; $785e: $dd
    ld c, h                                       ; $785f: $4c
    cp [hl]                                       ; $7860: $be
    di                                            ; $7861: $f3
    ld [$8297], a                                 ; $7862: $ea $97 $82
    ld a, c                                       ; $7865: $79
    cp c                                          ; $7866: $b9
    or b                                          ; $7867: $b0
    adc [hl]                                      ; $7868: $8e
    ld h, h                                       ; $7869: $64
    push af                                       ; $786a: $f5
    nop                                           ; $786b: $00
    ld l, b                                       ; $786c: $68
    ld d, $7b                                     ; $786d: $16 $7b
    ld c, l                                       ; $786f: $4d
    sbc d                                         ; $7870: $9a
    add l                                         ; $7871: $85
    ld e, d                                       ; $7872: $5a
    rst $38                                       ; $7873: $ff
    jp hl                                         ; $7874: $e9


    ld b, d                                       ; $7875: $42
    push af                                       ; $7876: $f5
    xor d                                         ; $7877: $aa
    ld [hl], b                                    ; $7878: $70
    rst $20                                       ; $7879: $e7
    dec h                                         ; $787a: $25
    pop hl                                        ; $787b: $e1
    rst $20                                       ; $787c: $e7
    ld a, h                                       ; $787d: $7c
    xor [hl]                                      ; $787e: $ae
    ld d, d                                       ; $787f: $52
    ld h, c                                       ; $7880: $61
    jr nc, jr_024_7818                            ; $7881: $30 $95

    sbc a                                         ; $7883: $9f
    ld a, h                                       ; $7884: $7c
    sbc b                                         ; $7885: $98
    sub $67                                       ; $7886: $d6 $67
    ld l, b                                       ; $7888: $68
    daa                                           ; $7889: $27
    xor e                                         ; $788a: $ab
    ld d, a                                       ; $788b: $57
    ld h, l                                       ; $788c: $65
    ld c, d                                       ; $788d: $4a
    ld l, h                                       ; $788e: $6c
    ld a, [c]                                     ; $788f: $f2
    ld h, c                                       ; $7890: $61
    ld e, d                                       ; $7891: $5a
    ld a, a                                       ; $7892: $7f
    ld a, [de]                                    ; $7893: $1a
    db $e3                                        ; $7894: $e3
    cp h                                          ; $7895: $bc
    db $fc                                        ; $7896: $fc
    ld a, [hl-]                                   ; $7897: $3a
    ld a, d                                       ; $7898: $7a
    dec b                                         ; $7899: $05
    sub [hl]                                      ; $789a: $96
    or $2a                                        ; $789b: $f6 $2a

jr_024_789d:
    dec d                                         ; $789d: $15
    ld b, $f3                                     ; $789e: $06 $f3

Call_024_78a0:
    inc e                                         ; $78a0: $1c
    ld a, a                                       ; $78a1: $7f
    add hl, bc                                    ; $78a2: $09
    ld h, c                                       ; $78a3: $61

    db $16, $7b, $4d, $9a, $bd, $f5, $65, $c1, $fb, $62, $82, $73, $d7, $91, $07, $58
    db $cb, $c7, $af, $7c, $9e, $6b, $cb, $a5, $60, $a6, $33, $5d, $f8, $00, $1a, $fc
    db $b4, $9d, $c6, $d7, $a4, $91, $55, $46, $e4, $c9, $17, $b3, $52, $bf, $49, $08
    db $03

    db $dd                                        ; $78d5: $dd
    push hl                                       ; $78d6: $e5
    ld bc, $e5e6                                  ; $78d7: $01 $e6 $e5
    ld [hl], a                                    ; $78da: $77
    call nc, Call_000_368e                        ; $78db: $d4 $8e $36
    xor $49                                       ; $78de: $ee $49
    di                                            ; $78e0: $f3
    inc e                                         ; $78e1: $1c
    cp h                                          ; $78e2: $bc
    ld c, d                                       ; $78e3: $4a

Jump_024_78e4:
    ld d, l                                       ; $78e4: $55
    ld h, [hl]                                    ; $78e5: $66
    and a                                         ; $78e6: $a7
    xor h                                         ; $78e7: $ac
    ld e, h                                       ; $78e8: $5c
    add $9e                                       ; $78e9: $c6 $9e
    halt                                          ; $78eb: $76
    db $fd                                        ; $78ec: $fd
    ld b, e                                       ; $78ed: $43
    jr @-$41                                      ; $78ee: $18 $bd

    ld c, d                                       ; $78f0: $4a
    cp e                                          ; $78f1: $bb
    reti                                          ; $78f2: $d9


    and l                                         ; $78f3: $a5
    reti                                          ; $78f4: $d9


    sub d                                         ; $78f5: $92
    db $e4                                        ; $78f6: $e4
    ld c, e                                       ; $78f7: $4b
    ld a, e                                       ; $78f8: $7b
    ld c, l                                       ; $78f9: $4d
    ld a, [de]                                    ; $78fa: $1a
    or h                                          ; $78fb: $b4
    ld e, c                                       ; $78fc: $59
    db $ec                                        ; $78fd: $ec
    add hl, hl                                    ; $78fe: $29
    db $ed                                        ; $78ff: $ed
    ld a, [$bb87]                                 ; $7900: $fa $87 $bb
    or b                                          ; $7903: $b0
    adc [hl]                                      ; $7904: $8e
    inc a                                         ; $7905: $3c
    inc a                                         ; $7906: $3c
    add hl, sp                                    ; $7907: $39
    ld [hl], a                                    ; $7908: $77
    cp d                                          ; $7909: $ba
    ldh a, [rSB]                                  ; $790a: $f0 $01
    inc [hl]                                      ; $790c: $34
    ld hl, sp-$0f                                 ; $790d: $f8 $f1
    scf                                           ; $790f: $37
    add $69                                       ; $7910: $c6 $69
    and a                                         ; $7912: $a7
    di                                            ; $7913: $f3
    ld a, [hl+]                                   ; $7914: $2a
    di                                            ; $7915: $f3
    sbc h                                         ; $7916: $9c
    ld a, a                                       ; $7917: $7f
    adc h                                         ; $7918: $8c
    ld l, e                                       ; $7919: $6b
    jp nc, $2f8c                                  ; $791a: $d2 $8c $2f

    ld [$d26b], a                                 ; $791d: $ea $6b $d2
    xor h                                         ; $7920: $ac
    xor b                                         ; $7921: $a8
    push af                                       ; $7922: $f5
    ld h, a                                       ; $7923: $67
    and a                                         ; $7924: $a7
    ld hl, $3086                                  ; $7925: $21 $86 $30
    db $dd                                        ; $7928: $dd

jr_024_7929:
    db $e3                                        ; $7929: $e3
    dec hl                                        ; $792a: $2b
    db $fc                                        ; $792b: $fc
    add d                                         ; $792c: $82
    inc e                                         ; $792d: $1c
    db $fc                                        ; $792e: $fc
    xor a                                         ; $792f: $af
    cp e                                          ; $7930: $bb
    and h                                         ; $7931: $a4
    db $fd                                        ; $7932: $fd
    nop                                           ; $7933: $00
    add hl, hl                                    ; $7934: $29
    ld l, e                                       ; $7935: $6b
    ld hl, $fced                                  ; $7936: $21 $ed $fc
    db $ec                                        ; $7939: $ec
    sub h                                         ; $793a: $94
    dec [hl]                                      ; $793b: $35
    ld l, c                                       ; $793c: $69
    ld h, h                                       ; $793d: $64
    sbc l                                         ; $793e: $9d
    db $f4                                        ; $793f: $f4
    sbc e                                         ; $7940: $9b
    inc [hl]                                      ; $7941: $34
    ld sp, hl                                     ; $7942: $f9
    ld [$1e76], a                                 ; $7943: $ea $76 $1e
    cp b                                          ; $7946: $b8
    ld l, e                                       ; $7947: $6b
    ld d, l                                       ; $7948: $55
    sub c                                         ; $7949: $91
    ld b, $61                                     ; $794a: $06 $61
    rst $00                                       ; $794c: $c7
    db $fd                                        ; $794d: $fd
    rst $00                                       ; $794e: $c7
    reti                                          ; $794f: $d9


    ld a, [c]                                     ; $7950: $f2
    ccf                                           ; $7951: $3f
    rst $08                                       ; $7952: $cf
    or l                                          ; $7953: $b5
    dec h                                         ; $7954: $25
    ld a, c                                       ; $7955: $79
    ld hl, sp+$79                                 ; $7956: $f8 $79
    ld sp, hl                                     ; $7958: $f9
    ld b, c                                       ; $7959: $41
    ld sp, hl                                     ; $795a: $f9
    ld l, b                                       ; $795b: $68
    ld a, l                                       ; $795c: $7d
    ld b, b                                       ; $795d: $40
    ld e, e                                       ; $795e: $5b
    xor a                                         ; $795f: $af
    inc [hl]                                      ; $7960: $34
    and e                                         ; $7961: $a3
    or a                                          ; $7962: $b7
    cp [hl]                                       ; $7963: $be
    xor h                                         ; $7964: $ac
    ld c, [hl]                                    ; $7965: $4e
    ret                                           ; $7966: $c9


    adc a                                         ; $7967: $8f
    cpl                                           ; $7968: $2f
    ld [$e4bb], a                                 ; $7969: $ea $bb $e4
    cpl                                           ; $796c: $2f
    rrca                                          ; $796d: $0f
    ld a, [hl]                                    ; $796e: $7e
    add hl, hl                                    ; $796f: $29
    sbc b                                         ; $7970: $98
    sub a                                         ; $7971: $97
    ld c, e                                       ; $7972: $4b
    ld bc, $49ac                                  ; $7973: $01 $ac $49
    or e                                          ; $7976: $b3
    ldh a, [rTMA]                                 ; $7977: $f0 $06
    push bc                                       ; $7979: $c5
    rst $00                                       ; $797a: $c7
    ld l, $54                                     ; $797b: $2e $54
    ld l, c                                       ; $797d: $69
    ld a, l                                       ; $797e: $7d
    ld b, c                                       ; $797f: $41
    jr jr_024_7929                                ; $7980: $18 $a7

    db $e4                                        ; $7982: $e4
    sub d                                         ; $7983: $92
    ld a, [hl]                                    ; $7984: $7e
    rla                                           ; $7985: $17
    and [hl]                                      ; $7986: $a6
    ld sp, $ff26                                  ; $7987: $31 $26 $ff
    ld l, h                                       ; $798a: $6c
    sub a                                         ; $798b: $97
    and $e5                                       ; $798c: $e6 $e5
    ld [hl], a                                    ; $798e: $77
    ld a, [$cb83]                                 ; $798f: $fa $83 $cb
    xor l                                         ; $7992: $ad
    db $fc                                        ; $7993: $fc
    reti                                          ; $7994: $d9


    ld e, d                                       ; $7995: $5a
    cp [hl]                                       ; $7996: $be
    ld a, [c]                                     ; $7997: $f2
    sbc e                                         ; $7998: $9b
    inc [hl]                                      ; $7999: $34
    cp $7a                                        ; $799a: $fe $7a
    ld c, c                                       ; $799c: $49
    db $e3                                        ; $799d: $e3
    db $eb                                        ; $799e: $eb
    cp h                                          ; $799f: $bc
    add h                                         ; $79a0: $84
    rla                                           ; $79a1: $17
    ldh [rNR52], a                                ; $79a2: $e0 $26
    ld hl, $bd0c                                  ; $79a4: $21 $0c $bd
    jp nc, Jump_024_4a0c                          ; $79a7: $d2 $0c $4a

    sbc d                                         ; $79aa: $9a
    ret z                                         ; $79ab: $c8

    ld d, $e4                                     ; $79ac: $16 $e4
    db $fc                                        ; $79ae: $fc
    ld h, e                                       ; $79af: $63
    ld e, h                                       ; $79b0: $5c
    ld [hl], a                                    ; $79b1: $77
    ld c, c                                       ; $79b2: $49

Jump_024_79b3:
    ei                                            ; $79b3: $fb
    ld bc, $7652                                  ; $79b4: $01 $52 $76
    sbc d                                         ; $79b7: $9a
    cp c                                          ; $79b8: $b9
    ld [hl+], a                                   ; $79b9: $22
    rra                                           ; $79ba: $1f
    db $e3                                        ; $79bb: $e3
    cp h                                          ; $79bc: $bc
    xor b                                         ; $79bd: $a8
    xor a                                         ; $79be: $af
    ld c, c                                       ; $79bf: $49
    inc sp                                        ; $79c0: $33
    dec sp                                        ; $79c1: $3b
    dec c                                         ; $79c2: $0d
    or c                                          ; $79c3: $b1
    ld a, c                                       ; $79c4: $79
    ld sp, hl                                     ; $79c5: $f9
    ld d, l                                       ; $79c6: $55
    ld b, [hl]                                    ; $79c7: $46
    ld a, [hl]                                    ; $79c8: $7e
    halt                                          ; $79c9: $76
    jp z, $349a                                   ; $79ca: $ca $9a $34

    or d                                          ; $79cd: $b2
    dec de                                        ; $79ce: $1b
    inc hl                                        ; $79cf: $23
    dec a                                         ; $79d0: $3d
    nop                                           ; $79d1: $00
    jp nz, $f196                                  ; $79d2: $c2 $96 $f1

    rla                                           ; $79d5: $17
    jp z, $bcbc                                   ; $79d6: $ca $bc $bc

    db $fc                                        ; $79d9: $fc
    ld hl, sp-$69                                 ; $79da: $f8 $97
    sbc a                                         ; $79dc: $9f
    adc $7e                                       ; $79dd: $ce $7e
    ld a, [hl]                                    ; $79df: $7e
    pop af                                        ; $79e0: $f1
    ld bc, $9556                                  ; $79e1: $01 $56 $95
    ld e, e                                       ; $79e4: $5b
    push de                                       ; $79e5: $d5
    sbc a                                         ; $79e6: $9f
    ld h, b                                       ; $79e7: $60
    ld c, c                                       ; $79e8: $49
    di                                            ; $79e9: $f3
    ld a, [c]                                     ; $79ea: $f2
    dec bc                                        ; $79eb: $0b
    inc h                                         ; $79ec: $24
    dec c                                         ; $79ed: $0d
    ld sp, $1840                                  ; $79ee: $31 $40 $18
    ld b, a                                       ; $79f1: $47
    push bc                                       ; $79f2: $c5
    jr c, jr_024_7a24                             ; $79f3: $38 $2f

Jump_024_79f5:
    cp a                                          ; $79f5: $bf
    xor d                                         ; $79f6: $aa
    call c, $feaa                                 ; $79f7: $dc $aa $fe
    inc b                                         ; $79fa: $04
    ld c, e                                       ; $79fb: $4b
    db $e3                                        ; $79fc: $e3
    ld [hl], b                                    ; $79fd: $70
    reti                                          ; $79fe: $d9


    cpl                                           ; $79ff: $2f
    call nc, $cffa                                ; $7a00: $d4 $fa $cf
    dec [hl]                                      ; $7a03: $35
    sub $2f                                       ; $7a04: $d6 $2f
    dec b                                         ; $7a06: $05
    db $d3                                        ; $7a07: $d3
    pop af                                        ; $7a08: $f1
    ld a, [de]                                    ; $7a09: $1a
    db $eb                                        ; $7a0a: $eb
    db $d3                                        ; $7a0b: $d3
    sub c                                         ; $7a0c: $91
    add d                                         ; $7a0d: $82
    scf                                           ; $7a0e: $37
    ld a, e                                       ; $7a0f: $7b
    ld c, $9d                                     ; $7a10: $0e $9d
    sub a                                         ; $7a12: $97
    ei                                            ; $7a13: $fb

jr_024_7a14:
    ld d, h                                       ; $7a14: $54
    dec a                                         ; $7a15: $3d
    jp nz, $8996                                  ; $7a16: $c2 $96 $89

    cp c                                          ; $7a19: $b9
    db $f4                                        ; $7a1a: $f4
    ld l, h                                       ; $7a1b: $6c
    db $ed                                        ; $7a1c: $ed
    ld h, [hl]                                    ; $7a1d: $66
    db $f4                                        ; $7a1e: $f4
    db $fc                                        ; $7a1f: $fc
    ret nz                                        ; $7a20: $c0

    inc a                                         ; $7a21: $3c
    ei                                            ; $7a22: $fb
    ld b, c                                       ; $7a23: $41

jr_024_7a24:
    ret                                           ; $7a24: $c9


    add a                                         ; $7a25: $87
    and l                                         ; $7a26: $a5
    ld [hl], c                                    ; $7a27: $71
    cp b                                          ; $7a28: $b8
    db $ec                                        ; $7a29: $ec
    rst $10                                       ; $7a2a: $d7
    ld l, [hl]                                    ; $7a2b: $6e
    ld b, $fe                                     ; $7a2c: $06 $fe
    sbc l                                         ; $7a2e: $9d
    adc $a5                                       ; $7a2f: $ce $a5
    ld h, b                                       ; $7a31: $60
    ld c, c                                       ; $7a32: $49
    ei                                            ; $7a33: $fb
    jr nz, jr_024_7a36                            ; $7a34: $20 $00

jr_024_7a36:
    add h                                         ; $7a36: $84
    ld bc, $b196                                  ; $7a37: $01 $96 $b1
    and h                                         ; $7a3a: $a4
    sbc d                                         ; $7a3b: $9a
    xor a                                         ; $7a3c: $af
    ld c, [hl]                                    ; $7a3d: $4e
    ret                                           ; $7a3e: $c9


    adc a                                         ; $7a3f: $8f
    cpl                                           ; $7a40: $2f
    call Call_024_7cbc                            ; $7a41: $cd $bc $7c
    inc sp                                        ; $7a44: $33
    sub [hl]                                      ; $7a45: $96
    ld d, h                                       ; $7a46: $54
    di                                            ; $7a47: $f3
    pop bc                                        ; $7a48: $c1
    adc e                                         ; $7a49: $8b
    push af                                       ; $7a4a: $f5
    rla                                           ; $7a4b: $17
    and [hl]                                      ; $7a4c: $a6
    db $fc                                        ; $7a4d: $fc
    xor d                                         ; $7a4e: $aa
    ld [hl], d                                    ; $7a4f: $72
    xor e                                         ; $7a50: $ab
    ld a, [$ecd3]                                 ; $7a51: $fa $d3 $ec
    sub h                                         ; $7a54: $94
    or c                                          ; $7a55: $b1
    ld c, e                                       ; $7a56: $4b
    db $f4                                        ; $7a57: $f4
    add d                                         ; $7a58: $82
    jr nc, @-$21                                  ; $7a59: $30 $dd

    jp z, $eaad                                   ; $7a5b: $ca $ad $ea

    ld c, a                                       ; $7a5e: $4f
    db $eb                                        ; $7a5f: $eb
    and h                                         ; $7a60: $a4
    xor a                                         ; $7a61: $af
    ld [hl], e                                    ; $7a62: $73
    ld a, a                                       ; $7a63: $7f
    sub b                                         ; $7a64: $90
    add [hl]                                      ; $7a65: $86
    jr jr_024_7a14                                ; $7a66: $18 $ac

    inc hl                                        ; $7a68: $23
    rst $28                                       ; $7a69: $ef
    sbc $cc                                       ; $7a6a: $de $cc
    dec d                                         ; $7a6c: $15
    cp h                                          ; $7a6d: $bc
    sbc c                                         ; $7a6e: $99

jr_024_7a6f:
    call c, $f8a0                                 ; $7a6f: $dc $a0 $f8
    or h                                          ; $7a72: $b4
    sbc l                                         ; $7a73: $9d
    add $47                                       ; $7a74: $c6 $47
    ret                                           ; $7a76: $c9


    inc hl                                        ; $7a77: $23
    inc c                                         ; $7a78: $0c
    rst $00                                       ; $7a79: $c7
    ld e, d                                       ; $7a7a: $5a
    ld e, a                                       ; $7a7b: $5f
    ld d, $33                                     ; $7a7c: $16 $33
    db $eb                                        ; $7a7e: $eb

jr_024_7a7f:
    db $d3                                        ; $7a7f: $d3
    ld d, l                                       ; $7a80: $55
    push hl                                       ; $7a81: $e5
    ld d, [hl]                                    ; $7a82: $56
    push af                                       ; $7a83: $f5
    and a                                         ; $7a84: $a7
    add c                                         ; $7a85: $81
    adc e                                         ; $7a86: $8b
    sbc $a0                                       ; $7a87: $de $a0
    ld hl, sp+$2e                                 ; $7a89: $f8 $2e
    call $efcb                                    ; $7a8b: $cd $cb $ef
    sbc e                                         ; $7a8e: $9b
    rst $28                                       ; $7a8f: $ef
    ld a, [hl-]                                   ; $7a90: $3a
    adc e                                         ; $7a91: $8b
    rst $10                                       ; $7a92: $d7
    ld h, b                                       ; $7a93: $60
    ld d, l                                       ; $7a94: $55
    cp c                                          ; $7a95: $b9
    ld sp, $0a5e                                  ; $7a96: $31 $5e $0a
    db $10                                        ; $7a99: $10
    ld b, $3d                                     ; $7a9a: $06 $3d
    ld c, e                                       ; $7a9c: $4b
    or e                                          ; $7a9d: $b3
    dec bc                                        ; $7a9e: $0b
    ld a, e                                       ; $7a9f: $7b
    db $eb                                        ; $7aa0: $eb
    ld c, e                                       ; $7aa1: $4b
    sub e                                         ; $7aa2: $93
    db $f4                                        ; $7aa3: $f4
    ld [hl], e                                    ; $7aa4: $73
    adc l                                         ; $7aa5: $8d
    push af                                       ; $7aa6: $f5
    ld c, e                                       ; $7aa7: $4b
    pop bc                                        ; $7aa8: $c1
    or h                                          ; $7aa9: $b4
    sbc l                                         ; $7aaa: $9d
    add $57                                       ; $7aab: $c6 $57
    sub l                                         ; $7aad: $95
    ld e, e                                       ; $7aae: $5b
    push de                                       ; $7aaf: $d5
    sbc a                                         ; $7ab0: $9f
    and b                                         ; $7ab1: $a0
    dec hl                                        ; $7ab2: $2b
    ld b, $96                                     ; $7ab3: $06 $96
    add l                                         ; $7ab5: $85
    rla                                           ; $7ab6: $17
    ld h, b                                       ; $7ab7: $60
    ld h, c                                       ; $7ab8: $61
    or e                                          ; $7ab9: $b3
    jr nc, jr_024_7a7f                            ; $7aba: $30 $c3

    ld a, [de]                                    ; $7abc: $1a
    xor h                                         ; $7abd: $ac
    ld a, [hl+]                                   ; $7abe: $2a
    or a                                          ; $7abf: $b7
    xor d                                         ; $7ac0: $aa
    ccf                                           ; $7ac1: $3f
    dec c                                         ; $7ac2: $0d
    inc [hl]                                      ; $7ac3: $34
    ld a, [hl+]                                   ; $7ac4: $2a
    ld b, e                                       ; $7ac5: $43
    jr jr_024_7a6f                                ; $7ac6: $18 $a7

    inc a                                         ; $7ac8: $3c
    rlca                                          ; $7ac9: $07
    sbc a                                         ; $7aca: $9f
    rst $18                                       ; $7acb: $df
    ldh a, [$67]                                  ; $7acc: $f0 $67
    ld e, c                                       ; $7ace: $59
    ldh a, [$3e]                                  ; $7acf: $f0 $3e
    ld e, l                                       ; $7ad1: $5d
    pop de                                        ; $7ad2: $d1
    dec hl                                        ; $7ad3: $2b
    sub l                                         ; $7ad4: $95
    ld [hl], c                                    ; $7ad5: $71
    xor $2c                                       ; $7ad6: $ee $2c
    di                                            ; $7ad8: $f3
    ld [hl], d                                    ; $7ad9: $72
    xor c                                         ; $7ada: $a9
    ld a, $4b                                     ; $7adb: $3e $4b
    dec l                                         ; $7add: $2d
    add $15                                       ; $7ade: $c6 $15
    or l                                          ; $7ae0: $b5
    cp $ae                                        ; $7ae1: $fe $ae
    rst $08                                       ; $7ae3: $cf
    ld a, [hl]                                    ; $7ae4: $7e
    push af                                       ; $7ae5: $f5
    ld a, [c]                                     ; $7ae6: $f2
    ld a, [c]                                     ; $7ae7: $f2
    inc c                                         ; $7ae8: $0c
    ld h, c                                       ; $7ae9: $61
    dec a                                         ; $7aea: $3d
    ld c, d                                       ; $7aeb: $4a
    jp nz, $dc0f                                  ; $7aec: $c2 $0f $dc

    ld d, h                                       ; $7aef: $54
    push af                                       ; $7af0: $f5
    cp [hl]                                       ; $7af1: $be
    ld c, l                                       ; $7af2: $4d
    ld h, a                                       ; $7af3: $67
    dec l                                         ; $7af4: $2d
    or c                                          ; $7af5: $b1
    pop af                                        ; $7af6: $f1
    ld a, [c]                                     ; $7af7: $f2
    ld [hl], d                                    ; $7af8: $72
    add hl, bc                                    ; $7af9: $09
    cp d                                          ; $7afa: $ba
    xor h                                         ; $7afb: $ac
    ld b, a                                       ; $7afc: $47
    ld sp, hl                                     ; $7afd: $f9
    ld h, [hl]                                    ; $7afe: $66
    ldh [$62], a                                  ; $7aff: $e0 $62
    ld a, h                                       ; $7b01: $7c
    pop af                                        ; $7b02: $f1
    sub $7f                                       ; $7b03: $d6 $7f
    sub d                                         ; $7b05: $92
    add hl, bc                                    ; $7b06: $09
    cp $02                                        ; $7b07: $fe $02
    ld [$2703], sp                                ; $7b09: $08 $03 $27
    ld l, e                                       ; $7b0c: $6b
    or h                                          ; $7b0d: $b4
    or e                                          ; $7b0e: $b3
    ld e, c                                       ; $7b0f: $59
    ld d, l                                       ; $7b10: $55
    inc [hl]                                      ; $7b11: $34
    add $a7                                       ; $7b12: $c6 $a7
    ldh [$d9], a                                  ; $7b14: $e0 $d9

Jump_024_7b16:
    jp nz, $e79f                                  ; $7b16: $c2 $9f $e7

    ld a, [hl-]                                   ; $7b19: $3a
    ld d, c                                       ; $7b1a: $51
    sbc e                                         ; $7b1b: $9b
    ld d, l                                       ; $7b1c: $55
    push hl                                       ; $7b1d: $e5
    ld d, [hl]                                    ; $7b1e: $56
    push af                                       ; $7b1f: $f5
    and a                                         ; $7b20: $a7
    dec h                                         ; $7b21: $25
    dec l                                         ; $7b22: $2d
    adc l                                         ; $7b23: $8d
    xor h                                         ; $7b24: $ac
    dec l                                         ; $7b25: $2d
    sbc c                                         ; $7b26: $99
    ld hl, $9da0                                  ; $7b27: $21 $a0 $9d
    sub d                                         ; $7b2a: $92
    db $e3                                        ; $7b2b: $e3
    or l                                          ; $7b2c: $b5
    pop hl                                        ; $7b2d: $e1
    adc $8b                                       ; $7b2e: $ce $8b
    ld a, [$34f8]                                 ; $7b30: $fa $f8 $34
    sub c                                         ; $7b33: $91
    xor l                                         ; $7b34: $ad
    db $fd                                        ; $7b35: $fd
    ld h, e                                       ; $7b36: $63
    ld c, d                                       ; $7b37: $4a
    pop bc                                        ; $7b38: $c1
    ld c, e                                       ; $7b39: $4b
    ld a, [de]                                    ; $7b3a: $1a
    add sp, -$7e                                  ; $7b3b: $e8 $82
    ld bc, $3727                                  ; $7b3d: $01 $27 $37
    dec bc                                        ; $7b40: $0b
    ld b, h                                       ; $7b41: $44
    ld l, c                                       ; $7b42: $69
    and c                                         ; $7b43: $a1
    sub $1f                                       ; $7b44: $d6 $1f
    and [hl]                                      ; $7b46: $a6
    ld h, e                                       ; $7b47: $63
    rra                                           ; $7b48: $1f
    ld l, a                                       ; $7b49: $6f
    ld [hl], l                                    ; $7b4a: $75
    db $d3                                        ; $7b4b: $d3
    ret nz                                        ; $7b4c: $c0

    xor d                                         ; $7b4d: $aa
    ld [hl], d                                    ; $7b4e: $72
    xor e                                         ; $7b4f: $ab
    ld a, [$6cd3]                                 ; $7b50: $fa $d3 $6c
    cp c                                          ; $7b53: $b9
    sub l                                         ; $7b54: $95
    ld [bc], a                                    ; $7b55: $02
    db $fc                                        ; $7b56: $fc
    inc hl                                        ; $7b57: $23
    inc c                                         ; $7b58: $0c
    cp l                                          ; $7b59: $bd
    jp nc, Jump_000_258c                          ; $7b5a: $d2 $8c $25

    push de                                       ; $7b5d: $d5
    ld a, h                                       ; $7b5e: $7c
    ld l, c                                       ; $7b5f: $69
    ei                                            ; $7b60: $fb
    db $d3                                        ; $7b61: $d3
    ldh [$7f], a                                  ; $7b62: $e0 $7f
    ld d, l                                       ; $7b64: $55
    cp c                                          ; $7b65: $b9
    ld d, l                                       ; $7b66: $55
    db $fd                                        ; $7b67: $fd
    add hl, bc                                    ; $7b68: $09
    and [hl]                                      ; $7b69: $a6

jr_024_7b6a:
    db $ed                                        ; $7b6a: $ed
    or h                                          ; $7b6b: $b4
    cp $bc                                        ; $7b6c: $fe $bc
    db $fc                                        ; $7b6e: $fc
    adc [hl]                                      ; $7b6f: $8e
    sub a                                         ; $7b70: $97
    inc [hl]                                      ; $7b71: $34
    call nz, Call_024_5c76                        ; $7b72: $c4 $76 $5c
    call z, $b414                                 ; $7b75: $cc $14 $b4
    ld d, $d7                                     ; $7b78: $16 $d7
    dec hl                                        ; $7b7a: $2b
    or b                                          ; $7b7b: $b0
    or $f3                                        ; $7b7c: $f6 $f3
    scf                                           ; $7b7e: $37
    or d                                          ; $7b7f: $b2
    sub a                                         ; $7b80: $97
    ld a, c                                       ; $7b81: $79
    ld sp, hl                                     ; $7b82: $f9
    db $10                                        ; $7b83: $10
    ld h, c                                       ; $7b84: $61
    daa                                           ; $7b85: $27
    scf                                           ; $7b86: $37
    ld h, e                                       ; $7b87: $63
    jp z, $a7c6                                   ; $7b88: $ca $c6 $a7

    call nc, $f061                                ; $7b8b: $d4 $61 $f0
    sub $a7                                       ; $7b8e: $d6 $a7
    ld sp, $606d                                  ; $7b90: $31 $6d $60
    ld a, [hl-]                                   ; $7b93: $3a
    cp $bf                                        ; $7b94: $fe $bf
    adc $9d                                       ; $7b96: $ce $9d
    ld c, e                                       ; $7b98: $4b
    ld [hl], e                                    ; $7b99: $73
    add hl, hl                                    ; $7b9a: $29
    sbc b                                         ; $7b9b: $98
    rst $20                                       ; $7b9c: $e7
    ld b, b                                       ; $7b9d: $40
    xor l                                         ; $7b9e: $ad
    ccf                                           ; $7b9f: $3f
    db $d3                                        ; $7ba0: $d3
    sbc c                                         ; $7ba1: $99
    adc [hl]                                      ; $7ba2: $8e
    ld e, $7c                                     ; $7ba3: $1e $7c
    rra                                           ; $7ba5: $1f
    inc b                                         ; $7ba6: $04
    ld [$9603], sp                                ; $7ba7: $08 $03 $96
    add l                                         ; $7baa: $85
    rla                                           ; $7bab: $17

Jump_024_7bac:
    ld h, b                                       ; $7bac: $60
    ld b, c                                       ; $7bad: $41
    ld e, [hl]                                    ; $7bae: $5e
    ld a, [bc]                                    ; $7baf: $0a
    sub [hl]                                      ; $7bb0: $96
    add $97                                       ; $7bb1: $c6 $97
    inc [hl]                                      ; $7bb3: $34
    cpl                                           ; $7bb4: $2f
    cp a                                          ; $7bb5: $bf
    ld a, b                                       ; $7bb6: $78
    xor c                                         ; $7bb7: $a9
    ld c, $e3                                     ; $7bb8: $0e $e3
    xor a                                         ; $7bba: $af
    sub a                                         ; $7bbb: $97
    ld sp, $6865                                  ; $7bbc: $31 $65 $68
    xor l                                         ; $7bbf: $ad
    ld e, a                                       ; $7bc0: $5f
    add e                                         ; $7bc1: $83
    jp hl                                         ; $7bc2: $e9


    and b                                         ; $7bc3: $a0
    ld [de], a                                    ; $7bc4: $12
    push af                                       ; $7bc5: $f5
    xor d                                         ; $7bc6: $aa
    inc l                                         ; $7bc7: $2c
    ret z                                         ; $7bc8: $c8

    ld l, b                                       ; $7bc9: $68
    cp a                                          ; $7bca: $bf
    ld [hl], b                                    ; $7bcb: $70
    rst $10                                       ; $7bcc: $d7
    and h                                         ; $7bcd: $a4
    ld e, c                                       ; $7bce: $59
    sbc l                                         ; $7bcf: $9d
    sub d                                         ; $7bd0: $92
    ld b, a                                       ; $7bd1: $47
    jr jr_024_7b6a                                ; $7bd2: $18 $96

    pop af                                        ; $7bd4: $f1
    ld c, c                                       ; $7bd5: $49
    db $ec                                        ; $7bd6: $ec
    ld h, l                                       ; $7bd7: $65
    rst $10                                       ; $7bd8: $d7
    sbc $c9                                       ; $7bd9: $de $c9
    ld [bc], a                                    ; $7bdb: $02
    ld l, b                                       ; $7bdc: $68
    and a                                         ; $7bdd: $a7
    and h                                         ; $7bde: $a4
    ret z                                         ; $7bdf: $c8

    add l                                         ; $7be0: $85
    ld d, l                                       ; $7be1: $55
    ld l, c                                       ; $7be2: $69
    ld [hl+], a                                   ; $7be3: $22
    dec de                                        ; $7be4: $1b
    ld a, a                                       ; $7be5: $7f
    ld l, c                                       ; $7be6: $69
    ld a, [hl-]                                   ; $7be7: $3a
    ld e, e                                       ; $7be8: $5b
    xor a                                         ; $7be9: $af
    call z, $41be                                 ; $7bea: $cc $be $41
    pop af                                        ; $7bed: $f1
    pop af                                        ; $7bee: $f1
    rst $10                                       ; $7bef: $d7
    bit 6, h                                      ; $7bf0: $cb $74
    ld d, l                                       ; $7bf2: $55
    cp c                                          ; $7bf3: $b9
    ld d, l                                       ; $7bf4: $55
    db $fd                                        ; $7bf5: $fd
    xor c                                         ; $7bf6: $a9
    dec hl                                        ; $7bf7: $2b
    ld b, $bd                                     ; $7bf8: $06 $bd
    jp nc, $6cc8                                  ; $7bfa: $d2 $c8 $6c

    cp c                                          ; $7bfd: $b9
    ld c, a                                       ; $7bfe: $4f
    ld l, h                                       ; $7bff: $6c
    xor l                                         ; $7c00: $ad
    cpl                                           ; $7c01: $2f
    pop hl                                        ; $7c02: $e1
    ld c, l                                       ; $7c03: $4d
    ld a, [$d85d]                                 ; $7c04: $fa $5d $d8
    ld sp, hl                                     ; $7c07: $f9
    and $fa                                       ; $7c08: $e6 $fa
    ld c, a                                       ; $7c0a: $4f
    ld l, c                                       ; $7c0b: $69
    rra                                           ; $7c0c: $1f
    inc b                                         ; $7c0d: $04
    push hl                                       ; $7c0e: $e5
    sub l                                         ; $7c0f: $95
    ld hl, $960c                                  ; $7c10: $21 $0c $96
    ret                                           ; $7c13: $c9


    ld l, e                                       ; $7c14: $6b
    adc h                                         ; $7c15: $8c
    call $ffec                                    ; $7c16: $cd $ec $ff
    cp b                                          ; $7c19: $b8
    ld a, b                                       ; $7c1a: $78
    db $eb                                        ; $7c1b: $eb
    ccf                                           ; $7c1c: $3f
    ld c, e                                       ; $7c1d: $4b
    call $abfa                                    ; $7c1e: $cd $fa $ab
    ld [hl-], a                                   ; $7c21: $32
    db $fc                                        ; $7c22: $fc
    and l                                         ; $7c23: $a5
    pop af                                        ; $7c24: $f1
    and l                                         ; $7c25: $a5
    cp l                                          ; $7c26: $bd
    or b                                          ; $7c27: $b0
    add hl, de                                    ; $7c28: $19
    sub h                                         ; $7c29: $94
    adc a                                         ; $7c2a: $8f
    ld [hl], c                                    ; $7c2b: $71
    ld [hl], b                                    ; $7c2c: $70
    xor c                                         ; $7c2d: $a9
    ld a, [$5659]                                 ; $7c2e: $fa $59 $56
    ld l, c                                       ; $7c31: $69
    ld hl, sp-$0d                                 ; $7c32: $f8 $f3
    ld e, h                                       ; $7c34: $5c
    ld l, e                                       ; $7c35: $6b
    ld b, $bc                                     ; $7c36: $06 $bc
    adc d                                         ; $7c38: $8a
    inc bc                                        ; $7c39: $03
    jp nz, $dfad                                  ; $7c3a: $c2 $ad $df

    ld [hl], b                                    ; $7c3d: $70
    rst $00                                       ; $7c3e: $c7
    sub a                                         ; $7c3f: $97
    ld e, h                                       ; $7c40: $5c
    daa                                           ; $7c41: $27
    or l                                          ; $7c42: $b5
    ld a, [hl+]                                   ; $7c43: $2a
    rst $08                                       ; $7c44: $cf
    ld b, $19                                     ; $7c45: $06 $19
    cp $d2                                        ; $7c47: $fe $d2
    ld e, [hl]                                    ; $7c49: $5e
    ret c                                         ; $7c4a: $d8

    xor h                                         ; $7c4b: $ac
    ld d, d                                       ; $7c4c: $52
    inc de                                        ; $7c4d: $13
    sbc c                                         ; $7c4e: $99
    inc h                                         ; $7c4f: $24

Call_024_7c50:
    xor l                                         ; $7c50: $ad
    jp nc, Jump_024_43fa                          ; $7c51: $d2 $fa $43

    ld d, a                                       ; $7c54: $57
    inc c                                         ; $7c55: $0c
    sub [hl]                                      ; $7c56: $96
    ld l, c                                       ; $7c57: $69
    db $e4                                        ; $7c58: $e4
    or l                                          ; $7c59: $b5
    add c                                         ; $7c5a: $81
    reti                                          ; $7c5b: $d9


    rst $38                                       ; $7c5c: $ff
    ld [hl], c                                    ; $7c5d: $71
    pop af                                        ; $7c5e: $f1
    sub $7f                                       ; $7c5f: $d6 $7f
    sub [hl]                                      ; $7c61: $96
    dec d                                         ; $7c62: $15
    or l                                          ; $7c63: $b5
    cp $3c                                        ; $7c64: $fe $3c
    rst $00                                       ; $7c66: $c7
    ld l, e                                       ; $7c67: $6b
    xor h                                         ; $7c68: $ac
    cpl                                           ; $7c69: $2f
    ld l, c                                       ; $7c6a: $69
    rra                                           ; $7c6b: $1f
    inc b                                         ; $7c6c: $04
    ld d, b                                       ; $7c6d: $50
    ld a, $46                                     ; $7c6e: $3e $46
    ret c                                         ; $7c70: $d8

    and l                                         ; $7c71: $a5
    or l                                          ; $7c72: $b5
    sub b                                         ; $7c73: $90
    halt                                          ; $7c74: $76
    cp [hl]                                       ; $7c75: $be

Jump_024_7c76:
    ld b, $ab                                     ; $7c76: $06 $ab
    and d                                         ; $7c78: $a2
    ld [bc], a                                    ; $7c79: $02
    jr nz, @+$0e                                  ; $7c7a: $20 $0c

    sub [hl]                                      ; $7c7c: $96
    ld e, d                                       ; $7c7d: $5a
    jr c, @-$36                                   ; $7c7e: $38 $c8

    ld sp, hl                                     ; $7c80: $f9
    sub l                                         ; $7c81: $95
    ld h, a                                       ; $7c82: $67
    call c, $7659                                 ; $7c83: $dc $59 $76
    sbc [hl]                                      ; $7c86: $9e
    ld bc, $af1f                                  ; $7c87: $01 $1f $af
    db $e4                                        ; $7c8a: $e4
    di                                            ; $7c8b: $f3
    inc e                                         ; $7c8c: $1c
    ld e, h                                       ; $7c8d: $5c
    xor d                                         ; $7c8e: $aa
    rst $28                                       ; $7c8f: $ef
    sub d                                         ; $7c90: $92
    rst $20                                       ; $7c91: $e7
    ld [hl], h                                    ; $7c92: $74
    ld [hl], h                                    ; $7c93: $74
    xor e                                         ; $7c94: $ab
    rst $20                                       ; $7c95: $e7
    ld c, $d2                                     ; $7c96: $0e $d2
    or $d9                                        ; $7c98: $f6 $d9
    xor a                                         ; $7c9a: $af

jr_024_7c9b:
    ld e, [hl]                                    ; $7c9b: $5e
    ld e, [hl]                                    ; $7c9c: $5e
    jp c, Jump_000_10cf                           ; $7c9d: $da $cf $10

    ld b, $3d                                     ; $7ca0: $06 $3d
    jp z, $2aaf                                   ; $7ca2: $ca $af $2a

    or a                                          ; $7ca5: $b7
    xor d                                         ; $7ca6: $aa
    ccf                                           ; $7ca7: $3f
    dec c                                         ; $7ca8: $0d
    xor [hl]                                      ; $7ca9: $ae
    dec de                                        ; $7caa: $1b
    push af                                       ; $7cab: $f5
    sbc e                                         ; $7cac: $9b
    or h                                          ; $7cad: $b4
    inc [hl]                                      ; $7cae: $34
    ld c, $97                                     ; $7caf: $0e $97
    db $fd                                        ; $7cb1: $fd
    adc d                                         ; $7cb2: $8a
    jp nz, Jump_024_7482                          ; $7cb3: $c2 $82 $74

Jump_024_7cb6:
    ld a, a                                       ; $7cb6: $7f
    ld a, [de]                                    ; $7cb7: $1a
    cp h                                          ; $7cb8: $bc
    call c, $8034                                 ; $7cb9: $dc $34 $80

Call_024_7cbc:
    jr nc, jr_024_7ceb                            ; $7cbc: $30 $2d

    add hl, hl                                    ; $7cbe: $29
    jp nc, Jump_024_6770                          ; $7cbf: $d2 $70 $67

    add hl, de                                    ; $7cc2: $19
    ld c, e                                       ; $7cc3: $4b
    xor d                                         ; $7cc4: $aa
    ld sp, hl                                     ; $7cc5: $f9
    ld a, b                                       ; $7cc6: $78
    dec h                                         ; $7cc7: $25
    sbc a                                         ; $7cc8: $9f
    rst $20                                       ; $7cc9: $e7
    ld e, h                                       ; $7cca: $5c
    ld h, e                                       ; $7ccb: $63
    dec e                                         ; $7ccc: $1d
    call $0b52                                    ; $7ccd: $cd $52 $0b
    ld h, a                                       ; $7cd0: $67
    rst $38                                       ; $7cd1: $ff
    rst $00                                       ; $7cd2: $c7
    ld c, e                                       ; $7cd3: $4b
    pop bc                                        ; $7cd4: $c1
    ld [hl], h                                    ; $7cd5: $74
    pop af                                        ; $7cd6: $f1

Call_024_7cd7:
    cp d                                          ; $7cd7: $ba
    rst $00                                       ; $7cd8: $c7
    rra                                           ; $7cd9: $1f
    ld c, e                                       ; $7cda: $4b
    sbc [hl]                                      ; $7cdb: $9e
    and $c9                                       ; $7cdc: $e6 $c9
    or h                                          ; $7cde: $b4
    ld b, c                                       ; $7cdf: $41
    jr jr_024_7cf8                                ; $7ce0: $18 $16

    ld a, e                                       ; $7ce2: $7b
    ld c, l                                       ; $7ce3: $4d
    sbc d                                         ; $7ce4: $9a
    add hl, hl                                    ; $7ce5: $29
    call nc, Call_000_3e17                        ; $7ce6: $d4 $17 $3e
    ld [hl], a                                    ; $7ce9: $77
    dec l                                         ; $7cea: $2d

jr_024_7ceb:
    and h                                         ; $7ceb: $a4
    sbc l                                         ; $7cec: $9d
    rst $18                                       ; $7ced: $df
    add l                                         ; $7cee: $85
    sbc l                                         ; $7cef: $9d
    ld h, a                                       ; $7cf0: $67
    ret nz                                        ; $7cf1: $c0

    rst $20                                       ; $7cf2: $e7
    jp nc, $0a5c                                  ; $7cf3: $d2 $5c $0a

    and $39                                       ; $7cf6: $e6 $39

jr_024_7cf8:
    ei                                            ; $7cf8: $fb
    push de                                       ; $7cf9: $d5
    set 1, e                                      ; $7cfa: $cb $cb
    jp z, $2585                                   ; $7cfc: $ca $85 $25

    ld c, a                                       ; $7cff: $4f
    and e                                         ; $7d00: $a3
    rlca                                          ; $7d01: $07
    ld b, a                                       ; $7d02: $47
    jr jr_024_7c9b                                ; $7d03: $18 $96

    ld e, d                                       ; $7d05: $5a
    cp b                                          ; $7d06: $b8
    jr nz, jr_024_7d38                            ; $7d07: $20 $2f

    dec b                                         ; $7d09: $05
    di                                            ; $7d0a: $f3
    sbc h                                         ; $7d0b: $9c
    sub a                                         ; $7d0c: $97
    ld e, a                                       ; $7d0d: $5f
    ld l, b                                       ; $7d0e: $68
    ldh [rRP], a                                  ; $7d0f: $e0 $56
    sub e                                         ; $7d11: $93
    call z, $9e70                                 ; $7d12: $cc $70 $9e
    ld [hl], e                                    ; $7d15: $73
    ld l, c                                       ; $7d16: $69
    sub [hl]                                      ; $7d17: $96
    add $17                                       ; $7d18: $c6 $17
    ld [hl], $a3                                  ; $7d1a: $36 $a3
    rst $20                                       ; $7d1c: $e7
    rst $00                                       ; $7d1d: $c7
    call nz, $e084                                ; $7d1e: $c4 $84 $e0
    or a                                          ; $7d21: $b7
    xor d                                         ; $7d22: $aa
    inc bc                                        ; $7d23: $03
    jp nz, $b196                                  ; $7d24: $c2 $96 $b1

    res 5, b                                      ; $7d27: $cb $a8
    and $03                                       ; $7d29: $e6 $03
    scf                                           ; $7d2b: $37
    xor h                                         ; $7d2c: $ac
    reti                                          ; $7d2d: $d9


    ld d, e                                       ; $7d2e: $53
    sbc d                                         ; $7d2f: $9a
    and b                                         ; $7d30: $a0
    call z, Call_024_594e                         ; $7d31: $cc $4e $59
    ret c                                         ; $7d34: $d8

    call z, Call_000_1c1f                         ; $7d35: $cc $1f $1c

jr_024_7d38:
    call $c0b2                                    ; $7d38: $cd $b2 $c0
    inc a                                         ; $7d3b: $3c
    ret nz                                        ; $7d3c: $c0

    inc l                                         ; $7d3d: $2c
    or l                                          ; $7d3e: $b5
    jr jr_024_7db8                                ; $7d3f: $18 $77

    sbc [hl]                                      ; $7d41: $9e
    ld bc, $515f                                  ; $7d42: $01 $5f $51
    db $eb                                        ; $7d45: $eb
    rst $08                                       ; $7d46: $cf
    ld [hl], e                                    ; $7d47: $73
    db $fc                                        ; $7d48: $fc
    and l                                         ; $7d49: $a5
    ld h, b                                       ; $7d4a: $60
    rst $10                                       ; $7d4b: $d7
    ld de, $9606                                  ; $7d4c: $11 $06 $96
    sub l                                         ; $7d4f: $95
    ld d, a                                       ; $7d50: $57
    ld h, c                                       ; $7d51: $61
    di                                            ; $7d52: $f3
    and d                                         ; $7d53: $a2
    cp [hl]                                       ; $7d54: $be
    db $d3                                        ; $7d55: $d3
    call z, $f915                                 ; $7d56: $cc $15 $f9
    jr jr_024_7dc6                                ; $7d59: $18 $6b

    or b                                          ; $7d5b: $b0
    ld a, [c]                                     ; $7d5c: $f2
    jp z, $dfc6                                   ; $7d5d: $ca $c6 $df

jr_024_7d60:
    jr @-$27                                      ; $7d60: $18 $d7

    cp $25                                        ; $7d62: $fe $25
    call $afcb                                    ; $7d64: $cd $cb $af

Call_024_7d67:
    ld a, [hl+]                                   ; $7d67: $2a
    reti                                          ; $7d68: $d9


    jp hl                                         ; $7d69: $e9


    ld e, h                                       ; $7d6a: $5c
    ld a, [bc]                                    ; $7d6b: $0a
    sub $8e                                       ; $7d6c: $d6 $8e
    ld e, c                                       ; $7d6e: $59
    push de                                       ; $7d6f: $d5
    ld [hl], a                                    ; $7d70: $77
    db $ed                                        ; $7d71: $ed
    sub l                                         ; $7d72: $95
    dec bc                                        ; $7d73: $0b
    adc e                                         ; $7d74: $8b
    rrca                                          ; $7d75: $0f
    sub b                                         ; $7d76: $90
    inc b                                         ; $7d77: $04
    ld h, e                                       ; $7d78: $63
    ld c, c                                       ; $7d79: $49
    dec [hl]                                      ; $7d7a: $35
    rst $18                                       ; $7d7b: $df
    dec c                                         ; $7d7c: $0d
    dec sp                                        ; $7d7d: $3b
    sub d                                         ; $7d7e: $92
    sub $47                                       ; $7d7f: $d6 $47
    jr jr_024_7d60                                ; $7d81: $18 $dd

    dec h                                         ; $7d83: $25
    db $ed                                        ; $7d84: $ed
    rlca                                          ; $7d85: $07
    ld c, b                                       ; $7d86: $48
    reti                                          ; $7d87: $d9


    ret                                           ; $7d88: $c9


    push de                                       ; $7d89: $d5
    pop af                                        ; $7d8a: $f1
    ld c, c                                       ; $7d8b: $49
    ld a, [de]                                    ; $7d8c: $1a
    ld l, b                                       ; $7d8d: $68
    adc h                                         ; $7d8e: $8c
    cp e                                          ; $7d8f: $bb
    or b                                          ; $7d90: $b0
    ld a, b                                       ; $7d91: $78
    db $eb                                        ; $7d92: $eb
    ccf                                           ; $7d93: $3f
    ld e, l                                       ; $7d94: $5d
    sbc b                                         ; $7d95: $98
    ld e, [hl]                                    ; $7d96: $5e
    ld e, [hl]                                    ; $7d97: $5e
    ld d, [hl]                                    ; $7d98: $56
    sbc [hl]                                      ; $7d99: $9e
    and $39                                       ; $7d9a: $e6 $39
    adc l                                         ; $7d9c: $8d
    ld [hl], c                                    ; $7d9d: $71
    ld e, [hl]                                    ; $7d9e: $5e
    ld a, [hl]                                    ; $7d9f: $7e
    rst $00                                       ; $7da0: $c7
    ld c, e                                       ; $7da1: $4b
    ld h, e                                       ; $7da2: $63
    db $db                                        ; $7da3: $db
    sub a                                         ; $7da4: $97
    ld e, b                                       ; $7da5: $58
    ld a, [bc]                                    ; $7da6: $0a
    jr nz, jr_024_7db5                            ; $7da7: $20 $0c

    dec a                                         ; $7da9: $3d
    jp z, $2aaf                                   ; $7daa: $ca $af $2a

    or a                                          ; $7dad: $b7
    xor d                                         ; $7dae: $aa
    ccf                                           ; $7daf: $3f

Jump_024_7db0:
    adc l                                         ; $7db0: $8d
    ld [hl-], a                                   ; $7db1: $32
    ld e, c                                       ; $7db2: $59
    db $fc                                        ; $7db3: $fc
    ld b, c                                       ; $7db4: $41

jr_024_7db5:
    sbc d                                         ; $7db5: $9a
    adc $f8                                       ; $7db6: $ce $f8

jr_024_7db8:
    ld e, a                                       ; $7db8: $5f
    ld d, c                                       ; $7db9: $51
    ld [hl], $3b                                  ; $7dba: $36 $3b
    ld h, l                                       ; $7dbc: $65
    pop de                                        ; $7dbd: $d1
    ld d, b                                       ; $7dbe: $50
    ld d, l                                       ; $7dbf: $55
    and $c9                                       ; $7dc0: $e6 $c9
    or h                                          ; $7dc2: $b4
    add hl, de                                    ; $7dc3: $19
    xor a                                         ; $7dc4: $af
    or b                                          ; $7dc5: $b0

jr_024_7dc6:
    rst $20                                       ; $7dc6: $e7
    ld d, b                                       ; $7dc7: $50
    ld a, l                                       ; $7dc8: $7d
    adc h                                         ; $7dc9: $8c
    ld c, a                                       ; $7dca: $4f
    sbc $05                                       ; $7dcb: $de $05
    inc bc                                        ; $7dcd: $03
    sub [hl]                                      ; $7dce: $96
    ld e, d                                       ; $7dcf: $5a
    jr c, @+$7b                                   ; $7dd0: $38 $79

    adc l                                         ; $7dd2: $8d
    or c                                          ; $7dd3: $b1
    add hl, de                                    ; $7dd4: $19
    cp b                                          ; $7dd5: $b8
    adc d                                         ; $7dd6: $8a
    ld e, a                                       ; $7dd7: $5f
    ld a, [bc]                                    ; $7dd8: $0a
    and $b9                                       ; $7dd9: $e6 $b9
    and a                                         ; $7ddb: $a7
    di                                            ; $7ddc: $f3
    or d                                          ; $7ddd: $b2
    add hl, de                                    ; $7dde: $19
    cpl                                           ; $7ddf: $2f
    rst $10                                       ; $7de0: $d7
    cpl                                           ; $7de1: $2f
    dec b                                         ; $7de2: $05
    db $e3                                        ; $7de3: $e3
    xor a                                         ; $7de4: $af
    sub a                                         ; $7de5: $97
    jp hl                                         ; $7de6: $e9


    adc $37                                       ; $7de7: $ce $37
    scf                                           ; $7de9: $37
    ld b, [hl]                                    ; $7dea: $46
    add h                                         ; $7deb: $84
    ld bc, $67c7                                  ; $7dec: $01 $c7 $67
    or d                                          ; $7def: $b2
    pop af                                        ; $7df0: $f1
    add hl, hl                                    ; $7df1: $29
    ld [hl], l                                    ; $7df2: $75
    xor $5a                                       ; $7df3: $ee $5a
    ld d, l                                       ; $7df5: $55
    and h                                         ; $7df6: $a4
    jp hl                                         ; $7df7: $e9


    add d                                         ; $7df8: $82
    ld bc, $5596                                  ; $7df9: $01 $96 $55
    ld c, d                                       ; $7dfc: $4a
    dec [hl]                                      ; $7dfd: $35
    rra                                           ; $7dfe: $1f
    xor a                                         ; $7dff: $af
    rst $10                                       ; $7e00: $d7
    ld h, a                                       ; $7e01: $67
    ret z                                         ; $7e02: $c8

    ld l, a                                       ; $7e03: $6f
    inc e                                         ; $7e04: $1c
    ld d, h                                       ; $7e05: $54
    dec h                                         ; $7e06: $25
    inc sp                                        ; $7e07: $33
    ld c, $5c                                     ; $7e08: $0e $5c
    push bc                                       ; $7e0a: $c5
    and c                                         ; $7e0b: $a1
    res 1, [hl]                                   ; $7e0c: $cb $8e
    adc d                                         ; $7e0e: $8a
    ld [hl], c                                    ; $7e0f: $71
    ld e, [hl]                                    ; $7e10: $5e
    ld a, [hl]                                    ; $7e11: $7e
    dec a                                         ; $7e12: $3d
    ld e, a                                       ; $7e13: $5f
    ld hl, $037e                                  ; $7e14: $21 $7e $03
    dec bc                                        ; $7e17: $0b
    ld [hl], d                                    ; $7e18: $72
    sbc [hl]                                      ; $7e19: $9e
    ld l, e                                       ; $7e1a: $6b
    call Call_024_5780                            ; $7e1b: $cd $80 $57
    ld [hl], c                                    ; $7e1e: $71
    ld b, b                                       ; $7e1f: $40
    jr jr_024_7e5f                                ; $7e20: $18 $3d

    ccf                                           ; $7e22: $3f
    add $b1                                       ; $7e23: $c6 $b1
    and h                                         ; $7e25: $a4
    rst $28                                       ; $7e26: $ef
    ld [hl-], a                                   ; $7e27: $32
    bit 1, d                                      ; $7e28: $cb $4a
    halt                                          ; $7e2a: $76
    ld a, [hl]                                    ; $7e2b: $7e
    sub [hl]                                      ; $7e2c: $96
    ld e, d                                       ; $7e2d: $5a
    jr c, @+$4a                                   ; $7e2e: $38 $48

    pop af                                        ; $7e30: $f1
    ld h, a                                       ; $7e31: $67
    cp e                                          ; $7e32: $bb
    db $e4                                        ; $7e33: $e4
    cp c                                          ; $7e34: $b9
    db $e3                                        ; $7e35: $e3
    and l                                         ; $7e36: $a5
    or c                                          ; $7e37: $b1
    db $ed                                        ; $7e38: $ed
    ld c, e                                       ; $7e39: $4b
    inc l                                         ; $7e3a: $2c
    add l                                         ; $7e3b: $85
    dec sp                                        ; $7e3c: $3b
    rst $08                                       ; $7e3d: $cf
    db $ec                                        ; $7e3e: $ec
    add d                                         ; $7e3f: $82
    ld bc, $192d                                  ; $7e40: $01 $2d $19
    cp $02                                        ; $7e43: $fe $02
    cp c                                          ; $7e45: $b9
    or [hl]                                       ; $7e46: $b6
    ld a, l                                       ; $7e47: $7d

jr_024_7e48:
    add hl, bc                                    ; $7e48: $09
    ld d, [hl]                                    ; $7e49: $56
    call nc, $b3fa                                ; $7e4a: $d4 $fa $b3
    sub l                                         ; $7e4d: $95
    ld [bc], a                                    ; $7e4e: $02
    sbc b                                         ; $7e4f: $98
    jp nz, $8ff8                                  ; $7e50: $c2 $f8 $8f

    ld [hl], c                                    ; $7e53: $71
    ld a, [bc]                                    ; $7e54: $0a
    ld l, e                                       ; $7e55: $6b
    cp a                                          ; $7e56: $bf
    sub $01                                       ; $7e57: $d6 $01
    ld h, c                                       ; $7e59: $61
    db $dd                                        ; $7e5a: $dd
    jp z, $eaad                                   ; $7e5b: $ca $ad $ea

    ld c, a                                       ; $7e5e: $4f

jr_024_7e5f:
    or b                                          ; $7e5f: $b0
    ld d, b                                       ; $7e60: $50
    sbc e                                         ; $7e61: $9b
    ld d, c                                       ; $7e62: $51
    ld a, [$5a8a]                                 ; $7e63: $fa $8a $5a
    ld a, a                                       ; $7e66: $7f
    pop af                                        ; $7e67: $f1
    halt                                          ; $7e68: $76
    add b                                         ; $7e69: $80
    cp e                                          ; $7e6a: $bb
    or [hl]                                       ; $7e6b: $b6
    pop af                                        ; $7e6c: $f1
    ld b, c                                       ; $7e6d: $41
    add [hl]                                      ; $7e6e: $86
    cp a                                          ; $7e6f: $bf
    ld b, b                                       ; $7e70: $40
    xor [hl]                                      ; $7e71: $ae
    ld l, l                                       ; $7e72: $6d
    ld e, a                                       ; $7e73: $5f
    add d                                         ; $7e74: $82
    dec d                                         ; $7e75: $15
    or l                                          ; $7e76: $b5
    cp $fc                                        ; $7e77: $fe $fc
    rst $18                                       ; $7e79: $df
    dec bc                                        ; $7e7a: $0b
    jp nz, Jump_024_5a96                          ; $7e7b: $c2 $96 $5a

    jr c, jr_024_7e48                             ; $7e7e: $38 $c8

    ld a, c                                       ; $7e80: $79
    sub c                                         ; $7e81: $91
    dec de                                        ; $7e82: $1b
    db $e3                                        ; $7e83: $e3
    or e                                          ; $7e84: $b3
    ld a, c                                       ; $7e85: $79
    xor [hl]                                      ; $7e86: $ae
    db $fd                                        ; $7e87: $fd
    dec hl                                        ; $7e88: $2b
    cpl                                           ; $7e89: $2f
    rst $18                                       ; $7e8a: $df
    ld h, l                                       ; $7e8b: $65
    sub [hl]                                      ; $7e8c: $96
    ld e, d                                       ; $7e8d: $5a
    cp b                                          ; $7e8e: $b8
    jr nz, jr_024_7ec0                            ; $7e8f: $20 $2f

    dec b                                         ; $7e91: $05
    di                                            ; $7e92: $f3
    ld e, h                                       ; $7e93: $5c
    ld a, h                                       ; $7e94: $7c
    dec d                                         ; $7e95: $15
    ld a, [de]                                    ; $7e96: $1a
    db $e4                                        ; $7e97: $e4
    ld b, d                                       ; $7e98: $42
    ld d, e                                       ; $7e99: $53
    sub l                                         ; $7e9a: $95
    add hl, hl                                    ; $7e9b: $29
    or c                                          ; $7e9c: $b1
    or c                                          ; $7e9d: $b1
    inc e                                         ; $7e9e: $1c
    db $e4                                        ; $7e9f: $e4
    ld hl, sp-$71                                 ; $7ea0: $f8 $8f
    or c                                          ; $7ea2: $b1
    dec bc                                        ; $7ea3: $0b
    ld b, $3d                                     ; $7ea4: $06 $3d
    ld c, e                                       ; $7ea6: $4b
    inc sp                                        ; $7ea7: $33

jr_024_7ea8:
    sub [hl]                                      ; $7ea8: $96
    rrca                                          ; $7ea9: $0f
    dec bc                                        ; $7eaa: $0b
    ld d, e                                       ; $7eab: $53
    add sp, $52                                   ; $7eac: $e8 $52
    or b                                          ; $7eae: $b0
    and d                                         ; $7eaf: $a2
    sub $9f                                       ; $7eb0: $d6 $9f
    rst $20                                       ; $7eb2: $e7
    xor d                                         ; $7eb3: $aa
    inc c                                         ; $7eb4: $0c
    ld a, a                                       ; $7eb5: $7f
    sub b                                         ; $7eb6: $90
    ld a, e                                       ; $7eb7: $7b
    sub l                                         ; $7eb8: $95
    ret c                                         ; $7eb9: $d8

    ld [hl], h                                    ; $7eba: $74
    push bc                                       ; $7ebb: $c5
    sub [hl]                                      ; $7ebc: $96
    ld e, d                                       ; $7ebd: $5a
    adc h                                         ; $7ebe: $8c
    ld l, e                                       ; $7ebf: $6b

jr_024_7ec0:
    rst $38                                       ; $7ec0: $ff
    sbc [hl]                                      ; $7ec1: $9e
    ld b, e                                       ; $7ec2: $43
    ld [hl], l                                    ; $7ec3: $75
    db $fd                                        ; $7ec4: $fd
    reti                                          ; $7ec5: $d9


    or h                                          ; $7ec6: $b4
    sbc l                                         ; $7ec7: $9d
    add $17                                       ; $7ec8: $c6 $17
    ld [hl], $b3                                  ; $7eca: $36 $b3
    xor a                                         ; $7ecc: $af
    add b                                         ; $7ecd: $80
    adc a                                         ; $7ece: $8f
    ld l, c                                       ; $7ecf: $69
    or e                                          ; $7ed0: $b3
    or h                                          ; $7ed1: $b4
    ld d, a                                       ; $7ed2: $57
    ld b, l                                       ; $7ed3: $45
    dec b                                         ; $7ed4: $05
    ld a, b                                       ; $7ed5: $78
    sbc b                                         ; $7ed6: $98
    jp nz, $9320                                  ; $7ed7: $c2 $20 $93

    and [hl]                                      ; $7eda: $a6
    jr nc, jr_024_7ea8                            ; $7edb: $30 $cb

    ld a, b                                       ; $7edd: $78
    xor l                                         ; $7ede: $ad
    rst $38                                       ; $7edf: $ff
    ld c, h                                       ; $7ee0: $4c
    rlca                                          ; $7ee1: $07
    ld h, c                                       ; $7ee2: $61
    cp l                                          ; $7ee3: $bd
    jp nc, Jump_000_258c                          ; $7ee4: $d2 $8c $25

    push de                                       ; $7ee7: $d5
    ld a, h                                       ; $7ee8: $7c
    ld [hl], l                                    ; $7ee9: $75
    ld c, d                                       ; $7eea: $4a
    ld a, [hl]                                    ; $7eeb: $7e
    ld c, d                                       ; $7eec: $4a
    call $a9ba                                    ; $7eed: $cd $ba $a9
    or b                                          ; $7ef0: $b0
    ld [hl], l                                    ; $7ef1: $75
    res 6, b                                      ; $7ef2: $cb $b0
    ld a, l                                       ; $7ef4: $7d
    ld c, c                                       ; $7ef5: $49
    db $fd                                        ; $7ef6: $fd
    ld h, $41                                     ; $7ef7: $26 $41
    rla                                           ; $7ef9: $17
    inc c                                         ; $7efa: $0c
    dec a                                         ; $7efb: $3d
    ccf                                           ; $7efc: $3f
    ld d, [hl]                                    ; $7efd: $56
    add hl, de                                    ; $7efe: $19
    cp $da                                        ; $7eff: $fe $da
    ld e, d                                       ; $7f01: $5a
    push de                                       ; $7f02: $d5
    cp c                                          ; $7f03: $b9
    ld l, e                                       ; $7f04: $6b
    ld d, l                                       ; $7f05: $55
    sub c                                         ; $7f06: $91
    ld b, $6d                                     ; $7f07: $06 $6d
    rst $00                                       ; $7f09: $c7
    and l                                         ; $7f0a: $a5
    adc h                                         ; $7f0b: $8c
    push hl                                       ; $7f0c: $e5
    and l                                         ; $7f0d: $a5
    ld h, b                                       ; $7f0e: $60
    sub b                                         ; $7f0f: $90
    db $e3                                        ; $7f10: $e3
    ccf                                           ; $7f11: $3f
    add $25                                       ; $7f12: $c6 $25
    xor l                                         ; $7f14: $ad
    ld c, c                                       ; $7f15: $49
    inc hl                                        ; $7f16: $23
    ld l, e                                       ; $7f17: $6b
    ld c, e                                       ; $7f18: $4b
    ld h, [hl]                                    ; $7f19: $66
    cp b                                          ; $7f1a: $b8
    ld d, a                                       ; $7f1b: $57
    adc c                                         ; $7f1c: $89
    rst $30                                       ; $7f1d: $f7
    add l                                         ; $7f1e: $85

Jump_024_7f1f:
    dec sp                                        ; $7f1f: $3b
    set 7, b                                      ; $7f20: $cb $f8
    dec de                                        ; $7f22: $1b
    db $e3                                        ; $7f23: $e3
    db $e4                                        ; $7f24: $e4
    ld a, c                                       ; $7f25: $79
    dec d                                         ; $7f26: $15
    or [hl]                                       ; $7f27: $b6
    ld h, $cd                                     ; $7f28: $26 $cd
    jp c, $e2cd                                   ; $7f2a: $da $cd $e2

    cp e                                          ; $7f2d: $bb
    ld e, a                                       ; $7f2e: $5f
    ld a, [bc]                                    ; $7f2f: $0a
    sub $a4                                       ; $7f30: $d6 $a4
    ld e, c                                       ; $7f32: $59
    ld b, a                                       ; $7f33: $47
    or h                                          ; $7f34: $b4
    ld a, [c]                                     ; $7f35: $f2
    ld e, e                                       ; $7f36: $5b
    db $fd                                        ; $7f37: $fd
    xor d                                         ; $7f38: $aa
    and d                                         ; $7f39: $a2
    ld [hl], b                                    ; $7f3a: $70
    add hl, hl                                    ; $7f3b: $29
    sbc b                                         ; $7f3c: $98
    jp nc, $8f92                                  ; $7f3d: $d2 $92 $8f

    ld [$c703], sp                                ; $7f40: $08 $03 $c7
    ld h, a                                       ; $7f43: $67
    or d                                          ; $7f44: $b2
    pop af                                        ; $7f45: $f1
    add hl, hl                                    ; $7f46: $29
    ld [hl], l                                    ; $7f47: $75
    xor $5a                                       ; $7f48: $ee $5a
    ld d, l                                       ; $7f4a: $55
    and h                                         ; $7f4b: $a4
    ld b, c                                       ; $7f4c: $41
    ld e, e                                       ; $7f4d: $5b
    or a                                          ; $7f4e: $b7
    inc c                                         ; $7f4f: $0c
    ld a, a                                       ; $7f50: $7f
    ld l, l                                       ; $7f51: $6d
    xor l                                         ; $7f52: $ad
    ld [$6253], a                                 ; $7f53: $ea $53 $62
    or e                                          ; $7f56: $b3
    ld h, e                                       ; $7f57: $63
    inc sp                                        ; $7f58: $33
    dec c                                         ; $7f59: $0d
    db $f4                                        ; $7f5a: $f4
    jp nc, $9a94                                  ; $7f5b: $d2 $94 $9a

    ld sp, hl                                     ; $7f5e: $f9
    dec c                                         ; $7f5f: $0d
    rra                                           ; $7f60: $1f
    ld h, c                                       ; $7f61: $61
    dec l                                         ; $7f62: $2d
    add hl, de                                    ; $7f63: $19
    ld a, [hl]                                    ; $7f64: $7e
    dec sp                                        ; $7f65: $3b
    ld e, c                                       ; $7f66: $59
    inc sp                                        ; $7f67: $33
    ret nc                                        ; $7f68: $d0

    set 4, [hl]                                   ; $7f69: $cb $e6
    add hl, sp                                    ; $7f6b: $39
    ei                                            ; $7f6c: $fb
    ld [de], a                                    ; $7f6d: $12
    sbc e                                         ; $7f6e: $9b
    sub a                                         ; $7f6f: $97
    rst $18                                       ; $7f70: $df
    pop af                                        ; $7f71: $f1
    jp nc, $f6d8                                  ; $7f72: $d2 $d8 $f6

    dec h                                         ; $7f75: $25
    sub [hl]                                      ; $7f76: $96
    or d                                          ; $7f77: $b2
    sub d                                         ; $7f78: $92
    ld b, $7e                                     ; $7f79: $06 $7e
    ld b, c                                       ; $7f7b: $41
    ld c, c                                       ; $7f7c: $49
    ld [hl], b                                    ; $7f7d: $70
    inc [hl]                                      ; $7f7e: $34
    bit 3, b                                      ; $7f7f: $cb $58
    ld d, d                                       ; $7f81: $52
    call $ff07                                    ; $7f82: $cd $07 $ff
    dec hl                                        ; $7f85: $2b
    scf                                           ; $7f86: $37
    sbc h                                         ; $7f87: $9c
    jp hl                                         ; $7f88: $e9


    xor h                                         ; $7f89: $ac
    cp h                                          ; $7f8a: $bc
    inc a                                         ; $7f8b: $3c
    jp nz, $ca3d                                  ; $7f8c: $c2 $3d $ca

    xor a                                         ; $7f8f: $af
    and h                                         ; $7f90: $a4
    add c                                         ; $7f91: $81
    ld e, a                                       ; $7f92: $5f
    ld d, b                                       ; $7f93: $50
    ld [de], a                                    ; $7f94: $12
    inc e                                         ; $7f95: $1c
    ld d, [hl]                                    ; $7f96: $56
    and a                                         ; $7f97: $a7
    db $e4                                        ; $7f98: $e4
    rst $20                                       ; $7f99: $e7
    push hl                                       ; $7f9a: $e5
    xor a                                         ; $7f9b: $af
    xor h                                         ; $7f9c: $ac
    and h                                         ; $7f9d: $a4
    add c                                         ; $7f9e: $81
    ld e, a                                       ; $7f9f: $5f
    ld b, a                                       ; $7fa0: $47
    ld bc, $14f8                                  ; $7fa1: $01 $f8 $14
    ld b, $dc                                     ; $7fa4: $06 $dc
    or l                                          ; $7fa6: $b5
    adc l                                         ; $7fa7: $8d
    rst $08                                       ; $7fa8: $cf
    ld d, d                                       ; $7fa9: $52
    dec bc                                        ; $7faa: $0b
    rst $20                                       ; $7fab: $e7
    sbc c                                         ; $7fac: $99
    add e                                         ; $7fad: $83
    ld c, d                                       ; $7fae: $4a
    push hl                                       ; $7faf: $e5
    reti                                          ; $7fb0: $d9


    inc a                                         ; $7fb1: $3c
    and a                                         ; $7fb2: $a7
    ld d, b                                       ; $7fb3: $50
    ld e, a                                       ; $7fb4: $5f

Jump_024_7fb5:
    jp nc, Jump_000_0c23                          ; $7fb5: $d2 $23 $0c

    xor l                                         ; $7fb8: $ad
    ld l, c                                       ; $7fb9: $69
    ldh [rNR22], a                                ; $7fba: $e0 $17
    sub h                                         ; $7fbc: $94
    inc b                                         ; $7fbd: $04
    add a                                         ; $7fbe: $87
    push de                                       ; $7fbf: $d5
    add hl, hl                                    ; $7fc0: $29
    ld sp, hl                                     ; $7fc1: $f9
    ld [hl], l                                    ; $7fc2: $75
    inc d                                         ; $7fc3: $14
    add b                                         ; $7fc4: $80
    ld c, a                                       ; $7fc5: $4f

Call_024_7fc6:
    ld h, c                                       ; $7fc6: $61
    add b                                         ; $7fc7: $80
    halt                                          ; $7fc8: $76
    call c, $3625                                 ; $7fc9: $dc $25 $36
    ret z                                         ; $7fcc: $c8

    ldh a, [$93]                                  ; $7fcd: $f0 $93
    ld a, [hl]                                    ; $7fcf: $7e
    ld a, h                                       ; $7fd0: $7c
    ret                                           ; $7fd1: $c9


    ld a, [de]                                    ; $7fd2: $1a
    adc h                                         ; $7fd3: $8c
    cp l                                          ; $7fd4: $bd
    or d                                          ; $7fd5: $b2
    add hl, hl                                    ; $7fd6: $29
    or c                                          ; $7fd7: $b1
    add hl, hl                                    ; $7fd8: $29
    call nc, $bca7                                ; $7fd9: $d4 $a7 $bc
    ld [hl], $08                                  ; $7fdc: $36 $08
    inc bc                                        ; $7fde: $03
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
