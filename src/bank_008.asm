; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    db $08, $d8, $b1, $79, $d8, $2b, $7a, $d8, $58, $7a, $d8, $ce, $7a, $d8, $f9, $7a
    db $d8, $68, $7b, $d8, $8f, $7b, $d8, $01, $7c, $d8, $2a, $7c, $d8, $a0, $7c, $d8
    db $cb, $7c, $d8, $3f, $7d, $d8, $6c, $7d, $d8, $d8, $7d, $d8, $ff, $7d, $d8, $6e
    db $7e, $d8, $97, $7e, $d8, $0e, $7f, $d8, $39, $7f, $d8, $b7, $7f, $d9, $01, $40
    db $d9, $7b, $40, $d9, $a2, $40, $d9, $17, $41, $d9, $3e, $41, $d9, $b2, $41, $d9
    db $d9, $41, $d9, $50, $42, $d9, $79, $42, $d9, $f1, $42, $d9, $18, $43, $d9, $87
    db $43

    reti                                          ; $4061: $d9


    xor [hl]                                      ; $4062: $ae
    ld b, e                                       ; $4063: $43
    reti                                          ; $4064: $d9


Jump_008_4065:
    dec h                                         ; $4065: $25
    ld b, h                                       ; $4066: $44
    reti                                          ; $4067: $d9


    ld c, h                                       ; $4068: $4c
    ld b, h                                       ; $4069: $44
    reti                                          ; $406a: $d9


    db $c4                                        ; $406b: $c4
    ld b, h                                       ; $406c: $44

    db $d9, $ed, $44, $d8, $e0, $7f, $d9, $49, $45, $d9, $b5, $45, $d9, $d6, $45, $d9
    db $38, $46, $d9, $59, $46, $d9, $b7, $46, $d9, $d4, $46, $d9, $32, $47, $d9, $51
    db $47, $d9, $bf, $47, $d9, $e2, $47, $d9, $4b, $48, $d9, $6c, $48, $d9, $cd, $48
    db $d9, $ec, $48, $d9, $49, $49, $d9, $68, $49, $d9, $c8, $49, $d9, $e9, $49, $d9
    db $49, $4a, $d9, $68, $4a, $d9, $d1, $4a, $d9, $ec, $4a, $d9, $49, $4b, $d9, $66
    db $4b, $d9, $ba, $4b, $d9, $dc, $4b, $d9, $2d, $4c, $d9, $45, $4c, $d9, $9d, $4c

    reti                                          ; $40cd: $d9


    or l                                          ; $40ce: $b5
    ld c, h                                       ; $40cf: $4c

Jump_008_40d0:
    reti                                          ; $40d0: $d9


    ld [$d94d], sp                                ; $40d1: $08 $4d $d9
    ld h, $4d                                     ; $40d4: $26 $4d
    reti                                          ; $40d6: $d9


    ld a, h                                       ; $40d7: $7c
    ld c, l                                       ; $40d8: $4d
    reti                                          ; $40d9: $d9


    sub a                                         ; $40da: $97
    ld c, l                                       ; $40db: $4d
    reti                                          ; $40dc: $d9


    jp hl                                         ; $40dd: $e9


    ld c, l                                       ; $40de: $4d
    reti                                          ; $40df: $d9


    dec b                                         ; $40e0: $05
    ld c, [hl]                                    ; $40e1: $4e
    reti                                          ; $40e2: $d9


    ld [hl], b                                    ; $40e3: $70
    ld c, [hl]                                    ; $40e4: $4e
    reti                                          ; $40e5: $d9


    sub d                                         ; $40e6: $92
    ld c, [hl]                                    ; $40e7: $4e
    reti                                          ; $40e8: $d9


    ld hl, sp+$4e                                 ; $40e9: $f8 $4e
    reti                                          ; $40eb: $d9


Call_008_40ec:
    jr nz, @+$51                                  ; $40ec: $20 $4f

    reti                                          ; $40ee: $d9


    adc b                                         ; $40ef: $88
    ld c, a                                       ; $40f0: $4f

    db $d9, $b0, $4f, $d9, $2b, $50, $d9, $54, $50, $d9, $cf, $50, $d9, $fa, $50, $d9
    db $76, $51, $d9, $a1, $51, $d9, $29, $52, $d9, $56, $52, $d9, $cf, $52, $d9, $fc
    db $52, $d9, $7a, $53, $d9, $a5, $53, $d9, $19, $54, $d9, $42, $54, $d9, $bc, $54
    db $d9, $fa, $54, $d9, $77, $55, $d9, $b8, $55, $d9, $30, $56, $d9, $6c, $56, $d9
    db $e0, $56, $d9, $30, $57, $d9, $a4, $57, $d9, $e6, $57, $d9, $5a, $58, $d9, $9d
    db $58, $d9, $11, $59, $d9, $59, $59, $d9, $cd, $59, $d9, $10, $5a, $d9, $84, $5a
    db $d9, $c2, $5a, $d9, $36, $5b, $d9, $75, $5b, $d9, $e9, $5b, $d9, $28, $5c, $d9
    db $a0, $5c, $d9, $d8, $5c, $d9, $52, $5d, $d9, $8d, $5d, $d9, $05, $5e, $d9, $40
    db $5e, $d9, $b6, $5e, $d9, $f1, $5e, $d9, $6a, $5f, $d9, $a6, $5f, $d9, $19, $60
    db $d9, $51, $60, $d9, $c6, $60, $d9, $fe, $60, $d9, $73, $61, $d9, $ab, $61, $d9
    db $22, $62, $d9, $5b, $62, $d9, $d4, $62, $d9, $0a, $63, $d9, $82, $63, $d9, $ba
    db $63, $d9, $32, $64, $d9, $6d, $64, $d9, $e4, $64, $d9, $21, $65, $d9, $9b, $65
    db $d9, $dc, $65, $d9, $59, $66, $d9, $98, $66, $d9, $11, $67, $d9, $52, $67, $d9
    db $ce, $67, $d9, $09, $68, $d9, $83, $68

    reti                                          ; $41c9: $d9


    cp [hl]                                       ; $41ca: $be
    ld l, b                                       ; $41cb: $68
    reti                                          ; $41cc: $d9


    ld [hl], $69                                  ; $41cd: $36 $69
    reti                                          ; $41cf: $d9


    ld b, e                                       ; $41d0: $43
    ld l, c                                       ; $41d1: $69
    reti                                          ; $41d2: $d9


Call_008_41d3:
    cp e                                          ; $41d3: $bb
    ld l, c                                       ; $41d4: $69
    reti                                          ; $41d5: $d9


    ret z                                         ; $41d6: $c8

    ld l, c                                       ; $41d7: $69
    reti                                          ; $41d8: $d9


    inc a                                         ; $41d9: $3c
    ld l, d                                       ; $41da: $6a
    reti                                          ; $41db: $d9


    ld c, c                                       ; $41dc: $49
    ld l, d                                       ; $41dd: $6a
    reti                                          ; $41de: $d9


    cp d                                          ; $41df: $ba
    ld l, d                                       ; $41e0: $6a
    reti                                          ; $41e1: $d9


    rst $00                                       ; $41e2: $c7
    ld l, d                                       ; $41e3: $6a
    reti                                          ; $41e4: $d9


    ld b, b                                       ; $41e5: $40
    ld l, e                                       ; $41e6: $6b
    reti                                          ; $41e7: $d9


    ld c, l                                       ; $41e8: $4d
    ld l, e                                       ; $41e9: $6b
    reti                                          ; $41ea: $d9


    pop bc                                        ; $41eb: $c1
    ld l, e                                       ; $41ec: $6b
    reti                                          ; $41ed: $d9


    adc $6b                                       ; $41ee: $ce $6b
    reti                                          ; $41f0: $d9


    ld a, $6c                                     ; $41f1: $3e $6c
    reti                                          ; $41f3: $d9


    ld c, e                                       ; $41f4: $4b
    ld l, h                                       ; $41f5: $6c
    reti                                          ; $41f6: $d9


    cp d                                          ; $41f7: $ba
    ld l, h                                       ; $41f8: $6c
    reti                                          ; $41f9: $d9


    rst $00                                       ; $41fa: $c7
    ld l, h                                       ; $41fb: $6c
    reti                                          ; $41fc: $d9


    ld b, h                                       ; $41fd: $44
    ld l, l                                       ; $41fe: $6d
    reti                                          ; $41ff: $d9


    ld d, c                                       ; $4200: $51
    ld l, l                                       ; $4201: $6d
    reti                                          ; $4202: $d9


    call z, $d96d                                 ; $4203: $cc $6d $d9
    db $dd                                        ; $4206: $dd
    ld l, l                                       ; $4207: $6d
    reti                                          ; $4208: $d9


    ld e, d                                       ; $4209: $5a
    ld l, [hl]                                    ; $420a: $6e

Jump_008_420b:
    reti                                          ; $420b: $d9


    ld l, e                                       ; $420c: $6b
    ld l, [hl]                                    ; $420d: $6e
    reti                                          ; $420e: $d9


    pop hl                                        ; $420f: $e1
    ld l, [hl]                                    ; $4210: $6e
    reti                                          ; $4211: $d9


    ldh a, [$6e]                                  ; $4212: $f0 $6e
    reti                                          ; $4214: $d9


    ld h, l                                       ; $4215: $65
    ld l, a                                       ; $4216: $6f
    reti                                          ; $4217: $d9


    halt                                          ; $4218: $76
    ld l, a                                       ; $4219: $6f
    reti                                          ; $421a: $d9


    ldh a, [$6f]                                  ; $421b: $f0 $6f
    reti                                          ; $421d: $d9


    ld bc, $d970                                  ; $421e: $01 $70 $d9
    ld a, d                                       ; $4221: $7a
    ld [hl], b                                    ; $4222: $70
    reti                                          ; $4223: $d9


    adc e                                         ; $4224: $8b
    ld [hl], b                                    ; $4225: $70
    reti                                          ; $4226: $d9


    db $fc                                        ; $4227: $fc
    ld [hl], b                                    ; $4228: $70
    reti                                          ; $4229: $d9


    dec bc                                        ; $422a: $0b
    ld [hl], c                                    ; $422b: $71
    reti                                          ; $422c: $d9


    add c                                         ; $422d: $81
    ld [hl], c                                    ; $422e: $71
    reti                                          ; $422f: $d9


    sub d                                         ; $4230: $92
    ld [hl], c                                    ; $4231: $71
    reti                                          ; $4232: $d9


    ld a, [bc]                                    ; $4233: $0a
    ld [hl], d                                    ; $4234: $72
    reti                                          ; $4235: $d9


    dec de                                        ; $4236: $1b
    ld [hl], d                                    ; $4237: $72
    reti                                          ; $4238: $d9


    add e                                         ; $4239: $83
    ld [hl], d                                    ; $423a: $72
    reti                                          ; $423b: $d9


    sub h                                         ; $423c: $94
    ld [hl], d                                    ; $423d: $72

Call_008_423e:
    reti                                          ; $423e: $d9


    inc bc                                        ; $423f: $03
    ld [hl], e                                    ; $4240: $73
    reti                                          ; $4241: $d9


    inc d                                         ; $4242: $14
    ld [hl], e                                    ; $4243: $73
    reti                                          ; $4244: $d9


    ld a, c                                       ; $4245: $79
    ld [hl], e                                    ; $4246: $73
    reti                                          ; $4247: $d9


    adc b                                         ; $4248: $88
    ld [hl], e                                    ; $4249: $73
    reti                                          ; $424a: $d9


    and $73                                       ; $424b: $e6 $73
    reti                                          ; $424d: $d9


    rst $30                                       ; $424e: $f7
    ld [hl], e                                    ; $424f: $73
    reti                                          ; $4250: $d9


    ld h, e                                       ; $4251: $63
    ld [hl], h                                    ; $4252: $74
    reti                                          ; $4253: $d9


    ld [hl], h                                    ; $4254: $74
    ld [hl], h                                    ; $4255: $74
    reti                                          ; $4256: $d9


    ldh [$74], a                                  ; $4257: $e0 $74
    reti                                          ; $4259: $d9


    pop af                                        ; $425a: $f1
    ld [hl], h                                    ; $425b: $74
    reti                                          ; $425c: $d9


    ld e, b                                       ; $425d: $58
    ld [hl], l                                    ; $425e: $75
    reti                                          ; $425f: $d9


    ld h, a                                       ; $4260: $67
    ld [hl], l                                    ; $4261: $75
    reti                                          ; $4262: $d9


    pop de                                        ; $4263: $d1
    ld [hl], l                                    ; $4264: $75
    reti                                          ; $4265: $d9


    ld [c], a                                     ; $4266: $e2
    ld [hl], l                                    ; $4267: $75
    reti                                          ; $4268: $d9


    ld b, l                                       ; $4269: $45
    halt                                          ; $426a: $76
    reti                                          ; $426b: $d9


    ld d, [hl]                                    ; $426c: $56
    halt                                          ; $426d: $76
    reti                                          ; $426e: $d9


    db $dd                                        ; $426f: $dd
    halt                                          ; $4270: $76
    reti                                          ; $4271: $d9


    xor $76                                       ; $4272: $ee $76
    reti                                          ; $4274: $d9


    ld a, [hl]                                    ; $4275: $7e
    ld [hl], a                                    ; $4276: $77
    reti                                          ; $4277: $d9


Jump_008_4278:
    adc a                                         ; $4278: $8f
    ld [hl], a                                    ; $4279: $77
    reti                                          ; $427a: $d9


    inc l                                         ; $427b: $2c
    ld a, b                                       ; $427c: $78
    reti                                          ; $427d: $d9


    dec a                                         ; $427e: $3d
    ld a, b                                       ; $427f: $78
    reti                                          ; $4280: $d9


    jp c, $d978                                   ; $4281: $da $78 $d9

    db $eb                                        ; $4284: $eb
    ld a, b                                       ; $4285: $78
    reti                                          ; $4286: $d9


    add a                                         ; $4287: $87
    ld a, c                                       ; $4288: $79

Jump_008_4289:
    reti                                          ; $4289: $d9


    sbc b                                         ; $428a: $98
    ld a, c                                       ; $428b: $79
    reti                                          ; $428c: $d9


    jr nc, @+$7c                                  ; $428d: $30 $7a

    reti                                          ; $428f: $d9


    ld b, c                                       ; $4290: $41
    ld a, d                                       ; $4291: $7a
    reti                                          ; $4292: $d9


    jp z, $d97a                                   ; $4293: $ca $7a $d9

    db $db                                        ; $4296: $db
    ld a, d                                       ; $4297: $7a
    reti                                          ; $4298: $d9


    ld h, b                                       ; $4299: $60
    ld a, e                                       ; $429a: $7b
    reti                                          ; $429b: $d9


    ld l, a                                       ; $429c: $6f
    ld a, e                                       ; $429d: $7b
    reti                                          ; $429e: $d9


    rst $30                                       ; $429f: $f7
    ld a, e                                       ; $42a0: $7b
    reti                                          ; $42a1: $d9


    ld [$d97c], sp                                ; $42a2: $08 $7c $d9
    adc l                                         ; $42a5: $8d
    ld a, h                                       ; $42a6: $7c
    reti                                          ; $42a7: $d9


    sbc h                                         ; $42a8: $9c
    ld a, h                                       ; $42a9: $7c
    reti                                          ; $42aa: $d9


    jr nz, @+$7f                                  ; $42ab: $20 $7d

    reti                                          ; $42ad: $d9


    cpl                                           ; $42ae: $2f
    ld a, l                                       ; $42af: $7d
    reti                                          ; $42b0: $d9


    or d                                          ; $42b1: $b2
    ld a, l                                       ; $42b2: $7d
    reti                                          ; $42b3: $d9


    pop bc                                        ; $42b4: $c1
    ld a, l                                       ; $42b5: $7d
    reti                                          ; $42b6: $d9


    jr z, jr_008_4337                             ; $42b7: $28 $7e

    reti                                          ; $42b9: $d9


    add hl, sp                                    ; $42ba: $39
    ld a, [hl]                                    ; $42bb: $7e
    reti                                          ; $42bc: $d9


    sbc a                                         ; $42bd: $9f
    ld a, [hl]                                    ; $42be: $7e
    reti                                          ; $42bf: $d9


    xor [hl]                                      ; $42c0: $ae

Call_008_42c1:
    ld a, [hl]                                    ; $42c1: $7e
    reti                                          ; $42c2: $d9


    rra                                           ; $42c3: $1f
    ld a, a                                       ; $42c4: $7f
    reti                                          ; $42c5: $d9


    inc l                                         ; $42c6: $2c
    ld a, a                                       ; $42c7: $7f
    reti                                          ; $42c8: $d9


    sbc h                                         ; $42c9: $9c
    ld a, a                                       ; $42ca: $7f
    jp c, $4001                                   ; $42cb: $da $01 $40

    reti                                          ; $42ce: $d9


    xor l                                         ; $42cf: $ad
    ld a, a                                       ; $42d0: $7f
    jp c, Jump_008_4065                           ; $42d1: $da $65 $40

    reti                                          ; $42d4: $d9


    cp h                                          ; $42d5: $bc
    ld a, a                                       ; $42d6: $7f
    jp c, Jump_008_40d0                           ; $42d7: $da $d0 $40

    reti                                          ; $42da: $d9


    bit 7, a                                      ; $42db: $cb $7f
    jp c, $413d                                   ; $42dd: $da $3d $41

    reti                                          ; $42e0: $d9


    call c, $da7f                                 ; $42e1: $dc $7f $da
    and b                                         ; $42e4: $a0
    ld b, c                                       ; $42e5: $41
    reti                                          ; $42e6: $d9


    db $eb                                        ; $42e7: $eb
    ld a, a                                       ; $42e8: $7f
    jp c, Jump_008_420b                           ; $42e9: $da $0b $42

    jp c, Jump_008_4278                           ; $42ec: $da $78 $42

    jp c, Jump_008_4289                           ; $42ef: $da $89 $42

    jp c, Jump_008_42f5                           ; $42f2: $da $f5 $42

Jump_008_42f5:
    jp c, $435f                                   ; $42f5: $da $5f $43

    jp c, Jump_008_43cd                           ; $42f8: $da $cd $43

    jp c, Jump_008_442d                           ; $42fb: $da $2d $44

    jp c, $4482                                   ; $42fe: $da $82 $44

    jp c, $44d4                                   ; $4301: $da $d4 $44

    jp c, Jump_008_452f                           ; $4304: $da $2f $45

    jp c, Jump_008_4586                           ; $4307: $da $86 $45

    jp c, Jump_008_45de                           ; $430a: $da $de $45

    jp c, Jump_008_4632                           ; $430d: $da $32 $46

    jp c, $469c                                   ; $4310: $da $9c $46

    jp c, Jump_008_46ab                           ; $4313: $da $ab $46

    jp c, Jump_008_46ab                           ; $4316: $da $ab $46

    jp c, Jump_008_470d                           ; $4319: $da $0d $47

    jp c, Jump_008_4787                           ; $431c: $da $87 $47

    jp c, Jump_008_479f                           ; $431f: $da $9f $47

    jp c, $4819                                   ; $4322: $da $19 $48

    jp c, Jump_008_482f                           ; $4325: $da $2f $48

    jp c, $48a8                                   ; $4328: $da $a8 $48

    jp c, $48c4                                   ; $432b: $da $c4 $48

    jp c, $493e                                   ; $432e: $da $3e $49

    jp c, $4951                                   ; $4331: $da $51 $49

    jp c, Jump_008_49d0                           ; $4334: $da $d0 $49

jr_008_4337:
    jp c, Jump_008_49e5                           ; $4337: $da $e5 $49

    jp c, Jump_008_4a61                           ; $433a: $da $61 $4a

    jp c, Jump_008_4a78                           ; $433d: $da $78 $4a

    jp c, Jump_008_4af5                           ; $4340: $da $f5 $4a

    jp c, Jump_008_4b0a                           ; $4343: $da $0a $4b

    jp c, $4b86                                   ; $4346: $da $86 $4b

    jp c, Jump_008_4ba4                           ; $4349: $da $a4 $4b

    jp c, Jump_008_4c1e                           ; $434c: $da $1e $4c

    jp c, Jump_008_4c34                           ; $434f: $da $34 $4c

    jp c, Jump_008_4c97                           ; $4352: $da $97 $4c

    jp c, Jump_008_4cac                           ; $4355: $da $ac $4c

    jp c, Jump_008_4d0e                           ; $4358: $da $0e $4d

    jp c, Jump_008_4d27                           ; $435b: $da $27 $4d

    jp c, $4d8e                                   ; $435e: $da $8e $4d

    jp c, $4daf                                   ; $4361: $da $af $4d

    jp c, Jump_008_4e11                           ; $4364: $da $11 $4e

    jp c, Jump_008_4e32                           ; $4367: $da $32 $4e

    jp c, Jump_008_4e97                           ; $436a: $da $97 $4e

    jp c, Jump_008_4ebf                           ; $436d: $da $bf $4e

    jp c, Jump_008_4f1f                           ; $4370: $da $1f $4f

    jp c, Jump_008_4f3e                           ; $4373: $da $3e $4f

    jp c, Jump_008_4f9f                           ; $4376: $da $9f $4f

    jp c, Jump_008_4fbb                           ; $4379: $da $bb $4f

    jp c, Jump_008_5024                           ; $437c: $da $24 $50

    jp c, Jump_008_5046                           ; $437f: $da $46 $50

    jp c, Jump_008_50b3                           ; $4382: $da $b3 $50

    jp c, $50db                                   ; $4385: $da $db $50

    jp c, Jump_008_514c                           ; $4388: $da $4c $51

    jp c, Jump_008_516d                           ; $438b: $da $6d $51

    jp c, Jump_008_51df                           ; $438e: $da $df $51

    jp c, Jump_008_51fe                           ; $4391: $da $fe $51

    jp c, $526f                                   ; $4394: $da $6f $52

    jp c, $528e                                   ; $4397: $da $8e $52

    jp c, $5304                                   ; $439a: $da $04 $53

    jp c, $532e                                   ; $439d: $da $2e $53

    jp c, $5398                                   ; $43a0: $da $98 $53

    jp c, $53c4                                   ; $43a3: $da $c4 $53

    jp c, Jump_008_5429                           ; $43a6: $da $29 $54

    jp c, Jump_008_544e                           ; $43a9: $da $4e $54

    jp c, Jump_008_54b6                           ; $43ac: $da $b6 $54

    jp c, $54d3                                   ; $43af: $da $d3 $54

    jp c, Jump_008_553c                           ; $43b2: $da $3c $55

    jp c, Jump_008_5555                           ; $43b5: $da $55 $55

    jp c, Jump_008_55c7                           ; $43b8: $da $c7 $55

    jp c, Jump_008_55d6                           ; $43bb: $da $d6 $55

    jp c, Jump_008_5645                           ; $43be: $da $45 $56

    jp c, Jump_008_5654                           ; $43c1: $da $54 $56

    jp c, Jump_008_56c7                           ; $43c4: $da $c7 $56

    jp c, Jump_008_56d6                           ; $43c7: $da $d6 $56

    jp c, Jump_008_573c                           ; $43ca: $da $3c $57

Jump_008_43cd:
    jp c, Jump_008_574d                           ; $43cd: $da $4d $57

    jp c, Jump_008_57d6                           ; $43d0: $da $d6 $57

    jp c, Jump_008_57e7                           ; $43d3: $da $e7 $57

    jp c, Jump_008_585b                           ; $43d6: $da $5b $58

    jp c, Jump_008_586c                           ; $43d9: $da $6c $58

    jp c, Jump_008_58e0                           ; $43dc: $da $e0 $58

    jp c, $58f1                                   ; $43df: $da $f1 $58

    jp c, Jump_008_5965                           ; $43e2: $da $65 $59

    jp c, Jump_008_5976                           ; $43e5: $da $76 $59

    jp c, Jump_008_59ea                           ; $43e8: $da $ea $59

    jp c, Jump_008_59fb                           ; $43eb: $da $fb $59

    jp c, Jump_008_5a72                           ; $43ee: $da $72 $5a

    jp c, Jump_008_5a83                           ; $43f1: $da $83 $5a

    jp c, Jump_008_5af9                           ; $43f4: $da $f9 $5a

    jp c, Jump_008_5b0a                           ; $43f7: $da $0a $5b

    jp c, Jump_008_5b7e                           ; $43fa: $da $7e $5b

    jp c, Jump_008_5b8f                           ; $43fd: $da $8f $5b

    jp c, Jump_008_5c04                           ; $4400: $da $04 $5c

    jp c, Jump_008_5c15                           ; $4403: $da $15 $5c

    jp c, $5c8b                                   ; $4406: $da $8b $5c

    jp c, Jump_008_5c9c                           ; $4409: $da $9c $5c

    jp c, $5d15                                   ; $440c: $da $15 $5d

    jp c, Jump_008_5d26                           ; $440f: $da $26 $5d

    jp c, $5da2                                   ; $4412: $da $a2 $5d

Call_008_4415:
    jp c, Jump_008_5db3                           ; $4415: $da $b3 $5d

    jp c, Jump_008_5e1b                           ; $4418: $da $1b $5e

    jp c, $5e2c                                   ; $441b: $da $2c $5e

    jp c, $5e95                                   ; $441e: $da $95 $5e

    jp c, Jump_008_5ea6                           ; $4421: $da $a6 $5e

    jp c, $5f13                                   ; $4424: $da $13 $5f

    jp c, Jump_008_5f20                           ; $4427: $da $20 $5f

    jp c, $5f8f                                   ; $442a: $da $8f $5f

Jump_008_442d:
    jp c, Jump_008_5fa5                           ; $442d: $da $a5 $5f

    jp c, $6013                                   ; $4430: $da $13 $60

    jp c, Jump_008_6030                           ; $4433: $da $30 $60

    jp c, Jump_008_609e                           ; $4436: $da $9e $60

    jp c, Jump_008_60bb                           ; $4439: $da $bb $60

    jp c, Jump_008_6129                           ; $443c: $da $29 $61

    jp c, Jump_008_6149                           ; $443f: $da $49 $61

    jp c, $61b6                                   ; $4442: $da $b6 $61

    jp c, Jump_008_61d0                           ; $4445: $da $d0 $61

    jp c, Jump_008_623e                           ; $4448: $da $3e $62

    jp c, Jump_008_624b                           ; $444b: $da $4b $62

    jp c, Jump_008_624b                           ; $444e: $da $4b $62

    jp c, Jump_008_62c3                           ; $4451: $da $c3 $62

    jp c, Jump_008_62c3                           ; $4454: $da $c3 $62

    jp c, Jump_008_633b                           ; $4457: $da $3b $63

    jp c, Jump_008_633b                           ; $445a: $da $3b $63

    jp c, Jump_008_63af                           ; $445d: $da $af $63

    jp c, Jump_008_63af                           ; $4460: $da $af $63

    jp c, Jump_008_6420                           ; $4463: $da $20 $64

    jp c, Jump_008_6420                           ; $4466: $da $20 $64

    jp c, Jump_008_6498                           ; $4469: $da $98 $64

    jp c, Jump_008_6498                           ; $446c: $da $98 $64

    jp c, Jump_008_650c                           ; $446f: $da $0c $65

    jp c, Jump_008_650c                           ; $4472: $da $0c $65

    jp c, $657c                                   ; $4475: $da $7c $65

    jp c, $657c                                   ; $4478: $da $7c $65

    jp c, $65eb                                   ; $447b: $da $eb $65

    jp c, $65eb                                   ; $447e: $da $eb $65

    jp c, $6667                                   ; $4481: $da $67 $66

    jp c, $6667                                   ; $4484: $da $67 $66

    jp c, $66e2                                   ; $4487: $da $e2 $66

    jp c, $66e2                                   ; $448a: $da $e2 $66

    jp c, Jump_008_675e                           ; $448d: $da $5e $67

    jp c, Jump_008_675e                           ; $4490: $da $5e $67

    jp c, Jump_008_67d3                           ; $4493: $da $d3 $67

    jp c, Jump_008_67d3                           ; $4496: $da $d3 $67

    jp c, $6848                                   ; $4499: $da $48 $68

    jp c, $6848                                   ; $449c: $da $48 $68

    jp c, Jump_008_68c2                           ; $449f: $da $c2 $68

    jp c, Jump_008_68c2                           ; $44a2: $da $c2 $68

    jp c, Jump_008_693a                           ; $44a5: $da $3a $69

    jp c, Jump_008_693a                           ; $44a8: $da $3a $69

    jp c, Jump_008_69aa                           ; $44ab: $da $aa $69

    jp c, Jump_008_69aa                           ; $44ae: $da $aa $69

    jp c, Jump_008_6a20                           ; $44b1: $da $20 $6a

    jp c, Jump_008_6a20                           ; $44b4: $da $20 $6a

    jp c, Jump_008_6a98                           ; $44b7: $da $98 $6a

    jp c, Jump_008_6a98                           ; $44ba: $da $98 $6a

    jp c, Jump_008_6b00                           ; $44bd: $da $00 $6b

    jp c, Jump_008_6b00                           ; $44c0: $da $00 $6b

    jp c, $6b6f                                   ; $44c3: $da $6f $6b

    jp c, $6b6f                                   ; $44c6: $da $6f $6b

    jp c, $6bd4                                   ; $44c9: $da $d4 $6b

    jp c, $6bd4                                   ; $44cc: $da $d4 $6b

    jp c, $6c32                                   ; $44cf: $da $32 $6c

    jp c, $6c32                                   ; $44d2: $da $32 $6c

    jp c, Jump_008_6c9e                           ; $44d5: $da $9e $6c

    jp c, Jump_008_6c9e                           ; $44d8: $da $9e $6c

    jp c, Jump_008_6d0a                           ; $44db: $da $0a $6d

    jp c, Jump_008_6d0a                           ; $44de: $da $0a $6d

    jp c, Jump_008_6d71                           ; $44e1: $da $71 $6d

    jp c, Jump_008_6d71                           ; $44e4: $da $71 $6d

    jp c, Jump_008_6ddb                           ; $44e7: $da $db $6d

    jp c, Jump_008_6ddb                           ; $44ea: $da $db $6d

    jp c, Jump_008_6e3e                           ; $44ed: $da $3e $6e

    jp c, $6ed0                                   ; $44f0: $da $d0 $6e

    jp c, $6f63                                   ; $44f3: $da $63 $6f

    jp c, Jump_008_6fe4                           ; $44f6: $da $e4 $6f

    jp c, Jump_008_706e                           ; $44f9: $da $6e $70

    jp c, Jump_008_70f4                           ; $44fc: $da $f4 $70

    jp c, Jump_008_7177                           ; $44ff: $da $77 $71

    jp c, Jump_008_71fa                           ; $4502: $da $fa $71

    jp c, Jump_008_7282                           ; $4505: $da $82 $72

    jp c, Jump_008_7305                           ; $4508: $da $05 $73

    jp c, Jump_008_738b                           ; $450b: $da $8b $73

    jp c, Jump_008_740d                           ; $450e: $da $0d $74

    jp c, Jump_008_7490                           ; $4511: $da $90 $74

    jp c, Jump_008_7490                           ; $4514: $da $90 $74

    jp c, Jump_008_74f6                           ; $4517: $da $f6 $74

    jp c, Jump_008_74f6                           ; $451a: $da $f6 $74

    jp c, Jump_008_755c                           ; $451d: $da $5c $75

    jp c, Jump_008_755c                           ; $4520: $da $5c $75

    jp c, Jump_008_75bd                           ; $4523: $da $bd $75

    jp c, Jump_008_75bd                           ; $4526: $da $bd $75

    jp c, Jump_008_761e                           ; $4529: $da $1e $76

    jp c, Jump_008_761e                           ; $452c: $da $1e $76

Jump_008_452f:
    jp c, Jump_008_7689                           ; $452f: $da $89 $76

    jp c, Jump_008_7689                           ; $4532: $da $89 $76

    jp c, Jump_008_76ef                           ; $4535: $da $ef $76

    jp c, Jump_008_7763                           ; $4538: $da $63 $77

    jp c, Jump_008_77dd                           ; $453b: $da $dd $77

    jp c, Jump_008_785a                           ; $453e: $da $5a $78

    jp c, Jump_008_78c5                           ; $4541: $da $c5 $78

    jp c, Jump_008_793c                           ; $4544: $da $3c $79

    jp c, Jump_008_79b1                           ; $4547: $da $b1 $79

    jp c, $7a25                                   ; $454a: $da $25 $7a

    jp c, Jump_008_7a9f                           ; $454d: $da $9f $7a

    jp c, Jump_008_7b12                           ; $4550: $da $12 $7b

    jp c, Jump_008_7b88                           ; $4553: $da $88 $7b

    jp c, Jump_008_7c01                           ; $4556: $da $01 $7c

    jp c, $7c78                                   ; $4559: $da $78 $7c

    jp c, Jump_008_7cf0                           ; $455c: $da $f0 $7c

    jp c, Jump_008_7d69                           ; $455f: $da $69 $7d

    jp c, Jump_008_7de7                           ; $4562: $da $e7 $7d

    jp c, Jump_008_7e61                           ; $4565: $da $61 $7e

    jp c, Jump_008_7edd                           ; $4568: $da $dd $7e

    jp c, Jump_008_7f57                           ; $456b: $da $57 $7f

    db $db                                        ; $456e: $db
    ld bc, $da40                                  ; $456f: $01 $40 $da
    adc $7f                                       ; $4572: $ce $7f
    db $db                                        ; $4574: $db
    ld [hl], h                                    ; $4575: $74
    ld b, b                                       ; $4576: $40
    jp c, $7fdb                                   ; $4577: $da $db $7f

    db $db                                        ; $457a: $db

Call_008_457b:
    and $40                                       ; $457b: $e6 $40
    jp c, Jump_008_7fe8                           ; $457d: $da $e8 $7f

    db $db                                        ; $4580: $db
    ld e, b                                       ; $4581: $58
    ld b, c                                       ; $4582: $41
    db $db                                        ; $4583: $db
    push bc                                       ; $4584: $c5
    ld b, c                                       ; $4585: $41

Jump_008_4586:
    db $db                                        ; $4586: $db
    jp nc, $db41                                  ; $4587: $d2 $41 $db

    ld b, d                                       ; $458a: $42
    ld b, d                                       ; $458b: $42
    db $db                                        ; $458c: $db
    ld c, a                                       ; $458d: $4f
    ld b, d                                       ; $458e: $42
    db $db                                        ; $458f: $db
    ret nz                                        ; $4590: $c0

    ld b, d                                       ; $4591: $42
    db $db                                        ; $4592: $db
    call $db42                                    ; $4593: $cd $42 $db
    ld a, $43                                     ; $4596: $3e $43
    db $db                                        ; $4598: $db
    ld c, e                                       ; $4599: $4b
    ld b, e                                       ; $459a: $43
    db $db                                        ; $459b: $db
    or a                                          ; $459c: $b7
    ld b, e                                       ; $459d: $43
    db $db                                        ; $459e: $db
    call nz, $db43                                ; $459f: $c4 $43 $db
    dec [hl]                                      ; $45a2: $35
    ld b, h                                       ; $45a3: $44
    db $db                                        ; $45a4: $db
    ld b, d                                       ; $45a5: $42
    ld b, h                                       ; $45a6: $44
    db $db                                        ; $45a7: $db
    or a                                          ; $45a8: $b7
    ld b, h                                       ; $45a9: $44
    db $db                                        ; $45aa: $db
    add $44                                       ; $45ab: $c6 $44
    db $db                                        ; $45ad: $db
    dec sp                                        ; $45ae: $3b
    ld b, l                                       ; $45af: $45
    db $db                                        ; $45b0: $db
    ld c, d                                       ; $45b1: $4a
    ld b, l                                       ; $45b2: $45
    db $db                                        ; $45b3: $db
    cp h                                          ; $45b4: $bc
    ld b, l                                       ; $45b5: $45
    db $db                                        ; $45b6: $db
    bit 0, l                                      ; $45b7: $cb $45
    db $db                                        ; $45b9: $db
    inc a                                         ; $45ba: $3c
    ld b, [hl]                                    ; $45bb: $46
    db $db                                        ; $45bc: $db
    ld c, e                                       ; $45bd: $4b
    ld b, [hl]                                    ; $45be: $46
    db $db                                        ; $45bf: $db
    ret nz                                        ; $45c0: $c0

    ld b, [hl]                                    ; $45c1: $46
    db $db                                        ; $45c2: $db
    rst $08                                       ; $45c3: $cf
    ld b, [hl]                                    ; $45c4: $46
    db $db                                        ; $45c5: $db
    ld b, d                                       ; $45c6: $42
    ld b, a                                       ; $45c7: $47
    db $db                                        ; $45c8: $db
    ld d, c                                       ; $45c9: $51
    ld b, a                                       ; $45ca: $47
    db $db                                        ; $45cb: $db
    pop bc                                        ; $45cc: $c1
    ld b, a                                       ; $45cd: $47
    db $db                                        ; $45ce: $db
    ret nc                                        ; $45cf: $d0

    ld b, a                                       ; $45d0: $47
    db $db                                        ; $45d1: $db
    ld b, c                                       ; $45d2: $41
    ld c, b                                       ; $45d3: $48
    db $db                                        ; $45d4: $db
    ld d, b                                       ; $45d5: $50
    ld c, b                                       ; $45d6: $48
    db $db                                        ; $45d7: $db
    jp $db48                                      ; $45d8: $c3 $48 $db


    jp nc, $db48                                  ; $45db: $d2 $48 $db

Jump_008_45de:
    ld b, d                                       ; $45de: $42
    ld c, c                                       ; $45df: $49
    db $db                                        ; $45e0: $db
    ld d, c                                       ; $45e1: $51
    ld c, c                                       ; $45e2: $49
    db $db                                        ; $45e3: $db
    call nz, $db49                                ; $45e4: $c4 $49 $db
    db $d3                                        ; $45e7: $d3
    ld c, c                                       ; $45e8: $49
    db $db                                        ; $45e9: $db
    ld b, e                                       ; $45ea: $43

Call_008_45eb:
    ld c, d                                       ; $45eb: $4a
    db $db                                        ; $45ec: $db
    ld d, d                                       ; $45ed: $52
    ld c, d                                       ; $45ee: $4a
    db $db                                        ; $45ef: $db
    ret nz                                        ; $45f0: $c0

    ld c, d                                       ; $45f1: $4a
    db $db                                        ; $45f2: $db
    rst $08                                       ; $45f3: $cf
    ld c, d                                       ; $45f4: $4a
    db $db                                        ; $45f5: $db
    ccf                                           ; $45f6: $3f
    ld c, e                                       ; $45f7: $4b
    db $db                                        ; $45f8: $db
    ld c, [hl]                                    ; $45f9: $4e
    ld c, e                                       ; $45fa: $4b
    db $db                                        ; $45fb: $db
    pop bc                                        ; $45fc: $c1
    ld c, e                                       ; $45fd: $4b
    db $db                                        ; $45fe: $db
    ret nc                                        ; $45ff: $d0

    ld c, e                                       ; $4600: $4b
    db $db                                        ; $4601: $db
    ccf                                           ; $4602: $3f
    ld c, h                                       ; $4603: $4c
    db $db                                        ; $4604: $db
    ld c, [hl]                                    ; $4605: $4e
    ld c, h                                       ; $4606: $4c
    db $db                                        ; $4607: $db
    cp b                                          ; $4608: $b8
    ld c, h                                       ; $4609: $4c
    db $db                                        ; $460a: $db
    rst $00                                       ; $460b: $c7
    ld c, h                                       ; $460c: $4c
    db $db                                        ; $460d: $db
    jr c, jr_008_465d                             ; $460e: $38 $4d

    db $db                                        ; $4610: $db
    ld b, a                                       ; $4611: $47
    ld c, l                                       ; $4612: $4d
    db $db                                        ; $4613: $db
    ld b, a                                       ; $4614: $47
    ld c, l                                       ; $4615: $4d
    db $db                                        ; $4616: $db
    cp b                                          ; $4617: $b8
    ld c, l                                       ; $4618: $4d
    db $db                                        ; $4619: $db
    cp b                                          ; $461a: $b8
    ld c, l                                       ; $461b: $4d
    db $db                                        ; $461c: $db
    dec hl                                        ; $461d: $2b
    ld c, [hl]                                    ; $461e: $4e
    db $db                                        ; $461f: $db
    dec hl                                        ; $4620: $2b
    ld c, [hl]                                    ; $4621: $4e
    db $db                                        ; $4622: $db
    sbc d                                         ; $4623: $9a
    ld c, [hl]                                    ; $4624: $4e
    db $db                                        ; $4625: $db
    sbc d                                         ; $4626: $9a
    ld c, [hl]                                    ; $4627: $4e
    db $db                                        ; $4628: $db
    add hl, bc                                    ; $4629: $09
    ld c, a                                       ; $462a: $4f
    db $db                                        ; $462b: $db
    add hl, bc                                    ; $462c: $09
    ld c, a                                       ; $462d: $4f
    db $db                                        ; $462e: $db
    ld a, b                                       ; $462f: $78
    ld c, a                                       ; $4630: $4f
    db $db                                        ; $4631: $db

Jump_008_4632:
    ld a, b                                       ; $4632: $78
    ld c, a                                       ; $4633: $4f
    db $db                                        ; $4634: $db
    rst $20                                       ; $4635: $e7
    ld c, a                                       ; $4636: $4f
    db $db                                        ; $4637: $db
    rst $20                                       ; $4638: $e7
    ld c, a                                       ; $4639: $4f
    db $db                                        ; $463a: $db
    ld d, d                                       ; $463b: $52
    ld d, b                                       ; $463c: $50
    db $db                                        ; $463d: $db
    ld d, d                                       ; $463e: $52
    ld d, b                                       ; $463f: $50
    db $db                                        ; $4640: $db
    cp l                                          ; $4641: $bd
    ld d, b                                       ; $4642: $50
    db $db                                        ; $4643: $db
    cp l                                          ; $4644: $bd
    ld d, b                                       ; $4645: $50
    db $db                                        ; $4646: $db
    ld l, $51                                     ; $4647: $2e $51
    db $db                                        ; $4649: $db
    ld l, $51                                     ; $464a: $2e $51
    db $db                                        ; $464c: $db
    and c                                         ; $464d: $a1
    ld d, c                                       ; $464e: $51
    db $db                                        ; $464f: $db
    and c                                         ; $4650: $a1
    ld d, c                                       ; $4651: $51
    db $db                                        ; $4652: $db
    inc d                                         ; $4653: $14
    ld d, d                                       ; $4654: $52
    db $db                                        ; $4655: $db
    inc d                                         ; $4656: $14
    ld d, d                                       ; $4657: $52
    db $db                                        ; $4658: $db
    add e                                         ; $4659: $83
    ld d, d                                       ; $465a: $52
    db $db                                        ; $465b: $db
    add e                                         ; $465c: $83

jr_008_465d:
    ld d, d                                       ; $465d: $52
    db $db                                        ; $465e: $db
    ldh a, [rHDMA2]                               ; $465f: $f0 $52
    db $db                                        ; $4661: $db
    ldh a, [rHDMA2]                               ; $4662: $f0 $52
    db $db                                        ; $4664: $db
    ld h, c                                       ; $4665: $61
    ld d, e                                       ; $4666: $53
    db $db                                        ; $4667: $db
    ld h, c                                       ; $4668: $61
    ld d, e                                       ; $4669: $53
    db $db                                        ; $466a: $db
    jp nc, $db53                                  ; $466b: $d2 $53 $db

    jp nc, $db53                                  ; $466e: $d2 $53 $db

Call_008_4671:
    ccf                                           ; $4671: $3f
    ld d, h                                       ; $4672: $54
    db $db                                        ; $4673: $db
    ccf                                           ; $4674: $3f
    ld d, h                                       ; $4675: $54
    db $db                                        ; $4676: $db
    xor h                                         ; $4677: $ac
    ld d, h                                       ; $4678: $54
    db $db                                        ; $4679: $db
    xor h                                         ; $467a: $ac
    ld d, h                                       ; $467b: $54
    db $db                                        ; $467c: $db
    dec e                                         ; $467d: $1d
    ld d, l                                       ; $467e: $55
    db $db                                        ; $467f: $db
    dec e                                         ; $4680: $1d
    ld d, l                                       ; $4681: $55
    db $db                                        ; $4682: $db
    add h                                         ; $4683: $84
    ld d, l                                       ; $4684: $55
    db $db                                        ; $4685: $db
    add h                                         ; $4686: $84
    ld d, l                                       ; $4687: $55
    db $db                                        ; $4688: $db
    db $ed                                        ; $4689: $ed
    ld d, l                                       ; $468a: $55
    db $db                                        ; $468b: $db
    db $ed                                        ; $468c: $ed
    ld d, l                                       ; $468d: $55
    db $db                                        ; $468e: $db
    ld d, d                                       ; $468f: $52
    ld d, [hl]                                    ; $4690: $56
    db $db                                        ; $4691: $db
    ld d, d                                       ; $4692: $52
    ld d, [hl]                                    ; $4693: $56
    db $db                                        ; $4694: $db
    or e                                          ; $4695: $b3
    ld d, [hl]                                    ; $4696: $56
    db $db                                        ; $4697: $db
    or e                                          ; $4698: $b3
    ld d, [hl]                                    ; $4699: $56
    db $db                                        ; $469a: $db
    jr jr_008_46f4                                ; $469b: $18 $57

    db $db                                        ; $469d: $db
    jr jr_008_46f7                                ; $469e: $18 $57

    db $db                                        ; $46a0: $db
    ld a, a                                       ; $46a1: $7f
    ld d, a                                       ; $46a2: $57
    db $db                                        ; $46a3: $db
    ld a, a                                       ; $46a4: $7f
    ld d, a                                       ; $46a5: $57
    db $db                                        ; $46a6: $db
    ld [c], a                                     ; $46a7: $e2
    ld d, a                                       ; $46a8: $57
    db $db                                        ; $46a9: $db
    ld [c], a                                     ; $46aa: $e2

Jump_008_46ab:
    ld d, a                                       ; $46ab: $57
    db $db                                        ; $46ac: $db
    ld b, l                                       ; $46ad: $45
    ld e, b                                       ; $46ae: $58
    db $db                                        ; $46af: $db
    ld b, l                                       ; $46b0: $45
    ld e, b                                       ; $46b1: $58
    db $db                                        ; $46b2: $db
    and [hl]                                      ; $46b3: $a6
    ld e, b                                       ; $46b4: $58
    db $db                                        ; $46b5: $db
    ld a, $59                                     ; $46b6: $3e $59
    db $db                                        ; $46b8: $db
    ld e, h                                       ; $46b9: $5c
    ld e, c                                       ; $46ba: $59
    db $db                                        ; $46bb: $db
    ldh a, [$59]                                  ; $46bc: $f0 $59
    db $db                                        ; $46be: $db
    ld c, $5a                                     ; $46bf: $0e $5a
    db $db                                        ; $46c1: $db
    sbc c                                         ; $46c2: $99
    ld e, d                                       ; $46c3: $5a
    db $db                                        ; $46c4: $db
    or l                                          ; $46c5: $b5
    ld e, d                                       ; $46c6: $5a
    db $db                                        ; $46c7: $db
    dec a                                         ; $46c8: $3d
    ld e, e                                       ; $46c9: $5b
    db $db                                        ; $46ca: $db
    ld e, c                                       ; $46cb: $59
    ld e, e                                       ; $46cc: $5b
    db $db                                        ; $46cd: $db
    jp hl                                         ; $46ce: $e9


    ld e, e                                       ; $46cf: $5b
    db $db                                        ; $46d0: $db
    rlca                                          ; $46d1: $07
    ld e, h                                       ; $46d2: $5c
    db $db                                        ; $46d3: $db
    sub [hl]                                      ; $46d4: $96
    ld e, h                                       ; $46d5: $5c
    db $db                                        ; $46d6: $db
    or h                                          ; $46d7: $b4
    ld e, h                                       ; $46d8: $5c
    db $db                                        ; $46d9: $db
    dec a                                         ; $46da: $3d
    ld e, l                                       ; $46db: $5d
    db $db                                        ; $46dc: $db
    ld e, c                                       ; $46dd: $59

Call_008_46de:
    ld e, l                                       ; $46de: $5d
    db $db                                        ; $46df: $db
    pop hl                                        ; $46e0: $e1
    ld e, l                                       ; $46e1: $5d
    db $db                                        ; $46e2: $db
    db $fd                                        ; $46e3: $fd
    ld e, l                                       ; $46e4: $5d
    db $db                                        ; $46e5: $db
    adc c                                         ; $46e6: $89
    ld e, [hl]                                    ; $46e7: $5e
    db $db                                        ; $46e8: $db
    and a                                         ; $46e9: $a7
    ld e, [hl]                                    ; $46ea: $5e
    db $db                                        ; $46eb: $db
    ld a, [hl-]                                   ; $46ec: $3a
    ld e, a                                       ; $46ed: $5f
    db $db                                        ; $46ee: $db
    ld e, b                                       ; $46ef: $58
    ld e, a                                       ; $46f0: $5f
    db $db                                        ; $46f1: $db
    ld a, [c]                                     ; $46f2: $f2
    ld e, a                                       ; $46f3: $5f

jr_008_46f4:
    db $db                                        ; $46f4: $db
    inc d                                         ; $46f5: $14
    ld h, b                                       ; $46f6: $60

jr_008_46f7:
    db $db                                        ; $46f7: $db
    and a                                         ; $46f8: $a7
    ld h, b                                       ; $46f9: $60
    db $db                                        ; $46fa: $db
    rst $00                                       ; $46fb: $c7
    ld h, b                                       ; $46fc: $60
    db $db                                        ; $46fd: $db
    ld d, a                                       ; $46fe: $57
    ld h, c                                       ; $46ff: $61
    db $db                                        ; $4700: $db
    ld a, c                                       ; $4701: $79
    ld h, c                                       ; $4702: $61
    db $db                                        ; $4703: $db
    db $10                                        ; $4704: $10
    ld h, d                                       ; $4705: $62
    db $db                                        ; $4706: $db
    ld l, $62                                     ; $4707: $2e $62
    db $db                                        ; $4709: $db
    pop bc                                        ; $470a: $c1
    ld h, d                                       ; $470b: $62
    db $db                                        ; $470c: $db

Jump_008_470d:
    push hl                                       ; $470d: $e5
    ld h, d                                       ; $470e: $62
    db $db                                        ; $470f: $db
    ld [hl], b                                    ; $4710: $70
    ld h, e                                       ; $4711: $63
    db $db                                        ; $4712: $db
    sub b                                         ; $4713: $90
    ld h, e                                       ; $4714: $63
    db $db                                        ; $4715: $db
    ld [hl+], a                                   ; $4716: $22
    ld h, h                                       ; $4717: $64
    db $db                                        ; $4718: $db
    ld b, [hl]                                    ; $4719: $46
    ld h, h                                       ; $471a: $64
    db $db                                        ; $471b: $db
    db $db                                        ; $471c: $db
    ld h, h                                       ; $471d: $64
    db $db                                        ; $471e: $db
    ld sp, hl                                     ; $471f: $f9
    ld h, h                                       ; $4720: $64
    db $db                                        ; $4721: $db
    xor h                                         ; $4722: $ac
    ld h, l                                       ; $4723: $65
    db $db                                        ; $4724: $db
    rst $10                                       ; $4725: $d7
    ld h, l                                       ; $4726: $65
    db $db                                        ; $4727: $db
    adc e                                         ; $4728: $8b
    ld h, [hl]                                    ; $4729: $66
    db $db                                        ; $472a: $db
    or [hl]                                       ; $472b: $b6
    ld h, [hl]                                    ; $472c: $66
    db $db                                        ; $472d: $db
    ld h, e                                       ; $472e: $63
    ld h, a                                       ; $472f: $67
    db $db                                        ; $4730: $db
    adc l                                         ; $4731: $8d
    ld h, a                                       ; $4732: $67
    db $db                                        ; $4733: $db
    dec a                                         ; $4734: $3d
    ld l, b                                       ; $4735: $68
    db $db                                        ; $4736: $db
    ld l, c                                       ; $4737: $69
    ld l, b                                       ; $4738: $68
    db $db                                        ; $4739: $db
    dec de                                        ; $473a: $1b
    ld l, c                                       ; $473b: $69
    db $db                                        ; $473c: $db
    ld b, [hl]                                    ; $473d: $46
    ld l, c                                       ; $473e: $69
    db $db                                        ; $473f: $db
    ld sp, hl                                     ; $4740: $f9
    ld l, c                                       ; $4741: $69
    db $db                                        ; $4742: $db
    inc h                                         ; $4743: $24
    ld l, d                                       ; $4744: $6a
    db $db                                        ; $4745: $db
    db $d3                                        ; $4746: $d3
    ld l, d                                       ; $4747: $6a
    db $db                                        ; $4748: $db
    db $fd                                        ; $4749: $fd
    ld l, d                                       ; $474a: $6a
    db $db                                        ; $474b: $db
    xor l                                         ; $474c: $ad
    ld l, e                                       ; $474d: $6b
    db $db                                        ; $474e: $db
    reti                                          ; $474f: $d9


    ld l, e                                       ; $4750: $6b
    db $db                                        ; $4751: $db
    adc h                                         ; $4752: $8c
    ld l, h                                       ; $4753: $6c
    db $db                                        ; $4754: $db
    or a                                          ; $4755: $b7
    ld l, h                                       ; $4756: $6c
    db $db                                        ; $4757: $db
    or a                                          ; $4758: $b7
    ld l, h                                       ; $4759: $6c
    db $db                                        ; $475a: $db
    ld b, h                                       ; $475b: $44
    ld l, l                                       ; $475c: $6d
    db $db                                        ; $475d: $db
    ld b, h                                       ; $475e: $44
    ld l, l                                       ; $475f: $6d
    db $db                                        ; $4760: $db
    db $d3                                        ; $4761: $d3
    ld l, l                                       ; $4762: $6d
    db $db                                        ; $4763: $db
    db $d3                                        ; $4764: $d3
    ld l, l                                       ; $4765: $6d
    db $db                                        ; $4766: $db
    ld e, [hl]                                    ; $4767: $5e
    ld l, [hl]                                    ; $4768: $6e

Call_008_4769:
    db $db                                        ; $4769: $db
    ld e, [hl]                                    ; $476a: $5e
    ld l, [hl]                                    ; $476b: $6e
    db $db                                        ; $476c: $db
    jp hl                                         ; $476d: $e9


    ld l, [hl]                                    ; $476e: $6e
    db $db                                        ; $476f: $db
    jp hl                                         ; $4770: $e9


    ld l, [hl]                                    ; $4771: $6e
    db $db                                        ; $4772: $db
    halt                                          ; $4773: $76
    ld l, a                                       ; $4774: $6f
    db $db                                        ; $4775: $db
    halt                                          ; $4776: $76
    ld l, a                                       ; $4777: $6f
    db $db                                        ; $4778: $db
    inc bc                                        ; $4779: $03
    ld [hl], b                                    ; $477a: $70
    db $db                                        ; $477b: $db
    inc bc                                        ; $477c: $03
    ld [hl], b                                    ; $477d: $70
    db $db                                        ; $477e: $db
    adc d                                         ; $477f: $8a
    ld [hl], b                                    ; $4780: $70
    db $db                                        ; $4781: $db
    adc d                                         ; $4782: $8a
    ld [hl], b                                    ; $4783: $70
    db $db                                        ; $4784: $db
    inc de                                        ; $4785: $13
    ld [hl], c                                    ; $4786: $71

Jump_008_4787:
    db $db                                        ; $4787: $db
    inc de                                        ; $4788: $13
    ld [hl], c                                    ; $4789: $71
    db $db                                        ; $478a: $db
    and b                                         ; $478b: $a0
    ld [hl], c                                    ; $478c: $71
    db $db                                        ; $478d: $db
    and b                                         ; $478e: $a0
    ld [hl], c                                    ; $478f: $71
    db $db                                        ; $4790: $db
    cpl                                           ; $4791: $2f
    ld [hl], d                                    ; $4792: $72
    db $db                                        ; $4793: $db
    cpl                                           ; $4794: $2f
    ld [hl], d                                    ; $4795: $72
    db $db                                        ; $4796: $db
    cp [hl]                                       ; $4797: $be
    ld [hl], d                                    ; $4798: $72
    db $db                                        ; $4799: $db
    cp [hl]                                       ; $479a: $be
    ld [hl], d                                    ; $479b: $72
    db $db                                        ; $479c: $db
    ld c, c                                       ; $479d: $49
    ld [hl], e                                    ; $479e: $73

Jump_008_479f:
    db $db                                        ; $479f: $db
    ld c, c                                       ; $47a0: $49
    ld [hl], e                                    ; $47a1: $73
    db $db                                        ; $47a2: $db
    jp nc, $db73                                  ; $47a3: $d2 $73 $db

    jp nc, $db73                                  ; $47a6: $d2 $73 $db

    ld e, a                                       ; $47a9: $5f
    ld [hl], h                                    ; $47aa: $74
    db $db                                        ; $47ab: $db
    ld e, a                                       ; $47ac: $5f
    ld [hl], h                                    ; $47ad: $74
    db $db                                        ; $47ae: $db
    db $ec                                        ; $47af: $ec
    ld [hl], h                                    ; $47b0: $74
    db $db                                        ; $47b1: $db
    db $ec                                        ; $47b2: $ec
    ld [hl], h                                    ; $47b3: $74
    db $db                                        ; $47b4: $db
    ld [hl], l                                    ; $47b5: $75
    ld [hl], l                                    ; $47b6: $75
    db $db                                        ; $47b7: $db
    ld [hl], l                                    ; $47b8: $75
    ld [hl], l                                    ; $47b9: $75
    db $db                                        ; $47ba: $db
    cp $75                                        ; $47bb: $fe $75
    db $db                                        ; $47bd: $db
    cp $75                                        ; $47be: $fe $75
    db $db                                        ; $47c0: $db
    adc e                                         ; $47c1: $8b
    halt                                          ; $47c2: $76
    db $db                                        ; $47c3: $db
    adc e                                         ; $47c4: $8b
    halt                                          ; $47c5: $76
    db $db                                        ; $47c6: $db
    inc [hl]                                      ; $47c7: $34
    ld [hl], a                                    ; $47c8: $77
    db $db                                        ; $47c9: $db
    inc [hl]                                      ; $47ca: $34
    ld [hl], a                                    ; $47cb: $77
    db $db                                        ; $47cc: $db
    db $dd                                        ; $47cd: $dd
    ld [hl], a                                    ; $47ce: $77
    db $db                                        ; $47cf: $db
    db $dd                                        ; $47d0: $dd
    ld [hl], a                                    ; $47d1: $77
    db $db                                        ; $47d2: $db
    ld a, [hl]                                    ; $47d3: $7e
    ld a, b                                       ; $47d4: $78
    db $db                                        ; $47d5: $db
    ld a, [hl]                                    ; $47d6: $7e
    ld a, b                                       ; $47d7: $78

Call_008_47d8:
    db $db                                        ; $47d8: $db
    ld hl, $db79                                  ; $47d9: $21 $79 $db
    ld hl, $db79                                  ; $47dc: $21 $79 $db
    ret z                                         ; $47df: $c8

    ld a, c                                       ; $47e0: $79
    db $db                                        ; $47e1: $db
    ret z                                         ; $47e2: $c8

    ld a, c                                       ; $47e3: $79
    db $db                                        ; $47e4: $db
    ld [hl], c                                    ; $47e5: $71
    ld a, d                                       ; $47e6: $7a
    db $db                                        ; $47e7: $db
    ld [hl], c                                    ; $47e8: $71
    ld a, d                                       ; $47e9: $7a
    db $db                                        ; $47ea: $db
    inc d                                         ; $47eb: $14
    ld a, e                                       ; $47ec: $7b
    db $db                                        ; $47ed: $db
    inc d                                         ; $47ee: $14
    ld a, e                                       ; $47ef: $7b
    db $db                                        ; $47f0: $db
    or a                                          ; $47f1: $b7
    ld a, e                                       ; $47f2: $7b
    db $db                                        ; $47f3: $db
    or a                                          ; $47f4: $b7
    ld a, e                                       ; $47f5: $7b
    db $db                                        ; $47f6: $db
    ld h, b                                       ; $47f7: $60
    ld a, h                                       ; $47f8: $7c
    db $db                                        ; $47f9: $db
    push hl                                       ; $47fa: $e5
    ld a, h                                       ; $47fb: $7c
    db $db                                        ; $47fc: $db
    ld d, e                                       ; $47fd: $53
    ld a, l                                       ; $47fe: $7d
    db $db                                        ; $47ff: $db
    call nc, $db7d                                ; $4800: $d4 $7d $db
    ld a, $7e                                     ; $4803: $3e $7e
    db $db                                        ; $4805: $db
    cp a                                          ; $4806: $bf
    ld a, [hl]                                    ; $4807: $7e
    db $db                                        ; $4808: $db
    inc l                                         ; $4809: $2c
    ld a, a                                       ; $480a: $7f
    call c, $4001                                 ; $480b: $dc $01 $40
    call c, $406f                                 ; $480e: $dc $6f $40
    call c, Call_008_40ec                         ; $4811: $dc $ec $40
    call c, $4156                                 ; $4814: $dc $56 $41
    call c, Call_008_41d3                         ; $4817: $dc $d3 $41
    call c, Call_008_423e                         ; $481a: $dc $3e $42
    call c, Call_008_42c1                         ; $481d: $dc $c1 $42
    call c, $4330                                 ; $4820: $dc $30 $43
    call c, $43a7                                 ; $4823: $dc $a7 $43
    call c, Call_008_4415                         ; $4826: $dc $15 $44
    call c, $448e                                 ; $4829: $dc $8e $44
    call c, $44f8                                 ; $482c: $dc $f8 $44

Jump_008_482f:
    call c, Call_008_457b                         ; $482f: $dc $7b $45
    call c, Call_008_45eb                         ; $4832: $dc $eb $45
    call c, Call_008_4671                         ; $4835: $dc $71 $46
    call c, Call_008_46de                         ; $4838: $dc $de $46
    call c, Call_008_4769                         ; $483b: $dc $69 $47
    call c, Call_008_47d8                         ; $483e: $dc $d8 $47
    call c, $4857                                 ; $4841: $dc $57 $48
    call c, $48c7                                 ; $4844: $dc $c7 $48
    call c, $4945                                 ; $4847: $dc $45 $49
    call c, $49b1                                 ; $484a: $dc $b1 $49
    call c, Call_008_4a39                         ; $484d: $dc $39 $4a
    call c, Call_008_4aa5                         ; $4850: $dc $a5 $4a
    call c, Call_008_4b2c                         ; $4853: $dc $2c $4b
    call c, Call_008_4b99                         ; $4856: $dc $99 $4b
    call c, Call_008_4c18                         ; $4859: $dc $18 $4c
    call c, Call_008_4c88                         ; $485c: $dc $88 $4c
    call c, Call_008_4d08                         ; $485f: $dc $08 $4d
    call c, Call_008_4d74                         ; $4862: $dc $74 $4d
    call c, Call_008_4e11                         ; $4865: $dc $11 $4e
    call c, $4e75                                 ; $4868: $dc $75 $4e
    call c, Call_008_4f11                         ; $486b: $dc $11 $4f
    call c, Call_008_4f71                         ; $486e: $dc $71 $4f
    call c, Call_008_5006                         ; $4871: $dc $06 $50
    call c, Call_008_5066                         ; $4874: $dc $66 $50
    call c, $5107                                 ; $4877: $dc $07 $51
    call c, Call_008_516b                         ; $487a: $dc $6b $51
    call c, $5211                                 ; $487d: $dc $11 $52
    call c, $5275                                 ; $4880: $dc $75 $52
    call c, $531f                                 ; $4883: $dc $1f $53
    call c, Call_008_5380                         ; $4886: $dc $80 $53
    call c, Call_008_5424                         ; $4889: $dc $24 $54
    call c, $5485                                 ; $488c: $dc $85 $54
    call c, $552a                                 ; $488f: $dc $2a $55
    call c, Call_008_558e                         ; $4892: $dc $8e $55
    call c, Call_008_562d                         ; $4895: $dc $2d $56
    call c, Call_008_5691                         ; $4898: $dc $91 $56
    call c, Call_008_5691                         ; $489b: $dc $91 $56
    call c, Call_008_5718                         ; $489e: $dc $18 $57
    call c, Call_008_5718                         ; $48a1: $dc $18 $57
    call c, Call_008_579f                         ; $48a4: $dc $9f $57
    call c, Call_008_579f                         ; $48a7: $dc $9f $57
    call c, Call_008_5824                         ; $48aa: $dc $24 $58
    call c, Call_008_5824                         ; $48ad: $dc $24 $58
    call c, Call_008_58a3                         ; $48b0: $dc $a3 $58
    call c, Call_008_58a3                         ; $48b3: $dc $a3 $58
    call c, Call_008_5926                         ; $48b6: $dc $26 $59
    call c, Call_008_5926                         ; $48b9: $dc $26 $59
    call c, Call_008_59ad                         ; $48bc: $dc $ad $59
    call c, Call_008_59ad                         ; $48bf: $dc $ad $59
    call c, Call_008_5a34                         ; $48c2: $dc $34 $5a
    call c, Call_008_5a34                         ; $48c5: $dc $34 $5a
    call c, Call_008_5ab3                         ; $48c8: $dc $b3 $5a
    call c, Call_008_5ab3                         ; $48cb: $dc $b3 $5a
    call c, Call_008_5b36                         ; $48ce: $dc $36 $5b
    call c, Call_008_5b36                         ; $48d1: $dc $36 $5b
    call c, Call_008_5bbd                         ; $48d4: $dc $bd $5b
    call c, Call_008_5bbd                         ; $48d7: $dc $bd $5b
    call c, Call_008_5c46                         ; $48da: $dc $46 $5c
    call c, Call_008_5c46                         ; $48dd: $dc $46 $5c
    call c, Call_008_5ccf                         ; $48e0: $dc $cf $5c
    call c, Call_008_5ccf                         ; $48e3: $dc $cf $5c
    call c, Call_008_5d50                         ; $48e6: $dc $50 $5d
    call c, Call_008_5d50                         ; $48e9: $dc $50 $5d
    call c, $5dd5                                 ; $48ec: $dc $d5 $5d
    call c, $5dd5                                 ; $48ef: $dc $d5 $5d
    call c, Call_008_5e5e                         ; $48f2: $dc $5e $5e
    call c, Call_008_5e5e                         ; $48f5: $dc $5e $5e
    call c, Call_008_5ee5                         ; $48f8: $dc $e5 $5e
    call c, Call_008_5ee5                         ; $48fb: $dc $e5 $5e
    call c, Call_008_5f66                         ; $48fe: $dc $66 $5f
    call c, Call_008_5f66                         ; $4901: $dc $66 $5f
    call c, Call_008_5feb                         ; $4904: $dc $eb $5f
    call c, Call_008_5feb                         ; $4907: $dc $eb $5f
    call c, $60a6                                 ; $490a: $dc $a6 $60
    call c, $60a6                                 ; $490d: $dc $a6 $60
    call c, $6159                                 ; $4910: $dc $59 $61
    call c, $6159                                 ; $4913: $dc $59 $61
    call c, Call_008_6206                         ; $4916: $dc $06 $62
    call c, Call_008_6206                         ; $4919: $dc $06 $62
    call c, $62c1                                 ; $491c: $dc $c1 $62
    call c, $62c1                                 ; $491f: $dc $c1 $62
    call c, Call_008_6380                         ; $4922: $dc $80 $63
    call c, Call_008_6380                         ; $4925: $dc $80 $63
    call c, Call_008_6441                         ; $4928: $dc $41 $64
    call c, Call_008_6441                         ; $492b: $dc $41 $64
    call c, Call_008_64fc                         ; $492e: $dc $fc $64
    call c, Call_008_64fc                         ; $4931: $dc $fc $64
    call c, Call_008_65bd                         ; $4934: $dc $bd $65
    call c, Call_008_65bd                         ; $4937: $dc $bd $65
    db $db                                        ; $493a: $db
    and e                                         ; $493b: $a3
    ld a, a                                       ; $493c: $7f

    db $dc, $78, $66, $dc, $46, $67, $dc, $08, $68, $dc, $c9, $68, $dc, $83, $69, $dc
    db $48, $6a, $dc, $12, $6b, $dc, $cd, $6b

    call c, Call_008_6ca0                         ; $4955: $dc $a0 $6c
    call c, $6d70                                 ; $4958: $dc $70 $6d
    call c, $6e3f                                 ; $495b: $dc $3f $6e
    call c, Call_008_6f0d                         ; $495e: $dc $0d $6f
    call c, Call_008_6fda                         ; $4961: $dc $da $6f
    call c, Call_008_70a6                         ; $4964: $dc $a6 $70

    db $dc, $6f, $71, $dc, $05, $72, $dc, $a0, $72, $dc, $40, $73, $dc, $de, $73, $dc
    db $71, $74, $dc, $13, $75

    call c, Call_008_75af                         ; $497c: $dc $af $75
    call c, Call_008_7646                         ; $497f: $dc $46 $76
    call c, Call_008_76d8                         ; $4982: $dc $d8 $76
    call c, Call_008_7767                         ; $4985: $dc $67 $77
    call c, Call_008_77fa                         ; $4988: $dc $fa $77
    call c, Call_008_788c                         ; $498b: $dc $8c $78
    call c, Call_008_791b                         ; $498e: $dc $1b $79
    call c, Call_008_79ae                         ; $4991: $dc $ae $79
    call c, Call_008_7a42                         ; $4994: $dc $42 $7a
    call c, $7ad4                                 ; $4997: $dc $d4 $7a
    call c, Call_008_7b64                         ; $499a: $dc $64 $7b
    call c, Call_008_7bf4                         ; $499d: $dc $f4 $7b
    call c, Call_008_7c86                         ; $49a0: $dc $86 $7c
    call c, Call_008_7d17                         ; $49a3: $dc $17 $7d
    call c, Call_008_7da7                         ; $49a6: $dc $a7 $7d
    call c, Call_008_7e3d                         ; $49a9: $dc $3d $7e
    call c, $7ed2                                 ; $49ac: $dc $d2 $7e
    call c, Call_008_7f64                         ; $49af: $dc $64 $7f
    db $dd                                        ; $49b2: $dd
    ld bc, $dd40                                  ; $49b3: $01 $40 $dd
    sbc c                                         ; $49b6: $99
    ld b, b                                       ; $49b7: $40
    db $dd                                        ; $49b8: $dd
    cpl                                           ; $49b9: $2f
    ld b, c                                       ; $49ba: $41
    db $dd                                        ; $49bb: $dd
    push bc                                       ; $49bc: $c5
    ld b, c                                       ; $49bd: $41
    db $dd                                        ; $49be: $dd
    ld b, [hl]                                    ; $49bf: $46
    ld b, d                                       ; $49c0: $42
    db $dd                                        ; $49c1: $dd
    reti                                          ; $49c2: $d9


    ld b, d                                       ; $49c3: $42
    db $dd                                        ; $49c4: $dd
    ld l, d                                       ; $49c5: $6a
    ld b, e                                       ; $49c6: $43
    db $dd                                        ; $49c7: $dd
    ld a, [$dd43]                                 ; $49c8: $fa $43 $dd
    adc l                                         ; $49cb: $8d
    ld b, h                                       ; $49cc: $44
    db $dd                                        ; $49cd: $dd
    rra                                           ; $49ce: $1f
    ld b, l                                       ; $49cf: $45

Jump_008_49d0:
    db $dd                                        ; $49d0: $dd
    xor a                                         ; $49d1: $af
    ld b, l                                       ; $49d2: $45
    db $dd                                        ; $49d3: $dd
    ld b, d                                       ; $49d4: $42
    ld b, [hl]                                    ; $49d5: $46
    db $dd                                        ; $49d6: $dd
    rst $10                                       ; $49d7: $d7
    ld b, [hl]                                    ; $49d8: $46
    db $dd                                        ; $49d9: $dd
    ld l, d                                       ; $49da: $6a
    ld b, a                                       ; $49db: $47
    db $dd                                        ; $49dc: $dd
    cp $47                                        ; $49dd: $fe $47
    db $dd                                        ; $49df: $dd
    sub e                                         ; $49e0: $93
    ld c, b                                       ; $49e1: $48
    db $dd                                        ; $49e2: $dd
    ld h, $49                                     ; $49e3: $26 $49

Jump_008_49e5:
    db $dd                                        ; $49e5: $dd
    cp d                                          ; $49e6: $ba
    ld c, c                                       ; $49e7: $49
    db $dd                                        ; $49e8: $dd
    ld c, a                                       ; $49e9: $4f
    ld c, d                                       ; $49ea: $4a
    db $dd                                        ; $49eb: $dd
    call c, $dd4a                                 ; $49ec: $dc $4a $dd
    ld l, e                                       ; $49ef: $6b
    ld c, e                                       ; $49f0: $4b
    db $dd                                        ; $49f1: $dd
    push af                                       ; $49f2: $f5
    ld c, e                                       ; $49f3: $4b
    db $dd                                        ; $49f4: $dd
    add d                                         ; $49f5: $82
    ld c, h                                       ; $49f6: $4c
    db $dd                                        ; $49f7: $dd
    db $10                                        ; $49f8: $10
    ld c, l                                       ; $49f9: $4d
    db $dd                                        ; $49fa: $dd
    sbc e                                         ; $49fb: $9b
    ld c, l                                       ; $49fc: $4d
    db $dd                                        ; $49fd: $dd
    jr z, jr_008_4a4e                             ; $49fe: $28 $4e

    db $dd                                        ; $4a00: $dd
    sbc c                                         ; $4a01: $99
    ld c, [hl]                                    ; $4a02: $4e
    db $dd                                        ; $4a03: $dd
    rst $00                                       ; $4a04: $c7
    ld c, [hl]                                    ; $4a05: $4e
    db $db                                        ; $4a06: $db
    db $d3                                        ; $4a07: $d3
    ld a, a                                       ; $4a08: $7f
    db $dd                                        ; $4a09: $dd
    ld [hl-], a                                   ; $4a0a: $32
    ld c, a                                       ; $4a0b: $4f
    db $dd                                        ; $4a0c: $dd
    sbc e                                         ; $4a0d: $9b
    ld c, a                                       ; $4a0e: $4f
    db $dd                                        ; $4a0f: $dd
    rst $08                                       ; $4a10: $cf
    ld c, a                                       ; $4a11: $4f
    db $dd                                        ; $4a12: $dd
    inc a                                         ; $4a13: $3c
    ld d, b                                       ; $4a14: $50
    db $dd                                        ; $4a15: $dd
    ld l, h                                       ; $4a16: $6c
    ld d, b                                       ; $4a17: $50
    db $dd                                        ; $4a18: $dd
    call nc, $dd50                                ; $4a19: $d4 $50 $dd
    nop                                           ; $4a1c: $00
    ld d, c                                       ; $4a1d: $51
    db $dd                                        ; $4a1e: $dd
    ld h, a                                       ; $4a1f: $67
    ld d, c                                       ; $4a20: $51
    db $dd                                        ; $4a21: $dd
    sub e                                         ; $4a22: $93
    ld d, c                                       ; $4a23: $51
    db $dd                                        ; $4a24: $dd
    ld bc, $dd52                                  ; $4a25: $01 $52 $dd
    ld sp, $dd52                                  ; $4a28: $31 $52 $dd
    sbc a                                         ; $4a2b: $9f
    ld d, d                                       ; $4a2c: $52
    db $dd                                        ; $4a2d: $dd
    call $dd52                                    ; $4a2e: $cd $52 $dd
    dec a                                         ; $4a31: $3d
    ld d, e                                       ; $4a32: $53
    db $dd                                        ; $4a33: $dd
    ld l, c                                       ; $4a34: $69
    ld d, e                                       ; $4a35: $53
    db $dd                                        ; $4a36: $dd
    rst $08                                       ; $4a37: $cf
    ld d, e                                       ; $4a38: $53

Call_008_4a39:
    db $dd                                        ; $4a39: $dd
    ei                                            ; $4a3a: $fb
    ld d, e                                       ; $4a3b: $53
    db $dd                                        ; $4a3c: $dd
    ld h, l                                       ; $4a3d: $65
    ld d, h                                       ; $4a3e: $54
    db $dd                                        ; $4a3f: $dd
    sub e                                         ; $4a40: $93
    ld d, h                                       ; $4a41: $54
    db $dd                                        ; $4a42: $dd
    rst $38                                       ; $4a43: $ff
    ld d, h                                       ; $4a44: $54
    db $dd                                        ; $4a45: $dd
    dec hl                                        ; $4a46: $2b
    ld d, l                                       ; $4a47: $55
    db $dd                                        ; $4a48: $dd
    adc a                                         ; $4a49: $8f
    ld d, l                                       ; $4a4a: $55
    db $dd                                        ; $4a4b: $dd
    cp l                                          ; $4a4c: $bd
    ld d, l                                       ; $4a4d: $55

jr_008_4a4e:
    db $dd                                        ; $4a4e: $dd
    daa                                           ; $4a4f: $27
    ld d, [hl]                                    ; $4a50: $56
    db $dd                                        ; $4a51: $dd
    ld d, l                                       ; $4a52: $55
    ld d, [hl]                                    ; $4a53: $56
    db $dd                                        ; $4a54: $dd
    and [hl]                                      ; $4a55: $a6
    ld d, [hl]                                    ; $4a56: $56
    db $dd                                        ; $4a57: $dd
    jp z, $dd56                                   ; $4a58: $ca $56 $dd

    add hl, hl                                    ; $4a5b: $29
    ld d, a                                       ; $4a5c: $57
    db $dd                                        ; $4a5d: $dd
    ld d, l                                       ; $4a5e: $55
    ld d, a                                       ; $4a5f: $57
    db $dd                                        ; $4a60: $dd

Jump_008_4a61:
    xor l                                         ; $4a61: $ad
    ld d, a                                       ; $4a62: $57
    db $dd                                        ; $4a63: $dd
    rst $08                                       ; $4a64: $cf
    ld d, a                                       ; $4a65: $57
    db $dd                                        ; $4a66: $dd
    inc e                                         ; $4a67: $1c
    ld e, b                                       ; $4a68: $58
    db $dd                                        ; $4a69: $dd
    ccf                                           ; $4a6a: $3f
    ld e, b                                       ; $4a6b: $58
    db $dd                                        ; $4a6c: $dd
    and e                                         ; $4a6d: $a3
    ld e, b                                       ; $4a6e: $58
    db $dd                                        ; $4a6f: $dd
    rst $08                                       ; $4a70: $cf
    ld e, b                                       ; $4a71: $58
    db $dd                                        ; $4a72: $dd
    dec l                                         ; $4a73: $2d
    ld e, c                                       ; $4a74: $59
    db $dd                                        ; $4a75: $dd
    ld d, c                                       ; $4a76: $51
    ld e, c                                       ; $4a77: $59

Jump_008_4a78:
    db $dd                                        ; $4a78: $dd
    and b                                         ; $4a79: $a0
    ld e, c                                       ; $4a7a: $59
    db $dd                                        ; $4a7b: $dd
    push bc                                       ; $4a7c: $c5
    ld e, c                                       ; $4a7d: $59
    db $dd                                        ; $4a7e: $dd
    scf                                           ; $4a7f: $37
    ld e, d                                       ; $4a80: $5a
    db $dd                                        ; $4a81: $dd
    ld c, a                                       ; $4a82: $4f
    ld e, d                                       ; $4a83: $5a
    db $dd                                        ; $4a84: $dd
    cp l                                          ; $4a85: $bd
    ld e, d                                       ; $4a86: $5a
    db $dd                                        ; $4a87: $dd
    push de                                       ; $4a88: $d5
    ld e, d                                       ; $4a89: $5a
    db $dd                                        ; $4a8a: $dd
    ld b, d                                       ; $4a8b: $42
    ld e, e                                       ; $4a8c: $5b
    db $dd                                        ; $4a8d: $dd
    ld e, d                                       ; $4a8e: $5a
    ld e, e                                       ; $4a8f: $5b
    db $dd                                        ; $4a90: $dd
    add $5b                                       ; $4a91: $c6 $5b
    db $dd                                        ; $4a93: $dd
    sbc $5b                                       ; $4a94: $de $5b
    db $dd                                        ; $4a96: $dd
    ld b, [hl]                                    ; $4a97: $46
    ld e, h                                       ; $4a98: $5c
    db $dd                                        ; $4a99: $dd
    ld e, [hl]                                    ; $4a9a: $5e
    ld e, h                                       ; $4a9b: $5c
    db $dd                                        ; $4a9c: $dd
    jp z, $dd5c                                   ; $4a9d: $ca $5c $dd

    ld [c], a                                     ; $4aa0: $e2
    ld e, h                                       ; $4aa1: $5c
    db $dd                                        ; $4aa2: $dd
    ld c, a                                       ; $4aa3: $4f
    ld e, l                                       ; $4aa4: $5d

Call_008_4aa5:
    db $dd                                        ; $4aa5: $dd
    ld h, a                                       ; $4aa6: $67
    ld e, l                                       ; $4aa7: $5d
    db $dd                                        ; $4aa8: $dd
    call c, $dd5d                                 ; $4aa9: $dc $5d $dd
    db $ec                                        ; $4aac: $ec
    ld e, l                                       ; $4aad: $5d
    db $dd                                        ; $4aae: $dd
    ld e, [hl]                                    ; $4aaf: $5e
    ld e, [hl]                                    ; $4ab0: $5e
    db $dd                                        ; $4ab1: $dd
    ld l, [hl]                                    ; $4ab2: $6e
    ld e, [hl]                                    ; $4ab3: $5e
    db $dd                                        ; $4ab4: $dd
    rst $10                                       ; $4ab5: $d7
    ld e, [hl]                                    ; $4ab6: $5e
    db $dd                                        ; $4ab7: $dd
    rst $20                                       ; $4ab8: $e7
    ld e, [hl]                                    ; $4ab9: $5e
    db $dd                                        ; $4aba: $dd
    ld e, b                                       ; $4abb: $58
    ld e, a                                       ; $4abc: $5f
    db $dd                                        ; $4abd: $dd
    ld l, b                                       ; $4abe: $68
    ld e, a                                       ; $4abf: $5f
    db $dd                                        ; $4ac0: $dd
    reti                                          ; $4ac1: $d9


    ld e, a                                       ; $4ac2: $5f
    db $dd                                        ; $4ac3: $dd
    jp hl                                         ; $4ac4: $e9


    ld e, a                                       ; $4ac5: $5f
    db $dd                                        ; $4ac6: $dd
    ld d, d                                       ; $4ac7: $52
    ld h, b                                       ; $4ac8: $60
    db $dd                                        ; $4ac9: $dd
    ld h, d                                       ; $4aca: $62
    ld h, b                                       ; $4acb: $60
    db $dd                                        ; $4acc: $dd
    pop de                                        ; $4acd: $d1
    ld h, b                                       ; $4ace: $60
    db $dd                                        ; $4acf: $dd
    pop hl                                        ; $4ad0: $e1
    ld h, b                                       ; $4ad1: $60
    db $dd                                        ; $4ad2: $dd
    inc a                                         ; $4ad3: $3c
    ld h, c                                       ; $4ad4: $61
    db $dd                                        ; $4ad5: $dd
    ld d, b                                       ; $4ad6: $50
    ld h, c                                       ; $4ad7: $61
    db $dd                                        ; $4ad8: $dd
    or h                                          ; $4ad9: $b4
    ld h, c                                       ; $4ada: $61
    db $dd                                        ; $4adb: $dd
    ret z                                         ; $4adc: $c8

    ld h, c                                       ; $4add: $61
    db $dd                                        ; $4ade: $dd
    inc hl                                        ; $4adf: $23
    ld h, d                                       ; $4ae0: $62
    db $dd                                        ; $4ae1: $dd
    scf                                           ; $4ae2: $37
    ld h, d                                       ; $4ae3: $62
    db $dd                                        ; $4ae4: $dd
    sbc b                                         ; $4ae5: $98
    ld h, d                                       ; $4ae6: $62
    db $dd                                        ; $4ae7: $dd
    xor h                                         ; $4ae8: $ac
    ld h, d                                       ; $4ae9: $62
    db $dd                                        ; $4aea: $dd
    ld de, $dd63                                  ; $4aeb: $11 $63 $dd
    dec h                                         ; $4aee: $25
    ld h, e                                       ; $4aef: $63
    db $dd                                        ; $4af0: $dd
    add d                                         ; $4af1: $82
    ld h, e                                       ; $4af2: $63
    db $dd                                        ; $4af3: $dd
    sub [hl]                                      ; $4af4: $96

Jump_008_4af5:
    ld h, e                                       ; $4af5: $63
    db $dd                                        ; $4af6: $dd
    ld hl, sp+$63                                 ; $4af7: $f8 $63
    db $dd                                        ; $4af9: $dd
    inc c                                         ; $4afa: $0c
    ld h, h                                       ; $4afb: $64
    db $dd                                        ; $4afc: $dd
    ld a, [hl]                                    ; $4afd: $7e
    ld h, h                                       ; $4afe: $64
    db $dd                                        ; $4aff: $dd
    sbc c                                         ; $4b00: $99
    ld h, h                                       ; $4b01: $64
    db $dd                                        ; $4b02: $dd
    rlca                                          ; $4b03: $07
    ld h, l                                       ; $4b04: $65
    db $dd                                        ; $4b05: $dd
    ld [hl+], a                                   ; $4b06: $22
    ld h, l                                       ; $4b07: $65
    db $dd                                        ; $4b08: $dd
    adc l                                         ; $4b09: $8d

Jump_008_4b0a:
    ld h, l                                       ; $4b0a: $65
    db $dd                                        ; $4b0b: $dd
    and h                                         ; $4b0c: $a4
    ld h, l                                       ; $4b0d: $65
    db $dd                                        ; $4b0e: $dd
    db $10                                        ; $4b0f: $10
    ld h, [hl]                                    ; $4b10: $66
    db $dd                                        ; $4b11: $dd
    dec hl                                        ; $4b12: $2b
    ld h, [hl]                                    ; $4b13: $66
    db $dd                                        ; $4b14: $dd
    sub e                                         ; $4b15: $93
    ld h, [hl]                                    ; $4b16: $66
    db $dd                                        ; $4b17: $dd
    xor [hl]                                      ; $4b18: $ae
    ld h, [hl]                                    ; $4b19: $66
    db $dd                                        ; $4b1a: $dd
    dec de                                        ; $4b1b: $1b
    ld h, a                                       ; $4b1c: $67
    db $dd                                        ; $4b1d: $dd
    ld [hl-], a                                   ; $4b1e: $32
    ld h, a                                       ; $4b1f: $67
    db $dd                                        ; $4b20: $dd
    sbc a                                         ; $4b21: $9f
    ld h, a                                       ; $4b22: $67
    db $dd                                        ; $4b23: $dd
    cp d                                          ; $4b24: $ba
    ld h, a                                       ; $4b25: $67
    db $dd                                        ; $4b26: $dd
    cpl                                           ; $4b27: $2f
    ld l, b                                       ; $4b28: $68
    db $dd                                        ; $4b29: $dd
    ld b, h                                       ; $4b2a: $44
    ld l, b                                       ; $4b2b: $68

Call_008_4b2c:
    db $dd                                        ; $4b2c: $dd
    or [hl]                                       ; $4b2d: $b6
    ld l, b                                       ; $4b2e: $68
    db $dd                                        ; $4b2f: $dd
    bit 5, b                                      ; $4b30: $cb $68
    db $dd                                        ; $4b32: $dd
    inc [hl]                                      ; $4b33: $34
    ld l, c                                       ; $4b34: $69
    db $dd                                        ; $4b35: $dd
    ld c, c                                       ; $4b36: $49
    ld l, c                                       ; $4b37: $69
    db $dd                                        ; $4b38: $dd
    cp d                                          ; $4b39: $ba
    ld l, c                                       ; $4b3a: $69
    db $dd                                        ; $4b3b: $dd
    rst $08                                       ; $4b3c: $cf
    ld l, c                                       ; $4b3d: $69
    db $dd                                        ; $4b3e: $dd
    ld b, b                                       ; $4b3f: $40
    ld l, d                                       ; $4b40: $6a
    db $dd                                        ; $4b41: $dd
    ld d, l                                       ; $4b42: $55
    ld l, d                                       ; $4b43: $6a
    db $dd                                        ; $4b44: $dd
    cp [hl]                                       ; $4b45: $be
    ld l, d                                       ; $4b46: $6a
    db $dd                                        ; $4b47: $dd
    db $d3                                        ; $4b48: $d3
    ld l, d                                       ; $4b49: $6a
    db $dd                                        ; $4b4a: $dd
    ld b, d                                       ; $4b4b: $42
    ld l, e                                       ; $4b4c: $6b
    db $dd                                        ; $4b4d: $dd
    ld d, a                                       ; $4b4e: $57
    ld l, e                                       ; $4b4f: $6b
    db $dd                                        ; $4b50: $dd
    or d                                          ; $4b51: $b2
    ld l, e                                       ; $4b52: $6b
    db $dd                                        ; $4b53: $dd
    bit 5, e                                      ; $4b54: $cb $6b
    db $dd                                        ; $4b56: $dd
    cpl                                           ; $4b57: $2f
    ld l, h                                       ; $4b58: $6c
    db $dd                                        ; $4b59: $dd
    ld c, b                                       ; $4b5a: $48
    ld l, h                                       ; $4b5b: $6c
    db $dd                                        ; $4b5c: $dd
    and e                                         ; $4b5d: $a3
    ld l, h                                       ; $4b5e: $6c
    db $dd                                        ; $4b5f: $dd
    cp h                                          ; $4b60: $bc
    ld l, h                                       ; $4b61: $6c
    db $dd                                        ; $4b62: $dd
    dec e                                         ; $4b63: $1d
    ld l, l                                       ; $4b64: $6d
    db $dd                                        ; $4b65: $dd
    ld [hl], $6d                                  ; $4b66: $36 $6d
    db $dd                                        ; $4b68: $dd
    sbc e                                         ; $4b69: $9b
    ld l, l                                       ; $4b6a: $6d
    db $dd                                        ; $4b6b: $dd
    or h                                          ; $4b6c: $b4
    ld l, l                                       ; $4b6d: $6d
    db $dd                                        ; $4b6e: $dd
    ld de, $dd6e                                  ; $4b6f: $11 $6e $dd
    ld a, [hl+]                                   ; $4b72: $2a
    ld l, [hl]                                    ; $4b73: $6e
    db $dd                                        ; $4b74: $dd
    adc h                                         ; $4b75: $8c
    ld l, [hl]                                    ; $4b76: $6e
    db $dd                                        ; $4b77: $dd
    and l                                         ; $4b78: $a5
    ld l, [hl]                                    ; $4b79: $6e
    db $dd                                        ; $4b7a: $dd
    rla                                           ; $4b7b: $17
    ld l, a                                       ; $4b7c: $6f
    db $dd                                        ; $4b7d: $dd
    dec [hl]                                      ; $4b7e: $35
    ld l, a                                       ; $4b7f: $6f
    db $dd                                        ; $4b80: $dd
    and h                                         ; $4b81: $a4
    ld l, a                                       ; $4b82: $6f
    db $dd                                        ; $4b83: $dd
    jp nz, $dd6f                                  ; $4b84: $c2 $6f $dd

    dec hl                                        ; $4b87: $2b
    ld [hl], b                                    ; $4b88: $70
    db $dd                                        ; $4b89: $dd
    ld b, a                                       ; $4b8a: $47
    ld [hl], b                                    ; $4b8b: $70
    db $dd                                        ; $4b8c: $dd
    or c                                          ; $4b8d: $b1
    ld [hl], b                                    ; $4b8e: $70
    db $dd                                        ; $4b8f: $dd
    rst $08                                       ; $4b90: $cf
    ld [hl], b                                    ; $4b91: $70
    db $dd                                        ; $4b92: $dd
    ld a, [hl-]                                   ; $4b93: $3a
    ld [hl], c                                    ; $4b94: $71
    db $dd                                        ; $4b95: $dd
    ld e, b                                       ; $4b96: $58
    ld [hl], c                                    ; $4b97: $71
    db $dd                                        ; $4b98: $dd

Call_008_4b99:
    ret nz                                        ; $4b99: $c0

    ld [hl], c                                    ; $4b9a: $71
    db $dd                                        ; $4b9b: $dd
    call c, $dd71                                 ; $4b9c: $dc $71 $dd
    ld b, d                                       ; $4b9f: $42
    ld [hl], d                                    ; $4ba0: $72
    db $dd                                        ; $4ba1: $dd
    ld h, b                                       ; $4ba2: $60
    ld [hl], d                                    ; $4ba3: $72

Jump_008_4ba4:
    db $dd                                        ; $4ba4: $dd
    sub $72                                       ; $4ba5: $d6 $72
    db $dd                                        ; $4ba7: $dd
    push af                                       ; $4ba8: $f5
    ld [hl], d                                    ; $4ba9: $72
    db $dd                                        ; $4baa: $dd
    ld h, e                                       ; $4bab: $63
    ld [hl], e                                    ; $4bac: $73
    db $dd                                        ; $4bad: $dd
    add d                                         ; $4bae: $82
    ld [hl], e                                    ; $4baf: $73
    db $dd                                        ; $4bb0: $dd
    pop af                                        ; $4bb1: $f1
    ld [hl], e                                    ; $4bb2: $73
    db $dd                                        ; $4bb3: $dd
    ld de, $dd74                                  ; $4bb4: $11 $74 $dd
    add [hl]                                      ; $4bb7: $86
    ld [hl], h                                    ; $4bb8: $74
    db $dd                                        ; $4bb9: $dd
    and e                                         ; $4bba: $a3
    ld [hl], h                                    ; $4bbb: $74
    db $dd                                        ; $4bbc: $dd
    ld d, $75                                     ; $4bbd: $16 $75
    db $dd                                        ; $4bbf: $dd
    dec [hl]                                      ; $4bc0: $35
    ld [hl], l                                    ; $4bc1: $75
    db $dd                                        ; $4bc2: $dd
    and l                                         ; $4bc3: $a5
    ld [hl], l                                    ; $4bc4: $75
    db $dd                                        ; $4bc5: $dd
    push bc                                       ; $4bc6: $c5
    ld [hl], l                                    ; $4bc7: $75
    db $dd                                        ; $4bc8: $dd
    ld a, [hl-]                                   ; $4bc9: $3a
    halt                                          ; $4bca: $76
    db $dd                                        ; $4bcb: $dd
    ld d, a                                       ; $4bcc: $57
    halt                                          ; $4bcd: $76
    db $dd                                        ; $4bce: $dd
    xor [hl]                                      ; $4bcf: $ae
    halt                                          ; $4bd0: $76
    db $dd                                        ; $4bd1: $dd
    rst $08                                       ; $4bd2: $cf
    halt                                          ; $4bd3: $76
    db $dd                                        ; $4bd4: $dd
    dec l                                         ; $4bd5: $2d
    ld [hl], a                                    ; $4bd6: $77
    db $dd                                        ; $4bd7: $dd
    ld c, [hl]                                    ; $4bd8: $4e
    ld [hl], a                                    ; $4bd9: $77
    db $dd                                        ; $4bda: $dd
    and [hl]                                      ; $4bdb: $a6
    ld [hl], a                                    ; $4bdc: $77
    db $dd                                        ; $4bdd: $dd
    ret z                                         ; $4bde: $c8

    ld [hl], a                                    ; $4bdf: $77
    db $dd                                        ; $4be0: $dd
    inc h                                         ; $4be1: $24
    ld a, b                                       ; $4be2: $78
    db $dd                                        ; $4be3: $dd
    ld b, l                                       ; $4be4: $45
    ld a, b                                       ; $4be5: $78
    db $dd                                        ; $4be6: $dd
    and e                                         ; $4be7: $a3
    ld a, b                                       ; $4be8: $78
    db $dd                                        ; $4be9: $dd
    call nz, $dd78                                ; $4bea: $c4 $78 $dd
    inc e                                         ; $4bed: $1c
    ld a, c                                       ; $4bee: $79
    db $dd                                        ; $4bef: $dd
    ld a, $79                                     ; $4bf0: $3e $79
    db $dd                                        ; $4bf2: $dd
    sbc [hl]                                      ; $4bf3: $9e
    ld a, c                                       ; $4bf4: $79
    db $dd                                        ; $4bf5: $dd
    cp a                                          ; $4bf6: $bf
    ld a, c                                       ; $4bf7: $79
    db $dd                                        ; $4bf8: $dd
    rla                                           ; $4bf9: $17
    ld a, d                                       ; $4bfa: $7a
    db $dd                                        ; $4bfb: $dd
    jr c, jr_008_4c78                             ; $4bfc: $38 $7a

    db $dd                                        ; $4bfe: $dd
    sbc c                                         ; $4bff: $99
    ld a, d                                       ; $4c00: $7a
    db $dd                                        ; $4c01: $dd
    cp d                                          ; $4c02: $ba
    ld a, d                                       ; $4c03: $7a
    db $dd                                        ; $4c04: $dd
    ld e, $7b                                     ; $4c05: $1e $7b
    db $dd                                        ; $4c07: $dd
    dec a                                         ; $4c08: $3d
    ld a, e                                       ; $4c09: $7b
    db $dd                                        ; $4c0a: $dd
    and c                                         ; $4c0b: $a1
    ld a, e                                       ; $4c0c: $7b
    db $dd                                        ; $4c0d: $dd
    cp a                                          ; $4c0e: $bf
    ld a, e                                       ; $4c0f: $7b
    db $dd                                        ; $4c10: $dd
    ld [hl+], a                                   ; $4c11: $22
    ld a, h                                       ; $4c12: $7c
    db $dd                                        ; $4c13: $dd
    ld b, b                                       ; $4c14: $40
    ld a, h                                       ; $4c15: $7c
    db $dd                                        ; $4c16: $dd
    and c                                         ; $4c17: $a1

Call_008_4c18:
    ld a, h                                       ; $4c18: $7c
    db $dd                                        ; $4c19: $dd
    cp a                                          ; $4c1a: $bf
    ld a, h                                       ; $4c1b: $7c
    db $dd                                        ; $4c1c: $dd
    inc hl                                        ; $4c1d: $23

Jump_008_4c1e:
    ld a, l                                       ; $4c1e: $7d
    db $dd                                        ; $4c1f: $dd
    ld b, c                                       ; $4c20: $41
    ld a, l                                       ; $4c21: $7d
    db $dd                                        ; $4c22: $dd
    xor l                                         ; $4c23: $ad
    ld a, l                                       ; $4c24: $7d
    db $dd                                        ; $4c25: $dd
    bit 7, l                                      ; $4c26: $cb $7d
    db $dd                                        ; $4c28: $dd
    ld b, a                                       ; $4c29: $47
    ld a, [hl]                                    ; $4c2a: $7e
    db $dd                                        ; $4c2b: $dd
    ld [hl], a                                    ; $4c2c: $77
    ld a, [hl]                                    ; $4c2d: $7e
    db $dd                                        ; $4c2e: $dd
    di                                            ; $4c2f: $f3
    ld a, [hl]                                    ; $4c30: $7e
    db $dd                                        ; $4c31: $dd
    inc hl                                        ; $4c32: $23
    ld a, a                                       ; $4c33: $7f

Jump_008_4c34:
    db $dd                                        ; $4c34: $dd
    sbc l                                         ; $4c35: $9d
    ld a, a                                       ; $4c36: $7f
    sbc $01                                       ; $4c37: $de $01
    ld b, b                                       ; $4c39: $40
    db $dd                                        ; $4c3a: $dd
    ret                                           ; $4c3b: $c9


    ld a, a                                       ; $4c3c: $7f
    sbc $58                                       ; $4c3d: $de $58
    ld b, b                                       ; $4c3f: $40
    sbc $ba                                       ; $4c40: $de $ba
    ld b, b                                       ; $4c42: $40
    sbc $da                                       ; $4c43: $de $da
    ld b, b                                       ; $4c45: $40
    sbc $49                                       ; $4c46: $de $49
    ld b, c                                       ; $4c48: $41
    sbc $b8                                       ; $4c49: $de $b8
    ld b, c                                       ; $4c4b: $41
    sbc $23                                       ; $4c4c: $de $23
    ld b, d                                       ; $4c4e: $42
    sbc $92                                       ; $4c4f: $de $92
    ld b, d                                       ; $4c51: $42
    sbc $ff                                       ; $4c52: $de $ff
    ld b, d                                       ; $4c54: $42
    sbc $68                                       ; $4c55: $de $68
    ld b, e                                       ; $4c57: $43
    sbc $d7                                       ; $4c58: $de $d7
    ld b, e                                       ; $4c5a: $43
    sbc $46                                       ; $4c5b: $de $46
    ld b, h                                       ; $4c5d: $44
    sbc $b3                                       ; $4c5e: $de $b3
    ld b, h                                       ; $4c60: $44
    sbc $1e                                       ; $4c61: $de $1e
    ld b, l                                       ; $4c63: $45
    sbc $8b                                       ; $4c64: $de $8b
    ld b, l                                       ; $4c66: $45
    sbc $f8                                       ; $4c67: $de $f8
    ld b, l                                       ; $4c69: $45
    sbc $61                                       ; $4c6a: $de $61
    ld b, [hl]                                    ; $4c6c: $46
    sbc $ce                                       ; $4c6d: $de $ce
    ld b, [hl]                                    ; $4c6f: $46
    sbc $2d                                       ; $4c70: $de $2d
    ld b, a                                       ; $4c72: $47
    sbc $88                                       ; $4c73: $de $88
    ld b, a                                       ; $4c75: $47
    sbc $e1                                       ; $4c76: $de $e1

jr_008_4c78:
    ld b, a                                       ; $4c78: $47
    sbc $3e                                       ; $4c79: $de $3e
    ld c, b                                       ; $4c7b: $48
    sbc $9b                                       ; $4c7c: $de $9b
    ld c, b                                       ; $4c7e: $48
    sbc $f6                                       ; $4c7f: $de $f6
    ld c, b                                       ; $4c81: $48
    sbc $55                                       ; $4c82: $de $55
    ld c, c                                       ; $4c84: $49
    sbc $c0                                       ; $4c85: $de $c0
    ld c, c                                       ; $4c87: $49

Call_008_4c88:
    sbc $dc                                       ; $4c88: $de $dc
    ld c, c                                       ; $4c8a: $49
    sbc $48                                       ; $4c8b: $de $48
    ld c, d                                       ; $4c8d: $4a
    sbc $65                                       ; $4c8e: $de $65
    ld c, d                                       ; $4c90: $4a
    sbc $cc                                       ; $4c91: $de $cc
    ld c, d                                       ; $4c93: $4a
    sbc $e8                                       ; $4c94: $de $e8
    ld c, d                                       ; $4c96: $4a

Jump_008_4c97:
    sbc $4f                                       ; $4c97: $de $4f
    ld c, e                                       ; $4c99: $4b
    sbc $6b                                       ; $4c9a: $de $6b
    ld c, e                                       ; $4c9c: $4b
    sbc $d4                                       ; $4c9d: $de $d4
    ld c, e                                       ; $4c9f: $4b
    sbc $f1                                       ; $4ca0: $de $f1
    ld c, e                                       ; $4ca2: $4b
    sbc $5a                                       ; $4ca3: $de $5a
    ld c, h                                       ; $4ca5: $4c
    sbc $76                                       ; $4ca6: $de $76
    ld c, h                                       ; $4ca8: $4c
    sbc $de                                       ; $4ca9: $de $de
    ld c, h                                       ; $4cab: $4c

Jump_008_4cac:
    sbc $fa                                       ; $4cac: $de $fa
    ld c, h                                       ; $4cae: $4c
    sbc $71                                       ; $4caf: $de $71
    ld c, l                                       ; $4cb1: $4d
    sbc $8b                                       ; $4cb2: $de $8b
    ld c, l                                       ; $4cb4: $4d
    sbc $ff                                       ; $4cb5: $de $ff
    ld c, l                                       ; $4cb7: $4d
    sbc $23                                       ; $4cb8: $de $23
    ld c, [hl]                                    ; $4cba: $4e
    sbc $92                                       ; $4cbb: $de $92
    ld c, [hl]                                    ; $4cbd: $4e
    sbc $b6                                       ; $4cbe: $de $b6
    ld c, [hl]                                    ; $4cc0: $4e
    sbc $29                                       ; $4cc1: $de $29
    ld c, a                                       ; $4cc3: $4f
    sbc $43                                       ; $4cc4: $de $43
    ld c, a                                       ; $4cc6: $4f
    sbc $b9                                       ; $4cc7: $de $b9
    ld c, a                                       ; $4cc9: $4f
    sbc $dd                                       ; $4cca: $de $dd
    ld c, a                                       ; $4ccc: $4f
    sbc $4e                                       ; $4ccd: $de $4e
    ld d, b                                       ; $4ccf: $50
    sbc $72                                       ; $4cd0: $de $72
    ld d, b                                       ; $4cd2: $50
    sbc $e6                                       ; $4cd3: $de $e6
    ld d, b                                       ; $4cd5: $50
    sbc $00                                       ; $4cd6: $de $00
    ld d, c                                       ; $4cd8: $51
    sbc $5d                                       ; $4cd9: $de $5d
    ld d, c                                       ; $4cdb: $51
    sbc $77                                       ; $4cdc: $de $77
    ld d, c                                       ; $4cde: $51
    sbc $d7                                       ; $4cdf: $de $d7
    ld d, c                                       ; $4ce1: $51
    sbc $f3                                       ; $4ce2: $de $f3
    ld d, c                                       ; $4ce4: $51
    sbc $4a                                       ; $4ce5: $de $4a
    ld d, d                                       ; $4ce7: $52
    sbc $66                                       ; $4ce8: $de $66
    ld d, d                                       ; $4cea: $52
    sbc $c3                                       ; $4ceb: $de $c3
    ld d, d                                       ; $4ced: $52
    sbc $dd                                       ; $4cee: $de $dd
    ld d, d                                       ; $4cf0: $52
    sbc $3f                                       ; $4cf1: $de $3f
    ld d, e                                       ; $4cf3: $53
    sbc $5d                                       ; $4cf4: $de $5d
    ld d, e                                       ; $4cf6: $53
    sbc $b6                                       ; $4cf7: $de $b6
    ld d, e                                       ; $4cf9: $53
    sbc $d4                                       ; $4cfa: $de $d4
    ld d, e                                       ; $4cfc: $53
    sbc $2c                                       ; $4cfd: $de $2c
    ld d, h                                       ; $4cff: $54
    sbc $46                                       ; $4d00: $de $46
    ld d, h                                       ; $4d02: $54
    sbc $ae                                       ; $4d03: $de $ae
    ld d, h                                       ; $4d05: $54
    sbc $cc                                       ; $4d06: $de $cc

Call_008_4d08:
    ld d, h                                       ; $4d08: $54
    sbc $32                                       ; $4d09: $de $32
    ld d, l                                       ; $4d0b: $55
    sbc $54                                       ; $4d0c: $de $54

Jump_008_4d0e:
    ld d, l                                       ; $4d0e: $55
    sbc $bf                                       ; $4d0f: $de $bf
    ld d, l                                       ; $4d11: $55
    sbc $e1                                       ; $4d12: $de $e1
    ld d, l                                       ; $4d14: $55
    sbc $4c                                       ; $4d15: $de $4c
    ld d, [hl]                                    ; $4d17: $56
    sbc $6c                                       ; $4d18: $de $6c
    ld d, [hl]                                    ; $4d1a: $56
    sbc $e3                                       ; $4d1b: $de $e3
    ld d, [hl]                                    ; $4d1d: $56
    sbc $ff                                       ; $4d1e: $de $ff
    ld d, [hl]                                    ; $4d20: $56
    sbc $75                                       ; $4d21: $de $75
    ld d, a                                       ; $4d23: $57
    sbc $87                                       ; $4d24: $de $87
    ld d, a                                       ; $4d26: $57

Jump_008_4d27:
    sbc $fa                                       ; $4d27: $de $fa
    ld d, a                                       ; $4d29: $57
    sbc $0c                                       ; $4d2a: $de $0c
    ld e, b                                       ; $4d2c: $58
    sbc $80                                       ; $4d2d: $de $80
    ld e, b                                       ; $4d2f: $58
    sbc $94                                       ; $4d30: $de $94
    ld e, b                                       ; $4d32: $58
    sbc $09                                       ; $4d33: $de $09
    ld e, c                                       ; $4d35: $59
    sbc $1d                                       ; $4d36: $de $1d
    ld e, c                                       ; $4d38: $59
    sbc $8f                                       ; $4d39: $de $8f
    ld e, c                                       ; $4d3b: $59
    sbc $a3                                       ; $4d3c: $de $a3
    ld e, c                                       ; $4d3e: $59
    sbc $11                                       ; $4d3f: $de $11
    ld e, d                                       ; $4d41: $5a
    sbc $25                                       ; $4d42: $de $25
    ld e, d                                       ; $4d44: $5a
    sbc $8c                                       ; $4d45: $de $8c
    ld e, d                                       ; $4d47: $5a
    sbc $a0                                       ; $4d48: $de $a0
    ld e, d                                       ; $4d4a: $5a
    sbc $05                                       ; $4d4b: $de $05
    ld e, e                                       ; $4d4d: $5b
    sbc $19                                       ; $4d4e: $de $19
    ld e, e                                       ; $4d50: $5b
    sbc $80                                       ; $4d51: $de $80
    ld e, e                                       ; $4d53: $5b
    sbc $94                                       ; $4d54: $de $94
    ld e, e                                       ; $4d56: $5b
    sbc $fc                                       ; $4d57: $de $fc
    ld e, e                                       ; $4d59: $5b
    sbc $10                                       ; $4d5a: $de $10
    ld e, h                                       ; $4d5c: $5c
    sbc $86                                       ; $4d5d: $de $86
    ld e, h                                       ; $4d5f: $5c
    sbc $9a                                       ; $4d60: $de $9a
    ld e, h                                       ; $4d62: $5c
    sbc $15                                       ; $4d63: $de $15
    ld e, l                                       ; $4d65: $5d
    sbc $2d                                       ; $4d66: $de $2d
    ld e, l                                       ; $4d68: $5d
    sbc $9a                                       ; $4d69: $de $9a
    ld e, l                                       ; $4d6b: $5d
    sbc $b4                                       ; $4d6c: $de $b4
    ld e, l                                       ; $4d6e: $5d
    sbc $0d                                       ; $4d6f: $de $0d
    ld e, [hl]                                    ; $4d71: $5e
    sbc $27                                       ; $4d72: $de $27

Call_008_4d74:
    ld e, [hl]                                    ; $4d74: $5e
    sbc $7b                                       ; $4d75: $de $7b
    ld e, [hl]                                    ; $4d77: $5e
    sbc $93                                       ; $4d78: $de $93
    ld e, [hl]                                    ; $4d7a: $5e
    sbc $f0                                       ; $4d7b: $de $f0
    ld e, [hl]                                    ; $4d7d: $5e
    sbc $0e                                       ; $4d7e: $de $0e
    ld e, a                                       ; $4d80: $5f
    sbc $67                                       ; $4d81: $de $67
    ld e, a                                       ; $4d83: $5f
    sbc $85                                       ; $4d84: $de $85
    ld e, a                                       ; $4d86: $5f
    sbc $e1                                       ; $4d87: $de $e1
    ld e, a                                       ; $4d89: $5f
    sbc $ff                                       ; $4d8a: $de $ff
    ld e, a                                       ; $4d8c: $5f
    sbc $68                                       ; $4d8d: $de $68
    ld h, b                                       ; $4d8f: $60
    sbc $86                                       ; $4d90: $de $86
    ld h, b                                       ; $4d92: $60
    sbc $f1                                       ; $4d93: $de $f1
    ld h, b                                       ; $4d95: $60
    sbc $0d                                       ; $4d96: $de $0d
    ld h, c                                       ; $4d98: $61
    sbc $77                                       ; $4d99: $de $77
    ld h, c                                       ; $4d9b: $61
    sbc $9b                                       ; $4d9c: $de $9b
    ld h, c                                       ; $4d9e: $61
    sbc $fe                                       ; $4d9f: $de $fe
    ld h, c                                       ; $4da1: $61
    sbc $20                                       ; $4da2: $de $20
    ld h, d                                       ; $4da4: $62
    sbc $77                                       ; $4da5: $de $77
    ld h, d                                       ; $4da7: $62
    sbc $9b                                       ; $4da8: $de $9b
    ld h, d                                       ; $4daa: $62
    sbc $e9                                       ; $4dab: $de $e9
    ld h, d                                       ; $4dad: $62
    sbc $0d                                       ; $4dae: $de $0d
    ld h, e                                       ; $4db0: $63
    sbc $5e                                       ; $4db1: $de $5e
    ld h, e                                       ; $4db3: $63
    sbc $82                                       ; $4db4: $de $82
    ld h, e                                       ; $4db6: $63
    sbc $d2                                       ; $4db7: $de $d2
    ld h, e                                       ; $4db9: $63
    sbc $f6                                       ; $4dba: $de $f6
    ld h, e                                       ; $4dbc: $63
    sbc $46                                       ; $4dbd: $de $46
    ld h, h                                       ; $4dbf: $64
    sbc $6a                                       ; $4dc0: $de $6a
    ld h, h                                       ; $4dc2: $64
    sbc $dd                                       ; $4dc3: $de $dd
    ld h, h                                       ; $4dc5: $64
    sbc $fa                                       ; $4dc6: $de $fa
    ld h, h                                       ; $4dc8: $64
    sbc $6e                                       ; $4dc9: $de $6e
    ld h, l                                       ; $4dcb: $65
    sbc $8b                                       ; $4dcc: $de $8b
    ld h, l                                       ; $4dce: $65
    sbc $f7                                       ; $4dcf: $de $f7
    ld h, l                                       ; $4dd1: $65
    sbc $14                                       ; $4dd2: $de $14
    ld h, [hl]                                    ; $4dd4: $66
    sbc $85                                       ; $4dd5: $de $85
    ld h, [hl]                                    ; $4dd7: $66
    sbc $a2                                       ; $4dd8: $de $a2
    ld h, [hl]                                    ; $4dda: $66
    sbc $13                                       ; $4ddb: $de $13
    ld h, a                                       ; $4ddd: $67
    sbc $30                                       ; $4dde: $de $30
    ld h, a                                       ; $4de0: $67
    sbc $9b                                       ; $4de1: $de $9b
    ld h, a                                       ; $4de3: $67
    sbc $b8                                       ; $4de4: $de $b8
    ld h, a                                       ; $4de6: $67
    sbc $28                                       ; $4de7: $de $28
    ld l, b                                       ; $4de9: $68
    sbc $45                                       ; $4dea: $de $45
    ld l, b                                       ; $4dec: $68
    sbc $c1                                       ; $4ded: $de $c1
    ld l, b                                       ; $4def: $68
    sbc $d8                                       ; $4df0: $de $d8
    ld l, b                                       ; $4df2: $68
    sbc $4e                                       ; $4df3: $de $4e
    ld l, c                                       ; $4df5: $69
    sbc $6f                                       ; $4df6: $de $6f
    ld l, c                                       ; $4df8: $69
    sbc $e4                                       ; $4df9: $de $e4
    ld l, c                                       ; $4dfb: $69
    sbc $05                                       ; $4dfc: $de $05
    ld l, d                                       ; $4dfe: $6a
    sbc $7a                                       ; $4dff: $de $7a
    ld l, d                                       ; $4e01: $6a
    sbc $91                                       ; $4e02: $de $91
    ld l, d                                       ; $4e04: $6a
    sbc $08                                       ; $4e05: $de $08
    ld l, e                                       ; $4e07: $6b
    sbc $29                                       ; $4e08: $de $29
    ld l, e                                       ; $4e0a: $6b
    sbc $9e                                       ; $4e0b: $de $9e
    ld l, e                                       ; $4e0d: $6b
    sbc $bf                                       ; $4e0e: $de $bf
    ld l, e                                       ; $4e10: $6b

Call_008_4e11:
Jump_008_4e11:
    sbc $35                                       ; $4e11: $de $35
    ld l, h                                       ; $4e13: $6c
    sbc $4c                                       ; $4e14: $de $4c
    ld l, h                                       ; $4e16: $6c
    sbc $a3                                       ; $4e17: $de $a3
    ld l, h                                       ; $4e19: $6c
    sbc $be                                       ; $4e1a: $de $be
    ld l, h                                       ; $4e1c: $6c
    sbc $28                                       ; $4e1d: $de $28
    ld l, l                                       ; $4e1f: $6d
    sbc $43                                       ; $4e20: $de $43
    ld l, l                                       ; $4e22: $6d
    sbc $a4                                       ; $4e23: $de $a4
    ld l, l                                       ; $4e25: $6d
    sbc $bf                                       ; $4e26: $de $bf
    ld l, l                                       ; $4e28: $6d
    sbc $0e                                       ; $4e29: $de $0e
    ld l, [hl]                                    ; $4e2b: $6e
    sbc $29                                       ; $4e2c: $de $29
    ld l, [hl]                                    ; $4e2e: $6e
    sbc $8c                                       ; $4e2f: $de $8c
    ld l, [hl]                                    ; $4e31: $6e

Jump_008_4e32:
    sbc $a7                                       ; $4e32: $de $a7
    ld l, [hl]                                    ; $4e34: $6e
    sbc $04                                       ; $4e35: $de $04
    ld l, a                                       ; $4e37: $6f
    sbc $1f                                       ; $4e38: $de $1f
    ld l, a                                       ; $4e3a: $6f
    sbc $76                                       ; $4e3b: $de $76
    ld l, a                                       ; $4e3d: $6f
    sbc $91                                       ; $4e3e: $de $91
    ld l, a                                       ; $4e40: $6f
    sbc $eb                                       ; $4e41: $de $eb
    ld l, a                                       ; $4e43: $6f
    sbc $06                                       ; $4e44: $de $06
    ld [hl], b                                    ; $4e46: $70
    sbc $6f                                       ; $4e47: $de $6f
    ld [hl], b                                    ; $4e49: $70
    sbc $8a                                       ; $4e4a: $de $8a
    ld [hl], b                                    ; $4e4c: $70
    sbc $f3                                       ; $4e4d: $de $f3
    ld [hl], b                                    ; $4e4f: $70
    sbc $0e                                       ; $4e50: $de $0e
    ld [hl], c                                    ; $4e52: $71
    sbc $6e                                       ; $4e53: $de $6e
    ld [hl], c                                    ; $4e55: $71
    sbc $87                                       ; $4e56: $de $87
    ld [hl], c                                    ; $4e58: $71
    sbc $f0                                       ; $4e59: $de $f0
    ld [hl], c                                    ; $4e5b: $71
    sbc $09                                       ; $4e5c: $de $09
    ld [hl], d                                    ; $4e5e: $72
    sbc $72                                       ; $4e5f: $de $72
    ld [hl], d                                    ; $4e61: $72
    sbc $8d                                       ; $4e62: $de $8d
    ld [hl], d                                    ; $4e64: $72
    sbc $eb                                       ; $4e65: $de $eb
    ld [hl], d                                    ; $4e67: $72
    sbc $06                                       ; $4e68: $de $06
    ld [hl], e                                    ; $4e6a: $73
    sbc $77                                       ; $4e6b: $de $77
    ld [hl], e                                    ; $4e6d: $73
    sbc $92                                       ; $4e6e: $de $92
    ld [hl], e                                    ; $4e70: $73
    sbc $08                                       ; $4e71: $de $08
    ld [hl], h                                    ; $4e73: $74
    sbc $29                                       ; $4e74: $de $29
    ld [hl], h                                    ; $4e76: $74
    sbc $9a                                       ; $4e77: $de $9a
    ld [hl], h                                    ; $4e79: $74
    sbc $bd                                       ; $4e7a: $de $bd
    ld [hl], h                                    ; $4e7c: $74
    sbc $30                                       ; $4e7d: $de $30
    ld [hl], l                                    ; $4e7f: $75
    sbc $4d                                       ; $4e80: $de $4d
    ld [hl], l                                    ; $4e82: $75
    sbc $ad                                       ; $4e83: $de $ad
    ld [hl], l                                    ; $4e85: $75
    sbc $cb                                       ; $4e86: $de $cb
    ld [hl], l                                    ; $4e88: $75
    sbc $19                                       ; $4e89: $de $19
    halt                                          ; $4e8b: $76
    sbc $35                                       ; $4e8c: $de $35
    halt                                          ; $4e8e: $76
    sbc $85                                       ; $4e8f: $de $85
    halt                                          ; $4e91: $76
    sbc $a1                                       ; $4e92: $de $a1
    halt                                          ; $4e94: $76
    sbc $ee                                       ; $4e95: $de $ee

Jump_008_4e97:
    halt                                          ; $4e97: $76
    sbc $07                                       ; $4e98: $de $07
    ld [hl], a                                    ; $4e9a: $77
    sbc $4b                                       ; $4e9b: $de $4b
    ld [hl], a                                    ; $4e9d: $77
    sbc $62                                       ; $4e9e: $de $62
    ld [hl], a                                    ; $4ea0: $77
    sbc $d1                                       ; $4ea1: $de $d1
    ld [hl], a                                    ; $4ea3: $77
    sbc $ec                                       ; $4ea4: $de $ec
    ld [hl], a                                    ; $4ea6: $77
    sbc $59                                       ; $4ea7: $de $59
    ld a, b                                       ; $4ea9: $78
    sbc $76                                       ; $4eaa: $de $76
    ld a, b                                       ; $4eac: $78
    sbc $e7                                       ; $4ead: $de $e7
    ld a, b                                       ; $4eaf: $78
    sbc $02                                       ; $4eb0: $de $02
    ld a, c                                       ; $4eb2: $79
    sbc $64                                       ; $4eb3: $de $64
    ld a, c                                       ; $4eb5: $79
    sbc $83                                       ; $4eb6: $de $83
    ld a, c                                       ; $4eb8: $79
    sbc $e8                                       ; $4eb9: $de $e8
    ld a, c                                       ; $4ebb: $79
    sbc $03                                       ; $4ebc: $de $03
    ld a, d                                       ; $4ebe: $7a

Jump_008_4ebf:
    sbc $76                                       ; $4ebf: $de $76
    ld a, d                                       ; $4ec1: $7a
    sbc $e9                                       ; $4ec2: $de $e9
    ld a, d                                       ; $4ec4: $7a
    sbc $58                                       ; $4ec5: $de $58
    ld a, e                                       ; $4ec7: $7b
    sbc $c9                                       ; $4ec8: $de $c9
    ld a, e                                       ; $4eca: $7b
    sbc $3a                                       ; $4ecb: $de $3a
    ld a, h                                       ; $4ecd: $7c
    sbc $a7                                       ; $4ece: $de $a7
    ld a, h                                       ; $4ed0: $7c
    sbc $18                                       ; $4ed1: $de $18
    ld a, l                                       ; $4ed3: $7d
    sbc $8b                                       ; $4ed4: $de $8b
    ld a, l                                       ; $4ed6: $7d
    sbc $fe                                       ; $4ed7: $de $fe
    ld a, l                                       ; $4ed9: $7d
    sbc $6d                                       ; $4eda: $de $6d
    ld a, [hl]                                    ; $4edc: $7e
    sbc $dc                                       ; $4edd: $de $dc
    ld a, [hl]                                    ; $4edf: $7e
    sbc $4d                                       ; $4ee0: $de $4d
    ld a, a                                       ; $4ee2: $7f
    rst $18                                       ; $4ee3: $df
    ld bc, $df40                                  ; $4ee4: $01 $40 $df
    ld [hl], b                                    ; $4ee7: $70
    ld b, b                                       ; $4ee8: $40
    rst $18                                       ; $4ee9: $df
    ret                                           ; $4eea: $c9


    ld b, b                                       ; $4eeb: $40
    rst $18                                       ; $4eec: $df
    ld [hl-], a                                   ; $4eed: $32
    ld b, c                                       ; $4eee: $41
    rst $18                                       ; $4eef: $df
    sub e                                         ; $4ef0: $93
    ld b, c                                       ; $4ef1: $41
    rst $18                                       ; $4ef2: $df
    db $e4                                        ; $4ef3: $e4
    ld b, c                                       ; $4ef4: $41
    rst $18                                       ; $4ef5: $df
    ld c, c                                       ; $4ef6: $49
    ld b, d                                       ; $4ef7: $42
    rst $18                                       ; $4ef8: $df
    xor d                                         ; $4ef9: $aa
    ld b, d                                       ; $4efa: $42
    rst $18                                       ; $4efb: $df
    dec b                                         ; $4efc: $05
    ld b, e                                       ; $4efd: $43
    sbc $ba                                       ; $4efe: $de $ba
    ld a, a                                       ; $4f00: $7f
    rst $18                                       ; $4f01: $df
    add d                                         ; $4f02: $82
    ld b, e                                       ; $4f03: $43
    sbc $d3                                       ; $4f04: $de $d3
    ld a, a                                       ; $4f06: $7f
    rst $18                                       ; $4f07: $df
    inc b                                         ; $4f08: $04
    ld b, h                                       ; $4f09: $44
    rst $18                                       ; $4f0a: $df
    sub [hl]                                      ; $4f0b: $96
    ld b, h                                       ; $4f0c: $44
    rst $18                                       ; $4f0d: $df
    xor e                                         ; $4f0e: $ab
    ld b, h                                       ; $4f0f: $44
    rst $18                                       ; $4f10: $df

Call_008_4f11:
    ld b, h                                       ; $4f11: $44
    ld b, l                                       ; $4f12: $45
    rst $18                                       ; $4f13: $df
    ld e, c                                       ; $4f14: $59
    ld b, l                                       ; $4f15: $45
    rst $18                                       ; $4f16: $df
    ldh a, [rLYC]                                 ; $4f17: $f0 $45
    rst $18                                       ; $4f19: $df
    dec b                                         ; $4f1a: $05
    ld b, [hl]                                    ; $4f1b: $46
    rst $18                                       ; $4f1c: $df
    sbc b                                         ; $4f1d: $98
    ld b, [hl]                                    ; $4f1e: $46

Jump_008_4f1f:
    rst $18                                       ; $4f1f: $df
    xor l                                         ; $4f20: $ad
    ld b, [hl]                                    ; $4f21: $46
    rst $18                                       ; $4f22: $df
    ld [hl], $47                                  ; $4f23: $36 $47
    rst $18                                       ; $4f25: $df
    ld c, e                                       ; $4f26: $4b
    ld b, a                                       ; $4f27: $47
    rst $18                                       ; $4f28: $df
    ret nc                                        ; $4f29: $d0

    ld b, a                                       ; $4f2a: $47
    rst $18                                       ; $4f2b: $df
    push hl                                       ; $4f2c: $e5
    ld b, a                                       ; $4f2d: $47
    rst $18                                       ; $4f2e: $df
    ld l, c                                       ; $4f2f: $69
    ld c, b                                       ; $4f30: $48
    rst $18                                       ; $4f31: $df
    ld a, [hl]                                    ; $4f32: $7e
    ld c, b                                       ; $4f33: $48
    rst $18                                       ; $4f34: $df
    nop                                           ; $4f35: $00
    ld c, c                                       ; $4f36: $49
    rst $18                                       ; $4f37: $df
    dec d                                         ; $4f38: $15
    ld c, c                                       ; $4f39: $49
    rst $18                                       ; $4f3a: $df
    adc e                                         ; $4f3b: $8b
    ld c, c                                       ; $4f3c: $49
    rst $18                                       ; $4f3d: $df

Jump_008_4f3e:
    and h                                         ; $4f3e: $a4
    ld c, c                                       ; $4f3f: $49
    rst $18                                       ; $4f40: $df
    rla                                           ; $4f41: $17
    ld c, d                                       ; $4f42: $4a
    rst $18                                       ; $4f43: $df
    jr nc, jr_008_4f90                            ; $4f44: $30 $4a

    rst $18                                       ; $4f46: $df
    and [hl]                                      ; $4f47: $a6
    ld c, d                                       ; $4f48: $4a
    rst $18                                       ; $4f49: $df
    cp a                                          ; $4f4a: $bf
    ld c, d                                       ; $4f4b: $4a
    rst $18                                       ; $4f4c: $df
    dec [hl]                                      ; $4f4d: $35
    ld c, e                                       ; $4f4e: $4b
    rst $18                                       ; $4f4f: $df
    ld c, d                                       ; $4f50: $4a
    ld c, e                                       ; $4f51: $4b
    rst $18                                       ; $4f52: $df
    rst $00                                       ; $4f53: $c7
    ld c, e                                       ; $4f54: $4b
    rst $18                                       ; $4f55: $df
    add sp, $4b                                   ; $4f56: $e8 $4b
    rst $18                                       ; $4f58: $df
    ld l, b                                       ; $4f59: $68
    ld c, h                                       ; $4f5a: $4c
    rst $18                                       ; $4f5b: $df
    adc c                                         ; $4f5c: $89
    ld c, h                                       ; $4f5d: $4c
    rst $18                                       ; $4f5e: $df
    dec e                                         ; $4f5f: $1d
    ld c, l                                       ; $4f60: $4d
    rst $18                                       ; $4f61: $df
    ld a, $4d                                     ; $4f62: $3e $4d
    rst $18                                       ; $4f64: $df
    rst $10                                       ; $4f65: $d7
    ld c, l                                       ; $4f66: $4d
    rst $18                                       ; $4f67: $df
    ld hl, sp+$4d                                 ; $4f68: $f8 $4d
    rst $18                                       ; $4f6a: $df
    sub c                                         ; $4f6b: $91
    ld c, [hl]                                    ; $4f6c: $4e
    rst $18                                       ; $4f6d: $df
    or d                                          ; $4f6e: $b2
    ld c, [hl]                                    ; $4f6f: $4e
    rst $18                                       ; $4f70: $df

Call_008_4f71:
    ld a, [hl+]                                   ; $4f71: $2a
    ld c, a                                       ; $4f72: $4f
    rst $18                                       ; $4f73: $df
    ld b, l                                       ; $4f74: $45
    ld c, a                                       ; $4f75: $4f
    rst $18                                       ; $4f76: $df
    ret z                                         ; $4f77: $c8

    ld c, a                                       ; $4f78: $4f
    rst $18                                       ; $4f79: $df
    rst $20                                       ; $4f7a: $e7
    ld c, a                                       ; $4f7b: $4f
    rst $18                                       ; $4f7c: $df
    add h                                         ; $4f7d: $84
    ld d, b                                       ; $4f7e: $50
    rst $18                                       ; $4f7f: $df
    and l                                         ; $4f80: $a5
    ld d, b                                       ; $4f81: $50
    rst $18                                       ; $4f82: $df
    ld b, e                                       ; $4f83: $43
    ld d, c                                       ; $4f84: $51
    rst $18                                       ; $4f85: $df
    ld h, h                                       ; $4f86: $64
    ld d, c                                       ; $4f87: $51
    rst $18                                       ; $4f88: $df
    ld [bc], a                                    ; $4f89: $02
    ld d, d                                       ; $4f8a: $52
    rst $18                                       ; $4f8b: $df
    inc hl                                        ; $4f8c: $23
    ld d, d                                       ; $4f8d: $52
    rst $18                                       ; $4f8e: $df
    and d                                         ; $4f8f: $a2

jr_008_4f90:
    ld d, d                                       ; $4f90: $52
    rst $18                                       ; $4f91: $df
    cp h                                          ; $4f92: $bc
    ld d, d                                       ; $4f93: $52
    rst $18                                       ; $4f94: $df
    ccf                                           ; $4f95: $3f
    ld d, e                                       ; $4f96: $53
    rst $18                                       ; $4f97: $df
    ld e, c                                       ; $4f98: $59
    ld d, e                                       ; $4f99: $53
    rst $18                                       ; $4f9a: $df
    di                                            ; $4f9b: $f3
    ld d, e                                       ; $4f9c: $53
    rst $18                                       ; $4f9d: $df
    dec d                                         ; $4f9e: $15

Jump_008_4f9f:
    ld d, h                                       ; $4f9f: $54
    rst $18                                       ; $4fa0: $df
    xor e                                         ; $4fa1: $ab
    ld d, h                                       ; $4fa2: $54
    rst $18                                       ; $4fa3: $df
    call $df54                                    ; $4fa4: $cd $54 $df
    ld h, d                                       ; $4fa7: $62
    ld d, l                                       ; $4fa8: $55
    rst $18                                       ; $4fa9: $df
    add h                                         ; $4faa: $84
    ld d, l                                       ; $4fab: $55
    rst $18                                       ; $4fac: $df
    rla                                           ; $4fad: $17
    ld d, [hl]                                    ; $4fae: $56
    rst $18                                       ; $4faf: $df
    add hl, sp                                    ; $4fb0: $39
    ld d, [hl]                                    ; $4fb1: $56
    rst $18                                       ; $4fb2: $df
    call z, $df56                                 ; $4fb3: $cc $56 $df
    xor $56                                       ; $4fb6: $ee $56
    rst $18                                       ; $4fb8: $df
    add e                                         ; $4fb9: $83
    ld d, a                                       ; $4fba: $57

Jump_008_4fbb:
    rst $18                                       ; $4fbb: $df
    and l                                         ; $4fbc: $a5
    ld d, a                                       ; $4fbd: $57
    rst $18                                       ; $4fbe: $df
    cpl                                           ; $4fbf: $2f
    ld e, b                                       ; $4fc0: $58
    rst $18                                       ; $4fc1: $df
    ld d, c                                       ; $4fc2: $51
    ld e, b                                       ; $4fc3: $58
    rst $18                                       ; $4fc4: $df
    db $d3                                        ; $4fc5: $d3
    ld e, b                                       ; $4fc6: $58
    rst $18                                       ; $4fc7: $df
    push af                                       ; $4fc8: $f5
    ld e, b                                       ; $4fc9: $58
    rst $18                                       ; $4fca: $df
    halt                                          ; $4fcb: $76
    ld e, c                                       ; $4fcc: $59
    rst $18                                       ; $4fcd: $df
    sbc b                                         ; $4fce: $98
    ld e, c                                       ; $4fcf: $59
    rst $18                                       ; $4fd0: $df
    ld a, [de]                                    ; $4fd1: $1a
    ld e, d                                       ; $4fd2: $5a
    rst $18                                       ; $4fd3: $df
    ld [hl], $5a                                  ; $4fd4: $36 $5a
    sbc $ec                                       ; $4fd6: $de $ec
    ld a, a                                       ; $4fd8: $7f
    rst $18                                       ; $4fd9: $df
    cp b                                          ; $4fda: $b8
    ld e, d                                       ; $4fdb: $5a
    rst $18                                       ; $4fdc: $df
    add hl, sp                                    ; $4fdd: $39
    ld e, e                                       ; $4fde: $5b
    rst $18                                       ; $4fdf: $df
    ld d, c                                       ; $4fe0: $51
    ld e, e                                       ; $4fe1: $5b
    rst $18                                       ; $4fe2: $df
    jp nc, $df5b                                  ; $4fe3: $d2 $5b $df

    db $ec                                        ; $4fe6: $ec
    ld e, e                                       ; $4fe7: $5b
    rst $18                                       ; $4fe8: $df
    ld l, h                                       ; $4fe9: $6c
    ld e, h                                       ; $4fea: $5c
    rst $18                                       ; $4feb: $df
    add h                                         ; $4fec: $84
    ld e, h                                       ; $4fed: $5c
    rst $18                                       ; $4fee: $df
    ld [bc], a                                    ; $4fef: $02
    ld e, l                                       ; $4ff0: $5d
    rst $18                                       ; $4ff1: $df
    ld e, $5d                                     ; $4ff2: $1e $5d
    rst $18                                       ; $4ff4: $df
    sub e                                         ; $4ff5: $93
    ld e, l                                       ; $4ff6: $5d
    rst $18                                       ; $4ff7: $df
    or b                                          ; $4ff8: $b0
    ld e, l                                       ; $4ff9: $5d
    rst $18                                       ; $4ffa: $df
    add hl, hl                                    ; $4ffb: $29
    ld e, [hl]                                    ; $4ffc: $5e
    rst $18                                       ; $4ffd: $df
    ld b, d                                       ; $4ffe: $42
    ld e, [hl]                                    ; $4fff: $5e
    rst $18                                       ; $5000: $df
    or b                                          ; $5001: $b0
    ld e, [hl]                                    ; $5002: $5e
    rst $18                                       ; $5003: $df
    ret z                                         ; $5004: $c8

    ld e, [hl]                                    ; $5005: $5e

Call_008_5006:
    rst $18                                       ; $5006: $df
    dec a                                         ; $5007: $3d
    ld e, a                                       ; $5008: $5f
    rst $18                                       ; $5009: $df
    ld e, c                                       ; $500a: $59
    ld e, a                                       ; $500b: $5f
    rst $18                                       ; $500c: $df
    ldh [$5f], a                                  ; $500d: $e0 $5f
    rst $18                                       ; $500f: $df
    or $5f                                        ; $5010: $f6 $5f
    rst $18                                       ; $5012: $df
    ld a, c                                       ; $5013: $79
    ld h, b                                       ; $5014: $60
    rst $18                                       ; $5015: $df
    adc a                                         ; $5016: $8f
    ld h, b                                       ; $5017: $60
    rst $18                                       ; $5018: $df
    inc h                                         ; $5019: $24
    ld h, c                                       ; $501a: $61
    rst $18                                       ; $501b: $df
    ld a, [hl-]                                   ; $501c: $3a
    ld h, c                                       ; $501d: $61
    rst $18                                       ; $501e: $df
    and l                                         ; $501f: $a5
    ld h, c                                       ; $5020: $61
    rst $18                                       ; $5021: $df
    ret nc                                        ; $5022: $d0

    ld h, c                                       ; $5023: $61

Jump_008_5024:
    rst $18                                       ; $5024: $df
    ld a, [hl-]                                   ; $5025: $3a
    ld h, d                                       ; $5026: $62
    rst $18                                       ; $5027: $df
    ld h, h                                       ; $5028: $64
    ld h, d                                       ; $5029: $62
    rst $18                                       ; $502a: $df
    db $d3                                        ; $502b: $d3
    ld h, d                                       ; $502c: $62
    rst $18                                       ; $502d: $df
    db $fd                                        ; $502e: $fd
    ld h, d                                       ; $502f: $62
    rst $18                                       ; $5030: $df
    ld h, h                                       ; $5031: $64
    ld h, e                                       ; $5032: $63
    rst $18                                       ; $5033: $df
    adc a                                         ; $5034: $8f
    ld h, e                                       ; $5035: $63
    rst $18                                       ; $5036: $df
    jp c, $df63                                   ; $5037: $da $63 $df

    cp $63                                        ; $503a: $fe $63
    rst $18                                       ; $503c: $df
    ld d, a                                       ; $503d: $57
    ld h, h                                       ; $503e: $64
    rst $18                                       ; $503f: $df
    add l                                         ; $5040: $85
    ld h, h                                       ; $5041: $64
    rst $18                                       ; $5042: $df
    db $e3                                        ; $5043: $e3
    ld h, h                                       ; $5044: $64
    rst $18                                       ; $5045: $df

Jump_008_5046:
    dec bc                                        ; $5046: $0b
    ld h, l                                       ; $5047: $65
    rst $18                                       ; $5048: $df
    ld a, b                                       ; $5049: $78
    ld h, l                                       ; $504a: $65
    rst $18                                       ; $504b: $df
    sbc l                                         ; $504c: $9d
    ld h, l                                       ; $504d: $65
    rst $18                                       ; $504e: $df
    db $fc                                        ; $504f: $fc
    ld h, l                                       ; $5050: $65
    rst $18                                       ; $5051: $df
    ld d, $66                                     ; $5052: $16 $66
    rst $18                                       ; $5054: $df
    add c                                         ; $5055: $81
    ld h, [hl]                                    ; $5056: $66
    rst $18                                       ; $5057: $df
    sub h                                         ; $5058: $94
    ld h, [hl]                                    ; $5059: $66
    rst $18                                       ; $505a: $df
    rst $20                                       ; $505b: $e7
    ld h, [hl]                                    ; $505c: $66
    rst $18                                       ; $505d: $df
    rst $38                                       ; $505e: $ff
    ld h, [hl]                                    ; $505f: $66
    rst $18                                       ; $5060: $df
    ld c, c                                       ; $5061: $49
    ld h, a                                       ; $5062: $67
    rst $18                                       ; $5063: $df
    ld h, c                                       ; $5064: $61
    ld h, a                                       ; $5065: $67

Call_008_5066:
    rst $18                                       ; $5066: $df
    xor h                                         ; $5067: $ac
    ld h, a                                       ; $5068: $67
    rst $18                                       ; $5069: $df
    jp nz, $df67                                  ; $506a: $c2 $67 $df

    dec h                                         ; $506d: $25
    ld l, b                                       ; $506e: $68
    rst $18                                       ; $506f: $df
    ccf                                           ; $5070: $3f
    ld l, b                                       ; $5071: $68
    rst $18                                       ; $5072: $df
    and a                                         ; $5073: $a7
    ld l, b                                       ; $5074: $68
    rst $18                                       ; $5075: $df
    pop bc                                        ; $5076: $c1
    ld l, b                                       ; $5077: $68
    rst $18                                       ; $5078: $df
    ld [hl+], a                                   ; $5079: $22
    ld l, c                                       ; $507a: $69
    rst $18                                       ; $507b: $df
    inc a                                         ; $507c: $3c
    ld l, c                                       ; $507d: $69
    rst $18                                       ; $507e: $df
    and h                                         ; $507f: $a4
    ld l, c                                       ; $5080: $69
    rst $18                                       ; $5081: $df
    cp [hl]                                       ; $5082: $be
    ld l, c                                       ; $5083: $69
    rst $18                                       ; $5084: $df
    daa                                           ; $5085: $27
    ld l, d                                       ; $5086: $6a
    rst $18                                       ; $5087: $df
    ld b, c                                       ; $5088: $41
    ld l, d                                       ; $5089: $6a
    rst $18                                       ; $508a: $df
    and a                                         ; $508b: $a7
    ld l, d                                       ; $508c: $6a
    rst $18                                       ; $508d: $df
    pop bc                                        ; $508e: $c1
    ld l, d                                       ; $508f: $6a
    rst $18                                       ; $5090: $df
    rra                                           ; $5091: $1f
    ld l, e                                       ; $5092: $6b

    db $df, $39, $6b, $df, $63, $6b, $df, $8a, $6b, $df, $ae, $6b, $df, $cc, $6b, $df
    db $f2, $6b, $df, $18, $6c, $df, $40, $6c

    rst $18                                       ; $50ab: $df
    ld h, h                                       ; $50ac: $64
    ld l, h                                       ; $50ad: $6c
    rst $18                                       ; $50ae: $df
    call nc, $df6c                                ; $50af: $d4 $6c $df
    ld c, c                                       ; $50b2: $49

Jump_008_50b3:
    ld l, l                                       ; $50b3: $6d
    rst $18                                       ; $50b4: $df
    or a                                          ; $50b5: $b7
    ld l, l                                       ; $50b6: $6d
    rst $18                                       ; $50b7: $df
    jr z, jr_008_5128                             ; $50b8: $28 $6e

    rst $18                                       ; $50ba: $df
    sbc b                                         ; $50bb: $98
    ld l, [hl]                                    ; $50bc: $6e
    rst $18                                       ; $50bd: $df
    add hl, bc                                    ; $50be: $09
    ld l, a                                       ; $50bf: $6f
    rst $18                                       ; $50c0: $df
    ld a, h                                       ; $50c1: $7c
    ld l, a                                       ; $50c2: $6f
    rst $18                                       ; $50c3: $df
    db $ed                                        ; $50c4: $ed
    ld l, a                                       ; $50c5: $6f
    rst $18                                       ; $50c6: $df
    ld e, [hl]                                    ; $50c7: $5e
    ld [hl], b                                    ; $50c8: $70
    rst $18                                       ; $50c9: $df
    pop de                                        ; $50ca: $d1
    ld [hl], b                                    ; $50cb: $70
    rst $18                                       ; $50cc: $df
    ld b, e                                       ; $50cd: $43
    ld [hl], c                                    ; $50ce: $71
    rst $18                                       ; $50cf: $df
    or h                                          ; $50d0: $b4
    ld [hl], c                                    ; $50d1: $71
    rst $18                                       ; $50d2: $df
    ld h, $72                                     ; $50d3: $26 $72
    rst $18                                       ; $50d5: $df
    sbc d                                         ; $50d6: $9a
    ld [hl], d                                    ; $50d7: $72
    rst $18                                       ; $50d8: $df
    ld c, $73                                     ; $50d9: $0e $73

    db $df, $82, $73, $df, $f1, $73, $df, $62, $74, $df, $cc, $74, $df, $2e, $75, $df
    db $90, $75, $df, $f1, $75, $df, $51, $76, $df, $b4, $76, $df, $17, $77, $df, $87
    db $77, $df, $03, $78, $df, $77, $78, $df, $f7, $78, $df, $78, $79, $df, $f9, $79
    db $df, $79, $7a, $df, $f9, $7a

    rst $18                                       ; $5111: $df
    ld a, d                                       ; $5112: $7a
    ld a, e                                       ; $5113: $7b
    rst $18                                       ; $5114: $df
    pop af                                        ; $5115: $f1
    ld a, e                                       ; $5116: $7b
    rst $18                                       ; $5117: $df
    ld l, b                                       ; $5118: $68
    ld a, h                                       ; $5119: $7c
    rst $18                                       ; $511a: $df
    jp c, $df7c                                   ; $511b: $da $7c $df

    inc bc                                        ; $511e: $03
    ld a, l                                       ; $511f: $7d
    rst $18                                       ; $5120: $df
    scf                                           ; $5121: $37
    ld a, l                                       ; $5122: $7d
    rst $18                                       ; $5123: $df
    ld h, b                                       ; $5124: $60
    ld a, l                                       ; $5125: $7d
    rst $18                                       ; $5126: $df
    add e                                         ; $5127: $83

jr_008_5128:
    ld a, l                                       ; $5128: $7d
    rst $18                                       ; $5129: $df
    and a                                         ; $512a: $a7
    ld a, l                                       ; $512b: $7d
    rst $18                                       ; $512c: $df
    rst $10                                       ; $512d: $d7
    ld a, l                                       ; $512e: $7d
    rst $18                                       ; $512f: $df
    dec b                                         ; $5130: $05
    ld a, [hl]                                    ; $5131: $7e
    rst $18                                       ; $5132: $df
    inc sp                                        ; $5133: $33
    ld a, [hl]                                    ; $5134: $7e
    rst $18                                       ; $5135: $df
    and [hl]                                      ; $5136: $a6
    ld a, [hl]                                    ; $5137: $7e
    rst $18                                       ; $5138: $df
    ld d, $7f                                     ; $5139: $16 $7f
    rst $18                                       ; $513b: $df
    add [hl]                                      ; $513c: $86
    ld a, a                                       ; $513d: $7f
    ldh [rSB], a                                  ; $513e: $e0 $01
    ld b, b                                       ; $5140: $40
    ldh [rBCPS], a                                ; $5141: $e0 $68
    ld b, b                                       ; $5143: $40
    ldh [$e8], a                                  ; $5144: $e0 $e8
    ld b, b                                       ; $5146: $40
    ldh [$6c], a                                  ; $5147: $e0 $6c
    ld b, c                                       ; $5149: $41
    ldh [$d7], a                                  ; $514a: $e0 $d7

Jump_008_514c:
    ld b, c                                       ; $514c: $41
    ldh [$f5], a                                  ; $514d: $e0 $f5
    ld b, c                                       ; $514f: $41
    ldh [$5e], a                                  ; $5150: $e0 $5e
    ld b, d                                       ; $5152: $42
    ldh [$80], a                                  ; $5153: $e0 $80
    ld b, d                                       ; $5155: $42
    db $dd                                        ; $5156: $dd
    rst $28                                       ; $5157: $ef
    ld a, a                                       ; $5158: $7f
    ldh [$e2], a                                  ; $5159: $e0 $e2
    ld b, d                                       ; $515b: $42
    rst $18                                       ; $515c: $df
    and $7f                                       ; $515d: $e6 $7f
    ldh [$4c], a                                  ; $515f: $e0 $4c
    ld b, e                                       ; $5161: $43
    ldh [$b3], a                                  ; $5162: $e0 $b3
    ld b, e                                       ; $5164: $43
    ldh [$c1], a                                  ; $5165: $e0 $c1
    ld b, e                                       ; $5167: $43
    ldh [rNR51], a                                ; $5168: $e0 $25
    ld b, h                                       ; $516a: $44

Call_008_516b:
    ldh [$35], a                                  ; $516b: $e0 $35

Jump_008_516d:
    ld b, h                                       ; $516d: $44
    ldh [$9a], a                                  ; $516e: $e0 $9a
    ld b, h                                       ; $5170: $44
    ldh [$aa], a                                  ; $5171: $e0 $aa
    ld b, h                                       ; $5173: $44
    ldh [$0d], a                                  ; $5174: $e0 $0d
    ld b, l                                       ; $5176: $45
    ldh [rNR31], a                                ; $5177: $e0 $1b
    ld b, l                                       ; $5179: $45
    ldh [rBCPD], a                                ; $517a: $e0 $69
    ld b, l                                       ; $517c: $45
    ldh [$7e], a                                  ; $517d: $e0 $7e
    ld b, l                                       ; $517f: $45
    ldh [$d5], a                                  ; $5180: $e0 $d5
    ld b, l                                       ; $5182: $45
    ldh [$ee], a                                  ; $5183: $e0 $ee
    ld b, l                                       ; $5185: $45
    ldh [rRP], a                                  ; $5186: $e0 $56
    ld b, [hl]                                    ; $5188: $46
    ldh [$71], a                                  ; $5189: $e0 $71
    ld b, [hl]                                    ; $518b: $46
    ldh [$ce], a                                  ; $518c: $e0 $ce
    ld b, [hl]                                    ; $518e: $46
    ldh [$ed], a                                  ; $518f: $e0 $ed
    ld b, [hl]                                    ; $5191: $46
    ldh [$3e], a                                  ; $5192: $e0 $3e
    ld b, a                                       ; $5194: $47
    ldh [$5f], a                                  ; $5195: $e0 $5f
    ld b, a                                       ; $5197: $47
    ldh [$bd], a                                  ; $5198: $e0 $bd
    ld b, a                                       ; $519a: $47
    ldh [$db], a                                  ; $519b: $e0 $db
    ld b, a                                       ; $519d: $47
    ldh [$3d], a                                  ; $519e: $e0 $3d
    ld c, b                                       ; $51a0: $48
    ldh [$57], a                                  ; $51a1: $e0 $57
    ld c, b                                       ; $51a3: $48
    ldh [$b3], a                                  ; $51a4: $e0 $b3
    ld c, b                                       ; $51a6: $48
    ldh [$cd], a                                  ; $51a7: $e0 $cd
    ld c, b                                       ; $51a9: $48
    ldh [$33], a                                  ; $51aa: $e0 $33
    ld c, c                                       ; $51ac: $49
    ldh [rVBK], a                                 ; $51ad: $e0 $4f
    ld c, c                                       ; $51af: $49
    ldh [$a7], a                                  ; $51b0: $e0 $a7
    ld c, c                                       ; $51b2: $49
    ldh [$be], a                                  ; $51b3: $e0 $be
    ld c, c                                       ; $51b5: $49
    ldh [rNR11], a                                ; $51b6: $e0 $11
    ld c, d                                       ; $51b8: $4a
    ldh [$2e], a                                  ; $51b9: $e0 $2e
    ld c, d                                       ; $51bb: $4a
    ldh [$93], a                                  ; $51bc: $e0 $93
    ld c, d                                       ; $51be: $4a
    ldh [$b0], a                                  ; $51bf: $e0 $b0
    ld c, d                                       ; $51c1: $4a
    ldh [$c1], a                                  ; $51c2: $e0 $c1
    ld c, d                                       ; $51c4: $4a
    ldh [$dd], a                                  ; $51c5: $e0 $dd
    ld c, d                                       ; $51c7: $4a
    ldh [$f9], a                                  ; $51c8: $e0 $f9
    ld c, d                                       ; $51ca: $4a
    ldh [rNR21], a                                ; $51cb: $e0 $16
    ld c, e                                       ; $51cd: $4b
    ldh [$2d], a                                  ; $51ce: $e0 $2d
    ld c, e                                       ; $51d0: $4b
    ldh [$87], a                                  ; $51d1: $e0 $87
    ld c, e                                       ; $51d3: $4b
    ldh [$a8], a                                  ; $51d4: $e0 $a8
    ld c, e                                       ; $51d6: $4b
    ldh [$f9], a                                  ; $51d7: $e0 $f9
    ld c, e                                       ; $51d9: $4b
    ldh [rNR24], a                                ; $51da: $e0 $19
    ld c, h                                       ; $51dc: $4c
    ldh [$79], a                                  ; $51dd: $e0 $79

Jump_008_51df:
    ld c, h                                       ; $51df: $4c
    ldh [$97], a                                  ; $51e0: $e0 $97
    ld c, h                                       ; $51e2: $4c
    ldh [$c2], a                                  ; $51e3: $e0 $c2
    ld c, h                                       ; $51e5: $4c
    ldh [rPCM12], a                               ; $51e6: $e0 $76
    ld c, l                                       ; $51e8: $4d
    ldh [$e5], a                                  ; $51e9: $e0 $e5
    ld c, l                                       ; $51eb: $4d
    ldh [rHDMA3], a                               ; $51ec: $e0 $53
    ld c, [hl]                                    ; $51ee: $4e
    ldh [$af], a                                  ; $51ef: $e0 $af
    ld c, [hl]                                    ; $51f1: $4e
    ldh [$c7], a                                  ; $51f2: $e0 $c7
    ld c, [hl]                                    ; $51f4: $4e
    ldh [rNR43], a                                ; $51f5: $e0 $22
    ld c, a                                       ; $51f7: $4f
    ldh [$3c], a                                  ; $51f8: $e0 $3c
    ld c, a                                       ; $51fa: $4f
    ldh [$97], a                                  ; $51fb: $e0 $97
    ld c, a                                       ; $51fd: $4f

Jump_008_51fe:
    ldh [$b1], a                                  ; $51fe: $e0 $b1
    ld c, a                                       ; $5200: $4f
    ldh [$09], a                                  ; $5201: $e0 $09
    ld d, b                                       ; $5203: $50
    ldh [rNR43], a                                ; $5204: $e0 $22
    ld d, b                                       ; $5206: $50
    ldh [$78], a                                  ; $5207: $e0 $78
    ld d, b                                       ; $5209: $50
    ldh [$90], a                                  ; $520a: $e0 $90
    ld d, b                                       ; $520c: $50
    ldh [$64], a                                  ; $520d: $e0 $64
    ld d, c                                       ; $520f: $51
    ldh [$b0], a                                  ; $5210: $e0 $b0
    ld d, c                                       ; $5212: $51
    ldh [$d1], a                                  ; $5213: $e0 $d1
    ld d, c                                       ; $5215: $51
    ldh [$64], a                                  ; $5216: $e0 $64
    ld d, d                                       ; $5218: $52
    ldh [$85], a                                  ; $5219: $e0 $85
    ld d, d                                       ; $521b: $52
    ldh [rNR24], a                                ; $521c: $e0 $19
    ld d, e                                       ; $521e: $53
    ldh [$3a], a                                  ; $521f: $e0 $3a
    ld d, e                                       ; $5221: $53
    ldh [$cb], a                                  ; $5222: $e0 $cb
    ld d, e                                       ; $5224: $53
    ldh [$ec], a                                  ; $5225: $e0 $ec
    ld d, e                                       ; $5227: $53
    ldh [$7f], a                                  ; $5228: $e0 $7f
    ld d, h                                       ; $522a: $54
    ldh [$a0], a                                  ; $522b: $e0 $a0
    ld d, h                                       ; $522d: $54
    ldh [$b0], a                                  ; $522e: $e0 $b0
    ld d, c                                       ; $5230: $51
    ldh [$d1], a                                  ; $5231: $e0 $d1
    ld d, c                                       ; $5233: $51
    ldh [$64], a                                  ; $5234: $e0 $64
    ld d, d                                       ; $5236: $52
    ldh [$85], a                                  ; $5237: $e0 $85
    ld d, d                                       ; $5239: $52
    ldh [rNR24], a                                ; $523a: $e0 $19
    ld d, e                                       ; $523c: $53
    ldh [$3a], a                                  ; $523d: $e0 $3a
    ld d, e                                       ; $523f: $53
    ldh [$cb], a                                  ; $5240: $e0 $cb
    ld d, e                                       ; $5242: $53
    ldh [$ec], a                                  ; $5243: $e0 $ec
    ld d, e                                       ; $5245: $53
    ldh [$7f], a                                  ; $5246: $e0 $7f
    ld d, h                                       ; $5248: $54
    ldh [$a0], a                                  ; $5249: $e0 $a0
    ld d, h                                       ; $524b: $54
    ldh [$b0], a                                  ; $524c: $e0 $b0
    ld d, c                                       ; $524e: $51
    ldh [$d1], a                                  ; $524f: $e0 $d1
    ld d, c                                       ; $5251: $51
    ldh [$64], a                                  ; $5252: $e0 $64
    ld d, d                                       ; $5254: $52
    ldh [$85], a                                  ; $5255: $e0 $85
    ld d, d                                       ; $5257: $52
    ldh [rNR24], a                                ; $5258: $e0 $19
    ld d, e                                       ; $525a: $53
    ldh [$3a], a                                  ; $525b: $e0 $3a
    ld d, e                                       ; $525d: $53
    ldh [$cb], a                                  ; $525e: $e0 $cb
    ld d, e                                       ; $5260: $53
    ldh [$ec], a                                  ; $5261: $e0 $ec
    ld d, e                                       ; $5263: $53
    ldh [$7f], a                                  ; $5264: $e0 $7f
    ld d, h                                       ; $5266: $54
    ldh [$a0], a                                  ; $5267: $e0 $a0
    ld d, h                                       ; $5269: $54

    db $e0, $31, $55, $e0, $b9, $55, $e0, $46, $56, $e0, $d6, $56, $e0, $63, $57

    ldh [$f3], a                                  ; $5279: $e0 $f3
    ld d, a                                       ; $527b: $57
    ldh [$72], a                                  ; $527c: $e0 $72
    ld e, b                                       ; $527e: $58
    ldh [$f1], a                                  ; $527f: $e0 $f1
    ld e, b                                       ; $5281: $58
    ldh [rPCM12], a                               ; $5282: $e0 $76
    ld e, c                                       ; $5284: $59
    ldh [$fb], a                                  ; $5285: $e0 $fb
    ld e, c                                       ; $5287: $59
    ldh [$7c], a                                  ; $5288: $e0 $7c
    ld e, d                                       ; $528a: $5a

    db $e0, $f7, $5a, $e0, $76, $5b, $e0, $00, $5c, $e0, $80, $5c

    ldh [$09], a                                  ; $5297: $e0 $09
    ld e, l                                       ; $5299: $5d
    ldh [$9b], a                                  ; $529a: $e0 $9b
    ld e, l                                       ; $529c: $5d
    ldh [$2a], a                                  ; $529d: $e0 $2a
    ld e, [hl]                                    ; $529f: $5e
    ldh [$ba], a                                  ; $52a0: $e0 $ba
    ld e, [hl]                                    ; $52a2: $5e
    ldh [rOBP1], a                                ; $52a3: $e0 $49
    ld e, a                                       ; $52a5: $5f
    ldh [$db], a                                  ; $52a6: $e0 $db
    ld e, a                                       ; $52a8: $5f
    ldh [$6c], a                                  ; $52a9: $e0 $6c
    ld h, b                                       ; $52ab: $60
    ldh [$f7], a                                  ; $52ac: $e0 $f7
    ld h, b                                       ; $52ae: $60
    ldh [$8a], a                                  ; $52af: $e0 $8a
    ld h, c                                       ; $52b1: $61
    ldh [rNR22], a                                ; $52b2: $e0 $17
    ld h, d                                       ; $52b4: $62
    ldh [$aa], a                                  ; $52b5: $e0 $aa
    ld h, d                                       ; $52b7: $62
    ldh [$3b], a                                  ; $52b8: $e0 $3b
    ld h, e                                       ; $52ba: $63
    ldh [$c6], a                                  ; $52bb: $e0 $c6
    ld h, e                                       ; $52bd: $63
    ldh [rHDMA5], a                               ; $52be: $e0 $55
    ld h, h                                       ; $52c0: $64
    ldh [$e5], a                                  ; $52c1: $e0 $e5
    ld h, h                                       ; $52c3: $64

    db $e0, $74, $65

    ldh [rTIMA], a                                ; $52c7: $e0 $05
    ld h, [hl]                                    ; $52c9: $66
    ldh [$97], a                                  ; $52ca: $e0 $97
    ld h, [hl]                                    ; $52cc: $66
    ldh [$29], a                                  ; $52cd: $e0 $29
    ld h, a                                       ; $52cf: $67
    ldh [$b9], a                                  ; $52d0: $e0 $b9
    ld h, a                                       ; $52d2: $67
    ldh [rWX], a                                  ; $52d3: $e0 $4b
    ld l, b                                       ; $52d5: $68
    ldh [$dd], a                                  ; $52d6: $e0 $dd
    ld l, b                                       ; $52d8: $68
    ldh [rBCPD], a                                ; $52d9: $e0 $69
    ld l, c                                       ; $52db: $69
    ldh [$f9], a                                  ; $52dc: $e0 $f9
    ld l, c                                       ; $52de: $69
    ldh [$85], a                                  ; $52df: $e0 $85
    ld l, d                                       ; $52e1: $6a
    ldh [$15], a                                  ; $52e2: $e0 $15
    ld l, e                                       ; $52e4: $6b

    db $e0, $a7, $6b, $e0, $37, $6c, $e0, $c7, $6c, $e0, $56, $6d, $e0, $e2, $6d, $e0
    db $71, $6e, $e0, $fa, $6e, $e0, $86, $6f, $e0, $0f, $70

    ldh [$9d], a                                  ; $5300: $e0 $9d
    ld [hl], b                                    ; $5302: $70
    ldh [$32], a                                  ; $5303: $e0 $32
    ld [hl], c                                    ; $5305: $71
    ldh [$bf], a                                  ; $5306: $e0 $bf
    ld [hl], c                                    ; $5308: $71
    ldh [rHDMA1], a                               ; $5309: $e0 $51
    ld [hl], d                                    ; $530b: $72
    ldh [$de], a                                  ; $530c: $e0 $de
    ld [hl], d                                    ; $530e: $72
    ldh [$72], a                                  ; $530f: $e0 $72
    ld [hl], e                                    ; $5311: $73

    db $e0, $fd, $73, $e0, $88, $74, $e0, $18, $75, $e0, $a1, $75

    ldh [$2f], a                                  ; $531e: $e0 $2f
    halt                                          ; $5320: $76
    ldh [$b8], a                                  ; $5321: $e0 $b8
    halt                                          ; $5323: $76
    ldh [rSCX], a                                 ; $5324: $e0 $43
    ld [hl], a                                    ; $5326: $77
    ldh [$d1], a                                  ; $5327: $e0 $d1
    ld [hl], a                                    ; $5329: $77
    ldh [$5b], a                                  ; $532a: $e0 $5b
    ld a, b                                       ; $532c: $78
    ldh [$e8], a                                  ; $532d: $e0 $e8
    ld a, b                                       ; $532f: $78
    ldh [$75], a                                  ; $5330: $e0 $75
    ld a, c                                       ; $5332: $79
    ldh [rDIV], a                                 ; $5333: $e0 $04
    ld a, d                                       ; $5335: $7a
    ldh [$9d], a                                  ; $5336: $e0 $9d
    ld a, d                                       ; $5338: $7a
    ldh [$2b], a                                  ; $5339: $e0 $2b
    ld a, e                                       ; $533b: $7b
    ldh [$bb], a                                  ; $533c: $e0 $bb
    ld a, e                                       ; $533e: $7b
    ldh [$3e], a                                  ; $533f: $e0 $3e
    ld a, h                                       ; $5341: $7c
    ldh [$c2], a                                  ; $5342: $e0 $c2
    ld a, h                                       ; $5344: $7c
    ldh [rBGP], a                                 ; $5345: $e0 $47
    ld a, l                                       ; $5347: $7d
    ldh [$d0], a                                  ; $5348: $e0 $d0
    ld a, l                                       ; $534a: $7d
    ldh [$5d], a                                  ; $534b: $e0 $5d
    ld a, [hl]                                    ; $534d: $7e
    ldh [$ee], a                                  ; $534e: $e0 $ee
    ld a, [hl]                                    ; $5350: $7e
    pop hl                                        ; $5351: $e1
    ld bc, $e140                                  ; $5352: $01 $40 $e1
    sub d                                         ; $5355: $92
    ld b, b                                       ; $5356: $40
    pop hl                                        ; $5357: $e1
    inc hl                                        ; $5358: $23
    ld b, c                                       ; $5359: $41
    pop hl                                        ; $535a: $e1
    or h                                          ; $535b: $b4
    ld b, c                                       ; $535c: $41
    pop hl                                        ; $535d: $e1
    ld b, a                                       ; $535e: $47
    ld b, d                                       ; $535f: $42
    pop hl                                        ; $5360: $e1
    sub $42                                       ; $5361: $d6 $42
    pop hl                                        ; $5363: $e1
    ld l, b                                       ; $5364: $68
    ld b, e                                       ; $5365: $43
    pop hl                                        ; $5366: $e1
    rst $30                                       ; $5367: $f7
    ld b, e                                       ; $5368: $43
    pop hl                                        ; $5369: $e1
    adc d                                         ; $536a: $8a
    ld b, h                                       ; $536b: $44
    pop hl                                        ; $536c: $e1
    jr jr_008_53b4                                ; $536d: $18 $45

    pop hl                                        ; $536f: $e1
    and a                                         ; $5370: $a7
    ld b, l                                       ; $5371: $45
    pop hl                                        ; $5372: $e1
    dec [hl]                                      ; $5373: $35
    ld b, [hl]                                    ; $5374: $46
    pop hl                                        ; $5375: $e1
    call nz, $e146                                ; $5376: $c4 $46 $e1
    ld d, d                                       ; $5379: $52
    ld b, a                                       ; $537a: $47
    pop hl                                        ; $537b: $e1
    and $47                                       ; $537c: $e6 $47
    pop hl                                        ; $537e: $e1
    ld a, d                                       ; $537f: $7a

Call_008_5380:
    ld c, b                                       ; $5380: $48
    pop hl                                        ; $5381: $e1
    ld c, $49                                     ; $5382: $0e $49
    pop hl                                        ; $5384: $e1
    and d                                         ; $5385: $a2
    ld c, c                                       ; $5386: $49
    pop hl                                        ; $5387: $e1
    ld [hl], $4a                                  ; $5388: $36 $4a
    pop hl                                        ; $538a: $e1
    ret z                                         ; $538b: $c8

    ld c, d                                       ; $538c: $4a
    pop hl                                        ; $538d: $e1
    ld d, [hl]                                    ; $538e: $56
    ld c, e                                       ; $538f: $4b
    pop hl                                        ; $5390: $e1
    add sp, $4b                                   ; $5391: $e8 $4b
    pop hl                                        ; $5393: $e1
    halt                                          ; $5394: $76
    ld c, h                                       ; $5395: $4c
    pop hl                                        ; $5396: $e1
    ld [$e14d], sp                                ; $5397: $08 $4d $e1
    sbc c                                         ; $539a: $99
    ld c, l                                       ; $539b: $4d
    pop hl                                        ; $539c: $e1
    add hl, hl                                    ; $539d: $29
    ld c, [hl]                                    ; $539e: $4e
    pop hl                                        ; $539f: $e1
    cp e                                          ; $53a0: $bb
    ld c, [hl]                                    ; $53a1: $4e
    pop hl                                        ; $53a2: $e1
    ld c, d                                       ; $53a3: $4a
    ld c, a                                       ; $53a4: $4f
    pop hl                                        ; $53a5: $e1
    db $db                                        ; $53a6: $db
    ld c, a                                       ; $53a7: $4f
    pop hl                                        ; $53a8: $e1
    ld [hl], b                                    ; $53a9: $70
    ld d, b                                       ; $53aa: $50
    pop hl                                        ; $53ab: $e1
    ld bc, $e151                                  ; $53ac: $01 $51 $e1
    sub [hl]                                      ; $53af: $96
    ld d, c                                       ; $53b0: $51
    pop hl                                        ; $53b1: $e1
    daa                                           ; $53b2: $27
    ld d, d                                       ; $53b3: $52

jr_008_53b4:
    pop hl                                        ; $53b4: $e1
    cp l                                          ; $53b5: $bd
    ld d, d                                       ; $53b6: $52
    pop hl                                        ; $53b7: $e1
    ld c, a                                       ; $53b8: $4f
    ld d, e                                       ; $53b9: $53
    pop hl                                        ; $53ba: $e1
    reti                                          ; $53bb: $d9


    ld d, e                                       ; $53bc: $53
    pop hl                                        ; $53bd: $e1
    ld h, a                                       ; $53be: $67
    ld d, h                                       ; $53bf: $54
    pop hl                                        ; $53c0: $e1
    pop af                                        ; $53c1: $f1
    ld d, h                                       ; $53c2: $54
    ldh [$7f], a                                  ; $53c3: $e0 $7f
    ld a, a                                       ; $53c5: $7f
    pop hl                                        ; $53c6: $e1
    ld a, a                                       ; $53c7: $7f
    ld d, l                                       ; $53c8: $55
    pop hl                                        ; $53c9: $e1
    ld sp, hl                                     ; $53ca: $f9
    ld d, l                                       ; $53cb: $55
    pop hl                                        ; $53cc: $e1
    ld [hl], c                                    ; $53cd: $71
    ld d, [hl]                                    ; $53ce: $56
    pop hl                                        ; $53cf: $e1
    jp hl                                         ; $53d0: $e9


    ld d, [hl]                                    ; $53d1: $56
    pop hl                                        ; $53d2: $e1
    ld h, h                                       ; $53d3: $64
    ld d, a                                       ; $53d4: $57
    pop hl                                        ; $53d5: $e1
    ld a, [$e157]                                 ; $53d6: $fa $57 $e1
    adc c                                         ; $53d9: $89
    ld e, b                                       ; $53da: $58
    pop hl                                        ; $53db: $e1
    ld a, [de]                                    ; $53dc: $1a
    ld e, c                                       ; $53dd: $59
    pop hl                                        ; $53de: $e1
    xor e                                         ; $53df: $ab
    ld e, c                                       ; $53e0: $59
    pop hl                                        ; $53e1: $e1
    inc a                                         ; $53e2: $3c
    ld e, d                                       ; $53e3: $5a
    pop hl                                        ; $53e4: $e1
    pop de                                        ; $53e5: $d1
    ld e, d                                       ; $53e6: $5a
    pop hl                                        ; $53e7: $e1
    ld h, e                                       ; $53e8: $63
    ld e, e                                       ; $53e9: $5b
    pop hl                                        ; $53ea: $e1
    ldh a, [$5b]                                  ; $53eb: $f0 $5b
    pop hl                                        ; $53ed: $e1
    add h                                         ; $53ee: $84
    ld e, h                                       ; $53ef: $5c
    pop hl                                        ; $53f0: $e1
    ld de, $e15d                                  ; $53f1: $11 $5d $e1
    and b                                         ; $53f4: $a0
    ld e, l                                       ; $53f5: $5d
    pop hl                                        ; $53f6: $e1
    add hl, de                                    ; $53f7: $19
    ld e, [hl]                                    ; $53f8: $5e
    pop hl                                        ; $53f9: $e1
    and d                                         ; $53fa: $a2
    ld e, [hl]                                    ; $53fb: $5e
    pop hl                                        ; $53fc: $e1
    ld l, $5f                                     ; $53fd: $2e $5f
    pop hl                                        ; $53ff: $e1
    or l                                          ; $5400: $b5
    ld e, a                                       ; $5401: $5f
    pop hl                                        ; $5402: $e1
    or l                                          ; $5403: $b5
    ld e, a                                       ; $5404: $5f
    pop hl                                        ; $5405: $e1
    or l                                          ; $5406: $b5
    ld e, a                                       ; $5407: $5f
    pop hl                                        ; $5408: $e1
    or l                                          ; $5409: $b5
    ld e, a                                       ; $540a: $5f
    pop hl                                        ; $540b: $e1
    or l                                          ; $540c: $b5
    ld e, a                                       ; $540d: $5f
    pop hl                                        ; $540e: $e1
    inc e                                         ; $540f: $1c
    ld h, b                                       ; $5410: $60
    pop hl                                        ; $5411: $e1
    inc e                                         ; $5412: $1c
    ld h, b                                       ; $5413: $60
    pop hl                                        ; $5414: $e1
    inc e                                         ; $5415: $1c
    ld h, b                                       ; $5416: $60
    pop hl                                        ; $5417: $e1
    inc e                                         ; $5418: $1c
    ld h, b                                       ; $5419: $60
    pop hl                                        ; $541a: $e1
    inc e                                         ; $541b: $1c
    ld h, b                                       ; $541c: $60
    pop hl                                        ; $541d: $e1
    sbc c                                         ; $541e: $99
    ld h, b                                       ; $541f: $60
    pop hl                                        ; $5420: $e1
    ld b, $61                                     ; $5421: $06 $61
    pop hl                                        ; $5423: $e1

Call_008_5424:
    halt                                          ; $5424: $76
    ld h, c                                       ; $5425: $61
    pop hl                                        ; $5426: $e1
    db $e3                                        ; $5427: $e3
    ld h, c                                       ; $5428: $61

Jump_008_5429:
    pop hl                                        ; $5429: $e1
    ld e, a                                       ; $542a: $5f
    ld h, d                                       ; $542b: $62
    pop hl                                        ; $542c: $e1
    call z, $e162                                 ; $542d: $cc $62 $e1
    ld e, a                                       ; $5430: $5f
    ld h, e                                       ; $5431: $63
    pop hl                                        ; $5432: $e1
    db $ec                                        ; $5433: $ec
    ld h, e                                       ; $5434: $63
    pop hl                                        ; $5435: $e1
    halt                                          ; $5436: $76
    ld h, h                                       ; $5437: $64
    pop hl                                        ; $5438: $e1
    inc bc                                        ; $5439: $03
    ld h, l                                       ; $543a: $65
    pop hl                                        ; $543b: $e1
    adc a                                         ; $543c: $8f
    ld h, l                                       ; $543d: $65
    pop hl                                        ; $543e: $e1
    inc hl                                        ; $543f: $23
    ld h, [hl]                                    ; $5440: $66
    pop hl                                        ; $5441: $e1
    or e                                          ; $5442: $b3
    ld h, [hl]                                    ; $5443: $66
    pop hl                                        ; $5444: $e1
    ld b, b                                       ; $5445: $40
    ld h, a                                       ; $5446: $67
    pop hl                                        ; $5447: $e1
    ret nc                                        ; $5448: $d0

    ld h, a                                       ; $5449: $67
    pop hl                                        ; $544a: $e1
    ld e, l                                       ; $544b: $5d
    ld l, b                                       ; $544c: $68
    pop hl                                        ; $544d: $e1

Jump_008_544e:
    db $eb                                        ; $544e: $eb
    ld l, b                                       ; $544f: $68
    pop hl                                        ; $5450: $e1
    halt                                          ; $5451: $76
    ld l, c                                       ; $5452: $69
    pop hl                                        ; $5453: $e1
    ld a, [$e169]                                 ; $5454: $fa $69 $e1
    ld a, h                                       ; $5457: $7c
    ld l, d                                       ; $5458: $6a
    pop hl                                        ; $5459: $e1
    ld b, $6b                                     ; $545a: $06 $6b
    pop hl                                        ; $545c: $e1
    sub e                                         ; $545d: $93
    ld l, e                                       ; $545e: $6b
    pop hl                                        ; $545f: $e1
    ld hl, $e16c                                  ; $5460: $21 $6c $e1
    or b                                          ; $5463: $b0
    ld l, h                                       ; $5464: $6c
    pop hl                                        ; $5465: $e1
    ld a, $6d                                     ; $5466: $3e $6d
    pop hl                                        ; $5468: $e1
    call z, $e16d                                 ; $5469: $cc $6d $e1
    ld e, c                                       ; $546c: $59
    ld l, [hl]                                    ; $546d: $6e
    pop hl                                        ; $546e: $e1
    and $6e                                       ; $546f: $e6 $6e
    pop hl                                        ; $5471: $e1
    ld d, a                                       ; $5472: $57
    ld l, a                                       ; $5473: $6f
    pop hl                                        ; $5474: $e1
    bit 5, a                                      ; $5475: $cb $6f
    pop hl                                        ; $5477: $e1
    ld [hl], $70                                  ; $5478: $36 $70
    pop hl                                        ; $547a: $e1
    and l                                         ; $547b: $a5
    ld [hl], b                                    ; $547c: $70
    pop hl                                        ; $547d: $e1
    db $10                                        ; $547e: $10
    ld [hl], c                                    ; $547f: $71
    pop hl                                        ; $5480: $e1
    add l                                         ; $5481: $85
    ld [hl], c                                    ; $5482: $71
    pop hl                                        ; $5483: $e1
    ld a, [$e171]                                 ; $5484: $fa $71 $e1
    ld l, l                                       ; $5487: $6d
    ld [hl], d                                    ; $5488: $72
    pop hl                                        ; $5489: $e1
    rst $18                                       ; $548a: $df
    ld [hl], d                                    ; $548b: $72
    pop hl                                        ; $548c: $e1
    ld c, a                                       ; $548d: $4f
    ld [hl], e                                    ; $548e: $73
    pop hl                                        ; $548f: $e1
    xor h                                         ; $5490: $ac
    ld [hl], e                                    ; $5491: $73
    pop hl                                        ; $5492: $e1
    ld c, $74                                     ; $5493: $0e $74
    pop hl                                        ; $5495: $e1
    ld h, [hl]                                    ; $5496: $66
    ld [hl], h                                    ; $5497: $74
    pop hl                                        ; $5498: $e1
    pop de                                        ; $5499: $d1
    ld [hl], h                                    ; $549a: $74
    pop hl                                        ; $549b: $e1
    cpl                                           ; $549c: $2f
    ld [hl], l                                    ; $549d: $75
    pop hl                                        ; $549e: $e1
    and c                                         ; $549f: $a1
    ld [hl], l                                    ; $54a0: $75
    pop hl                                        ; $54a1: $e1
    ld d, $76                                     ; $54a2: $16 $76
    pop hl                                        ; $54a4: $e1
    add d                                         ; $54a5: $82
    halt                                          ; $54a6: $76
    pop hl                                        ; $54a7: $e1
    ld a, [c]                                     ; $54a8: $f2
    halt                                          ; $54a9: $76
    pop hl                                        ; $54aa: $e1
    ld e, [hl]                                    ; $54ab: $5e
    ld [hl], a                                    ; $54ac: $77
    pop hl                                        ; $54ad: $e1
    pop de                                        ; $54ae: $d1
    ld [hl], a                                    ; $54af: $77
    pop hl                                        ; $54b0: $e1
    ld b, [hl]                                    ; $54b1: $46
    ld a, b                                       ; $54b2: $78
    pop hl                                        ; $54b3: $e1
    cp c                                          ; $54b4: $b9
    ld a, b                                       ; $54b5: $78

Jump_008_54b6:
    pop hl                                        ; $54b6: $e1
    dec hl                                        ; $54b7: $2b
    ld a, c                                       ; $54b8: $79
    pop hl                                        ; $54b9: $e1
    sbc e                                         ; $54ba: $9b
    ld a, c                                       ; $54bb: $79
    pop hl                                        ; $54bc: $e1
    ld hl, sp+$79                                 ; $54bd: $f8 $79
    pop hl                                        ; $54bf: $e1
    ld e, d                                       ; $54c0: $5a
    ld a, d                                       ; $54c1: $7a
    pop hl                                        ; $54c2: $e1
    or d                                          ; $54c3: $b2
    ld a, d                                       ; $54c4: $7a
    pop hl                                        ; $54c5: $e1
    ld hl, $e17b                                  ; $54c6: $21 $7b $e1
    ld a, a                                       ; $54c9: $7f
    ld a, e                                       ; $54ca: $7b
    pop hl                                        ; $54cb: $e1
    db $f4                                        ; $54cc: $f4
    ld a, e                                       ; $54cd: $7b
    pop hl                                        ; $54ce: $e1
    ld h, [hl]                                    ; $54cf: $66
    ld a, h                                       ; $54d0: $7c
    pop hl                                        ; $54d1: $e1
    jp nc, $e17c                                  ; $54d2: $d2 $7c $e1

    ld b, d                                       ; $54d5: $42
    ld a, l                                       ; $54d6: $7d
    pop hl                                        ; $54d7: $e1
    xor h                                         ; $54d8: $ac
    ld a, l                                       ; $54d9: $7d
    pop hl                                        ; $54da: $e1
    jr z, jr_008_555b                             ; $54db: $28 $7e

    pop hl                                        ; $54dd: $e1
    and h                                         ; $54de: $a4
    ld a, [hl]                                    ; $54df: $7e
    pop hl                                        ; $54e0: $e1
    dec de                                        ; $54e1: $1b
    ld a, a                                       ; $54e2: $7f
    ld [c], a                                     ; $54e3: $e2
    ld bc, $e140                                  ; $54e4: $01 $40 $e1
    sub h                                         ; $54e7: $94
    ld a, a                                       ; $54e8: $7f
    ld [c], a                                     ; $54e9: $e2
    ld a, b                                       ; $54ea: $78
    ld b, b                                       ; $54eb: $40
    ld [c], a                                     ; $54ec: $e2
    db $db                                        ; $54ed: $db
    ld b, b                                       ; $54ee: $40
    ld [c], a                                     ; $54ef: $e2
    add hl, sp                                    ; $54f0: $39
    ld b, c                                       ; $54f1: $41
    ld [c], a                                     ; $54f2: $e2
    sbc e                                         ; $54f3: $9b
    ld b, c                                       ; $54f4: $41
    ld [c], a                                     ; $54f5: $e2
    db $fc                                        ; $54f6: $fc
    ld b, c                                       ; $54f7: $41
    ld [c], a                                     ; $54f8: $e2
    ld l, h                                       ; $54f9: $6c
    ld b, d                                       ; $54fa: $42
    ld [c], a                                     ; $54fb: $e2
    reti                                          ; $54fc: $d9


    ld b, d                                       ; $54fd: $42
    ld [c], a                                     ; $54fe: $e2
    ld b, b                                       ; $54ff: $40
    ld b, e                                       ; $5500: $43
    ld [c], a                                     ; $5501: $e2
    xor e                                         ; $5502: $ab
    ld b, e                                       ; $5503: $43
    ld [c], a                                     ; $5504: $e2
    db $10                                        ; $5505: $10
    ld b, h                                       ; $5506: $44
    ld [c], a                                     ; $5507: $e2
    add h                                         ; $5508: $84
    ld b, h                                       ; $5509: $44
    ld [c], a                                     ; $550a: $e2
    ld sp, hl                                     ; $550b: $f9
    ld b, h                                       ; $550c: $44
    ld [c], a                                     ; $550d: $e2
    ld l, b                                       ; $550e: $68
    ld b, l                                       ; $550f: $45
    ld [c], a                                     ; $5510: $e2
    db $db                                        ; $5511: $db
    ld b, l                                       ; $5512: $45
    ld [c], a                                     ; $5513: $e2
    ld c, e                                       ; $5514: $4b
    ld b, [hl]                                    ; $5515: $46
    ld [c], a                                     ; $5516: $e2
    and e                                         ; $5517: $a3
    ld b, [hl]                                    ; $5518: $46
    ld [c], a                                     ; $5519: $e2
    inc b                                         ; $551a: $04
    ld b, a                                       ; $551b: $47
    ld [c], a                                     ; $551c: $e2
    ld e, a                                       ; $551d: $5f
    ld b, a                                       ; $551e: $47
    ld [c], a                                     ; $551f: $e2
    cp l                                          ; $5520: $bd
    ld b, a                                       ; $5521: $47
    ld [c], a                                     ; $5522: $e2
    inc e                                         ; $5523: $1c
    ld c, b                                       ; $5524: $48
    ld [c], a                                     ; $5525: $e2
    adc l                                         ; $5526: $8d
    ld c, b                                       ; $5527: $48
    ld [c], a                                     ; $5528: $e2
    cp $48                                        ; $5529: $fe $48
    ld [c], a                                     ; $552b: $e2
    ld h, e                                       ; $552c: $63
    ld c, c                                       ; $552d: $49
    ld [c], a                                     ; $552e: $e2
    rst $08                                       ; $552f: $cf
    ld c, c                                       ; $5530: $49
    ld [c], a                                     ; $5531: $e2
    ld [hl], $4a                                  ; $5532: $36 $4a
    ld [c], a                                     ; $5534: $e2
    xor l                                         ; $5535: $ad
    ld c, d                                       ; $5536: $4a
    ld [c], a                                     ; $5537: $e2
    dec h                                         ; $5538: $25
    ld c, e                                       ; $5539: $4b
    ld [c], a                                     ; $553a: $e2
    sub l                                         ; $553b: $95

Jump_008_553c:
    ld c, e                                       ; $553c: $4b
    ld [c], a                                     ; $553d: $e2
    add hl, bc                                    ; $553e: $09
    ld c, h                                       ; $553f: $4c
    ld [c], a                                     ; $5540: $e2
    ld a, b                                       ; $5541: $78
    ld c, h                                       ; $5542: $4c
    ld [c], a                                     ; $5543: $e2
    sub $4c                                       ; $5544: $d6 $4c
    ld [c], a                                     ; $5546: $e2
    ccf                                           ; $5547: $3f
    ld c, l                                       ; $5548: $4d
    ld [c], a                                     ; $5549: $e2
    and b                                         ; $554a: $a0
    ld c, l                                       ; $554b: $4d
    ld [c], a                                     ; $554c: $e2
    rlca                                          ; $554d: $07
    ld c, [hl]                                    ; $554e: $4e
    ld [c], a                                     ; $554f: $e2
    ld l, c                                       ; $5550: $69
    ld c, [hl]                                    ; $5551: $4e
    ld [c], a                                     ; $5552: $e2
    push de                                       ; $5553: $d5
    ld c, [hl]                                    ; $5554: $4e

Jump_008_5555:
    ld [c], a                                     ; $5555: $e2
    ld b, b                                       ; $5556: $40
    ld c, a                                       ; $5557: $4f
    ld [c], a                                     ; $5558: $e2
    and l                                         ; $5559: $a5
    ld c, a                                       ; $555a: $4f

jr_008_555b:
    ld [c], a                                     ; $555b: $e2
    inc c                                         ; $555c: $0c
    ld d, b                                       ; $555d: $50
    ld [c], a                                     ; $555e: $e2
    ld l, l                                       ; $555f: $6d
    ld d, b                                       ; $5560: $50
    ld [c], a                                     ; $5561: $e2
    db $dd                                        ; $5562: $dd
    ld d, b                                       ; $5563: $50
    ld [c], a                                     ; $5564: $e2
    ld c, c                                       ; $5565: $49
    ld d, c                                       ; $5566: $51
    ld [c], a                                     ; $5567: $e2
    or e                                          ; $5568: $b3
    ld d, c                                       ; $5569: $51
    ld [c], a                                     ; $556a: $e2
    ld [hl+], a                                   ; $556b: $22
    ld d, d                                       ; $556c: $52
    ld [c], a                                     ; $556d: $e2
    adc h                                         ; $556e: $8c
    ld d, d                                       ; $556f: $52
    ld [c], a                                     ; $5570: $e2
    db $e4                                        ; $5571: $e4
    ld d, d                                       ; $5572: $52
    ld [c], a                                     ; $5573: $e2
    ld b, h                                       ; $5574: $44
    ld d, e                                       ; $5575: $53
    ld [c], a                                     ; $5576: $e2
    sbc [hl]                                      ; $5577: $9e
    ld d, e                                       ; $5578: $53
    ld [c], a                                     ; $5579: $e2
    db $fd                                        ; $557a: $fd
    ld d, e                                       ; $557b: $53
    ld [c], a                                     ; $557c: $e2
    ld e, l                                       ; $557d: $5d
    ld d, h                                       ; $557e: $54
    ld [c], a                                     ; $557f: $e2
    push de                                       ; $5580: $d5
    ld d, h                                       ; $5581: $54
    ld [c], a                                     ; $5582: $e2
    ld c, d                                       ; $5583: $4a
    ld d, l                                       ; $5584: $55
    ld [c], a                                     ; $5585: $e2
    cp d                                          ; $5586: $ba
    ld d, l                                       ; $5587: $55
    ld [c], a                                     ; $5588: $e2
    dec l                                         ; $5589: $2d
    ld d, [hl]                                    ; $558a: $56
    ld [c], a                                     ; $558b: $e2
    sbc e                                         ; $558c: $9b
    ld d, [hl]                                    ; $558d: $56

Call_008_558e:
    ld [c], a                                     ; $558e: $e2
    dec d                                         ; $558f: $15
    ld d, a                                       ; $5590: $57
    ld [c], a                                     ; $5591: $e2
    adc [hl]                                      ; $5592: $8e
    ld d, a                                       ; $5593: $57
    ld [c], a                                     ; $5594: $e2
    inc bc                                        ; $5595: $03
    ld e, b                                       ; $5596: $58
    ld [c], a                                     ; $5597: $e2
    ld a, c                                       ; $5598: $79
    ld e, b                                       ; $5599: $58
    ld [c], a                                     ; $559a: $e2
    xor $58                                       ; $559b: $ee $58
    ld [c], a                                     ; $559d: $e2
    ld d, d                                       ; $559e: $52
    ld e, c                                       ; $559f: $59
    ld [c], a                                     ; $55a0: $e2
    ret nz                                        ; $55a1: $c0

    ld e, c                                       ; $55a2: $59
    ld [c], a                                     ; $55a3: $e2
    jr z, jr_008_5600                             ; $55a4: $28 $5a

    ld [c], a                                     ; $55a6: $e2
    sub e                                         ; $55a7: $93
    ld e, d                                       ; $55a8: $5a
    ld [c], a                                     ; $55a9: $e2
    ld bc, $e25b                                  ; $55aa: $01 $5b $e2
    ld l, d                                       ; $55ad: $6a
    ld e, e                                       ; $55ae: $5b
    ld [c], a                                     ; $55af: $e2
    sub $5b                                       ; $55b0: $d6 $5b
    ld [c], a                                     ; $55b2: $e2
    dec [hl]                                      ; $55b3: $35
    ld e, h                                       ; $55b4: $5c
    ld [c], a                                     ; $55b5: $e2
    sbc e                                         ; $55b6: $9b
    ld e, h                                       ; $55b7: $5c
    ld [c], a                                     ; $55b8: $e2
    db $fc                                        ; $55b9: $fc
    ld e, h                                       ; $55ba: $5c
    ld [c], a                                     ; $55bb: $e2
    ld [hl], d                                    ; $55bc: $72
    ld e, l                                       ; $55bd: $5d
    ld [c], a                                     ; $55be: $e2
    rst $20                                       ; $55bf: $e7
    ld e, l                                       ; $55c0: $5d
    ld [c], a                                     ; $55c1: $e2
    ld d, [hl]                                    ; $55c2: $56
    ld e, [hl]                                    ; $55c3: $5e
    ld [c], a                                     ; $55c4: $e2
    rst $00                                       ; $55c5: $c7
    ld e, [hl]                                    ; $55c6: $5e

Jump_008_55c7:
    ld [c], a                                     ; $55c7: $e2
    dec [hl]                                      ; $55c8: $35
    ld e, a                                       ; $55c9: $5f
    ld [c], a                                     ; $55ca: $e2
    adc h                                         ; $55cb: $8c
    ld e, a                                       ; $55cc: $5f
    ld [c], a                                     ; $55cd: $e2
    rst $28                                       ; $55ce: $ef
    ld e, a                                       ; $55cf: $5f
    ld [c], a                                     ; $55d0: $e2
    ld c, c                                       ; $55d1: $49
    ld h, b                                       ; $55d2: $60
    ld [c], a                                     ; $55d3: $e2
    xor e                                         ; $55d4: $ab
    ld h, b                                       ; $55d5: $60

Jump_008_55d6:
    ld [c], a                                     ; $55d6: $e2
    dec b                                         ; $55d7: $05
    ld h, c                                       ; $55d8: $61
    ld [c], a                                     ; $55d9: $e2
    ld a, [hl]                                    ; $55da: $7e
    ld h, c                                       ; $55db: $61
    ld [c], a                                     ; $55dc: $e2
    db $f4                                        ; $55dd: $f4
    ld h, c                                       ; $55de: $61
    ld [c], a                                     ; $55df: $e2
    ld h, a                                       ; $55e0: $67
    ld h, d                                       ; $55e1: $62
    ld [c], a                                     ; $55e2: $e2
    db $db                                        ; $55e3: $db
    ld h, d                                       ; $55e4: $62
    ld [c], a                                     ; $55e5: $e2
    ld c, h                                       ; $55e6: $4c
    ld h, e                                       ; $55e7: $63
    ld [c], a                                     ; $55e8: $e2
    ret z                                         ; $55e9: $c8

    ld h, e                                       ; $55ea: $63
    ld [c], a                                     ; $55eb: $e2
    ld b, e                                       ; $55ec: $43
    ld h, h                                       ; $55ed: $64
    ld [c], a                                     ; $55ee: $e2
    or a                                          ; $55ef: $b7
    ld h, h                                       ; $55f0: $64
    ld [c], a                                     ; $55f1: $e2
    dec l                                         ; $55f2: $2d
    ld h, l                                       ; $55f3: $65
    ld [c], a                                     ; $55f4: $e2
    and e                                         ; $55f5: $a3
    ld h, l                                       ; $55f6: $65
    ld [c], a                                     ; $55f7: $e2
    ld [$e266], sp                                ; $55f8: $08 $66 $e2
    ld [hl], a                                    ; $55fb: $77
    ld h, [hl]                                    ; $55fc: $66
    ld [c], a                                     ; $55fd: $e2
    rst $18                                       ; $55fe: $df
    ld h, [hl]                                    ; $55ff: $66

jr_008_5600:
    ld [c], a                                     ; $5600: $e2
    ld c, e                                       ; $5601: $4b
    ld h, a                                       ; $5602: $67
    ld [c], a                                     ; $5603: $e2
    cp c                                          ; $5604: $b9
    ld h, a                                       ; $5605: $67
    ld [c], a                                     ; $5606: $e2
    ld a, [hl+]                                   ; $5607: $2a
    ld l, b                                       ; $5608: $68
    ld [c], a                                     ; $5609: $e2
    sbc b                                         ; $560a: $98
    ld l, b                                       ; $560b: $68
    ld [c], a                                     ; $560c: $e2
    nop                                           ; $560d: $00
    ld l, c                                       ; $560e: $69
    ld [c], a                                     ; $560f: $e2
    ld l, h                                       ; $5610: $6c
    ld l, c                                       ; $5611: $69
    ld [c], a                                     ; $5612: $e2
    jp nc, $e269                                  ; $5613: $d2 $69 $e2

    ld c, c                                       ; $5616: $49
    ld l, d                                       ; $5617: $6a
    ld [c], a                                     ; $5618: $e2
    cp a                                          ; $5619: $bf
    ld l, d                                       ; $561a: $6a
    ld [c], a                                     ; $561b: $e2
    jr nc, jr_008_5689                            ; $561c: $30 $6b

    ld [c], a                                     ; $561e: $e2
    and l                                         ; $561f: $a5
    ld l, e                                       ; $5620: $6b
    ld [c], a                                     ; $5621: $e2
    ld d, $6c                                     ; $5622: $16 $6c
    ld [c], a                                     ; $5624: $e2
    ld a, a                                       ; $5625: $7f
    ld l, h                                       ; $5626: $6c
    ld [c], a                                     ; $5627: $e2
    ld a, [c]                                     ; $5628: $f2
    ld l, h                                       ; $5629: $6c
    ld [c], a                                     ; $562a: $e2
    ld e, a                                       ; $562b: $5f
    ld l, l                                       ; $562c: $6d

Call_008_562d:
    ld [c], a                                     ; $562d: $e2
    rst $08                                       ; $562e: $cf
    ld l, l                                       ; $562f: $6d
    ld [c], a                                     ; $5630: $e2
    ld b, d                                       ; $5631: $42
    ld l, [hl]                                    ; $5632: $6e
    ld [c], a                                     ; $5633: $e2
    sub h                                         ; $5634: $94
    ld l, [hl]                                    ; $5635: $6e
    ld [c], a                                     ; $5636: $e2
    ld a, [bc]                                    ; $5637: $0a
    ld l, a                                       ; $5638: $6f
    ld [c], a                                     ; $5639: $e2
    ld e, l                                       ; $563a: $5d
    ld l, a                                       ; $563b: $6f
    ld [c], a                                     ; $563c: $e2
    db $d3                                        ; $563d: $d3
    ld l, a                                       ; $563e: $6f
    ld [c], a                                     ; $563f: $e2
    ld [$e26f], a                                 ; $5640: $ea $6f $e2
    ld e, $70                                     ; $5643: $1e $70

Jump_008_5645:
    ld [c], a                                     ; $5645: $e2
    ld h, a                                       ; $5646: $67
    ld [hl], b                                    ; $5647: $70
    ld [c], a                                     ; $5648: $e2
    ret nz                                        ; $5649: $c0

    ld [hl], b                                    ; $564a: $70
    ld [c], a                                     ; $564b: $e2
    push de                                       ; $564c: $d5
    ld [hl], b                                    ; $564d: $70
    ld [c], a                                     ; $564e: $e2
    ld sp, hl                                     ; $564f: $f9
    ld [hl], b                                    ; $5650: $70
    ld [c], a                                     ; $5651: $e2
    ld a, [hl+]                                   ; $5652: $2a
    ld [hl], c                                    ; $5653: $71

Jump_008_5654:
    ld [c], a                                     ; $5654: $e2
    ld a, b                                       ; $5655: $78
    ld [hl], c                                    ; $5656: $71
    ld [c], a                                     ; $5657: $e2
    jp c, $e271                                   ; $5658: $da $71 $e2

    ld a, [hl-]                                   ; $565b: $3a
    ld [hl], d                                    ; $565c: $72
    ld [c], a                                     ; $565d: $e2
    xor c                                         ; $565e: $a9
    ld [hl], d                                    ; $565f: $72
    ld [c], a                                     ; $5660: $e2
    ld de, $e273                                  ; $5661: $11 $73 $e2
    ld [hl], e                                    ; $5664: $73
    ld [hl], e                                    ; $5665: $73
    ld [c], a                                     ; $5666: $e2
    sub $73                                       ; $5667: $d6 $73
    ld [c], a                                     ; $5669: $e2
    ccf                                           ; $566a: $3f
    ld [hl], h                                    ; $566b: $74
    ld [c], a                                     ; $566c: $e2
    xor c                                         ; $566d: $a9
    ld [hl], h                                    ; $566e: $74
    ld [c], a                                     ; $566f: $e2
    rla                                           ; $5670: $17
    ld [hl], l                                    ; $5671: $75
    ld [c], a                                     ; $5672: $e2
    ld l, l                                       ; $5673: $6d
    ld [hl], l                                    ; $5674: $75
    ld [c], a                                     ; $5675: $e2
    db $d3                                        ; $5676: $d3
    ld [hl], l                                    ; $5677: $75
    ld [c], a                                     ; $5678: $e2
    ld l, $76                                     ; $5679: $2e $76
    ld [c], a                                     ; $567b: $e2
    adc [hl]                                      ; $567c: $8e
    halt                                          ; $567d: $76
    ld [c], a                                     ; $567e: $e2
    db $f4                                        ; $567f: $f4
    halt                                          ; $5680: $76
    ld [c], a                                     ; $5681: $e2
    ld d, a                                       ; $5682: $57
    ld [hl], a                                    ; $5683: $77
    ld [c], a                                     ; $5684: $e2
    cp l                                          ; $5685: $bd
    ld [hl], a                                    ; $5686: $77
    ld [c], a                                     ; $5687: $e2
    dec h                                         ; $5688: $25

jr_008_5689:
    ld a, b                                       ; $5689: $78
    ld [c], a                                     ; $568a: $e2
    adc h                                         ; $568b: $8c
    ld a, b                                       ; $568c: $78
    ld [c], a                                     ; $568d: $e2
    push af                                       ; $568e: $f5
    ld a, b                                       ; $568f: $78
    ld [c], a                                     ; $5690: $e2

Call_008_5691:
    ld e, [hl]                                    ; $5691: $5e
    ld a, c                                       ; $5692: $79
    ld [c], a                                     ; $5693: $e2
    ret z                                         ; $5694: $c8

    ld a, c                                       ; $5695: $79
    ld [c], a                                     ; $5696: $e2
    ld [hl-], a                                   ; $5697: $32
    ld a, d                                       ; $5698: $7a
    ld [c], a                                     ; $5699: $e2
    sbc e                                         ; $569a: $9b
    ld a, d                                       ; $569b: $7a
    ld [c], a                                     ; $569c: $e2
    nop                                           ; $569d: $00
    ld a, e                                       ; $569e: $7b
    ld [c], a                                     ; $569f: $e2
    ld l, d                                       ; $56a0: $6a
    ld a, e                                       ; $56a1: $7b
    ld [c], a                                     ; $56a2: $e2
    db $d3                                        ; $56a3: $d3
    ld a, e                                       ; $56a4: $7b
    ld [c], a                                     ; $56a5: $e2
    inc a                                         ; $56a6: $3c
    ld a, h                                       ; $56a7: $7c
    ld [c], a                                     ; $56a8: $e2
    sbc [hl]                                      ; $56a9: $9e
    ld a, h                                       ; $56aa: $7c
    ld [c], a                                     ; $56ab: $e2
    cp $7c                                        ; $56ac: $fe $7c
    ld [c], a                                     ; $56ae: $e2
    ld h, b                                       ; $56af: $60
    ld a, l                                       ; $56b0: $7d
    ld [c], a                                     ; $56b1: $e2
    ret z                                         ; $56b2: $c8

    ld a, l                                       ; $56b3: $7d
    ld [c], a                                     ; $56b4: $e2
    ld [hl], $7e                                  ; $56b5: $36 $7e
    ld [c], a                                     ; $56b7: $e2
    sbc e                                         ; $56b8: $9b
    ld a, [hl]                                    ; $56b9: $7e
    ld [c], a                                     ; $56ba: $e2
    db $fd                                        ; $56bb: $fd
    ld a, [hl]                                    ; $56bc: $7e
    ld [c], a                                     ; $56bd: $e2
    ld d, l                                       ; $56be: $55
    ld a, a                                       ; $56bf: $7f
    db $e3                                        ; $56c0: $e3
    ld bc, $e340                                  ; $56c1: $01 $40 $e3
    ld e, c                                       ; $56c4: $59
    ld b, b                                       ; $56c5: $40
    db $e3                                        ; $56c6: $e3

Jump_008_56c7:
    or b                                          ; $56c7: $b0
    ld b, b                                       ; $56c8: $40
    db $e3                                        ; $56c9: $e3
    ld [$e341], sp                                ; $56ca: $08 $41 $e3
    ld e, a                                       ; $56cd: $5f
    ld b, c                                       ; $56ce: $41
    db $e3                                        ; $56cf: $e3
    jp $e341                                      ; $56d0: $c3 $41 $e3


    daa                                           ; $56d3: $27
    ld b, d                                       ; $56d4: $42
    db $e3                                        ; $56d5: $e3

Jump_008_56d6:
    adc d                                         ; $56d6: $8a
    ld b, d                                       ; $56d7: $42
    db $e3                                        ; $56d8: $e3
    db $ed                                        ; $56d9: $ed
    ld b, d                                       ; $56da: $42
    db $e3                                        ; $56db: $e3
    ld d, b                                       ; $56dc: $50
    ld b, e                                       ; $56dd: $43
    db $e3                                        ; $56de: $e3
    or h                                          ; $56df: $b4
    ld b, e                                       ; $56e0: $43
    db $e3                                        ; $56e1: $e3
    ld a, [de]                                    ; $56e2: $1a
    ld b, h                                       ; $56e3: $44
    db $e3                                        ; $56e4: $e3
    ld a, d                                       ; $56e5: $7a
    ld b, h                                       ; $56e6: $44
    db $e3                                        ; $56e7: $e3
    ld [$e345], sp                                ; $56e8: $08 $45 $e3
    ld [hl], c                                    ; $56eb: $71
    ld b, l                                       ; $56ec: $45
    db $e3                                        ; $56ed: $e3
    rst $00                                       ; $56ee: $c7
    ld b, l                                       ; $56ef: $45
    db $e3                                        ; $56f0: $e3
    inc a                                         ; $56f1: $3c
    ld b, [hl]                                    ; $56f2: $46
    db $e3                                        ; $56f3: $e3
    ret                                           ; $56f4: $c9


    ld b, [hl]                                    ; $56f5: $46
    db $e3                                        ; $56f6: $e3
    ld d, h                                       ; $56f7: $54
    ld b, a                                       ; $56f8: $47
    db $e3                                        ; $56f9: $e3
    db $e3                                        ; $56fa: $e3
    ld b, a                                       ; $56fb: $47
    db $e3                                        ; $56fc: $e3
    ld [hl], l                                    ; $56fd: $75
    ld c, b                                       ; $56fe: $48
    db $e3                                        ; $56ff: $e3
    add hl, bc                                    ; $5700: $09
    ld c, c                                       ; $5701: $49
    db $e3                                        ; $5702: $e3
    sbc l                                         ; $5703: $9d
    ld c, c                                       ; $5704: $49
    db $e3                                        ; $5705: $e3
    ld l, $4a                                     ; $5706: $2e $4a
    db $e3                                        ; $5708: $e3
    ret nz                                        ; $5709: $c0

    ld c, d                                       ; $570a: $4a
    db $e3                                        ; $570b: $e3
    ld d, c                                       ; $570c: $51
    ld c, e                                       ; $570d: $4b
    db $e3                                        ; $570e: $e3
    db $e3                                        ; $570f: $e3
    ld c, e                                       ; $5710: $4b
    db $e3                                        ; $5711: $e3
    ld [hl], l                                    ; $5712: $75
    ld c, h                                       ; $5713: $4c
    db $e3                                        ; $5714: $e3
    ld b, $4d                                     ; $5715: $06 $4d
    db $e3                                        ; $5717: $e3

Call_008_5718:
    sbc b                                         ; $5718: $98
    ld c, l                                       ; $5719: $4d
    db $e3                                        ; $571a: $e3
    ld a, [hl+]                                   ; $571b: $2a
    ld c, [hl]                                    ; $571c: $4e
    db $e3                                        ; $571d: $e3
    cp e                                          ; $571e: $bb
    ld c, [hl]                                    ; $571f: $4e
    db $e3                                        ; $5720: $e3
    ld c, l                                       ; $5721: $4d
    ld c, a                                       ; $5722: $4f
    db $e3                                        ; $5723: $e3
    ldh [rVBK], a                                 ; $5724: $e0 $4f
    db $e3                                        ; $5726: $e3
    inc de                                        ; $5727: $13
    ld d, d                                       ; $5728: $52
    db $e3                                        ; $5729: $e3
    ld c, l                                       ; $572a: $4d
    ld d, h                                       ; $572b: $54
    db $e3                                        ; $572c: $e3
    adc l                                         ; $572d: $8d
    ld d, [hl]                                    ; $572e: $56
    db $e3                                        ; $572f: $e3
    call nz, $e358                                ; $5730: $c4 $58 $e3
    nop                                           ; $5733: $00
    ld e, e                                       ; $5734: $5b
    db $e3                                        ; $5735: $e3
    sub e                                         ; $5736: $93
    ld e, e                                       ; $5737: $5b
    db $e3                                        ; $5738: $e3
    dec h                                         ; $5739: $25
    ld e, h                                       ; $573a: $5c
    db $e3                                        ; $573b: $e3

Jump_008_573c:
    cp b                                          ; $573c: $b8
    ld e, h                                       ; $573d: $5c
    db $e3                                        ; $573e: $e3
    ld b, [hl]                                    ; $573f: $46
    ld e, l                                       ; $5740: $5d
    db $e3                                        ; $5741: $e3
    reti                                          ; $5742: $d9


    ld e, l                                       ; $5743: $5d
    db $e3                                        ; $5744: $e3
    ld a, [hl+]                                   ; $5745: $2a
    ld c, [hl]                                    ; $5746: $4e
    db $e3                                        ; $5747: $e3
    cp e                                          ; $5748: $bb
    ld c, [hl]                                    ; $5749: $4e
    db $e3                                        ; $574a: $e3
    ld l, h                                       ; $574b: $6c
    ld e, [hl]                                    ; $574c: $5e

Jump_008_574d:
    db $dd                                        ; $574d: $dd
    and l                                         ; $574e: $a5
    ld l, [hl]                                    ; $574f: $6e
    db $dd                                        ; $5750: $dd
    rla                                           ; $5751: $17
    ld l, a                                       ; $5752: $6f
    db $dd                                        ; $5753: $dd
    dec [hl]                                      ; $5754: $35
    ld l, a                                       ; $5755: $6f
    db $dd                                        ; $5756: $dd
    and h                                         ; $5757: $a4
    ld l, a                                       ; $5758: $6f
    db $dd                                        ; $5759: $dd
    jp nz, $dd6f                                  ; $575a: $c2 $6f $dd

    dec hl                                        ; $575d: $2b
    ld [hl], b                                    ; $575e: $70
    db $dd                                        ; $575f: $dd
    ld b, a                                       ; $5760: $47
    ld [hl], b                                    ; $5761: $70
    db $dd                                        ; $5762: $dd
    or c                                          ; $5763: $b1
    ld [hl], b                                    ; $5764: $70
    db $dd                                        ; $5765: $dd
    rst $08                                       ; $5766: $cf
    ld [hl], b                                    ; $5767: $70
    db $dd                                        ; $5768: $dd
    ld a, [hl-]                                   ; $5769: $3a
    ld [hl], c                                    ; $576a: $71
    db $dd                                        ; $576b: $dd
    ld e, b                                       ; $576c: $58
    ld [hl], c                                    ; $576d: $71
    db $dd                                        ; $576e: $dd
    ret nz                                        ; $576f: $c0

    ld [hl], c                                    ; $5770: $71
    db $dd                                        ; $5771: $dd
    call c, $dd71                                 ; $5772: $dc $71 $dd
    ld b, d                                       ; $5775: $42
    ld [hl], d                                    ; $5776: $72
    db $e3                                        ; $5777: $e3
    and $5e                                       ; $5778: $e6 $5e
    ld [c], a                                     ; $577a: $e2
    xor h                                         ; $577b: $ac
    ld a, a                                       ; $577c: $7f
    db $e3                                        ; $577d: $e3
    ld e, h                                       ; $577e: $5c
    ld e, a                                       ; $577f: $5f
    ld [c], a                                     ; $5780: $e2
    ret z                                         ; $5781: $c8

    ld a, a                                       ; $5782: $7f
    db $e3                                        ; $5783: $e3
    jp z, $e25f                                   ; $5784: $ca $5f $e2

    db $e4                                        ; $5787: $e4
    ld a, a                                       ; $5788: $7f
    db $e3                                        ; $5789: $e3
    add hl, sp                                    ; $578a: $39
    ld h, b                                       ; $578b: $60
    db $e3                                        ; $578c: $e3
    xor [hl]                                      ; $578d: $ae
    ld h, b                                       ; $578e: $60
    db $e3                                        ; $578f: $e3
    ret z                                         ; $5790: $c8

    ld h, b                                       ; $5791: $60
    db $e3                                        ; $5792: $e3
    dec sp                                        ; $5793: $3b
    ld h, c                                       ; $5794: $61
    db $e3                                        ; $5795: $e3
    ld d, a                                       ; $5796: $57
    ld h, c                                       ; $5797: $61
    db $e3                                        ; $5798: $e3
    rst $00                                       ; $5799: $c7
    ld h, c                                       ; $579a: $61
    db $e3                                        ; $579b: $e3
    pop hl                                        ; $579c: $e1
    ld h, c                                       ; $579d: $61
    db $e3                                        ; $579e: $e3

Call_008_579f:
    ld d, [hl]                                    ; $579f: $56
    ld h, d                                       ; $57a0: $62
    db $e3                                        ; $57a1: $e3
    ld [hl], b                                    ; $57a2: $70
    ld h, d                                       ; $57a3: $62
    db $e3                                        ; $57a4: $e3
    rst $00                                       ; $57a5: $c7
    ld h, d                                       ; $57a6: $62
    db $e3                                        ; $57a7: $e3
    push hl                                       ; $57a8: $e5
    ld h, d                                       ; $57a9: $62
    db $e3                                        ; $57aa: $e3
    ld b, e                                       ; $57ab: $43
    ld h, e                                       ; $57ac: $63
    db $e3                                        ; $57ad: $e3
    ld h, c                                       ; $57ae: $61
    ld h, e                                       ; $57af: $63
    db $e3                                        ; $57b0: $e3
    cp c                                          ; $57b1: $b9
    ld h, e                                       ; $57b2: $63
    db $e3                                        ; $57b3: $e3
    push de                                       ; $57b4: $d5
    ld h, e                                       ; $57b5: $63
    db $e3                                        ; $57b6: $e3
    ld sp, $e364                                  ; $57b7: $31 $64 $e3
    ld c, a                                       ; $57ba: $4f
    ld h, h                                       ; $57bb: $64
    db $e3                                        ; $57bc: $e3
    xor l                                         ; $57bd: $ad
    ld h, h                                       ; $57be: $64
    db $e3                                        ; $57bf: $e3
    bit 4, h                                      ; $57c0: $cb $64
    db $e3                                        ; $57c2: $e3
    inc hl                                        ; $57c3: $23
    ld h, l                                       ; $57c4: $65
    db $e3                                        ; $57c5: $e3
    ccf                                           ; $57c6: $3f
    ld h, l                                       ; $57c7: $65
    db $e3                                        ; $57c8: $e3
    sbc a                                         ; $57c9: $9f
    ld h, l                                       ; $57ca: $65
    db $e3                                        ; $57cb: $e3
    cp l                                          ; $57cc: $bd
    ld h, l                                       ; $57cd: $65
    db $e3                                        ; $57ce: $e3
    ld b, a                                       ; $57cf: $47
    ld h, [hl]                                    ; $57d0: $66
    db $e3                                        ; $57d1: $e3
    ld h, l                                       ; $57d2: $65
    ld h, [hl]                                    ; $57d3: $66
    db $e3                                        ; $57d4: $e3
    rst $30                                       ; $57d5: $f7

Jump_008_57d6:
    ld h, [hl]                                    ; $57d6: $66
    db $e3                                        ; $57d7: $e3
    inc de                                        ; $57d8: $13
    ld h, a                                       ; $57d9: $67
    db $e3                                        ; $57da: $e3
    sub a                                         ; $57db: $97
    ld h, a                                       ; $57dc: $67
    db $e3                                        ; $57dd: $e3
    or c                                          ; $57de: $b1
    ld h, a                                       ; $57df: $67
    pop hl                                        ; $57e0: $e1
    rst $28                                       ; $57e1: $ef
    ld a, a                                       ; $57e2: $7f
    db $e3                                        ; $57e3: $e3
    dec sp                                        ; $57e4: $3b
    ld l, b                                       ; $57e5: $68
    db $e3                                        ; $57e6: $e3

Jump_008_57e7:
    jp nz, $e368                                  ; $57e7: $c2 $68 $e3

    ret nc                                        ; $57ea: $d0

    ld l, b                                       ; $57eb: $68
    db $e3                                        ; $57ec: $e3
    ld d, e                                       ; $57ed: $53
    ld l, c                                       ; $57ee: $69
    db $e3                                        ; $57ef: $e3
    ld h, c                                       ; $57f0: $61
    ld l, c                                       ; $57f1: $69
    db $e3                                        ; $57f2: $e3
    and $69                                       ; $57f3: $e6 $69
    db $e3                                        ; $57f5: $e3
    db $f4                                        ; $57f6: $f4
    ld l, c                                       ; $57f7: $69
    db $e3                                        ; $57f8: $e3
    ld a, [hl]                                    ; $57f9: $7e
    ld l, d                                       ; $57fa: $6a
    db $e3                                        ; $57fb: $e3
    adc [hl]                                      ; $57fc: $8e
    ld l, d                                       ; $57fd: $6a
    db $e3                                        ; $57fe: $e3
    inc de                                        ; $57ff: $13
    ld l, e                                       ; $5800: $6b
    db $e3                                        ; $5801: $e3
    ld hl, $e36b                                  ; $5802: $21 $6b $e3
    xor b                                         ; $5805: $a8
    ld l, e                                       ; $5806: $6b
    db $e3                                        ; $5807: $e3
    or [hl]                                       ; $5808: $b6
    ld l, e                                       ; $5809: $6b
    db $e3                                        ; $580a: $e3
    jr c, jr_008_5879                             ; $580b: $38 $6c

    db $e3                                        ; $580d: $e3
    ld c, b                                       ; $580e: $48
    ld l, h                                       ; $580f: $6c
    db $e3                                        ; $5810: $e3
    call $e36c                                    ; $5811: $cd $6c $e3
    db $db                                        ; $5814: $db
    ld l, h                                       ; $5815: $6c
    db $e3                                        ; $5816: $e3
    ld c, c                                       ; $5817: $49
    ld l, l                                       ; $5818: $6d
    db $e3                                        ; $5819: $e3
    or h                                          ; $581a: $b4
    ld l, l                                       ; $581b: $6d
    db $e3                                        ; $581c: $e3
    dec e                                         ; $581d: $1d
    ld l, [hl]                                    ; $581e: $6e
    db $e3                                        ; $581f: $e3
    adc c                                         ; $5820: $89
    ld l, [hl]                                    ; $5821: $6e
    db $e3                                        ; $5822: $e3
    di                                            ; $5823: $f3

Call_008_5824:
    ld l, [hl]                                    ; $5824: $6e
    db $e3                                        ; $5825: $e3
    ld e, l                                       ; $5826: $5d
    ld l, a                                       ; $5827: $6f
    db $e3                                        ; $5828: $e3
    ret                                           ; $5829: $c9


    ld l, a                                       ; $582a: $6f
    db $e3                                        ; $582b: $e3
    ld a, [hl-]                                   ; $582c: $3a
    ld [hl], b                                    ; $582d: $70
    db $e3                                        ; $582e: $e3
    xor b                                         ; $582f: $a8
    ld [hl], b                                    ; $5830: $70
    db $e3                                        ; $5831: $e3
    inc de                                        ; $5832: $13
    ld [hl], c                                    ; $5833: $71
    db $e3                                        ; $5834: $e3
    add b                                         ; $5835: $80
    ld [hl], c                                    ; $5836: $71
    db $e3                                        ; $5837: $e3
    ldh a, [$71]                                  ; $5838: $f0 $71
    db $e3                                        ; $583a: $e3
    ld e, h                                       ; $583b: $5c
    ld [hl], d                                    ; $583c: $72
    db $e3                                        ; $583d: $e3
    ret                                           ; $583e: $c9


    ld [hl], d                                    ; $583f: $72
    db $e3                                        ; $5840: $e3
    add hl, de                                    ; $5841: $19
    ld [hl], e                                    ; $5842: $73
    db $e3                                        ; $5843: $e3
    ld a, d                                       ; $5844: $7a
    ld [hl], e                                    ; $5845: $73
    db $e3                                        ; $5846: $e3
    call nc, $e373                                ; $5847: $d4 $73 $e3
    inc h                                         ; $584a: $24
    ld [hl], h                                    ; $584b: $74
    db $e3                                        ; $584c: $e3
    add h                                         ; $584d: $84
    ld [hl], h                                    ; $584e: $74
    db $e3                                        ; $584f: $e3
    rst $18                                       ; $5850: $df
    ld [hl], h                                    ; $5851: $74
    db $e3                                        ; $5852: $e3
    jr nc, jr_008_58ca                            ; $5853: $30 $75

    db $e3                                        ; $5855: $e3
    call nz, $e375                                ; $5856: $c4 $75 $e3
    ld d, a                                       ; $5859: $57
    halt                                          ; $585a: $76

Jump_008_585b:
    db $e3                                        ; $585b: $e3
    db $eb                                        ; $585c: $eb
    halt                                          ; $585d: $76
    db $e3                                        ; $585e: $e3
    add b                                         ; $585f: $80
    ld [hl], a                                    ; $5860: $77
    db $e3                                        ; $5861: $e3
    ld d, $78                                     ; $5862: $16 $78
    db $e3                                        ; $5864: $e3
    xor h                                         ; $5865: $ac
    ld a, b                                       ; $5866: $78
    db $e3                                        ; $5867: $e3
    ld b, c                                       ; $5868: $41
    ld a, c                                       ; $5869: $79
    db $e3                                        ; $586a: $e3
    push de                                       ; $586b: $d5

Jump_008_586c:
    ld a, c                                       ; $586c: $79
    db $e3                                        ; $586d: $e3
    ld h, e                                       ; $586e: $63
    ld a, d                                       ; $586f: $7a
    db $e3                                        ; $5870: $e3
    db $f4                                        ; $5871: $f4
    ld a, d                                       ; $5872: $7a
    db $e3                                        ; $5873: $e3
    adc b                                         ; $5874: $88
    ld a, e                                       ; $5875: $7b
    db $e3                                        ; $5876: $e3
    ld a, [de]                                    ; $5877: $1a
    ld a, h                                       ; $5878: $7c

jr_008_5879:
    db $e3                                        ; $5879: $e3
    xor [hl]                                      ; $587a: $ae
    ld a, h                                       ; $587b: $7c
    db $e3                                        ; $587c: $e3
    ld b, d                                       ; $587d: $42
    ld a, l                                       ; $587e: $7d
    db $e3                                        ; $587f: $e3
    cp d                                          ; $5880: $ba
    ld a, l                                       ; $5881: $7d
    db $e3                                        ; $5882: $e3
    inc a                                         ; $5883: $3c
    ld a, [hl]                                    ; $5884: $7e
    db $e3                                        ; $5885: $e3
    cp b                                          ; $5886: $b8
    ld a, [hl]                                    ; $5887: $7e
    db $e3                                        ; $5888: $e3
    ld [hl-], a                                   ; $5889: $32
    ld a, a                                       ; $588a: $7f
    db $e4                                        ; $588b: $e4
    ld bc, $e440                                  ; $588c: $01 $40 $e4
    ld a, a                                       ; $588f: $7f
    ld b, b                                       ; $5890: $40
    db $e4                                        ; $5891: $e4
    rst $30                                       ; $5892: $f7
    ld b, b                                       ; $5893: $40
    db $e4                                        ; $5894: $e4
    ld a, b                                       ; $5895: $78
    ld b, c                                       ; $5896: $41
    db $e4                                        ; $5897: $e4
    cp $41                                        ; $5898: $fe $41
    db $e4                                        ; $589a: $e4
    add b                                         ; $589b: $80
    ld b, d                                       ; $589c: $42
    db $e4                                        ; $589d: $e4
    add hl, de                                    ; $589e: $19
    ld b, e                                       ; $589f: $43
    db $e4                                        ; $58a0: $e4
    and h                                         ; $58a1: $a4
    ld b, e                                       ; $58a2: $43

Call_008_58a3:
    db $e4                                        ; $58a3: $e4
    add hl, hl                                    ; $58a4: $29
    ld b, h                                       ; $58a5: $44
    db $e4                                        ; $58a6: $e4
    xor e                                         ; $58a7: $ab
    ld b, h                                       ; $58a8: $44
    db $e4                                        ; $58a9: $e4
    inc sp                                        ; $58aa: $33
    ld b, l                                       ; $58ab: $45
    db $e4                                        ; $58ac: $e4
    or [hl]                                       ; $58ad: $b6
    ld b, l                                       ; $58ae: $45
    db $e4                                        ; $58af: $e4
    ld b, b                                       ; $58b0: $40
    ld b, [hl]                                    ; $58b1: $46
    db $e4                                        ; $58b2: $e4
    call c, $e446                                 ; $58b3: $dc $46 $e4
    ld l, l                                       ; $58b6: $6d
    ld b, a                                       ; $58b7: $47
    db $e4                                        ; $58b8: $e4
    and $47                                       ; $58b9: $e6 $47
    db $e4                                        ; $58bb: $e4
    ld d, e                                       ; $58bc: $53
    ld c, b                                       ; $58bd: $48
    db $e4                                        ; $58be: $e4
    xor [hl]                                      ; $58bf: $ae
    ld c, b                                       ; $58c0: $48
    db $e4                                        ; $58c1: $e4
    dec bc                                        ; $58c2: $0b
    ld c, c                                       ; $58c3: $49
    db $e4                                        ; $58c4: $e4
    adc h                                         ; $58c5: $8c
    ld c, c                                       ; $58c6: $49
    db $e4                                        ; $58c7: $e4
    ld [de], a                                    ; $58c8: $12
    ld c, d                                       ; $58c9: $4a

jr_008_58ca:
    db $e4                                        ; $58ca: $e4
    sub l                                         ; $58cb: $95
    ld c, d                                       ; $58cc: $4a
    db $e4                                        ; $58cd: $e4
    inc d                                         ; $58ce: $14
    ld c, e                                       ; $58cf: $4b
    db $e4                                        ; $58d0: $e4
    sub b                                         ; $58d1: $90
    ld c, e                                       ; $58d2: $4b
    db $e4                                        ; $58d3: $e4
    add hl, bc                                    ; $58d4: $09
    ld c, h                                       ; $58d5: $4c
    db $e4                                        ; $58d6: $e4
    add a                                         ; $58d7: $87
    ld c, h                                       ; $58d8: $4c
    db $e4                                        ; $58d9: $e4
    dec b                                         ; $58da: $05
    ld c, l                                       ; $58db: $4d
    db $e4                                        ; $58dc: $e4
    sub d                                         ; $58dd: $92
    ld c, l                                       ; $58de: $4d
    db $e4                                        ; $58df: $e4

Jump_008_58e0:
    daa                                           ; $58e0: $27
    ld c, [hl]                                    ; $58e1: $4e
    db $e4                                        ; $58e2: $e4
    cp a                                          ; $58e3: $bf
    ld c, [hl]                                    ; $58e4: $4e
    db $e4                                        ; $58e5: $e4
    ld d, c                                       ; $58e6: $51
    ld c, a                                       ; $58e7: $4f
    db $e4                                        ; $58e8: $e4
    rst $10                                       ; $58e9: $d7
    ld c, a                                       ; $58ea: $4f
    db $e4                                        ; $58eb: $e4
    ld h, d                                       ; $58ec: $62
    ld d, b                                       ; $58ed: $50
    db $e4                                        ; $58ee: $e4
    ld [$e450], a                                 ; $58ef: $ea $50 $e4
    ld [hl], c                                    ; $58f2: $71
    ld d, c                                       ; $58f3: $51
    db $e4                                        ; $58f4: $e4
    rst $30                                       ; $58f5: $f7
    ld d, c                                       ; $58f6: $51
    db $e4                                        ; $58f7: $e4
    add b                                         ; $58f8: $80
    ld d, d                                       ; $58f9: $52
    db $e4                                        ; $58fa: $e4
    ld b, $53                                     ; $58fb: $06 $53
    db $e4                                        ; $58fd: $e4
    adc l                                         ; $58fe: $8d
    ld d, e                                       ; $58ff: $53
    db $e4                                        ; $5900: $e4
    ld de, $e454                                  ; $5901: $11 $54 $e4
    sub [hl]                                      ; $5904: $96
    ld d, h                                       ; $5905: $54
    db $e4                                        ; $5906: $e4
    dec c                                         ; $5907: $0d
    ld d, l                                       ; $5908: $55
    db $e4                                        ; $5909: $e4
    sbc e                                         ; $590a: $9b
    ld d, l                                       ; $590b: $55
    db $e4                                        ; $590c: $e4
    inc hl                                        ; $590d: $23
    ld d, [hl]                                    ; $590e: $56
    db $e4                                        ; $590f: $e4
    xor e                                         ; $5910: $ab
    ld d, [hl]                                    ; $5911: $56
    db $e4                                        ; $5912: $e4
    ld b, d                                       ; $5913: $42
    ld d, a                                       ; $5914: $57
    db $e4                                        ; $5915: $e4
    sbc $57                                       ; $5916: $de $57
    db $e4                                        ; $5918: $e4
    ld a, c                                       ; $5919: $79
    ld e, b                                       ; $591a: $58
    db $e4                                        ; $591b: $e4
    ld [de], a                                    ; $591c: $12
    ld e, c                                       ; $591d: $59
    db $e4                                        ; $591e: $e4
    add c                                         ; $591f: $81
    ld e, c                                       ; $5920: $59
    db $e4                                        ; $5921: $e4
    inc de                                        ; $5922: $13
    ld e, d                                       ; $5923: $5a
    db $e4                                        ; $5924: $e4
    xor [hl]                                      ; $5925: $ae

Call_008_5926:
    ld e, d                                       ; $5926: $5a
    db $e4                                        ; $5927: $e4
    ld d, [hl]                                    ; $5928: $56
    ld e, e                                       ; $5929: $5b
    db $e4                                        ; $592a: $e4
    inc bc                                        ; $592b: $03
    ld e, h                                       ; $592c: $5c
    db $e4                                        ; $592d: $e4
    xor d                                         ; $592e: $aa
    ld e, h                                       ; $592f: $5c
    db $e4                                        ; $5930: $e4
    ld d, d                                       ; $5931: $52
    ld e, l                                       ; $5932: $5d
    db $e4                                        ; $5933: $e4
    ei                                            ; $5934: $fb
    ld e, l                                       ; $5935: $5d
    db $e4                                        ; $5936: $e4
    xor l                                         ; $5937: $ad
    ld e, [hl]                                    ; $5938: $5e
    db $e4                                        ; $5939: $e4
    ld h, c                                       ; $593a: $61
    ld e, a                                       ; $593b: $5f
    db $e4                                        ; $593c: $e4
    ld b, $60                                     ; $593d: $06 $60
    db $e4                                        ; $593f: $e4
    cp c                                          ; $5940: $b9
    ld h, b                                       ; $5941: $60
    db $e4                                        ; $5942: $e4
    ld h, h                                       ; $5943: $64
    ld h, c                                       ; $5944: $61
    db $e4                                        ; $5945: $e4
    di                                            ; $5946: $f3
    ld h, c                                       ; $5947: $61
    db $e4                                        ; $5948: $e4
    add e                                         ; $5949: $83
    ld h, d                                       ; $594a: $62
    db $e4                                        ; $594b: $e4
    rrca                                          ; $594c: $0f
    ld h, e                                       ; $594d: $63
    db $e4                                        ; $594e: $e4
    sbc [hl]                                      ; $594f: $9e
    ld h, e                                       ; $5950: $63
    db $e4                                        ; $5951: $e4
    add hl, hl                                    ; $5952: $29
    ld h, h                                       ; $5953: $64
    db $e4                                        ; $5954: $e4
    or e                                          ; $5955: $b3
    ld h, h                                       ; $5956: $64
    db $e4                                        ; $5957: $e4
    ld b, d                                       ; $5958: $42
    ld h, l                                       ; $5959: $65
    db $e4                                        ; $595a: $e4
    sub $65                                       ; $595b: $d6 $65
    db $e4                                        ; $595d: $e4
    ld l, e                                       ; $595e: $6b
    ld h, [hl]                                    ; $595f: $66
    db $e4                                        ; $5960: $e4
    cp $66                                        ; $5961: $fe $66
    db $e4                                        ; $5963: $e4
    sub d                                         ; $5964: $92

Jump_008_5965:
    ld h, a                                       ; $5965: $67
    db $e4                                        ; $5966: $e4
    ld h, $68                                     ; $5967: $26 $68
    db $e4                                        ; $5969: $e4
    or a                                          ; $596a: $b7
    ld l, b                                       ; $596b: $68
    db $e4                                        ; $596c: $e4
    ld c, e                                       ; $596d: $4b
    ld l, c                                       ; $596e: $69
    db $e4                                        ; $596f: $e4
    sbc $69                                       ; $5970: $de $69
    db $e4                                        ; $5972: $e4
    ld l, [hl]                                    ; $5973: $6e
    ld l, d                                       ; $5974: $6a
    db $e4                                        ; $5975: $e4

Jump_008_5976:
    rst $38                                       ; $5976: $ff
    ld l, d                                       ; $5977: $6a
    db $e4                                        ; $5978: $e4
    sub b                                         ; $5979: $90
    ld l, e                                       ; $597a: $6b
    db $e4                                        ; $597b: $e4
    ld [hl+], a                                   ; $597c: $22
    ld l, h                                       ; $597d: $6c
    db $e4                                        ; $597e: $e4
    or e                                          ; $597f: $b3
    ld l, h                                       ; $5980: $6c
    db $e4                                        ; $5981: $e4
    ld b, l                                       ; $5982: $45
    ld l, l                                       ; $5983: $6d
    db $e3                                        ; $5984: $e3
    or h                                          ; $5985: $b4
    ld a, a                                       ; $5986: $7f
    db $e4                                        ; $5987: $e4
    pop de                                        ; $5988: $d1
    ld l, l                                       ; $5989: $6d
    db $e4                                        ; $598a: $e4
    ld e, h                                       ; $598b: $5c
    ld l, [hl]                                    ; $598c: $6e
    db $e4                                        ; $598d: $e4
    sub h                                         ; $598e: $94
    ld l, [hl]                                    ; $598f: $6e
    db $e4                                        ; $5990: $e4
    ld hl, $e46f                                  ; $5991: $21 $6f $e4
    ld d, [hl]                                    ; $5994: $56
    ld l, a                                       ; $5995: $6f
    db $e4                                        ; $5996: $e4
    ld [c], a                                     ; $5997: $e2
    ld l, a                                       ; $5998: $6f
    db $e4                                        ; $5999: $e4
    ld a, [de]                                    ; $599a: $1a
    ld [hl], b                                    ; $599b: $70
    db $e4                                        ; $599c: $e4
    and e                                         ; $599d: $a3
    ld [hl], b                                    ; $599e: $70
    db $e4                                        ; $599f: $e4
    db $db                                        ; $59a0: $db
    ld [hl], b                                    ; $59a1: $70
    db $e4                                        ; $59a2: $e4
    ld l, h                                       ; $59a3: $6c
    ld [hl], c                                    ; $59a4: $71
    db $e4                                        ; $59a5: $e4
    and c                                         ; $59a6: $a1
    ld [hl], c                                    ; $59a7: $71
    db $e4                                        ; $59a8: $e4
    inc l                                         ; $59a9: $2c
    ld [hl], d                                    ; $59aa: $72
    db $e4                                        ; $59ab: $e4
    ld h, h                                       ; $59ac: $64

Call_008_59ad:
    ld [hl], d                                    ; $59ad: $72
    db $e4                                        ; $59ae: $e4
    db $f4                                        ; $59af: $f4
    ld [hl], d                                    ; $59b0: $72
    db $e4                                        ; $59b1: $e4
    ld d, e                                       ; $59b2: $53
    ld [hl], e                                    ; $59b3: $73
    db $e4                                        ; $59b4: $e4
    db $e3                                        ; $59b5: $e3
    ld [hl], e                                    ; $59b6: $73
    db $e4                                        ; $59b7: $e4
    ld b, b                                       ; $59b8: $40
    ld [hl], h                                    ; $59b9: $74
    db $e4                                        ; $59ba: $e4
    rst $08                                       ; $59bb: $cf
    ld [hl], h                                    ; $59bc: $74
    db $e4                                        ; $59bd: $e4
    inc l                                         ; $59be: $2c
    ld [hl], l                                    ; $59bf: $75
    db $e4                                        ; $59c0: $e4
    cp d                                          ; $59c1: $ba
    ld [hl], l                                    ; $59c2: $75
    db $e4                                        ; $59c3: $e4
    ld a, [de]                                    ; $59c4: $1a
    halt                                          ; $59c5: $76
    db $e4                                        ; $59c6: $e4
    xor e                                         ; $59c7: $ab
    halt                                          ; $59c8: $76
    db $e4                                        ; $59c9: $e4
    add hl, bc                                    ; $59ca: $09
    ld [hl], a                                    ; $59cb: $77
    db $e4                                        ; $59cc: $e4
    sub l                                         ; $59cd: $95
    ld [hl], a                                    ; $59ce: $77
    db $e4                                        ; $59cf: $e4
    pop af                                        ; $59d0: $f1
    ld [hl], a                                    ; $59d1: $77
    db $e4                                        ; $59d2: $e4
    add c                                         ; $59d3: $81
    ld a, b                                       ; $59d4: $78
    db $e4                                        ; $59d5: $e4
    pop hl                                        ; $59d6: $e1
    ld a, b                                       ; $59d7: $78
    db $e4                                        ; $59d8: $e4
    ld l, d                                       ; $59d9: $6a
    ld a, c                                       ; $59da: $79
    db $e4                                        ; $59db: $e4
    push bc                                       ; $59dc: $c5
    ld a, c                                       ; $59dd: $79
    db $e4                                        ; $59de: $e4
    ld c, [hl]                                    ; $59df: $4e
    ld a, d                                       ; $59e0: $7a
    db $e4                                        ; $59e1: $e4
    and a                                         ; $59e2: $a7
    ld a, d                                       ; $59e3: $7a
    db $e4                                        ; $59e4: $e4
    ld l, $7b                                     ; $59e5: $2e $7b
    db $e4                                        ; $59e7: $e4
    add l                                         ; $59e8: $85
    ld a, e                                       ; $59e9: $7b

Jump_008_59ea:
    db $e4                                        ; $59ea: $e4
    rrca                                          ; $59eb: $0f
    ld a, h                                       ; $59ec: $7c
    db $e4                                        ; $59ed: $e4
    ld l, d                                       ; $59ee: $6a
    ld a, h                                       ; $59ef: $7c
    db $e4                                        ; $59f0: $e4
    ei                                            ; $59f1: $fb
    ld a, h                                       ; $59f2: $7c
    db $e4                                        ; $59f3: $e4
    ld e, d                                       ; $59f4: $5a
    ld a, l                                       ; $59f5: $7d
    db $e4                                        ; $59f6: $e4
    db $e3                                        ; $59f7: $e3
    ld a, l                                       ; $59f8: $7d
    db $e4                                        ; $59f9: $e4
    dec a                                         ; $59fa: $3d

Jump_008_59fb:
    ld a, [hl]                                    ; $59fb: $7e
    db $e4                                        ; $59fc: $e4
    ret z                                         ; $59fd: $c8

    ld a, [hl]                                    ; $59fe: $7e
    db $e4                                        ; $59ff: $e4
    daa                                           ; $5a00: $27
    ld a, a                                       ; $5a01: $7f
    push hl                                       ; $5a02: $e5
    ld bc, $e540                                  ; $5a03: $01 $40 $e5
    ld l, h                                       ; $5a06: $6c
    ld b, b                                       ; $5a07: $40
    push hl                                       ; $5a08: $e5
    sub $40                                       ; $5a09: $d6 $40
    push hl                                       ; $5a0b: $e5
    ld b, [hl]                                    ; $5a0c: $46
    ld b, c                                       ; $5a0d: $41
    push hl                                       ; $5a0e: $e5
    xor a                                         ; $5a0f: $af
    ld b, c                                       ; $5a10: $41
    push hl                                       ; $5a11: $e5
    inc e                                         ; $5a12: $1c
    ld b, d                                       ; $5a13: $42
    push hl                                       ; $5a14: $e5
    adc [hl]                                      ; $5a15: $8e
    ld b, d                                       ; $5a16: $42
    push hl                                       ; $5a17: $e5
    dec bc                                        ; $5a18: $0b
    ld b, e                                       ; $5a19: $43
    push hl                                       ; $5a1a: $e5
    add a                                         ; $5a1b: $87
    ld b, e                                       ; $5a1c: $43
    push hl                                       ; $5a1d: $e5
    rst $38                                       ; $5a1e: $ff
    ld b, e                                       ; $5a1f: $43
    push hl                                       ; $5a20: $e5
    ld a, c                                       ; $5a21: $79
    ld b, h                                       ; $5a22: $44
    push hl                                       ; $5a23: $e5
    ld a, [c]                                     ; $5a24: $f2
    ld b, h                                       ; $5a25: $44
    push hl                                       ; $5a26: $e5
    ld h, a                                       ; $5a27: $67
    ld b, l                                       ; $5a28: $45
    db $e4                                        ; $5a29: $e4
    sbc a                                         ; $5a2a: $9f
    ld a, a                                       ; $5a2b: $7f
    push hl                                       ; $5a2c: $e5
    ldh [rLYC], a                                 ; $5a2d: $e0 $45
    push hl                                       ; $5a2f: $e5
    ld c, d                                       ; $5a30: $4a
    ld b, [hl]                                    ; $5a31: $46
    push hl                                       ; $5a32: $e5
    xor d                                         ; $5a33: $aa

Call_008_5a34:
    ld b, [hl]                                    ; $5a34: $46
    push hl                                       ; $5a35: $e5
    dec b                                         ; $5a36: $05
    ld b, a                                       ; $5a37: $47
    push hl                                       ; $5a38: $e5
    halt                                          ; $5a39: $76
    ld b, a                                       ; $5a3a: $47
    push hl                                       ; $5a3b: $e5
    rst $10                                       ; $5a3c: $d7
    ld b, a                                       ; $5a3d: $47
    push hl                                       ; $5a3e: $e5
    dec a                                         ; $5a3f: $3d
    ld c, b                                       ; $5a40: $48
    push hl                                       ; $5a41: $e5
    or d                                          ; $5a42: $b2
    ld c, b                                       ; $5a43: $48
    push hl                                       ; $5a44: $e5
    add hl, hl                                    ; $5a45: $29
    ld c, c                                       ; $5a46: $49
    push hl                                       ; $5a47: $e5
    sbc a                                         ; $5a48: $9f
    ld c, c                                       ; $5a49: $49
    push hl                                       ; $5a4a: $e5
    inc de                                        ; $5a4b: $13
    ld c, d                                       ; $5a4c: $4a
    push hl                                       ; $5a4d: $e5
    add e                                         ; $5a4e: $83
    ld c, d                                       ; $5a4f: $4a
    push hl                                       ; $5a50: $e5
    nop                                           ; $5a51: $00
    ld c, e                                       ; $5a52: $4b
    push hl                                       ; $5a53: $e5
    halt                                          ; $5a54: $76
    ld c, e                                       ; $5a55: $4b
    push hl                                       ; $5a56: $e5
    push hl                                       ; $5a57: $e5
    ld c, e                                       ; $5a58: $4b
    push hl                                       ; $5a59: $e5
    ld c, [hl]                                    ; $5a5a: $4e
    ld c, h                                       ; $5a5b: $4c
    push hl                                       ; $5a5c: $e5
    or l                                          ; $5a5d: $b5
    ld c, h                                       ; $5a5e: $4c
    push hl                                       ; $5a5f: $e5
    rla                                           ; $5a60: $17
    ld c, l                                       ; $5a61: $4d
    push hl                                       ; $5a62: $e5
    ld a, d                                       ; $5a63: $7a
    ld c, l                                       ; $5a64: $4d
    push hl                                       ; $5a65: $e5
    ld [c], a                                     ; $5a66: $e2
    ld c, l                                       ; $5a67: $4d
    push hl                                       ; $5a68: $e5
    ld b, h                                       ; $5a69: $44
    ld c, [hl]                                    ; $5a6a: $4e
    push hl                                       ; $5a6b: $e5
    xor b                                         ; $5a6c: $a8
    ld c, [hl]                                    ; $5a6d: $4e
    push hl                                       ; $5a6e: $e5
    inc h                                         ; $5a6f: $24
    ld c, a                                       ; $5a70: $4f
    push hl                                       ; $5a71: $e5

Jump_008_5a72:
    and b                                         ; $5a72: $a0
    ld c, a                                       ; $5a73: $4f
    push hl                                       ; $5a74: $e5
    dec de                                        ; $5a75: $1b
    ld d, b                                       ; $5a76: $50
    push hl                                       ; $5a77: $e5
    sub [hl]                                      ; $5a78: $96
    ld d, b                                       ; $5a79: $50
    push hl                                       ; $5a7a: $e5
    ld [de], a                                    ; $5a7b: $12
    ld d, c                                       ; $5a7c: $51
    push hl                                       ; $5a7d: $e5
    adc e                                         ; $5a7e: $8b
    ld d, c                                       ; $5a7f: $51
    push hl                                       ; $5a80: $e5
    rlca                                          ; $5a81: $07
    ld d, d                                       ; $5a82: $52

Jump_008_5a83:
    push hl                                       ; $5a83: $e5
    ld h, a                                       ; $5a84: $67
    ld d, d                                       ; $5a85: $52
    push hl                                       ; $5a86: $e5
    ret c                                         ; $5a87: $d8

    ld d, d                                       ; $5a88: $52
    push hl                                       ; $5a89: $e5
    ld b, [hl]                                    ; $5a8a: $46
    ld d, e                                       ; $5a8b: $53
    push hl                                       ; $5a8c: $e5
    xor e                                         ; $5a8d: $ab
    ld d, e                                       ; $5a8e: $53
    push hl                                       ; $5a8f: $e5
    dec e                                         ; $5a90: $1d
    ld d, h                                       ; $5a91: $54
    push hl                                       ; $5a92: $e5
    adc h                                         ; $5a93: $8c
    ld d, h                                       ; $5a94: $54
    push hl                                       ; $5a95: $e5
    db $ed                                        ; $5a96: $ed
    ld d, h                                       ; $5a97: $54
    push hl                                       ; $5a98: $e5
    ld l, d                                       ; $5a99: $6a
    ld d, l                                       ; $5a9a: $55
    push hl                                       ; $5a9b: $e5
    rst $20                                       ; $5a9c: $e7
    ld d, l                                       ; $5a9d: $55
    push hl                                       ; $5a9e: $e5
    ld h, e                                       ; $5a9f: $63
    ld d, [hl]                                    ; $5aa0: $56
    push hl                                       ; $5aa1: $e5
    call c, $e556                                 ; $5aa2: $dc $56 $e5
    ld c, d                                       ; $5aa5: $4a
    ld d, a                                       ; $5aa6: $57
    push hl                                       ; $5aa7: $e5
    ret nz                                        ; $5aa8: $c0

    ld d, a                                       ; $5aa9: $57
    push hl                                       ; $5aaa: $e5
    ld l, $58                                     ; $5aab: $2e $58
    push hl                                       ; $5aad: $e5
    and b                                         ; $5aae: $a0
    ld e, b                                       ; $5aaf: $58
    db $e3                                        ; $5ab0: $e3
    db $ec                                        ; $5ab1: $ec
    ld a, a                                       ; $5ab2: $7f

Call_008_5ab3:
    push hl                                       ; $5ab3: $e5
    ld a, [de]                                    ; $5ab4: $1a
    ld e, c                                       ; $5ab5: $59
    push hl                                       ; $5ab6: $e5
    adc a                                         ; $5ab7: $8f
    ld e, c                                       ; $5ab8: $59
    push hl                                       ; $5ab9: $e5
    sbc l                                         ; $5aba: $9d
    ld e, c                                       ; $5abb: $59
    push hl                                       ; $5abc: $e5
    inc c                                         ; $5abd: $0c
    ld e, d                                       ; $5abe: $5a
    push hl                                       ; $5abf: $e5
    ld a, [de]                                    ; $5ac0: $1a
    ld e, d                                       ; $5ac1: $5a
    push hl                                       ; $5ac2: $e5
    sub c                                         ; $5ac3: $91
    ld e, d                                       ; $5ac4: $5a
    push hl                                       ; $5ac5: $e5
    sbc a                                         ; $5ac6: $9f
    ld e, d                                       ; $5ac7: $5a
    push hl                                       ; $5ac8: $e5
    ld [de], a                                    ; $5ac9: $12
    ld e, e                                       ; $5aca: $5b
    push hl                                       ; $5acb: $e5
    jr nz, jr_008_5b29                            ; $5acc: $20 $5b

    push hl                                       ; $5ace: $e5
    sub b                                         ; $5acf: $90
    ld e, e                                       ; $5ad0: $5b
    push hl                                       ; $5ad1: $e5
    sbc [hl]                                      ; $5ad2: $9e
    ld e, e                                       ; $5ad3: $5b
    push hl                                       ; $5ad4: $e5
    rla                                           ; $5ad5: $17
    ld e, h                                       ; $5ad6: $5c
    push hl                                       ; $5ad7: $e5
    dec h                                         ; $5ad8: $25
    ld e, h                                       ; $5ad9: $5c
    push hl                                       ; $5ada: $e5
    and l                                         ; $5adb: $a5
    ld e, h                                       ; $5adc: $5c
    push hl                                       ; $5add: $e5
    or l                                          ; $5ade: $b5
    ld e, h                                       ; $5adf: $5c
    push hl                                       ; $5ae0: $e5
    ld [hl], $5d                                  ; $5ae1: $36 $5d
    push hl                                       ; $5ae3: $e5
    ld b, [hl]                                    ; $5ae4: $46
    ld e, l                                       ; $5ae5: $5d
    push hl                                       ; $5ae6: $e5
    jp nz, $e55d                                  ; $5ae7: $c2 $5d $e5

    jp nc, $e55d                                  ; $5aea: $d2 $5d $e5

    ld c, a                                       ; $5aed: $4f
    ld e, [hl]                                    ; $5aee: $5e
    push hl                                       ; $5aef: $e5
    ld e, a                                       ; $5af0: $5f
    ld e, [hl]                                    ; $5af1: $5e
    push hl                                       ; $5af2: $e5
    db $dd                                        ; $5af3: $dd
    ld e, [hl]                                    ; $5af4: $5e
    push hl                                       ; $5af5: $e5
    db $ed                                        ; $5af6: $ed
    ld e, [hl]                                    ; $5af7: $5e
    push hl                                       ; $5af8: $e5

Jump_008_5af9:
    ld h, e                                       ; $5af9: $63
    ld e, a                                       ; $5afa: $5f
    push hl                                       ; $5afb: $e5
    ld [hl], e                                    ; $5afc: $73
    ld e, a                                       ; $5afd: $5f
    push hl                                       ; $5afe: $e5
    pop af                                        ; $5aff: $f1
    ld e, a                                       ; $5b00: $5f
    push hl                                       ; $5b01: $e5
    ld bc, $e560                                  ; $5b02: $01 $60 $e5
    ld a, b                                       ; $5b05: $78
    ld h, b                                       ; $5b06: $60
    push hl                                       ; $5b07: $e5
    adc b                                         ; $5b08: $88
    ld h, b                                       ; $5b09: $60

Jump_008_5b0a:
    push hl                                       ; $5b0a: $e5
    ld bc, $e561                                  ; $5b0b: $01 $61 $e5
    ld de, $e561                                  ; $5b0e: $11 $61 $e5
    add h                                         ; $5b11: $84
    ld h, c                                       ; $5b12: $61
    push hl                                       ; $5b13: $e5
    sub h                                         ; $5b14: $94
    ld h, c                                       ; $5b15: $61
    push hl                                       ; $5b16: $e5
    inc b                                         ; $5b17: $04
    ld h, d                                       ; $5b18: $62
    push hl                                       ; $5b19: $e5
    inc d                                         ; $5b1a: $14
    ld h, d                                       ; $5b1b: $62
    push hl                                       ; $5b1c: $e5
    sbc b                                         ; $5b1d: $98
    ld h, d                                       ; $5b1e: $62
    push hl                                       ; $5b1f: $e5
    xor b                                         ; $5b20: $a8
    ld h, d                                       ; $5b21: $62
    push hl                                       ; $5b22: $e5
    ld d, $63                                     ; $5b23: $16 $63
    push hl                                       ; $5b25: $e5
    ld h, $63                                     ; $5b26: $26 $63
    push hl                                       ; $5b28: $e5

jr_008_5b29:
    and [hl]                                      ; $5b29: $a6
    ld h, e                                       ; $5b2a: $63
    push hl                                       ; $5b2b: $e5
    or [hl]                                       ; $5b2c: $b6
    ld h, e                                       ; $5b2d: $63
    push hl                                       ; $5b2e: $e5
    ld a, [hl+]                                   ; $5b2f: $2a
    ld h, h                                       ; $5b30: $64
    push hl                                       ; $5b31: $e5
    jr c, jr_008_5b98                             ; $5b32: $38 $64

    push hl                                       ; $5b34: $e5
    xor h                                         ; $5b35: $ac

Call_008_5b36:
    ld h, h                                       ; $5b36: $64
    push hl                                       ; $5b37: $e5
    cp d                                          ; $5b38: $ba
    ld h, h                                       ; $5b39: $64
    push hl                                       ; $5b3a: $e5
    add hl, hl                                    ; $5b3b: $29
    ld h, l                                       ; $5b3c: $65
    push hl                                       ; $5b3d: $e5
    scf                                           ; $5b3e: $37
    ld h, l                                       ; $5b3f: $65
    push hl                                       ; $5b40: $e5
    and a                                         ; $5b41: $a7
    ld h, l                                       ; $5b42: $65
    push hl                                       ; $5b43: $e5
    or l                                          ; $5b44: $b5
    ld h, l                                       ; $5b45: $65
    push hl                                       ; $5b46: $e5
    jr z, jr_008_5baf                             ; $5b47: $28 $66

    push hl                                       ; $5b49: $e5
    ld [hl], $66                                  ; $5b4a: $36 $66
    push hl                                       ; $5b4c: $e5
    and l                                         ; $5b4d: $a5
    ld h, [hl]                                    ; $5b4e: $66
    push hl                                       ; $5b4f: $e5
    or e                                          ; $5b50: $b3
    ld h, [hl]                                    ; $5b51: $66
    push hl                                       ; $5b52: $e5
    ld [hl+], a                                   ; $5b53: $22
    ld h, a                                       ; $5b54: $67
    push hl                                       ; $5b55: $e5
    jr nc, jr_008_5bbf                            ; $5b56: $30 $67

    push hl                                       ; $5b58: $e5
    or d                                          ; $5b59: $b2
    ld h, a                                       ; $5b5a: $67
    push hl                                       ; $5b5b: $e5
    jp nz, $e567                                  ; $5b5c: $c2 $67 $e5

    ld b, e                                       ; $5b5f: $43
    ld l, b                                       ; $5b60: $68
    push hl                                       ; $5b61: $e5
    ld d, e                                       ; $5b62: $53
    ld l, b                                       ; $5b63: $68
    push hl                                       ; $5b64: $e5
    rst $08                                       ; $5b65: $cf
    ld l, b                                       ; $5b66: $68
    push hl                                       ; $5b67: $e5
    rst $18                                       ; $5b68: $df
    ld l, b                                       ; $5b69: $68
    push hl                                       ; $5b6a: $e5
    ld e, [hl]                                    ; $5b6b: $5e
    ld l, c                                       ; $5b6c: $69
    push hl                                       ; $5b6d: $e5
    ld l, [hl]                                    ; $5b6e: $6e
    ld l, c                                       ; $5b6f: $69
    push hl                                       ; $5b70: $e5
    rst $28                                       ; $5b71: $ef
    ld l, c                                       ; $5b72: $69
    push hl                                       ; $5b73: $e5
    rst $38                                       ; $5b74: $ff
    ld l, c                                       ; $5b75: $69
    push hl                                       ; $5b76: $e5
    ld a, e                                       ; $5b77: $7b
    ld l, d                                       ; $5b78: $6a
    push hl                                       ; $5b79: $e5
    adc e                                         ; $5b7a: $8b
    ld l, d                                       ; $5b7b: $6a
    push hl                                       ; $5b7c: $e5
    ld a, [bc]                                    ; $5b7d: $0a

Jump_008_5b7e:
    ld l, e                                       ; $5b7e: $6b
    push hl                                       ; $5b7f: $e5
    ld a, [de]                                    ; $5b80: $1a
    ld l, e                                       ; $5b81: $6b
    push hl                                       ; $5b82: $e5
    sub e                                         ; $5b83: $93
    ld l, e                                       ; $5b84: $6b
    push hl                                       ; $5b85: $e5
    and e                                         ; $5b86: $a3
    ld l, e                                       ; $5b87: $6b
    push hl                                       ; $5b88: $e5
    inc e                                         ; $5b89: $1c
    ld l, h                                       ; $5b8a: $6c
    push hl                                       ; $5b8b: $e5
    inc l                                         ; $5b8c: $2c
    ld l, h                                       ; $5b8d: $6c
    push hl                                       ; $5b8e: $e5

Jump_008_5b8f:
    sbc a                                         ; $5b8f: $9f
    ld l, h                                       ; $5b90: $6c
    push hl                                       ; $5b91: $e5
    xor a                                         ; $5b92: $af
    ld l, h                                       ; $5b93: $6c
    push hl                                       ; $5b94: $e5
    inc hl                                        ; $5b95: $23
    ld l, l                                       ; $5b96: $6d
    push hl                                       ; $5b97: $e5

jr_008_5b98:
    inc sp                                        ; $5b98: $33
    ld l, l                                       ; $5b99: $6d
    push hl                                       ; $5b9a: $e5
    xor h                                         ; $5b9b: $ac
    ld l, l                                       ; $5b9c: $6d
    push hl                                       ; $5b9d: $e5
    cp h                                          ; $5b9e: $bc
    ld l, l                                       ; $5b9f: $6d
    push hl                                       ; $5ba0: $e5
    jr nc, jr_008_5c11                            ; $5ba1: $30 $6e

    push hl                                       ; $5ba3: $e5
    ld b, b                                       ; $5ba4: $40
    ld l, [hl]                                    ; $5ba5: $6e
    push hl                                       ; $5ba6: $e5
    cp d                                          ; $5ba7: $ba
    ld l, [hl]                                    ; $5ba8: $6e
    push hl                                       ; $5ba9: $e5
    jp z, $e56e                                   ; $5baa: $ca $6e $e5

    ld b, l                                       ; $5bad: $45
    ld l, a                                       ; $5bae: $6f

jr_008_5baf:
    push hl                                       ; $5baf: $e5
    ld h, d                                       ; $5bb0: $62
    ld l, a                                       ; $5bb1: $6f
    push hl                                       ; $5bb2: $e5
    rst $10                                       ; $5bb3: $d7
    ld l, a                                       ; $5bb4: $6f
    push hl                                       ; $5bb5: $e5
    db $f4                                        ; $5bb6: $f4
    ld l, a                                       ; $5bb7: $6f
    push hl                                       ; $5bb8: $e5
    ld h, l                                       ; $5bb9: $65
    ld [hl], b                                    ; $5bba: $70
    push hl                                       ; $5bbb: $e5
    ld a, [hl]                                    ; $5bbc: $7e

Call_008_5bbd:
    ld [hl], b                                    ; $5bbd: $70
    push hl                                       ; $5bbe: $e5

jr_008_5bbf:
    rst $30                                       ; $5bbf: $f7
    ld [hl], b                                    ; $5bc0: $70
    push hl                                       ; $5bc1: $e5
    inc d                                         ; $5bc2: $14
    ld [hl], c                                    ; $5bc3: $71
    push hl                                       ; $5bc4: $e5
    adc d                                         ; $5bc5: $8a
    ld [hl], c                                    ; $5bc6: $71
    push hl                                       ; $5bc7: $e5
    and a                                         ; $5bc8: $a7
    ld [hl], c                                    ; $5bc9: $71
    push hl                                       ; $5bca: $e5
    dec d                                         ; $5bcb: $15
    ld [hl], d                                    ; $5bcc: $72
    push hl                                       ; $5bcd: $e5
    ld l, $72                                     ; $5bce: $2e $72
    push hl                                       ; $5bd0: $e5
    and [hl]                                      ; $5bd1: $a6
    ld [hl], d                                    ; $5bd2: $72
    push hl                                       ; $5bd3: $e5
    jp $e572                                      ; $5bd4: $c3 $72 $e5


    inc a                                         ; $5bd7: $3c
    ld [hl], e                                    ; $5bd8: $73
    push hl                                       ; $5bd9: $e5
    ld d, l                                       ; $5bda: $55
    ld [hl], e                                    ; $5bdb: $73
    push hl                                       ; $5bdc: $e5
    ret z                                         ; $5bdd: $c8

    ld [hl], e                                    ; $5bde: $73
    push hl                                       ; $5bdf: $e5
    jp hl                                         ; $5be0: $e9


    ld [hl], e                                    ; $5be1: $73
    push hl                                       ; $5be2: $e5
    ld e, h                                       ; $5be3: $5c
    ld [hl], h                                    ; $5be4: $74
    push hl                                       ; $5be5: $e5
    ld a, e                                       ; $5be6: $7b
    ld [hl], h                                    ; $5be7: $74
    push hl                                       ; $5be8: $e5
    xor $74                                       ; $5be9: $ee $74
    push hl                                       ; $5beb: $e5
    rlca                                          ; $5bec: $07
    ld [hl], l                                    ; $5bed: $75
    push hl                                       ; $5bee: $e5
    add b                                         ; $5bef: $80
    ld [hl], l                                    ; $5bf0: $75
    push hl                                       ; $5bf1: $e5
    and c                                         ; $5bf2: $a1
    ld [hl], l                                    ; $5bf3: $75
    push hl                                       ; $5bf4: $e5
    rla                                           ; $5bf5: $17
    halt                                          ; $5bf6: $76
    push hl                                       ; $5bf7: $e5
    ld [hl], $76                                  ; $5bf8: $36 $76
    push hl                                       ; $5bfa: $e5
    and l                                         ; $5bfb: $a5
    halt                                          ; $5bfc: $76
    push hl                                       ; $5bfd: $e5
    cp [hl]                                       ; $5bfe: $be
    halt                                          ; $5bff: $76
    push hl                                       ; $5c00: $e5
    inc h                                         ; $5c01: $24
    ld [hl], a                                    ; $5c02: $77
    push hl                                       ; $5c03: $e5

Jump_008_5c04:
    dec a                                         ; $5c04: $3d
    ld [hl], a                                    ; $5c05: $77
    push hl                                       ; $5c06: $e5
    or c                                          ; $5c07: $b1
    ld [hl], a                                    ; $5c08: $77
    push hl                                       ; $5c09: $e5
    call z, $e577                                 ; $5c0a: $cc $77 $e5
    add hl, sp                                    ; $5c0d: $39
    ld a, b                                       ; $5c0e: $78
    push hl                                       ; $5c0f: $e5
    ld d, h                                       ; $5c10: $54

jr_008_5c11:
    ld a, b                                       ; $5c11: $78
    push hl                                       ; $5c12: $e5
    or e                                          ; $5c13: $b3
    ld a, b                                       ; $5c14: $78

Jump_008_5c15:
    push hl                                       ; $5c15: $e5
    call z, $e578                                 ; $5c16: $cc $78 $e5
    ld a, [hl-]                                   ; $5c19: $3a
    ld a, c                                       ; $5c1a: $79
    push hl                                       ; $5c1b: $e5
    ld d, a                                       ; $5c1c: $57
    ld a, c                                       ; $5c1d: $79
    push hl                                       ; $5c1e: $e5
    cp a                                          ; $5c1f: $bf
    ld a, c                                       ; $5c20: $79
    push hl                                       ; $5c21: $e5
    ret c                                         ; $5c22: $d8

    ld a, c                                       ; $5c23: $79
    push hl                                       ; $5c24: $e5
    ld a, $7a                                     ; $5c25: $3e $7a
    push hl                                       ; $5c27: $e5
    ld e, e                                       ; $5c28: $5b
    ld a, d                                       ; $5c29: $7a
    push hl                                       ; $5c2a: $e5
    push de                                       ; $5c2b: $d5
    ld a, d                                       ; $5c2c: $7a
    push hl                                       ; $5c2d: $e5
    ld a, [c]                                     ; $5c2e: $f2
    ld a, d                                       ; $5c2f: $7a
    push hl                                       ; $5c30: $e5
    ld h, a                                       ; $5c31: $67
    ld a, e                                       ; $5c32: $7b
    push hl                                       ; $5c33: $e5
    add h                                         ; $5c34: $84
    ld a, e                                       ; $5c35: $7b
    push hl                                       ; $5c36: $e5
    push af                                       ; $5c37: $f5
    ld a, e                                       ; $5c38: $7b
    push hl                                       ; $5c39: $e5
    ld c, $7c                                     ; $5c3a: $0e $7c
    push hl                                       ; $5c3c: $e5
    add [hl]                                      ; $5c3d: $86
    ld a, h                                       ; $5c3e: $7c
    push hl                                       ; $5c3f: $e5
    and e                                         ; $5c40: $a3
    ld a, h                                       ; $5c41: $7c
    push hl                                       ; $5c42: $e5
    add hl, de                                    ; $5c43: $19
    ld a, l                                       ; $5c44: $7d
    push hl                                       ; $5c45: $e5

Call_008_5c46:
    ld [hl], $7d                                  ; $5c46: $36 $7d
    push hl                                       ; $5c48: $e5
    and h                                         ; $5c49: $a4
    ld a, l                                       ; $5c4a: $7d
    push hl                                       ; $5c4b: $e5
    cp l                                          ; $5c4c: $bd
    ld a, l                                       ; $5c4d: $7d
    push hl                                       ; $5c4e: $e5
    inc [hl]                                      ; $5c4f: $34
    ld a, [hl]                                    ; $5c50: $7e
    push hl                                       ; $5c51: $e5
    ld d, c                                       ; $5c52: $51
    ld a, [hl]                                    ; $5c53: $7e
    push hl                                       ; $5c54: $e5
    jp z, $e57e                                   ; $5c55: $ca $7e $e5

    db $e3                                        ; $5c58: $e3
    ld a, [hl]                                    ; $5c59: $7e
    push hl                                       ; $5c5a: $e5
    ld d, [hl]                                    ; $5c5b: $56
    ld a, a                                       ; $5c5c: $7f
    push hl                                       ; $5c5d: $e5
    ld [hl], l                                    ; $5c5e: $75
    ld a, a                                       ; $5c5f: $7f
    and $01                                       ; $5c60: $e6 $01
    ld b, b                                       ; $5c62: $40
    and $1c                                       ; $5c63: $e6 $1c
    ld b, b                                       ; $5c65: $40
    and $8f                                       ; $5c66: $e6 $8f
    ld b, b                                       ; $5c68: $40
    and $a8                                       ; $5c69: $e6 $a8
    ld b, b                                       ; $5c6b: $40
    and $21                                       ; $5c6c: $e6 $21
    ld b, c                                       ; $5c6e: $41
    and $40                                       ; $5c6f: $e6 $40
    ld b, c                                       ; $5c71: $41
    and $b6                                       ; $5c72: $e6 $b6
    ld b, c                                       ; $5c74: $41
    and $d1                                       ; $5c75: $e6 $d1
    ld b, c                                       ; $5c77: $41
    and $40                                       ; $5c78: $e6 $40
    ld b, d                                       ; $5c7a: $42
    and $59                                       ; $5c7b: $e6 $59
    ld b, d                                       ; $5c7d: $42
    and $bf                                       ; $5c7e: $e6 $bf
    ld b, d                                       ; $5c80: $42
    and $d8                                       ; $5c81: $e6 $d8
    ld b, d                                       ; $5c83: $42
    and $4c                                       ; $5c84: $e6 $4c
    ld b, e                                       ; $5c86: $43
    and $67                                       ; $5c87: $e6 $67
    ld b, e                                       ; $5c89: $43
    and $d4                                       ; $5c8a: $e6 $d4
    ld b, e                                       ; $5c8c: $43
    and $ef                                       ; $5c8d: $e6 $ef
    ld b, e                                       ; $5c8f: $43
    and $4e                                       ; $5c90: $e6 $4e
    ld b, h                                       ; $5c92: $44
    and $67                                       ; $5c93: $e6 $67
    ld b, h                                       ; $5c95: $44
    and $d5                                       ; $5c96: $e6 $d5
    ld b, h                                       ; $5c98: $44
    and $f2                                       ; $5c99: $e6 $f2
    ld b, h                                       ; $5c9b: $44

Jump_008_5c9c:
    and $5a                                       ; $5c9c: $e6 $5a
    ld b, l                                       ; $5c9e: $45
    and $73                                       ; $5c9f: $e6 $73
    ld b, l                                       ; $5ca1: $45
    and $d9                                       ; $5ca2: $e6 $d9
    ld b, l                                       ; $5ca4: $45
    and $f6                                       ; $5ca5: $e6 $f6
    ld b, l                                       ; $5ca7: $45
    and $1b                                       ; $5ca8: $e6 $1b
    ld b, [hl]                                    ; $5caa: $46
    and $40                                       ; $5cab: $e6 $40
    ld b, [hl]                                    ; $5cad: $46
    and $65                                       ; $5cae: $e6 $65
    ld b, [hl]                                    ; $5cb0: $46
    and $8a                                       ; $5cb1: $e6 $8a
    ld b, [hl]                                    ; $5cb3: $46
    and $af                                       ; $5cb4: $e6 $af
    ld b, [hl]                                    ; $5cb6: $46
    and $d4                                       ; $5cb7: $e6 $d4
    ld b, [hl]                                    ; $5cb9: $46
    and $f9                                       ; $5cba: $e6 $f9
    ld b, [hl]                                    ; $5cbc: $46
    and $1e                                       ; $5cbd: $e6 $1e
    ld b, a                                       ; $5cbf: $47
    and $43                                       ; $5cc0: $e6 $43
    ld b, a                                       ; $5cc2: $47
    and $68                                       ; $5cc3: $e6 $68
    ld b, a                                       ; $5cc5: $47
    and $91                                       ; $5cc6: $e6 $91
    ld b, a                                       ; $5cc8: $47
    and $bc                                       ; $5cc9: $e6 $bc
    ld b, a                                       ; $5ccb: $47
    and $e7                                       ; $5ccc: $e6 $e7
    ld b, a                                       ; $5cce: $47

Call_008_5ccf:
    and $0e                                       ; $5ccf: $e6 $0e
    ld c, b                                       ; $5cd1: $48
    and $3b                                       ; $5cd2: $e6 $3b
    ld c, b                                       ; $5cd4: $48
    and $c5                                       ; $5cd5: $e6 $c5
    ld c, b                                       ; $5cd7: $48
    and $4b                                       ; $5cd8: $e6 $4b
    ld c, c                                       ; $5cda: $49
    and $cd                                       ; $5cdb: $e6 $cd
    ld c, c                                       ; $5cdd: $49
    and $40                                       ; $5cde: $e6 $40
    ld c, d                                       ; $5ce0: $4a
    and $a5                                       ; $5ce1: $e6 $a5
    ld c, d                                       ; $5ce3: $4a
    and $0a                                       ; $5ce4: $e6 $0a
    ld c, e                                       ; $5ce6: $4b
    and $61                                       ; $5ce7: $e6 $61
    ld c, e                                       ; $5ce9: $4b

    db $e6, $cc, $4b

    and $36                                       ; $5ced: $e6 $36
    ld c, h                                       ; $5cef: $4c
    and $a2                                       ; $5cf0: $e6 $a2
    ld c, h                                       ; $5cf2: $4c
    and $0b                                       ; $5cf3: $e6 $0b
    ld c, l                                       ; $5cf5: $4d
    and $76                                       ; $5cf6: $e6 $76
    ld c, l                                       ; $5cf8: $4d
    and $df                                       ; $5cf9: $e6 $df
    ld c, l                                       ; $5cfb: $4d
    and $55                                       ; $5cfc: $e6 $55
    ld c, [hl]                                    ; $5cfe: $4e
    and $c9                                       ; $5cff: $e6 $c9
    ld c, [hl]                                    ; $5d01: $4e
    and $35                                       ; $5d02: $e6 $35
    ld c, a                                       ; $5d04: $4f
    and $a7                                       ; $5d05: $e6 $a7
    ld c, a                                       ; $5d07: $4f

    db $e6, $12, $50, $e6, $64, $50, $e6, $c8, $50, $e6, $1f, $51, $e6, $85, $51

    and $dd                                       ; $5d17: $e6 $dd
    ld d, c                                       ; $5d19: $51
    and $2a                                       ; $5d1a: $e6 $2a
    ld d, d                                       ; $5d1c: $52
    and $54                                       ; $5d1d: $e6 $54
    ld d, d                                       ; $5d1f: $52
    and $7e                                       ; $5d20: $e6 $7e
    ld d, d                                       ; $5d22: $52
    and $a8                                       ; $5d23: $e6 $a8
    ld d, d                                       ; $5d25: $52

Jump_008_5d26:
    and $d2                                       ; $5d26: $e6 $d2
    ld d, d                                       ; $5d28: $52
    and $fc                                       ; $5d29: $e6 $fc
    ld d, d                                       ; $5d2b: $52
    and $26                                       ; $5d2c: $e6 $26
    ld d, e                                       ; $5d2e: $53
    and $58                                       ; $5d2f: $e6 $58
    ld d, e                                       ; $5d31: $53
    and $83                                       ; $5d32: $e6 $83
    ld d, e                                       ; $5d34: $53
    and $ae                                       ; $5d35: $e6 $ae
    ld d, e                                       ; $5d37: $53
    and $d9                                       ; $5d38: $e6 $d9
    ld d, e                                       ; $5d3a: $53
    and $04                                       ; $5d3b: $e6 $04
    ld d, h                                       ; $5d3d: $54
    and $2f                                       ; $5d3e: $e6 $2f
    ld d, h                                       ; $5d40: $54
    and $5a                                       ; $5d41: $e6 $5a
    ld d, h                                       ; $5d43: $54
    and $a1                                       ; $5d44: $e6 $a1
    ld d, h                                       ; $5d46: $54
    and $e2                                       ; $5d47: $e6 $e2
    ld d, h                                       ; $5d49: $54
    and $21                                       ; $5d4a: $e6 $21
    ld d, l                                       ; $5d4c: $55
    and $61                                       ; $5d4d: $e6 $61
    ld d, l                                       ; $5d4f: $55

Call_008_5d50:
    and $a4                                       ; $5d50: $e6 $a4
    ld d, l                                       ; $5d52: $55
    and $e7                                       ; $5d53: $e6 $e7
    ld d, l                                       ; $5d55: $55
    and $28                                       ; $5d56: $e6 $28
    ld d, [hl]                                    ; $5d58: $56
    and $28                                       ; $5d59: $e6 $28
    ld d, [hl]                                    ; $5d5b: $56
    and $67                                       ; $5d5c: $e6 $67
    ld d, [hl]                                    ; $5d5e: $56
    and $ab                                       ; $5d5f: $e6 $ab
    ld d, [hl]                                    ; $5d61: $56
    and $eb                                       ; $5d62: $e6 $eb
    ld d, [hl]                                    ; $5d64: $56
    and $27                                       ; $5d65: $e6 $27
    ld d, a                                       ; $5d67: $57
    and $65                                       ; $5d68: $e6 $65
    ld d, a                                       ; $5d6a: $57
    and $28                                       ; $5d6b: $e6 $28
    ld d, [hl]                                    ; $5d6d: $56
    and $28                                       ; $5d6e: $e6 $28
    ld d, [hl]                                    ; $5d70: $56
    and $67                                       ; $5d71: $e6 $67
    ld d, [hl]                                    ; $5d73: $56
    and $ab                                       ; $5d74: $e6 $ab
    ld d, [hl]                                    ; $5d76: $56
    and $eb                                       ; $5d77: $e6 $eb
    ld d, [hl]                                    ; $5d79: $56
    and $27                                       ; $5d7a: $e6 $27
    ld d, a                                       ; $5d7c: $57
    and $65                                       ; $5d7d: $e6 $65
    ld d, a                                       ; $5d7f: $57
    and $28                                       ; $5d80: $e6 $28
    ld d, [hl]                                    ; $5d82: $56
    and $28                                       ; $5d83: $e6 $28
    ld d, [hl]                                    ; $5d85: $56
    and $67                                       ; $5d86: $e6 $67
    ld d, [hl]                                    ; $5d88: $56
    and $ab                                       ; $5d89: $e6 $ab
    ld d, [hl]                                    ; $5d8b: $56
    and $eb                                       ; $5d8c: $e6 $eb
    ld d, [hl]                                    ; $5d8e: $56
    and $27                                       ; $5d8f: $e6 $27
    ld d, a                                       ; $5d91: $57
    and $65                                       ; $5d92: $e6 $65
    ld d, a                                       ; $5d94: $57

    db $e6, $a8, $57

    and $f3                                       ; $5d98: $e6 $f3
    ld d, a                                       ; $5d9a: $57
    and $3d                                       ; $5d9b: $e6 $3d
    ld e, b                                       ; $5d9d: $58
    and $88                                       ; $5d9e: $e6 $88
    ld e, b                                       ; $5da0: $58
    and $cc                                       ; $5da1: $e6 $cc
    ld e, b                                       ; $5da3: $58
    and $14                                       ; $5da4: $e6 $14
    ld e, c                                       ; $5da6: $59
    and $5d                                       ; $5da7: $e6 $5d
    ld e, c                                       ; $5da9: $59
    and $a6                                       ; $5daa: $e6 $a6
    ld e, c                                       ; $5dac: $59
    and $ee                                       ; $5dad: $e6 $ee
    ld e, c                                       ; $5daf: $59
    and $37                                       ; $5db0: $e6 $37
    ld e, d                                       ; $5db2: $5a

Jump_008_5db3:
    and $80                                       ; $5db3: $e6 $80
    ld e, d                                       ; $5db5: $5a
    and $ac                                       ; $5db6: $e6 $ac
    ld e, d                                       ; $5db8: $5a
    and $d6                                       ; $5db9: $e6 $d6
    ld e, d                                       ; $5dbb: $5a
    and $00                                       ; $5dbc: $e6 $00
    ld e, e                                       ; $5dbe: $5b
    and $47                                       ; $5dbf: $e6 $47
    ld e, e                                       ; $5dc1: $5b
    and $a5                                       ; $5dc2: $e6 $a5
    ld e, e                                       ; $5dc4: $5b
    and $05                                       ; $5dc5: $e6 $05
    ld e, h                                       ; $5dc7: $5c
    and $6b                                       ; $5dc8: $e6 $6b
    ld e, h                                       ; $5dca: $5c
    and $b0                                       ; $5dcb: $e6 $b0
    ld e, h                                       ; $5dcd: $5c
    and $f5                                       ; $5dce: $e6 $f5
    ld e, h                                       ; $5dd0: $5c
    and $37                                       ; $5dd1: $e6 $37
    ld e, l                                       ; $5dd3: $5d
    and $77                                       ; $5dd4: $e6 $77
    ld e, l                                       ; $5dd6: $5d
    and $b3                                       ; $5dd7: $e6 $b3
    ld e, l                                       ; $5dd9: $5d
    and $05                                       ; $5dda: $e6 $05
    ld e, [hl]                                    ; $5ddc: $5e
    and $57                                       ; $5ddd: $e6 $57
    ld e, [hl]                                    ; $5ddf: $5e
    and $a9                                       ; $5de0: $e6 $a9
    ld e, [hl]                                    ; $5de2: $5e
    and $f9                                       ; $5de3: $e6 $f9
    ld e, [hl]                                    ; $5de5: $5e
    and $54                                       ; $5de6: $e6 $54
    ld e, a                                       ; $5de8: $5f
    and $bd                                       ; $5de9: $e6 $bd
    ld e, a                                       ; $5deb: $5f
    and $16                                       ; $5dec: $e6 $16
    ld h, b                                       ; $5dee: $60
    and $6c                                       ; $5def: $e6 $6c
    ld h, b                                       ; $5df1: $60
    and $c8                                       ; $5df2: $e6 $c8
    ld h, b                                       ; $5df4: $60
    and $24                                       ; $5df5: $e6 $24
    ld h, c                                       ; $5df7: $61
    and $71                                       ; $5df8: $e6 $71
    ld h, c                                       ; $5dfa: $61
    and $bd                                       ; $5dfb: $e6 $bd
    ld h, c                                       ; $5dfd: $61
    and $09                                       ; $5dfe: $e6 $09
    ld h, d                                       ; $5e00: $62
    and $55                                       ; $5e01: $e6 $55
    ld h, d                                       ; $5e03: $62
    and $9a                                       ; $5e04: $e6 $9a
    ld h, d                                       ; $5e06: $62
    and $db                                       ; $5e07: $e6 $db
    ld h, d                                       ; $5e09: $62
    and $29                                       ; $5e0a: $e6 $29
    ld h, e                                       ; $5e0c: $63
    and $78                                       ; $5e0d: $e6 $78
    ld h, e                                       ; $5e0f: $63
    and $b5                                       ; $5e10: $e6 $b5
    ld h, e                                       ; $5e12: $63
    and $f2                                       ; $5e13: $e6 $f2
    ld h, e                                       ; $5e15: $63
    push hl                                       ; $5e16: $e5
    add sp, $7f                                   ; $5e17: $e8 $7f
    and $4c                                       ; $5e19: $e6 $4c

Jump_008_5e1b:
    ld h, h                                       ; $5e1b: $64
    and $df                                       ; $5e1c: $e6 $df
    ld h, h                                       ; $5e1e: $64
    and $ec                                       ; $5e1f: $e6 $ec
    ld h, h                                       ; $5e21: $64
    and $91                                       ; $5e22: $e6 $91
    ld h, l                                       ; $5e24: $65
    and $9e                                       ; $5e25: $e6 $9e
    ld h, l                                       ; $5e27: $65
    and $49                                       ; $5e28: $e6 $49
    ld h, [hl]                                    ; $5e2a: $66
    and $56                                       ; $5e2b: $e6 $56
    ld h, [hl]                                    ; $5e2d: $66
    and $fa                                       ; $5e2e: $e6 $fa
    ld h, [hl]                                    ; $5e30: $66
    and $07                                       ; $5e31: $e6 $07
    ld h, a                                       ; $5e33: $67
    and $a8                                       ; $5e34: $e6 $a8
    ld h, a                                       ; $5e36: $67
    and $b5                                       ; $5e37: $e6 $b5
    ld h, a                                       ; $5e39: $67
    and $56                                       ; $5e3a: $e6 $56
    ld l, b                                       ; $5e3c: $68
    and $63                                       ; $5e3d: $e6 $63
    ld l, b                                       ; $5e3f: $68
    and $fe                                       ; $5e40: $e6 $fe
    ld l, b                                       ; $5e42: $68
    and $11                                       ; $5e43: $e6 $11
    ld l, c                                       ; $5e45: $69
    and $ab                                       ; $5e46: $e6 $ab
    ld l, c                                       ; $5e48: $69
    and $be                                       ; $5e49: $e6 $be
    ld l, c                                       ; $5e4b: $69
    and $60                                       ; $5e4c: $e6 $60
    ld l, d                                       ; $5e4e: $6a
    and $6d                                       ; $5e4f: $e6 $6d
    ld l, d                                       ; $5e51: $6a
    and $12                                       ; $5e52: $e6 $12
    ld l, e                                       ; $5e54: $6b
    and $1f                                       ; $5e55: $e6 $1f
    ld l, e                                       ; $5e57: $6b
    and $c3                                       ; $5e58: $e6 $c3
    ld l, e                                       ; $5e5a: $6b
    and $d0                                       ; $5e5b: $e6 $d0
    ld l, e                                       ; $5e5d: $6b

Call_008_5e5e:
    and $71                                       ; $5e5e: $e6 $71
    ld l, h                                       ; $5e60: $6c
    and $7e                                       ; $5e61: $e6 $7e
    ld l, h                                       ; $5e63: $6c
    and $19                                       ; $5e64: $e6 $19
    ld l, l                                       ; $5e66: $6d
    and $2c                                       ; $5e67: $e6 $2c
    ld l, l                                       ; $5e69: $6d
    and $c8                                       ; $5e6a: $e6 $c8
    ld l, l                                       ; $5e6c: $6d
    and $db                                       ; $5e6d: $e6 $db
    ld l, l                                       ; $5e6f: $6d
    and $7b                                       ; $5e70: $e6 $7b
    ld l, [hl]                                    ; $5e72: $6e
    and $88                                       ; $5e73: $e6 $88
    ld l, [hl]                                    ; $5e75: $6e
    and $2d                                       ; $5e76: $e6 $2d
    ld l, a                                       ; $5e78: $6f
    and $3a                                       ; $5e79: $e6 $3a
    ld l, a                                       ; $5e7b: $6f
    and $de                                       ; $5e7c: $e6 $de
    ld l, a                                       ; $5e7e: $6f
    and $eb                                       ; $5e7f: $e6 $eb
    ld l, a                                       ; $5e81: $6f
    and $cf                                       ; $5e82: $e6 $cf
    ld [hl], b                                    ; $5e84: $70
    and $df                                       ; $5e85: $e6 $df
    ld [hl], b                                    ; $5e87: $70
    and $d1                                       ; $5e88: $e6 $d1
    ld [hl], c                                    ; $5e8a: $71
    and $e1                                       ; $5e8b: $e6 $e1
    ld [hl], c                                    ; $5e8d: $71
    and $d7                                       ; $5e8e: $e6 $d7
    ld [hl], d                                    ; $5e90: $72
    and $e7                                       ; $5e91: $e6 $e7
    ld [hl], d                                    ; $5e93: $72
    and $d8                                       ; $5e94: $e6 $d8
    ld [hl], e                                    ; $5e96: $73
    and $e8                                       ; $5e97: $e6 $e8
    ld [hl], e                                    ; $5e99: $73
    and $bc                                       ; $5e9a: $e6 $bc
    ld [hl], h                                    ; $5e9c: $74
    and $cc                                       ; $5e9d: $e6 $cc
    ld [hl], h                                    ; $5e9f: $74
    and $96                                       ; $5ea0: $e6 $96
    ld [hl], l                                    ; $5ea2: $75
    and $a6                                       ; $5ea3: $e6 $a6
    ld [hl], l                                    ; $5ea5: $75

Jump_008_5ea6:
    and $79                                       ; $5ea6: $e6 $79
    halt                                          ; $5ea8: $76
    and $89                                       ; $5ea9: $e6 $89
    halt                                          ; $5eab: $76
    and $59                                       ; $5eac: $e6 $59
    ld [hl], a                                    ; $5eae: $77
    and $69                                       ; $5eaf: $e6 $69
    ld [hl], a                                    ; $5eb1: $77
    and $43                                       ; $5eb2: $e6 $43
    ld a, b                                       ; $5eb4: $78
    and $53                                       ; $5eb5: $e6 $53
    ld a, b                                       ; $5eb7: $78
    and $32                                       ; $5eb8: $e6 $32
    ld a, c                                       ; $5eba: $79
    and $42                                       ; $5ebb: $e6 $42
    ld a, c                                       ; $5ebd: $79
    and $27                                       ; $5ebe: $e6 $27
    ld a, d                                       ; $5ec0: $7a
    and $3d                                       ; $5ec1: $e6 $3d
    ld a, d                                       ; $5ec3: $7a
    and $2b                                       ; $5ec4: $e6 $2b
    ld a, e                                       ; $5ec6: $7b
    and $47                                       ; $5ec7: $e6 $47
    ld a, e                                       ; $5ec9: $7b
    and $3e                                       ; $5eca: $e6 $3e
    ld a, h                                       ; $5ecc: $7c
    and $67                                       ; $5ecd: $e6 $67
    ld a, h                                       ; $5ecf: $7c
    and $61                                       ; $5ed0: $e6 $61
    ld a, l                                       ; $5ed2: $7d
    and $89                                       ; $5ed3: $e6 $89
    ld a, l                                       ; $5ed5: $7d
    and $6f                                       ; $5ed6: $e6 $6f
    ld a, [hl]                                    ; $5ed8: $7e
    and $89                                       ; $5ed9: $e6 $89
    ld a, [hl]                                    ; $5edb: $7e
    and $71                                       ; $5edc: $e6 $71
    ld a, a                                       ; $5ede: $7f
    rst $20                                       ; $5edf: $e7
    ld bc, $e640                                  ; $5ee0: $01 $40 $e6
    add a                                         ; $5ee3: $87
    ld a, a                                       ; $5ee4: $7f

Call_008_5ee5:
    rst $20                                       ; $5ee5: $e7
    and $40                                       ; $5ee6: $e6 $40
    and $9b                                       ; $5ee8: $e6 $9b
    ld a, a                                       ; $5eea: $7f
    rst $20                                       ; $5eeb: $e7
    cp [hl]                                       ; $5eec: $be
    ld b, c                                       ; $5eed: $41
    and $ab                                       ; $5eee: $e6 $ab
    ld a, a                                       ; $5ef0: $7f
    rst $20                                       ; $5ef1: $e7
    xor c                                         ; $5ef2: $a9
    ld b, d                                       ; $5ef3: $42
    rst $20                                       ; $5ef4: $e7
    rrca                                          ; $5ef5: $0f
    ld b, e                                       ; $5ef6: $43
    rst $20                                       ; $5ef7: $e7
    ld a, c                                       ; $5ef8: $79
    ld b, e                                       ; $5ef9: $43
    rst $20                                       ; $5efa: $e7
    push hl                                       ; $5efb: $e5
    ld b, e                                       ; $5efc: $43
    rst $20                                       ; $5efd: $e7
    ld c, d                                       ; $5efe: $4a
    ld b, h                                       ; $5eff: $44
    rst $20                                       ; $5f00: $e7
    or d                                          ; $5f01: $b2
    ld b, h                                       ; $5f02: $44
    rst $20                                       ; $5f03: $e7
    rrca                                          ; $5f04: $0f
    ld b, l                                       ; $5f05: $45
    rst $20                                       ; $5f06: $e7
    ld l, a                                       ; $5f07: $6f
    ld b, l                                       ; $5f08: $45
    rst $20                                       ; $5f09: $e7
    call $e745                                    ; $5f0a: $cd $45 $e7
    ld [hl-], a                                   ; $5f0d: $32
    ld b, [hl]                                    ; $5f0e: $46
    rst $20                                       ; $5f0f: $e7
    add l                                         ; $5f10: $85
    ld b, [hl]                                    ; $5f11: $46
    and $bb                                       ; $5f12: $e6 $bb
    ld a, a                                       ; $5f14: $7f
    rst $20                                       ; $5f15: $e7
    ret nc                                        ; $5f16: $d0

    ld b, [hl]                                    ; $5f17: $46
    rst $20                                       ; $5f18: $e7
    ld de, $e747                                  ; $5f19: $11 $47 $e7
    ld e, [hl]                                    ; $5f1c: $5e
    ld b, a                                       ; $5f1d: $47
    rst $20                                       ; $5f1e: $e7
    xor e                                         ; $5f1f: $ab

Jump_008_5f20:
    ld b, a                                       ; $5f20: $47
    rst $20                                       ; $5f21: $e7
    db $10                                        ; $5f22: $10
    ld c, b                                       ; $5f23: $48
    rst $20                                       ; $5f24: $e7
    sub l                                         ; $5f25: $95
    ld c, b                                       ; $5f26: $48
    rst $20                                       ; $5f27: $e7
    ld [hl+], a                                   ; $5f28: $22
    ld c, c                                       ; $5f29: $49
    rst $20                                       ; $5f2a: $e7
    xor e                                         ; $5f2b: $ab
    ld c, c                                       ; $5f2c: $49
    rst $20                                       ; $5f2d: $e7
    inc sp                                        ; $5f2e: $33
    ld c, d                                       ; $5f2f: $4a
    rst $20                                       ; $5f30: $e7
    cp a                                          ; $5f31: $bf
    ld c, d                                       ; $5f32: $4a
    rst $20                                       ; $5f33: $e7
    ld d, d                                       ; $5f34: $52
    ld c, e                                       ; $5f35: $4b
    rst $20                                       ; $5f36: $e7
    call nz, $e74b                                ; $5f37: $c4 $4b $e7
    inc e                                         ; $5f3a: $1c
    ld c, h                                       ; $5f3b: $4c
    rst $20                                       ; $5f3c: $e7
    ld l, h                                       ; $5f3d: $6c
    ld c, h                                       ; $5f3e: $4c
    rst $20                                       ; $5f3f: $e7
    sbc c                                         ; $5f40: $99
    ld c, h                                       ; $5f41: $4c
    rst $20                                       ; $5f42: $e7
    ld [c], a                                     ; $5f43: $e2
    ld c, h                                       ; $5f44: $4c
    rst $20                                       ; $5f45: $e7
    inc l                                         ; $5f46: $2c
    ld c, l                                       ; $5f47: $4d
    rst $20                                       ; $5f48: $e7
    halt                                          ; $5f49: $76
    ld c, l                                       ; $5f4a: $4d
    rst $20                                       ; $5f4b: $e7
    or e                                          ; $5f4c: $b3
    ld c, l                                       ; $5f4d: $4d
    rst $20                                       ; $5f4e: $e7
    ei                                            ; $5f4f: $fb
    ld c, l                                       ; $5f50: $4d
    rst $20                                       ; $5f51: $e7
    ld b, e                                       ; $5f52: $43
    ld c, [hl]                                    ; $5f53: $4e
    rst $20                                       ; $5f54: $e7
    ld h, d                                       ; $5f55: $62
    ld c, [hl]                                    ; $5f56: $4e
    rst $20                                       ; $5f57: $e7
    add c                                         ; $5f58: $81
    ld c, [hl]                                    ; $5f59: $4e
    rst $20                                       ; $5f5a: $e7
    sbc l                                         ; $5f5b: $9d
    ld c, [hl]                                    ; $5f5c: $4e
    rst $20                                       ; $5f5d: $e7
    xor a                                         ; $5f5e: $af
    ld c, [hl]                                    ; $5f5f: $4e
    rst $20                                       ; $5f60: $e7
    dec de                                        ; $5f61: $1b
    ld c, a                                       ; $5f62: $4f
    rst $20                                       ; $5f63: $e7
    inc sp                                        ; $5f64: $33
    ld c, a                                       ; $5f65: $4f

Call_008_5f66:
    rst $20                                       ; $5f66: $e7
    sbc [hl]                                      ; $5f67: $9e
    ld c, a                                       ; $5f68: $4f
    rst $20                                       ; $5f69: $e7
    cp d                                          ; $5f6a: $ba
    ld c, a                                       ; $5f6b: $4f
    rst $20                                       ; $5f6c: $e7
    jr nz, jr_008_5fbf                            ; $5f6d: $20 $50

    rst $20                                       ; $5f6f: $e7
    inc a                                         ; $5f70: $3c
    ld d, b                                       ; $5f71: $50
    rst $20                                       ; $5f72: $e7
    and h                                         ; $5f73: $a4
    ld d, b                                       ; $5f74: $50
    rst $20                                       ; $5f75: $e7
    cp h                                          ; $5f76: $bc
    ld d, b                                       ; $5f77: $50
    rst $20                                       ; $5f78: $e7
    inc h                                         ; $5f79: $24
    ld d, c                                       ; $5f7a: $51
    rst $20                                       ; $5f7b: $e7
    ld b, b                                       ; $5f7c: $40
    ld d, c                                       ; $5f7d: $51
    rst $20                                       ; $5f7e: $e7
    xor b                                         ; $5f7f: $a8
    ld d, c                                       ; $5f80: $51
    rst $20                                       ; $5f81: $e7
    call nz, $e751                                ; $5f82: $c4 $51 $e7
    dec l                                         ; $5f85: $2d
    ld d, d                                       ; $5f86: $52
    rst $20                                       ; $5f87: $e7
    ld b, l                                       ; $5f88: $45
    ld d, d                                       ; $5f89: $52
    rst $20                                       ; $5f8a: $e7
    cp e                                          ; $5f8b: $bb
    ld d, d                                       ; $5f8c: $52
    rst $20                                       ; $5f8d: $e7
    call $e752                                    ; $5f8e: $cd $52 $e7
    ld b, b                                       ; $5f91: $40
    ld d, e                                       ; $5f92: $53
    rst $20                                       ; $5f93: $e7
    ld e, h                                       ; $5f94: $5c
    ld d, e                                       ; $5f95: $53
    rst $20                                       ; $5f96: $e7
    jp z, $e753                                   ; $5f97: $ca $53 $e7

    and $53                                       ; $5f9a: $e6 $53
    rst $20                                       ; $5f9c: $e7
    ld e, b                                       ; $5f9d: $58
    ld d, h                                       ; $5f9e: $54
    rst $20                                       ; $5f9f: $e7
    ld l, d                                       ; $5fa0: $6a
    ld d, h                                       ; $5fa1: $54
    rst $20                                       ; $5fa2: $e7
    sbc $54                                       ; $5fa3: $de $54

Jump_008_5fa5:
    rst $20                                       ; $5fa5: $e7
    ld a, [$e754]                                 ; $5fa6: $fa $54 $e7
    ld l, c                                       ; $5fa9: $69
    ld d, l                                       ; $5faa: $55
    rst $20                                       ; $5fab: $e7
    add l                                         ; $5fac: $85
    ld d, l                                       ; $5fad: $55
    rst $20                                       ; $5fae: $e7
    ld hl, sp+$55                                 ; $5faf: $f8 $55
    rst $20                                       ; $5fb1: $e7
    ld a, [bc]                                    ; $5fb2: $0a
    ld d, [hl]                                    ; $5fb3: $56
    rst $20                                       ; $5fb4: $e7
    ld h, a                                       ; $5fb5: $67
    ld d, [hl]                                    ; $5fb6: $56
    rst $20                                       ; $5fb7: $e7
    ld a, e                                       ; $5fb8: $7b
    ld d, [hl]                                    ; $5fb9: $56
    rst $20                                       ; $5fba: $e7
    db $db                                        ; $5fbb: $db
    ld d, [hl]                                    ; $5fbc: $56
    rst $20                                       ; $5fbd: $e7
    pop af                                        ; $5fbe: $f1

jr_008_5fbf:
    ld d, [hl]                                    ; $5fbf: $56
    rst $20                                       ; $5fc0: $e7
    ld c, b                                       ; $5fc1: $48
    ld d, a                                       ; $5fc2: $57
    rst $20                                       ; $5fc3: $e7
    ld e, [hl]                                    ; $5fc4: $5e
    ld d, a                                       ; $5fc5: $57
    rst $20                                       ; $5fc6: $e7
    cp e                                          ; $5fc7: $bb
    ld d, a                                       ; $5fc8: $57
    rst $20                                       ; $5fc9: $e7
    rst $08                                       ; $5fca: $cf
    ld d, a                                       ; $5fcb: $57
    rst $20                                       ; $5fcc: $e7
    ld sp, $e758                                  ; $5fcd: $31 $58 $e7
    ld c, c                                       ; $5fd0: $49
    ld e, b                                       ; $5fd1: $58
    rst $20                                       ; $5fd2: $e7
    and d                                         ; $5fd3: $a2
    ld e, b                                       ; $5fd4: $58
    rst $20                                       ; $5fd5: $e7
    cp d                                          ; $5fd6: $ba
    ld e, b                                       ; $5fd7: $58
    rst $20                                       ; $5fd8: $e7
    ld [de], a                                    ; $5fd9: $12
    ld e, c                                       ; $5fda: $59
    rst $20                                       ; $5fdb: $e7
    ld h, $59                                     ; $5fdc: $26 $59
    rst $20                                       ; $5fde: $e7
    sbc c                                         ; $5fdf: $99
    ld e, c                                       ; $5fe0: $59
    rst $20                                       ; $5fe1: $e7
    inc c                                         ; $5fe2: $0c
    ld e, d                                       ; $5fe3: $5a
    rst $20                                       ; $5fe4: $e7
    ld a, l                                       ; $5fe5: $7d
    ld e, d                                       ; $5fe6: $5a
    rst $20                                       ; $5fe7: $e7
    db $ec                                        ; $5fe8: $ec
    ld e, d                                       ; $5fe9: $5a
    rst $20                                       ; $5fea: $e7

Call_008_5feb:
    ld e, c                                       ; $5feb: $59
    ld e, e                                       ; $5fec: $5b
    rst $20                                       ; $5fed: $e7
    ret z                                         ; $5fee: $c8

    ld e, e                                       ; $5fef: $5b
    rst $20                                       ; $5ff0: $e7
    scf                                           ; $5ff1: $37
    ld e, h                                       ; $5ff2: $5c
    rst $20                                       ; $5ff3: $e7
    or d                                          ; $5ff4: $b2
    ld e, h                                       ; $5ff5: $5c
    rst $20                                       ; $5ff6: $e7
    jr z, jr_008_6056                             ; $5ff7: $28 $5d

    rst $20                                       ; $5ff9: $e7
    sbc d                                         ; $5ffa: $9a
    ld e, l                                       ; $5ffb: $5d
    rst $20                                       ; $5ffc: $e7
    inc c                                         ; $5ffd: $0c
    ld e, [hl]                                    ; $5ffe: $5e
    rst $20                                       ; $5fff: $e7
    add d                                         ; $6000: $82
    ld e, [hl]                                    ; $6001: $5e
    rst $20                                       ; $6002: $e7
    push af                                       ; $6003: $f5
    ld e, [hl]                                    ; $6004: $5e
    rst $20                                       ; $6005: $e7
    ld h, a                                       ; $6006: $67
    ld e, a                                       ; $6007: $5f
    rst $20                                       ; $6008: $e7
    or [hl]                                       ; $6009: $b6
    ld e, a                                       ; $600a: $5f
    rst $20                                       ; $600b: $e7
    jr jr_008_606e                                ; $600c: $18 $60

    rst $20                                       ; $600e: $e7
    ld [hl], l                                    ; $600f: $75
    ld h, b                                       ; $6010: $60
    rst $20                                       ; $6011: $e7
    call nz, $e760                                ; $6012: $c4 $60 $e7
    daa                                           ; $6015: $27
    ld h, c                                       ; $6016: $61
    rst $20                                       ; $6017: $e7
    add h                                         ; $6018: $84
    ld h, c                                       ; $6019: $61
    rst $20                                       ; $601a: $e7
    sub $61                                       ; $601b: $d6 $61
    rst $20                                       ; $601d: $e7
    daa                                           ; $601e: $27
    ld h, d                                       ; $601f: $62
    rst $20                                       ; $6020: $e7
    adc c                                         ; $6021: $89
    ld h, d                                       ; $6022: $62
    rst $20                                       ; $6023: $e7
    ld [$e762], a                                 ; $6024: $ea $62 $e7
    ld b, a                                       ; $6027: $47
    ld h, e                                       ; $6028: $63
    rst $20                                       ; $6029: $e7
    cp c                                          ; $602a: $b9
    ld h, e                                       ; $602b: $63
    rst $20                                       ; $602c: $e7
    db $d3                                        ; $602d: $d3
    ld h, e                                       ; $602e: $63
    rst $20                                       ; $602f: $e7

Jump_008_6030:
    ld b, [hl]                                    ; $6030: $46
    ld h, h                                       ; $6031: $64
    rst $20                                       ; $6032: $e7
    ld h, b                                       ; $6033: $60
    ld h, h                                       ; $6034: $64
    rst $20                                       ; $6035: $e7
    bit 4, h                                      ; $6036: $cb $64
    rst $20                                       ; $6038: $e7
    push hl                                       ; $6039: $e5
    ld h, h                                       ; $603a: $64
    rst $20                                       ; $603b: $e7
    ld d, l                                       ; $603c: $55
    ld h, l                                       ; $603d: $65
    rst $20                                       ; $603e: $e7
    ld l, a                                       ; $603f: $6f
    ld h, l                                       ; $6040: $65
    rst $20                                       ; $6041: $e7
    rst $18                                       ; $6042: $df
    ld h, l                                       ; $6043: $65
    rst $20                                       ; $6044: $e7
    ld sp, hl                                     ; $6045: $f9
    ld h, l                                       ; $6046: $65
    rst $20                                       ; $6047: $e7
    ld h, e                                       ; $6048: $63
    ld h, [hl]                                    ; $6049: $66
    rst $20                                       ; $604a: $e7
    ld a, l                                       ; $604b: $7d
    ld h, [hl]                                    ; $604c: $66
    rst $20                                       ; $604d: $e7
    db $ed                                        ; $604e: $ed
    ld h, [hl]                                    ; $604f: $66
    rst $20                                       ; $6050: $e7
    rlca                                          ; $6051: $07
    ld h, a                                       ; $6052: $67
    rst $20                                       ; $6053: $e7
    add d                                         ; $6054: $82
    ld h, a                                       ; $6055: $67

jr_008_6056:
    rst $20                                       ; $6056: $e7
    sub h                                         ; $6057: $94
    ld h, a                                       ; $6058: $67
    rst $20                                       ; $6059: $e7
    add hl, bc                                    ; $605a: $09
    ld l, b                                       ; $605b: $68
    rst $20                                       ; $605c: $e7
    dec h                                         ; $605d: $25
    ld l, b                                       ; $605e: $68
    rst $20                                       ; $605f: $e7
    sbc c                                         ; $6060: $99
    ld l, b                                       ; $6061: $68
    rst $20                                       ; $6062: $e7
    or l                                          ; $6063: $b5
    ld l, b                                       ; $6064: $68
    rst $20                                       ; $6065: $e7
    add hl, hl                                    ; $6066: $29
    ld l, c                                       ; $6067: $69
    rst $20                                       ; $6068: $e7
    dec sp                                        ; $6069: $3b
    ld l, c                                       ; $606a: $69
    rst $20                                       ; $606b: $e7
    or c                                          ; $606c: $b1
    ld l, c                                       ; $606d: $69

jr_008_606e:
    rst $20                                       ; $606e: $e7
    call $e769                                    ; $606f: $cd $69 $e7
    ld b, c                                       ; $6072: $41
    ld l, d                                       ; $6073: $6a
    rst $20                                       ; $6074: $e7
    ld e, l                                       ; $6075: $5d
    ld l, d                                       ; $6076: $6a
    rst $20                                       ; $6077: $e7
    jp nc, $e76a                                  ; $6078: $d2 $6a $e7

    db $e4                                        ; $607b: $e4
    ld l, d                                       ; $607c: $6a
    rst $20                                       ; $607d: $e7
    dec sp                                        ; $607e: $3b
    ld l, e                                       ; $607f: $6b
    rst $20                                       ; $6080: $e7
    ld d, c                                       ; $6081: $51
    ld l, e                                       ; $6082: $6b
    rst $20                                       ; $6083: $e7
    cp e                                          ; $6084: $bb
    ld l, e                                       ; $6085: $6b
    rst $20                                       ; $6086: $e7
    pop de                                        ; $6087: $d1
    ld l, e                                       ; $6088: $6b
    rst $20                                       ; $6089: $e7
    ld [hl-], a                                   ; $608a: $32
    ld l, h                                       ; $608b: $6c
    rst $20                                       ; $608c: $e7
    ld c, b                                       ; $608d: $48
    ld l, h                                       ; $608e: $6c
    rst $20                                       ; $608f: $e7
    sub a                                         ; $6090: $97
    ld l, h                                       ; $6091: $6c
    rst $20                                       ; $6092: $e7
    xor l                                         ; $6093: $ad
    ld l, h                                       ; $6094: $6c
    rst $20                                       ; $6095: $e7
    db $10                                        ; $6096: $10
    ld l, l                                       ; $6097: $6d
    rst $20                                       ; $6098: $e7
    ld h, $6d                                     ; $6099: $26 $6d
    rst $20                                       ; $609b: $e7
    add e                                         ; $609c: $83
    ld l, l                                       ; $609d: $6d

Jump_008_609e:
    rst $20                                       ; $609e: $e7
    sbc c                                         ; $609f: $99
    ld l, l                                       ; $60a0: $6d
    rst $20                                       ; $60a1: $e7
    ldh a, [$6d]                                  ; $60a2: $f0 $6d
    rst $20                                       ; $60a4: $e7
    ld b, $6e                                     ; $60a5: $06 $6e
    rst $20                                       ; $60a7: $e7
    ld h, a                                       ; $60a8: $67
    ld l, [hl]                                    ; $60a9: $6e
    rst $20                                       ; $60aa: $e7
    ld a, l                                       ; $60ab: $7d
    ld l, [hl]                                    ; $60ac: $6e
    rst $20                                       ; $60ad: $e7
    push hl                                       ; $60ae: $e5
    ld l, [hl]                                    ; $60af: $6e
    rst $20                                       ; $60b0: $e7
    ei                                            ; $60b1: $fb
    ld l, [hl]                                    ; $60b2: $6e
    rst $20                                       ; $60b3: $e7
    ld c, a                                       ; $60b4: $4f
    ld l, a                                       ; $60b5: $6f
    rst $20                                       ; $60b6: $e7
    ld h, l                                       ; $60b7: $65
    ld l, a                                       ; $60b8: $6f
    rst $20                                       ; $60b9: $e7
    cp h                                          ; $60ba: $bc

Jump_008_60bb:
    ld l, a                                       ; $60bb: $6f
    rst $20                                       ; $60bc: $e7
    jp nc, $e76f                                  ; $60bd: $d2 $6f $e7

    ld sp, $e770                                  ; $60c0: $31 $70 $e7
    ld b, a                                       ; $60c3: $47
    ld [hl], b                                    ; $60c4: $70
    rst $20                                       ; $60c5: $e7
    and c                                         ; $60c6: $a1
    ld [hl], b                                    ; $60c7: $70
    rst $20                                       ; $60c8: $e7
    or a                                          ; $60c9: $b7
    ld [hl], b                                    ; $60ca: $70
    rst $20                                       ; $60cb: $e7
    daa                                           ; $60cc: $27
    ld [hl], c                                    ; $60cd: $71
    rst $20                                       ; $60ce: $e7
    sub a                                         ; $60cf: $97
    ld [hl], c                                    ; $60d0: $71
    rst $20                                       ; $60d1: $e7
    ld bc, $e772                                  ; $60d2: $01 $72 $e7
    ld l, a                                       ; $60d5: $6f
    ld [hl], d                                    ; $60d6: $72
    rst $20                                       ; $60d7: $e7
    db $dd                                        ; $60d8: $dd
    ld [hl], d                                    ; $60d9: $72
    rst $20                                       ; $60da: $e7
    ld c, b                                       ; $60db: $48
    ld [hl], e                                    ; $60dc: $73
    rst $20                                       ; $60dd: $e7
    cp h                                          ; $60de: $bc
    ld [hl], e                                    ; $60df: $73
    rst $20                                       ; $60e0: $e7
    ld [hl-], a                                   ; $60e1: $32
    ld [hl], h                                    ; $60e2: $74
    rst $20                                       ; $60e3: $e7
    and [hl]                                      ; $60e4: $a6
    ld [hl], h                                    ; $60e5: $74
    rst $20                                       ; $60e6: $e7
    add hl, de                                    ; $60e7: $19
    ld [hl], l                                    ; $60e8: $75
    rst $20                                       ; $60e9: $e7
    adc e                                         ; $60ea: $8b
    ld [hl], l                                    ; $60eb: $75
    rst $20                                       ; $60ec: $e7
    ld sp, hl                                     ; $60ed: $f9
    ld [hl], l                                    ; $60ee: $75
    rst $20                                       ; $60ef: $e7
    ld h, e                                       ; $60f0: $63
    halt                                          ; $60f1: $76
    rst $20                                       ; $60f2: $e7
    pop de                                        ; $60f3: $d1
    halt                                          ; $60f4: $76
    rst $20                                       ; $60f5: $e7
    jr z, jr_008_616f                             ; $60f6: $28 $77

    rst $20                                       ; $60f8: $e7
    sub h                                         ; $60f9: $94
    ld [hl], a                                    ; $60fa: $77
    rst $20                                       ; $60fb: $e7
    ei                                            ; $60fc: $fb
    ld [hl], a                                    ; $60fd: $77
    rst $20                                       ; $60fe: $e7
    ld c, a                                       ; $60ff: $4f
    ld a, b                                       ; $6100: $78
    rst $20                                       ; $6101: $e7
    cp c                                          ; $6102: $b9
    ld a, b                                       ; $6103: $78
    rst $20                                       ; $6104: $e7
    jr nz, @+$7b                                  ; $6105: $20 $79

    rst $20                                       ; $6107: $e7
    ld a, c                                       ; $6108: $79
    ld a, c                                       ; $6109: $79
    rst $20                                       ; $610a: $e7
    xor $79                                       ; $610b: $ee $79
    rst $20                                       ; $610d: $e7
    ld e, [hl]                                    ; $610e: $5e
    ld a, d                                       ; $610f: $7a
    rst $20                                       ; $6110: $e7
    ret z                                         ; $6111: $c8

    ld a, d                                       ; $6112: $7a
    rst $20                                       ; $6113: $e7
    ld [hl], $7b                                  ; $6114: $36 $7b
    rst $20                                       ; $6116: $e7
    and h                                         ; $6117: $a4
    ld a, e                                       ; $6118: $7b
    rst $20                                       ; $6119: $e7
    rrca                                          ; $611a: $0f
    ld a, h                                       ; $611b: $7c
    rst $20                                       ; $611c: $e7
    add e                                         ; $611d: $83
    ld a, h                                       ; $611e: $7c
    rst $20                                       ; $611f: $e7
    db $ec                                        ; $6120: $ec
    ld a, h                                       ; $6121: $7c
    rst $20                                       ; $6122: $e7
    ld h, b                                       ; $6123: $60
    ld a, l                                       ; $6124: $7d
    rst $20                                       ; $6125: $e7
    db $d3                                        ; $6126: $d3
    ld a, l                                       ; $6127: $7d
    rst $20                                       ; $6128: $e7

Jump_008_6129:
    ld b, l                                       ; $6129: $45
    ld a, [hl]                                    ; $612a: $7e
    rst $20                                       ; $612b: $e7
    or e                                          ; $612c: $b3
    ld a, [hl]                                    ; $612d: $7e
    rst $20                                       ; $612e: $e7
    dec e                                         ; $612f: $1d
    ld a, a                                       ; $6130: $7f
    rst $20                                       ; $6131: $e7
    adc e                                         ; $6132: $8b
    ld a, a                                       ; $6133: $7f
    add sp, $01                                   ; $6134: $e8 $01
    ld b, b                                       ; $6136: $40
    add sp, $6d                                   ; $6137: $e8 $6d
    ld b, b                                       ; $6139: $40
    add sp, -$2c                                  ; $613a: $e8 $d4
    ld b, b                                       ; $613c: $40
    add sp, $28                                   ; $613d: $e8 $28
    ld b, c                                       ; $613f: $41
    add sp, -$6e                                  ; $6140: $e8 $92
    ld b, c                                       ; $6142: $41
    add sp, -$07                                  ; $6143: $e8 $f9
    ld b, c                                       ; $6145: $41
    add sp, $52                                   ; $6146: $e8 $52
    ld b, d                                       ; $6148: $42

Jump_008_6149:
    add sp, -$1b                                  ; $6149: $e8 $e5
    ld b, d                                       ; $614b: $42
    add sp, $74                                   ; $614c: $e8 $74
    ld b, e                                       ; $614e: $43
    add sp, -$01                                  ; $614f: $e8 $ff
    ld b, e                                       ; $6151: $43
    add sp, -$71                                  ; $6152: $e8 $8f
    ld b, h                                       ; $6154: $44
    add sp, $21                                   ; $6155: $e8 $21
    ld b, l                                       ; $6157: $45
    add sp, -$53                                  ; $6158: $e8 $ad
    ld b, l                                       ; $615a: $45
    add sp, $3c                                   ; $615b: $e8 $3c
    ld b, [hl]                                    ; $615d: $46
    add sp, -$2f                                  ; $615e: $e8 $d1
    ld b, [hl]                                    ; $6160: $46
    add sp, $61                                   ; $6161: $e8 $61
    ld b, a                                       ; $6163: $47
    add sp, -$15                                  ; $6164: $e8 $eb
    ld b, a                                       ; $6166: $47
    add sp, $7d                                   ; $6167: $e8 $7d
    ld c, b                                       ; $6169: $48
    add sp, $0d                                   ; $616a: $e8 $0d
    ld c, c                                       ; $616c: $49
    add sp, -$69                                  ; $616d: $e8 $97

jr_008_616f:
    ld c, c                                       ; $616f: $49
    add sp, $29                                   ; $6170: $e8 $29
    ld c, d                                       ; $6172: $4a
    add sp, -$42                                  ; $6173: $e8 $be
    ld c, d                                       ; $6175: $4a
    add sp, $50                                   ; $6176: $e8 $50
    ld c, e                                       ; $6178: $4b
    add sp, -$20                                  ; $6179: $e8 $e0
    ld c, e                                       ; $617b: $4b
    add sp, $70                                   ; $617c: $e8 $70
    ld c, h                                       ; $617e: $4c
    add sp, $03                                   ; $617f: $e8 $03
    ld c, l                                       ; $6181: $4d
    add sp, -$6a                                  ; $6182: $e8 $96
    ld c, l                                       ; $6184: $4d
    add sp, $2b                                   ; $6185: $e8 $2b
    ld c, [hl]                                    ; $6187: $4e
    rst $20                                       ; $6188: $e7
    pop hl                                        ; $6189: $e1
    ld a, a                                       ; $618a: $7f
    add sp, -$61                                  ; $618b: $e8 $9f
    ld c, [hl]                                    ; $618d: $4e
    add sp, $0f                                   ; $618e: $e8 $0f
    ld c, a                                       ; $6190: $4f
    add sp, $2c                                   ; $6191: $e8 $2c
    ld c, a                                       ; $6193: $4f
    add sp, -$69                                  ; $6194: $e8 $97
    ld c, a                                       ; $6196: $4f
    add sp, -$50                                  ; $6197: $e8 $b0
    ld c, a                                       ; $6199: $4f
    add sp, $22                                   ; $619a: $e8 $22
    ld d, b                                       ; $619c: $50
    add sp, $3f                                   ; $619d: $e8 $3f
    ld d, b                                       ; $619f: $50
    add sp, -$49                                  ; $61a0: $e8 $b7
    ld d, b                                       ; $61a2: $50
    add sp, -$2c                                  ; $61a3: $e8 $d4
    ld d, b                                       ; $61a5: $50
    add sp, $3e                                   ; $61a6: $e8 $3e
    ld d, c                                       ; $61a8: $51
    add sp, $57                                   ; $61a9: $e8 $57
    ld d, c                                       ; $61ab: $51
    add sp, -$38                                  ; $61ac: $e8 $c8
    ld d, c                                       ; $61ae: $51
    add sp, -$1b                                  ; $61af: $e8 $e5
    ld d, c                                       ; $61b1: $51
    add sp, $62                                   ; $61b2: $e8 $62
    ld d, d                                       ; $61b4: $52
    add sp, $79                                   ; $61b5: $e8 $79
    ld d, d                                       ; $61b7: $52
    add sp, -$11                                  ; $61b8: $e8 $ef
    ld d, d                                       ; $61ba: $52
    add sp, $06                                   ; $61bb: $e8 $06
    ld d, e                                       ; $61bd: $53
    add sp, $7c                                   ; $61be: $e8 $7c
    ld d, e                                       ; $61c0: $53
    add sp, -$6d                                  ; $61c1: $e8 $93
    ld d, e                                       ; $61c3: $53
    add sp, $0a                                   ; $61c4: $e8 $0a
    ld d, h                                       ; $61c6: $54
    add sp, $21                                   ; $61c7: $e8 $21
    ld d, h                                       ; $61c9: $54
    add sp, -$67                                  ; $61ca: $e8 $99
    ld d, h                                       ; $61cc: $54
    add sp, -$50                                  ; $61cd: $e8 $b0
    ld d, h                                       ; $61cf: $54

Jump_008_61d0:
    add sp, $25                                   ; $61d0: $e8 $25
    ld d, l                                       ; $61d2: $55
    add sp, $3c                                   ; $61d3: $e8 $3c
    ld d, l                                       ; $61d5: $55
    add sp, -$51                                  ; $61d6: $e8 $af
    ld d, l                                       ; $61d8: $55
    add sp, -$3a                                  ; $61d9: $e8 $c6
    ld d, l                                       ; $61db: $55
    add sp, $28                                   ; $61dc: $e8 $28
    ld d, [hl]                                    ; $61de: $56
    add sp, $41                                   ; $61df: $e8 $41
    ld d, [hl]                                    ; $61e1: $56
    add sp, -$4e                                  ; $61e2: $e8 $b2
    ld d, [hl]                                    ; $61e4: $56
    add sp, -$35                                  ; $61e5: $e8 $cb
    ld d, [hl]                                    ; $61e7: $56
    add sp, $35                                   ; $61e8: $e8 $35
    ld d, a                                       ; $61ea: $57
    add sp, $4e                                   ; $61eb: $e8 $4e
    ld d, a                                       ; $61ed: $57
    add sp, -$57                                  ; $61ee: $e8 $a9
    ld d, a                                       ; $61f0: $57
    add sp, -$3e                                  ; $61f1: $e8 $c2
    ld d, a                                       ; $61f3: $57
    add sp, $2f                                   ; $61f4: $e8 $2f
    ld e, b                                       ; $61f6: $58
    add sp, $48                                   ; $61f7: $e8 $48
    ld e, b                                       ; $61f9: $58
    add sp, -$51                                  ; $61fa: $e8 $af
    ld e, b                                       ; $61fc: $58
    add sp, -$38                                  ; $61fd: $e8 $c8
    ld e, b                                       ; $61ff: $58
    add sp, $2a                                   ; $6200: $e8 $2a
    ld e, c                                       ; $6202: $59
    add sp, $43                                   ; $6203: $e8 $43
    ld e, c                                       ; $6205: $59

Call_008_6206:
    add sp, -$50                                  ; $6206: $e8 $b0
    ld e, c                                       ; $6208: $59
    add sp, -$1c                                  ; $6209: $e8 $e4
    ld e, c                                       ; $620b: $59
    add sp, $50                                   ; $620c: $e8 $50
    ld e, d                                       ; $620e: $5a
    add sp, -$7c                                  ; $620f: $e8 $84
    ld e, d                                       ; $6211: $5a
    add sp, -$14                                  ; $6212: $e8 $ec
    ld e, d                                       ; $6214: $5a
    add sp, $1c                                   ; $6215: $e8 $1c
    ld e, e                                       ; $6217: $5b
    add sp, -$7e                                  ; $6218: $e8 $82
    ld e, e                                       ; $621a: $5b
    add sp, -$4e                                  ; $621b: $e8 $b2
    ld e, e                                       ; $621d: $5b
    add sp, $1e                                   ; $621e: $e8 $1e
    ld e, h                                       ; $6220: $5c
    add sp, $52                                   ; $6221: $e8 $52
    ld e, h                                       ; $6223: $5c
    add sp, -$46                                  ; $6224: $e8 $ba
    ld e, h                                       ; $6226: $5c
    add sp, -$16                                  ; $6227: $e8 $ea
    ld e, h                                       ; $6229: $5c
    add sp, $50                                   ; $622a: $e8 $50
    ld e, l                                       ; $622c: $5d
    add sp, -$7c                                  ; $622d: $e8 $84
    ld e, l                                       ; $622f: $5d
    add sp, -$0e                                  ; $6230: $e8 $f2
    ld e, l                                       ; $6232: $5d
    add sp, $26                                   ; $6233: $e8 $26
    ld e, [hl]                                    ; $6235: $5e
    add sp, -$6a                                  ; $6236: $e8 $96
    ld e, [hl]                                    ; $6238: $5e
    add sp, -$36                                  ; $6239: $e8 $ca
    ld e, [hl]                                    ; $623b: $5e
    add sp, $38                                   ; $623c: $e8 $38

Jump_008_623e:
    ld e, a                                       ; $623e: $5f
    add sp, $6a                                   ; $623f: $e8 $6a
    ld e, a                                       ; $6241: $5f
    add sp, -$27                                  ; $6242: $e8 $d9
    ld e, a                                       ; $6244: $5f
    add sp, $0d                                   ; $6245: $e8 $0d
    ld h, b                                       ; $6247: $60
    add sp, $7d                                   ; $6248: $e8 $7d
    ld h, b                                       ; $624a: $60

Jump_008_624b:
    add sp, -$4f                                  ; $624b: $e8 $b1
    ld h, b                                       ; $624d: $60
    add sp, $1d                                   ; $624e: $e8 $1d
    ld h, c                                       ; $6250: $61
    add sp, $4f                                   ; $6251: $e8 $4f
    ld h, c                                       ; $6253: $61
    add sp, -$42                                  ; $6254: $e8 $be
    ld h, c                                       ; $6256: $61
    add sp, -$0e                                  ; $6257: $e8 $f2
    ld h, c                                       ; $6259: $61
    add sp, $54                                   ; $625a: $e8 $54
    ld h, d                                       ; $625c: $62
    add sp, $74                                   ; $625d: $e8 $74
    ld h, d                                       ; $625f: $62
    add sp, -$2a                                  ; $6260: $e8 $d6
    ld h, d                                       ; $6262: $62
    add sp, -$0a                                  ; $6263: $e8 $f6
    ld h, d                                       ; $6265: $62
    add sp, $58                                   ; $6266: $e8 $58
    ld h, e                                       ; $6268: $63
    add sp, $76                                   ; $6269: $e8 $76
    ld h, e                                       ; $626b: $63
    add sp, -$2c                                  ; $626c: $e8 $d4
    ld h, e                                       ; $626e: $63
    add sp, -$0c                                  ; $626f: $e8 $f4
    ld h, e                                       ; $6271: $63
    add sp, $59                                   ; $6272: $e8 $59
    ld h, h                                       ; $6274: $64
    add sp, $77                                   ; $6275: $e8 $77
    ld h, h                                       ; $6277: $64
    add sp, -$25                                  ; $6278: $e8 $db
    ld h, h                                       ; $627a: $64
    add sp, -$07                                  ; $627b: $e8 $f9
    ld h, h                                       ; $627d: $64
    add sp, $5b                                   ; $627e: $e8 $5b
    ld h, l                                       ; $6280: $65

    db $e8, $7b, $65, $e8, $eb, $65, $e8, $5c, $66, $e8, $c3, $66, $e8, $33, $67, $e8
    db $9f, $67, $e8, $04, $68, $e8, $75, $68

    add sp, -$1b                                  ; $6299: $e8 $e5
    ld l, b                                       ; $629b: $68
    add sp, $54                                   ; $629c: $e8 $54
    ld l, c                                       ; $629e: $69
    add sp, -$3c                                  ; $629f: $e8 $c4
    ld l, c                                       ; $62a1: $69
    add sp, $32                                   ; $62a2: $e8 $32
    ld l, d                                       ; $62a4: $6a
    add sp, -$64                                  ; $62a5: $e8 $9c
    ld l, d                                       ; $62a7: $6a
    add sp, $05                                   ; $62a8: $e8 $05
    ld l, e                                       ; $62aa: $6b

    db $e8, $73, $6b, $e8, $c7, $6b, $e8, $2e, $6c, $e8, $8e, $6c, $e8, $e1, $6c, $e8
    db $4e, $6d, $e8, $ac, $6d

    add sp, $03                                   ; $62c0: $e8 $03
    ld l, [hl]                                    ; $62c2: $6e

Jump_008_62c3:
    add sp, -$7c                                  ; $62c3: $e8 $84
    ld l, [hl]                                    ; $62c5: $6e
    add sp, -$7c                                  ; $62c6: $e8 $84
    ld l, [hl]                                    ; $62c8: $6e
    add sp, -$7c                                  ; $62c9: $e8 $84
    ld l, [hl]                                    ; $62cb: $6e
    add sp, -$7c                                  ; $62cc: $e8 $84
    ld l, [hl]                                    ; $62ce: $6e
    add sp, $0b                                   ; $62cf: $e8 $0b
    ld l, a                                       ; $62d1: $6f
    add sp, -$74                                  ; $62d2: $e8 $8c
    ld l, a                                       ; $62d4: $6f
    add sp, -$74                                  ; $62d5: $e8 $8c
    ld l, a                                       ; $62d7: $6f
    add sp, -$74                                  ; $62d8: $e8 $8c
    ld l, a                                       ; $62da: $6f
    add sp, -$74                                  ; $62db: $e8 $8c
    ld l, a                                       ; $62dd: $6f
    add sp, $10                                   ; $62de: $e8 $10
    ld [hl], b                                    ; $62e0: $70
    add sp, $7f                                   ; $62e1: $e8 $7f
    ld [hl], b                                    ; $62e3: $70
    add sp, $7f                                   ; $62e4: $e8 $7f
    ld [hl], b                                    ; $62e6: $70
    add sp, $7f                                   ; $62e7: $e8 $7f
    ld [hl], b                                    ; $62e9: $70
    add sp, $7f                                   ; $62ea: $e8 $7f
    ld [hl], b                                    ; $62ec: $70
    add sp, -$12                                  ; $62ed: $e8 $ee
    ld [hl], b                                    ; $62ef: $70
    add sp, -$7d                                  ; $62f0: $e8 $83
    ld [hl], c                                    ; $62f2: $71
    add sp, $18                                   ; $62f3: $e8 $18
    ld [hl], d                                    ; $62f5: $72
    add sp, -$55                                  ; $62f6: $e8 $ab
    ld [hl], d                                    ; $62f8: $72
    add sp, $40                                   ; $62f9: $e8 $40
    ld [hl], e                                    ; $62fb: $73
    add sp, -$2b                                  ; $62fc: $e8 $d5
    ld [hl], e                                    ; $62fe: $73
    add sp, $66                                   ; $62ff: $e8 $66
    ld [hl], h                                    ; $6301: $74
    add sp, -$05                                  ; $6302: $e8 $fb
    ld [hl], h                                    ; $6304: $74
    add sp, -$75                                  ; $6305: $e8 $8b
    ld [hl], l                                    ; $6307: $75
    add sp, $1c                                   ; $6308: $e8 $1c
    halt                                          ; $630a: $76
    add sp, -$58                                  ; $630b: $e8 $a8
    halt                                          ; $630d: $76
    add sp, $3a                                   ; $630e: $e8 $3a
    ld [hl], a                                    ; $6310: $77
    add sp, -$33                                  ; $6311: $e8 $cd
    ld [hl], a                                    ; $6313: $77
    add sp, $59                                   ; $6314: $e8 $59
    ld a, b                                       ; $6316: $78
    add sp, -$17                                  ; $6317: $e8 $e9
    ld a, b                                       ; $6319: $78
    add sp, $77                                   ; $631a: $e8 $77
    ld a, c                                       ; $631c: $79
    add sp, $05                                   ; $631d: $e8 $05
    ld a, d                                       ; $631f: $7a
    add sp, -$73                                  ; $6320: $e8 $8d
    ld a, d                                       ; $6322: $7a
    add sp, $1a                                   ; $6323: $e8 $1a
    ld a, e                                       ; $6325: $7b
    add sp, -$61                                  ; $6326: $e8 $9f
    ld a, e                                       ; $6328: $7b
    add sp, $24                                   ; $6329: $e8 $24
    ld a, h                                       ; $632b: $7c
    add sp, -$52                                  ; $632c: $e8 $ae
    ld a, h                                       ; $632e: $7c
    add sp, $42                                   ; $632f: $e8 $42
    ld a, l                                       ; $6331: $7d
    add sp, -$2c                                  ; $6332: $e8 $d4
    ld a, l                                       ; $6334: $7d
    add sp, $45                                   ; $6335: $e8 $45
    ld a, [hl]                                    ; $6337: $7e
    add sp, -$7c                                  ; $6338: $e8 $84
    ld a, [hl]                                    ; $633a: $7e

Jump_008_633b:
    add sp, -$17                                  ; $633b: $e8 $e9
    ld a, [hl]                                    ; $633d: $7e
    add sp, -$7c                                  ; $633e: $e8 $84
    ld a, [hl]                                    ; $6340: $7e
    add sp, -$17                                  ; $6341: $e8 $e9
    ld a, [hl]                                    ; $6343: $7e
    add sp, -$7c                                  ; $6344: $e8 $84
    ld a, [hl]                                    ; $6346: $7e
    add sp, -$17                                  ; $6347: $e8 $e9
    ld a, [hl]                                    ; $6349: $7e
    add sp, -$7c                                  ; $634a: $e8 $84
    ld a, [hl]                                    ; $634c: $7e
    add sp, -$17                                  ; $634d: $e8 $e9
    ld a, [hl]                                    ; $634f: $7e
    add sp, -$7c                                  ; $6350: $e8 $84
    ld a, [hl]                                    ; $6352: $7e
    add sp, -$17                                  ; $6353: $e8 $e9
    ld a, [hl]                                    ; $6355: $7e
    add sp, -$7c                                  ; $6356: $e8 $84
    ld a, [hl]                                    ; $6358: $7e
    add sp, -$17                                  ; $6359: $e8 $e9
    ld a, [hl]                                    ; $635b: $7e
    add sp, $25                                   ; $635c: $e8 $25
    ld a, a                                       ; $635e: $7f
    add sp, -$5a                                  ; $635f: $e8 $a6
    ld a, a                                       ; $6361: $7f
    jp hl                                         ; $6362: $e9


    ld bc, $e940                                  ; $6363: $01 $40 $e9
    ld l, a                                       ; $6366: $6f
    ld b, b                                       ; $6367: $40
    jp hl                                         ; $6368: $e9


    ld bc, $e940                                  ; $6369: $01 $40 $e9
    ld l, a                                       ; $636c: $6f
    ld b, b                                       ; $636d: $40
    jp hl                                         ; $636e: $e9


    ld bc, $e940                                  ; $636f: $01 $40 $e9
    ld l, a                                       ; $6372: $6f
    ld b, b                                       ; $6373: $40
    jp hl                                         ; $6374: $e9


    ld bc, $e940                                  ; $6375: $01 $40 $e9
    ld l, a                                       ; $6378: $6f
    ld b, b                                       ; $6379: $40
    jp hl                                         ; $637a: $e9


    ld bc, $e940                                  ; $637b: $01 $40 $e9
    ld l, a                                       ; $637e: $6f
    ld b, b                                       ; $637f: $40

Call_008_6380:
    jp hl                                         ; $6380: $e9


    ld bc, $e940                                  ; $6381: $01 $40 $e9
    ld l, a                                       ; $6384: $6f
    ld b, b                                       ; $6385: $40
    jp hl                                         ; $6386: $e9


    and a                                         ; $6387: $a7
    ld b, b                                       ; $6388: $40
    jp hl                                         ; $6389: $e9


    ld a, [de]                                    ; $638a: $1a
    ld b, c                                       ; $638b: $41
    jp hl                                         ; $638c: $e9


    ld b, [hl]                                    ; $638d: $46
    ld b, c                                       ; $638e: $41
    jp hl                                         ; $638f: $e9


    or h                                          ; $6390: $b4
    ld b, c                                       ; $6391: $41
    jp hl                                         ; $6392: $e9


    ld b, [hl]                                    ; $6393: $46
    ld b, c                                       ; $6394: $41
    jp hl                                         ; $6395: $e9


    or h                                          ; $6396: $b4
    ld b, c                                       ; $6397: $41
    jp hl                                         ; $6398: $e9


    ld b, [hl]                                    ; $6399: $46
    ld b, c                                       ; $639a: $41
    jp hl                                         ; $639b: $e9


    or h                                          ; $639c: $b4
    ld b, c                                       ; $639d: $41
    jp hl                                         ; $639e: $e9


    ld b, [hl]                                    ; $639f: $46
    ld b, c                                       ; $63a0: $41
    jp hl                                         ; $63a1: $e9


    or h                                          ; $63a2: $b4
    ld b, c                                       ; $63a3: $41
    jp hl                                         ; $63a4: $e9


    ld b, [hl]                                    ; $63a5: $46
    ld b, c                                       ; $63a6: $41
    jp hl                                         ; $63a7: $e9


    or h                                          ; $63a8: $b4
    ld b, c                                       ; $63a9: $41
    jp hl                                         ; $63aa: $e9


    ld b, [hl]                                    ; $63ab: $46
    ld b, c                                       ; $63ac: $41
    jp hl                                         ; $63ad: $e9


    or h                                          ; $63ae: $b4

Jump_008_63af:
    ld b, c                                       ; $63af: $41
    jp hl                                         ; $63b0: $e9


    ldh [rSTAT], a                                ; $63b1: $e0 $41
    jp hl                                         ; $63b3: $e9


    ld d, h                                       ; $63b4: $54
    ld b, d                                       ; $63b5: $42
    jp hl                                         ; $63b6: $e9


    add c                                         ; $63b7: $81
    ld b, d                                       ; $63b8: $42
    jp hl                                         ; $63b9: $e9


    rst $30                                       ; $63ba: $f7
    ld b, d                                       ; $63bb: $42
    jp hl                                         ; $63bc: $e9


    inc h                                         ; $63bd: $24
    ld b, e                                       ; $63be: $43
    jp hl                                         ; $63bf: $e9


    sub h                                         ; $63c0: $94
    ld b, e                                       ; $63c1: $43
    jp hl                                         ; $63c2: $e9


    call nz, $e943                                ; $63c3: $c4 $43 $e9
    ld l, $44                                     ; $63c6: $2e $44
    jp hl                                         ; $63c8: $e9


    ld e, b                                       ; $63c9: $58
    ld b, h                                       ; $63ca: $44
    jp hl                                         ; $63cb: $e9


    call nz, $e944                                ; $63cc: $c4 $44 $e9
    xor $44                                       ; $63cf: $ee $44
    jp hl                                         ; $63d1: $e9


    ld e, h                                       ; $63d2: $5c
    ld b, l                                       ; $63d3: $45
    jp hl                                         ; $63d4: $e9


    adc b                                         ; $63d5: $88
    ld b, l                                       ; $63d6: $45
    jp hl                                         ; $63d7: $e9


    dec e                                         ; $63d8: $1d
    ld b, [hl]                                    ; $63d9: $46
    jp hl                                         ; $63da: $e9


    or e                                          ; $63db: $b3
    ld b, [hl]                                    ; $63dc: $46
    jp hl                                         ; $63dd: $e9


    ld c, b                                       ; $63de: $48
    ld b, a                                       ; $63df: $47
    jp hl                                         ; $63e0: $e9


    db $dd                                        ; $63e1: $dd
    ld b, a                                       ; $63e2: $47
    jp hl                                         ; $63e3: $e9


    ld [hl], d                                    ; $63e4: $72
    ld c, b                                       ; $63e5: $48
    jp hl                                         ; $63e6: $e9


    ld b, $49                                     ; $63e7: $06 $49
    jp hl                                         ; $63e9: $e9


    sbc e                                         ; $63ea: $9b
    ld c, c                                       ; $63eb: $49
    jp hl                                         ; $63ec: $e9


    ld [hl-], a                                   ; $63ed: $32
    ld c, d                                       ; $63ee: $4a
    jp hl                                         ; $63ef: $e9


    ret z                                         ; $63f0: $c8

    ld c, d                                       ; $63f1: $4a
    jp hl                                         ; $63f2: $e9


    ld e, h                                       ; $63f3: $5c
    ld c, e                                       ; $63f4: $4b
    jp hl                                         ; $63f5: $e9


    di                                            ; $63f6: $f3
    ld c, e                                       ; $63f7: $4b
    jp hl                                         ; $63f8: $e9


    adc b                                         ; $63f9: $88
    ld c, h                                       ; $63fa: $4c
    jp hl                                         ; $63fb: $e9


    dec de                                        ; $63fc: $1b
    ld c, l                                       ; $63fd: $4d
    jp hl                                         ; $63fe: $e9


    or d                                          ; $63ff: $b2
    ld c, l                                       ; $6400: $4d
    jp hl                                         ; $6401: $e9


    ld b, b                                       ; $6402: $40
    ld c, [hl]                                    ; $6403: $4e
    jp hl                                         ; $6404: $e9


    adc $4e                                       ; $6405: $ce $4e
    jp hl                                         ; $6407: $e9


    ld e, b                                       ; $6408: $58
    ld c, a                                       ; $6409: $4f
    jp hl                                         ; $640a: $e9


    db $e3                                        ; $640b: $e3
    ld c, a                                       ; $640c: $4f
    jp hl                                         ; $640d: $e9


    ld l, a                                       ; $640e: $6f
    ld d, b                                       ; $640f: $50
    jp hl                                         ; $6410: $e9


    ld a, [$e950]                                 ; $6411: $fa $50 $e9
    add [hl]                                      ; $6414: $86
    ld d, c                                       ; $6415: $51
    jp hl                                         ; $6416: $e9


    ld c, $52                                     ; $6417: $0e $52
    jp hl                                         ; $6419: $e9


    sub a                                         ; $641a: $97
    ld d, d                                       ; $641b: $52
    jp hl                                         ; $641c: $e9


    inc h                                         ; $641d: $24
    ld d, e                                       ; $641e: $53
    jp hl                                         ; $641f: $e9


Jump_008_6420:
    xor h                                         ; $6420: $ac
    ld d, e                                       ; $6421: $53
    jp hl                                         ; $6422: $e9


    ld l, $54                                     ; $6423: $2e $54
    jp hl                                         ; $6425: $e9


    or c                                          ; $6426: $b1
    ld d, h                                       ; $6427: $54
    jp hl                                         ; $6428: $e9


    scf                                           ; $6429: $37
    ld d, l                                       ; $642a: $55
    jp hl                                         ; $642b: $e9


    add $55                                       ; $642c: $c6 $55
    jp hl                                         ; $642e: $e9


    or [hl]                                       ; $642f: $b6
    ld d, [hl]                                    ; $6430: $56
    jp hl                                         ; $6431: $e9


    and h                                         ; $6432: $a4
    ld d, a                                       ; $6433: $57
    jp hl                                         ; $6434: $e9


    sub b                                         ; $6435: $90
    ld e, b                                       ; $6436: $58
    jp hl                                         ; $6437: $e9


    ld a, [hl]                                    ; $6438: $7e
    ld e, c                                       ; $6439: $59
    jp hl                                         ; $643a: $e9


    add $55                                       ; $643b: $c6 $55
    jp hl                                         ; $643d: $e9


    or [hl]                                       ; $643e: $b6
    ld d, [hl]                                    ; $643f: $56
    jp hl                                         ; $6440: $e9


Call_008_6441:
    and h                                         ; $6441: $a4
    ld d, a                                       ; $6442: $57
    jp hl                                         ; $6443: $e9


    sub b                                         ; $6444: $90
    ld e, b                                       ; $6445: $58
    jp hl                                         ; $6446: $e9


    ld a, [hl]                                    ; $6447: $7e
    ld e, c                                       ; $6448: $59
    jp hl                                         ; $6449: $e9


    add $55                                       ; $644a: $c6 $55
    jp hl                                         ; $644c: $e9


    or [hl]                                       ; $644d: $b6
    ld d, [hl]                                    ; $644e: $56
    jp hl                                         ; $644f: $e9


    and h                                         ; $6450: $a4
    ld d, a                                       ; $6451: $57
    jp hl                                         ; $6452: $e9


    sub b                                         ; $6453: $90
    ld e, b                                       ; $6454: $58
    jp hl                                         ; $6455: $e9


    ld a, [hl]                                    ; $6456: $7e
    ld e, c                                       ; $6457: $59
    jp hl                                         ; $6458: $e9


    ld l, l                                       ; $6459: $6d
    ld e, d                                       ; $645a: $5a
    jp hl                                         ; $645b: $e9


    cpl                                           ; $645c: $2f
    ld e, e                                       ; $645d: $5b
    jp hl                                         ; $645e: $e9


    pop af                                        ; $645f: $f1
    ld e, e                                       ; $6460: $5b
    jp hl                                         ; $6461: $e9


    xor l                                         ; $6462: $ad
    ld e, h                                       ; $6463: $5c
    jp hl                                         ; $6464: $e9


    ld [hl], c                                    ; $6465: $71
    ld e, l                                       ; $6466: $5d
    jp hl                                         ; $6467: $e9


    inc sp                                        ; $6468: $33
    ld e, [hl]                                    ; $6469: $5e
    jp hl                                         ; $646a: $e9


    db $ed                                        ; $646b: $ed
    ld e, [hl]                                    ; $646c: $5e
    jp hl                                         ; $646d: $e9


    xor l                                         ; $646e: $ad
    ld e, a                                       ; $646f: $5f
    jp hl                                         ; $6470: $e9


    ld a, h                                       ; $6471: $7c
    ld h, b                                       ; $6472: $60
    jp hl                                         ; $6473: $e9


    ld b, l                                       ; $6474: $45
    ld h, c                                       ; $6475: $61
    jp hl                                         ; $6476: $e9


    rlca                                          ; $6477: $07
    ld h, d                                       ; $6478: $62
    jp hl                                         ; $6479: $e9


    reti                                          ; $647a: $d9


    ld h, d                                       ; $647b: $62
    jp hl                                         ; $647c: $e9


    and h                                         ; $647d: $a4
    ld h, e                                       ; $647e: $63
    jp hl                                         ; $647f: $e9


    ld h, e                                       ; $6480: $63
    ld h, h                                       ; $6481: $64
    jp hl                                         ; $6482: $e9


    dec [hl]                                      ; $6483: $35
    ld h, l                                       ; $6484: $65
    jp hl                                         ; $6485: $e9


    db $db                                        ; $6486: $db
    ld h, l                                       ; $6487: $65
    jp hl                                         ; $6488: $e9


    add l                                         ; $6489: $85
    ld h, [hl]                                    ; $648a: $66
    jp hl                                         ; $648b: $e9


    add hl, hl                                    ; $648c: $29
    ld h, a                                       ; $648d: $67
    jp hl                                         ; $648e: $e9


    call $e967                                    ; $648f: $cd $67 $e9
    ld [hl], h                                    ; $6492: $74
    ld l, b                                       ; $6493: $68
    jp hl                                         ; $6494: $e9


    ld [de], a                                    ; $6495: $12
    ld l, c                                       ; $6496: $69
    jp hl                                         ; $6497: $e9


Jump_008_6498:
    cp b                                          ; $6498: $b8
    ld l, c                                       ; $6499: $69
    jp hl                                         ; $649a: $e9


    dec bc                                        ; $649b: $0b
    ld l, d                                       ; $649c: $6a
    jp hl                                         ; $649d: $e9


    ld d, h                                       ; $649e: $54
    ld l, d                                       ; $649f: $6a
    jp hl                                         ; $64a0: $e9


    xor c                                         ; $64a1: $a9
    ld l, d                                       ; $64a2: $6a
    jp hl                                         ; $64a3: $e9


    db $fd                                        ; $64a4: $fd
    ld l, d                                       ; $64a5: $6a
    jp hl                                         ; $64a6: $e9


    ld c, c                                       ; $64a7: $49
    ld l, e                                       ; $64a8: $6b
    jp hl                                         ; $64a9: $e9


    sbc d                                         ; $64aa: $9a
    ld l, e                                       ; $64ab: $6b
    jp hl                                         ; $64ac: $e9


    xor $6b                                       ; $64ad: $ee $6b
    jp hl                                         ; $64af: $e9


    ld c, c                                       ; $64b0: $49
    ld l, h                                       ; $64b1: $6c
    jp hl                                         ; $64b2: $e9


    and a                                         ; $64b3: $a7
    ld l, h                                       ; $64b4: $6c
    jp hl                                         ; $64b5: $e9


    cp $6c                                        ; $64b6: $fe $6c
    jp hl                                         ; $64b8: $e9


    ld d, a                                       ; $64b9: $57
    ld l, l                                       ; $64ba: $6d
    jp hl                                         ; $64bb: $e9


    or h                                          ; $64bc: $b4
    ld l, l                                       ; $64bd: $6d
    jp hl                                         ; $64be: $e9


    rlca                                          ; $64bf: $07
    ld l, [hl]                                    ; $64c0: $6e
    jp hl                                         ; $64c1: $e9


    ld e, d                                       ; $64c2: $5a
    ld l, [hl]                                    ; $64c3: $6e
    jp hl                                         ; $64c4: $e9


    ret                                           ; $64c5: $c9


    ld l, [hl]                                    ; $64c6: $6e
    jp hl                                         ; $64c7: $e9


    ld sp, $e96f                                  ; $64c8: $31 $6f $e9
    and b                                         ; $64cb: $a0
    ld l, a                                       ; $64cc: $6f
    jp hl                                         ; $64cd: $e9


    dec c                                         ; $64ce: $0d
    ld [hl], b                                    ; $64cf: $70
    jp hl                                         ; $64d0: $e9


    ld [hl], l                                    ; $64d1: $75
    ld [hl], b                                    ; $64d2: $70
    jp hl                                         ; $64d3: $e9


    pop hl                                        ; $64d4: $e1
    ld [hl], b                                    ; $64d5: $70
    jp hl                                         ; $64d6: $e9


    ld d, e                                       ; $64d7: $53
    ld [hl], c                                    ; $64d8: $71
    jp hl                                         ; $64d9: $e9


    ld bc, $e972                                  ; $64da: $01 $72 $e9
    xor l                                         ; $64dd: $ad
    ld [hl], d                                    ; $64de: $72
    jp hl                                         ; $64df: $e9


    ld c, a                                       ; $64e0: $4f
    ld [hl], e                                    ; $64e1: $73
    jp hl                                         ; $64e2: $e9


    or $73                                        ; $64e3: $f6 $73
    jp hl                                         ; $64e5: $e9


    and h                                         ; $64e6: $a4
    ld [hl], h                                    ; $64e7: $74
    jp hl                                         ; $64e8: $e9


    ld c, b                                       ; $64e9: $48
    ld [hl], l                                    ; $64ea: $75
    jp hl                                         ; $64eb: $e9


    rst $28                                       ; $64ec: $ef
    ld [hl], l                                    ; $64ed: $75
    jp hl                                         ; $64ee: $e9


    add a                                         ; $64ef: $87
    halt                                          ; $64f0: $76
    jp hl                                         ; $64f1: $e9


    inc e                                         ; $64f2: $1c
    ld [hl], a                                    ; $64f3: $77
    jp hl                                         ; $64f4: $e9


    xor e                                         ; $64f5: $ab
    ld [hl], a                                    ; $64f6: $77
    jp hl                                         ; $64f7: $e9


    ld b, a                                       ; $64f8: $47
    ld a, b                                       ; $64f9: $78
    jp hl                                         ; $64fa: $e9


    db $dd                                        ; $64fb: $dd

Call_008_64fc:
    ld a, b                                       ; $64fc: $78
    jp hl                                         ; $64fd: $e9


    ld l, l                                       ; $64fe: $6d
    ld a, c                                       ; $64ff: $79
    jp hl                                         ; $6500: $e9


    rlca                                          ; $6501: $07
    ld a, d                                       ; $6502: $7a
    jp hl                                         ; $6503: $e9


    bit 7, d                                      ; $6504: $cb $7a
    jp hl                                         ; $6506: $e9


    sub e                                         ; $6507: $93
    ld a, e                                       ; $6508: $7b
    jp hl                                         ; $6509: $e9


    ld d, [hl]                                    ; $650a: $56
    ld a, h                                       ; $650b: $7c

Jump_008_650c:
    jp hl                                         ; $650c: $e9


    jr nz, @+$7f                                  ; $650d: $20 $7d

    jp hl                                         ; $650f: $e9


    ld [$e97d], a                                 ; $6510: $ea $7d $e9
    or l                                          ; $6513: $b5
    ld a, [hl]                                    ; $6514: $7e
    ld [$4001], a                                 ; $6515: $ea $01 $40
    ld [$40b0], a                                 ; $6518: $ea $b0 $40
    ld [$415f], a                                 ; $651b: $ea $5f $41
    ld [$4202], a                                 ; $651e: $ea $02 $42
    ld [$42ac], a                                 ; $6521: $ea $ac $42
    ld [$435d], a                                 ; $6524: $ea $5d $43
    ld [$4402], a                                 ; $6527: $ea $02 $44
    ld [$44ab], a                                 ; $652a: $ea $ab $44
    ld [$453c], a                                 ; $652d: $ea $3c $45
    ld [$45d2], a                                 ; $6530: $ea $d2 $45
    ld [$4661], a                                 ; $6533: $ea $61 $46
    ld [$46f6], a                                 ; $6536: $ea $f6 $46
    ld [$478e], a                                 ; $6539: $ea $8e $47
    ld [$481d], a                                 ; $653c: $ea $1d $48
    ld [$48b2], a                                 ; $653f: $ea $b2 $48
    ld [$4978], a                                 ; $6542: $ea $78 $49
    ld [$4a3a], a                                 ; $6545: $ea $3a $4a
    ld [$4af7], a                                 ; $6548: $ea $f7 $4a
    ld [$4bb5], a                                 ; $654b: $ea $b5 $4b
    ld [$4c77], a                                 ; $654e: $ea $77 $4c
    ld [$4d39], a                                 ; $6551: $ea $39 $4d
    ld [$4df5], a                                 ; $6554: $ea $f5 $4d
    ld [$4e8e], a                                 ; $6557: $ea $8e $4e
    ld [$4f28], a                                 ; $655a: $ea $28 $4f
    ld [$4fb5], a                                 ; $655d: $ea $b5 $4f
    ld [$504c], a                                 ; $6560: $ea $4c $50
    ld [$50e8], a                                 ; $6563: $ea $e8 $50
    ld [$5177], a                                 ; $6566: $ea $77 $51
    ld [$520d], a                                 ; $6569: $ea $0d $52
    ld [$52ac], a                                 ; $656c: $ea $ac $52
    ld [$5347], a                                 ; $656f: $ea $47 $53
    ld [$53d6], a                                 ; $6572: $ea $d6 $53
    ld [$5478], a                                 ; $6575: $ea $78 $54
    ld [$5515], a                                 ; $6578: $ea $15 $55
    ld [$55a4], a                                 ; $657b: $ea $a4 $55
    ld [$5646], a                                 ; $657e: $ea $46 $56
    ld [$5707], a                                 ; $6581: $ea $07 $57
    ld [$57d0], a                                 ; $6584: $ea $d0 $57
    ld [$5882], a                                 ; $6587: $ea $82 $58
    ld [$5939], a                                 ; $658a: $ea $39 $59
    ld [$59f8], a                                 ; $658d: $ea $f8 $59
    ld [$5aaf], a                                 ; $6590: $ea $af $5a
    jp hl                                         ; $6593: $e9


    ld a, b                                       ; $6594: $78
    ld a, a                                       ; $6595: $7f
    ld [$5b66], a                                 ; $6596: $ea $66 $5b
    ld [$5bb1], a                                 ; $6599: $ea $b1 $5b
    ld [$5c01], a                                 ; $659c: $ea $01 $5c
    ld [$5c4e], a                                 ; $659f: $ea $4e $5c
    add sp, -$20                                  ; $65a2: $e8 $e0
    ld a, a                                       ; $65a4: $7f
    ld [$5c98], a                                 ; $65a5: $ea $98 $5c
    jp hl                                         ; $65a8: $e9


    cp c                                          ; $65a9: $b9
    ld a, a                                       ; $65aa: $7f
    ld [$5d22], a                                 ; $65ab: $ea $22 $5d
    ld [$5de5], a                                 ; $65ae: $ea $e5 $5d
    ld [$5e37], a                                 ; $65b1: $ea $37 $5e
    ld [$5f05], a                                 ; $65b4: $ea $05 $5f
    ld [$5f75], a                                 ; $65b7: $ea $75 $5f
    ld [$6045], a                                 ; $65ba: $ea $45 $60

Call_008_65bd:
    ld [$60d7], a                                 ; $65bd: $ea $d7 $60
    ld [$61a5], a                                 ; $65c0: $ea $a5 $61
    ld [$6232], a                                 ; $65c3: $ea $32 $62
    ld [$62ff], a                                 ; $65c6: $ea $ff $62
    ld [$638f], a                                 ; $65c9: $ea $8f $63
    ld [$645b], a                                 ; $65cc: $ea $5b $64
    ld [$64ed], a                                 ; $65cf: $ea $ed $64
    ld [$65ba], a                                 ; $65d2: $ea $ba $65
    ld [$664a], a                                 ; $65d5: $ea $4a $66
    ld [$6717], a                                 ; $65d8: $ea $17 $67
    ld [$67a7], a                                 ; $65db: $ea $a7 $67
    ld [$6874], a                                 ; $65de: $ea $74 $68
    ld [$6904], a                                 ; $65e1: $ea $04 $69
    ld [$694c], a                                 ; $65e4: $ea $4c $69
    ld [$695d], a                                 ; $65e7: $ea $5d $69
    ld [$69cd], a                                 ; $65ea: $ea $cd $69
    ld [$69de], a                                 ; $65ed: $ea $de $69
    ld [$6a57], a                                 ; $65f0: $ea $57 $6a
    ld [$6a68], a                                 ; $65f3: $ea $68 $6a
    ld [$6ae5], a                                 ; $65f6: $ea $e5 $6a
    ld [$6af6], a                                 ; $65f9: $ea $f6 $6a
    ld [$6b75], a                                 ; $65fc: $ea $75 $6b
    ld [$6b86], a                                 ; $65ff: $ea $86 $6b
    ld [$6c03], a                                 ; $6602: $ea $03 $6c
    ld [$6c14], a                                 ; $6605: $ea $14 $6c
    ld [$6c90], a                                 ; $6608: $ea $90 $6c
    ld [$6ca1], a                                 ; $660b: $ea $a1 $6c
    ld [$6d1f], a                                 ; $660e: $ea $1f $6d
    ld [$6d30], a                                 ; $6611: $ea $30 $6d
    ld [$6dad], a                                 ; $6614: $ea $ad $6d
    ld [$6dbe], a                                 ; $6617: $ea $be $6d
    ld [$6e38], a                                 ; $661a: $ea $38 $6e
    ld [$6e53], a                                 ; $661d: $ea $53 $6e
    ld [$6ecd], a                                 ; $6620: $ea $cd $6e
    ld [$6eea], a                                 ; $6623: $ea $ea $6e
    ld [$6f65], a                                 ; $6626: $ea $65 $6f
    ld [$6f82], a                                 ; $6629: $ea $82 $6f
    ld [$7002], a                                 ; $662c: $ea $02 $70
    ld [$7089], a                                 ; $662f: $ea $89 $70
    ld [$710b], a                                 ; $6632: $ea $0b $71
    ld [$718a], a                                 ; $6635: $ea $8a $71
    ld [$7206], a                                 ; $6638: $ea $06 $72
    ld [$7282], a                                 ; $663b: $ea $82 $72
    ld [$72cc], a                                 ; $663e: $ea $cc $72
    ld [$7315], a                                 ; $6641: $ea $15 $73
    ld [$735c], a                                 ; $6644: $ea $5c $73
    ld [$73a2], a                                 ; $6647: $ea $a2 $73
    ld [$73e9], a                                 ; $664a: $ea $e9 $73
    ld [$7433], a                                 ; $664d: $ea $33 $74
    ld [$747c], a                                 ; $6650: $ea $7c $74
    ld [$74c3], a                                 ; $6653: $ea $c3 $74
    ld [$7500], a                                 ; $6656: $ea $00 $75
    ld [$7537], a                                 ; $6659: $ea $37 $75
    ld [$7574], a                                 ; $665c: $ea $74 $75
    ld [$75b1], a                                 ; $665f: $ea $b1 $75
    ld [$75e8], a                                 ; $6662: $ea $e8 $75
    ld [$7625], a                                 ; $6665: $ea $25 $76
    ld [$765e], a                                 ; $6668: $ea $5e $76
    ld [$7697], a                                 ; $666b: $ea $97 $76
    ld [$76d4], a                                 ; $666e: $ea $d4 $76
    ld [$7711], a                                 ; $6671: $ea $11 $77
    ld [$7752], a                                 ; $6674: $ea $52 $77
    ld [$7793], a                                 ; $6677: $ea $93 $77
    ld [$77d2], a                                 ; $667a: $ea $d2 $77
    ld [$7813], a                                 ; $667d: $ea $13 $78
    ld [$7856], a                                 ; $6680: $ea $56 $78
    ld [$7922], a                                 ; $6683: $ea $22 $79
    ld [$7a05], a                                 ; $6686: $ea $05 $7a
    ld [$7ad4], a                                 ; $6689: $ea $d4 $7a
    ld [$7b8c], a                                 ; $668c: $ea $8c $7b
    ld [$7c81], a                                 ; $668f: $ea $81 $7c
    ld [$7d73], a                                 ; $6692: $ea $73 $7d
    ld [$7dcb], a                                 ; $6695: $ea $cb $7d
    ld [$7e1e], a                                 ; $6698: $ea $1e $7e
    ld [$7e77], a                                 ; $669b: $ea $77 $7e
    ld [$7ee0], a                                 ; $669e: $ea $e0 $7e
    ld [$7f39], a                                 ; $66a1: $ea $39 $7f
    db $eb                                        ; $66a4: $eb
    ld bc, $eb40                                  ; $66a5: $01 $40 $eb
    add hl, bc                                    ; $66a8: $09
    ld b, c                                       ; $66a9: $41
    db $eb                                        ; $66aa: $eb
    ld [de], a                                    ; $66ab: $12
    ld b, d                                       ; $66ac: $42
    db $eb                                        ; $66ad: $eb
    dec de                                        ; $66ae: $1b
    ld b, e                                       ; $66af: $43
    db $eb                                        ; $66b0: $eb
    ld e, $44                                     ; $66b1: $1e $44
    db $eb                                        ; $66b3: $eb
    daa                                           ; $66b4: $27
    ld b, l                                       ; $66b5: $45
    db $eb                                        ; $66b6: $eb
    jr nc, jr_008_66ff                            ; $66b7: $30 $46

    db $eb                                        ; $66b9: $eb
    ld a, [hl-]                                   ; $66ba: $3a
    ld b, a                                       ; $66bb: $47
    db $eb                                        ; $66bc: $eb
    dec a                                         ; $66bd: $3d
    ld c, b                                       ; $66be: $48
    db $eb                                        ; $66bf: $eb
    ld b, [hl]                                    ; $66c0: $46
    ld c, c                                       ; $66c1: $49
    db $eb                                        ; $66c2: $eb
    ld c, a                                       ; $66c3: $4f
    ld c, d                                       ; $66c4: $4a
    db $eb                                        ; $66c5: $eb
    ld e, c                                       ; $66c6: $59
    ld c, e                                       ; $66c7: $4b
    db $eb                                        ; $66c8: $eb
    ld e, h                                       ; $66c9: $5c
    ld c, h                                       ; $66ca: $4c
    db $eb                                        ; $66cb: $eb
    ld h, h                                       ; $66cc: $64
    ld c, l                                       ; $66cd: $4d
    db $eb                                        ; $66ce: $eb
    ld l, [hl]                                    ; $66cf: $6e
    ld c, [hl]                                    ; $66d0: $4e

    db $ea, $a6, $7f, $eb, $77, $4f, $eb, $b0, $4f, $eb, $e6, $4f, $eb, $1f, $50, $eb
    db $58, $50, $eb, $94, $50, $eb, $d3, $50

    db $eb                                        ; $66e9: $eb
    dec c                                         ; $66ea: $0d
    ld d, c                                       ; $66eb: $51
    ld [$7fdd], a                                 ; $66ec: $ea $dd $7f
    db $eb                                        ; $66ef: $eb
    or d                                          ; $66f0: $b2
    ld d, c                                       ; $66f1: $51
    ld [$7fec], a                                 ; $66f2: $ea $ec $7f
    db $eb                                        ; $66f5: $eb
    ld d, e                                       ; $66f6: $53
    ld d, d                                       ; $66f7: $52
    db $eb                                        ; $66f8: $eb
    or $52                                        ; $66f9: $f6 $52
    db $eb                                        ; $66fb: $eb
    dec b                                         ; $66fc: $05
    ld d, e                                       ; $66fd: $53
    db $eb                                        ; $66fe: $eb

jr_008_66ff:
    adc e                                         ; $66ff: $8b
    ld d, e                                       ; $6700: $53
    db $eb                                        ; $6701: $eb
    sbc h                                         ; $6702: $9c
    ld d, e                                       ; $6703: $53
    db $eb                                        ; $6704: $eb
    inc hl                                        ; $6705: $23
    ld d, h                                       ; $6706: $54
    db $eb                                        ; $6707: $eb
    inc [hl]                                      ; $6708: $34
    ld d, h                                       ; $6709: $54
    db $eb                                        ; $670a: $eb
    or [hl]                                       ; $670b: $b6
    ld d, h                                       ; $670c: $54
    db $eb                                        ; $670d: $eb
    rst $00                                       ; $670e: $c7
    ld d, h                                       ; $670f: $54
    db $eb                                        ; $6710: $eb
    ld b, e                                       ; $6711: $43
    ld d, l                                       ; $6712: $55
    db $eb                                        ; $6713: $eb
    ld d, h                                       ; $6714: $54
    ld d, l                                       ; $6715: $55
    db $eb                                        ; $6716: $eb
    reti                                          ; $6717: $d9


    ld d, l                                       ; $6718: $55
    db $eb                                        ; $6719: $eb
    ld [$eb55], a                                 ; $671a: $ea $55 $eb
    ld [hl], d                                    ; $671d: $72
    ld d, [hl]                                    ; $671e: $56
    db $eb                                        ; $671f: $eb
    add e                                         ; $6720: $83
    ld d, [hl]                                    ; $6721: $56
    db $eb                                        ; $6722: $eb
    nop                                           ; $6723: $00
    ld d, a                                       ; $6724: $57
    db $eb                                        ; $6725: $eb
    ld de, $eb57                                  ; $6726: $11 $57 $eb
    adc [hl]                                      ; $6729: $8e
    ld d, a                                       ; $672a: $57
    db $eb                                        ; $672b: $eb
    sbc a                                         ; $672c: $9f
    ld d, a                                       ; $672d: $57
    db $eb                                        ; $672e: $eb
    cp b                                          ; $672f: $b8
    ld e, b                                       ; $6730: $58
    db $eb                                        ; $6731: $eb
    db $e3                                        ; $6732: $e3
    ld e, c                                       ; $6733: $59
    db $eb                                        ; $6734: $eb
    ld de, $eb5b                                  ; $6735: $11 $5b $eb
    ld c, c                                       ; $6738: $49
    ld e, h                                       ; $6739: $5c
    db $eb                                        ; $673a: $eb
    adc a                                         ; $673b: $8f
    ld e, l                                       ; $673c: $5d
    db $eb                                        ; $673d: $eb
    and $5e                                       ; $673e: $e6 $5e
    db $eb                                        ; $6740: $eb
    ld c, c                                       ; $6741: $49
    ld h, b                                       ; $6742: $60
    db $eb                                        ; $6743: $eb
    and [hl]                                      ; $6744: $a6
    ld h, c                                       ; $6745: $61
    db $eb                                        ; $6746: $eb
    db $dd                                        ; $6747: $dd
    ld h, d                                       ; $6748: $62
    db $eb                                        ; $6749: $eb
    ld a, [bc]                                    ; $674a: $0a
    ld h, h                                       ; $674b: $64
    db $eb                                        ; $674c: $eb
    dec hl                                        ; $674d: $2b
    ld h, l                                       ; $674e: $65
    db $eb                                        ; $674f: $eb
    ld d, h                                       ; $6750: $54
    ld h, [hl]                                    ; $6751: $66
    db $eb                                        ; $6752: $eb
    ld b, b                                       ; $6753: $40
    ld h, a                                       ; $6754: $67
    db $eb                                        ; $6755: $eb
    ld l, $68                                     ; $6756: $2e $68
    db $eb                                        ; $6758: $eb
    inc l                                         ; $6759: $2c
    ld l, c                                       ; $675a: $69
    db $eb                                        ; $675b: $eb
    inc h                                         ; $675c: $24
    ld l, d                                       ; $675d: $6a

Jump_008_675e:
    db $eb                                        ; $675e: $eb
    ld sp, $eb6b                                  ; $675f: $31 $6b $eb
    inc c                                         ; $6762: $0c
    ld l, h                                       ; $6763: $6c
    db $eb                                        ; $6764: $eb
    ld hl, sp+$6c                                 ; $6765: $f8 $6c
    db $eb                                        ; $6767: $eb
    jp nc, $eb6d                                  ; $6768: $d2 $6d $eb

    and l                                         ; $676b: $a5
    ld l, [hl]                                    ; $676c: $6e
    db $eb                                        ; $676d: $eb
    ld a, l                                       ; $676e: $7d
    ld l, a                                       ; $676f: $6f
    db $eb                                        ; $6770: $eb
    ld e, d                                       ; $6771: $5a
    ld [hl], b                                    ; $6772: $70
    db $eb                                        ; $6773: $eb
    jr jr_008_67e7                                ; $6774: $18 $71

    db $eb                                        ; $6776: $eb
    and c                                         ; $6777: $a1
    ld [hl], c                                    ; $6778: $71
    db $eb                                        ; $6779: $eb
    ret                                           ; $677a: $c9


    ld [hl], c                                    ; $677b: $71
    db $eb                                        ; $677c: $eb
    ld a, [$eb71]                                 ; $677d: $fa $71 $eb
    ld l, $72                                     ; $6780: $2e $72
    db $eb                                        ; $6782: $eb
    ld e, h                                       ; $6783: $5c
    ld [hl], d                                    ; $6784: $72
    db $eb                                        ; $6785: $eb
    adc d                                         ; $6786: $8a
    ld [hl], d                                    ; $6787: $72
    db $eb                                        ; $6788: $eb
    cp h                                          ; $6789: $bc
    ld [hl], d                                    ; $678a: $72
    db $eb                                        ; $678b: $eb
    ld a, [c]                                     ; $678c: $f2
    ld [hl], d                                    ; $678d: $72
    db $eb                                        ; $678e: $eb
    jr nz, jr_008_6804                            ; $678f: $20 $73

    db $eb                                        ; $6791: $eb
    ld c, [hl]                                    ; $6792: $4e
    ld [hl], e                                    ; $6793: $73
    db $eb                                        ; $6794: $eb
    add b                                         ; $6795: $80
    ld [hl], e                                    ; $6796: $73
    db $eb                                        ; $6797: $eb
    or h                                          ; $6798: $b4
    ld [hl], e                                    ; $6799: $73
    db $eb                                        ; $679a: $eb
    and $73                                       ; $679b: $e6 $73
    db $eb                                        ; $679d: $eb
    dec d                                         ; $679e: $15
    ld [hl], h                                    ; $679f: $74
    db $eb                                        ; $67a0: $eb
    dec a                                         ; $67a1: $3d
    ld [hl], h                                    ; $67a2: $74
    db $eb                                        ; $67a3: $eb
    ld l, l                                       ; $67a4: $6d
    ld [hl], h                                    ; $67a5: $74
    db $eb                                        ; $67a6: $eb
    and c                                         ; $67a7: $a1
    ld [hl], h                                    ; $67a8: $74
    db $eb                                        ; $67a9: $eb
    rst $10                                       ; $67aa: $d7
    ld [hl], h                                    ; $67ab: $74
    db $eb                                        ; $67ac: $eb
    rlca                                          ; $67ad: $07
    ld [hl], l                                    ; $67ae: $75
    db $eb                                        ; $67af: $eb
    scf                                           ; $67b0: $37
    ld [hl], l                                    ; $67b1: $75
    db $eb                                        ; $67b2: $eb
    ld l, d                                       ; $67b3: $6a
    ld [hl], l                                    ; $67b4: $75
    db $eb                                        ; $67b5: $eb
    and d                                         ; $67b6: $a2
    ld [hl], l                                    ; $67b7: $75
    db $eb                                        ; $67b8: $eb
    sub $75                                       ; $67b9: $d6 $75
    db $eb                                        ; $67bb: $eb
    ld [$eb76], sp                                ; $67bc: $08 $76 $eb
    jr nc, @+$78                                  ; $67bf: $30 $76

    db $eb                                        ; $67c1: $eb
    ld l, d                                       ; $67c2: $6a
    halt                                          ; $67c3: $76
    db $eb                                        ; $67c4: $eb
    xor b                                         ; $67c5: $a8
    halt                                          ; $67c6: $76
    db $eb                                        ; $67c7: $eb
    add sp, $76                                   ; $67c8: $e8 $76
    db $eb                                        ; $67ca: $eb
    ld [hl+], a                                   ; $67cb: $22
    ld [hl], a                                    ; $67cc: $77
    db $eb                                        ; $67cd: $eb
    ld e, h                                       ; $67ce: $5c
    ld [hl], a                                    ; $67cf: $77
    db $eb                                        ; $67d0: $eb
    sbc c                                         ; $67d1: $99
    ld [hl], a                                    ; $67d2: $77

Jump_008_67d3:
    db $eb                                        ; $67d3: $eb
    db $db                                        ; $67d4: $db
    ld [hl], a                                    ; $67d5: $77
    db $eb                                        ; $67d6: $eb
    add hl, de                                    ; $67d7: $19
    ld a, b                                       ; $67d8: $78
    db $eb                                        ; $67d9: $eb
    ld b, l                                       ; $67da: $45
    ld a, b                                       ; $67db: $78
    db $eb                                        ; $67dc: $eb
    ld [hl], h                                    ; $67dd: $74
    ld a, b                                       ; $67de: $78
    db $eb                                        ; $67df: $eb
    or b                                          ; $67e0: $b0
    ld a, b                                       ; $67e1: $78
    db $eb                                        ; $67e2: $eb
    db $dd                                        ; $67e3: $dd
    ld a, b                                       ; $67e4: $78
    db $eb                                        ; $67e5: $eb
    xor b                                         ; $67e6: $a8

jr_008_67e7:
    ld a, c                                       ; $67e7: $79
    db $eb                                        ; $67e8: $eb
    inc sp                                        ; $67e9: $33
    ld a, d                                       ; $67ea: $7a
    db $eb                                        ; $67eb: $eb
    pop af                                        ; $67ec: $f1
    ld a, d                                       ; $67ed: $7a
    db $eb                                        ; $67ee: $eb
    ld [c], a                                     ; $67ef: $e2
    ld a, e                                       ; $67f0: $7b
    db $eb                                        ; $67f1: $eb
    xor d                                         ; $67f2: $aa
    ld a, h                                       ; $67f3: $7c
    db $eb                                        ; $67f4: $eb
    cpl                                           ; $67f5: $2f
    ld a, l                                       ; $67f6: $7d
    db $eb                                        ; $67f7: $eb
    push af                                       ; $67f8: $f5
    ld a, l                                       ; $67f9: $7d
    db $eb                                        ; $67fa: $eb
    ret                                           ; $67fb: $c9


    ld a, [hl]                                    ; $67fc: $7e
    db $eb                                        ; $67fd: $eb
    or $7e                                        ; $67fe: $f6 $7e
    db $eb                                        ; $6800: $eb
    ld [$eb7f], sp                                ; $6801: $08 $7f $eb

jr_008_6804:
    dec h                                         ; $6804: $25
    ld a, a                                       ; $6805: $7f
    db $eb                                        ; $6806: $eb
    ld e, b                                       ; $6807: $58
    ld a, a                                       ; $6808: $7f
    db $eb                                        ; $6809: $eb
    sbc d                                         ; $680a: $9a
    ld a, a                                       ; $680b: $7f
    db $ec                                        ; $680c: $ec
    ld bc, $ec40                                  ; $680d: $01 $40 $ec
    ld b, e                                       ; $6810: $43
    ld b, b                                       ; $6811: $40

    db $eb, $e5, $7f, $ec, $87, $40, $ec, $a3, $40, $ec, $df, $40, $ec, $03, $41, $ec
    db $27, $41, $ec, $5f, $41, $ec, $a6, $41, $ec, $f6, $41, $ec, $6d, $42, $ec, $0c
    db $43, $ec, $30, $43, $ec, $67, $43, $ec, $ae, $43, $ec, $3e, $44, $ec, $d1, $44
    db $ec, $6d, $45, $ec, $c8, $45, $ec, $1b, $46

    db $ec                                        ; $684b: $ec
    ld e, h                                       ; $684c: $5c
    ld b, [hl]                                    ; $684d: $46
    db $ec                                        ; $684e: $ec
    rst $10                                       ; $684f: $d7
    ld b, [hl]                                    ; $6850: $46
    db $ec                                        ; $6851: $ec
    add sp, $46                                   ; $6852: $e8 $46
    db $ec                                        ; $6854: $ec
    ld [hl], b                                    ; $6855: $70
    ld b, a                                       ; $6856: $47
    db $ec                                        ; $6857: $ec
    add c                                         ; $6858: $81
    ld b, a                                       ; $6859: $47
    db $ec                                        ; $685a: $ec
    dec c                                         ; $685b: $0d
    ld c, b                                       ; $685c: $48
    db $ec                                        ; $685d: $ec
    ld e, $48                                     ; $685e: $1e $48
    db $ec                                        ; $6860: $ec
    and d                                         ; $6861: $a2
    ld c, b                                       ; $6862: $48
    db $ec                                        ; $6863: $ec
    or e                                          ; $6864: $b3
    ld c, b                                       ; $6865: $48
    db $ec                                        ; $6866: $ec
    inc l                                         ; $6867: $2c
    ld c, c                                       ; $6868: $49
    db $ec                                        ; $6869: $ec
    dec sp                                        ; $686a: $3b
    ld c, c                                       ; $686b: $49
    db $ec                                        ; $686c: $ec
    cp b                                          ; $686d: $b8
    ld c, c                                       ; $686e: $49
    db $ec                                        ; $686f: $ec
    rst $00                                       ; $6870: $c7
    ld c, c                                       ; $6871: $49
    db $ec                                        ; $6872: $ec
    ld b, [hl]                                    ; $6873: $46
    ld c, d                                       ; $6874: $4a
    db $ec                                        ; $6875: $ec
    ld d, e                                       ; $6876: $53
    ld c, d                                       ; $6877: $4a
    db $ec                                        ; $6878: $ec
    ret nc                                        ; $6879: $d0

    ld c, d                                       ; $687a: $4a
    db $ec                                        ; $687b: $ec
    pop hl                                        ; $687c: $e1
    ld c, d                                       ; $687d: $4a
    db $ec                                        ; $687e: $ec
    ld c, a                                       ; $687f: $4f
    ld c, e                                       ; $6880: $4b
    db $ec                                        ; $6881: $ec
    ld e, [hl]                                    ; $6882: $5e
    ld c, e                                       ; $6883: $4b
    db $ec                                        ; $6884: $ec
    push bc                                       ; $6885: $c5
    ld c, e                                       ; $6886: $4b
    db $ec                                        ; $6887: $ec
    call nc, $ec4b                                ; $6888: $d4 $4b $ec
    ld a, [hl-]                                   ; $688b: $3a
    ld c, h                                       ; $688c: $4c
    db $ec                                        ; $688d: $ec
    ld c, c                                       ; $688e: $49
    ld c, h                                       ; $688f: $4c
    db $ec                                        ; $6890: $ec
    or e                                          ; $6891: $b3
    ld c, h                                       ; $6892: $4c
    db $ec                                        ; $6893: $ec
    jp nz, $ec4c                                  ; $6894: $c2 $4c $ec

    jr c, @+$4f                                   ; $6897: $38 $4d

    db $ec                                        ; $6899: $ec
    ld b, a                                       ; $689a: $47
    ld c, l                                       ; $689b: $4d
    db $ec                                        ; $689c: $ec
    ret nz                                        ; $689d: $c0

    ld c, l                                       ; $689e: $4d
    db $ec                                        ; $689f: $ec
    rst $08                                       ; $68a0: $cf
    ld c, l                                       ; $68a1: $4d
    db $ec                                        ; $68a2: $ec
    ld b, h                                       ; $68a3: $44
    ld c, [hl]                                    ; $68a4: $4e
    db $ec                                        ; $68a5: $ec
    ld d, e                                       ; $68a6: $53
    ld c, [hl]                                    ; $68a7: $4e
    db $ec                                        ; $68a8: $ec
    cp e                                          ; $68a9: $bb
    ld c, [hl]                                    ; $68aa: $4e
    db $ec                                        ; $68ab: $ec
    jp z, $ec4e                                   ; $68ac: $ca $4e $ec

    scf                                           ; $68af: $37
    ld c, a                                       ; $68b0: $4f
    db $ec                                        ; $68b1: $ec
    ld b, [hl]                                    ; $68b2: $46
    ld c, a                                       ; $68b3: $4f
    db $ec                                        ; $68b4: $ec
    or e                                          ; $68b5: $b3
    ld c, a                                       ; $68b6: $4f
    db $ec                                        ; $68b7: $ec
    call nz, $ec4f                                ; $68b8: $c4 $4f $ec
    cpl                                           ; $68bb: $2f
    ld d, b                                       ; $68bc: $50
    db $ec                                        ; $68bd: $ec
    ld b, b                                       ; $68be: $40
    ld d, b                                       ; $68bf: $50
    db $ec                                        ; $68c0: $ec
    xor [hl]                                      ; $68c1: $ae

Jump_008_68c2:
    ld d, b                                       ; $68c2: $50
    db $ec                                        ; $68c3: $ec
    cp l                                          ; $68c4: $bd
    ld d, b                                       ; $68c5: $50
    db $ec                                        ; $68c6: $ec
    ld e, $51                                     ; $68c7: $1e $51
    db $ec                                        ; $68c9: $ec
    cpl                                           ; $68ca: $2f
    ld d, c                                       ; $68cb: $51
    db $ec                                        ; $68cc: $ec
    add h                                         ; $68cd: $84
    ld d, c                                       ; $68ce: $51
    db $ec                                        ; $68cf: $ec
    sub c                                         ; $68d0: $91
    ld d, c                                       ; $68d1: $51
    db $ec                                        ; $68d2: $ec
    db $e3                                        ; $68d3: $e3
    ld d, c                                       ; $68d4: $51
    db $ec                                        ; $68d5: $ec
    ldh a, [rHDMA1]                               ; $68d6: $f0 $51
    db $ec                                        ; $68d8: $ec
    ld e, [hl]                                    ; $68d9: $5e
    ld d, d                                       ; $68da: $52
    db $ec                                        ; $68db: $ec
    add a                                         ; $68dc: $87
    ld d, d                                       ; $68dd: $52
    db $ec                                        ; $68de: $ec
    add hl, bc                                    ; $68df: $09
    ld d, e                                       ; $68e0: $53
    db $ec                                        ; $68e1: $ec
    ccf                                           ; $68e2: $3f
    ld d, e                                       ; $68e3: $53
    db $ec                                        ; $68e4: $ec
    jp z, $ec53                                   ; $68e5: $ca $53 $ec

    db $fd                                        ; $68e8: $fd
    ld d, e                                       ; $68e9: $53
    db $ec                                        ; $68ea: $ec
    ld a, [hl]                                    ; $68eb: $7e
    ld d, h                                       ; $68ec: $54
    db $ec                                        ; $68ed: $ec
    or [hl]                                       ; $68ee: $b6
    ld d, h                                       ; $68ef: $54
    db $ec                                        ; $68f0: $ec
    ld [hl-], a                                   ; $68f1: $32
    ld d, l                                       ; $68f2: $55
    db $ec                                        ; $68f3: $ec
    ld l, l                                       ; $68f4: $6d
    ld d, l                                       ; $68f5: $55
    db $ec                                        ; $68f6: $ec
    db $dd                                        ; $68f7: $dd
    ld d, l                                       ; $68f8: $55
    db $ec                                        ; $68f9: $ec
    ld a, [de]                                    ; $68fa: $1a
    ld d, [hl]                                    ; $68fb: $56
    db $ec                                        ; $68fc: $ec
    adc [hl]                                      ; $68fd: $8e
    ld d, [hl]                                    ; $68fe: $56
    db $ec                                        ; $68ff: $ec
    pop bc                                        ; $6900: $c1
    ld d, [hl]                                    ; $6901: $56
    db $ec                                        ; $6902: $ec
    daa                                           ; $6903: $27
    ld d, a                                       ; $6904: $57

    db $ec, $58, $57

    db $ec                                        ; $6908: $ec
    and [hl]                                      ; $6909: $a6
    ld d, a                                       ; $690a: $57
    db $ec                                        ; $690b: $ec
    ld [c], a                                     ; $690c: $e2
    ld d, a                                       ; $690d: $57
    db $ec                                        ; $690e: $ec
    dec l                                         ; $690f: $2d
    ld e, b                                       ; $6910: $58
    db $ec                                        ; $6911: $ec
    ld a, h                                       ; $6912: $7c
    ld e, b                                       ; $6913: $58
    db $ec                                        ; $6914: $ec
    call $ec58                                    ; $6915: $cd $58 $ec
    add hl, bc                                    ; $6918: $09
    ld e, c                                       ; $6919: $59
    db $ec                                        ; $691a: $ec
    ld e, b                                       ; $691b: $58
    ld d, a                                       ; $691c: $57
    db $ec                                        ; $691d: $ec
    ld d, e                                       ; $691e: $53
    ld e, c                                       ; $691f: $59
    db $ec                                        ; $6920: $ec
    sbc b                                         ; $6921: $98
    ld e, c                                       ; $6922: $59
    db $ec                                        ; $6923: $ec
    pop hl                                        ; $6924: $e1
    ld e, c                                       ; $6925: $59
    db $ec                                        ; $6926: $ec
    dec l                                         ; $6927: $2d
    ld e, d                                       ; $6928: $5a
    db $ec                                        ; $6929: $ec
    ld a, h                                       ; $692a: $7c
    ld e, d                                       ; $692b: $5a
    db $ec                                        ; $692c: $ec
    cp a                                          ; $692d: $bf
    ld e, d                                       ; $692e: $5a
    db $ec                                        ; $692f: $ec
    ld e, b                                       ; $6930: $58
    ld d, a                                       ; $6931: $57
    db $ec                                        ; $6932: $ec
    dec bc                                        ; $6933: $0b
    ld e, e                                       ; $6934: $5b
    db $ec                                        ; $6935: $ec
    ld d, l                                       ; $6936: $55
    ld e, e                                       ; $6937: $5b
    db $ec                                        ; $6938: $ec
    and b                                         ; $6939: $a0

Jump_008_693a:
    ld e, e                                       ; $693a: $5b
    db $ec                                        ; $693b: $ec
    ldh a, [$5b]                                  ; $693c: $f0 $5b
    db $ec                                        ; $693e: $ec
    scf                                           ; $693f: $37
    ld e, h                                       ; $6940: $5c
    db $ec                                        ; $6941: $ec
    add a                                         ; $6942: $87
    ld e, h                                       ; $6943: $5c
    db $ec                                        ; $6944: $ec
    ld e, b                                       ; $6945: $58
    ld d, a                                       ; $6946: $57
    db $ec                                        ; $6947: $ec
    sub $5c                                       ; $6948: $d6 $5c
    db $ec                                        ; $694a: $ec
    ld c, $5d                                     ; $694b: $0e $5d
    db $ec                                        ; $694d: $ec
    ld b, a                                       ; $694e: $47
    ld e, l                                       ; $694f: $5d
    db $ec                                        ; $6950: $ec
    add c                                         ; $6951: $81
    ld e, l                                       ; $6952: $5d
    db $ec                                        ; $6953: $ec
    or [hl]                                       ; $6954: $b6
    ld e, l                                       ; $6955: $5d
    db $ec                                        ; $6956: $ec
    di                                            ; $6957: $f3
    ld e, l                                       ; $6958: $5d
    db $ec                                        ; $6959: $ec
    ld e, b                                       ; $695a: $58
    ld d, a                                       ; $695b: $57
    db $ec                                        ; $695c: $ec
    dec sp                                        ; $695d: $3b
    ld e, [hl]                                    ; $695e: $5e
    db $ec                                        ; $695f: $ec
    dec sp                                        ; $6960: $3b
    ld e, [hl]                                    ; $6961: $5e
    db $ec                                        ; $6962: $ec
    dec sp                                        ; $6963: $3b
    ld e, [hl]                                    ; $6964: $5e
    db $ec                                        ; $6965: $ec
    dec sp                                        ; $6966: $3b
    ld e, [hl]                                    ; $6967: $5e
    db $ec                                        ; $6968: $ec
    dec sp                                        ; $6969: $3b
    ld e, [hl]                                    ; $696a: $5e
    db $ec                                        ; $696b: $ec
    dec sp                                        ; $696c: $3b
    ld e, [hl]                                    ; $696d: $5e
    db $ec                                        ; $696e: $ec
    adc d                                         ; $696f: $8a
    ld e, [hl]                                    ; $6970: $5e
    db $ec                                        ; $6971: $ec
    adc d                                         ; $6972: $8a
    ld e, [hl]                                    ; $6973: $5e
    db $ec                                        ; $6974: $ec
    adc d                                         ; $6975: $8a
    ld e, [hl]                                    ; $6976: $5e
    db $ec                                        ; $6977: $ec
    ret c                                         ; $6978: $d8

    ld e, [hl]                                    ; $6979: $5e
    db $ec                                        ; $697a: $ec
    ld h, $5f                                     ; $697b: $26 $5f
    db $ec                                        ; $697d: $ec
    ld l, a                                       ; $697e: $6f
    ld e, a                                       ; $697f: $5f
    db $ec                                        ; $6980: $ec
    cp a                                          ; $6981: $bf
    ld e, a                                       ; $6982: $5f
    db $ec                                        ; $6983: $ec
    rlca                                          ; $6984: $07
    ld h, b                                       ; $6985: $60
    db $ec                                        ; $6986: $ec
    ld [hl], $60                                  ; $6987: $36 $60
    db $ec                                        ; $6989: $ec
    ld a, c                                       ; $698a: $79
    ld h, b                                       ; $698b: $60
    db $ec                                        ; $698c: $ec
    cp a                                          ; $698d: $bf
    ld h, b                                       ; $698e: $60
    db $ec                                        ; $698f: $ec
    ld [$ec61], sp                                ; $6990: $08 $61 $ec
    ld d, d                                       ; $6993: $52
    ld h, c                                       ; $6994: $61
    db $ec                                        ; $6995: $ec
    sub e                                         ; $6996: $93
    ld h, c                                       ; $6997: $61
    db $ec                                        ; $6998: $ec
    ld [c], a                                     ; $6999: $e2
    ld h, c                                       ; $699a: $61
    db $ec                                        ; $699b: $ec
    ld sp, $ec62                                  ; $699c: $31 $62 $ec
    ld a, d                                       ; $699f: $7a
    ld h, d                                       ; $69a0: $62
    db $ec                                        ; $69a1: $ec
    ret                                           ; $69a2: $c9


    ld h, d                                       ; $69a3: $62
    db $ec                                        ; $69a4: $ec
    ld d, $63                                     ; $69a5: $16 $63
    db $ec                                        ; $69a7: $ec
    ld l, b                                       ; $69a8: $68
    ld h, e                                       ; $69a9: $63

Jump_008_69aa:
    db $ec                                        ; $69aa: $ec
    cp b                                          ; $69ab: $b8
    ld h, e                                       ; $69ac: $63
    db $ec                                        ; $69ad: $ec
    dec b                                         ; $69ae: $05
    ld h, h                                       ; $69af: $64

    db $ec, $50, $64, $ec, $96, $64

    db $ec                                        ; $69b6: $ec
    db $e3                                        ; $69b7: $e3
    ld h, h                                       ; $69b8: $64
    db $ec                                        ; $69b9: $ec
    ld l, $65                                     ; $69ba: $2e $65

    db $ec, $79, $65

    db $ec                                        ; $69bf: $ec
    xor [hl]                                      ; $69c0: $ae
    ld h, l                                       ; $69c1: $65
    db $ec                                        ; $69c2: $ec
    db $e3                                        ; $69c3: $e3
    ld h, l                                       ; $69c4: $65
    db $ec                                        ; $69c5: $ec
    dec bc                                        ; $69c6: $0b
    ld h, [hl]                                    ; $69c7: $66
    db $ec                                        ; $69c8: $ec
    ld e, d                                       ; $69c9: $5a
    ld h, [hl]                                    ; $69ca: $66
    db $ec                                        ; $69cb: $ec
    sub e                                         ; $69cc: $93
    ld h, [hl]                                    ; $69cd: $66
    db $ec                                        ; $69ce: $ec
    ldh [$66], a                                  ; $69cf: $e0 $66
    db $ec                                        ; $69d1: $ec
    ld a, [hl+]                                   ; $69d2: $2a
    ld h, a                                       ; $69d3: $67
    db $ec                                        ; $69d4: $ec
    ld [hl], e                                    ; $69d5: $73
    ld h, a                                       ; $69d6: $67
    db $ec                                        ; $69d7: $ec
    cp b                                          ; $69d8: $b8
    ld h, a                                       ; $69d9: $67
    db $ec                                        ; $69da: $ec
    ld bc, $ec68                                  ; $69db: $01 $68 $ec
    ld c, e                                       ; $69de: $4b
    ld l, b                                       ; $69df: $68
    db $ec                                        ; $69e0: $ec
    adc [hl]                                      ; $69e1: $8e
    ld l, b                                       ; $69e2: $68
    db $ec                                        ; $69e3: $ec
    sub $68                                       ; $69e4: $d6 $68
    db $ec                                        ; $69e6: $ec
    dec h                                         ; $69e7: $25
    ld l, c                                       ; $69e8: $69
    db $ec                                        ; $69e9: $ec
    ld l, [hl]                                    ; $69ea: $6e
    ld l, c                                       ; $69eb: $69
    db $ec                                        ; $69ec: $ec
    or c                                          ; $69ed: $b1
    ld l, c                                       ; $69ee: $69
    db $ec                                        ; $69ef: $ec
    ld sp, hl                                     ; $69f0: $f9
    ld l, c                                       ; $69f1: $69
    db $ec                                        ; $69f2: $ec
    ld b, a                                       ; $69f3: $47
    ld l, d                                       ; $69f4: $6a
    db $ec                                        ; $69f5: $ec
    add d                                         ; $69f6: $82
    ld l, d                                       ; $69f7: $6a
    db $ec                                        ; $69f8: $ec
    ret nz                                        ; $69f9: $c0

    ld l, d                                       ; $69fa: $6a
    db $ec                                        ; $69fb: $ec
    ld a, [c]                                     ; $69fc: $f2
    ld l, d                                       ; $69fd: $6a

    db $ec, $3f, $6b

    db $ec                                        ; $6a01: $ec
    adc l                                         ; $6a02: $8d
    ld l, e                                       ; $6a03: $6b

    db $ec, $ca, $6b

    db $ec                                        ; $6a07: $ec
    rla                                           ; $6a08: $17
    ld l, h                                       ; $6a09: $6c
    db $ec                                        ; $6a0a: $ec
    ld l, b                                       ; $6a0b: $68
    ld l, h                                       ; $6a0c: $6c
    db $ec                                        ; $6a0d: $ec
    and a                                         ; $6a0e: $a7
    ld l, h                                       ; $6a0f: $6c
    db $ec                                        ; $6a10: $ec
    xor $6c                                       ; $6a11: $ee $6c
    db $ec                                        ; $6a13: $ec
    jr c, jr_008_6a83                             ; $6a14: $38 $6d

    db $ec                                        ; $6a16: $ec
    add l                                         ; $6a17: $85
    ld l, l                                       ; $6a18: $6d
    db $ec                                        ; $6a19: $ec
    bit 5, l                                      ; $6a1a: $cb $6d
    db $ec                                        ; $6a1c: $ec
    jr jr_008_6a8d                                ; $6a1d: $18 $6e

    db $ec                                        ; $6a1f: $ec

Jump_008_6a20:
    ld e, c                                       ; $6a20: $59
    ld l, [hl]                                    ; $6a21: $6e
    db $ec                                        ; $6a22: $ec
    and l                                         ; $6a23: $a5
    ld l, [hl]                                    ; $6a24: $6e
    db $ec                                        ; $6a25: $ec
    ld [$ec6e], a                                 ; $6a26: $ea $6e $ec
    ld [hl], $6f                                  ; $6a29: $36 $6f
    db $ec                                        ; $6a2b: $ec
    ld [hl], c                                    ; $6a2c: $71
    ld l, a                                       ; $6a2d: $6f
    db $ec                                        ; $6a2e: $ec
    or [hl]                                       ; $6a2f: $b6
    ld l, a                                       ; $6a30: $6f
    db $ec                                        ; $6a31: $ec
    dec b                                         ; $6a32: $05
    ld [hl], b                                    ; $6a33: $70
    db $ec                                        ; $6a34: $ec
    ld d, d                                       ; $6a35: $52
    ld [hl], b                                    ; $6a36: $70
    db $ec                                        ; $6a37: $ec
    sbc a                                         ; $6a38: $9f
    ld [hl], b                                    ; $6a39: $70
    db $ec                                        ; $6a3a: $ec
    db $e4                                        ; $6a3b: $e4
    ld [hl], b                                    ; $6a3c: $70
    db $ec                                        ; $6a3d: $ec
    ld sp, $ec71                                  ; $6a3e: $31 $71 $ec
    ld a, [hl]                                    ; $6a41: $7e
    ld [hl], c                                    ; $6a42: $71
    db $ec                                        ; $6a43: $ec
    bit 6, c                                      ; $6a44: $cb $71
    db $ec                                        ; $6a46: $ec
    inc b                                         ; $6a47: $04
    ld [hl], d                                    ; $6a48: $72
    db $ec                                        ; $6a49: $ec
    ld d, c                                       ; $6a4a: $51
    ld [hl], d                                    ; $6a4b: $72

    db $ec, $a1, $72

    db $ec                                        ; $6a4f: $ec
    db $f4                                        ; $6a50: $f4
    ld [hl], d                                    ; $6a51: $72

    db $ec, $40, $73

    ret c                                         ; $6a55: $d8

    add hl, sp                                    ; $6a56: $39
    ld a, a                                       ; $6a57: $7f
    ret c                                         ; $6a58: $d8

    or a                                          ; $6a59: $b7
    ld a, a                                       ; $6a5a: $7f

    db $ec, $89, $73, $ec, $f2, $73, $ec, $5b, $74, $ec, $c4, $74, $ec, $2d, $75, $ec
    db $96, $75

    db $ec                                        ; $6a6d: $ec
    rst $38                                       ; $6a6e: $ff
    ld [hl], l                                    ; $6a6f: $75
    db $ec                                        ; $6a70: $ec
    ld h, [hl]                                    ; $6a71: $66
    halt                                          ; $6a72: $76
    db $ec                                        ; $6a73: $ec
    pop de                                        ; $6a74: $d1
    halt                                          ; $6a75: $76
    db $ec                                        ; $6a76: $ec
    ld b, l                                       ; $6a77: $45
    ld [hl], a                                    ; $6a78: $77
    db $ec                                        ; $6a79: $ec
    or a                                          ; $6a7a: $b7
    ld [hl], a                                    ; $6a7b: $77
    db $ec                                        ; $6a7c: $ec
    dec h                                         ; $6a7d: $25
    ld a, b                                       ; $6a7e: $78
    db $ec                                        ; $6a7f: $ec
    sbc h                                         ; $6a80: $9c
    ld a, b                                       ; $6a81: $78
    db $ec                                        ; $6a82: $ec

jr_008_6a83:
    add hl, de                                    ; $6a83: $19
    ld a, c                                       ; $6a84: $79
    db $ec                                        ; $6a85: $ec
    sub h                                         ; $6a86: $94
    ld a, c                                       ; $6a87: $79
    db $ec                                        ; $6a88: $ec
    inc bc                                        ; $6a89: $03
    ld a, d                                       ; $6a8a: $7a
    db $ec                                        ; $6a8b: $ec
    ld [hl], c                                    ; $6a8c: $71

jr_008_6a8d:
    ld a, d                                       ; $6a8d: $7a
    db $ec                                        ; $6a8e: $ec
    ld [c], a                                     ; $6a8f: $e2
    ld a, d                                       ; $6a90: $7a
    db $ec                                        ; $6a91: $ec
    ld d, b                                       ; $6a92: $50
    ld a, e                                       ; $6a93: $7b
    db $ec                                        ; $6a94: $ec
    cp l                                          ; $6a95: $bd
    ld a, e                                       ; $6a96: $7b
    db $ec                                        ; $6a97: $ec

Jump_008_6a98:
    cp l                                          ; $6a98: $bd
    ld a, e                                       ; $6a99: $7b
    db $ec                                        ; $6a9a: $ec
    cp l                                          ; $6a9b: $bd
    ld a, e                                       ; $6a9c: $7b
    db $ec                                        ; $6a9d: $ec
    cp l                                          ; $6a9e: $bd
    ld a, e                                       ; $6a9f: $7b
    db $ec                                        ; $6aa0: $ec
    cp l                                          ; $6aa1: $bd
    ld a, e                                       ; $6aa2: $7b
    db $ec                                        ; $6aa3: $ec
    cp l                                          ; $6aa4: $bd
    ld a, e                                       ; $6aa5: $7b
    db $ec                                        ; $6aa6: $ec
    cp l                                          ; $6aa7: $bd
    ld a, e                                       ; $6aa8: $7b
    jp c, Jump_008_4289                           ; $6aa9: $da $89 $42

    jp c, Jump_008_42f5                           ; $6aac: $da $f5 $42

    jp c, $435f                                   ; $6aaf: $da $5f $43

    jp c, Jump_008_43cd                           ; $6ab2: $da $cd $43

    jp c, Jump_008_442d                           ; $6ab5: $da $2d $44

    jp c, $4482                                   ; $6ab8: $da $82 $44

    jp c, $44d4                                   ; $6abb: $da $d4 $44

    jp c, Jump_008_452f                           ; $6abe: $da $2f $45

    jp c, Jump_008_4586                           ; $6ac1: $da $86 $45

    jp c, Jump_008_45de                           ; $6ac4: $da $de $45

    db $ec                                        ; $6ac7: $ec
    ld h, $7c                                     ; $6ac8: $26 $7c
    db $ec                                        ; $6aca: $ec
    sub e                                         ; $6acb: $93
    ld a, h                                       ; $6acc: $7c
    db $ec                                        ; $6acd: $ec
    ld a, [$ec7c]                                 ; $6ace: $fa $7c $ec
    ld h, b                                       ; $6ad1: $60
    ld a, l                                       ; $6ad2: $7d
    db $ec                                        ; $6ad3: $ec
    jp z, $ec7d                                   ; $6ad4: $ca $7d $ec

    ld b, b                                       ; $6ad7: $40
    ld a, [hl]                                    ; $6ad8: $7e
    db $ec                                        ; $6ad9: $ec
    cp b                                          ; $6ada: $b8
    ld a, [hl]                                    ; $6adb: $7e
    db $ec                                        ; $6adc: $ec
    inc l                                         ; $6add: $2c
    ld a, a                                       ; $6ade: $7f
    db $ec                                        ; $6adf: $ec
    sub e                                         ; $6ae0: $93
    ld a, a                                       ; $6ae1: $7f
    db $ed                                        ; $6ae2: $ed
    ld bc, $ed40                                  ; $6ae3: $01 $40 $ed
    ld l, d                                       ; $6ae6: $6a
    ld b, b                                       ; $6ae7: $40
    db $ed                                        ; $6ae8: $ed
    rst $10                                       ; $6ae9: $d7
    ld b, b                                       ; $6aea: $40
    db $ed                                        ; $6aeb: $ed
    ld b, b                                       ; $6aec: $40
    ld b, c                                       ; $6aed: $41
    db $ed                                        ; $6aee: $ed
    xor h                                         ; $6aef: $ac
    ld b, c                                       ; $6af0: $41
    db $ed                                        ; $6af1: $ed
    dec de                                        ; $6af2: $1b
    ld b, d                                       ; $6af3: $42
    db $ed                                        ; $6af4: $ed
    adc l                                         ; $6af5: $8d
    ld b, d                                       ; $6af6: $42
    db $ed                                        ; $6af7: $ed
    rst $38                                       ; $6af8: $ff
    ld b, d                                       ; $6af9: $42
    db $ed                                        ; $6afa: $ed
    ld l, c                                       ; $6afb: $69
    ld b, e                                       ; $6afc: $43
    db $ed                                        ; $6afd: $ed
    sub $43                                       ; $6afe: $d6 $43

Jump_008_6b00:
    db $ed                                        ; $6b00: $ed
    ld b, a                                       ; $6b01: $47
    ld b, h                                       ; $6b02: $44
    db $ed                                        ; $6b03: $ed
    pop bc                                        ; $6b04: $c1
    ld b, h                                       ; $6b05: $44
    db $ed                                        ; $6b06: $ed
    ccf                                           ; $6b07: $3f
    ld b, l                                       ; $6b08: $45
    jp c, Jump_008_4289                           ; $6b09: $da $89 $42

    jp c, Jump_008_42f5                           ; $6b0c: $da $f5 $42

    jp c, $435f                                   ; $6b0f: $da $5f $43

    jp c, Jump_008_43cd                           ; $6b12: $da $cd $43

    jp c, Jump_008_442d                           ; $6b15: $da $2d $44

    jp c, $4482                                   ; $6b18: $da $82 $44

    jp c, $44d4                                   ; $6b1b: $da $d4 $44

    jp c, Jump_008_452f                           ; $6b1e: $da $2f $45

    jp c, Jump_008_4586                           ; $6b21: $da $86 $45

    jp c, Jump_008_45de                           ; $6b24: $da $de $45

    db $ed, $c7, $45, $ed, $20, $46, $ed, $3f, $46, $ed, $98, $46, $ed, $b7, $46, $ed
    db $10, $47, $ed, $2f, $47

    db $ed                                        ; $6b3c: $ed
    adc b                                         ; $6b3d: $88
    ld b, a                                       ; $6b3e: $47
    db $ed                                        ; $6b3f: $ed
    and a                                         ; $6b40: $a7
    ld b, a                                       ; $6b41: $47
    db $ed                                        ; $6b42: $ed
    nop                                           ; $6b43: $00
    ld c, b                                       ; $6b44: $48
    db $ed                                        ; $6b45: $ed
    rra                                           ; $6b46: $1f
    ld c, b                                       ; $6b47: $48
    db $ed                                        ; $6b48: $ed
    ld a, b                                       ; $6b49: $78
    ld c, b                                       ; $6b4a: $48

    db $ed, $97, $48, $ed, $fd, $48, $ed, $20, $49, $ed, $93, $49, $ed, $b6, $49, $ed
    db $32, $4a, $ed, $55, $4a, $ed, $d2, $4a, $ed, $f5, $4a, $ed, $5a, $4b, $ed, $7b
    db $4b, $ed, $e6, $4b, $ed, $07, $4c, $ed, $7a, $4c, $ed, $a7, $4c, $ed, $1b, $4d
    db $ed, $4a, $4d, $ed, $b6, $4d, $ed, $d5, $4d, $ed, $31, $4e, $ed, $50, $4e, $ed
    db $be, $4e, $ed, $de, $4e, $ed, $40, $4f, $ed, $5d, $4f

    db $ed                                        ; $6b96: $ed
    or b                                          ; $6b97: $b0
    ld c, a                                       ; $6b98: $4f
    db $ed                                        ; $6b99: $ed
    pop de                                        ; $6b9a: $d1
    ld c, a                                       ; $6b9b: $4f
    db $ed                                        ; $6b9c: $ed
    ld a, [hl+]                                   ; $6b9d: $2a
    ld d, b                                       ; $6b9e: $50
    db $ed                                        ; $6b9f: $ed
    pop de                                        ; $6ba0: $d1
    ld c, a                                       ; $6ba1: $4f
    db $ed                                        ; $6ba2: $ed
    ld a, [hl+]                                   ; $6ba3: $2a
    ld d, b                                       ; $6ba4: $50
    db $ed                                        ; $6ba5: $ed
    pop de                                        ; $6ba6: $d1
    ld c, a                                       ; $6ba7: $4f
    db $ed                                        ; $6ba8: $ed
    ld a, [hl+]                                   ; $6ba9: $2a
    ld d, b                                       ; $6baa: $50
    db $ed                                        ; $6bab: $ed
    pop de                                        ; $6bac: $d1
    ld c, a                                       ; $6bad: $4f

    db $ed, $2a, $50, $ed, $d1, $4f, $ed, $2a, $50, $ed, $d1, $4f, $ed, $2a, $50, $ed
    db $d1, $4f, $ed, $2a, $50, $d9, $68, $49, $d9, $c8, $49, $d9, $e9, $49, $d9, $49
    db $4a, $d9, $68, $4a, $d9, $d1, $4a, $d9, $ec, $4a

    reti                                          ; $6bd8: $d9


    ld c, c                                       ; $6bd9: $49
    ld c, e                                       ; $6bda: $4b
    reti                                          ; $6bdb: $d9


    ld h, [hl]                                    ; $6bdc: $66
    ld c, e                                       ; $6bdd: $4b
    reti                                          ; $6bde: $d9


    cp d                                          ; $6bdf: $ba
    ld c, e                                       ; $6be0: $4b
    reti                                          ; $6be1: $d9


    call c, $d94b                                 ; $6be2: $dc $4b $d9
    dec l                                         ; $6be5: $2d
    ld c, h                                       ; $6be6: $4c
    reti                                          ; $6be7: $d9


    ld b, l                                       ; $6be8: $45
    ld c, h                                       ; $6be9: $4c
    reti                                          ; $6bea: $d9


    sbc l                                         ; $6beb: $9d
    ld c, h                                       ; $6bec: $4c
    reti                                          ; $6bed: $d9


    or l                                          ; $6bee: $b5
    ld c, h                                       ; $6bef: $4c
    reti                                          ; $6bf0: $d9


    ld [$d94d], sp                                ; $6bf1: $08 $4d $d9
    ld h, $4d                                     ; $6bf4: $26 $4d
    reti                                          ; $6bf6: $d9


    ld a, h                                       ; $6bf7: $7c
    ld c, l                                       ; $6bf8: $4d
    reti                                          ; $6bf9: $d9


    sub a                                         ; $6bfa: $97
    ld c, l                                       ; $6bfb: $4d
    reti                                          ; $6bfc: $d9


    jp hl                                         ; $6bfd: $e9


    ld c, l                                       ; $6bfe: $4d

    db $ed, $49, $50, $ed, $ae, $50, $ed, $cf, $50, $ed, $36, $51, $ed, $55, $51, $ed
    db $bd, $51, $ed, $e2, $51, $ed, $40, $52, $ed, $65, $52, $ed, $c4, $52, $ed, $ed
    db $52, $ed, $56, $53, $ed, $7d, $53, $ed, $e8, $53, $ed, $0b, $54, $ed, $71, $54
    db $ed, $8e, $54, $ed, $eb, $54, $ed, $0c, $55, $ed, $45, $55, $ed, $7c, $55, $ed
    db $a5, $55

    db $ed                                        ; $6c41: $ed
    cp h                                          ; $6c42: $bc
    ld d, l                                       ; $6c43: $55
    db $ed                                        ; $6c44: $ed
    dec d                                         ; $6c45: $15
    ld d, [hl]                                    ; $6c46: $56
    db $ed                                        ; $6c47: $ed
    ld [hl], $56                                  ; $6c48: $36 $56
    db $ed                                        ; $6c4a: $ed
    adc [hl]                                      ; $6c4b: $8e
    ld d, [hl]                                    ; $6c4c: $56
    db $ed                                        ; $6c4d: $ed
    xor a                                         ; $6c4e: $af
    ld d, [hl]                                    ; $6c4f: $56
    db $ed                                        ; $6c50: $ed
    ld c, $57                                     ; $6c51: $0e $57
    db $ed                                        ; $6c53: $ed
    dec l                                         ; $6c54: $2d
    ld d, a                                       ; $6c55: $57
    db $ed                                        ; $6c56: $ed
    add [hl]                                      ; $6c57: $86
    ld d, a                                       ; $6c58: $57
    db $ed                                        ; $6c59: $ed
    and h                                         ; $6c5a: $a4
    ld d, a                                       ; $6c5b: $57
    db $ed                                        ; $6c5c: $ed
    ld de, $ed58                                  ; $6c5d: $11 $58 $ed
    ld [hl-], a                                   ; $6c60: $32
    ld e, b                                       ; $6c61: $58
    db $ed                                        ; $6c62: $ed
    and d                                         ; $6c63: $a2
    ld e, b                                       ; $6c64: $58
    db $ed                                        ; $6c65: $ed
    jp $ed58                                      ; $6c66: $c3 $58 $ed


    dec [hl]                                      ; $6c69: $35
    ld e, c                                       ; $6c6a: $59
    db $ed                                        ; $6c6b: $ed
    ld d, [hl]                                    ; $6c6c: $56
    ld e, c                                       ; $6c6d: $59
    db $ed                                        ; $6c6e: $ed
    cp l                                          ; $6c6f: $bd
    ld e, c                                       ; $6c70: $59
    db $ed                                        ; $6c71: $ed
    sbc $59                                       ; $6c72: $de $59
    db $ed                                        ; $6c74: $ed
    ld b, d                                       ; $6c75: $42
    ld e, d                                       ; $6c76: $5a
    db $ed                                        ; $6c77: $ed
    ld h, l                                       ; $6c78: $65
    ld e, d                                       ; $6c79: $5a
    db $ed                                        ; $6c7a: $ed
    ret nz                                        ; $6c7b: $c0

    ld e, d                                       ; $6c7c: $5a
    db $ed                                        ; $6c7d: $ed
    pop hl                                        ; $6c7e: $e1
    ld e, d                                       ; $6c7f: $5a
    db $ed                                        ; $6c80: $ed
    ld c, h                                       ; $6c81: $4c
    ld e, e                                       ; $6c82: $5b
    db $ed                                        ; $6c83: $ed
    ld l, e                                       ; $6c84: $6b
    ld e, e                                       ; $6c85: $5b
    db $ed                                        ; $6c86: $ed
    and $5b                                       ; $6c87: $e6 $5b
    db $ed                                        ; $6c89: $ed
    rlca                                          ; $6c8a: $07
    ld e, h                                       ; $6c8b: $5c
    db $ed                                        ; $6c8c: $ed
    add c                                         ; $6c8d: $81
    ld e, h                                       ; $6c8e: $5c
    db $ed                                        ; $6c8f: $ed
    sbc [hl]                                      ; $6c90: $9e
    ld e, h                                       ; $6c91: $5c
    db $ed                                        ; $6c92: $ed
    rst $28                                       ; $6c93: $ef
    ld e, h                                       ; $6c94: $5c
    db $ed                                        ; $6c95: $ed
    inc de                                        ; $6c96: $13
    ld e, l                                       ; $6c97: $5d
    db $ed                                        ; $6c98: $ed
    ld h, h                                       ; $6c99: $64
    ld e, l                                       ; $6c9a: $5d
    db $ed                                        ; $6c9b: $ed
    adc b                                         ; $6c9c: $88
    ld e, l                                       ; $6c9d: $5d

Jump_008_6c9e:
    db $ed                                        ; $6c9e: $ed
    reti                                          ; $6c9f: $d9


Call_008_6ca0:
    ld e, l                                       ; $6ca0: $5d
    db $ed                                        ; $6ca1: $ed
    db $fd                                        ; $6ca2: $fd
    ld e, l                                       ; $6ca3: $5d
    db $ed                                        ; $6ca4: $ed
    ld c, [hl]                                    ; $6ca5: $4e
    ld e, [hl]                                    ; $6ca6: $5e
    db $ed                                        ; $6ca7: $ed
    ld [hl], d                                    ; $6ca8: $72
    ld e, [hl]                                    ; $6ca9: $5e
    db $ed                                        ; $6caa: $ed
    jp $ed5e                                      ; $6cab: $c3 $5e $ed


    rst $20                                       ; $6cae: $e7
    ld e, [hl]                                    ; $6caf: $5e
    db $ed                                        ; $6cb0: $ed
    jr c, jr_008_6d12                             ; $6cb1: $38 $5f

    db $ed                                        ; $6cb3: $ed
    ld e, h                                       ; $6cb4: $5c
    ld e, a                                       ; $6cb5: $5f
    db $ed                                        ; $6cb6: $ed
    or h                                          ; $6cb7: $b4
    ld e, a                                       ; $6cb8: $5f
    db $ed                                        ; $6cb9: $ed
    jp c, $ed5f                                   ; $6cba: $da $5f $ed

    ld b, l                                       ; $6cbd: $45
    ld h, b                                       ; $6cbe: $60
    db $ed                                        ; $6cbf: $ed
    ld l, h                                       ; $6cc0: $6c
    ld h, b                                       ; $6cc1: $60
    db $ed                                        ; $6cc2: $ed
    sub $60                                       ; $6cc3: $d6 $60
    db $ed                                        ; $6cc5: $ed
    db $fc                                        ; $6cc6: $fc
    ld h, b                                       ; $6cc7: $60
    db $ed                                        ; $6cc8: $ed
    ld e, d                                       ; $6cc9: $5a
    ld h, c                                       ; $6cca: $61
    db $ed                                        ; $6ccb: $ed
    ld a, d                                       ; $6ccc: $7a
    ld h, c                                       ; $6ccd: $61
    db $ed                                        ; $6cce: $ed
    ret c                                         ; $6ccf: $d8

    ld h, c                                       ; $6cd0: $61
    db $ed                                        ; $6cd1: $ed
    db $fc                                        ; $6cd2: $fc
    ld h, c                                       ; $6cd3: $61
    db $ed                                        ; $6cd4: $ed
    ld e, l                                       ; $6cd5: $5d
    ld h, d                                       ; $6cd6: $62
    db $ed                                        ; $6cd7: $ed
    ld a, a                                       ; $6cd8: $7f
    ld h, d                                       ; $6cd9: $62
    db $ed                                        ; $6cda: $ed
    jp nc, $ed62                                  ; $6cdb: $d2 $62 $ed

    db $f4                                        ; $6cde: $f4
    ld h, d                                       ; $6cdf: $62
    db $ed                                        ; $6ce0: $ed
    ld e, l                                       ; $6ce1: $5d
    ld h, e                                       ; $6ce2: $63
    db $ed                                        ; $6ce3: $ed
    adc e                                         ; $6ce4: $8b
    ld h, e                                       ; $6ce5: $63
    db $ed                                        ; $6ce6: $ed
    db $ed                                        ; $6ce7: $ed
    ld h, e                                       ; $6ce8: $63
    db $ed                                        ; $6ce9: $ed
    ld de, $ed64                                  ; $6cea: $11 $64 $ed
    ld h, e                                       ; $6ced: $63
    ld h, h                                       ; $6cee: $64
    db $ed                                        ; $6cef: $ed
    add c                                         ; $6cf0: $81
    ld h, h                                       ; $6cf1: $64
    db $ed                                        ; $6cf2: $ed
    pop hl                                        ; $6cf3: $e1
    ld h, h                                       ; $6cf4: $64
    db $ed                                        ; $6cf5: $ed
    rlca                                          ; $6cf6: $07
    ld h, l                                       ; $6cf7: $65
    db $ed                                        ; $6cf8: $ed
    ld l, d                                       ; $6cf9: $6a
    ld h, l                                       ; $6cfa: $65
    db $ed                                        ; $6cfb: $ed
    sub c                                         ; $6cfc: $91
    ld h, l                                       ; $6cfd: $65
    db $ed                                        ; $6cfe: $ed
    ld a, [c]                                     ; $6cff: $f2
    ld h, l                                       ; $6d00: $65
    db $ed                                        ; $6d01: $ed
    ld d, $66                                     ; $6d02: $16 $66
    db $ed                                        ; $6d04: $ed
    ld a, l                                       ; $6d05: $7d
    ld h, [hl]                                    ; $6d06: $66
    db $ed                                        ; $6d07: $ed
    and e                                         ; $6d08: $a3
    ld h, [hl]                                    ; $6d09: $66

Jump_008_6d0a:
    db $ed                                        ; $6d0a: $ed
    rlca                                          ; $6d0b: $07
    ld h, a                                       ; $6d0c: $67
    db $ed                                        ; $6d0d: $ed
    dec l                                         ; $6d0e: $2d
    ld h, a                                       ; $6d0f: $67
    db $ed                                        ; $6d10: $ed
    sub h                                         ; $6d11: $94

jr_008_6d12:
    ld h, a                                       ; $6d12: $67
    db $ed                                        ; $6d13: $ed
    cp d                                          ; $6d14: $ba
    ld h, a                                       ; $6d15: $67
    db $ed                                        ; $6d16: $ed
    ld d, $68                                     ; $6d17: $16 $68
    db $ed                                        ; $6d19: $ed
    inc a                                         ; $6d1a: $3c
    ld l, b                                       ; $6d1b: $68
    db $ed                                        ; $6d1c: $ed
    sub l                                         ; $6d1d: $95
    ld l, b                                       ; $6d1e: $68
    db $ed                                        ; $6d1f: $ed
    cp e                                          ; $6d20: $bb
    ld l, b                                       ; $6d21: $68
    db $ed                                        ; $6d22: $ed
    ld [c], a                                     ; $6d23: $e2
    ld l, b                                       ; $6d24: $68
    db $ed                                        ; $6d25: $ed
    nop                                           ; $6d26: $00
    ld l, c                                       ; $6d27: $69
    db $ed                                        ; $6d28: $ed
    daa                                           ; $6d29: $27
    ld l, c                                       ; $6d2a: $69
    db $ed                                        ; $6d2b: $ed
    ld d, h                                       ; $6d2c: $54
    ld l, c                                       ; $6d2d: $69
    db $ed                                        ; $6d2e: $ed
    add c                                         ; $6d2f: $81
    ld l, c                                       ; $6d30: $69
    db $ed                                        ; $6d31: $ed
    xor b                                         ; $6d32: $a8
    ld l, c                                       ; $6d33: $69
    db $ed                                        ; $6d34: $ed
    ret                                           ; $6d35: $c9


    ld l, c                                       ; $6d36: $69
    db $ed                                        ; $6d37: $ed
    ei                                            ; $6d38: $fb
    ld l, c                                       ; $6d39: $69
    db $ed                                        ; $6d3a: $ed
    inc l                                         ; $6d3b: $2c
    ld l, d                                       ; $6d3c: $6a
    db $ed                                        ; $6d3d: $ed
    sbc h                                         ; $6d3e: $9c
    ld l, d                                       ; $6d3f: $6a
    db $ed                                        ; $6d40: $ed
    ld c, $6b                                     ; $6d41: $0e $6b
    db $ed                                        ; $6d43: $ed
    add e                                         ; $6d44: $83
    ld l, e                                       ; $6d45: $6b
    db $ed                                        ; $6d46: $ed
    or $6b                                        ; $6d47: $f6 $6b
    db $ed                                        ; $6d49: $ed
    ld l, b                                       ; $6d4a: $68
    ld l, h                                       ; $6d4b: $6c
    db $ed                                        ; $6d4c: $ed
    rst $10                                       ; $6d4d: $d7
    ld l, h                                       ; $6d4e: $6c
    db $ed                                        ; $6d4f: $ed
    ld b, h                                       ; $6d50: $44
    ld l, l                                       ; $6d51: $6d
    db $ed                                        ; $6d52: $ed
    or a                                          ; $6d53: $b7
    ld l, l                                       ; $6d54: $6d
    db $ed                                        ; $6d55: $ed
    dec l                                         ; $6d56: $2d
    ld l, [hl]                                    ; $6d57: $6e
    db $ed                                        ; $6d58: $ed
    sub l                                         ; $6d59: $95
    ld l, [hl]                                    ; $6d5a: $6e
    db $ed                                        ; $6d5b: $ed
    rrca                                          ; $6d5c: $0f
    ld l, a                                       ; $6d5d: $6f
    db $ed                                        ; $6d5e: $ed
    ld a, c                                       ; $6d5f: $79
    ld l, a                                       ; $6d60: $6f
    db $ed                                        ; $6d61: $ed
    rst $18                                       ; $6d62: $df
    ld l, a                                       ; $6d63: $6f
    db $ed                                        ; $6d64: $ed
    scf                                           ; $6d65: $37
    ld [hl], b                                    ; $6d66: $70
    db $ed                                        ; $6d67: $ed
    sub c                                         ; $6d68: $91
    ld [hl], b                                    ; $6d69: $70
    db $ed                                        ; $6d6a: $ed
    ei                                            ; $6d6b: $fb
    ld [hl], b                                    ; $6d6c: $70
    db $ed                                        ; $6d6d: $ed
    ld de, $ed71                                  ; $6d6e: $11 $71 $ed

Jump_008_6d71:
    jr nc, jr_008_6de4                            ; $6d71: $30 $71

    db $ed                                        ; $6d73: $ed
    ld d, e                                       ; $6d74: $53
    ld [hl], c                                    ; $6d75: $71
    db $ed                                        ; $6d76: $ed
    halt                                          ; $6d77: $76
    ld [hl], c                                    ; $6d78: $71
    db $ed                                        ; $6d79: $ed
    sbc c                                         ; $6d7a: $99
    ld [hl], c                                    ; $6d7b: $71
    db $ed                                        ; $6d7c: $ed
    cp h                                          ; $6d7d: $bc
    ld [hl], c                                    ; $6d7e: $71
    db $ed                                        ; $6d7f: $ed
    rst $18                                       ; $6d80: $df
    ld [hl], c                                    ; $6d81: $71
    db $ed                                        ; $6d82: $ed
    ld [bc], a                                    ; $6d83: $02
    ld [hl], d                                    ; $6d84: $72
    db $ed                                        ; $6d85: $ed
    jr nz, jr_008_6dfa                            ; $6d86: $20 $72

    db $ed                                        ; $6d88: $ed
    ld b, h                                       ; $6d89: $44
    ld [hl], d                                    ; $6d8a: $72
    db $ed                                        ; $6d8b: $ed
    add [hl]                                      ; $6d8c: $86
    ld [hl], d                                    ; $6d8d: $72
    db $ed                                        ; $6d8e: $ed
    call $ed72                                    ; $6d8f: $cd $72 $ed
    ld e, $73                                     ; $6d92: $1e $73
    db $ed                                        ; $6d94: $ed
    ld l, d                                       ; $6d95: $6a
    ld [hl], e                                    ; $6d96: $73
    db $ed                                        ; $6d97: $ed
    or c                                          ; $6d98: $b1
    ld [hl], e                                    ; $6d99: $73
    db $ed                                        ; $6d9a: $ed
    cp $73                                        ; $6d9b: $fe $73
    db $ed                                        ; $6d9d: $ed
    scf                                           ; $6d9e: $37
    ld [hl], h                                    ; $6d9f: $74
    db $ed                                        ; $6da0: $ed
    ld a, c                                       ; $6da1: $79
    ld [hl], h                                    ; $6da2: $74
    db $ed                                        ; $6da3: $ed
    call $ed74                                    ; $6da4: $cd $74 $ed
    inc e                                         ; $6da7: $1c
    ld [hl], l                                    ; $6da8: $75
    db $ed                                        ; $6da9: $ed
    ld l, b                                       ; $6daa: $68
    ld [hl], l                                    ; $6dab: $75
    db $ed                                        ; $6dac: $ed
    xor a                                         ; $6dad: $af
    ld [hl], l                                    ; $6dae: $75
    db $ed                                        ; $6daf: $ed
    add sp, $75                                   ; $6db0: $e8 $75
    db $ed                                        ; $6db2: $ed
    ld a, [hl+]                                   ; $6db3: $2a
    halt                                          ; $6db4: $76
    db $ed                                        ; $6db5: $ed
    ld a, [hl]                                    ; $6db6: $7e
    halt                                          ; $6db7: $76
    db $ed                                        ; $6db8: $ed
    reti                                          ; $6db9: $d9


    halt                                          ; $6dba: $76
    db $ed                                        ; $6dbb: $ed
    add hl, hl                                    ; $6dbc: $29
    ld [hl], a                                    ; $6dbd: $77
    db $ed                                        ; $6dbe: $ed
    sub d                                         ; $6dbf: $92
    ld [hl], a                                    ; $6dc0: $77
    db $ed                                        ; $6dc1: $ed
    db $10                                        ; $6dc2: $10
    ld a, b                                       ; $6dc3: $78
    db $ed                                        ; $6dc4: $ed
    adc b                                         ; $6dc5: $88
    ld a, b                                       ; $6dc6: $78
    db $ed                                        ; $6dc7: $ed
    db $10                                        ; $6dc8: $10
    ld a, c                                       ; $6dc9: $79
    db $ed                                        ; $6dca: $ed
    sbc b                                         ; $6dcb: $98
    ld a, c                                       ; $6dcc: $79
    db $ed                                        ; $6dcd: $ed
    inc h                                         ; $6dce: $24
    ld a, d                                       ; $6dcf: $7a
    db $ed                                        ; $6dd0: $ed
    and d                                         ; $6dd1: $a2
    ld a, d                                       ; $6dd2: $7a
    db $ed                                        ; $6dd3: $ed
    ld h, $7b                                     ; $6dd4: $26 $7b
    db $ed                                        ; $6dd6: $ed
    xor l                                         ; $6dd7: $ad
    ld a, e                                       ; $6dd8: $7b
    db $ed                                        ; $6dd9: $ed
    ld c, d                                       ; $6dda: $4a

Jump_008_6ddb:
    ld a, h                                       ; $6ddb: $7c
    db $ed                                        ; $6ddc: $ed
    di                                            ; $6ddd: $f3
    ld a, h                                       ; $6dde: $7c
    db $ed                                        ; $6ddf: $ed
    ld l, e                                       ; $6de0: $6b
    ld a, l                                       ; $6de1: $7d
    db $ed                                        ; $6de2: $ed
    rst $20                                       ; $6de3: $e7

jr_008_6de4:
    ld a, l                                       ; $6de4: $7d
    db $ed                                        ; $6de5: $ed
    ld l, a                                       ; $6de6: $6f
    ld a, [hl]                                    ; $6de7: $7e
    db $ed                                        ; $6de8: $ed
    rst $18                                       ; $6de9: $df
    ld a, [hl]                                    ; $6dea: $7e
    db $ed                                        ; $6deb: $ed
    ld h, a                                       ; $6dec: $67
    ld a, a                                       ; $6ded: $7f
    xor $01                                       ; $6dee: $ee $01
    ld b, b                                       ; $6df0: $40
    xor $b2                                       ; $6df1: $ee $b2
    ld b, b                                       ; $6df3: $40
    xor $67                                       ; $6df4: $ee $67
    ld b, c                                       ; $6df6: $41
    xor $1d                                       ; $6df7: $ee $1d
    ld b, d                                       ; $6df9: $42

jr_008_6dfa:
    xor $d0                                       ; $6dfa: $ee $d0
    ld b, d                                       ; $6dfc: $42
    xor $84                                       ; $6dfd: $ee $84
    ld b, e                                       ; $6dff: $43
    xor $3f                                       ; $6e00: $ee $3f
    ld b, h                                       ; $6e02: $44
    xor $f0                                       ; $6e03: $ee $f0
    ld b, h                                       ; $6e05: $44
    xor $b3                                       ; $6e06: $ee $b3
    ld b, l                                       ; $6e08: $45
    xor $6c                                       ; $6e09: $ee $6c
    ld b, [hl]                                    ; $6e0b: $46
    xor $16                                       ; $6e0c: $ee $16
    ld b, a                                       ; $6e0e: $47
    xor $ba                                       ; $6e0f: $ee $ba
    ld b, a                                       ; $6e11: $47
    xor $64                                       ; $6e12: $ee $64
    ld c, b                                       ; $6e14: $48
    xor $18                                       ; $6e15: $ee $18
    ld c, c                                       ; $6e17: $49
    xor $c6                                       ; $6e18: $ee $c6
    ld c, c                                       ; $6e1a: $49
    xor $7e                                       ; $6e1b: $ee $7e
    ld c, d                                       ; $6e1d: $4a

    db $ee, $3a, $4b, $ee, $93, $4b, $ee, $ee, $4b, $ee, $4e, $4c, $ee, $ad, $4c, $ee
    db $0d, $4d

    xor $6c                                       ; $6e30: $ee $6c
    ld c, l                                       ; $6e32: $4d
    xor $c2                                       ; $6e33: $ee $c2
    ld c, l                                       ; $6e35: $4d
    xor $21                                       ; $6e36: $ee $21
    ld c, [hl]                                    ; $6e38: $4e
    xor $7f                                       ; $6e39: $ee $7f
    ld c, [hl]                                    ; $6e3b: $4e
    xor $de                                       ; $6e3c: $ee $de

Jump_008_6e3e:
    ld c, [hl]                                    ; $6e3e: $4e

    db $ee, $33, $4f, $ee, $8d, $4f, $ee, $fd, $4f, $ee, $6d, $50, $ee, $c8, $50

    xor $0d                                       ; $6e4e: $ee $0d
    ld d, c                                       ; $6e50: $51
    xor $98                                       ; $6e51: $ee $98
    ld d, c                                       ; $6e53: $51
    xor $23                                       ; $6e54: $ee $23
    ld d, d                                       ; $6e56: $52
    xor $ac                                       ; $6e57: $ee $ac
    ld d, d                                       ; $6e59: $52
    xor $30                                       ; $6e5a: $ee $30
    ld d, e                                       ; $6e5c: $53
    xor $b7                                       ; $6e5d: $ee $b7
    ld d, e                                       ; $6e5f: $53
    xor $45                                       ; $6e60: $ee $45
    ld d, h                                       ; $6e62: $54
    xor $c9                                       ; $6e63: $ee $c9
    ld d, h                                       ; $6e65: $54
    xor $47                                       ; $6e66: $ee $47
    ld d, l                                       ; $6e68: $55
    xor $dd                                       ; $6e69: $ee $dd
    ld d, l                                       ; $6e6b: $55
    xor $66                                       ; $6e6c: $ee $66
    ld d, [hl]                                    ; $6e6e: $56
    xor $f9                                       ; $6e6f: $ee $f9
    ld d, [hl]                                    ; $6e71: $56
    xor $7f                                       ; $6e72: $ee $7f
    ld d, a                                       ; $6e74: $57
    xor $22                                       ; $6e75: $ee $22
    ld e, b                                       ; $6e77: $58
    xor $b7                                       ; $6e78: $ee $b7
    ld e, b                                       ; $6e7a: $58
    xor $54                                       ; $6e7b: $ee $54
    ld e, c                                       ; $6e7d: $59
    xor $e2                                       ; $6e7e: $ee $e2
    ld e, c                                       ; $6e80: $59
    xor $56                                       ; $6e81: $ee $56
    ld e, d                                       ; $6e83: $5a
    xor $c4                                       ; $6e84: $ee $c4
    ld e, d                                       ; $6e86: $5a
    xor $2a                                       ; $6e87: $ee $2a
    ld e, e                                       ; $6e89: $5b
    xor $92                                       ; $6e8a: $ee $92
    ld e, e                                       ; $6e8c: $5b
    xor $1d                                       ; $6e8d: $ee $1d
    ld e, h                                       ; $6e8f: $5c
    xor $93                                       ; $6e90: $ee $93
    ld e, h                                       ; $6e92: $5c
    xor $1a                                       ; $6e93: $ee $1a
    ld e, l                                       ; $6e95: $5d
    xor $97                                       ; $6e96: $ee $97
    ld e, l                                       ; $6e98: $5d
    xor $15                                       ; $6e99: $ee $15
    ld e, [hl]                                    ; $6e9b: $5e
    xor $aa                                       ; $6e9c: $ee $aa
    ld e, [hl]                                    ; $6e9e: $5e
    xor $32                                       ; $6e9f: $ee $32
    ld e, a                                       ; $6ea1: $5f
    xor $bf                                       ; $6ea2: $ee $bf
    ld e, a                                       ; $6ea4: $5f
    xor $62                                       ; $6ea5: $ee $62
    ld h, b                                       ; $6ea7: $60
    xor $fc                                       ; $6ea8: $ee $fc
    ld h, b                                       ; $6eaa: $60
    xor $7c                                       ; $6eab: $ee $7c
    ld h, c                                       ; $6ead: $61
    xor $13                                       ; $6eae: $ee $13
    ld h, d                                       ; $6eb0: $62
    xor $72                                       ; $6eb1: $ee $72
    ld h, d                                       ; $6eb3: $62
    xor $cd                                       ; $6eb4: $ee $cd
    ld h, d                                       ; $6eb6: $62
    xor $29                                       ; $6eb7: $ee $29
    ld h, e                                       ; $6eb9: $63
    xor $7f                                       ; $6eba: $ee $7f
    ld h, e                                       ; $6ebc: $63
    xor $da                                       ; $6ebd: $ee $da
    ld h, e                                       ; $6ebf: $63
    xor $20                                       ; $6ec0: $ee $20
    ld h, h                                       ; $6ec2: $64
    xor $57                                       ; $6ec3: $ee $57
    ld h, h                                       ; $6ec5: $64
    xor $93                                       ; $6ec6: $ee $93
    ld h, h                                       ; $6ec8: $64
    xor $d2                                       ; $6ec9: $ee $d2
    ld h, h                                       ; $6ecb: $64
    xor $ff                                       ; $6ecc: $ee $ff
    ld h, h                                       ; $6ece: $64
    xor $40                                       ; $6ecf: $ee $40
    ld h, l                                       ; $6ed1: $65
    xor $85                                       ; $6ed2: $ee $85
    ld h, l                                       ; $6ed4: $65
    xor $c8                                       ; $6ed5: $ee $c8
    ld h, l                                       ; $6ed7: $65
    xor $10                                       ; $6ed8: $ee $10
    ld h, [hl]                                    ; $6eda: $66
    xor $53                                       ; $6edb: $ee $53
    ld h, [hl]                                    ; $6edd: $66
    xor $90                                       ; $6ede: $ee $90
    ld h, [hl]                                    ; $6ee0: $66
    xor $de                                       ; $6ee1: $ee $de
    ld h, [hl]                                    ; $6ee3: $66
    xor $32                                       ; $6ee4: $ee $32
    ld h, a                                       ; $6ee6: $67
    xor $8c                                       ; $6ee7: $ee $8c
    ld h, a                                       ; $6ee9: $67
    xor $d9                                       ; $6eea: $ee $d9
    ld h, a                                       ; $6eec: $67
    xor $19                                       ; $6eed: $ee $19
    ld l, b                                       ; $6eef: $68
    xor $65                                       ; $6ef0: $ee $65
    ld l, b                                       ; $6ef2: $68
    xor $a4                                       ; $6ef3: $ee $a4
    ld l, b                                       ; $6ef5: $68
    xor $fc                                       ; $6ef6: $ee $fc
    ld l, b                                       ; $6ef8: $68
    xor $62                                       ; $6ef9: $ee $62
    ld l, c                                       ; $6efb: $69
    xor $c2                                       ; $6efc: $ee $c2
    ld l, c                                       ; $6efe: $69
    xor $0d                                       ; $6eff: $ee $0d
    ld l, d                                       ; $6f01: $6a
    xor $4a                                       ; $6f02: $ee $4a
    ld l, d                                       ; $6f04: $6a
    xor $95                                       ; $6f05: $ee $95
    ld l, d                                       ; $6f07: $6a
    xor $da                                       ; $6f08: $ee $da
    ld l, d                                       ; $6f0a: $6a
    xor $19                                       ; $6f0b: $ee $19

Call_008_6f0d:
    ld l, e                                       ; $6f0d: $6b
    xor $62                                       ; $6f0e: $ee $62
    ld l, e                                       ; $6f10: $6b
    xor $1a                                       ; $6f11: $ee $1a
    ld l, h                                       ; $6f13: $6c
    xor $d0                                       ; $6f14: $ee $d0
    ld l, h                                       ; $6f16: $6c
    xor $97                                       ; $6f17: $ee $97
    ld l, l                                       ; $6f19: $6d
    xor $5b                                       ; $6f1a: $ee $5b
    ld l, [hl]                                    ; $6f1c: $6e
    xor $15                                       ; $6f1d: $ee $15
    ld l, a                                       ; $6f1f: $6f
    xor $ca                                       ; $6f20: $ee $ca
    ld l, a                                       ; $6f22: $6f
    xor $7d                                       ; $6f23: $ee $7d
    ld [hl], b                                    ; $6f25: $70
    xor $37                                       ; $6f26: $ee $37
    ld [hl], c                                    ; $6f28: $71
    xor $fa                                       ; $6f29: $ee $fa
    ld [hl], c                                    ; $6f2b: $71
    xor $a6                                       ; $6f2c: $ee $a6
    ld [hl], d                                    ; $6f2e: $72
    xor $62                                       ; $6f2f: $ee $62
    ld [hl], e                                    ; $6f31: $73
    xor $13                                       ; $6f32: $ee $13
    ld [hl], h                                    ; $6f34: $74
    xor $e5                                       ; $6f35: $ee $e5
    ld [hl], h                                    ; $6f37: $74
    xor $a9                                       ; $6f38: $ee $a9
    ld [hl], l                                    ; $6f3a: $75
    xor $78                                       ; $6f3b: $ee $78
    halt                                          ; $6f3d: $76
    xor $2d                                       ; $6f3e: $ee $2d
    ld [hl], a                                    ; $6f40: $77
    xor $c8                                       ; $6f41: $ee $c8
    ld [hl], a                                    ; $6f43: $77
    xor $53                                       ; $6f44: $ee $53
    ld a, b                                       ; $6f46: $78
    xor $da                                       ; $6f47: $ee $da
    ld a, b                                       ; $6f49: $78
    xor $54                                       ; $6f4a: $ee $54
    ld a, c                                       ; $6f4c: $79
    xor $d8                                       ; $6f4d: $ee $d8
    ld a, c                                       ; $6f4f: $79
    xor $5e                                       ; $6f50: $ee $5e
    ld a, d                                       ; $6f52: $7a
    xor $e7                                       ; $6f53: $ee $e7
    ld a, d                                       ; $6f55: $7a
    xor $6b                                       ; $6f56: $ee $6b
    ld a, e                                       ; $6f58: $7b
    xor $ee                                       ; $6f59: $ee $ee
    ld a, e                                       ; $6f5b: $7b
    xor $76                                       ; $6f5c: $ee $76
    ld a, h                                       ; $6f5e: $7c
    xor $01                                       ; $6f5f: $ee $01
    ld a, l                                       ; $6f61: $7d
    xor $8d                                       ; $6f62: $ee $8d
    ld a, l                                       ; $6f64: $7d
    xor $02                                       ; $6f65: $ee $02
    ld a, [hl]                                    ; $6f67: $7e
    xor $78                                       ; $6f68: $ee $78
    ld a, [hl]                                    ; $6f6a: $7e
    xor $da                                       ; $6f6b: $ee $da
    ld a, [hl]                                    ; $6f6d: $7e
    db $ed                                        ; $6f6e: $ed
    push hl                                       ; $6f6f: $e5
    ld a, a                                       ; $6f70: $7f
    xor $5f                                       ; $6f71: $ee $5f
    ld a, a                                       ; $6f73: $7f
    xor $71                                       ; $6f74: $ee $71
    ld a, a                                       ; $6f76: $7f
    xor $89                                       ; $6f77: $ee $89
    ld a, a                                       ; $6f79: $7f
    xor $a1                                       ; $6f7a: $ee $a1
    ld a, a                                       ; $6f7c: $7f
    xor $bd                                       ; $6f7d: $ee $bd
    ld a, a                                       ; $6f7f: $7f
    rst $28                                       ; $6f80: $ef
    ld bc, $ef40                                  ; $6f81: $01 $40 $ef
    ld d, l                                       ; $6f84: $55
    ld b, b                                       ; $6f85: $40
    rst $28                                       ; $6f86: $ef
    or b                                          ; $6f87: $b0
    ld b, b                                       ; $6f88: $40
    rst $28                                       ; $6f89: $ef
    ld [de], a                                    ; $6f8a: $12
    ld b, c                                       ; $6f8b: $41
    rst $28                                       ; $6f8c: $ef
    ld [hl], a                                    ; $6f8d: $77
    ld b, c                                       ; $6f8e: $41
    rst $28                                       ; $6f8f: $ef
    call nc, $ef41                                ; $6f90: $d4 $41 $ef
    add hl, hl                                    ; $6f93: $29
    ld b, d                                       ; $6f94: $42
    rst $28                                       ; $6f95: $ef
    add h                                         ; $6f96: $84
    ld b, d                                       ; $6f97: $42
    rst $28                                       ; $6f98: $ef
    db $e4                                        ; $6f99: $e4
    ld b, d                                       ; $6f9a: $42
    rst $28                                       ; $6f9b: $ef
    ld a, $43                                     ; $6f9c: $3e $43
    rst $28                                       ; $6f9e: $ef
    xor c                                         ; $6f9f: $a9
    ld b, e                                       ; $6fa0: $43
    rst $28                                       ; $6fa1: $ef
    inc c                                         ; $6fa2: $0c
    ld b, h                                       ; $6fa3: $44
    rst $28                                       ; $6fa4: $ef
    ld l, c                                       ; $6fa5: $69
    ld b, h                                       ; $6fa6: $44
    rst $28                                       ; $6fa7: $ef
    jp nz, $ef44                                  ; $6fa8: $c2 $44 $ef

    ld hl, $ef45                                  ; $6fab: $21 $45 $ef
    ld [hl], c                                    ; $6fae: $71
    ld b, l                                       ; $6faf: $45
    rst $28                                       ; $6fb0: $ef
    sub $45                                       ; $6fb1: $d6 $45
    rst $28                                       ; $6fb3: $ef
    ld l, c                                       ; $6fb4: $69
    ld b, [hl]                                    ; $6fb5: $46
    rst $28                                       ; $6fb6: $ef
    push af                                       ; $6fb7: $f5
    ld b, [hl]                                    ; $6fb8: $46
    rst $28                                       ; $6fb9: $ef
    ld a, l                                       ; $6fba: $7d
    ld b, a                                       ; $6fbb: $47
    rst $28                                       ; $6fbc: $ef
    dec b                                         ; $6fbd: $05
    ld c, b                                       ; $6fbe: $48
    rst $28                                       ; $6fbf: $ef
    sub e                                         ; $6fc0: $93
    ld c, b                                       ; $6fc1: $48
    rst $28                                       ; $6fc2: $ef
    inc h                                         ; $6fc3: $24
    ld c, c                                       ; $6fc4: $49
    rst $28                                       ; $6fc5: $ef
    and l                                         ; $6fc6: $a5
    ld c, c                                       ; $6fc7: $49
    rst $28                                       ; $6fc8: $ef
    jr z, jr_008_7015                             ; $6fc9: $28 $4a

    rst $28                                       ; $6fcb: $ef
    call z, $ef4a                                 ; $6fcc: $cc $4a $ef
    ld a, [hl]                                    ; $6fcf: $7e
    ld c, e                                       ; $6fd0: $4b
    rst $28                                       ; $6fd1: $ef
    dec d                                         ; $6fd2: $15
    ld c, h                                       ; $6fd3: $4c
    rst $28                                       ; $6fd4: $ef
    and c                                         ; $6fd5: $a1
    ld c, h                                       ; $6fd6: $4c
    rst $28                                       ; $6fd7: $ef
    inc [hl]                                      ; $6fd8: $34
    ld c, l                                       ; $6fd9: $4d

Call_008_6fda:
    rst $28                                       ; $6fda: $ef
    or h                                          ; $6fdb: $b4
    ld c, l                                       ; $6fdc: $4d
    rst $28                                       ; $6fdd: $ef
    daa                                           ; $6fde: $27
    ld c, [hl]                                    ; $6fdf: $4e
    xor $da                                       ; $6fe0: $ee $da
    ld a, a                                       ; $6fe2: $7f
    rst $28                                       ; $6fe3: $ef

Jump_008_6fe4:
    xor e                                         ; $6fe4: $ab
    ld c, [hl]                                    ; $6fe5: $4e
    rst $28                                       ; $6fe6: $ef
    rst $08                                       ; $6fe7: $cf
    ld c, [hl]                                    ; $6fe8: $4e
    rst $28                                       ; $6fe9: $ef
    rst $28                                       ; $6fea: $ef
    ld c, [hl]                                    ; $6feb: $4e
    rst $28                                       ; $6fec: $ef
    add h                                         ; $6fed: $84
    ld c, a                                       ; $6fee: $4f
    rst $28                                       ; $6fef: $ef
    inc h                                         ; $6ff0: $24
    ld d, b                                       ; $6ff1: $50
    rst $28                                       ; $6ff2: $ef
    cp a                                          ; $6ff3: $bf
    ld d, b                                       ; $6ff4: $50
    rst $28                                       ; $6ff5: $ef
    ld e, b                                       ; $6ff6: $58
    ld d, c                                       ; $6ff7: $51
    rst $28                                       ; $6ff8: $ef
    ld a, [c]                                     ; $6ff9: $f2
    ld d, c                                       ; $6ffa: $51
    rst $28                                       ; $6ffb: $ef
    ld a, d                                       ; $6ffc: $7a
    ld d, d                                       ; $6ffd: $52
    rst $28                                       ; $6ffe: $ef
    rra                                           ; $6fff: $1f
    ld d, e                                       ; $7000: $53
    rst $28                                       ; $7001: $ef
    or b                                          ; $7002: $b0
    ld d, e                                       ; $7003: $53
    rst $28                                       ; $7004: $ef
    ld c, a                                       ; $7005: $4f
    ld d, h                                       ; $7006: $54
    rst $28                                       ; $7007: $ef
    di                                            ; $7008: $f3
    ld d, h                                       ; $7009: $54
    rst $28                                       ; $700a: $ef
    add [hl]                                      ; $700b: $86
    ld d, l                                       ; $700c: $55
    rst $28                                       ; $700d: $ef
    jr jr_008_7066                                ; $700e: $18 $56

    rst $28                                       ; $7010: $ef
    xor c                                         ; $7011: $a9
    ld d, [hl]                                    ; $7012: $56
    rst $28                                       ; $7013: $ef
    inc h                                         ; $7014: $24

jr_008_7015:
    ld d, a                                       ; $7015: $57
    rst $28                                       ; $7016: $ef
    add l                                         ; $7017: $85
    ld d, a                                       ; $7018: $57
    rst $28                                       ; $7019: $ef
    ld [$ef58], sp                                ; $701a: $08 $58 $ef
    ld [hl], b                                    ; $701d: $70
    ld e, b                                       ; $701e: $58
    rst $28                                       ; $701f: $ef
    xor c                                         ; $7020: $a9
    ld e, b                                       ; $7021: $58
    rst $28                                       ; $7022: $ef
    ld hl, $ef59                                  ; $7023: $21 $59 $ef
    ld h, [hl]                                    ; $7026: $66
    ld e, c                                       ; $7027: $59
    rst $28                                       ; $7028: $ef
    db $d3                                        ; $7029: $d3
    ld e, c                                       ; $702a: $59
    rst $28                                       ; $702b: $ef
    jr jr_008_7088                                ; $702c: $18 $5a

    rst $28                                       ; $702e: $ef
    ld a, a                                       ; $702f: $7f
    ld e, d                                       ; $7030: $5a
    rst $28                                       ; $7031: $ef
    jp nz, $ef5a                                  ; $7032: $c2 $5a $ef

    ld [$ef5b], sp                                ; $7035: $08 $5b $ef
    ld d, c                                       ; $7038: $51
    ld e, e                                       ; $7039: $5b
    rst $28                                       ; $703a: $ef
    sbc a                                         ; $703b: $9f
    ld e, e                                       ; $703c: $5b
    rst $28                                       ; $703d: $ef
    sub $5b                                       ; $703e: $d6 $5b
    rst $28                                       ; $7040: $ef
    ld h, $5c                                     ; $7041: $26 $5c
    rst $28                                       ; $7043: $ef
    ld [hl], d                                    ; $7044: $72
    ld e, h                                       ; $7045: $5c
    rst $28                                       ; $7046: $ef
    ret nc                                        ; $7047: $d0

    ld e, h                                       ; $7048: $5c
    rst $28                                       ; $7049: $ef
    jr jr_008_70a9                                ; $704a: $18 $5d

    rst $28                                       ; $704c: $ef
    ld l, l                                       ; $704d: $6d
    ld e, l                                       ; $704e: $5d
    rst $28                                       ; $704f: $ef
    call nz, $ef5d                                ; $7050: $c4 $5d $ef
    jr @+$60                                      ; $7053: $18 $5e

    rst $28                                       ; $7055: $ef
    ld l, [hl]                                    ; $7056: $6e
    ld e, [hl]                                    ; $7057: $5e
    rst $28                                       ; $7058: $ef
    jp nz, $ef5e                                  ; $7059: $c2 $5e $ef

    add hl, de                                    ; $705c: $19
    ld e, a                                       ; $705d: $5f
    rst $28                                       ; $705e: $ef
    ld l, a                                       ; $705f: $6f
    ld e, a                                       ; $7060: $5f
    rst $28                                       ; $7061: $ef
    push bc                                       ; $7062: $c5
    ld e, a                                       ; $7063: $5f
    rst $28                                       ; $7064: $ef
    add hl, de                                    ; $7065: $19

jr_008_7066:
    ld h, b                                       ; $7066: $60
    rst $28                                       ; $7067: $ef
    ld [hl], d                                    ; $7068: $72
    ld h, b                                       ; $7069: $60
    rst $28                                       ; $706a: $ef
    push de                                       ; $706b: $d5
    ld h, b                                       ; $706c: $60
    rst $28                                       ; $706d: $ef

Jump_008_706e:
    inc l                                         ; $706e: $2c
    ld h, c                                       ; $706f: $61
    rst $28                                       ; $7070: $ef
    adc d                                         ; $7071: $8a
    ld h, c                                       ; $7072: $61
    rst $28                                       ; $7073: $ef
    reti                                          ; $7074: $d9


    ld h, c                                       ; $7075: $61
    rst $28                                       ; $7076: $ef
    jr nc, jr_008_70db                            ; $7077: $30 $62

    rst $28                                       ; $7079: $ef
    add [hl]                                      ; $707a: $86
    ld h, d                                       ; $707b: $62
    rst $28                                       ; $707c: $ef
    ld c, c                                       ; $707d: $49
    ld h, h                                       ; $707e: $64
    rst $28                                       ; $707f: $ef
    dec c                                         ; $7080: $0d
    ld h, [hl]                                    ; $7081: $66
    rst $28                                       ; $7082: $ef
    pop de                                        ; $7083: $d1
    ld h, a                                       ; $7084: $67
    rst $28                                       ; $7085: $ef
    sub [hl]                                      ; $7086: $96
    ld l, c                                       ; $7087: $69

jr_008_7088:
    rst $28                                       ; $7088: $ef
    ld e, e                                       ; $7089: $5b
    ld l, e                                       ; $708a: $6b
    rst $28                                       ; $708b: $ef
    ld [hl+], a                                   ; $708c: $22
    ld l, l                                       ; $708d: $6d
    rst $28                                       ; $708e: $ef
    and $6e                                       ; $708f: $e6 $6e
    rst $28                                       ; $7091: $ef
    xor d                                         ; $7092: $aa
    ld [hl], b                                    ; $7093: $70
    rst $28                                       ; $7094: $ef
    ld l, a                                       ; $7095: $6f
    ld [hl], d                                    ; $7096: $72
    rst $28                                       ; $7097: $ef
    ld [hl], $74                                  ; $7098: $36 $74
    rst $28                                       ; $709a: $ef
    ld a, [de]                                    ; $709b: $1a
    halt                                          ; $709c: $76
    rst $28                                       ; $709d: $ef
    ld bc, $ef78                                  ; $709e: $01 $78 $ef
    di                                            ; $70a1: $f3
    ld a, c                                       ; $70a2: $79
    rst $28                                       ; $70a3: $ef
    or h                                          ; $70a4: $b4
    ld a, e                                       ; $70a5: $7b

Call_008_70a6:
    rst $28                                       ; $70a6: $ef
    or b                                          ; $70a7: $b0
    ld a, l                                       ; $70a8: $7d

jr_008_70a9:
    ldh a, [rSB]                                  ; $70a9: $f0 $01
    ld b, b                                       ; $70ab: $40
    ldh a, [$0b]                                  ; $70ac: $f0 $0b
    ld b, d                                       ; $70ae: $42
    ldh a, [$ec]                                  ; $70af: $f0 $ec
    ld b, e                                       ; $70b1: $43
    ldh a, [$c7]                                  ; $70b2: $f0 $c7
    ld b, l                                       ; $70b4: $45
    ldh a, [$9c]                                  ; $70b5: $f0 $9c
    ld b, a                                       ; $70b7: $47
    ldh a, [rSTAT]                                ; $70b8: $f0 $41
    ld c, c                                       ; $70ba: $49
    ldh a, [$e6]                                  ; $70bb: $f0 $e6
    ld c, d                                       ; $70bd: $4a
    ldh a, [rRP]                                  ; $70be: $f0 $56
    ld c, h                                       ; $70c0: $4c
    ldh a, [rSB]                                  ; $70c1: $f0 $01
    ld c, [hl]                                    ; $70c3: $4e
    ldh a, [$ba]                                  ; $70c4: $f0 $ba
    ld c, a                                       ; $70c6: $4f
    ldh a, [$99]                                  ; $70c7: $f0 $99
    ld d, c                                       ; $70c9: $51
    ldh a, [rSVBK]                                ; $70ca: $f0 $70
    ld d, e                                       ; $70cc: $53
    ldh a, [$35]                                  ; $70cd: $f0 $35
    ld d, l                                       ; $70cf: $55
    ldh a, [$3f]                                  ; $70d0: $f0 $3f
    ld d, [hl]                                    ; $70d2: $56
    ldh a, [rWY]                                  ; $70d3: $f0 $4a
    ld d, a                                       ; $70d5: $57
    ldh a, [rHDMA2]                               ; $70d6: $f0 $52
    ld e, b                                       ; $70d8: $58
    ldh a, [$5a]                                  ; $70d9: $f0 $5a

jr_008_70db:
    ld e, c                                       ; $70db: $59
    ldh a, [$63]                                  ; $70dc: $f0 $63
    ld e, d                                       ; $70de: $5a
    ldh a, [$6e]                                  ; $70df: $f0 $6e
    ld e, e                                       ; $70e1: $5b
    ldh a, [$82]                                  ; $70e2: $f0 $82
    ld e, h                                       ; $70e4: $5c
    ldh a, [$71]                                  ; $70e5: $f0 $71
    ld e, l                                       ; $70e7: $5d
    ldh a, [rLYC]                                 ; $70e8: $f0 $45
    ld e, [hl]                                    ; $70ea: $5e
    ldh a, [$39]                                  ; $70eb: $f0 $39
    ld e, a                                       ; $70ed: $5f
    ldh a, [rNR31]                                ; $70ee: $f0 $1b
    ld h, b                                       ; $70f0: $60
    ldh a, [$f6]                                  ; $70f1: $f0 $f6
    ld h, b                                       ; $70f3: $60

Jump_008_70f4:
    ldh a, [$fe]                                  ; $70f4: $f0 $fe
    ld h, c                                       ; $70f6: $61
    ldh a, [$fa]                                  ; $70f7: $f0 $fa
    ld h, d                                       ; $70f9: $62
    ldh a, [$f8]                                  ; $70fa: $f0 $f8
    ld h, e                                       ; $70fc: $63
    ldh a, [$03]                                  ; $70fd: $f0 $03
    ld h, l                                       ; $70ff: $65
    ldh a, [rNR23]                                ; $7100: $f0 $18
    ld h, a                                       ; $7102: $67
    ldh a, [$2c]                                  ; $7103: $f0 $2c
    ld l, c                                       ; $7105: $69
    ldh a, [$39]                                  ; $7106: $f0 $39
    ld l, e                                       ; $7108: $6b
    ldh a, [$27]                                  ; $7109: $f0 $27
    ld l, l                                       ; $710b: $6d
    ldh a, [rNR21]                                ; $710c: $f0 $16
    ld l, a                                       ; $710e: $6f
    ldh a, [rSB]                                  ; $710f: $f0 $01
    ld [hl], c                                    ; $7111: $71
    ldh a, [$73]                                  ; $7112: $f0 $73
    ld [hl], e                                    ; $7114: $73
    ldh a, [rSB]                                  ; $7115: $f0 $01
    halt                                          ; $7117: $76
    ldh a, [rOBP0]                                ; $7118: $f0 $48
    ld a, b                                       ; $711a: $78
    ldh a, [$64]                                  ; $711b: $f0 $64
    ld a, d                                       ; $711d: $7a
    ldh a, [$7a]                                  ; $711e: $f0 $7a
    ld a, h                                       ; $7120: $7c
    pop af                                        ; $7121: $f1
    ld bc, $f140                                  ; $7122: $01 $40 $f1
    ld l, [hl]                                    ; $7125: $6e
    ld b, d                                       ; $7126: $42
    pop af                                        ; $7127: $f1
    add hl, bc                                    ; $7128: $09
    ld b, l                                       ; $7129: $45
    pop af                                        ; $712a: $f1
    ld a, d                                       ; $712b: $7a
    ld b, a                                       ; $712c: $47
    ldh a, [$81]                                  ; $712d: $f0 $81
    ld a, [hl]                                    ; $712f: $7e
    pop af                                        ; $7130: $f1
    dec e                                         ; $7131: $1d
    ld c, d                                       ; $7132: $4a
    pop af                                        ; $7133: $f1
    ld l, [hl]                                    ; $7134: $6e
    ld c, e                                       ; $7135: $4b
    pop af                                        ; $7136: $f1
    pop bc                                        ; $7137: $c1
    ld c, h                                       ; $7138: $4c
    pop af                                        ; $7139: $f1
    rst $38                                       ; $713a: $ff
    ld c, l                                       ; $713b: $4d
    pop af                                        ; $713c: $f1
    ld b, c                                       ; $713d: $41
    ld c, a                                       ; $713e: $4f
    pop af                                        ; $713f: $f1
    add e                                         ; $7140: $83
    ld d, b                                       ; $7141: $50
    pop af                                        ; $7142: $f1
    or d                                          ; $7143: $b2
    ld d, c                                       ; $7144: $51
    pop af                                        ; $7145: $f1
    rst $20                                       ; $7146: $e7
    ld d, d                                       ; $7147: $52
    pop af                                        ; $7148: $f1
    jr nz, jr_008_719f                            ; $7149: $20 $54

    pop af                                        ; $714b: $f1
    add e                                         ; $714c: $83
    ld d, l                                       ; $714d: $55
    pop af                                        ; $714e: $f1
    call c, $f156                                 ; $714f: $dc $56 $f1
    jr nz, jr_008_71ac                            ; $7152: $20 $58

    pop af                                        ; $7154: $f1
    ld l, b                                       ; $7155: $68
    ld e, c                                       ; $7156: $59
    pop af                                        ; $7157: $f1
    cp h                                          ; $7158: $bc
    ld e, d                                       ; $7159: $5a
    pop af                                        ; $715a: $f1
    ld a, [de]                                    ; $715b: $1a
    ld e, h                                       ; $715c: $5c
    pop af                                        ; $715d: $f1
    adc h                                         ; $715e: $8c
    ld e, l                                       ; $715f: $5d
    pop af                                        ; $7160: $f1
    ld [hl], c                                    ; $7161: $71
    ld e, a                                       ; $7162: $5f
    pop af                                        ; $7163: $f1
    ld d, [hl]                                    ; $7164: $56
    ld h, c                                       ; $7165: $61
    pop af                                        ; $7166: $f1
    inc a                                         ; $7167: $3c
    ld h, e                                       ; $7168: $63
    pop af                                        ; $7169: $f1
    ld a, [de]                                    ; $716a: $1a
    ld h, l                                       ; $716b: $65
    pop af                                        ; $716c: $f1
    or $66                                        ; $716d: $f6 $66
    pop af                                        ; $716f: $f1
    push de                                       ; $7170: $d5
    ld l, b                                       ; $7171: $68
    pop af                                        ; $7172: $f1
    ret                                           ; $7173: $c9


    ld l, d                                       ; $7174: $6a
    pop af                                        ; $7175: $f1
    and c                                         ; $7176: $a1

Jump_008_7177:
    ld l, h                                       ; $7177: $6c
    pop af                                        ; $7178: $f1
    add [hl]                                      ; $7179: $86
    ld l, [hl]                                    ; $717a: $6e
    pop af                                        ; $717b: $f1
    add d                                         ; $717c: $82
    ld [hl], b                                    ; $717d: $70
    pop af                                        ; $717e: $f1
    ld l, [hl]                                    ; $717f: $6e
    ld [hl], d                                    ; $7180: $72
    pop af                                        ; $7181: $f1
    ld c, a                                       ; $7182: $4f
    ld [hl], h                                    ; $7183: $74
    pop af                                        ; $7184: $f1
    rra                                           ; $7185: $1f
    halt                                          ; $7186: $76
    pop af                                        ; $7187: $f1
    inc e                                         ; $7188: $1c
    ld a, b                                       ; $7189: $78
    pop af                                        ; $718a: $f1
    or $79                                        ; $718b: $f6 $79
    rst $28                                       ; $718d: $ef
    xor l                                         ; $718e: $ad
    ld a, a                                       ; $718f: $7f
    pop af                                        ; $7190: $f1
    call $f17b                                    ; $7191: $cd $7b $f1
    jr jr_008_7212                                ; $7194: $18 $7c

    pop af                                        ; $7196: $f1
    ld h, e                                       ; $7197: $63
    ld a, h                                       ; $7198: $7c
    pop af                                        ; $7199: $f1
    xor [hl]                                      ; $719a: $ae
    ld a, h                                       ; $719b: $7c
    pop af                                        ; $719c: $f1
    di                                            ; $719d: $f3
    ld a, h                                       ; $719e: $7c

jr_008_719f:
    pop af                                        ; $719f: $f1
    jr c, jr_008_721f                             ; $71a0: $38 $7d

    pop af                                        ; $71a2: $f1
    ld a, l                                       ; $71a3: $7d
    ld a, l                                       ; $71a4: $7d
    pop af                                        ; $71a5: $f1
    db $d3                                        ; $71a6: $d3
    ld a, l                                       ; $71a7: $7d
    pop af                                        ; $71a8: $f1
    ld a, [hl+]                                   ; $71a9: $2a
    ld a, [hl]                                    ; $71aa: $7e
    pop af                                        ; $71ab: $f1

jr_008_71ac:
    add b                                         ; $71ac: $80
    ld a, [hl]                                    ; $71ad: $7e
    pop af                                        ; $71ae: $f1
    push de                                       ; $71af: $d5
    ld a, [hl]                                    ; $71b0: $7e
    pop af                                        ; $71b1: $f1
    jr nz, jr_008_7233                            ; $71b2: $20 $7f

    ld a, [c]                                     ; $71b4: $f2
    ld bc, $f240                                  ; $71b5: $01 $40 $f2
    add b                                         ; $71b8: $80
    ld b, b                                       ; $71b9: $40
    ld a, [c]                                     ; $71ba: $f2
    ld [$f141], sp                                ; $71bb: $08 $41 $f1
    and h                                         ; $71be: $a4
    ld a, a                                       ; $71bf: $7f
    ldh a, [$bc]                                  ; $71c0: $f0 $bc
    ld a, a                                       ; $71c2: $7f
    ld a, [c]                                     ; $71c3: $f2
    add d                                         ; $71c4: $82
    ld b, c                                       ; $71c5: $41
    ld a, [c]                                     ; $71c6: $f2
    push hl                                       ; $71c7: $e5
    ld b, c                                       ; $71c8: $41
    ld a, [c]                                     ; $71c9: $f2
    ld sp, $f242                                  ; $71ca: $31 $42 $f2
    adc h                                         ; $71cd: $8c
    ld b, d                                       ; $71ce: $42
    ld a, [c]                                     ; $71cf: $f2
    reti                                          ; $71d0: $d9


    ld b, d                                       ; $71d1: $42
    ld a, [c]                                     ; $71d2: $f2
    ld [hl], $43                                  ; $71d3: $36 $43
    ld a, [c]                                     ; $71d5: $f2
    ld l, e                                       ; $71d6: $6b
    ld b, e                                       ; $71d7: $43
    ld a, [c]                                     ; $71d8: $f2
    or a                                          ; $71d9: $b7
    ld b, e                                       ; $71da: $43
    ld a, [c]                                     ; $71db: $f2
    ld [de], a                                    ; $71dc: $12
    ld b, h                                       ; $71dd: $44
    ld a, [c]                                     ; $71de: $f2
    ld [hl], b                                    ; $71df: $70
    ld b, h                                       ; $71e0: $44
    ld a, [c]                                     ; $71e1: $f2
    or d                                          ; $71e2: $b2
    ld b, h                                       ; $71e3: $44
    ld a, [c]                                     ; $71e4: $f2
    nop                                           ; $71e5: $00
    ld b, l                                       ; $71e6: $45
    ld a, [c]                                     ; $71e7: $f2
    dec hl                                        ; $71e8: $2b
    ld b, l                                       ; $71e9: $45
    ld a, [c]                                     ; $71ea: $f2
    ld a, d                                       ; $71eb: $7a
    ld b, l                                       ; $71ec: $45
    ld a, [c]                                     ; $71ed: $f2
    cp [hl]                                       ; $71ee: $be
    ld b, l                                       ; $71ef: $45
    ld a, [c]                                     ; $71f0: $f2
    dec sp                                        ; $71f1: $3b
    ld b, [hl]                                    ; $71f2: $46
    ld a, [c]                                     ; $71f3: $f2
    cp c                                          ; $71f4: $b9
    ld b, [hl]                                    ; $71f5: $46
    ld a, [c]                                     ; $71f6: $f2
    scf                                           ; $71f7: $37
    ld b, a                                       ; $71f8: $47
    ld a, [c]                                     ; $71f9: $f2

Jump_008_71fa:
    cp h                                          ; $71fa: $bc
    ld b, a                                       ; $71fb: $47
    ld a, [c]                                     ; $71fc: $f2
    ld a, $48                                     ; $71fd: $3e $48
    ld a, [c]                                     ; $71ff: $f2
    ret nz                                        ; $7200: $c0

    ld c, b                                       ; $7201: $48
    ld a, [c]                                     ; $7202: $f2
    inc h                                         ; $7203: $24
    ld c, c                                       ; $7204: $49
    ld a, [c]                                     ; $7205: $f2
    add b                                         ; $7206: $80
    ld c, c                                       ; $7207: $49
    ld a, [c]                                     ; $7208: $f2
    ld sp, hl                                     ; $7209: $f9
    ld c, c                                       ; $720a: $49
    ld a, [c]                                     ; $720b: $f2
    ld a, a                                       ; $720c: $7f
    ld c, d                                       ; $720d: $4a
    ld a, [c]                                     ; $720e: $f2
    rlca                                          ; $720f: $07
    ld c, e                                       ; $7210: $4b
    ld a, [c]                                     ; $7211: $f2

jr_008_7212:
    adc e                                         ; $7212: $8b
    ld c, e                                       ; $7213: $4b
    ld a, [c]                                     ; $7214: $f2
    ld de, $f24c                                  ; $7215: $11 $4c $f2
    sbc e                                         ; $7218: $9b
    ld c, h                                       ; $7219: $4c
    ld a, [c]                                     ; $721a: $f2
    jr nz, jr_008_726a                            ; $721b: $20 $4d

    ld a, [c]                                     ; $721d: $f2
    and h                                         ; $721e: $a4

jr_008_721f:
    ld c, l                                       ; $721f: $4d
    ld a, [c]                                     ; $7220: $f2
    ld a, [hl+]                                   ; $7221: $2a
    ld c, [hl]                                    ; $7222: $4e
    ld a, [c]                                     ; $7223: $f2
    and [hl]                                      ; $7224: $a6
    ld c, [hl]                                    ; $7225: $4e
    ld a, [c]                                     ; $7226: $f2
    inc bc                                        ; $7227: $03
    ld c, a                                       ; $7228: $4f
    ld a, [c]                                     ; $7229: $f2
    ld e, h                                       ; $722a: $5c
    ld c, a                                       ; $722b: $4f
    ld a, [c]                                     ; $722c: $f2
    pop de                                        ; $722d: $d1
    ld c, a                                       ; $722e: $4f
    ld a, [c]                                     ; $722f: $f2
    ld c, d                                       ; $7230: $4a
    ld d, b                                       ; $7231: $50
    ld a, [c]                                     ; $7232: $f2

jr_008_7233:
    ld h, d                                       ; $7233: $62
    ld d, b                                       ; $7234: $50
    ld a, [c]                                     ; $7235: $f2
    ld a, l                                       ; $7236: $7d
    ld d, b                                       ; $7237: $50
    ld a, [c]                                     ; $7238: $f2
    xor c                                         ; $7239: $a9
    ld d, b                                       ; $723a: $50
    ld a, [c]                                     ; $723b: $f2
    call c, $f250                                 ; $723c: $dc $50 $f2
    db $10                                        ; $723f: $10
    ld d, c                                       ; $7240: $51
    ld a, [c]                                     ; $7241: $f2
    ld c, b                                       ; $7242: $48
    ld d, c                                       ; $7243: $51
    ld a, [c]                                     ; $7244: $f2
    add d                                         ; $7245: $82
    ld d, c                                       ; $7246: $51
    ld a, [c]                                     ; $7247: $f2
    cp c                                          ; $7248: $b9
    ld d, c                                       ; $7249: $51
    ld a, [c]                                     ; $724a: $f2
    ld l, $52                                     ; $724b: $2e $52
    ld a, [c]                                     ; $724d: $f2
    and e                                         ; $724e: $a3
    ld d, d                                       ; $724f: $52
    ld a, [c]                                     ; $7250: $f2
    dec de                                        ; $7251: $1b
    ld d, e                                       ; $7252: $53
    ld a, [c]                                     ; $7253: $f2
    sub l                                         ; $7254: $95
    ld d, e                                       ; $7255: $53
    ld a, [c]                                     ; $7256: $f2
    ld a, [bc]                                    ; $7257: $0a
    ld d, h                                       ; $7258: $54
    ld a, [c]                                     ; $7259: $f2
    ld a, l                                       ; $725a: $7d
    ld d, h                                       ; $725b: $54
    ld a, [c]                                     ; $725c: $f2
    or $54                                        ; $725d: $f6 $54
    ld a, [c]                                     ; $725f: $f2
    ld a, e                                       ; $7260: $7b
    ld d, l                                       ; $7261: $55
    ld a, [c]                                     ; $7262: $f2
    ld [bc], a                                    ; $7263: $02
    ld d, [hl]                                    ; $7264: $56
    ld a, [c]                                     ; $7265: $f2
    sub h                                         ; $7266: $94
    ld d, [hl]                                    ; $7267: $56
    ld a, [c]                                     ; $7268: $f2
    ld [de], a                                    ; $7269: $12

jr_008_726a:
    ld d, a                                       ; $726a: $57
    ld a, [c]                                     ; $726b: $f2
    adc h                                         ; $726c: $8c
    ld d, a                                       ; $726d: $57
    ld a, [c]                                     ; $726e: $f2
    ld [de], a                                    ; $726f: $12
    ld e, b                                       ; $7270: $58
    ld a, [c]                                     ; $7271: $f2
    sub c                                         ; $7272: $91
    ld e, b                                       ; $7273: $58
    ld a, [c]                                     ; $7274: $f2
    rla                                           ; $7275: $17
    ld e, c                                       ; $7276: $59
    ld a, [c]                                     ; $7277: $f2
    adc h                                         ; $7278: $8c
    ld e, c                                       ; $7279: $59
    ld a, [c]                                     ; $727a: $f2
    ld l, d                                       ; $727b: $6a
    ld e, d                                       ; $727c: $5a
    ld a, [c]                                     ; $727d: $f2
    ld d, e                                       ; $727e: $53
    ld e, e                                       ; $727f: $5b
    ld a, [c]                                     ; $7280: $f2
    ld d, c                                       ; $7281: $51

Jump_008_7282:
    ld e, h                                       ; $7282: $5c
    ld a, [c]                                     ; $7283: $f2
    ld c, b                                       ; $7284: $48
    ld e, l                                       ; $7285: $5d
    ld a, [c]                                     ; $7286: $f2
    inc l                                         ; $7287: $2c
    ld e, [hl]                                    ; $7288: $5e
    ld a, [c]                                     ; $7289: $f2
    jr jr_008_72eb                                ; $728a: $18 $5f

    ld a, [c]                                     ; $728c: $f2
    ld a, [bc]                                    ; $728d: $0a
    ld h, b                                       ; $728e: $60
    ld a, [c]                                     ; $728f: $f2
    ld sp, hl                                     ; $7290: $f9
    ld h, b                                       ; $7291: $60
    ld a, [c]                                     ; $7292: $f2
    push hl                                       ; $7293: $e5
    ld h, c                                       ; $7294: $61
    ld a, [c]                                     ; $7295: $f2
    push de                                       ; $7296: $d5
    ld h, d                                       ; $7297: $62
    ld a, [c]                                     ; $7298: $f2
    or l                                          ; $7299: $b5
    ld h, e                                       ; $729a: $63
    ld a, [c]                                     ; $729b: $f2
    sub [hl]                                      ; $729c: $96
    ld h, h                                       ; $729d: $64
    ld a, [c]                                     ; $729e: $f2
    ld [hl], h                                    ; $729f: $74
    ld h, l                                       ; $72a0: $65
    ld a, [c]                                     ; $72a1: $f2
    ccf                                           ; $72a2: $3f
    ld h, [hl]                                    ; $72a3: $66
    ld a, [c]                                     ; $72a4: $f2
    ld [bc], a                                    ; $72a5: $02
    ld h, a                                       ; $72a6: $67
    ld a, [c]                                     ; $72a7: $f2
    push de                                       ; $72a8: $d5
    ld h, a                                       ; $72a9: $67
    ld a, [c]                                     ; $72aa: $f2
    call $f268                                    ; $72ab: $cd $68 $f2
    or d                                          ; $72ae: $b2
    ld l, c                                       ; $72af: $69
    ld a, [c]                                     ; $72b0: $f2
    and c                                         ; $72b1: $a1
    ld l, d                                       ; $72b2: $6a
    ld a, [c]                                     ; $72b3: $f2
    add a                                         ; $72b4: $87
    ld l, e                                       ; $72b5: $6b
    ld a, [c]                                     ; $72b6: $f2
    ld a, [hl]                                    ; $72b7: $7e
    ld l, h                                       ; $72b8: $6c
    ld a, [c]                                     ; $72b9: $f2
    ld [hl], e                                    ; $72ba: $73
    ld l, l                                       ; $72bb: $6d
    ld a, [c]                                     ; $72bc: $f2
    ld l, [hl]                                    ; $72bd: $6e
    ld l, [hl]                                    ; $72be: $6e
    ld a, [c]                                     ; $72bf: $f2
    ld c, b                                       ; $72c0: $48
    ld l, a                                       ; $72c1: $6f
    ld a, [c]                                     ; $72c2: $f2
    ld b, l                                       ; $72c3: $45
    ld [hl], b                                    ; $72c4: $70
    ld a, [c]                                     ; $72c5: $f2
    ld sp, $f271                                  ; $72c6: $31 $71 $f2
    ld bc, $f272                                  ; $72c9: $01 $72 $f2
    reti                                          ; $72cc: $d9


    ld [hl], d                                    ; $72cd: $72
    ld a, [c]                                     ; $72ce: $f2
    and d                                         ; $72cf: $a2
    ld [hl], e                                    ; $72d0: $73
    ld a, [c]                                     ; $72d1: $f2
    ld [hl], a                                    ; $72d2: $77
    ld [hl], h                                    ; $72d3: $74
    ld a, [c]                                     ; $72d4: $f2
    ld d, c                                       ; $72d5: $51
    ld [hl], l                                    ; $72d6: $75
    ld a, [c]                                     ; $72d7: $f2
    ld b, c                                       ; $72d8: $41
    halt                                          ; $72d9: $76
    ld a, [c]                                     ; $72da: $f2
    push de                                       ; $72db: $d5
    halt                                          ; $72dc: $76
    ld a, [c]                                     ; $72dd: $f2
    ld l, b                                       ; $72de: $68
    ld [hl], a                                    ; $72df: $77
    ld a, [c]                                     ; $72e0: $f2
    ei                                            ; $72e1: $fb
    ld [hl], a                                    ; $72e2: $77
    ld a, [c]                                     ; $72e3: $f2
    adc [hl]                                      ; $72e4: $8e
    ld a, b                                       ; $72e5: $78
    ld a, [c]                                     ; $72e6: $f2
    ld hl, $f279                                  ; $72e7: $21 $79 $f2
    or l                                          ; $72ea: $b5

jr_008_72eb:
    ld a, c                                       ; $72eb: $79
    ld a, [c]                                     ; $72ec: $f2
    ld c, b                                       ; $72ed: $48
    ld a, d                                       ; $72ee: $7a
    ld a, [c]                                     ; $72ef: $f2
    db $eb                                        ; $72f0: $eb
    ld a, d                                       ; $72f1: $7a
    ld a, [c]                                     ; $72f2: $f2
    and b                                         ; $72f3: $a0
    ld a, e                                       ; $72f4: $7b
    ld a, [c]                                     ; $72f5: $f2
    dec sp                                        ; $72f6: $3b
    ld a, h                                       ; $72f7: $7c
    ld a, [c]                                     ; $72f8: $f2
    call nz, $f27c                                ; $72f9: $c4 $7c $f2
    ld b, l                                       ; $72fc: $45
    ld a, l                                       ; $72fd: $7d
    ld a, [c]                                     ; $72fe: $f2
    db $dd                                        ; $72ff: $dd
    ld a, l                                       ; $7300: $7d
    ld a, [c]                                     ; $7301: $f2
    ld a, [hl]                                    ; $7302: $7e
    ld a, [hl]                                    ; $7303: $7e
    ld a, [c]                                     ; $7304: $f2

Jump_008_7305:
    ld h, $7f                                     ; $7305: $26 $7f
    di                                            ; $7307: $f3
    ld bc, $f340                                  ; $7308: $01 $40 $f3
    sub c                                         ; $730b: $91
    ld b, b                                       ; $730c: $40
    di                                            ; $730d: $f3
    dec h                                         ; $730e: $25
    ld b, c                                       ; $730f: $41
    di                                            ; $7310: $f3
    ld a, [hl+]                                   ; $7311: $2a
    ld b, d                                       ; $7312: $42
    di                                            ; $7313: $f3
    dec hl                                        ; $7314: $2b
    ld b, e                                       ; $7315: $43
    di                                            ; $7316: $f3
    ld l, $44                                     ; $7317: $2e $44
    di                                            ; $7319: $f3
    inc [hl]                                      ; $731a: $34
    ld b, l                                       ; $731b: $45
    di                                            ; $731c: $f3
    jr nc, jr_008_7365                            ; $731d: $30 $46

    di                                            ; $731f: $f3
    dec hl                                        ; $7320: $2b
    ld b, a                                       ; $7321: $47
    di                                            ; $7322: $f3
    ld d, $48                                     ; $7323: $16 $48
    di                                            ; $7325: $f3
    db $fd                                        ; $7326: $fd
    ld c, b                                       ; $7327: $48
    di                                            ; $7328: $f3
    ld a, [$f349]                                 ; $7329: $fa $49 $f3
    push af                                       ; $732c: $f5
    ld c, d                                       ; $732d: $4a
    di                                            ; $732e: $f3
    ld [$f34b], a                                 ; $732f: $ea $4b $f3
    db $e4                                        ; $7332: $e4
    ld c, h                                       ; $7333: $4c
    di                                            ; $7334: $f3
    db $db                                        ; $7335: $db
    ld c, l                                       ; $7336: $4d
    di                                            ; $7337: $f3
    ldh [$4e], a                                  ; $7338: $e0 $4e
    di                                            ; $733a: $f3
    call nz, $f34f                                ; $733b: $c4 $4f $f3
    and c                                         ; $733e: $a1
    ld d, b                                       ; $733f: $50
    ld a, [c]                                     ; $7340: $f2
    ret nc                                        ; $7341: $d0

    ld a, a                                       ; $7342: $7f
    di                                            ; $7343: $f3
    sub d                                         ; $7344: $92
    ld d, c                                       ; $7345: $51
    di                                            ; $7346: $f3
    xor l                                         ; $7347: $ad
    ld d, c                                       ; $7348: $51
    di                                            ; $7349: $f3
    jp nc, $f351                                  ; $734a: $d2 $51 $f3

    db $fd                                        ; $734d: $fd
    ld d, c                                       ; $734e: $51
    di                                            ; $734f: $f3
    inc l                                         ; $7350: $2c
    ld d, d                                       ; $7351: $52
    di                                            ; $7352: $f3
    ld d, e                                       ; $7353: $53
    ld d, d                                       ; $7354: $52
    di                                            ; $7355: $f3
    ld [hl], b                                    ; $7356: $70
    ld d, d                                       ; $7357: $52
    di                                            ; $7358: $f3
    ld d, d                                       ; $7359: $52
    ld d, e                                       ; $735a: $53
    di                                            ; $735b: $f3
    inc sp                                        ; $735c: $33
    ld d, h                                       ; $735d: $54
    di                                            ; $735e: $f3
    add hl, de                                    ; $735f: $19
    ld d, l                                       ; $7360: $55
    di                                            ; $7361: $f3
    ei                                            ; $7362: $fb
    ld d, l                                       ; $7363: $55
    di                                            ; $7364: $f3

jr_008_7365:
    db $db                                        ; $7365: $db
    ld d, [hl]                                    ; $7366: $56
    di                                            ; $7367: $f3
    ret nz                                        ; $7368: $c0

    ld d, a                                       ; $7369: $57
    di                                            ; $736a: $f3
    adc l                                         ; $736b: $8d
    ld e, b                                       ; $736c: $58
    di                                            ; $736d: $f3
    ld d, b                                       ; $736e: $50
    ld e, c                                       ; $736f: $59
    di                                            ; $7370: $f3
    inc d                                         ; $7371: $14
    ld e, d                                       ; $7372: $5a
    di                                            ; $7373: $f3
    db $ec                                        ; $7374: $ec
    ld e, d                                       ; $7375: $5a
    di                                            ; $7376: $f3
    cp [hl]                                       ; $7377: $be
    ld e, e                                       ; $7378: $5b
    di                                            ; $7379: $f3
    sub h                                         ; $737a: $94
    ld e, h                                       ; $737b: $5c
    di                                            ; $737c: $f3
    ld e, a                                       ; $737d: $5f
    ld e, l                                       ; $737e: $5d
    di                                            ; $737f: $f3
    ld h, $5e                                     ; $7380: $26 $5e
    di                                            ; $7382: $f3
    xor $5e                                       ; $7383: $ee $5e
    di                                            ; $7385: $f3
    pop de                                        ; $7386: $d1
    ld e, a                                       ; $7387: $5f
    di                                            ; $7388: $f3
    ld a, [hl-]                                   ; $7389: $3a
    ld h, b                                       ; $738a: $60

Jump_008_738b:
    di                                            ; $738b: $f3
    xor h                                         ; $738c: $ac
    ld h, b                                       ; $738d: $60
    di                                            ; $738e: $f3
    inc d                                         ; $738f: $14
    ld h, c                                       ; $7390: $61
    di                                            ; $7391: $f3
    ld a, [hl]                                    ; $7392: $7e
    ld h, c                                       ; $7393: $61
    di                                            ; $7394: $f3
    xor $61                                       ; $7395: $ee $61
    di                                            ; $7397: $f3
    ld d, b                                       ; $7398: $50
    ld h, d                                       ; $7399: $62
    di                                            ; $739a: $f3
    or [hl]                                       ; $739b: $b6
    ld h, d                                       ; $739c: $62
    di                                            ; $739d: $f3
    jr jr_008_7403                                ; $739e: $18 $63

    di                                            ; $73a0: $f3
    ld a, d                                       ; $73a1: $7a
    ld h, e                                       ; $73a2: $63
    di                                            ; $73a3: $f3
    pop hl                                        ; $73a4: $e1
    ld h, e                                       ; $73a5: $63
    di                                            ; $73a6: $f3
    ld b, l                                       ; $73a7: $45
    ld h, h                                       ; $73a8: $64
    di                                            ; $73a9: $f3
    xor [hl]                                      ; $73aa: $ae
    ld h, h                                       ; $73ab: $64
    di                                            ; $73ac: $f3
    rla                                           ; $73ad: $17
    ld h, l                                       ; $73ae: $65
    di                                            ; $73af: $f3
    ld [hl], a                                    ; $73b0: $77
    ld h, l                                       ; $73b1: $65
    di                                            ; $73b2: $f3
    db $d2                                        ; $73b3: $d2
    ld h, l                                       ; $73b4: $65

    db $f2, $e7, $7f, $f3, $3b, $66, $f3, $4f, $66, $f3, $6d, $66, $f3, $8b, $66, $f3
    db $af, $66, $f3, $da, $66, $f3, $0d, $67, $f3, $3c, $67, $f3, $56, $67, $f3, $ae
    db $67, $f3, $22, $68, $f3, $9b, $68

    di                                            ; $73dc: $f3
    inc de                                        ; $73dd: $13
    ld l, c                                       ; $73de: $69
    di                                            ; $73df: $f3
    ld h, $69                                     ; $73e0: $26 $69
    di                                            ; $73e2: $f3
    ld a, [hl-]                                   ; $73e3: $3a
    ld l, c                                       ; $73e4: $69
    di                                            ; $73e5: $f3
    ld d, d                                       ; $73e6: $52
    ld l, c                                       ; $73e7: $69
    di                                            ; $73e8: $f3
    halt                                          ; $73e9: $76
    ld l, c                                       ; $73ea: $69
    di                                            ; $73eb: $f3
    and b                                         ; $73ec: $a0
    ld l, c                                       ; $73ed: $69
    di                                            ; $73ee: $f3
    bit 5, c                                      ; $73ef: $cb $69
    di                                            ; $73f1: $f3
    cp $69                                        ; $73f2: $fe $69
    di                                            ; $73f4: $f3
    ld [hl-], a                                   ; $73f5: $32
    ld l, d                                       ; $73f6: $6a
    di                                            ; $73f7: $f3
    ld e, b                                       ; $73f8: $58
    ld l, d                                       ; $73f9: $6a
    di                                            ; $73fa: $f3
    sub h                                         ; $73fb: $94
    ld l, d                                       ; $73fc: $6a
    di                                            ; $73fd: $f3
    db $ed                                        ; $73fe: $ed
    ld l, d                                       ; $73ff: $6a
    di                                            ; $7400: $f3
    ld b, l                                       ; $7401: $45
    ld l, e                                       ; $7402: $6b

jr_008_7403:
    di                                            ; $7403: $f3
    ld l, c                                       ; $7404: $69
    ld l, e                                       ; $7405: $6b
    di                                            ; $7406: $f3
    ld a, h                                       ; $7407: $7c
    ld l, e                                       ; $7408: $6b
    di                                            ; $7409: $f3
    sub b                                         ; $740a: $90
    ld l, e                                       ; $740b: $6b
    di                                            ; $740c: $f3

Jump_008_740d:
    xor b                                         ; $740d: $a8
    ld l, e                                       ; $740e: $6b
    di                                            ; $740f: $f3
    jp nz, $f36b                                  ; $7410: $c2 $6b $f3

    sbc $6b                                       ; $7413: $de $6b
    di                                            ; $7415: $f3
    ld [bc], a                                    ; $7416: $02
    ld l, h                                       ; $7417: $6c
    di                                            ; $7418: $f3
    inc l                                         ; $7419: $2c
    ld l, h                                       ; $741a: $6c
    di                                            ; $741b: $f3
    ld e, b                                       ; $741c: $58
    ld l, h                                       ; $741d: $6c
    di                                            ; $741e: $f3
    adc b                                         ; $741f: $88
    ld l, h                                       ; $7420: $6c
    di                                            ; $7421: $f3
    or l                                          ; $7422: $b5
    ld l, h                                       ; $7423: $6c
    di                                            ; $7424: $f3
    xor $6c                                       ; $7425: $ee $6c
    di                                            ; $7427: $f3
    ld b, b                                       ; $7428: $40
    ld l, l                                       ; $7429: $6d
    di                                            ; $742a: $f3
    sbc d                                         ; $742b: $9a
    ld l, l                                       ; $742c: $6d
    di                                            ; $742d: $f3
    rst $38                                       ; $742e: $ff
    ld l, l                                       ; $742f: $6d
    di                                            ; $7430: $f3
    scf                                           ; $7431: $37
    ld l, [hl]                                    ; $7432: $6e
    di                                            ; $7433: $f3
    ld e, b                                       ; $7434: $58
    ld l, [hl]                                    ; $7435: $6e
    di                                            ; $7436: $f3
    add a                                         ; $7437: $87
    ld l, [hl]                                    ; $7438: $6e
    di                                            ; $7439: $f3
    cp c                                          ; $743a: $b9
    ld l, [hl]                                    ; $743b: $6e
    di                                            ; $743c: $f3
    db $f4                                        ; $743d: $f4
    ld l, [hl]                                    ; $743e: $6e
    di                                            ; $743f: $f3
    jr nc, jr_008_74b1                            ; $7440: $30 $6f

    di                                            ; $7442: $f3
    ld l, l                                       ; $7443: $6d
    ld l, a                                       ; $7444: $6f
    di                                            ; $7445: $f3
    or h                                          ; $7446: $b4
    ld l, a                                       ; $7447: $6f
    di                                            ; $7448: $f3
    ldh a, [$6f]                                  ; $7449: $f0 $6f
    di                                            ; $744b: $f3
    ld de, $f370                                  ; $744c: $11 $70 $f3
    inc hl                                        ; $744f: $23
    ld [hl], b                                    ; $7450: $70
    di                                            ; $7451: $f3
    ld b, [hl]                                    ; $7452: $46
    ld [hl], b                                    ; $7453: $70
    di                                            ; $7454: $f3
    ld a, b                                       ; $7455: $78
    ld [hl], b                                    ; $7456: $70
    di                                            ; $7457: $f3
    or b                                          ; $7458: $b0
    ld [hl], b                                    ; $7459: $70
    di                                            ; $745a: $f3
    jp nc, $f370                                  ; $745b: $d2 $70 $f3

    ldh a, [rSVBK]                                ; $745e: $f0 $70
    di                                            ; $7460: $f3
    ld b, c                                       ; $7461: $41
    ld [hl], c                                    ; $7462: $71
    di                                            ; $7463: $f3
    jp nc, $f371                                  ; $7464: $d2 $71 $f3

    ld l, [hl]                                    ; $7467: $6e
    ld [hl], d                                    ; $7468: $72
    di                                            ; $7469: $f3
    db $ed                                        ; $746a: $ed
    ld [hl], d                                    ; $746b: $72
    di                                            ; $746c: $f3
    nop                                           ; $746d: $00
    ld [hl], e                                    ; $746e: $73
    di                                            ; $746f: $f3
    jr jr_008_74e5                                ; $7470: $18 $73

    di                                            ; $7472: $f3
    add hl, sp                                    ; $7473: $39
    ld [hl], e                                    ; $7474: $73
    di                                            ; $7475: $f3
    ld a, e                                       ; $7476: $7b
    ld [hl], e                                    ; $7477: $73
    di                                            ; $7478: $f3
    call nz, $f373                                ; $7479: $c4 $73 $f3
    rst $38                                       ; $747c: $ff
    ld [hl], e                                    ; $747d: $73
    di                                            ; $747e: $f3
    ld a, $74                                     ; $747f: $3e $74
    di                                            ; $7481: $f3
    ld [hl], e                                    ; $7482: $73
    ld [hl], h                                    ; $7483: $74
    di                                            ; $7484: $f3
    adc a                                         ; $7485: $8f
    ld [hl], h                                    ; $7486: $74
    di                                            ; $7487: $f3
    call nz, $f374                                ; $7488: $c4 $74 $f3
    dec hl                                        ; $748b: $2b
    ld [hl], l                                    ; $748c: $75
    di                                            ; $748d: $f3
    cp c                                          ; $748e: $b9
    ld [hl], l                                    ; $748f: $75

Jump_008_7490:
    di                                            ; $7490: $f3
    ld b, [hl]                                    ; $7491: $46
    halt                                          ; $7492: $76
    di                                            ; $7493: $f3
    call nc, $f376                                ; $7494: $d4 $76 $f3
    ld h, c                                       ; $7497: $61
    ld [hl], a                                    ; $7498: $77
    di                                            ; $7499: $f3
    nop                                           ; $749a: $00
    ld a, b                                       ; $749b: $78
    di                                            ; $749c: $f3
    ld [hl], e                                    ; $749d: $73
    ld a, b                                       ; $749e: $78
    di                                            ; $749f: $f3
    and d                                         ; $74a0: $a2
    ld a, b                                       ; $74a1: $78
    di                                            ; $74a2: $f3
    or l                                          ; $74a3: $b5
    ld a, b                                       ; $74a4: $78
    di                                            ; $74a5: $f3
    rst $00                                       ; $74a6: $c7
    ld a, b                                       ; $74a7: $78
    di                                            ; $74a8: $f3
    rst $20                                       ; $74a9: $e7
    ld a, b                                       ; $74aa: $78
    di                                            ; $74ab: $f3
    dec h                                         ; $74ac: $25
    ld a, c                                       ; $74ad: $79
    di                                            ; $74ae: $f3
    ld l, l                                       ; $74af: $6d
    ld a, c                                       ; $74b0: $79

jr_008_74b1:
    di                                            ; $74b1: $f3
    xor c                                         ; $74b2: $a9
    ld a, c                                       ; $74b3: $79
    di                                            ; $74b4: $f3
    xor $79                                       ; $74b5: $ee $79
    di                                            ; $74b7: $f3
    ld a, [hl+]                                   ; $74b8: $2a
    ld a, d                                       ; $74b9: $7a
    di                                            ; $74ba: $f3
    ld e, b                                       ; $74bb: $58
    ld a, d                                       ; $74bc: $7a
    di                                            ; $74bd: $f3
    adc b                                         ; $74be: $88
    ld a, d                                       ; $74bf: $7a
    di                                            ; $74c0: $f3
    cp b                                          ; $74c1: $b8
    ld a, d                                       ; $74c2: $7a
    di                                            ; $74c3: $f3
    ld e, $7b                                     ; $74c4: $1e $7b
    di                                            ; $74c6: $f3
    ld a, e                                       ; $74c7: $7b
    ld a, e                                       ; $74c8: $7b
    di                                            ; $74c9: $f3
    call nc, $f37b                                ; $74ca: $d4 $7b $f3
    ld [de], a                                    ; $74cd: $12
    ld a, h                                       ; $74ce: $7c
    di                                            ; $74cf: $f3
    ld b, h                                       ; $74d0: $44
    ld a, h                                       ; $74d1: $7c
    di                                            ; $74d2: $f3
    ld e, [hl]                                    ; $74d3: $5e
    ld a, h                                       ; $74d4: $7c
    di                                            ; $74d5: $f3
    ld [hl], c                                    ; $74d6: $71
    ld a, l                                       ; $74d7: $7d
    di                                            ; $74d8: $f3
    add c                                         ; $74d9: $81
    ld a, [hl]                                    ; $74da: $7e
    db $f4                                        ; $74db: $f4
    ld bc, $f340                                  ; $74dc: $01 $40 $f3
    sub c                                         ; $74df: $91
    ld a, a                                       ; $74e0: $7f
    di                                            ; $74e1: $f3
    and e                                         ; $74e2: $a3
    ld a, a                                       ; $74e3: $7f
    di                                            ; $74e4: $f3

jr_008_74e5:
    or a                                          ; $74e5: $b7
    ld a, a                                       ; $74e6: $7f
    di                                            ; $74e7: $f3
    db $d3                                        ; $74e8: $d3
    ld a, a                                       ; $74e9: $7f
    db $f4                                        ; $74ea: $f4
    inc d                                         ; $74eb: $14
    ld b, c                                       ; $74ec: $41
    db $f4                                        ; $74ed: $f4
    scf                                           ; $74ee: $37
    ld b, c                                       ; $74ef: $41
    db $f4                                        ; $74f0: $f4
    ld e, a                                       ; $74f1: $5f
    ld b, c                                       ; $74f2: $41
    db $f4                                        ; $74f3: $f4
    adc l                                         ; $74f4: $8d
    ld b, c                                       ; $74f5: $41

Jump_008_74f6:
    db $f4                                        ; $74f6: $f4
    cp e                                          ; $74f7: $bb
    ld b, c                                       ; $74f8: $41
    db $f4                                        ; $74f9: $f4
    reti                                          ; $74fa: $d9


    ld b, c                                       ; $74fb: $41
    db $f4                                        ; $74fc: $f4
    rst $38                                       ; $74fd: $ff
    ld b, c                                       ; $74fe: $41
    db $f4                                        ; $74ff: $f4
    scf                                           ; $7500: $37
    ld b, d                                       ; $7501: $42
    db $f4                                        ; $7502: $f4
    add b                                         ; $7503: $80
    ld b, d                                       ; $7504: $42
    db $f4                                        ; $7505: $f4
    call z, $f442                                 ; $7506: $cc $42 $f4
    add hl, de                                    ; $7509: $19
    ld b, e                                       ; $750a: $43
    db $f4                                        ; $750b: $f4
    ld sp, $f443                                  ; $750c: $31 $43 $f4
    ld c, a                                       ; $750f: $4f
    ld b, e                                       ; $7510: $43
    db $f4                                        ; $7511: $f4
    ld l, h                                       ; $7512: $6c
    ld b, e                                       ; $7513: $43
    db $f4                                        ; $7514: $f4
    adc c                                         ; $7515: $89
    ld b, e                                       ; $7516: $43
    db $f4                                        ; $7517: $f4
    and l                                         ; $7518: $a5
    ld b, e                                       ; $7519: $43
    db $f4                                        ; $751a: $f4
    jp $f443                                      ; $751b: $c3 $43 $f4


    db $e3                                        ; $751e: $e3
    ld b, e                                       ; $751f: $43
    db $f4                                        ; $7520: $f4
    ld bc, $f444                                  ; $7521: $01 $44 $f4
    ld hl, $f444                                  ; $7524: $21 $44 $f4
    ld a, $44                                     ; $7527: $3e $44
    db $f4                                        ; $7529: $f4
    add e                                         ; $752a: $83
    ld b, h                                       ; $752b: $44
    db $f4                                        ; $752c: $f4
    inc b                                         ; $752d: $04
    ld b, l                                       ; $752e: $45
    db $f4                                        ; $752f: $f4
    db $e3                                        ; $7530: $e3
    ld b, l                                       ; $7531: $45
    db $f4                                        ; $7532: $f4
    cp h                                          ; $7533: $bc
    ld b, [hl]                                    ; $7534: $46
    db $f4                                        ; $7535: $f4
    and b                                         ; $7536: $a0
    ld b, a                                       ; $7537: $47
    db $f4                                        ; $7538: $f4
    add a                                         ; $7539: $87
    ld c, b                                       ; $753a: $48
    db $f4                                        ; $753b: $f4
    ld l, [hl]                                    ; $753c: $6e
    ld c, c                                       ; $753d: $49
    db $f4                                        ; $753e: $f4
    ld c, b                                       ; $753f: $48
    ld c, d                                       ; $7540: $4a
    db $f4                                        ; $7541: $f4
    ld e, d                                       ; $7542: $5a
    ld c, d                                       ; $7543: $4a
    db $f4                                        ; $7544: $f4
    ld l, h                                       ; $7545: $6c
    ld c, d                                       ; $7546: $4a
    db $f4                                        ; $7547: $f4
    add d                                         ; $7548: $82
    ld c, d                                       ; $7549: $4a
    db $f4                                        ; $754a: $f4
    and a                                         ; $754b: $a7
    ld c, d                                       ; $754c: $4a
    db $f4                                        ; $754d: $f4
    ret nc                                        ; $754e: $d0

    ld c, d                                       ; $754f: $4a
    db $f4                                        ; $7550: $f4
    cp $4a                                        ; $7551: $fe $4a
    db $f4                                        ; $7553: $f4
    inc l                                         ; $7554: $2c
    ld c, e                                       ; $7555: $4b
    db $f4                                        ; $7556: $f4
    ld e, d                                       ; $7557: $5a
    ld c, e                                       ; $7558: $4b
    db $f4                                        ; $7559: $f4
    ld a, h                                       ; $755a: $7c
    ld c, e                                       ; $755b: $4b

Jump_008_755c:
    db $f4                                        ; $755c: $f4
    daa                                           ; $755d: $27
    ld c, l                                       ; $755e: $4d
    db $f4                                        ; $755f: $f4
    ld [$f44e], a                                 ; $7560: $ea $4e $f4
    sbc d                                         ; $7563: $9a
    ld d, b                                       ; $7564: $50
    db $f4                                        ; $7565: $f4
    ld d, c                                       ; $7566: $51
    ld d, d                                       ; $7567: $52
    db $f4                                        ; $7568: $f4
    dec b                                         ; $7569: $05
    ld d, h                                       ; $756a: $54
    db $f4                                        ; $756b: $f4
    xor l                                         ; $756c: $ad
    ld d, l                                       ; $756d: $55
    db $f4                                        ; $756e: $f4
    ld e, h                                       ; $756f: $5c
    ld d, a                                       ; $7570: $57
    db $f4                                        ; $7571: $f4
    ld a, [c]                                     ; $7572: $f2
    ld e, b                                       ; $7573: $58
    db $f4                                        ; $7574: $f4
    and [hl]                                      ; $7575: $a6
    ld e, d                                       ; $7576: $5a
    db $f4                                        ; $7577: $f4
    ld c, l                                       ; $7578: $4d
    ld e, h                                       ; $7579: $5c
    db $f4                                        ; $757a: $f4
    jp hl                                         ; $757b: $e9


    ld e, l                                       ; $757c: $5d
    db $f4                                        ; $757d: $f4
    ld a, e                                       ; $757e: $7b
    ld e, a                                       ; $757f: $5f
    db $f4                                        ; $7580: $f4
    dec sp                                        ; $7581: $3b
    ld h, c                                       ; $7582: $61
    db $f4                                        ; $7583: $f4
    db $dd                                        ; $7584: $dd
    ld h, d                                       ; $7585: $62
    db $f4                                        ; $7586: $f4
    ld [hl], c                                    ; $7587: $71
    ld h, h                                       ; $7588: $64
    db $f4                                        ; $7589: $f4
    rst $28                                       ; $758a: $ef
    ld h, l                                       ; $758b: $65
    db $f4                                        ; $758c: $f4
    xor b                                         ; $758d: $a8
    ld h, a                                       ; $758e: $67
    db $f4                                        ; $758f: $f4
    rra                                           ; $7590: $1f
    ld l, c                                       ; $7591: $69
    db $f4                                        ; $7592: $f4
    ld [hl], $69                                  ; $7593: $36 $69
    db $f4                                        ; $7595: $f4
    ld d, l                                       ; $7596: $55
    ld l, c                                       ; $7597: $69
    db $f4                                        ; $7598: $f4
    sub b                                         ; $7599: $90
    ld l, c                                       ; $759a: $69
    db $f4                                        ; $759b: $f4
    db $d3                                        ; $759c: $d3
    ld l, c                                       ; $759d: $69
    db $f4                                        ; $759e: $f4
    db $10                                        ; $759f: $10
    ld l, d                                       ; $75a0: $6a
    db $f4                                        ; $75a1: $f4
    ld c, l                                       ; $75a2: $4d
    ld l, d                                       ; $75a3: $6a
    db $f4                                        ; $75a4: $f4
    ld h, b                                       ; $75a5: $60
    ld l, d                                       ; $75a6: $6a
    db $f4                                        ; $75a7: $f4
    add d                                         ; $75a8: $82
    ld l, d                                       ; $75a9: $6a
    db $f4                                        ; $75aa: $f4
    pop bc                                        ; $75ab: $c1
    ld l, d                                       ; $75ac: $6a
    db $f4                                        ; $75ad: $f4
    add hl, bc                                    ; $75ae: $09

Call_008_75af:
    ld l, e                                       ; $75af: $6b
    db $f4                                        ; $75b0: $f4
    ld h, l                                       ; $75b1: $65
    ld l, e                                       ; $75b2: $6b
    db $f4                                        ; $75b3: $f4
    sub e                                         ; $75b4: $93
    ld l, e                                       ; $75b5: $6b
    db $f4                                        ; $75b6: $f4
    jp z, $f46b                                   ; $75b7: $ca $6b $f4

    call c, $f46b                                 ; $75ba: $dc $6b $f4

Jump_008_75bd:
    ld a, [c]                                     ; $75bd: $f2
    ld l, e                                       ; $75be: $6b
    db $f4                                        ; $75bf: $f4
    ld [$f46c], sp                                ; $75c0: $08 $6c $f4
    jr nc, jr_008_7631                            ; $75c3: $30 $6c

    db $f4                                        ; $75c5: $f4
    ld d, [hl]                                    ; $75c6: $56
    ld l, h                                       ; $75c7: $6c
    db $f4                                        ; $75c8: $f4
    ld a, [hl]                                    ; $75c9: $7e
    ld l, h                                       ; $75ca: $6c
    db $f4                                        ; $75cb: $f4
    and h                                         ; $75cc: $a4
    ld l, h                                       ; $75cd: $6c
    db $f4                                        ; $75ce: $f4
    jp z, $f46c                                   ; $75cf: $ca $6c $f4

    ld a, [c]                                     ; $75d2: $f2
    ld l, h                                       ; $75d3: $6c
    db $f4                                        ; $75d4: $f4
    ld a, [de]                                    ; $75d5: $1a
    ld l, l                                       ; $75d6: $6d
    db $f4                                        ; $75d7: $f4
    ld e, [hl]                                    ; $75d8: $5e
    ld l, l                                       ; $75d9: $6d
    db $f4                                        ; $75da: $f4
    add [hl]                                      ; $75db: $86
    ld l, l                                       ; $75dc: $6d
    db $f4                                        ; $75dd: $f4
    add $6d                                       ; $75de: $c6 $6d
    db $f4                                        ; $75e0: $f4
    inc l                                         ; $75e1: $2c
    ld l, [hl]                                    ; $75e2: $6e
    db $f4                                        ; $75e3: $f4
    and e                                         ; $75e4: $a3
    ld l, [hl]                                    ; $75e5: $6e
    db $f4                                        ; $75e6: $f4
    cp $6e                                        ; $75e7: $fe $6e
    db $f4                                        ; $75e9: $f4
    ld b, l                                       ; $75ea: $45
    ld l, a                                       ; $75eb: $6f
    db $f4                                        ; $75ec: $f4
    ld l, b                                       ; $75ed: $68
    ld l, a                                       ; $75ee: $6f
    db $f4                                        ; $75ef: $f4
    ld a, d                                       ; $75f0: $7a
    ld l, a                                       ; $75f1: $6f
    db $f4                                        ; $75f2: $f4
    sbc d                                         ; $75f3: $9a
    ld l, a                                       ; $75f4: $6f
    db $f4                                        ; $75f5: $f4
    call $f46f                                    ; $75f6: $cd $6f $f4
    rlca                                          ; $75f9: $07
    ld [hl], b                                    ; $75fa: $70
    db $f4                                        ; $75fb: $f4
    ld [hl-], a                                   ; $75fc: $32
    ld [hl], b                                    ; $75fd: $70
    db $f4                                        ; $75fe: $f4
    ld e, l                                       ; $75ff: $5d
    ld [hl], b                                    ; $7600: $70
    db $f4                                        ; $7601: $f4
    add d                                         ; $7602: $82
    ld [hl], b                                    ; $7603: $70
    db $f4                                        ; $7604: $f4
    call nz, $f470                                ; $7605: $c4 $70 $f4
    ld c, $71                                     ; $7608: $0e $71
    db $f4                                        ; $760a: $f4
    ld a, c                                       ; $760b: $79
    ld [hl], c                                    ; $760c: $71
    db $f4                                        ; $760d: $f4
    rst $20                                       ; $760e: $e7
    ld [hl], c                                    ; $760f: $71
    db $f4                                        ; $7610: $f4
    ld c, l                                       ; $7611: $4d
    ld [hl], d                                    ; $7612: $72
    db $f4                                        ; $7613: $f4
    ld h, b                                       ; $7614: $60
    ld [hl], d                                    ; $7615: $72
    db $f4                                        ; $7616: $f4
    adc d                                         ; $7617: $8a
    ld [hl], d                                    ; $7618: $72
    db $f4                                        ; $7619: $f4
    rst $00                                       ; $761a: $c7
    ld [hl], d                                    ; $761b: $72
    db $f4                                        ; $761c: $f4
    ld sp, hl                                     ; $761d: $f9

Jump_008_761e:
    ld [hl], d                                    ; $761e: $72
    db $f4                                        ; $761f: $f4
    jr jr_008_7695                                ; $7620: $18 $73

    db $f4                                        ; $7622: $f4
    ld l, h                                       ; $7623: $6c
    ld [hl], e                                    ; $7624: $73
    db $f4                                        ; $7625: $f4
    call nz, $f473                                ; $7626: $c4 $73 $f4
    ld de, $f474                                  ; $7629: $11 $74 $f4
    ld h, h                                       ; $762c: $64
    ld [hl], h                                    ; $762d: $74
    db $f4                                        ; $762e: $f4
    xor l                                         ; $762f: $ad
    ld [hl], h                                    ; $7630: $74

jr_008_7631:
    db $f4                                        ; $7631: $f4
    db $ed                                        ; $7632: $ed
    ld [hl], h                                    ; $7633: $74
    db $f4                                        ; $7634: $f4
    scf                                           ; $7635: $37
    ld [hl], l                                    ; $7636: $75
    db $f4                                        ; $7637: $f4
    add l                                         ; $7638: $85
    ld [hl], l                                    ; $7639: $75
    db $f4                                        ; $763a: $f4
    pop hl                                        ; $763b: $e1
    ld [hl], l                                    ; $763c: $75
    db $f4                                        ; $763d: $f4
    db $f4                                        ; $763e: $f4
    ld [hl], l                                    ; $763f: $75
    db $f4                                        ; $7640: $f4
    add hl, bc                                    ; $7641: $09
    halt                                          ; $7642: $76
    db $f4                                        ; $7643: $f4
    ld [hl+], a                                   ; $7644: $22
    halt                                          ; $7645: $76

Call_008_7646:
    db $f4                                        ; $7646: $f4
    ld d, l                                       ; $7647: $55
    halt                                          ; $7648: $76
    db $f4                                        ; $7649: $f4
    ld [hl], d                                    ; $764a: $72
    halt                                          ; $764b: $76
    db $f4                                        ; $764c: $f4
    sub c                                         ; $764d: $91
    halt                                          ; $764e: $76
    db $f4                                        ; $764f: $f4
    xor d                                         ; $7650: $aa
    halt                                          ; $7651: $76
    db $f4                                        ; $7652: $f4
    pop de                                        ; $7653: $d1
    halt                                          ; $7654: $76
    db $f4                                        ; $7655: $f4
    push hl                                       ; $7656: $e5
    halt                                          ; $7657: $76
    db $f4                                        ; $7658: $f4
    ld bc, $f477                                  ; $7659: $01 $77 $f4
    ld hl, $f477                                  ; $765c: $21 $77 $f4
    ld b, c                                       ; $765f: $41
    ld [hl], a                                    ; $7660: $77
    db $f4                                        ; $7661: $f4
    ld h, c                                       ; $7662: $61
    ld [hl], a                                    ; $7663: $77
    db $f4                                        ; $7664: $f4
    ld [hl], a                                    ; $7665: $77
    ld [hl], a                                    ; $7666: $77
    db $f4                                        ; $7667: $f4
    ret                                           ; $7668: $c9


    ld [hl], a                                    ; $7669: $77
    db $f4                                        ; $766a: $f4
    ld h, d                                       ; $766b: $62
    ld a, b                                       ; $766c: $78
    db $f4                                        ; $766d: $f4
    ld a, [bc]                                    ; $766e: $0a
    ld a, c                                       ; $766f: $79
    db $f4                                        ; $7670: $f4
    sbc e                                         ; $7671: $9b
    ld a, c                                       ; $7672: $79
    db $f4                                        ; $7673: $f4
    ld [de], a                                    ; $7674: $12
    ld a, d                                       ; $7675: $7a
    db $f4                                        ; $7676: $f4
    ld [hl], h                                    ; $7677: $74
    ld a, d                                       ; $7678: $7a
    db $f4                                        ; $7679: $f4
    add [hl]                                      ; $767a: $86
    ld a, d                                       ; $767b: $7a
    db $f4                                        ; $767c: $f4
    sbc b                                         ; $767d: $98
    ld a, d                                       ; $767e: $7a
    db $f4                                        ; $767f: $f4
    cp l                                          ; $7680: $bd
    ld a, d                                       ; $7681: $7a
    db $f4                                        ; $7682: $f4
    pop hl                                        ; $7683: $e1
    ld a, d                                       ; $7684: $7a
    db $f4                                        ; $7685: $f4
    db $10                                        ; $7686: $10
    ld a, e                                       ; $7687: $7b
    db $f4                                        ; $7688: $f4

Jump_008_7689:
    ld b, d                                       ; $7689: $42
    ld a, e                                       ; $768a: $7b
    db $f4                                        ; $768b: $f4
    ld d, a                                       ; $768c: $57
    ld a, e                                       ; $768d: $7b
    db $f4                                        ; $768e: $f4
    ld [hl], d                                    ; $768f: $72
    ld a, e                                       ; $7690: $7b
    db $f4                                        ; $7691: $f4
    sub b                                         ; $7692: $90
    ld a, e                                       ; $7693: $7b
    db $f4                                        ; $7694: $f4

jr_008_7695:
    or e                                          ; $7695: $b3
    ld a, e                                       ; $7696: $7b
    db $f4                                        ; $7697: $f4
    db $dd                                        ; $7698: $dd
    ld a, e                                       ; $7699: $7b
    db $f4                                        ; $769a: $f4
    db $fd                                        ; $769b: $fd
    ld a, e                                       ; $769c: $7b
    db $f4                                        ; $769d: $f4
    rra                                           ; $769e: $1f
    ld a, h                                       ; $769f: $7c
    db $f4                                        ; $76a0: $f4
    inc a                                         ; $76a1: $3c
    ld a, h                                       ; $76a2: $7c
    db $f4                                        ; $76a3: $f4
    ld d, l                                       ; $76a4: $55
    ld a, h                                       ; $76a5: $7c
    db $f4                                        ; $76a6: $f4
    ld h, a                                       ; $76a7: $67
    ld a, h                                       ; $76a8: $7c
    db $f4                                        ; $76a9: $f4
    ld a, c                                       ; $76aa: $79
    ld a, h                                       ; $76ab: $7c
    db $f4                                        ; $76ac: $f4
    sbc [hl]                                      ; $76ad: $9e
    ld a, h                                       ; $76ae: $7c
    db $f4                                        ; $76af: $f4
    jp nz, $f47c                                  ; $76b0: $c2 $7c $f4

    ldh a, [$7c]                                  ; $76b3: $f0 $7c
    db $f4                                        ; $76b5: $f4
    jr nz, jr_008_7735                            ; $76b6: $20 $7d

    db $f4                                        ; $76b8: $f4
    dec sp                                        ; $76b9: $3b
    ld a, l                                       ; $76ba: $7d
    db $f4                                        ; $76bb: $f4
    ld a, c                                       ; $76bc: $79
    ld a, l                                       ; $76bd: $7d
    db $f4                                        ; $76be: $f4
    push de                                       ; $76bf: $d5
    ld a, l                                       ; $76c0: $7d
    db $f4                                        ; $76c1: $f4
    ld d, e                                       ; $76c2: $53
    ld a, [hl]                                    ; $76c3: $7e
    db $f4                                        ; $76c4: $f4
    db $f4                                        ; $76c5: $f4
    ld a, [hl]                                    ; $76c6: $7e
    push af                                       ; $76c7: $f5
    ld bc, $f540                                  ; $76c8: $01 $40 $f5
    cp d                                          ; $76cb: $ba
    ld b, b                                       ; $76cc: $40
    push af                                       ; $76cd: $f5
    ld b, [hl]                                    ; $76ce: $46
    ld b, c                                       ; $76cf: $41
    db $f4                                        ; $76d0: $f4
    sbc h                                         ; $76d1: $9c
    ld a, a                                       ; $76d2: $7f
    db $f4                                        ; $76d3: $f4
    xor [hl]                                      ; $76d4: $ae
    ld a, a                                       ; $76d5: $7f
    db $f4                                        ; $76d6: $f4
    rst $08                                       ; $76d7: $cf

Call_008_76d8:
    ld a, a                                       ; $76d8: $7f
    push af                                       ; $76d9: $f5
    cp a                                          ; $76da: $bf
    ld b, c                                       ; $76db: $41
    push af                                       ; $76dc: $f5
    ld a, [c]                                     ; $76dd: $f2
    ld b, c                                       ; $76de: $41
    push af                                       ; $76df: $f5
    inc [hl]                                      ; $76e0: $34
    ld b, d                                       ; $76e1: $42
    push af                                       ; $76e2: $f5
    ld a, a                                       ; $76e3: $7f
    ld b, d                                       ; $76e4: $42
    push af                                       ; $76e5: $f5
    sub a                                         ; $76e6: $97
    ld b, d                                       ; $76e7: $42
    push af                                       ; $76e8: $f5
    xor a                                         ; $76e9: $af
    ld b, d                                       ; $76ea: $42
    push af                                       ; $76eb: $f5
    call c, $f542                                 ; $76ec: $dc $42 $f5

Jump_008_76ef:
    add hl, bc                                    ; $76ef: $09
    ld b, e                                       ; $76f0: $43
    push af                                       ; $76f1: $f5
    ld e, d                                       ; $76f2: $5a
    ld b, e                                       ; $76f3: $43
    push af                                       ; $76f4: $f5
    xor h                                         ; $76f5: $ac
    ld b, e                                       ; $76f6: $43
    push af                                       ; $76f7: $f5
    db $fc                                        ; $76f8: $fc
    ld b, e                                       ; $76f9: $43
    push af                                       ; $76fa: $f5
    ld [hl], d                                    ; $76fb: $72
    ld b, h                                       ; $76fc: $44
    push af                                       ; $76fd: $f5
    rst $20                                       ; $76fe: $e7
    ld b, h                                       ; $76ff: $44
    push af                                       ; $7700: $f5
    ld e, d                                       ; $7701: $5a
    ld b, l                                       ; $7702: $45
    push af                                       ; $7703: $f5
    db $ed                                        ; $7704: $ed
    ld b, l                                       ; $7705: $45
    push af                                       ; $7706: $f5
    ld a, l                                       ; $7707: $7d
    ld b, [hl]                                    ; $7708: $46
    push af                                       ; $7709: $f5
    rrca                                          ; $770a: $0f
    ld b, a                                       ; $770b: $47
    push af                                       ; $770c: $f5
    jp nc, $f547                                  ; $770d: $d2 $47 $f5

    sub e                                         ; $7710: $93
    ld c, b                                       ; $7711: $48
    push af                                       ; $7712: $f5
    ld e, b                                       ; $7713: $58
    ld c, c                                       ; $7714: $49
    push af                                       ; $7715: $f5
    inc de                                        ; $7716: $13
    ld c, d                                       ; $7717: $4a
    push af                                       ; $7718: $f5
    call $f54a                                    ; $7719: $cd $4a $f5
    inc bc                                        ; $771c: $03
    ld c, e                                       ; $771d: $4b
    push af                                       ; $771e: $f5
    ld c, d                                       ; $771f: $4a
    ld c, e                                       ; $7720: $4b
    push af                                       ; $7721: $f5
    jp c, $f54b                                   ; $7722: $da $4b $f5

    ld l, l                                       ; $7725: $6d
    ld c, h                                       ; $7726: $4c
    push af                                       ; $7727: $f5
    add hl, bc                                    ; $7728: $09
    ld c, l                                       ; $7729: $4d
    push af                                       ; $772a: $f5
    ld h, h                                       ; $772b: $64
    ld c, l                                       ; $772c: $4d
    push af                                       ; $772d: $f5
    or a                                          ; $772e: $b7
    ld c, l                                       ; $772f: $4d
    push af                                       ; $7730: $f5
    di                                            ; $7731: $f3
    ld c, l                                       ; $7732: $4d
    push af                                       ; $7733: $f5
    or c                                          ; $7734: $b1

jr_008_7735:
    ld c, [hl]                                    ; $7735: $4e
    push af                                       ; $7736: $f5
    ld b, $50                                     ; $7737: $06 $50
    push af                                       ; $7739: $f5
    reti                                          ; $773a: $d9


    ld d, c                                       ; $773b: $51
    push af                                       ; $773c: $f5
    ld a, [de]                                    ; $773d: $1a
    ld d, h                                       ; $773e: $54
    push af                                       ; $773f: $f5
    sbc [hl]                                      ; $7740: $9e
    ld d, [hl]                                    ; $7741: $56
    push af                                       ; $7742: $f5
    db $10                                        ; $7743: $10
    ld e, c                                       ; $7744: $59
    push af                                       ; $7745: $f5
    ld c, d                                       ; $7746: $4a
    ld e, e                                       ; $7747: $5b
    push af                                       ; $7748: $f5
    ld l, a                                       ; $7749: $6f
    ld e, e                                       ; $774a: $5b
    push af                                       ; $774b: $f5
    xor e                                         ; $774c: $ab
    ld e, e                                       ; $774d: $5b
    push af                                       ; $774e: $f5
    inc b                                         ; $774f: $04
    ld e, h                                       ; $7750: $5c
    push af                                       ; $7751: $f5
    ld e, d                                       ; $7752: $5a
    ld e, h                                       ; $7753: $5c
    push af                                       ; $7754: $f5
    ld a, [hl]                                    ; $7755: $7e
    ld e, h                                       ; $7756: $5c
    push af                                       ; $7757: $f5
    db $e3                                        ; $7758: $e3
    ld e, h                                       ; $7759: $5c
    push af                                       ; $775a: $f5
    adc l                                         ; $775b: $8d
    ld e, l                                       ; $775c: $5d
    push af                                       ; $775d: $f5
    or h                                          ; $775e: $b4
    ld e, [hl]                                    ; $775f: $5e
    push af                                       ; $7760: $f5
    db $db                                        ; $7761: $db
    ld e, a                                       ; $7762: $5f

Jump_008_7763:
    push af                                       ; $7763: $f5
    ld [bc], a                                    ; $7764: $02
    ld h, c                                       ; $7765: $61
    push af                                       ; $7766: $f5

Call_008_7767:
    add hl, hl                                    ; $7767: $29
    ld h, d                                       ; $7768: $62
    push af                                       ; $7769: $f5
    ld d, b                                       ; $776a: $50
    ld h, e                                       ; $776b: $63
    push af                                       ; $776c: $f5
    ld h, d                                       ; $776d: $62
    ld h, h                                       ; $776e: $64
    push af                                       ; $776f: $f5
    nop                                           ; $7770: $00
    ld h, l                                       ; $7771: $65
    push af                                       ; $7772: $f5
    ld b, c                                       ; $7773: $41
    ld h, l                                       ; $7774: $65
    push af                                       ; $7775: $f5
    pop bc                                        ; $7776: $c1
    ld h, l                                       ; $7777: $65
    push af                                       ; $7778: $f5
    or a                                          ; $7779: $b7
    ld h, [hl]                                    ; $777a: $66
    push af                                       ; $777b: $f5
    xor d                                         ; $777c: $aa
    ld h, a                                       ; $777d: $67
    push af                                       ; $777e: $f5
    sbc [hl]                                      ; $777f: $9e
    ld l, b                                       ; $7780: $68
    push af                                       ; $7781: $f5
    sub d                                         ; $7782: $92
    ld l, c                                       ; $7783: $69
    push af                                       ; $7784: $f5
    add l                                         ; $7785: $85
    ld l, d                                       ; $7786: $6a
    push af                                       ; $7787: $f5
    ld a, h                                       ; $7788: $7c
    ld l, e                                       ; $7789: $6b
    push af                                       ; $778a: $f5
    ld [hl], e                                    ; $778b: $73
    ld l, h                                       ; $778c: $6c
    push af                                       ; $778d: $f5
    ld h, a                                       ; $778e: $67
    ld l, l                                       ; $778f: $6d
    push af                                       ; $7790: $f5
    ld d, c                                       ; $7791: $51
    ld l, [hl]                                    ; $7792: $6e
    push af                                       ; $7793: $f5
    jr nz, jr_008_7805                            ; $7794: $20 $6f

    push af                                       ; $7796: $f5
    dec de                                        ; $7797: $1b
    ld [hl], b                                    ; $7798: $70
    push af                                       ; $7799: $f5
    or [hl]                                       ; $779a: $b6
    ld [hl], b                                    ; $779b: $70
    push af                                       ; $779c: $f5
    or $70                                        ; $779d: $f6 $70
    push af                                       ; $779f: $f5
    inc a                                         ; $77a0: $3c
    ld [hl], c                                    ; $77a1: $71
    push af                                       ; $77a2: $f5
    ld a, c                                       ; $77a3: $79
    ld [hl], c                                    ; $77a4: $71
    push af                                       ; $77a5: $f5
    cp [hl]                                       ; $77a6: $be
    ld [hl], c                                    ; $77a7: $71
    push af                                       ; $77a8: $f5
    cp $71                                        ; $77a9: $fe $71
    push af                                       ; $77ab: $f5
    dec sp                                        ; $77ac: $3b
    ld [hl], d                                    ; $77ad: $72
    push af                                       ; $77ae: $f5
    ld l, [hl]                                    ; $77af: $6e
    ld [hl], d                                    ; $77b0: $72
    push af                                       ; $77b1: $f5
    sub a                                         ; $77b2: $97
    ld [hl], d                                    ; $77b3: $72
    push af                                       ; $77b4: $f5
    call z, $f572                                 ; $77b5: $cc $72 $f5
    dec bc                                        ; $77b8: $0b
    ld [hl], e                                    ; $77b9: $73
    push af                                       ; $77ba: $f5
    ld d, b                                       ; $77bb: $50
    ld [hl], e                                    ; $77bc: $73
    push af                                       ; $77bd: $f5
    sub c                                         ; $77be: $91
    ld [hl], e                                    ; $77bf: $73
    push af                                       ; $77c0: $f5
    rst $10                                       ; $77c1: $d7
    ld [hl], e                                    ; $77c2: $73
    push af                                       ; $77c3: $f5
    inc d                                         ; $77c4: $14
    ld [hl], h                                    ; $77c5: $74
    push af                                       ; $77c6: $f5
    jr z, jr_008_783d                             ; $77c7: $28 $74

    push af                                       ; $77c9: $f5
    inc a                                         ; $77ca: $3c
    ld [hl], h                                    ; $77cb: $74
    push af                                       ; $77cc: $f5
    ld d, b                                       ; $77cd: $50
    ld [hl], h                                    ; $77ce: $74
    push af                                       ; $77cf: $f5
    ld h, h                                       ; $77d0: $64
    ld [hl], h                                    ; $77d1: $74
    push af                                       ; $77d2: $f5
    ld a, b                                       ; $77d3: $78
    ld [hl], h                                    ; $77d4: $74
    push af                                       ; $77d5: $f5
    adc h                                         ; $77d6: $8c
    ld [hl], h                                    ; $77d7: $74
    push af                                       ; $77d8: $f5
    and b                                         ; $77d9: $a0
    ld [hl], h                                    ; $77da: $74
    push af                                       ; $77db: $f5
    or h                                          ; $77dc: $b4

Jump_008_77dd:
    ld [hl], h                                    ; $77dd: $74
    push af                                       ; $77de: $f5
    ret z                                         ; $77df: $c8

    ld [hl], h                                    ; $77e0: $74
    push af                                       ; $77e1: $f5
    call c, $f574                                 ; $77e2: $dc $74 $f5
    ldh a, [$74]                                  ; $77e5: $f0 $74
    push af                                       ; $77e7: $f5
    inc b                                         ; $77e8: $04
    ld [hl], l                                    ; $77e9: $75
    push af                                       ; $77ea: $f5
    jr jr_008_7862                                ; $77eb: $18 $75

    push af                                       ; $77ed: $f5
    inc l                                         ; $77ee: $2c
    ld [hl], l                                    ; $77ef: $75
    push af                                       ; $77f0: $f5
    ld b, b                                       ; $77f1: $40
    ld [hl], l                                    ; $77f2: $75
    push af                                       ; $77f3: $f5
    ld d, h                                       ; $77f4: $54
    ld [hl], l                                    ; $77f5: $75
    push af                                       ; $77f6: $f5
    ld l, b                                       ; $77f7: $68
    ld [hl], l                                    ; $77f8: $75
    push af                                       ; $77f9: $f5

Call_008_77fa:
    ld a, h                                       ; $77fa: $7c
    ld [hl], l                                    ; $77fb: $75
    push af                                       ; $77fc: $f5
    sub b                                         ; $77fd: $90
    ld [hl], l                                    ; $77fe: $75
    push af                                       ; $77ff: $f5
    and h                                         ; $7800: $a4
    ld [hl], l                                    ; $7801: $75
    push af                                       ; $7802: $f5
    cp b                                          ; $7803: $b8
    ld [hl], l                                    ; $7804: $75

jr_008_7805:
    push af                                       ; $7805: $f5
    call z, $f575                                 ; $7806: $cc $75 $f5
    ldh [$75], a                                  ; $7809: $e0 $75
    push af                                       ; $780b: $f5
    db $f4                                        ; $780c: $f4
    ld [hl], l                                    ; $780d: $75
    push af                                       ; $780e: $f5
    ld [$f576], sp                                ; $780f: $08 $76 $f5
    ld b, c                                       ; $7812: $41
    halt                                          ; $7813: $76
    push af                                       ; $7814: $f5
    ld a, b                                       ; $7815: $78
    halt                                          ; $7816: $76
    push af                                       ; $7817: $f5
    xor c                                         ; $7818: $a9
    halt                                          ; $7819: $76
    push af                                       ; $781a: $f5
    add $76                                       ; $781b: $c6 $76
    push af                                       ; $781d: $f5
    dec [hl]                                      ; $781e: $35
    ld [hl], a                                    ; $781f: $77
    push af                                       ; $7820: $f5
    ld d, l                                       ; $7821: $55
    ld [hl], a                                    ; $7822: $77
    push af                                       ; $7823: $f5
    halt                                          ; $7824: $76
    ld [hl], a                                    ; $7825: $77
    push af                                       ; $7826: $f5
    xor e                                         ; $7827: $ab
    ld [hl], a                                    ; $7828: $77
    push af                                       ; $7829: $f5
    db $e4                                        ; $782a: $e4
    ld [hl], a                                    ; $782b: $77
    push af                                       ; $782c: $f5
    jr z, jr_008_78a7                             ; $782d: $28 $78

    push af                                       ; $782f: $f5
    ld l, b                                       ; $7830: $68
    ld a, b                                       ; $7831: $78
    push af                                       ; $7832: $f5
    sbc [hl]                                      ; $7833: $9e
    ld a, b                                       ; $7834: $78
    push af                                       ; $7835: $f5
    ret nc                                        ; $7836: $d0

    ld a, b                                       ; $7837: $78
    push af                                       ; $7838: $f5
    ld [bc], a                                    ; $7839: $02
    ld a, c                                       ; $783a: $79
    push af                                       ; $783b: $f5
    ld b, [hl]                                    ; $783c: $46

jr_008_783d:
    ld a, c                                       ; $783d: $79
    push af                                       ; $783e: $f5
    reti                                          ; $783f: $d9


    ld a, c                                       ; $7840: $79
    push af                                       ; $7841: $f5
    pop de                                        ; $7842: $d1
    ld a, d                                       ; $7843: $7a
    push af                                       ; $7844: $f5
    ret                                           ; $7845: $c9


    ld a, e                                       ; $7846: $7b
    push af                                       ; $7847: $f5
    pop bc                                        ; $7848: $c1
    ld a, h                                       ; $7849: $7c
    push af                                       ; $784a: $f5
    cp c                                          ; $784b: $b9
    ld a, l                                       ; $784c: $7d
    push af                                       ; $784d: $f5
    or c                                          ; $784e: $b1
    ld a, [hl]                                    ; $784f: $7e
    or $01                                        ; $7850: $f6 $01
    ld b, b                                       ; $7852: $40
    push af                                       ; $7853: $f5
    xor c                                         ; $7854: $a9
    ld a, a                                       ; $7855: $7f
    push af                                       ; $7856: $f5
    cp a                                          ; $7857: $bf
    ld a, a                                       ; $7858: $7f
    push af                                       ; $7859: $f5

Jump_008_785a:
    jp c, $f67f                                   ; $785a: $da $7f $f6

    ld sp, hl                                     ; $785d: $f9
    ld b, b                                       ; $785e: $40
    or $1a                                        ; $785f: $f6 $1a
    ld b, c                                       ; $7861: $41

jr_008_7862:
    or $33                                        ; $7862: $f6 $33
    ld b, c                                       ; $7864: $41
    or $4b                                        ; $7865: $f6 $4b
    ld b, c                                       ; $7867: $41
    or $64                                        ; $7868: $f6 $64
    ld b, c                                       ; $786a: $41
    or $7c                                        ; $786b: $f6 $7c
    ld b, c                                       ; $786d: $41
    or $94                                        ; $786e: $f6 $94
    ld b, c                                       ; $7870: $41
    or $ae                                        ; $7871: $f6 $ae
    ld b, c                                       ; $7873: $41
    or $c8                                        ; $7874: $f6 $c8
    ld b, c                                       ; $7876: $41
    or $02                                        ; $7877: $f6 $02
    ld b, d                                       ; $7879: $42
    or $49                                        ; $787a: $f6 $49
    ld b, d                                       ; $787c: $42
    or $72                                        ; $787d: $f6 $72
    ld b, d                                       ; $787f: $42
    or $9b                                        ; $7880: $f6 $9b
    ld b, d                                       ; $7882: $42
    or $d9                                        ; $7883: $f6 $d9
    ld b, d                                       ; $7885: $42
    or $2e                                        ; $7886: $f6 $2e
    ld b, e                                       ; $7888: $43
    or $a2                                        ; $7889: $f6 $a2
    ld b, e                                       ; $788b: $43

Call_008_788c:
    or $2b                                        ; $788c: $f6 $2b
    ld b, h                                       ; $788e: $44
    or $54                                        ; $788f: $f6 $54
    ld b, h                                       ; $7891: $44
    or $7d                                        ; $7892: $f6 $7d
    ld b, h                                       ; $7894: $44
    or $90                                        ; $7895: $f6 $90
    ld b, h                                       ; $7897: $44
    or $b3                                        ; $7898: $f6 $b3
    ld b, h                                       ; $789a: $44
    or $e0                                        ; $789b: $f6 $e0
    ld b, h                                       ; $789d: $44
    or $0c                                        ; $789e: $f6 $0c
    ld b, l                                       ; $78a0: $45
    or $1f                                        ; $78a1: $f6 $1f
    ld b, l                                       ; $78a3: $45
    or $32                                        ; $78a4: $f6 $32
    ld b, l                                       ; $78a6: $45

jr_008_78a7:
    or $42                                        ; $78a7: $f6 $42
    ld b, l                                       ; $78a9: $45
    or $57                                        ; $78aa: $f6 $57
    ld b, l                                       ; $78ac: $45
    or $6a                                        ; $78ad: $f6 $6a
    ld b, l                                       ; $78af: $45
    or $7e                                        ; $78b0: $f6 $7e
    ld b, l                                       ; $78b2: $45
    or $91                                        ; $78b3: $f6 $91
    ld b, l                                       ; $78b5: $45
    or $af                                        ; $78b6: $f6 $af
    ld b, l                                       ; $78b8: $45
    or $d0                                        ; $78b9: $f6 $d0
    ld b, l                                       ; $78bb: $45
    or $ee                                        ; $78bc: $f6 $ee
    ld b, l                                       ; $78be: $45
    or $3b                                        ; $78bf: $f6 $3b
    ld b, [hl]                                    ; $78c1: $46
    or $8f                                        ; $78c2: $f6 $8f
    ld b, [hl]                                    ; $78c4: $46

Jump_008_78c5:
    or $e3                                        ; $78c5: $f6 $e3
    ld b, [hl]                                    ; $78c7: $46
    or $3c                                        ; $78c8: $f6 $3c
    ld b, a                                       ; $78ca: $47
    or $95                                        ; $78cb: $f6 $95
    ld b, a                                       ; $78cd: $47
    or $f8                                        ; $78ce: $f6 $f8
    ld b, a                                       ; $78d0: $47
    or $4f                                        ; $78d1: $f6 $4f
    ld c, b                                       ; $78d3: $48
    or $a7                                        ; $78d4: $f6 $a7
    ld c, b                                       ; $78d6: $48
    or $06                                        ; $78d7: $f6 $06
    ld c, c                                       ; $78d9: $49
    or $5f                                        ; $78da: $f6 $5f
    ld c, c                                       ; $78dc: $49
    or $b2                                        ; $78dd: $f6 $b2
    ld c, c                                       ; $78df: $49
    or $fc                                        ; $78e0: $f6 $fc
    ld c, c                                       ; $78e2: $49
    or $44                                        ; $78e3: $f6 $44
    ld c, d                                       ; $78e5: $4a
    or $91                                        ; $78e6: $f6 $91
    ld c, d                                       ; $78e8: $4a
    or $bf                                        ; $78e9: $f6 $bf
    ld c, d                                       ; $78eb: $4a
    or $e8                                        ; $78ec: $f6 $e8
    ld c, d                                       ; $78ee: $4a
    or $ff                                        ; $78ef: $f6 $ff
    ld c, d                                       ; $78f1: $4a
    or $1a                                        ; $78f2: $f6 $1a
    ld c, e                                       ; $78f4: $4b
    or $3e                                        ; $78f5: $f6 $3e
    ld c, e                                       ; $78f7: $4b
    or $69                                        ; $78f8: $f6 $69
    ld c, e                                       ; $78fa: $4b
    or $9d                                        ; $78fb: $f6 $9d
    ld c, e                                       ; $78fd: $4b
    or $d7                                        ; $78fe: $f6 $d7
    ld c, e                                       ; $7900: $4b
    or $0b                                        ; $7901: $f6 $0b
    ld c, h                                       ; $7903: $4c
    or $26                                        ; $7904: $f6 $26
    ld c, h                                       ; $7906: $4c
    or $38                                        ; $7907: $f6 $38
    ld c, h                                       ; $7909: $4c
    or $56                                        ; $790a: $f6 $56
    ld c, h                                       ; $790c: $4c
    or $87                                        ; $790d: $f6 $87
    ld c, h                                       ; $790f: $4c
    or $ea                                        ; $7910: $f6 $ea
    ld c, h                                       ; $7912: $4c
    or $4b                                        ; $7913: $f6 $4b
    ld c, l                                       ; $7915: $4d
    or $a6                                        ; $7916: $f6 $a6
    ld c, l                                       ; $7918: $4d
    or $e9                                        ; $7919: $f6 $e9

Call_008_791b:
    ld c, l                                       ; $791b: $4d
    or $3a                                        ; $791c: $f6 $3a
    ld c, [hl]                                    ; $791e: $4e
    or $7e                                        ; $791f: $f6 $7e
    ld c, [hl]                                    ; $7921: $4e
    or $e9                                        ; $7922: $f6 $e9
    ld c, [hl]                                    ; $7924: $4e
    or $51                                        ; $7925: $f6 $51
    ld c, a                                       ; $7927: $4f
    or $b5                                        ; $7928: $f6 $b5
    ld c, a                                       ; $792a: $4f
    or $e9                                        ; $792b: $f6 $e9
    ld c, a                                       ; $792d: $4f
    or $05                                        ; $792e: $f6 $05
    ld d, b                                       ; $7930: $50
    or $6a                                        ; $7931: $f6 $6a
    ld d, b                                       ; $7933: $50
    or $cb                                        ; $7934: $f6 $cb
    ld d, b                                       ; $7936: $50
    or $30                                        ; $7937: $f6 $30
    ld d, c                                       ; $7939: $51
    or $9c                                        ; $793a: $f6 $9c

Jump_008_793c:
    ld d, c                                       ; $793c: $51
    or $03                                        ; $793d: $f6 $03
    ld d, d                                       ; $793f: $52
    or $6f                                        ; $7940: $f6 $6f
    ld d, d                                       ; $7942: $52
    or $ec                                        ; $7943: $f6 $ec
    ld d, d                                       ; $7945: $52
    or $78                                        ; $7946: $f6 $78
    ld d, e                                       ; $7948: $53
    or $01                                        ; $7949: $f6 $01
    ld d, h                                       ; $794b: $54
    or $8d                                        ; $794c: $f6 $8d
    ld d, h                                       ; $794e: $54
    or $1b                                        ; $794f: $f6 $1b
    ld d, l                                       ; $7951: $55
    or $a7                                        ; $7952: $f6 $a7
    ld d, l                                       ; $7954: $55
    or $32                                        ; $7955: $f6 $32
    ld d, [hl]                                    ; $7957: $56
    or $ae                                        ; $7958: $f6 $ae
    ld d, [hl]                                    ; $795a: $56
    or $39                                        ; $795b: $f6 $39
    ld d, a                                       ; $795d: $57
    or $bc                                        ; $795e: $f6 $bc
    ld d, a                                       ; $7960: $57
    or $d8                                        ; $7961: $f6 $d8
    ld d, a                                       ; $7963: $57

    db $f6, $f6, $57, $f6, $10, $58, $f6, $38, $58, $f6, $92, $58, $f6, $f9, $58, $f6
    db $b6, $59, $f6, $7e, $5a, $f6, $3e, $5b, $f6, $ef, $5b, $f6, $ab, $5c, $f6, $71
    db $5d, $f6, $2f, $5e, $f6, $ee, $5e

    or $50                                        ; $798b: $f6 $50
    ld e, a                                       ; $798d: $5f
    or $86                                        ; $798e: $f6 $86
    ld e, a                                       ; $7990: $5f
    or $e9                                        ; $7991: $f6 $e9
    ld e, a                                       ; $7993: $5f
    or $9c                                        ; $7994: $f6 $9c
    ld h, b                                       ; $7996: $60
    or $75                                        ; $7997: $f6 $75
    ld h, c                                       ; $7999: $61
    or $70                                        ; $799a: $f6 $70
    ld h, d                                       ; $799c: $62
    or $61                                        ; $799d: $f6 $61
    ld h, e                                       ; $799f: $63
    or $29                                        ; $79a0: $f6 $29
    ld h, h                                       ; $79a2: $64
    or $b3                                        ; $79a3: $f6 $b3
    ld h, h                                       ; $79a5: $64
    or $d3                                        ; $79a6: $f6 $d3
    ld h, h                                       ; $79a8: $64
    or $16                                        ; $79a9: $f6 $16
    ld h, l                                       ; $79ab: $65
    or $77                                        ; $79ac: $f6 $77

Call_008_79ae:
    ld h, l                                       ; $79ae: $65
    or $07                                        ; $79af: $f6 $07

Jump_008_79b1:
    ld h, [hl]                                    ; $79b1: $66
    or $7d                                        ; $79b2: $f6 $7d
    ld h, [hl]                                    ; $79b4: $66
    or $ed                                        ; $79b5: $f6 $ed
    ld h, [hl]                                    ; $79b7: $66
    or $5e                                        ; $79b8: $f6 $5e
    ld h, a                                       ; $79ba: $67
    or $bf                                        ; $79bb: $f6 $bf
    ld h, a                                       ; $79bd: $67
    or $11                                        ; $79be: $f6 $11
    ld l, b                                       ; $79c0: $68
    or $29                                        ; $79c1: $f6 $29
    ld l, b                                       ; $79c3: $68
    or $48                                        ; $79c4: $f6 $48
    ld l, b                                       ; $79c6: $68
    or $6a                                        ; $79c7: $f6 $6a
    ld l, b                                       ; $79c9: $68
    or $8e                                        ; $79ca: $f6 $8e
    ld l, b                                       ; $79cc: $68
    or $b3                                        ; $79cd: $f6 $b3
    ld l, b                                       ; $79cf: $68
    or $d4                                        ; $79d0: $f6 $d4
    ld l, b                                       ; $79d2: $68
    or $f9                                        ; $79d3: $f6 $f9
    ld l, b                                       ; $79d5: $68
    or $1a                                        ; $79d6: $f6 $1a
    ld l, c                                       ; $79d8: $69
    or $32                                        ; $79d9: $f6 $32
    ld l, c                                       ; $79db: $69
    or $51                                        ; $79dc: $f6 $51
    ld l, c                                       ; $79de: $69
    or $74                                        ; $79df: $f6 $74
    ld l, c                                       ; $79e1: $69
    or $99                                        ; $79e2: $f6 $99
    ld l, c                                       ; $79e4: $69
    or $c0                                        ; $79e5: $f6 $c0
    ld l, c                                       ; $79e7: $69
    or $dd                                        ; $79e8: $f6 $dd
    ld l, c                                       ; $79ea: $69
    or $f9                                        ; $79eb: $f6 $f9
    ld l, c                                       ; $79ed: $69
    or $15                                        ; $79ee: $f6 $15
    ld l, d                                       ; $79f0: $6a
    or $48                                        ; $79f1: $f6 $48
    ld l, d                                       ; $79f3: $6a
    or $79                                        ; $79f4: $f6 $79
    ld l, d                                       ; $79f6: $6a
    or $aa                                        ; $79f7: $f6 $aa
    ld l, d                                       ; $79f9: $6a
    or $db                                        ; $79fa: $f6 $db
    ld l, d                                       ; $79fc: $6a
    or $0c                                        ; $79fd: $f6 $0c
    ld l, e                                       ; $79ff: $6b
    or $3f                                        ; $7a00: $f6 $3f
    ld l, e                                       ; $7a02: $6b
    or $70                                        ; $7a03: $f6 $70
    ld l, e                                       ; $7a05: $6b
    or $99                                        ; $7a06: $f6 $99
    ld l, e                                       ; $7a08: $6b
    or $c8                                        ; $7a09: $f6 $c8
    ld l, e                                       ; $7a0b: $6b
    or $ee                                        ; $7a0c: $f6 $ee
    ld l, e                                       ; $7a0e: $6b
    or $0f                                        ; $7a0f: $f6 $0f
    ld l, h                                       ; $7a11: $6c
    or $31                                        ; $7a12: $f6 $31
    ld l, h                                       ; $7a14: $6c
    or $53                                        ; $7a15: $f6 $53
    ld l, h                                       ; $7a17: $6c
    or $79                                        ; $7a18: $f6 $79
    ld l, h                                       ; $7a1a: $6c
    or $97                                        ; $7a1b: $f6 $97
    ld l, h                                       ; $7a1d: $6c
    or $c2                                        ; $7a1e: $f6 $c2
    ld l, h                                       ; $7a20: $6c
    or $e3                                        ; $7a21: $f6 $e3
    ld l, h                                       ; $7a23: $6c
    or $05                                        ; $7a24: $f6 $05
    ld l, l                                       ; $7a26: $6d
    or $27                                        ; $7a27: $f6 $27
    ld l, l                                       ; $7a29: $6d
    or $44                                        ; $7a2a: $f6 $44
    ld l, l                                       ; $7a2c: $6d
    or $6a                                        ; $7a2d: $f6 $6a
    ld l, l                                       ; $7a2f: $6d
    or $86                                        ; $7a30: $f6 $86
    ld l, l                                       ; $7a32: $6d
    or $98                                        ; $7a33: $f6 $98
    ld l, l                                       ; $7a35: $6d
    or $b0                                        ; $7a36: $f6 $b0
    ld l, l                                       ; $7a38: $6d
    or $cc                                        ; $7a39: $f6 $cc
    ld l, l                                       ; $7a3b: $6d
    or $17                                        ; $7a3c: $f6 $17
    ld l, [hl]                                    ; $7a3e: $6e
    or $b6                                        ; $7a3f: $f6 $b6
    ld l, [hl]                                    ; $7a41: $6e

Call_008_7a42:
    or $cc                                        ; $7a42: $f6 $cc
    ld l, [hl]                                    ; $7a44: $6e
    or $fb                                        ; $7a45: $f6 $fb
    ld l, [hl]                                    ; $7a47: $6e
    or $3e                                        ; $7a48: $f6 $3e
    ld l, a                                       ; $7a4a: $6f
    or $92                                        ; $7a4b: $f6 $92
    ld l, a                                       ; $7a4d: $6f
    or $01                                        ; $7a4e: $f6 $01
    ld [hl], b                                    ; $7a50: $70
    or $9a                                        ; $7a51: $f6 $9a
    ld [hl], b                                    ; $7a53: $70
    or $ad                                        ; $7a54: $f6 $ad
    ld [hl], b                                    ; $7a56: $70
    or $c3                                        ; $7a57: $f6 $c3
    ld [hl], b                                    ; $7a59: $70
    or $dd                                        ; $7a5a: $f6 $dd
    ld [hl], b                                    ; $7a5c: $70
    or $f1                                        ; $7a5d: $f6 $f1
    ld [hl], b                                    ; $7a5f: $70
    or $09                                        ; $7a60: $f6 $09
    ld [hl], c                                    ; $7a62: $71
    or $25                                        ; $7a63: $f6 $25
    ld [hl], c                                    ; $7a65: $71
    or $52                                        ; $7a66: $f6 $52
    ld [hl], c                                    ; $7a68: $71
    or $8e                                        ; $7a69: $f6 $8e
    ld [hl], c                                    ; $7a6b: $71
    or $d7                                        ; $7a6c: $f6 $d7
    ld [hl], c                                    ; $7a6e: $71
    or $2d                                        ; $7a6f: $f6 $2d
    ld [hl], d                                    ; $7a71: $72
    or $88                                        ; $7a72: $f6 $88
    ld [hl], d                                    ; $7a74: $72
    or $ef                                        ; $7a75: $f6 $ef
    ld [hl], d                                    ; $7a77: $72
    or $46                                        ; $7a78: $f6 $46
    ld [hl], e                                    ; $7a7a: $73
    or $56                                        ; $7a7b: $f6 $56
    ld [hl], e                                    ; $7a7d: $73
    or $72                                        ; $7a7e: $f6 $72
    ld [hl], e                                    ; $7a80: $73
    or $a0                                        ; $7a81: $f6 $a0
    ld [hl], e                                    ; $7a83: $73
    or $c9                                        ; $7a84: $f6 $c9
    ld [hl], e                                    ; $7a86: $73
    or $f6                                        ; $7a87: $f6 $f6
    ld [hl], e                                    ; $7a89: $73
    or $1d                                        ; $7a8a: $f6 $1d
    ld [hl], h                                    ; $7a8c: $74
    or $4c                                        ; $7a8d: $f6 $4c
    ld [hl], h                                    ; $7a8f: $74
    or $74                                        ; $7a90: $f6 $74
    ld [hl], h                                    ; $7a92: $74
    or $a1                                        ; $7a93: $f6 $a1
    ld [hl], h                                    ; $7a95: $74
    or $ca                                        ; $7a96: $f6 $ca
    ld [hl], h                                    ; $7a98: $74
    or $de                                        ; $7a99: $f6 $de
    ld [hl], h                                    ; $7a9b: $74
    or $04                                        ; $7a9c: $f6 $04
    ld [hl], l                                    ; $7a9e: $75

Jump_008_7a9f:
    or $53                                        ; $7a9f: $f6 $53
    ld [hl], l                                    ; $7aa1: $75
    or $ed                                        ; $7aa2: $f6 $ed
    ld [hl], l                                    ; $7aa4: $75
    or $1a                                        ; $7aa5: $f6 $1a
    ld [hl], a                                    ; $7aa7: $77
    or $9b                                        ; $7aa8: $f6 $9b
    ld a, b                                       ; $7aaa: $78
    or $49                                        ; $7aab: $f6 $49
    ld a, e                                       ; $7aad: $7b
    or $69                                        ; $7aae: $f6 $69
    ld a, e                                       ; $7ab0: $7b
    or $ac                                        ; $7ab1: $f6 $ac
    ld a, e                                       ; $7ab3: $7b
    or $0d                                        ; $7ab4: $f6 $0d
    ld a, h                                       ; $7ab6: $7c
    or $9d                                        ; $7ab7: $f6 $9d
    ld a, h                                       ; $7ab9: $7c
    or $13                                        ; $7aba: $f6 $13
    ld a, l                                       ; $7abc: $7d
    or $83                                        ; $7abd: $f6 $83
    ld a, l                                       ; $7abf: $7d
    or $f4                                        ; $7ac0: $f6 $f4
    ld a, l                                       ; $7ac2: $7d
    or $55                                        ; $7ac3: $f6 $55
    ld a, [hl]                                    ; $7ac5: $7e
    or $a7                                        ; $7ac6: $f6 $a7
    ld a, [hl]                                    ; $7ac8: $7e
    or $cf                                        ; $7ac9: $f6 $cf
    ld a, [hl]                                    ; $7acb: $7e
    or $08                                        ; $7acc: $f6 $08
    ld a, a                                       ; $7ace: $7f
    or $71                                        ; $7acf: $f6 $71
    ld a, a                                       ; $7ad1: $7f
    rst $30                                       ; $7ad2: $f7
    ld bc, $f740                                  ; $7ad3: $01 $40 $f7
    add [hl]                                      ; $7ad6: $86
    ld b, b                                       ; $7ad7: $40
    rst $30                                       ; $7ad8: $f7
    inc [hl]                                      ; $7ad9: $34
    ld b, c                                       ; $7ada: $41
    rst $30                                       ; $7adb: $f7
    db $ed                                        ; $7adc: $ed
    ld b, c                                       ; $7add: $41
    rst $30                                       ; $7ade: $f7
    xor [hl]                                      ; $7adf: $ae
    ld b, d                                       ; $7ae0: $42
    rst $30                                       ; $7ae1: $f7
    ld h, c                                       ; $7ae2: $61
    ld b, e                                       ; $7ae3: $43
    rst $30                                       ; $7ae4: $f7
    ld a, e                                       ; $7ae5: $7b
    ld b, e                                       ; $7ae6: $43
    rst $30                                       ; $7ae7: $f7
    and e                                         ; $7ae8: $a3
    ld b, e                                       ; $7ae9: $43
    rst $30                                       ; $7aea: $f7
    db $fd                                        ; $7aeb: $fd
    ld b, e                                       ; $7aec: $43
    rst $30                                       ; $7aed: $f7
    ld h, h                                       ; $7aee: $64
    ld b, h                                       ; $7aef: $44
    rst $30                                       ; $7af0: $f7
    ld hl, $f745                                  ; $7af1: $21 $45 $f7
    jp hl                                         ; $7af4: $e9


    ld b, l                                       ; $7af5: $45
    rst $30                                       ; $7af6: $f7
    xor c                                         ; $7af7: $a9
    ld b, [hl]                                    ; $7af8: $46
    rst $30                                       ; $7af9: $f7
    ld e, d                                       ; $7afa: $5a
    ld b, a                                       ; $7afb: $47
    rst $30                                       ; $7afc: $f7
    ld d, $48                                     ; $7afd: $16 $48
    rst $30                                       ; $7aff: $f7
    call c, $f748                                 ; $7b00: $dc $48 $f7
    sbc d                                         ; $7b03: $9a
    ld c, c                                       ; $7b04: $49
    rst $30                                       ; $7b05: $f7
    ld e, c                                       ; $7b06: $59
    ld c, d                                       ; $7b07: $4a
    rst $30                                       ; $7b08: $f7
    cp e                                          ; $7b09: $bb
    ld c, d                                       ; $7b0a: $4a
    rst $30                                       ; $7b0b: $f7
    rst $08                                       ; $7b0c: $cf
    ld c, d                                       ; $7b0d: $4a
    rst $30                                       ; $7b0e: $f7
    db $e3                                        ; $7b0f: $e3
    ld c, d                                       ; $7b10: $4a
    rst $30                                       ; $7b11: $f7

Jump_008_7b12:
    rst $30                                       ; $7b12: $f7
    ld c, d                                       ; $7b13: $4a
    rst $30                                       ; $7b14: $f7
    dec bc                                        ; $7b15: $0b
    ld c, e                                       ; $7b16: $4b
    rst $30                                       ; $7b17: $f7
    inc [hl]                                      ; $7b18: $34
    ld c, e                                       ; $7b19: $4b
    rst $30                                       ; $7b1a: $f7
    ld a, b                                       ; $7b1b: $78
    ld c, e                                       ; $7b1c: $4b
    rst $30                                       ; $7b1d: $f7
    db $db                                        ; $7b1e: $db
    ld c, e                                       ; $7b1f: $4b
    rst $30                                       ; $7b20: $f7
    ld c, c                                       ; $7b21: $49
    ld c, h                                       ; $7b22: $4c
    rst $30                                       ; $7b23: $f7
    rst $08                                       ; $7b24: $cf
    ld c, h                                       ; $7b25: $4c
    rst $30                                       ; $7b26: $f7
    ld d, a                                       ; $7b27: $57
    ld c, l                                       ; $7b28: $4d
    rst $30                                       ; $7b29: $f7
    rst $18                                       ; $7b2a: $df
    ld c, l                                       ; $7b2b: $4d
    rst $30                                       ; $7b2c: $f7
    ld h, c                                       ; $7b2d: $61
    ld c, [hl]                                    ; $7b2e: $4e
    rst $30                                       ; $7b2f: $f7
    call nc, $f74e                                ; $7b30: $d4 $4e $f7
    ccf                                           ; $7b33: $3f
    ld c, a                                       ; $7b34: $4f
    rst $30                                       ; $7b35: $f7
    bit 1, a                                      ; $7b36: $cb $4f
    rst $30                                       ; $7b38: $f7
    ld h, l                                       ; $7b39: $65
    ld d, b                                       ; $7b3a: $50
    rst $30                                       ; $7b3b: $f7
    ld a, [de]                                    ; $7b3c: $1a
    ld d, c                                       ; $7b3d: $51
    rst $30                                       ; $7b3e: $f7
    cp c                                          ; $7b3f: $b9
    ld d, c                                       ; $7b40: $51
    rst $30                                       ; $7b41: $f7
    ld c, h                                       ; $7b42: $4c
    ld d, d                                       ; $7b43: $52
    rst $30                                       ; $7b44: $f7
    ret c                                         ; $7b45: $d8

    ld d, d                                       ; $7b46: $52
    rst $30                                       ; $7b47: $f7
    sub c                                         ; $7b48: $91
    ld d, e                                       ; $7b49: $53
    rst $30                                       ; $7b4a: $f7
    cpl                                           ; $7b4b: $2f
    ld d, h                                       ; $7b4c: $54
    rst $30                                       ; $7b4d: $f7
    ccf                                           ; $7b4e: $3f
    ld d, h                                       ; $7b4f: $54
    rst $30                                       ; $7b50: $f7
    ld d, h                                       ; $7b51: $54
    ld d, h                                       ; $7b52: $54
    rst $30                                       ; $7b53: $f7
    ld h, a                                       ; $7b54: $67
    ld d, h                                       ; $7b55: $54
    rst $30                                       ; $7b56: $f7
    ld a, e                                       ; $7b57: $7b
    ld d, h                                       ; $7b58: $54
    rst $30                                       ; $7b59: $f7
    adc [hl]                                      ; $7b5a: $8e
    ld d, h                                       ; $7b5b: $54
    rst $30                                       ; $7b5c: $f7
    xor h                                         ; $7b5d: $ac
    ld d, h                                       ; $7b5e: $54
    rst $30                                       ; $7b5f: $f7
    call $f754                                    ; $7b60: $cd $54 $f7
    db $eb                                        ; $7b63: $eb

Call_008_7b64:
    ld d, h                                       ; $7b64: $54
    rst $30                                       ; $7b65: $f7
    jr c, jr_008_7bbd                             ; $7b66: $38 $55

    rst $30                                       ; $7b68: $f7
    adc h                                         ; $7b69: $8c
    ld d, l                                       ; $7b6a: $55
    rst $30                                       ; $7b6b: $f7
    ldh [rHDMA5], a                               ; $7b6c: $e0 $55
    rst $30                                       ; $7b6e: $f7
    add hl, sp                                    ; $7b6f: $39
    ld d, [hl]                                    ; $7b70: $56
    rst $30                                       ; $7b71: $f7
    sub d                                         ; $7b72: $92
    ld d, [hl]                                    ; $7b73: $56
    rst $30                                       ; $7b74: $f7
    push af                                       ; $7b75: $f5
    ld d, [hl]                                    ; $7b76: $56
    rst $30                                       ; $7b77: $f7
    ld c, h                                       ; $7b78: $4c
    ld d, a                                       ; $7b79: $57
    rst $30                                       ; $7b7a: $f7
    and h                                         ; $7b7b: $a4
    ld d, a                                       ; $7b7c: $57
    rst $30                                       ; $7b7d: $f7
    inc bc                                        ; $7b7e: $03
    ld e, b                                       ; $7b7f: $58
    rst $30                                       ; $7b80: $f7
    ld e, h                                       ; $7b81: $5c
    ld e, b                                       ; $7b82: $58
    rst $30                                       ; $7b83: $f7
    jp hl                                         ; $7b84: $e9


    ld e, b                                       ; $7b85: $58
    rst $30                                       ; $7b86: $f7
    ld a, [hl]                                    ; $7b87: $7e

Jump_008_7b88:
    ld e, c                                       ; $7b88: $59
    rst $30                                       ; $7b89: $f7
    jr nz, jr_008_7be6                            ; $7b8a: $20 $5a

    rst $30                                       ; $7b8c: $f7
    bit 3, d                                      ; $7b8d: $cb $5a
    rst $30                                       ; $7b8f: $f7
    ld a, h                                       ; $7b90: $7c
    ld e, e                                       ; $7b91: $5b
    rst $30                                       ; $7b92: $f7
    sub l                                         ; $7b93: $95
    ld e, e                                       ; $7b94: $5b
    rst $30                                       ; $7b95: $f7
    xor a                                         ; $7b96: $af
    ld e, e                                       ; $7b97: $5b
    rst $30                                       ; $7b98: $f7
    jp z, $f75b                                   ; $7b99: $ca $5b $f7

    push hl                                       ; $7b9c: $e5
    ld e, e                                       ; $7b9d: $5b
    rst $30                                       ; $7b9e: $f7
    rst $38                                       ; $7b9f: $ff
    ld e, e                                       ; $7ba0: $5b
    rst $30                                       ; $7ba1: $f7
    dec d                                         ; $7ba2: $15
    ld e, h                                       ; $7ba3: $5c
    rst $30                                       ; $7ba4: $f7
    ld a, [hl+]                                   ; $7ba5: $2a
    ld e, h                                       ; $7ba6: $5c
    rst $30                                       ; $7ba7: $f7
    ld d, b                                       ; $7ba8: $50
    ld e, h                                       ; $7ba9: $5c
    rst $30                                       ; $7baa: $f7
    rst $00                                       ; $7bab: $c7
    ld e, h                                       ; $7bac: $5c
    rst $30                                       ; $7bad: $f7
    sbc [hl]                                      ; $7bae: $9e
    ld e, l                                       ; $7baf: $5d
    rst $30                                       ; $7bb0: $f7
    ld h, e                                       ; $7bb1: $63
    ld e, [hl]                                    ; $7bb2: $5e
    rst $30                                       ; $7bb3: $f7
    ld [hl], a                                    ; $7bb4: $77
    ld e, a                                       ; $7bb5: $5f
    rst $30                                       ; $7bb6: $f7
    db $ec                                        ; $7bb7: $ec
    ld h, b                                       ; $7bb8: $60
    rst $30                                       ; $7bb9: $f7
    sbc e                                         ; $7bba: $9b
    ld h, d                                       ; $7bbb: $62
    rst $30                                       ; $7bbc: $f7

jr_008_7bbd:
    ld [hl], h                                    ; $7bbd: $74
    ld h, e                                       ; $7bbe: $63
    rst $30                                       ; $7bbf: $f7
    sbc e                                         ; $7bc0: $9b
    ld h, e                                       ; $7bc1: $63
    rst $30                                       ; $7bc2: $f7
    db $d3                                        ; $7bc3: $d3
    ld h, e                                       ; $7bc4: $63
    rst $30                                       ; $7bc5: $f7
    ld a, [de]                                    ; $7bc6: $1a
    ld h, h                                       ; $7bc7: $64
    rst $30                                       ; $7bc8: $f7
    adc a                                         ; $7bc9: $8f
    ld h, h                                       ; $7bca: $64
    rst $30                                       ; $7bcb: $f7
    inc a                                         ; $7bcc: $3c
    ld h, l                                       ; $7bcd: $65
    rst $30                                       ; $7bce: $f7
    rrca                                          ; $7bcf: $0f
    ld h, [hl]                                    ; $7bd0: $66
    rst $30                                       ; $7bd1: $f7
    ld [$f766], a                                 ; $7bd2: $ea $66 $f7
    adc l                                         ; $7bd5: $8d
    ld h, a                                       ; $7bd6: $67
    rst $30                                       ; $7bd7: $f7
    xor $67                                       ; $7bd8: $ee $67
    rst $30                                       ; $7bda: $f7
    dec l                                         ; $7bdb: $2d
    ld l, b                                       ; $7bdc: $68
    rst $30                                       ; $7bdd: $f7
    ld e, h                                       ; $7bde: $5c
    ld l, b                                       ; $7bdf: $68
    rst $30                                       ; $7be0: $f7
    ld [hl], h                                    ; $7be1: $74
    ld l, b                                       ; $7be2: $68
    rst $30                                       ; $7be3: $f7
    adc [hl]                                      ; $7be4: $8e
    ld l, b                                       ; $7be5: $68

jr_008_7be6:
    rst $30                                       ; $7be6: $f7
    xor b                                         ; $7be7: $a8
    ld l, b                                       ; $7be8: $68
    rst $30                                       ; $7be9: $f7
    ld [c], a                                     ; $7bea: $e2
    ld l, b                                       ; $7beb: $68
    rst $30                                       ; $7bec: $f7
    add hl, hl                                    ; $7bed: $29
    ld l, c                                       ; $7bee: $69
    rst $30                                       ; $7bef: $f7
    ld c, c                                       ; $7bf0: $49
    ld l, c                                       ; $7bf1: $69
    rst $30                                       ; $7bf2: $f7
    ld l, c                                       ; $7bf3: $69

Call_008_7bf4:
    ld l, c                                       ; $7bf4: $69
    rst $30                                       ; $7bf5: $f7
    adc c                                         ; $7bf6: $89
    ld l, c                                       ; $7bf7: $69
    rst $30                                       ; $7bf8: $f7
    add $69                                       ; $7bf9: $c6 $69
    rst $30                                       ; $7bfb: $f7
    dec de                                        ; $7bfc: $1b
    ld l, d                                       ; $7bfd: $6a
    rst $30                                       ; $7bfe: $f7
    sub d                                         ; $7bff: $92
    ld l, d                                       ; $7c00: $6a

Jump_008_7c01:
    rst $30                                       ; $7c01: $f7
    ld e, $6b                                     ; $7c02: $1e $6b
    rst $30                                       ; $7c04: $f7
    ld a, $6b                                     ; $7c05: $3e $6b
    rst $30                                       ; $7c07: $f7
    ld e, [hl]                                    ; $7c08: $5e
    ld l, e                                       ; $7c09: $6b
    rst $30                                       ; $7c0a: $f7
    sbc l                                         ; $7c0b: $9d
    ld l, e                                       ; $7c0c: $6b
    rst $30                                       ; $7c0d: $f7
    call nc, $f76b                                ; $7c0e: $d4 $6b $f7
    rla                                           ; $7c11: $17
    ld l, h                                       ; $7c12: $6c
    rst $30                                       ; $7c13: $f7
    add a                                         ; $7c14: $87
    ld l, h                                       ; $7c15: $6c
    rst $30                                       ; $7c16: $f7
    cp [hl]                                       ; $7c17: $be
    ld l, h                                       ; $7c18: $6c
    rst $30                                       ; $7c19: $f7
    ld bc, $f76d                                  ; $7c1a: $01 $6d $f7
    ld b, h                                       ; $7c1d: $44
    ld l, l                                       ; $7c1e: $6d
    rst $30                                       ; $7c1f: $f7
    ld e, a                                       ; $7c20: $5f
    ld l, l                                       ; $7c21: $6d
    rst $30                                       ; $7c22: $f7
    ld a, d                                       ; $7c23: $7a
    ld l, l                                       ; $7c24: $6d
    rst $30                                       ; $7c25: $f7
    sbc [hl]                                      ; $7c26: $9e
    ld l, l                                       ; $7c27: $6d
    rst $30                                       ; $7c28: $f7
    call z, $f76d                                 ; $7c29: $cc $6d $f7
    inc h                                         ; $7c2c: $24
    ld l, [hl]                                    ; $7c2d: $6e
    rst $30                                       ; $7c2e: $f7
    jp hl                                         ; $7c2f: $e9


    ld l, [hl]                                    ; $7c30: $6e
    rst $30                                       ; $7c31: $f7
    xor d                                         ; $7c32: $aa
    ld l, a                                       ; $7c33: $6f
    rst $30                                       ; $7c34: $f7
    ld l, e                                       ; $7c35: $6b
    ld [hl], b                                    ; $7c36: $70
    rst $30                                       ; $7c37: $f7
    inc l                                         ; $7c38: $2c
    ld [hl], c                                    ; $7c39: $71
    rst $30                                       ; $7c3a: $f7
    xor $71                                       ; $7c3b: $ee $71
    rst $30                                       ; $7c3d: $f7
    ld b, [hl]                                    ; $7c3e: $46
    ld [hl], d                                    ; $7c3f: $72
    rst $30                                       ; $7c40: $f7
    sbc d                                         ; $7c41: $9a
    ld [hl], d                                    ; $7c42: $72
    rst $30                                       ; $7c43: $f7
    add sp, $72                                   ; $7c44: $e8 $72
    rst $30                                       ; $7c46: $f7
    ld [$f773], sp                                ; $7c47: $08 $73 $f7
    ld [hl], a                                    ; $7c4a: $77
    ld [hl], e                                    ; $7c4b: $73
    rst $30                                       ; $7c4c: $f7
    ld [hl], b                                    ; $7c4d: $70
    ld [hl], h                                    ; $7c4e: $74
    rst $30                                       ; $7c4f: $f7
    sbc l                                         ; $7c50: $9d
    ld [hl], l                                    ; $7c51: $75
    rst $30                                       ; $7c52: $f7
    ld sp, hl                                     ; $7c53: $f9
    halt                                          ; $7c54: $76
    rst $30                                       ; $7c55: $f7
    ld l, c                                       ; $7c56: $69
    ld a, b                                       ; $7c57: $78
    rst $30                                       ; $7c58: $f7
    ret nc                                        ; $7c59: $d0

    ld a, c                                       ; $7c5a: $79
    rst $30                                       ; $7c5b: $f7
    add hl, sp                                    ; $7c5c: $39
    ld a, e                                       ; $7c5d: $7b
    rst $30                                       ; $7c5e: $f7
    ld d, l                                       ; $7c5f: $55
    ld a, e                                       ; $7c60: $7b
    rst $30                                       ; $7c61: $f7
    ld [hl], c                                    ; $7c62: $71
    ld a, e                                       ; $7c63: $7b
    rst $30                                       ; $7c64: $f7
    and h                                         ; $7c65: $a4
    ld a, e                                       ; $7c66: $7b
    rst $30                                       ; $7c67: $f7
    push de                                       ; $7c68: $d5
    ld a, e                                       ; $7c69: $7b
    rst $30                                       ; $7c6a: $f7
    ld b, $7c                                     ; $7c6b: $06 $7c
    rst $30                                       ; $7c6d: $f7
    scf                                           ; $7c6e: $37
    ld a, h                                       ; $7c6f: $7c
    rst $30                                       ; $7c70: $f7
    ld l, b                                       ; $7c71: $68
    ld a, h                                       ; $7c72: $7c
    rst $30                                       ; $7c73: $f7
    sbc e                                         ; $7c74: $9b
    ld a, h                                       ; $7c75: $7c
    rst $30                                       ; $7c76: $f7
    call z, $f77c                                 ; $7c77: $cc $7c $f7
    push af                                       ; $7c7a: $f5
    ld a, h                                       ; $7c7b: $7c
    rst $30                                       ; $7c7c: $f7
    inc h                                         ; $7c7d: $24
    ld a, l                                       ; $7c7e: $7d
    rst $30                                       ; $7c7f: $f7
    ld c, d                                       ; $7c80: $4a
    ld a, l                                       ; $7c81: $7d
    rst $30                                       ; $7c82: $f7
    ld l, e                                       ; $7c83: $6b
    ld a, l                                       ; $7c84: $7d
    rst $30                                       ; $7c85: $f7

Call_008_7c86:
    adc l                                         ; $7c86: $8d
    ld a, l                                       ; $7c87: $7d
    rst $30                                       ; $7c88: $f7
    xor a                                         ; $7c89: $af
    ld a, l                                       ; $7c8a: $7d
    rst $30                                       ; $7c8b: $f7
    push de                                       ; $7c8c: $d5
    ld a, l                                       ; $7c8d: $7d
    rst $30                                       ; $7c8e: $f7
    di                                            ; $7c8f: $f3
    ld a, l                                       ; $7c90: $7d
    rst $30                                       ; $7c91: $f7
    ld e, $7e                                     ; $7c92: $1e $7e
    rst $30                                       ; $7c94: $f7
    ccf                                           ; $7c95: $3f
    ld a, [hl]                                    ; $7c96: $7e
    rst $30                                       ; $7c97: $f7
    ld h, c                                       ; $7c98: $61
    ld a, [hl]                                    ; $7c99: $7e
    rst $30                                       ; $7c9a: $f7
    add e                                         ; $7c9b: $83
    ld a, [hl]                                    ; $7c9c: $7e
    rst $30                                       ; $7c9d: $f7
    and b                                         ; $7c9e: $a0
    ld a, [hl]                                    ; $7c9f: $7e
    rst $30                                       ; $7ca0: $f7
    add $7e                                       ; $7ca1: $c6 $7e
    rst $30                                       ; $7ca3: $f7
    ld [c], a                                     ; $7ca4: $e2
    ld a, [hl]                                    ; $7ca5: $7e
    rst $30                                       ; $7ca6: $f7
    db $f4                                        ; $7ca7: $f4
    ld a, [hl]                                    ; $7ca8: $7e
    rst $30                                       ; $7ca9: $f7
    inc c                                         ; $7caa: $0c
    ld a, a                                       ; $7cab: $7f
    rst $30                                       ; $7cac: $f7
    jr z, @+$81                                   ; $7cad: $28 $7f

    ld hl, sp+$01                                 ; $7caf: $f8 $01
    ld b, b                                       ; $7cb1: $40
    rst $30                                       ; $7cb2: $f7
    ld [hl], e                                    ; $7cb3: $73
    ld a, a                                       ; $7cb4: $7f
    rst $30                                       ; $7cb5: $f7
    sbc e                                         ; $7cb6: $9b
    ld a, a                                       ; $7cb7: $7f
    ld hl, sp-$60                                 ; $7cb8: $f8 $a0
    ld b, b                                       ; $7cba: $40
    ld hl, sp+$04                                 ; $7cbb: $f8 $04
    ld b, c                                       ; $7cbd: $41
    ld hl, sp+$76                                 ; $7cbe: $f8 $76
    ld b, c                                       ; $7cc0: $41
    ld hl, sp-$01                                 ; $7cc1: $f8 $ff
    ld b, c                                       ; $7cc3: $41
    ld hl, sp+$7c                                 ; $7cc4: $f8 $7c
    ld b, d                                       ; $7cc6: $42
    ld hl, sp-$1c                                 ; $7cc7: $f8 $e4
    ld b, d                                       ; $7cc9: $42
    rst $30                                       ; $7cca: $f7
    db $db                                        ; $7ccb: $db
    ld a, a                                       ; $7ccc: $7f
    ld hl, sp+$26                                 ; $7ccd: $f8 $26
    ld b, e                                       ; $7ccf: $43
    ld hl, sp+$55                                 ; $7cd0: $f8 $55
    ld b, e                                       ; $7cd2: $43
    ld hl, sp-$65                                 ; $7cd3: $f8 $9b
    ld b, e                                       ; $7cd5: $43
    ld hl, sp-$07                                 ; $7cd6: $f8 $f9
    ld b, e                                       ; $7cd8: $43
    ld hl, sp+$57                                 ; $7cd9: $f8 $57
    ld b, h                                       ; $7cdb: $44
    ld hl, sp-$59                                 ; $7cdc: $f8 $a7
    ld b, h                                       ; $7cde: $44
    ld hl, sp-$0b                                 ; $7cdf: $f8 $f5
    ld b, h                                       ; $7ce1: $44
    ld hl, sp+$4f                                 ; $7ce2: $f8 $4f
    ld b, l                                       ; $7ce4: $45
    ld hl, sp-$6a                                 ; $7ce5: $f8 $96
    ld b, l                                       ; $7ce7: $45
    ld hl, sp-$23                                 ; $7ce8: $f8 $dd
    ld b, l                                       ; $7cea: $45
    ld hl, sp+$24                                 ; $7ceb: $f8 $24
    ld b, [hl]                                    ; $7ced: $46
    ld hl, sp+$6b                                 ; $7cee: $f8 $6b

Jump_008_7cf0:
    ld b, [hl]                                    ; $7cf0: $46
    ld hl, sp-$72                                 ; $7cf1: $f8 $8e
    ld b, [hl]                                    ; $7cf3: $46
    ld hl, sp-$43                                 ; $7cf4: $f8 $bd
    ld b, [hl]                                    ; $7cf6: $46
    ld hl, sp-$08                                 ; $7cf7: $f8 $f8
    ld b, [hl]                                    ; $7cf9: $46
    ld hl, sp+$48                                 ; $7cfa: $f8 $48
    ld b, a                                       ; $7cfc: $47
    ld hl, sp-$52                                 ; $7cfd: $f8 $ae
    ld b, a                                       ; $7cff: $47
    ld hl, sp-$11                                 ; $7d00: $f8 $ef
    ld b, a                                       ; $7d02: $47
    ld hl, sp+$38                                 ; $7d03: $f8 $38
    ld c, b                                       ; $7d05: $48
    ld hl, sp-$7d                                 ; $7d06: $f8 $83
    ld c, b                                       ; $7d08: $48
    ld hl, sp-$67                                 ; $7d09: $f8 $99
    ld c, b                                       ; $7d0b: $48
    ld hl, sp-$51                                 ; $7d0c: $f8 $af
    ld c, b                                       ; $7d0e: $48
    ld hl, sp-$3b                                 ; $7d0f: $f8 $c5
    ld c, b                                       ; $7d11: $48
    ld hl, sp-$1e                                 ; $7d12: $f8 $e2
    ld c, b                                       ; $7d14: $48
    ld hl, sp+$15                                 ; $7d15: $f8 $15

Call_008_7d17:
    ld c, c                                       ; $7d17: $49
    ld hl, sp+$7a                                 ; $7d18: $f8 $7a
    ld c, c                                       ; $7d1a: $49
    ld hl, sp+$15                                 ; $7d1b: $f8 $15
    ld c, d                                       ; $7d1d: $4a
    ld hl, sp-$51                                 ; $7d1e: $f8 $af
    ld c, d                                       ; $7d20: $4a
    ld hl, sp+$4a                                 ; $7d21: $f8 $4a
    ld c, e                                       ; $7d23: $4b
    ld hl, sp-$1c                                 ; $7d24: $f8 $e4
    ld c, e                                       ; $7d26: $4b
    ld hl, sp-$70                                 ; $7d27: $f8 $90
    ld c, h                                       ; $7d29: $4c
    ld hl, sp+$1c                                 ; $7d2a: $f8 $1c
    ld c, l                                       ; $7d2c: $4d
    ld hl, sp+$7c                                 ; $7d2d: $f8 $7c
    ld c, l                                       ; $7d2f: $4d
    ld hl, sp-$67                                 ; $7d30: $f8 $99
    ld c, l                                       ; $7d32: $4d
    ld hl, sp-$48                                 ; $7d33: $f8 $b8
    ld c, l                                       ; $7d35: $4d
    ld hl, sp-$2f                                 ; $7d36: $f8 $d1
    ld c, l                                       ; $7d38: $4d
    ld hl, sp-$08                                 ; $7d39: $f8 $f8
    ld c, l                                       ; $7d3b: $4d
    ld hl, sp+$0e                                 ; $7d3c: $f8 $0e
    ld c, [hl]                                    ; $7d3e: $4e
    ld hl, sp+$37                                 ; $7d3f: $f8 $37
    ld c, [hl]                                    ; $7d41: $4e
    ld hl, sp+$79                                 ; $7d42: $f8 $79
    ld c, [hl]                                    ; $7d44: $4e
    ld hl, sp-$3d                                 ; $7d45: $f8 $c3
    ld c, [hl]                                    ; $7d47: $4e
    ld hl, sp-$08                                 ; $7d48: $f8 $f8
    ld c, [hl]                                    ; $7d4a: $4e
    ld hl, sp+$25                                 ; $7d4b: $f8 $25
    ld c, a                                       ; $7d4d: $4f
    ld hl, sp+$5f                                 ; $7d4e: $f8 $5f
    ld c, a                                       ; $7d50: $4f
    ld hl, sp-$73                                 ; $7d51: $f8 $8d
    ld c, a                                       ; $7d53: $4f
    ld hl, sp-$3c                                 ; $7d54: $f8 $c4
    ld c, a                                       ; $7d56: $4f
    ld hl, sp-$16                                 ; $7d57: $f8 $ea
    ld c, a                                       ; $7d59: $4f
    ld hl, sp+$1b                                 ; $7d5a: $f8 $1b
    ld d, b                                       ; $7d5c: $50
    ld hl, sp+$41                                 ; $7d5d: $f8 $41
    ld d, b                                       ; $7d5f: $50
    ld hl, sp+$55                                 ; $7d60: $f8 $55
    ld d, b                                       ; $7d62: $50
    ld hl, sp+$69                                 ; $7d63: $f8 $69
    ld d, b                                       ; $7d65: $50
    ld hl, sp+$7d                                 ; $7d66: $f8 $7d
    ld d, b                                       ; $7d68: $50

Jump_008_7d69:
    ld hl, sp-$6f                                 ; $7d69: $f8 $91
    ld d, b                                       ; $7d6b: $50
    ld hl, sp-$5b                                 ; $7d6c: $f8 $a5
    ld d, b                                       ; $7d6e: $50
    ld hl, sp-$46                                 ; $7d6f: $f8 $ba
    ld d, b                                       ; $7d71: $50
    ld hl, sp-$31                                 ; $7d72: $f8 $cf
    ld d, b                                       ; $7d74: $50
    ld hl, sp-$1c                                 ; $7d75: $f8 $e4
    ld d, b                                       ; $7d77: $50
    ld hl, sp-$08                                 ; $7d78: $f8 $f8
    ld d, b                                       ; $7d7a: $50
    ld hl, sp+$0c                                 ; $7d7b: $f8 $0c
    ld d, c                                       ; $7d7d: $51
    ld hl, sp+$20                                 ; $7d7e: $f8 $20
    ld d, c                                       ; $7d80: $51
    ld hl, sp+$34                                 ; $7d81: $f8 $34
    ld d, c                                       ; $7d83: $51
    ld hl, sp+$48                                 ; $7d84: $f8 $48
    ld d, c                                       ; $7d86: $51
    ld hl, sp+$5c                                 ; $7d87: $f8 $5c
    ld d, c                                       ; $7d89: $51
    ld hl, sp+$71                                 ; $7d8a: $f8 $71
    ld d, c                                       ; $7d8c: $51
    ld hl, sp-$7a                                 ; $7d8d: $f8 $86
    ld d, c                                       ; $7d8f: $51
    ld hl, sp-$65                                 ; $7d90: $f8 $9b
    ld d, c                                       ; $7d92: $51
    ld hl, sp-$50                                 ; $7d93: $f8 $b0
    ld d, c                                       ; $7d95: $51
    ld hl, sp-$3b                                 ; $7d96: $f8 $c5
    ld d, c                                       ; $7d98: $51
    ld hl, sp-$27                                 ; $7d99: $f8 $d9
    ld d, c                                       ; $7d9b: $51
    ld hl, sp-$13                                 ; $7d9c: $f8 $ed
    ld d, c                                       ; $7d9e: $51
    ld hl, sp+$01                                 ; $7d9f: $f8 $01
    ld d, d                                       ; $7da1: $52
    ld hl, sp+$15                                 ; $7da2: $f8 $15
    ld d, d                                       ; $7da4: $52
    ld hl, sp+$29                                 ; $7da5: $f8 $29

Call_008_7da7:
    ld d, d                                       ; $7da7: $52
    ld hl, sp+$3e                                 ; $7da8: $f8 $3e
    ld d, d                                       ; $7daa: $52
    ld hl, sp+$53                                 ; $7dab: $f8 $53
    ld d, d                                       ; $7dad: $52
    ld hl, sp-$75                                 ; $7dae: $f8 $8b
    ld d, d                                       ; $7db0: $52
    ld hl, sp-$2e                                 ; $7db1: $f8 $d2
    ld d, d                                       ; $7db3: $52
    ld hl, sp+$22                                 ; $7db4: $f8 $22
    ld d, e                                       ; $7db6: $53
    ld hl, sp-$79                                 ; $7db7: $f8 $87
    ld d, e                                       ; $7db9: $53
    ld hl, sp-$14                                 ; $7dba: $f8 $ec
    ld d, e                                       ; $7dbc: $53
    ld hl, sp+$4d                                 ; $7dbd: $f8 $4d
    ld d, h                                       ; $7dbf: $54
    ld hl, sp-$4e                                 ; $7dc0: $f8 $b2
    ld d, h                                       ; $7dc2: $54
    ld hl, sp+$1e                                 ; $7dc3: $f8 $1e
    ld d, l                                       ; $7dc5: $55
    ld hl, sp-$7b                                 ; $7dc6: $f8 $85
    ld d, l                                       ; $7dc8: $55
    ld hl, sp-$0f                                 ; $7dc9: $f8 $f1
    ld d, l                                       ; $7dcb: $55
    ld hl, sp+$6e                                 ; $7dcc: $f8 $6e
    ld d, [hl]                                    ; $7dce: $56
    ld hl, sp-$06                                 ; $7dcf: $f8 $fa
    ld d, [hl]                                    ; $7dd1: $56
    ld hl, sp-$7d                                 ; $7dd2: $f8 $83
    ld d, a                                       ; $7dd4: $57
    ld hl, sp+$0f                                 ; $7dd5: $f8 $0f
    ld e, b                                       ; $7dd7: $58
    ld hl, sp-$63                                 ; $7dd8: $f8 $9d
    ld e, b                                       ; $7dda: $58
    ld hl, sp+$29                                 ; $7ddb: $f8 $29
    ld e, c                                       ; $7ddd: $59
    ld hl, sp-$4c                                 ; $7dde: $f8 $b4
    ld e, c                                       ; $7de0: $59
    ld hl, sp+$30                                 ; $7de1: $f8 $30
    ld e, d                                       ; $7de3: $5a
    ld hl, sp-$45                                 ; $7de4: $f8 $bb
    ld e, d                                       ; $7de6: $5a

Jump_008_7de7:
    ld hl, sp+$3e                                 ; $7de7: $f8 $3e
    ld e, e                                       ; $7de9: $5b
    ld hl, sp-$3a                                 ; $7dea: $f8 $c6
    ld e, e                                       ; $7dec: $5b
    ld hl, sp-$26                                 ; $7ded: $f8 $da
    ld e, e                                       ; $7def: $5b
    ld hl, sp-$0e                                 ; $7df0: $f8 $f2
    ld e, e                                       ; $7df2: $5b
    ld hl, sp+$20                                 ; $7df3: $f8 $20
    ld e, h                                       ; $7df5: $5c
    ld hl, sp+$61                                 ; $7df6: $f8 $61
    ld e, h                                       ; $7df8: $5c
    ld hl, sp-$5d                                 ; $7df9: $f8 $a3
    ld e, h                                       ; $7dfb: $5c
    ld hl, sp-$1a                                 ; $7dfc: $f8 $e6
    ld e, h                                       ; $7dfe: $5c
    ld hl, sp+$2b                                 ; $7dff: $f8 $2b
    ld e, l                                       ; $7e01: $5d
    ld hl, sp-$80                                 ; $7e02: $f8 $80
    ld e, l                                       ; $7e04: $5d
    ld hl, sp-$20                                 ; $7e05: $f8 $e0
    ld e, l                                       ; $7e07: $5d
    ld hl, sp+$47                                 ; $7e08: $f8 $47
    ld e, [hl]                                    ; $7e0a: $5e
    ld hl, sp-$43                                 ; $7e0b: $f8 $bd
    ld e, [hl]                                    ; $7e0d: $5e
    ld hl, sp+$4f                                 ; $7e0e: $f8 $4f
    ld e, a                                       ; $7e10: $5f
    ld hl, sp-$24                                 ; $7e11: $f8 $dc
    ld e, a                                       ; $7e13: $5f
    ld hl, sp+$6c                                 ; $7e14: $f8 $6c
    ld h, b                                       ; $7e16: $60
    ld hl, sp-$02                                 ; $7e17: $f8 $fe
    ld h, b                                       ; $7e19: $60
    ld hl, sp+$70                                 ; $7e1a: $f8 $70
    ld h, c                                       ; $7e1c: $61
    rst $30                                       ; $7e1d: $f7
    xor $7f                                       ; $7e1e: $ee $7f
    ld hl, sp-$4d                                 ; $7e20: $f8 $b3
    ld h, c                                       ; $7e22: $61
    ld hl, sp-$2f                                 ; $7e23: $f8 $d1
    ld h, c                                       ; $7e25: $61
    ld hl, sp+$02                                 ; $7e26: $f8 $02
    ld h, d                                       ; $7e28: $62
    ld hl, sp+$65                                 ; $7e29: $f8 $65
    ld h, d                                       ; $7e2b: $62
    ld hl, sp-$3a                                 ; $7e2c: $f8 $c6
    ld h, d                                       ; $7e2e: $62
    ld hl, sp+$21                                 ; $7e2f: $f8 $21
    ld h, e                                       ; $7e31: $63
    ld hl, sp+$64                                 ; $7e32: $f8 $64
    ld h, e                                       ; $7e34: $63
    ld hl, sp-$4b                                 ; $7e35: $f8 $b5
    ld h, e                                       ; $7e37: $63
    ld hl, sp-$07                                 ; $7e38: $f8 $f9
    ld h, e                                       ; $7e3a: $63
    ld hl, sp+$64                                 ; $7e3b: $f8 $64

Call_008_7e3d:
    ld h, h                                       ; $7e3d: $64
    ld hl, sp-$34                                 ; $7e3e: $f8 $cc
    ld h, h                                       ; $7e40: $64
    ld hl, sp+$30                                 ; $7e41: $f8 $30
    ld h, l                                       ; $7e43: $65
    ld hl, sp+$64                                 ; $7e44: $f8 $64
    ld h, l                                       ; $7e46: $65
    ld hl, sp-$80                                 ; $7e47: $f8 $80
    ld h, l                                       ; $7e49: $65
    ld hl, sp-$5c                                 ; $7e4a: $f8 $a4
    ld h, l                                       ; $7e4c: $65
    ld hl, sp-$0d                                 ; $7e4d: $f8 $f3
    ld h, l                                       ; $7e4f: $65
    ld hl, sp+$71                                 ; $7e50: $f8 $71
    ld h, [hl]                                    ; $7e52: $66
    ld hl, sp-$04                                 ; $7e53: $f8 $fc
    ld h, [hl]                                    ; $7e55: $66
    ld hl, sp-$75                                 ; $7e56: $f8 $8b
    ld h, a                                       ; $7e58: $67
    ld hl, sp+$1e                                 ; $7e59: $f8 $1e
    ld l, b                                       ; $7e5b: $68
    ld hl, sp-$65                                 ; $7e5c: $f8 $9b
    ld l, b                                       ; $7e5e: $68
    ld hl, sp+$2d                                 ; $7e5f: $f8 $2d

Jump_008_7e61:
    ld l, c                                       ; $7e61: $69
    ld hl, sp-$3d                                 ; $7e62: $f8 $c3
    ld l, c                                       ; $7e64: $69
    ld hl, sp+$5b                                 ; $7e65: $f8 $5b
    ld l, d                                       ; $7e67: $6a
    ld hl, sp+$71                                 ; $7e68: $f8 $71
    ld l, d                                       ; $7e6a: $6a
    ld hl, sp-$66                                 ; $7e6b: $f8 $9a
    ld l, d                                       ; $7e6d: $6a
    ld hl, sp-$24                                 ; $7e6e: $f8 $dc
    ld l, d                                       ; $7e70: $6a
    ld hl, sp+$26                                 ; $7e71: $f8 $26
    ld l, e                                       ; $7e73: $6b
    ld hl, sp+$5b                                 ; $7e74: $f8 $5b
    ld l, e                                       ; $7e76: $6b
    ld hl, sp-$78                                 ; $7e77: $f8 $88
    ld l, e                                       ; $7e79: $6b
    ld hl, sp-$3e                                 ; $7e7a: $f8 $c2
    ld l, e                                       ; $7e7c: $6b
    ld hl, sp-$10                                 ; $7e7d: $f8 $f0
    ld l, e                                       ; $7e7f: $6b
    ld hl, sp+$27                                 ; $7e80: $f8 $27
    ld l, h                                       ; $7e82: $6c
    ld hl, sp+$4d                                 ; $7e83: $f8 $4d
    ld l, h                                       ; $7e85: $6c
    ld hl, sp+$63                                 ; $7e86: $f8 $63
    ld l, h                                       ; $7e88: $6c
    ld hl, sp-$77                                 ; $7e89: $f8 $89
    ld l, h                                       ; $7e8b: $6c
    ld hl, sp-$48                                 ; $7e8c: $f8 $b8
    ld l, h                                       ; $7e8e: $6c
    ld hl, sp-$15                                 ; $7e8f: $f8 $eb
    ld l, h                                       ; $7e91: $6c
    ld hl, sp+$1e                                 ; $7e92: $f8 $1e
    ld l, l                                       ; $7e94: $6d
    ld hl, sp+$51                                 ; $7e95: $f8 $51
    ld l, l                                       ; $7e97: $6d
    ld hl, sp-$7c                                 ; $7e98: $f8 $84
    ld l, l                                       ; $7e9a: $6d
    ld hl, sp-$48                                 ; $7e9b: $f8 $b8
    ld l, l                                       ; $7e9d: $6d
    ld hl, sp-$12                                 ; $7e9e: $f8 $ee
    ld l, l                                       ; $7ea0: $6d
    ld hl, sp+$24                                 ; $7ea1: $f8 $24
    ld l, [hl]                                    ; $7ea3: $6e
    ld hl, sp+$56                                 ; $7ea4: $f8 $56
    ld l, [hl]                                    ; $7ea6: $6e
    ld hl, sp+$75                                 ; $7ea7: $f8 $75
    ld l, [hl]                                    ; $7ea9: $6e
    ld hl, sp-$57                                 ; $7eaa: $f8 $a9
    ld l, [hl]                                    ; $7eac: $6e
    ld hl, sp-$21                                 ; $7ead: $f8 $df
    ld l, [hl]                                    ; $7eaf: $6e
    ld hl, sp-$05                                 ; $7eb0: $f8 $fb
    ld l, [hl]                                    ; $7eb2: $6e
    ld hl, sp+$17                                 ; $7eb3: $f8 $17
    ld l, a                                       ; $7eb5: $6f
    ld hl, sp+$4a                                 ; $7eb6: $f8 $4a
    ld l, a                                       ; $7eb8: $6f
    ld hl, sp+$7b                                 ; $7eb9: $f8 $7b
    ld l, a                                       ; $7ebb: $6f
    ld hl, sp-$54                                 ; $7ebc: $f8 $ac
    ld l, a                                       ; $7ebe: $6f
    ld hl, sp-$23                                 ; $7ebf: $f8 $dd
    ld l, a                                       ; $7ec1: $6f
    ld hl, sp+$0e                                 ; $7ec2: $f8 $0e
    ld [hl], b                                    ; $7ec4: $70
    ld hl, sp+$41                                 ; $7ec5: $f8 $41
    ld [hl], b                                    ; $7ec7: $70
    ld hl, sp+$72                                 ; $7ec8: $f8 $72
    ld [hl], b                                    ; $7eca: $70
    ld hl, sp-$65                                 ; $7ecb: $f8 $9b
    ld [hl], b                                    ; $7ecd: $70
    ld hl, sp-$36                                 ; $7ece: $f8 $ca
    ld [hl], b                                    ; $7ed0: $70
    ld hl, sp-$10                                 ; $7ed1: $f8 $f0
    ld [hl], b                                    ; $7ed3: $70
    ld hl, sp+$11                                 ; $7ed4: $f8 $11
    ld [hl], c                                    ; $7ed6: $71
    ld hl, sp+$33                                 ; $7ed7: $f8 $33
    ld [hl], c                                    ; $7ed9: $71
    ld hl, sp+$55                                 ; $7eda: $f8 $55
    ld [hl], c                                    ; $7edc: $71

Jump_008_7edd:
    ld hl, sp+$7b                                 ; $7edd: $f8 $7b
    ld [hl], c                                    ; $7edf: $71
    ld hl, sp-$67                                 ; $7ee0: $f8 $99
    ld [hl], c                                    ; $7ee2: $71
    ld hl, sp-$3c                                 ; $7ee3: $f8 $c4
    ld [hl], c                                    ; $7ee5: $71
    ld hl, sp-$1b                                 ; $7ee6: $f8 $e5
    ld [hl], c                                    ; $7ee8: $71
    ld hl, sp+$07                                 ; $7ee9: $f8 $07
    ld [hl], d                                    ; $7eeb: $72
    ld hl, sp+$29                                 ; $7eec: $f8 $29
    ld [hl], d                                    ; $7eee: $72
    ld hl, sp+$46                                 ; $7eef: $f8 $46
    ld [hl], d                                    ; $7ef1: $72
    ld hl, sp+$6c                                 ; $7ef2: $f8 $6c
    ld [hl], d                                    ; $7ef4: $72
    ld hl, sp-$78                                 ; $7ef5: $f8 $88
    ld [hl], d                                    ; $7ef7: $72
    ld hl, sp-$66                                 ; $7ef8: $f8 $9a
    ld [hl], d                                    ; $7efa: $72
    ld hl, sp-$4e                                 ; $7efb: $f8 $b2
    ld [hl], d                                    ; $7efd: $72
    ld hl, sp-$32                                 ; $7efe: $f8 $ce
    ld [hl], d                                    ; $7f00: $72
    ld hl, sp+$19                                 ; $7f01: $f8 $19
    ld [hl], e                                    ; $7f03: $73
    ld hl, sp-$48                                 ; $7f04: $f8 $b8
    ld [hl], e                                    ; $7f06: $73
    ld hl, sp-$33                                 ; $7f07: $f8 $cd
    ld [hl], e                                    ; $7f09: $73
    ld hl, sp-$0d                                 ; $7f0a: $f8 $f3
    ld [hl], e                                    ; $7f0c: $73
    ld hl, sp+$6a                                 ; $7f0d: $f8 $6a
    ld [hl], h                                    ; $7f0f: $74
    ld hl, sp+$41                                 ; $7f10: $f8 $41
    ld [hl], l                                    ; $7f12: $75
    ld hl, sp+$06                                 ; $7f13: $f8 $06
    halt                                          ; $7f15: $76
    ld hl, sp+$1a                                 ; $7f16: $f8 $1a
    ld [hl], a                                    ; $7f18: $77
    ld hl, sp-$5c                                 ; $7f19: $f8 $a4
    ld a, b                                       ; $7f1b: $78
    ld hl, sp+$09                                 ; $7f1c: $f8 $09
    ld a, d                                       ; $7f1e: $7a
    ld hl, sp-$79                                 ; $7f1f: $f8 $87
    ld a, e                                       ; $7f21: $7b
    ld hl, sp-$04                                 ; $7f22: $f8 $fc
    ld a, h                                       ; $7f24: $7c
    ld hl, sp-$04                                 ; $7f25: $f8 $fc
    ld a, l                                       ; $7f27: $7d
    ld hl, sp+$38                                 ; $7f28: $f8 $38
    ld a, [hl]                                    ; $7f2a: $7e
    ld sp, hl                                     ; $7f2b: $f9
    ld bc, $f940                                  ; $7f2c: $01 $40 $f9
    ld d, [hl]                                    ; $7f2f: $56
    ld b, c                                       ; $7f30: $41
    ld sp, hl                                     ; $7f31: $f9
    add hl, hl                                    ; $7f32: $29
    ld b, e                                       ; $7f33: $43
    ld sp, hl                                     ; $7f34: $f9
    ld l, d                                       ; $7f35: $6a
    ld b, l                                       ; $7f36: $45
    ld sp, hl                                     ; $7f37: $f9
    xor $47                                       ; $7f38: $ee $47
    ld sp, hl                                     ; $7f3a: $f9
    ld h, b                                       ; $7f3b: $60
    ld c, d                                       ; $7f3c: $4a
    ld hl, sp-$0a                                 ; $7f3d: $f8 $f6
    ld a, [hl]                                    ; $7f3f: $7e
    ld hl, sp+$15                                 ; $7f40: $f8 $15
    ld a, a                                       ; $7f42: $7f
    ld hl, sp+$46                                 ; $7f43: $f8 $46
    ld a, a                                       ; $7f45: $7f
    ld hl, sp+$7a                                 ; $7f46: $f8 $7a
    ld a, a                                       ; $7f48: $7f
    ld hl, sp-$53                                 ; $7f49: $f8 $ad
    ld a, a                                       ; $7f4b: $7f
    ld hl, sp-$3a                                 ; $7f4c: $f8 $c6
    ld a, a                                       ; $7f4e: $7f
    ld sp, hl                                     ; $7f4f: $f9
    sbc d                                         ; $7f50: $9a
    ld c, h                                       ; $7f51: $4c
    ld sp, hl                                     ; $7f52: $f9
    ret                                           ; $7f53: $c9


    ld c, h                                       ; $7f54: $4c
    ld sp, hl                                     ; $7f55: $f9
    db $fc                                        ; $7f56: $fc

Jump_008_7f57:
    ld c, h                                       ; $7f57: $4c
    ld sp, hl                                     ; $7f58: $f9
    jr nc, jr_008_7fa8                            ; $7f59: $30 $4d

    ld sp, hl                                     ; $7f5b: $f9
    ld h, a                                       ; $7f5c: $67
    ld c, l                                       ; $7f5d: $4d
    ld hl, sp-$1c                                 ; $7f5e: $f8 $e4
    ld a, a                                       ; $7f60: $7f
    ld sp, hl                                     ; $7f61: $f9
    sub h                                         ; $7f62: $94
    ld c, l                                       ; $7f63: $4d

Call_008_7f64:
    ld sp, hl                                     ; $7f64: $f9
    or l                                          ; $7f65: $b5
    ld c, l                                       ; $7f66: $4d
    ld sp, hl                                     ; $7f67: $f9
    rst $10                                       ; $7f68: $d7
    ld c, l                                       ; $7f69: $4d
    ld sp, hl                                     ; $7f6a: $f9
    ld [bc], a                                    ; $7f6b: $02
    ld c, [hl]                                    ; $7f6c: $4e
    ld sp, hl                                     ; $7f6d: $f9
    jr z, jr_008_7fbe                             ; $7f6e: $28 $4e

    ld sp, hl                                     ; $7f70: $f9
    rla                                           ; $7f71: $17
    ld c, a                                       ; $7f72: $4f
    ld sp, hl                                     ; $7f73: $f9
    dec e                                         ; $7f74: $1d
    ld d, b                                       ; $7f75: $50
    ld sp, hl                                     ; $7f76: $f9
    inc h                                         ; $7f77: $24
    ld d, c                                       ; $7f78: $51
    ld sp, hl                                     ; $7f79: $f9
    dec [hl]                                      ; $7f7a: $35
    ld d, d                                       ; $7f7b: $52
    ld sp, hl                                     ; $7f7c: $f9
    ld a, $53                                     ; $7f7d: $3e $53
    ld sp, hl                                     ; $7f7f: $f9
    ld c, e                                       ; $7f80: $4b
    ld d, h                                       ; $7f81: $54
    ld sp, hl                                     ; $7f82: $f9
    ld d, b                                       ; $7f83: $50
    ld d, l                                       ; $7f84: $55
    ld sp, hl                                     ; $7f85: $f9
    ld e, d                                       ; $7f86: $5a
    ld d, [hl]                                    ; $7f87: $56
    ld sp, hl                                     ; $7f88: $f9
    ld c, h                                       ; $7f89: $4c
    ld d, a                                       ; $7f8a: $57
    ld sp, hl                                     ; $7f8b: $f9
    ld d, [hl]                                    ; $7f8c: $56
    ld e, b                                       ; $7f8d: $58
    ld sp, hl                                     ; $7f8e: $f9
    ld l, d                                       ; $7f8f: $6a
    ld e, c                                       ; $7f90: $59
    ld sp, hl                                     ; $7f91: $f9
    halt                                          ; $7f92: $76
    ld e, d                                       ; $7f93: $5a
    ld sp, hl                                     ; $7f94: $f9
    ld a, [hl]                                    ; $7f95: $7e
    ld e, e                                       ; $7f96: $5b
    ld sp, hl                                     ; $7f97: $f9
    sub h                                         ; $7f98: $94
    ld e, h                                       ; $7f99: $5c
    ld sp, hl                                     ; $7f9a: $f9
    sub a                                         ; $7f9b: $97
    ld e, l                                       ; $7f9c: $5d
    ld sp, hl                                     ; $7f9d: $f9
    sbc h                                         ; $7f9e: $9c
    ld e, [hl]                                    ; $7f9f: $5e
    ld sp, hl                                     ; $7fa0: $f9
    ld a, [de]                                    ; $7fa1: $1a
    ld e, a                                       ; $7fa2: $5f
    ld sp, hl                                     ; $7fa3: $f9
    sbc e                                         ; $7fa4: $9b
    ld e, a                                       ; $7fa5: $5f
    ld sp, hl                                     ; $7fa6: $f9
    inc e                                         ; $7fa7: $1c

jr_008_7fa8:
    ld h, b                                       ; $7fa8: $60
    ld sp, hl                                     ; $7fa9: $f9
    sbc l                                         ; $7faa: $9d
    ld h, b                                       ; $7fab: $60
    ld sp, hl                                     ; $7fac: $f9
    ld e, $61                                     ; $7fad: $1e $61
    ld sp, hl                                     ; $7faf: $f9
    sbc a                                         ; $7fb0: $9f
    ld h, c                                       ; $7fb1: $61
    ld sp, hl                                     ; $7fb2: $f9
    jr nz, @+$64                                  ; $7fb3: $20 $62

    ld sp, hl                                     ; $7fb5: $f9
    and c                                         ; $7fb6: $a1
    ld h, d                                       ; $7fb7: $62
    ld sp, hl                                     ; $7fb8: $f9
    ld [hl+], a                                   ; $7fb9: $22
    ld h, e                                       ; $7fba: $63
    ld sp, hl                                     ; $7fbb: $f9
    and e                                         ; $7fbc: $a3
    ld h, e                                       ; $7fbd: $63

jr_008_7fbe:
    ld sp, hl                                     ; $7fbe: $f9
    ld l, $64                                     ; $7fbf: $2e $64
    ld sp, hl                                     ; $7fc1: $f9
    or [hl]                                       ; $7fc2: $b6
    ld h, h                                       ; $7fc3: $64
    ld sp, hl                                     ; $7fc4: $f9
    ld a, $65                                     ; $7fc5: $3e $65
    ld sp, hl                                     ; $7fc7: $f9
    bit 4, l                                      ; $7fc8: $cb $65
    ld sp, hl                                     ; $7fca: $f9
    ld e, b                                       ; $7fcb: $58
    ld h, [hl]                                    ; $7fcc: $66
    ld sp, hl                                     ; $7fcd: $f9
    push hl                                       ; $7fce: $e5
    ld h, [hl]                                    ; $7fcf: $66
    ld sp, hl                                     ; $7fd0: $f9
    ld a, e                                       ; $7fd1: $7b
    ld h, a                                       ; $7fd2: $67
    ld sp, hl                                     ; $7fd3: $f9
    dec bc                                        ; $7fd4: $0b
    ld l, b                                       ; $7fd5: $68
    ld sp, hl                                     ; $7fd6: $f9
    sbc l                                         ; $7fd7: $9d
    ld l, b                                       ; $7fd8: $68
    ld sp, hl                                     ; $7fd9: $f9
    ld hl, $ff69                                  ; $7fda: $21 $69 $ff
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

Jump_008_7fe8:
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
