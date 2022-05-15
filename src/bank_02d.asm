; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

    dec l                                         ; $4000: $2d
    ld b, a                                       ; $4001: $47
    pop de                                        ; $4002: $d1
    ld l, $c5                                     ; $4003: $2e $c5
    adc [hl]                                      ; $4005: $8e
    ld [hl], h                                    ; $4006: $74
    ld h, e                                       ; $4007: $63
    db $dd                                        ; $4008: $dd
    inc d                                         ; $4009: $14
    dec sp                                        ; $400a: $3b
    dec d                                         ; $400b: $15
    cp h                                          ; $400c: $bc
    ld [hl], c                                    ; $400d: $71
    inc c                                         ; $400e: $0c
    ld b, l                                       ; $400f: $45
    db $ed                                        ; $4010: $ed
    and c                                         ; $4011: $a1
    ld e, e                                       ; $4012: $5b
    sub $5d                                       ; $4013: $d6 $5d
    ld b, c                                       ; $4015: $41
    set 0, b                                      ; $4016: $cb $c0
    jp Jump_02d_5b15                              ; $4018: $c3 $15 $5b


    add b                                         ; $401b: $80
    scf                                           ; $401c: $37
    adc [hl]                                      ; $401d: $8e
    and c                                         ; $401e: $a1
    jp c, Jump_02d_5b43                           ; $401f: $da $43 $5b

    daa                                           ; $4022: $27
    ret c                                         ; $4023: $d8

    ld [bc], a                                    ; $4024: $02
    cp h                                          ; $4025: $bc
    ld [hl], c                                    ; $4026: $71
    inc c                                         ; $4027: $0c
    db $ed                                        ; $4028: $ed
    cp d                                          ; $4029: $ba
    dec hl                                        ; $402a: $2b
    ld l, b                                       ; $402b: $68
    daa                                           ; $402c: $27
    sbc $8f                                       ; $402d: $de $8f
    db $eb                                        ; $402f: $eb
    ret nc                                        ; $4030: $d0

    pop af                                        ; $4031: $f1
    and h                                         ; $4032: $a4
    ld d, e                                       ; $4033: $53
    ld a, [hl-]                                   ; $4034: $3a
    dec e                                         ; $4035: $1d
    or l                                          ; $4036: $b5
    inc c                                         ; $4037: $0c

jr_02d_4038:
    xor b                                         ; $4038: $a8
    xor h                                         ; $4039: $ac
    ld sp, $434f                                  ; $403a: $31 $4f $43
    sub l                                         ; $403d: $95
    sbc h                                         ; $403e: $9c
    ld l, b                                       ; $403f: $68
    adc l                                         ; $4040: $8d
    push bc                                       ; $4041: $c5
    jp nc, $afcf                                  ; $4042: $d2 $cf $af

    ld e, e                                       ; $4045: $5b
    and l                                         ; $4046: $a5
    ld c, a                                       ; $4047: $4f
    add e                                         ; $4048: $83
    cp a                                          ; $4049: $bf
    call nc, $f9fb                                ; $404a: $d4 $fb $f9
    halt                                          ; $404d: $76
    jp c, $f65f                                   ; $404e: $da $5f $f6

    inc bc                                        ; $4051: $03
    ld c, a                                       ; $4052: $4f
    ld l, $fb                                     ; $4053: $2e $fb
    xor [hl]                                      ; $4055: $ae
    ccf                                           ; $4056: $3f
    jp Jump_000_0609                              ; $4057: $c3 $09 $06


    ld e, a                                       ; $405a: $5f
    rlc b                                         ; $405b: $cb $00
    adc $18                                       ; $405d: $ce $18
    ld b, e                                       ; $405f: $43
    ld a, [de]                                    ; $4060: $1a
    db $fc                                        ; $4061: $fc
    or c                                          ; $4062: $b1
    ld e, [hl]                                    ; $4063: $5e
    rrca                                          ; $4064: $0f
    inc [hl]                                      ; $4065: $34
    xor [hl]                                      ; $4066: $ae
    dec [hl]                                      ; $4067: $35
    rrca                                          ; $4068: $0f
    ld d, d                                       ; $4069: $52
    ld a, [hl+]                                   ; $406a: $2a
    ld b, l                                       ; $406b: $45
    ld a, c                                       ; $406c: $79
    dec bc                                        ; $406d: $0b
    dec e                                         ; $406e: $1d
    xor d                                         ; $406f: $aa
    ld a, [hl+]                                   ; $4070: $2a
    add hl, sp                                    ; $4071: $39
    pop de                                        ; $4072: $d1
    xor [hl]                                      ; $4073: $ae
    ld d, a                                       ; $4074: $57
    ld d, l                                       ; $4075: $55
    ld a, [$1eb4]                                 ; $4076: $fa $b4 $1e
    ld l, l                                       ; $4079: $6d
    and c                                         ; $407a: $a1
    and l                                         ; $407b: $a5
    dec c                                         ; $407c: $0d
    ld l, c                                       ; $407d: $69
    add hl, de                                    ; $407e: $19
    ret nc                                        ; $407f: $d0

    ld [$bd76], sp                                ; $4080: $08 $76 $bd
    rst $38                                       ; $4083: $ff
    dec c                                         ; $4084: $0d
    inc hl                                        ; $4085: $23
    inc d                                         ; $4086: $14
    dec hl                                        ; $4087: $2b
    ld a, [de]                                    ; $4088: $1a
    db $eb                                        ; $4089: $eb
    push af                                       ; $408a: $f5
    ld b, b                                       ; $408b: $40
    db $e3                                        ; $408c: $e3
    ld [hl], a                                    ; $408d: $77
    ld hl, sp+$5a                                 ; $408e: $f8 $5a
    di                                            ; $4090: $f3
    jr nz, jr_02d_4038                            ; $4091: $20 $a5

    ld d, d                                       ; $4093: $52
    ld d, h                                       ; $4094: $54
    ld a, e                                       ; $4095: $7b
    ld l, b                                       ; $4096: $68
    dec bc                                        ; $4097: $0b

jr_02d_4098:
    daa                                           ; $4098: $27
    ld l, d                                       ; $4099: $6a
    push de                                       ; $409a: $d5
    ld e, l                                       ; $409b: $5d
    ld a, a                                       ; $409c: $7f
    adc l                                         ; $409d: $8d
    ld a, c                                       ; $409e: $79
    pop de                                        ; $409f: $d1
    ld a, [de]                                    ; $40a0: $1a
    adc e                                         ; $40a1: $8b
    ld a, h                                       ; $40a2: $7c
    db $eb                                        ; $40a3: $eb
    inc b                                         ; $40a4: $04
    db $e3                                        ; $40a5: $e3
    ld h, d                                       ; $40a6: $62
    call c, $9630                                 ; $40a7: $dc $30 $96
    ld bc, $7cfb                                  ; $40aa: $01 $fb $7c
    ld d, l                                       ; $40ad: $55
    rst $10                                       ; $40ae: $d7
    sub l                                         ; $40af: $95
    and [hl]                                      ; $40b0: $a6
    cp a                                          ; $40b1: $bf
    add $f5                                       ; $40b2: $c6 $f5
    cp c                                          ; $40b4: $b9
    dec hl                                        ; $40b5: $2b
    cp c                                          ; $40b6: $b9
    ld h, d                                       ; $40b7: $62
    ld l, e                                       ; $40b8: $6b
    ld a, [bc]                                    ; $40b9: $0a
    inc [hl]                                      ; $40ba: $34
    and $b4                                       ; $40bb: $e6 $b4
    ld a, b                                       ; $40bd: $78
    sbc a                                         ; $40be: $9f
    sub [hl]                                      ; $40bf: $96
    ld a, d                                       ; $40c0: $7a
    rst $38                                       ; $40c1: $ff
    dec hl                                        ; $40c2: $2b
    ld a, [c]                                     ; $40c3: $f2
    xor l                                         ; $40c4: $ad
    add e                                         ; $40c5: $83
    ld h, d                                       ; $40c6: $62
    ld l, c                                       ; $40c7: $69
    xor a                                         ; $40c8: $af
    db $eb                                        ; $40c9: $eb
    adc d                                         ; $40ca: $8a
    jp hl                                         ; $40cb: $e9


    adc a                                         ; $40cc: $8f
    pop de                                        ; $40cd: $d1
    rst $20                                       ; $40ce: $e7
    ld a, [$3ab4]                                 ; $40cf: $fa $b4 $3a
    dec hl                                        ; $40d2: $2b
    rst $30                                       ; $40d3: $f7
    db $db                                        ; $40d4: $db
    push af                                       ; $40d5: $f5
    adc d                                         ; $40d6: $8a
    sub d                                         ; $40d7: $92
    xor e                                         ; $40d8: $ab
    inc c                                         ; $40d9: $0c
    ld h, e                                       ; $40da: $63
    ld e, b                                       ; $40db: $58
    ld h, d                                       ; $40dc: $62
    ld e, h                                       ; $40dd: $5c
    sub l                                         ; $40de: $95
    ld a, l                                       ; $40df: $7d
    xor [hl]                                      ; $40e0: $ae
    ld c, a                                       ; $40e1: $4f
    cp e                                          ; $40e2: $bb
    ret c                                         ; $40e3: $d8

    ld a, [c]                                     ; $40e4: $f2
    cp h                                          ; $40e5: $bc
    dec b                                         ; $40e6: $05
    dec e                                         ; $40e7: $1d
    xor d                                         ; $40e8: $aa
    db $e4                                        ; $40e9: $e4
    jr c, jr_02d_4098                             ; $40ea: $38 $ac

    ld a, c                                       ; $40ec: $79
    call $e7ae                                    ; $40ed: $cd $ae $e7
    ccf                                           ; $40f0: $3f
    ld e, a                                       ; $40f1: $5f
    cpl                                           ; $40f2: $2f
    cp l                                          ; $40f3: $bd
    rra                                           ; $40f4: $1f
    sub $d7                                       ; $40f5: $d6 $d7
    ld a, [hl-]                                   ; $40f7: $3a
    sbc [hl]                                      ; $40f8: $9e
    jp nc, $0b6b                                  ; $40f9: $d2 $6b $0b

    dec e                                         ; $40fc: $1d
    ret nc                                        ; $40fd: $d0

    xor d                                         ; $40fe: $aa
    db $e4                                        ; $40ff: $e4
    cp b                                          ; $4100: $b8
    ld d, [hl]                                    ; $4101: $56
    ld l, h                                       ; $4102: $6c
    rst $10                                       ; $4103: $d7
    ei                                            ; $4104: $fb
    ld l, c                                       ; $4105: $69
    inc h                                         ; $4106: $24
    ld [hl], b                                    ; $4107: $70
    push hl                                       ; $4108: $e5
    db $eb                                        ; $4109: $eb
    and l                                         ; $410a: $a5
    rst $30                                       ; $410b: $f7
    jp $5afa                                      ; $410c: $c3 $fa $5a


    rst $00                                       ; $410f: $c7
    ld d, e                                       ; $4110: $53
    ld a, d                                       ; $4111: $7a
    ld l, l                                       ; $4112: $6d
    ld bc, $2259                                  ; $4113: $01 $59 $22
    jp nc, $579a                                  ; $4116: $d2 $9a $57

    ld d, l                                       ; $4119: $55
    jp c, $dfbf                                   ; $411a: $da $bf $df

    ret z                                         ; $411d: $c8

    sub b                                         ; $411e: $90
    sub $58                                       ; $411f: $d6 $58
    adc h                                         ; $4121: $8c
    cp h                                          ; $4122: $bc
    ld l, [hl]                                    ; $4123: $6e
    xor h                                         ; $4124: $ac
    ld [$95c1], a                                 ; $4125: $ea $c1 $95
    xor a                                         ; $4128: $af
    sub a                                         ; $4129: $97
    sbc $0f                                       ; $412a: $de $0f
    db $eb                                        ; $412c: $eb
    ld l, e                                       ; $412d: $6b
    dec e                                         ; $412e: $1d
    ld c, a                                       ; $412f: $4f
    jp hl                                         ; $4130: $e9


    or l                                          ; $4131: $b5
    dec b                                         ; $4132: $05
    ld b, a                                       ; $4133: $47
    ldh [$f9], a                                  ; $4134: $e0 $f9
    and $ae                                       ; $4136: $e6 $ae
    inc a                                         ; $4138: $3c
    rst $08                                       ; $4139: $cf
    rst $30                                       ; $413a: $f7
    cp $0c                                        ; $413b: $fe $0c

jr_02d_413d:
    call c, $c690                                 ; $413d: $dc $90 $c6
    sub c                                         ; $4140: $91
    add $b5                                       ; $4141: $c6 $b5
    ld h, d                                       ; $4143: $62
    cp e                                          ; $4144: $bb
    ld e, [hl]                                    ; $4145: $5e
    add hl, hl                                    ; $4146: $29
    jp z, Jump_02d_4bd7                           ; $4147: $ca $d7 $4b

    rst $28                                       ; $414a: $ef
    add a                                         ; $414b: $87
    push af                                       ; $414c: $f5
    or l                                          ; $414d: $b5
    adc [hl]                                      ; $414e: $8e
    and a                                         ; $414f: $a7
    db $f4                                        ; $4150: $f4
    jp c, Jump_02d_4702                           ; $4151: $da $02 $47

    ld [$dcfc], sp                                ; $4154: $08 $fc $dc
    jp c, $adc4                                   ; $4157: $da $c4 $ad

    dec bc                                        ; $415a: $0b
    dec de                                        ; $415b: $1b
    and e                                         ; $415c: $a3

Jump_02d_415d:
    ld l, a                                       ; $415d: $6f
    ld c, b                                       ; $415e: $48
    db $e3                                        ; $415f: $e3
    rst $30                                       ; $4160: $f7
    rst $10                                       ; $4161: $d7
    ld a, l                                       ; $4162: $7d
    ld [hl], d                                    ; $4163: $72
    db $fc                                        ; $4164: $fc
    ld c, $7f                                     ; $4165: $0e $7f
    rst $38                                       ; $4167: $ff
    ld d, l                                       ; $4168: $55
    add hl, hl                                    ; $4169: $29
    rst $00                                       ; $416a: $c7
    or d                                          ; $416b: $b2
    add $62                                       ; $416c: $c6 $62
    push bc                                       ; $416e: $c5
    sbc b                                         ; $416f: $98
    ld e, e                                       ; $4170: $5b
    db $ed                                        ; $4171: $ed
    and c                                         ; $4172: $a1
    db $eb                                        ; $4173: $eb
    and l                                         ; $4174: $a5
    rst $30                                       ; $4175: $f7
    jp $5afa                                      ; $4176: $c3 $fa $5a


    rst $00                                       ; $4179: $c7
    ld d, e                                       ; $417a: $53
    ld a, d                                       ; $417b: $7a
    ld l, l                                       ; $417c: $6d
    ld bc, $1f1d                                  ; $417d: $01 $1d $1f
    jr jr_02d_413d                                ; $4180: $18 $bb

    ld [hl], $71                                  ; $4182: $36 $71
    push af                                       ; $4184: $f5
    or l                                          ; $4185: $b5
    rr a                                          ; $4186: $cb $1f
    add $32                                       ; $4188: $c6 $32
    and b                                         ; $418a: $a0
    ld e, l                                       ; $418b: $5d
    rst $30                                       ; $418c: $f7
    dec de                                        ; $418d: $1b
    add hl, de                                    ; $418e: $19
    jp nc, $56b8                                  ; $418f: $d2 $b8 $56

    ld l, h                                       ; $4192: $6c
    xor c                                         ; $4193: $a9
    rst $10                                       ; $4194: $d7
    dec l                                         ; $4195: $2d
    ld l, c                                       ; $4196: $69
    call $df03                                    ; $4197: $cd $03 $df
    push bc                                       ; $419a: $c5
    ld b, [hl]                                    ; $419b: $46
    db $fd                                        ; $419c: $fd
    ld a, h                                       ; $419d: $7c
    cp l                                          ; $419e: $bd
    db $f4                                        ; $419f: $f4
    ld a, [hl]                                    ; $41a0: $7e
    ld e, b                                       ; $41a1: $58
    ld e, a                                       ; $41a2: $5f
    db $eb                                        ; $41a3: $eb
    ld a, b                                       ; $41a4: $78
    ld c, d                                       ; $41a5: $4a
    xor a                                         ; $41a6: $af
    dec l                                         ; $41a7: $2d
    rst $00                                       ; $41a8: $c7
    sub l                                         ; $41a9: $95
    dec [hl]                                      ; $41aa: $35
    and $d6                                       ; $41ab: $e6 $d6
    dec l                                         ; $41ad: $2d
    dec l                                         ; $41ae: $2d
    inc bc                                        ; $41af: $03
    jp c, Jump_02d_5775                           ; $41b0: $da $75 $57

    ret nc                                        ; $41b3: $d0

    add sp, $61                                   ; $41b4: $e8 $61
    ld [hl], d                                    ; $41b6: $72
    rst $00                                       ; $41b7: $c7
    sbc d                                         ; $41b8: $9a
    ld a, e                                       ; $41b9: $7b
    call Call_000_3e3a                            ; $41ba: $cd $3a $3e
    ld [hl+], a                                   ; $41bd: $22
    ld a, c                                       ; $41be: $79
    sbc $02                                       ; $41bf: $de $02
    daa                                           ; $41c1: $27
    ld bc, $2de6                                  ; $41c2: $01 $e6 $2d
    sbc l                                         ; $41c5: $9d
    cp h                                          ; $41c6: $bc
    ld l, [hl]                                    ; $41c7: $6e
    adc h                                         ; $41c8: $8c
    rst $18                                       ; $41c9: $df
    ld l, $31                                     ; $41ca: $2e $31
    or $29                                        ; $41cc: $f6 $29
    rst $18                                       ; $41ce: $df
    ld c, [hl]                                    ; $41cf: $4e
    nop                                           ; $41d0: $00
    ld c, h                                       ; $41d1: $4c
    xor $ba                                       ; $41d2: $ee $ba
    dec hl                                        ; $41d4: $2b
    ld l, b                                       ; $41d5: $68
    ld e, c                                       ; $41d6: $59
    ld l, [hl]                                    ; $41d7: $6e
    xor c                                         ; $41d8: $a9
    sub h                                         ; $41d9: $94
    ld h, $5a                                     ; $41da: $26 $5a
    cp c                                          ; $41dc: $b9
    dec de                                        ; $41dd: $1b
    sub b                                         ; $41de: $90
    ld l, e                                       ; $41df: $6b
    rst $10                                       ; $41e0: $d7
    ld e, l                                       ; $41e1: $5d
    ld b, c                                       ; $41e2: $41
    dec sp                                        ; $41e3: $3b
    and $d5                                       ; $41e4: $e6 $d5
    inc d                                         ; $41e6: $14
    push hl                                       ; $41e7: $e5
    dec l                                         ; $41e8: $2d
    rst $00                                       ; $41e9: $c7
    ld hl, sp+$63                                 ; $41ea: $f8 $63
    ld a, l                                       ; $41ec: $7d
    ld d, l                                       ; $41ed: $55
    ld a, [$b794]                                 ; $41ee: $fa $94 $b7
    and a                                         ; $41f1: $a7
    cp h                                          ; $41f2: $bc
    sbc a                                         ; $41f3: $9f
    ld l, $aa                                     ; $41f4: $2e $aa
    db $f4                                        ; $41f6: $f4
    add hl, hl                                    ; $41f7: $29
    ld l, a                                       ; $41f8: $6f
    ld bc, $35f5                                  ; $41f9: $01 $f5 $35
    and $61                                       ; $41fc: $e6 $61
    inc l                                         ; $41fe: $2c
    inc bc                                        ; $41ff: $03
    ld a, [de]                                    ; $4200: $1a
    pop bc                                        ; $4201: $c1
    xor [hl]                                      ; $4202: $ae
    rst $30                                       ; $4203: $f7
    cp a                                          ; $4204: $bf
    ld h, c                                       ; $4205: $61
    db $ec                                        ; $4206: $ec
    inc c                                         ; $4207: $0c
    ld e, c                                       ; $4208: $59
    inc d                                         ; $4209: $14
    push de                                       ; $420a: $d5
    db $e4                                        ; $420b: $e4
    db $db                                        ; $420c: $db
    pop de                                        ; $420d: $d1
    add [hl]                                      ; $420e: $86
    or c                                          ; $420f: $b1
    inc d                                         ; $4210: $14
    ld [$88cf], a                                 ; $4211: $ea $cf $88
    db $f4                                        ; $4214: $f4
    add hl, bc                                    ; $4215: $09
    rst $18                                       ; $4216: $df
    ld e, a                                       ; $4217: $5f
    sbc l                                         ; $4218: $9d
    ld h, l                                       ; $4219: $65
    nop                                           ; $421a: $00
    ld b, a                                       ; $421b: $47
    or b                                          ; $421c: $b0
    or h                                          ; $421d: $b4
    rst $18                                       ; $421e: $df
    ld [hl-], a                                   ; $421f: $32
    and b                                         ; $4220: $a0
    ld c, a                                       ; $4221: $4f
    adc d                                         ; $4222: $8a
    db $e4                                        ; $4223: $e4
    ld a, [hl-]                                   ; $4224: $3a
    ld a, $22                                     ; $4225: $3e $22
    ld a, c                                       ; $4227: $79
    ld [hl], d                                    ; $4228: $72
    scf                                           ; $4229: $37
    ld b, $49                                     ; $422a: $06 $49
    dec hl                                        ; $422c: $2b
    adc d                                         ; $422d: $8a
    or c                                          ; $422e: $b1
    db $f4                                        ; $422f: $f4
    ld h, e                                       ; $4230: $63
    db $fc                                        ; $4231: $fc
    ld bc, $3a09                                  ; $4232: $01 $09 $3a
    rst $20                                       ; $4235: $e7
    dec l                                         ; $4236: $2d
    push af                                       ; $4237: $f5
    rst $28                                       ; $4238: $ef
    add [hl]                                      ; $4239: $86
    xor e                                         ; $423a: $ab
    sbc $1f                                       ; $423b: $de $1f
    ld a, [c]                                     ; $423d: $f2
    sbc e                                         ; $423e: $9b
    ld d, $e0                                     ; $423f: $16 $e0
    dec hl                                        ; $4241: $2b
    adc d                                         ; $4242: $8a
    or c                                          ; $4243: $b1
    db $f4                                        ; $4244: $f4
    ld h, e                                       ; $4245: $63
    db $fc                                        ; $4246: $fc
    ld bc, $3a09                                  ; $4247: $01 $09 $3a
    rst $20                                       ; $424a: $e7
    dec l                                         ; $424b: $2d
    sbc l                                         ; $424c: $9d
    ld h, b                                       ; $424d: $60
    ld e, h                                       ; $424e: $5c
    adc h                                         ; $424f: $8c
    dec de                                        ; $4250: $1b
    add $ba                                       ; $4251: $c6 $ba
    ld h, $d7                                     ; $4253: $26 $d7
    sbc d                                         ; $4255: $9a
    ld [bc], a                                    ; $4256: $02
    or c                                          ; $4257: $b1
    and $15                                       ; $4258: $e6 $15
    ld c, h                                       ; $425a: $4c
    xor [hl]                                      ; $425b: $ae
    db $e3                                        ; $425c: $e3
    inc hl                                        ; $425d: $23
    sub d                                         ; $425e: $92
    daa                                           ; $425f: $27
    rst $30                                       ; $4260: $f7
    ld h, b                                       ; $4261: $60
    inc b                                         ; $4262: $04
    ld c, e                                       ; $4263: $4b
    db $e3                                        ; $4264: $e3
    ld b, a                                       ; $4265: $47
    or a                                          ; $4266: $b7
    ld e, b                                       ; $4267: $58
    ld h, e                                       ; $4268: $63
    ld a, $57                                     ; $4269: $3e $57
    add h                                         ; $426b: $84
    xor d                                         ; $426c: $aa
    ld d, h                                       ; $426d: $54
    sub c                                         ; $426e: $91
    xor a                                         ; $426f: $af
    adc $ce                                       ; $4270: $ce $ce
    sub b                                         ; $4272: $90

jr_02d_4273:
    ld b, l                                       ; $4273: $45
    ld d, c                                       ; $4274: $51
    ld c, l                                       ; $4275: $4d
    sbc $02                                       ; $4276: $de $02
    sbc l                                         ; $4278: $9d
    ld h, b                                       ; $4279: $60
    ld l, c                                       ; $427a: $69
    cp c                                          ; $427b: $b9
    ld h, c                                       ; $427c: $61
    xor h                                         ; $427d: $ac
    ld b, d                                       ; $427e: $42
    ld b, c                                       ; $427f: $41
    rst $20                                       ; $4280: $e7
    ld [hl], c                                    ; $4281: $71
    dec l                                         ; $4282: $2d
    adc l                                         ; $4283: $8d
    ld b, l                                       ; $4284: $45
    sbc [hl]                                      ; $4285: $9e
    or a                                          ; $4286: $b7
    daa                                           ; $4287: $27
    db $fd                                        ; $4288: $fd
    ld a, l                                       ; $4289: $7d
    xor l                                         ; $428a: $ad
    ld sp, $7427                                  ; $428b: $31 $27 $74
    ld e, e                                       ; $428e: $5b
    ld h, e                                       ; $428f: $63
    or c                                          ; $4290: $b1

jr_02d_4291:
    or b                                          ; $4291: $b0
    rra                                           ; $4292: $1f
    ld l, e                                       ; $4293: $6b
    ld e, h                                       ; $4294: $5c
    sbc a                                         ; $4295: $9f
    cp e                                          ; $4296: $bb
    sub [hl]                                      ; $4297: $96
    ld bc, $0c95                                  ; $4298: $01 $95 $0c
    jr z, jr_02d_4273                             ; $429b: $28 $d6

    ld hl, sp+$63                                 ; $429d: $f8 $63
    jr nc, jr_02d_4291                            ; $429f: $30 $f0

    db $fd                                        ; $42a1: $fd
    ret z                                         ; $42a2: $c8

    or a                                          ; $42a3: $b7
    ld d, e                                       ; $42a4: $53
    push hl                                       ; $42a5: $e5
    adc h                                         ; $42a6: $8c
    adc $af                                       ; $42a7: $ce $af
    rst $00                                       ; $42a9: $c7
    inc a                                         ; $42aa: $3c
    adc b                                         ; $42ab: $88
    db $e4                                        ; $42ac: $e4
    adc d                                         ; $42ad: $8a
    ld h, d                                       ; $42ae: $62
    inc l                                         ; $42af: $2c
    di                                            ; $42b0: $f3
    xor b                                         ; $42b1: $a8
    ld c, l                                       ; $42b2: $4d
    ld l, h                                       ; $42b3: $6c
    ld bc, $0f59                                  ; $42b4: $01 $59 $0f
    db $10                                        ; $42b7: $10
    pop af                                        ; $42b8: $f1
    xor d                                         ; $42b9: $aa
    ld c, l                                       ; $42ba: $4d
    ld l, h                                       ; $42bb: $6c
    ld bc, $d827                                  ; $42bc: $01 $27 $d8
    ld a, [de]                                    ; $42bf: $1a
    ld a, a                                       ; $42c0: $7f
    rla                                           ; $42c1: $17
    db $db                                        ; $42c2: $db
    ldh a, [rOCPD]                                ; $42c3: $f0 $6b
    jp hl                                         ; $42c5: $e9


    add a                                         ; $42c6: $87
    sub c                                         ; $42c7: $91
    ld e, h                                       ; $42c8: $5c
    ld h, l                                       ; $42c9: $65
    sbc a                                         ; $42ca: $9f
    and l                                         ; $42cb: $a5
    di                                            ; $42cc: $f3
    rst $00                                       ; $42cd: $c7
    cp h                                          ; $42ce: $bc
    ld e, b                                       ; $42cf: $58
    db $e3                                        ; $42d0: $e3
    xor a                                         ; $42d1: $af
    ld [hl], c                                    ; $42d2: $71
    push bc                                       ; $42d3: $c5
    ld d, d                                       ; $42d4: $52
    rst $28                                       ; $42d5: $ef
    and a                                         ; $42d6: $a7

Jump_02d_42d7:
    sbc $8f                                       ; $42d7: $de $8f
    jp c, $16c4                                   ; $42d9: $da $c4 $16

    daa                                           ; $42dc: $27
    db $fd                                        ; $42dd: $fd
    add l                                         ; $42de: $85
    and $22                                       ; $42df: $e6 $22
    ld a, a                                       ; $42e1: $7f
    ret nz                                        ; $42e2: $c0

    ret z                                         ; $42e3: $c8

    dec l                                         ; $42e4: $2d
    cp c                                          ; $42e5: $b9
    adc [hl]                                      ; $42e6: $8e
    adc a                                         ; $42e7: $8f
    ld c, b                                       ; $42e8: $48
    ld e, [hl]                                    ; $42e9: $5e
    sbc e                                         ; $42ea: $9b
    ret c                                         ; $42eb: $d8

    ld [bc], a                                    ; $42ec: $02
    dec e                                         ; $42ed: $1d
    db $e4                                        ; $42ee: $e4
    rla                                           ; $42ef: $17
    ld h, $d7                                     ; $42f0: $26 $d7
    pop af                                        ; $42f2: $f1
    ld de, $f3c9                                  ; $42f3: $11 $c9 $f3
    xor l                                         ; $42f6: $ad
    inc de                                        ; $42f7: $13
    xor h                                         ; $42f8: $ac
    ld h, [hl]                                    ; $42f9: $66
    ld a, [hl]                                    ; $42fa: $7e
    ld c, e                                       ; $42fb: $4b
    sub a                                         ; $42fc: $97
    db $db                                        ; $42fd: $db
    push bc                                       ; $42fe: $c5
    ld b, [hl]                                    ; $42ff: $46
    or a                                          ; $4300: $b7
    ld e, b                                       ; $4301: $58
    sbc l                                         ; $4302: $9d
    ld [hl], c                                    ; $4303: $71

jr_02d_4304:
    ld b, c                                       ; $4304: $41
    rst $20                                       ; $4305: $e7
    and l                                         ; $4306: $a5
    rra                                           ; $4307: $1f
    add $8c                                       ; $4308: $c6 $8c
    or c                                          ; $430a: $b1
    ld c, a                                       ; $430b: $4f
    db $e3                                        ; $430c: $e3
    ld e, d                                       ; $430d: $5a
    db $e3                                        ; $430e: $e3
    adc a                                         ; $430f: $8f
    ld a, c                                       ; $4310: $79
    add hl, de                                    ; $4311: $19
    sub b                                         ; $4312: $90
    cpl                                           ; $4313: $2f
    inc bc                                        ; $4314: $03

jr_02d_4315:
    ld a, [hl+]                                   ; $4315: $2a
    add hl, de                                    ; $4316: $19
    cp b                                          ; $4317: $b8
    jp $065f                                      ; $4318: $c3 $5f $06


    ld [hl], b                                    ; $431b: $70
    adc h                                         ; $431c: $8c
    ld bc, $42ad                                  ; $431d: $01 $ad $42
    ld b, c                                       ; $4320: $41
    rst $20                                       ; $4321: $e7
    ld h, l                                       ; $4322: $65
    ld b, b                                       ; $4323: $40
    and e                                         ; $4324: $a3
    add a                                         ; $4325: $87
    ld a, c                                       ; $4326: $79
    dec bc                                        ; $4327: $0b
    dec e                                         ; $4328: $1d

jr_02d_4329:
    xor h                                         ; $4329: $ac
    jr z, jr_02d_4329                             ; $432a: $28 $fd

    ld l, d                                       ; $432c: $6a
    ld h, [hl]                                    ; $432d: $66
    inc de                                        ; $432e: $13
    adc h                                         ; $432f: $8c
    ld l, e                                       ; $4330: $6b
    push bc                                       ; $4331: $c5
    halt                                          ; $4332: $76
    or c                                          ; $4333: $b1
    db $ed                                        ; $4334: $ed
    ld e, a                                       ; $4335: $5f
    ld e, d                                       ; $4336: $5a
    ld b, $b4                                     ; $4337: $06 $b4
    ld l, h                                       ; $4339: $6c
    db $ed                                        ; $433a: $ed
    ld l, e                                       ; $433b: $6b
    pop af                                        ; $433c: $f1
    jr nc, jr_02d_4315                            ; $433d: $30 $d6

    ld e, b                                       ; $433f: $58
    xor h                                         ; $4340: $ac
    call nc, Call_02d_4da9                        ; $4341: $d4 $a9 $4d
    call c, Call_02d_788e                         ; $4344: $dc $8e $78
    jr jr_02d_4304                                ; $4347: $18 $bb

    ld b, h                                       ; $4349: $44
    and h                                         ; $434a: $a4
    dec [hl]                                      ; $434b: $35
    adc a                                         ; $434c: $8f
    ldh a, [$fd]                                  ; $434d: $f0 $fd
    sbc l                                         ; $434f: $9d
    add a                                         ; $4350: $87
    inc l                                         ; $4351: $2c
    sub [hl]                                      ; $4352: $96
    cp $79                                        ; $4353: $fe $79
    ld a, [hl+]                                   ; $4355: $2a
    inc a                                         ; $4356: $3c
    add hl, sp                                    ; $4357: $39
    sub l                                         ; $4358: $95
    and d                                         ; $4359: $a2
    sub c                                         ; $435a: $91
    add $82                                       ; $435b: $c6 $82
    sbc e                                         ; $435d: $9b
    and e                                         ; $435e: $a3
    ld e, e                                       ; $435f: $5b
    sbc $02                                       ; $4360: $de $02
    ld e, c                                       ; $4362: $59
    ld [hl], a                                    ; $4363: $77
    dec b                                         ; $4364: $05
    db $ed                                        ; $4365: $ed
    ld a, d                                       ; $4366: $7a
    ld d, l                                       ; $4367: $55
    and l                                         ; $4368: $a5
    push af                                       ; $4369: $f5
    ld l, b                                       ; $436a: $68
    set 0, b                                      ; $436b: $cb $c0
    dec e                                         ; $436d: $1d
    set 2, d                                      ; $436e: $cb $d2
    ld b, $34                                     ; $4370: $06 $34
    ld [hl], d                                    ; $4372: $72
    ld b, e                                       ; $4373: $43
    sub d                                         ; $4374: $92
    xor a                                         ; $4375: $af
    jr z, @-$38                                   ; $4376: $28 $c6

    cp h                                          ; $4378: $bc
    sbc d                                         ; $4379: $9a
    rlca                                          ; $437a: $07
    ld d, c                                       ; $437b: $51
    sbc e                                         ; $437c: $9b
    ret c                                         ; $437d: $d8

    ld [bc], a                                    ; $437e: $02
    ld b, a                                       ; $437f: $47
    and b                                         ; $4380: $a0
    cp $b2                                        ; $4381: $fe $b2
    rra                                           ; $4383: $1f
    call c, Call_000_3b92                         ; $4384: $dc $92 $3b

jr_02d_4387:
    sub $dc                                       ; $4387: $d6 $dc
    ld l, e                                       ; $4389: $6b
    ld a, [c]                                     ; $438a: $f2
    ld d, $27                                     ; $438b: $16 $27
    add e                                         ; $438d: $83
    ld c, d                                       ; $438e: $4a
    pop de                                        ; $438f: $d1
    ret c                                         ; $4390: $d8

    jr jr_02d_4387                                ; $4391: $18 $f4

    ret nc                                        ; $4393: $d0

    or l                                          ; $4394: $b5
    and $81                                       ; $4395: $e6 $81
    adc a                                         ; $4397: $8f
    dec hl                                        ; $4398: $2b
    sub [hl]                                      ; $4399: $96
    ld a, d                                       ; $439a: $7a
    ccf                                           ; $439b: $3f
    push af                                       ; $439c: $f5
    ld a, [hl]                                    ; $439d: $7e
    db $e4                                        ; $439e: $e4
    dec l                                         ; $439f: $2d
    ld b, a                                       ; $43a0: $47
    and b                                         ; $43a1: $a0
    cp $b2                                        ; $43a2: $fe $b2
    rra                                           ; $43a4: $1f
    call c, $ac76                                 ; $43a5: $dc $76 $ac
    cp c                                          ; $43a8: $b9
    rst $10                                       ; $43a9: $d7
    inc h                                         ; $43aa: $24
    add a                                         ; $43ab: $87
    ld h, l                                       ; $43ac: $65
    push hl                                       ; $43ad: $e5
    ld l, [hl]                                    ; $43ae: $6e
    adc h                                         ; $43af: $8c
    ld hl, $852d                                  ; $43b0: $21 $2d $85
    ld a, [$d8bb]                                 ; $43b3: $fa $bb $d8
    ld a, [c]                                     ; $43b6: $f2
    adc e                                         ; $43b7: $8b
    ld a, l                                       ; $43b8: $7d
    bit 3, e                                      ; $43b9: $cb $5b
    rst $00                                       ; $43bb: $c7
    ld a, b                                       ; $43bc: $78
    sub a                                         ; $43bd: $97
    sub a                                         ; $43be: $97
    ld d, [hl]                                    ; $43bf: $56
    ld h, a                                       ; $43c0: $67
    db $f4                                        ; $43c1: $f4
    jr nc, jr_02d_43fd                            ; $43c2: $30 $39

    inc l                                         ; $43c4: $2c
    ld h, e                                       ; $43c5: $63
    ld l, h                                       ; $43c6: $6c
    ld a, [$73d7]                                 ; $43c7: $fa $d7 $73
    xor l                                         ; $43ca: $ad
    ld l, e                                       ; $43cb: $6b
    ld [hl], d                                    ; $43cc: $72
    xor l                                         ; $43cd: $ad
    ld b, c                                       ; $43ce: $41
    ld d, a                                       ; $43cf: $57
    ld l, l                                       ; $43d0: $6d
    ld h, d                                       ; $43d1: $62
    dec bc                                        ; $43d2: $0b
    sbc l                                         ; $43d3: $9d
    ld h, b                                       ; $43d4: $60
    rst $38                                       ; $43d5: $ff
    xor [hl]                                      ; $43d6: $ae
    ld e, b                                       ; $43d7: $58
    inc hl                                        ; $43d8: $23
    and b                                         ; $43d9: $a0
    ld a, d                                       ; $43da: $7a
    ld e, l                                       ; $43db: $5d
    sub e                                         ; $43dc: $93
    ld l, e                                       ; $43dd: $6b
    adc l                                         ; $43de: $8d
    push bc                                       ; $43df: $c5
    xor [hl]                                      ; $43e0: $ae
    ld d, a                                       ; $43e1: $57
    ld d, l                                       ; $43e2: $55
    ld a, [de]                                    ; $43e3: $1a
    dec a                                         ; $43e4: $3d
    and b                                         ; $43e5: $a0
    dec d                                         ; $43e6: $15
    xor l                                         ; $43e7: $ad
    ld a, d                                       ; $43e8: $7a
    sbc a                                         ; $43e9: $9f
    ld l, e                                       ; $43ea: $6b
    ld b, l                                       ; $43eb: $45
    db $e3                                        ; $43ec: $e3
    ld c, b                                       ; $43ed: $48
    ld a, c                                       ; $43ee: $79
    dec bc                                        ; $43ef: $0b
    daa                                           ; $43f0: $27
    ld a, $88                                     ; $43f1: $3e $88

jr_02d_43f3:
    sbc c                                         ; $43f3: $99
    dec sp                                        ; $43f4: $3b
    ld [hl-], a                                   ; $43f5: $32
    rst $28                                       ; $43f6: $ef
    rst $00                                       ; $43f7: $c7
    ld [$e3ac], a                                 ; $43f8: $ea $ac $e3
    inc bc                                        ; $43fb: $03
    ld e, [hl]                                    ; $43fc: $5e

jr_02d_43fd:
    call z, $be79                                 ; $43fd: $cc $79 $be
    and e                                         ; $4400: $a3
    ld a, [hl]                                    ; $4401: $7e
    ld a, [de]                                    ; $4402: $1a
    adc e                                         ; $4403: $8b
    adc $1f                                       ; $4404: $ce $1f
    di                                            ; $4406: $f3
    ld h, d                                       ; $4407: $62
    cp $52                                        ; $4408: $fe $52
    adc d                                         ; $440a: $8a
    add hl, de                                    ; $440b: $19
    ld h, e                                       ; $440c: $63
    sbc a                                         ; $440d: $9f
    add $35                                       ; $440e: $c6 $35
    xor [hl]                                      ; $4410: $ae
    cp b                                          ; $4411: $b8
    db $f4                                        ; $4412: $f4
    cp c                                          ; $4413: $b9
    ld l, e                                       ; $4414: $6b
    inc e                                         ; $4415: $1c
    ld b, [hl]                                    ; $4416: $46
    ld l, [hl]                                    ; $4417: $6e

jr_02d_4418:
    ld hl, sp-$0d                                 ; $4418: $f8 $f3
    ld d, $a7                                     ; $441a: $16 $a7
    ld [bc], a                                    ; $441c: $02
    ld [hl-], a                                   ; $441d: $32
    ld a, [hl-]                                   ; $441e: $3a
    cp a                                          ; $441f: $bf
    ld e, [hl]                                    ; $4420: $5e
    push af                                       ; $4421: $f5
    ld [hl], b                                    ; $4422: $70
    db $f4                                        ; $4423: $f4
    jr nz, jr_02d_4418                            ; $4424: $20 $f2

    ld d, $27                                     ; $4426: $16 $27
    db $fd                                        ; $4428: $fd
    ld sp, $5736                                  ; $4429: $31 $36 $57
    or $c3                                        ; $442c: $f6 $c3
    rst $08                                       ; $442e: $cf
    ld e, l                                       ; $442f: $5d
    db $eb                                        ; $4430: $eb
    ld hl, sp-$80                                 ; $4431: $f8 $80
    rla                                           ; $4433: $17
    ld [hl], e                                    ; $4434: $73
    ld a, $fd                                     ; $4435: $3e $fd
    and l                                         ; $4437: $a5
    adc h                                         ; $4438: $8c
    ld h, h                                       ; $4439: $64
    sub b                                         ; $443a: $90
    inc e                                         ; $443b: $1c
    rst $10                                       ; $443c: $d7
    jp z, $80dd                                   ; $443d: $ca $dd $80

    ld e, h                                       ; $4440: $5c
    cp e                                          ; $4441: $bb
    cp d                                          ; $4442: $ba
    and e                                         ; $4443: $a3
    db $db                                        ; $4444: $db
    jr c, jr_02d_43f3                             ; $4445: $38 $ac

jr_02d_4447:
    ret c                                         ; $4447: $d8

    sub l                                         ; $4448: $95
    rst $28                                       ; $4449: $ef
    jr jr_02d_44bf                                ; $444a: $18 $73

    xor [hl]                                      ; $444c: $ae
    di                                            ; $444d: $f3
    sub a                                         ; $444e: $97
    ld b, d                                       ; $444f: $42
    db $fd                                        ; $4450: $fd
    ld sp, $562f                                  ; $4451: $31 $2f $56
    add hl, de                                    ; $4454: $19
    cp $98                                        ; $4455: $fe $98
    ld l, b                                       ; $4457: $68
    call z, Call_000_358b                         ; $4458: $cc $8b $35
    jr z, jr_02d_447b                             ; $445b: $28 $1e

    xor e                                         ; $445d: $ab
    or e                                          ; $445e: $b3
    ld [hl], d                                    ; $445f: $72
    rst $00                                       ; $4460: $c7
    ld c, a                                       ; $4461: $4f
    scf                                           ; $4462: $37
    ld b, a                                       ; $4463: $47
    add c                                         ; $4464: $81
    ld c, a                                       ; $4465: $4f
    or h                                          ; $4466: $b4
    xor a                                         ; $4467: $af
    dec d                                         ; $4468: $15
    jp $9d08                                      ; $4469: $c3 $08 $9d


    cp a                                          ; $446c: $bf
    add $62                                       ; $446d: $c6 $62
    db $e4                                        ; $446f: $e4
    sub $ed                                       ; $4470: $d6 $ed
    sub a                                         ; $4472: $97
    adc a                                         ; $4473: $8f
    ld a, c                                       ; $4474: $79
    or c                                          ; $4475: $b1
    sub h                                         ; $4476: $94
    or c                                          ; $4477: $b1
    ld b, b                                       ; $4478: $40
    ld b, h                                       ; $4479: $44
    adc d                                         ; $447a: $8a

jr_02d_447b:
    ld d, l                                       ; $447b: $55
    add $c2                                       ; $447c: $c6 $c2
    inc c                                         ; $447e: $0c
    jr z, jr_02d_4447                             ; $447f: $28 $c6

    db $ed                                        ; $4481: $ed
    rst $00                                       ; $4482: $c7
    jp z, Jump_000_065d                           ; $4483: $ca $5d $06

    ld sp, hl                                     ; $4486: $f9
    adc [hl]                                      ; $4487: $8e
    ld [hl], $24                                  ; $4488: $36 $24
    push bc                                       ; $448a: $c5
    ld [bc], a                                    ; $448b: $02
    sbc h                                         ; $448c: $9c
    ld e, $d0                                     ; $448d: $1e $d0
    adc h                                         ; $448f: $8c
    ld c, b                                       ; $4490: $48
    sbc a                                         ; $4491: $9f

jr_02d_4492:
    ldh a, [$fd]                                  ; $4492: $f0 $fd
    push de                                       ; $4494: $d5
    ld e, c                                       ; $4495: $59
    or c                                          ; $4496: $b1
    dec [hl]                                      ; $4497: $35
    jr z, jr_02d_44fa                             ; $4498: $28 $60

    ld e, h                                       ; $449a: $5c
    ld h, e                                       ; $449b: $63
    db $dd                                        ; $449c: $dd
    db $ec                                        ; $449d: $ec
    sub e                                         ; $449e: $93
    ld h, $9a                                     ; $449f: $26 $9a
    ld b, c                                       ; $44a1: $41
    rst $20                                       ; $44a2: $e7
    add hl, de                                    ; $44a3: $19
    sub b                                         ; $44a4: $90
    dec hl                                        ; $44a5: $2b
    ld d, [hl]                                    ; $44a6: $56
    cp l                                          ; $44a7: $bd
    rra                                           ; $44a8: $1f
    db $e4                                        ; $44a9: $e4
    adc d                                         ; $44aa: $8a
    cp h                                          ; $44ab: $bc
    dec b                                         ; $44ac: $05
    ld b, a                                       ; $44ad: $47
    ld a, [hl+]                                   ; $44ae: $2a
    ld d, [hl]                                    ; $44af: $56
    cp l                                          ; $44b0: $bd
    rra                                           ; $44b1: $1f
    db $e4                                        ; $44b2: $e4
    adc d                                         ; $44b3: $8a
    jp c, Jump_02d_5b43                           ; $44b4: $da $43 $5b

    and a                                         ; $44b7: $a7
    ld [c], a                                     ; $44b8: $e2
    ld b, d                                       ; $44b9: $42
    ld d, b                                       ; $44ba: $50
    ld d, h                                       ; $44bb: $54
    jp hl                                         ; $44bc: $e9


    db $d3                                        ; $44bd: $d3
    or d                                          ; $44be: $b2

jr_02d_44bf:
    or l                                          ; $44bf: $b5
    db $eb                                        ; $44c0: $eb
    db $fd                                        ; $44c1: $fd
    ld l, a                                       ; $44c2: $6f
    jr jr_02d_4526                                ; $44c3: $18 $61

    jr jr_02d_4492                                ; $44c5: $18 $cb

    add b                                         ; $44c7: $80
    ld c, d                                       ; $44c8: $4a
    ld b, $14                                     ; $44c9: $06 $14
    adc e                                         ; $44cb: $8b
    rst $20                                       ; $44cc: $e7
    inc d                                         ; $44cd: $14
    ld a, c                                       ; $44ce: $79
    dec bc                                        ; $44cf: $0b
    sbc l                                         ; $44d0: $9d
    ld e, $d0                                     ; $44d1: $1e $d0
    adc d                                         ; $44d3: $8a
    ld d, [hl]                                    ; $44d4: $56
    cp l                                          ; $44d5: $bd
    rst $08                                       ; $44d6: $cf
    dec [hl]                                      ; $44d7: $35
    ld l, [hl]                                    ; $44d8: $6e
    ccf                                           ; $44d9: $3f
    ld d, [hl]                                    ; $44da: $56
    inc d                                         ; $44db: $14
    ld c, e                                       ; $44dc: $4b
    sbc c                                         ; $44dd: $99
    ld h, a                                       ; $44de: $67
    ld b, b                                       ; $44df: $40
    ld d, c                                       ; $44e0: $51

jr_02d_44e1:
    sbc e                                         ; $44e1: $9b
    ret c                                         ; $44e2: $d8

    ld [bc], a                                    ; $44e3: $02
    add a                                         ; $44e4: $87
    or e                                          ; $44e5: $b3
    sub e                                         ; $44e6: $93
    db $eb                                        ; $44e7: $eb
    pop de                                        ; $44e8: $d1
    sub [hl]                                      ; $44e9: $96
    ld [hl], $a4                                  ; $44ea: $36 $a4
    ld [hl], c                                    ; $44ec: $71
    ld e, b                                       ; $44ed: $58
    ld a, [bc]                                    ; $44ee: $0a
    push af                                       ; $44ef: $f5
    di                                            ; $44f0: $f3
    dec e                                         ; $44f1: $1d
    pop af                                        ; $44f2: $f1
    cp $c8                                        ; $44f3: $fe $c8
    adc l                                         ; $44f5: $8d
    ld sp, $c92c                                  ; $44f6: $31 $2c $c9
    dec e                                         ; $44f9: $1d

jr_02d_44fa:
    ld l, e                                       ; $44fa: $6b
    xor $35                                       ; $44fb: $ee $35
    ld a, c                                       ; $44fd: $79
    dec bc                                        ; $44fe: $0b
    ld b, a                                       ; $44ff: $47
    or c                                          ; $4500: $b1
    sub a                                         ; $4501: $97
    ld b, d                                       ; $4502: $42
    db $fd                                        ; $4503: $fd
    ld h, l                                       ; $4504: $65
    dec hl                                        ; $4505: $2b
    rst $08                                       ; $4506: $cf
    di                                            ; $4507: $f3
    ld d, l                                       ; $4508: $55
    ld d, l                                       ; $4509: $55
    sub l                                         ; $450a: $95
    rst $20                                       ; $450b: $e7
    ld sp, hl                                     ; $450c: $f9
    ld a, [hl+]                                   ; $450d: $2a

jr_02d_450e:
    ld sp, hl                                     ; $450e: $f9
    add l                                         ; $450f: $85
    ld a, c                                       ; $4510: $79
    dec bc                                        ; $4511: $0b
    ld b, a                                       ; $4512: $47
    cp h                                          ; $4513: $bc
    cp a                                          ; $4514: $bf
    rst $30                                       ; $4515: $f7
    rst $00                                       ; $4516: $c7
    ret c                                         ; $4517: $d8

    call c, $e41a                                 ; $4518: $dc $1a $e4
    xor d                                         ; $451b: $aa
    db $f4                                        ; $451c: $f4
    ld l, c                                       ; $451d: $69
    db $e4                                        ; $451e: $e4
    add $c8                                       ; $451f: $c6 $c8
    ld b, e                                       ; $4521: $43
    cp [hl]                                       ; $4522: $be
    and d                                         ; $4523: $a2
    ld e, b                                       ; $4524: $58
    inc a                                         ; $4525: $3c

jr_02d_4526:
    jr nz, jr_02d_44e1                            ; $4526: $20 $b9

    dec de                                        ; $4528: $1b
    cp $98                                        ; $4529: $fe $98
    ld l, b                                       ; $452b: $68
    rst $28                                       ; $452c: $ef
    rst $08                                       ; $452d: $cf
    ld d, l                                       ; $452e: $55
    cp l                                          ; $452f: $bd
    ld c, a                                       ; $4530: $4f

jr_02d_4531:
    ld e, d                                       ; $4531: $5a
    sbc l                                         ; $4532: $9d
    ld [hl], l                                    ; $4533: $75
    ld a, h                                       ; $4534: $7c
    ret nz                                        ; $4535: $c0

    adc e                                         ; $4536: $8b
    add hl, sp                                    ; $4537: $39
    rst $08                                       ; $4538: $cf
    ld e, e                                       ; $4539: $5b
    sbc l                                         ; $453a: $9d
    ld e, $ae                                     ; $453b: $1e $ae
    call nc, $97a9                                ; $453d: $d4 $a9 $97
    or d                                          ; $4540: $b2
    ld c, b                                       ; $4541: $48
    adc [hl]                                      ; $4542: $8e
    ld h, b                                       ; $4543: $60
    ld d, $a3                                     ; $4544: $16 $a3
    rst $30                                       ; $4546: $f7
    ld [hl], a                                    ; $4547: $77
    cp c                                          ; $4548: $b9
    dec [hl]                                      ; $4549: $35
    ld b, $bc                                     ; $454a: $06 $bc
    or $d0                                        ; $454c: $f6 $d0
    ld d, $27                                     ; $454e: $16 $27
    ld bc, $d726                                  ; $4550: $01 $26 $d7
    ret                                           ; $4553: $c9


    push bc                                       ; $4554: $c5
    inc a                                         ; $4555: $3c
    sbc a                                         ; $4556: $9f
    add d                                         ; $4557: $82
    ld h, [hl]                                    ; $4558: $66
    adc h                                         ; $4559: $8c
    xor [hl]                                      ; $455a: $ae
    ld d, l                                       ; $455b: $55
    rrca                                          ; $455c: $0f
    sub e                                         ; $455d: $93
    xor e                                         ; $455e: $ab
    db $e4                                        ; $455f: $e4
    rla                                           ; $4560: $17
    and $2d                                       ; $4561: $e6 $2d
    ld b, a                                       ; $4563: $47
    and b                                         ; $4564: $a0
    ld a, [hl]                                    ; $4565: $7e
    cp [hl]                                       ; $4566: $be
    ld c, $86                                     ; $4567: $0e $86
    sbc a                                         ; $4569: $9f
    db $f4                                        ; $456a: $f4
    db $ed                                        ; $456b: $ed
    ld d, e                                       ; $456c: $53
    ld [hl], d                                    ; $456d: $72
    xor [hl]                                      ; $456e: $ae
    jr nz, jr_02d_450e                            ; $456f: $20 $9d

jr_02d_4571:
    ccf                                           ; $4571: $3f
    sub [hl]                                      ; $4572: $96
    ccf                                           ; $4573: $3f
    ld l, b                                       ; $4574: $68
    ld l, [hl]                                    ; $4575: $6e
    ld sp, $bed1                                  ; $4576: $31 $d1 $be
    add $3c                                       ; $4579: $c6 $3c
    adc b                                         ; $457b: $88
    db $dd                                        ; $457c: $dd
    jp z, $d643                                   ; $457d: $ca $43 $d6

    rst $10                                       ; $4580: $d7
    ld sp, hl                                     ; $4581: $f9
    ld l, e                                       ; $4582: $6b
    inc l                                         ; $4583: $2c
    sub d                                         ; $4584: $92
    jp $9ab2                                      ; $4585: $c3 $b2 $9a


    reti                                          ; $4588: $d9


    cp b                                          ; $4589: $b8
    ld h, d                                       ; $458a: $62
    sub a                                         ; $458b: $97
    rst $18                                       ; $458c: $df
    adc h                                         ; $458d: $8c
    ret nz                                        ; $458e: $c0

    dec d                                         ; $458f: $15
    ld l, e                                       ; $4590: $6b
    inc l                                         ; $4591: $2c
    ld b, [hl]                                    ; $4592: $46
    ld e, [hl]                                    ; $4593: $5e
    scf                                           ; $4594: $37
    ld h, [hl]                                    ; $4595: $66
    ld e, b                                       ; $4596: $58
    ld e, c                                       ; $4597: $59
    xor d                                         ; $4598: $aa
    jr z, jr_02d_4571                             ; $4599: $28 $d6

    ld a, b                                       ; $459b: $78

jr_02d_459c:
    db $dd                                        ; $459c: $dd
    jr jr_02d_4526                                ; $459d: $18 $87

    ld e, l                                       ; $459f: $5d
    ld l, h                                       ; $45a0: $6c
    ld d, l                                       ; $45a1: $55
    ld hl, sp-$0d                                 ; $45a2: $f8 $f3
    dec e                                         ; $45a4: $1d
    ld b, l                                       ; $45a5: $45
    ei                                            ; $45a6: $fb
    ld a, [de]                                    ; $45a7: $1a
    di                                            ; $45a8: $f3
    jr nz, jr_02d_4531                            ; $45a9: $20 $86

    sub l                                         ; $45ab: $95
    or c                                          ; $45ac: $b1
    ldh a, [$eb]                                  ; $45ad: $f0 $eb
    db $fc                                        ; $45af: $fc
    dec [hl]                                      ; $45b0: $35
    ld d, $cb                                     ; $45b1: $16 $cb
    ret nz                                        ; $45b3: $c0

    dec e                                         ; $45b4: $1d
    bit 5, d                                      ; $45b5: $cb $6a
    ld h, [hl]                                    ; $45b7: $66
    db $e3                                        ; $45b8: $e3
    adc d                                         ; $45b9: $8a
    sub c                                         ; $45ba: $91
    rst $18                                       ; $45bb: $df
    ld [c], a                                     ; $45bc: $e2
    ld a, c                                       ; $45bd: $79
    adc h                                         ; $45be: $8c
    db $db                                        ; $45bf: $db
    adc a                                         ; $45c0: $8f
    dec d                                         ; $45c1: $15
    push bc                                       ; $45c2: $c5
    xor [hl]                                      ; $45c3: $ae
    rlca                                          ; $45c4: $07
    push hl                                       ; $45c5: $e5
    and c                                         ; $45c6: $a1
    ld b, a                                       ; $45c7: $47
    cp [hl]                                       ; $45c8: $be
    inc hl                                        ; $45c9: $23
    sbc $4f                                       ; $45ca: $de $4f
    xor $fd                                       ; $45cc: $ee $fd
    push de                                       ; $45ce: $d5
    adc h                                         ; $45cf: $8c
    or c                                          ; $45d0: $b1
    cp h                                          ; $45d1: $bc
    dec b                                         ; $45d2: $05
    daa                                           ; $45d3: $27
    jr z, jr_02d_459c                             ; $45d4: $28 $c6

    inc a                                         ; $45d6: $3c
    inc l                                         ; $45d7: $2c
    ld [hl], l                                    ; $45d8: $75
    ld l, d                                       ; $45d9: $6a
    inc de                                        ; $45da: $13
    sub a                                         ; $45db: $97
    push af                                       ; $45dc: $f5
    ld a, $e1                                     ; $45dd: $3e $e1
    rlca                                          ; $45df: $07
    sbc l                                         ; $45e0: $9d
    ccf                                           ; $45e1: $3f
    ld a, d                                       ; $45e2: $7a
    sub b                                         ; $45e3: $90
    db $fd                                        ; $45e4: $fd
    ret nz                                        ; $45e5: $c0

    and e                                         ; $45e6: $a3
    ld [hl], $b1                                  ; $45e7: $36 $b1
    dec b                                         ; $45e9: $05
    rst $00                                       ; $45ea: $c7
    sub l                                         ; $45eb: $95
    ld a, l                                       ; $45ec: $7d
    dec l                                         ; $45ed: $2d
    ld l, l                                       ; $45ee: $6d
    ld b, b                                       ; $45ef: $40
    ld l, e                                       ; $45f0: $6b
    inc l                                         ; $45f1: $2c
    ld b, [hl]                                    ; $45f2: $46
    rst $30                                       ; $45f3: $f7
    ld e, e                                       ; $45f4: $5b
    ld a, c                                       ; $45f5: $79
    ret z                                         ; $45f6: $c8

    ld a, [$1df2]                                 ; $45f7: $fa $f2 $1d
    ld l, e                                       ; $45fa: $6b
    xor $35                                       ; $45fb: $ee $35
    ret                                           ; $45fd: $c9


    ld e, l                                       ; $45fe: $5d
    ld [hl], a                                    ; $45ff: $77
    dec b                                         ; $4600: $05

jr_02d_4601:
    adc l                                         ; $4601: $8d
    db $db                                        ; $4602: $db
    ld h, a                                       ; $4603: $67
    ret                                           ; $4604: $c9


    dec b                                         ; $4605: $05
    sbc l                                         ; $4606: $9d
    di                                            ; $4607: $f3
    ld d, $27                                     ; $4608: $16 $27
    ld l, d                                       ; $460a: $6a
    db $e4                                        ; $460b: $e4
    sub $ed                                       ; $460c: $d6 $ed
    rst $10                                       ; $460e: $d7
    ld sp, hl                                     ; $460f: $f9
    ld l, e                                       ; $4610: $6b
    inc l                                         ; $4611: $2c
    and [hl]                                      ; $4612: $a6
    ccf                                           ; $4613: $3f
    ld a, a                                       ; $4614: $7f
    ld b, b                                       ; $4615: $40
    ld c, d                                       ; $4616: $4a
    ld l, $5b                                     ; $4617: $2e $5b
    ei                                            ; $4619: $fb
    ld [hl], a                                    ; $461a: $77
    jp $1635                                      ; $461b: $c3 $35 $16


    db $d3                                        ; $461e: $d3
    ld h, a                                       ; $461f: $67
    ld d, b                                       ; $4620: $50
    db $e3                                        ; $4621: $e3
    ld [hl], a                                    ; $4622: $77
    dec hl                                        ; $4623: $2b
    ld b, l                                       ; $4624: $45
    cp [hl]                                       ; $4625: $be
    adc e                                         ; $4626: $8b
    dec l                                         ; $4627: $2d
    cp a                                          ; $4628: $bf
    ret c                                         ; $4629: $d8

    ld a, [c]                                     ; $462a: $f2
    dec d                                         ; $462b: $15
    push bc                                       ; $462c: $c5
    ld e, h                                       ; $462d: $5c
    ld h, h                                       ; $462e: $64
    adc $8d                                       ; $462f: $ce $8d
    inc c                                         ; $4631: $0c
    ld e, l                                       ; $4632: $5d
    sub c                                         ; $4633: $91
    or a                                          ; $4634: $b7
    push af                                       ; $4635: $f5
    or l                                          ; $4636: $b5
    ld c, d                                       ; $4637: $4a
    dec bc                                        ; $4638: $0b
    ret nz                                        ; $4639: $c0

    ld e, b                                       ; $463a: $58
    jp c, $c690                                   ; $463b: $da $90 $c6

    ld h, c                                       ; $463e: $61
    pop af                                        ; $463f: $f1
    ldh [$c2], a                                  ; $4640: $e0 $c2
    dec [hl]                                      ; $4642: $35
    rrca                                          ; $4643: $0f
    ld a, h                                       ; $4644: $7c
    db $f4                                        ; $4645: $f4
    jr nc, jr_02d_4601                            ; $4646: $30 $b9

    ld h, e                                       ; $4648: $63
    call Call_000_26bd                            ; $4649: $cd $bd $26
    ld l, a                                       ; $464c: $6f
    ld bc, $9ac7                                  ; $464d: $01 $c7 $9a
    ld a, e                                       ; $4650: $7b
    ld c, l                                       ; $4651: $4d
    ld [hl], d                                    ; $4652: $72
    rst $10                                       ; $4653: $d7
    ld e, l                                       ; $4654: $5d
    ld b, c                                       ; $4655: $41
    ld l, e                                       ; $4656: $6b
    inc l                                         ; $4657: $2c
    add $d2                                       ; $4658: $c6 $d2
    daa                                           ; $465a: $27
    inc l                                         ; $465b: $2c
    db $e3                                        ; $465c: $e3
    ld a, [de]                                    ; $465d: $1a
    db $dd                                        ; $465e: $dd
    dec d                                         ; $465f: $15
    add hl, de                                    ; $4660: $19
    ld b, b                                       ; $4661: $40
    ld b, [hl]                                    ; $4662: $46
    cp [hl]                                       ; $4663: $be
    ld b, [hl]                                    ; $4664: $46
    sbc a                                         ; $4665: $9f
    db $db                                        ; $4666: $db
    and a                                         ; $4667: $a7
    ld h, l                                       ; $4668: $65
    ld b, b                                       ; $4669: $40
    dec hl                                        ; $466a: $2b
    ld a, [de]                                    ; $466b: $1a
    add e                                         ; $466c: $83
    add d                                         ; $466d: $82
    adc $3b                                       ; $466e: $ce $3b
    sub $58                                       ; $4670: $d6 $58
    adc [hl]                                      ; $4672: $8e
    ld a, h                                       ; $4673: $7c
    ld [hl], c                                    ; $4674: $71
    rst $00                                       ; $4675: $c7
    sbc a                                         ; $4676: $9f
    ld bc, $4bac                                  ; $4677: $01 $ac $4b
    jp z, $9d5b                                   ; $467a: $ca $5b $9d

    ld e, $d0                                     ; $467d: $1e $d0
    adc d                                         ; $467f: $8a
    ld d, [hl]                                    ; $4680: $56
    cp l                                          ; $4681: $bd
    rst $08                                       ; $4682: $cf
    dec [hl]                                      ; $4683: $35
    dec b                                         ; $4684: $05
    adc l                                         ; $4685: $8d
    rst $18                                       ; $4686: $df
    or d                                          ; $4687: $b2
    db $eb                                        ; $4688: $eb
    ld c, h                                       ; $4689: $4c
    sbc a                                         ; $468a: $9f
    db $fc                                        ; $468b: $fc
    sub [hl]                                      ; $468c: $96
    or a                                          ; $468d: $b7
    sbc l                                         ; $468e: $9d
    ld h, b                                       ; $468f: $60
    and h                                         ; $4690: $a4
    dec [hl]                                      ; $4691: $35
    ld [hl], d                                    ; $4692: $72
    ld e, $a3                                     ; $4693: $1e $a3
    rlca                                          ; $4695: $07
    or h                                          ; $4696: $b4
    and d                                         ; $4697: $a2
    sub c                                         ; $4698: $91
    xor d                                         ; $4699: $aa
    ld h, $76                                     ; $469a: $26 $76
    xor h                                         ; $469c: $ac
    cp c                                          ; $469d: $b9
    rst $10                                       ; $469e: $d7
    inc h                                         ; $469f: $24
    ld b, a                                       ; $46a0: $47
    ld [hl], a                                    ; $46a1: $77
    push bc                                       ; $46a2: $c5
    ld a, [de]                                    ; $46a3: $1a
    ld [hl], h                                    ; $46a4: $74
    dec l                                         ; $46a5: $2d
    inc bc                                        ; $46a6: $03
    ld e, d                                       ; $46a7: $5a
    pop de                                        ; $46a8: $d1
    ld l, $b7                                     ; $46a9: $2e $b7
    add $80                                       ; $46ab: $c6 $80
    adc a                                         ; $46ad: $8f
    ld l, e                                       ; $46ae: $6b
    daa                                           ; $46af: $27
    adc d                                         ; $46b0: $8a
    pop bc                                        ; $46b1: $c1
    ld d, d                                       ; $46b2: $52
    ld d, h                                       ; $46b3: $54
    sbc e                                         ; $46b4: $9b
    ret c                                         ; $46b5: $d8

    ld [bc], a                                    ; $46b6: $02
    daa                                           ; $46b7: $27
    db $fd                                        ; $46b8: $fd
    push de                                       ; $46b9: $d5
    inc l                                         ; $46ba: $2c
    db $e4                                        ; $46bb: $e4
    or [hl]                                       ; $46bc: $b6
    inc d                                         ; $46bd: $14
    ld [$7753], a                                 ; $46be: $ea $53 $77
    sub h                                         ; $46c1: $94
    ld e, h                                       ; $46c2: $5c
    ldh [$e8], a                                  ; $46c3: $e0 $e8
    ld bc, $68ad                                  ; $46c5: $01 $ad $68
    push de                                       ; $46c8: $d5
    ei                                            ; $46c9: $fb
    ld e, h                                       ; $46ca: $5c
    ld [hl], e                                    ; $46cb: $73
    dec b                                         ; $46cc: $05
    ld l, c                                       ; $46cd: $69
    ld a, [$2aa1]                                 ; $46ce: $fa $a1 $2a
    ld d, l                                       ; $46d1: $55
    sub h                                         ; $46d2: $94
    or a                                          ; $46d3: $b7
    daa                                           ; $46d4: $27
    ld l, d                                       ; $46d5: $6a
    db $e4                                        ; $46d6: $e4
    sub $ed                                       ; $46d7: $d6 $ed
    rst $10                                       ; $46d9: $d7
    ld sp, hl                                     ; $46da: $f9
    ld l, e                                       ; $46db: $6b
    inc l                                         ; $46dc: $2c
    add $15                                       ; $46dd: $c6 $15
    ld l, e                                       ; $46df: $6b
    ld d, b                                       ; $46e0: $50
    inc a                                         ; $46e1: $3c
    sub d                                         ; $46e2: $92
    res 0, b                                      ; $46e3: $cb $80
    ld c, d                                       ; $46e5: $4a
    ld b, $b4                                     ; $46e6: $06 $b4
    adc e                                         ; $46e8: $8b
    db $fd                                        ; $46e9: $fd
    ld b, d                                       ; $46ea: $42
    ld l, e                                       ; $46eb: $6b
    ld e, $b8                                     ; $46ec: $1e $b8
    dec de                                        ; $46ee: $1b
    jp nc, Jump_02d_628a                          ; $46ef: $d2 $8a $62

    ld b, [hl]                                    ; $46f2: $46
    db $e4                                        ; $46f3: $e4
    sub $c8                                       ; $46f4: $d6 $c8
    di                                            ; $46f6: $f3
    ld d, $27                                     ; $46f7: $16 $27
    db $fd                                        ; $46f9: $fd
    ld d, l                                       ; $46fa: $55
    rst $28                                       ; $46fb: $ef
    sub e                                         ; $46fc: $93
    halt                                          ; $46fd: $76
    add hl, hl                                    ; $46fe: $29
    ld d, [hl]                                    ; $46ff: $56
    sbc c                                         ; $4700: $99
    ld e, a                                       ; $4701: $5f

Jump_02d_4702:
    ld l, h                                       ; $4702: $6c
    push bc                                       ; $4703: $c5
    ld b, h                                       ; $4704: $44
    ld a, e                                       ; $4705: $7b
    ld a, a                                       ; $4706: $7f
    ld hl, $d5b7                                  ; $4707: $21 $b7 $d5
    ld e, c                                       ; $470a: $59
    rst $00                                       ; $470b: $c7
    rlca                                          ; $470c: $07
    cp h                                          ; $470d: $bc
    sbc b                                         ; $470e: $98
    di                                            ; $470f: $f3
    cp h                                          ; $4710: $bc
    dec b                                         ; $4711: $05
    dec e                                         ; $4712: $1d
    db $fd                                        ; $4713: $fd
    and l                                         ; $4714: $a5
    dec d                                         ; $4715: $15
    ld hl, $75f0                                  ; $4716: $21 $f0 $75
    cp b                                          ; $4719: $b8
    adc [hl]                                      ; $471a: $8e
    ld a, c                                       ; $471b: $79
    rst $18                                       ; $471c: $df
    ld e, b                                       ; $471d: $58
    ld d, [hl]                                    ; $471e: $56
    ld c, d                                       ; $471f: $4a
    ld [hl], d                                    ; $4720: $72
    call z, $0bc3                                 ; $4721: $cc $c3 $0b
    ld d, a                                       ; $4724: $57
    inc d                                         ; $4725: $14
    cp e                                          ; $4726: $bb
    sub l                                         ; $4727: $95
    cp d                                          ; $4728: $ba
    adc h                                         ; $4729: $8c
    ld h, d                                       ; $472a: $62
    ld e, h                                       ; $472b: $5c
    ld l, e                                       ; $472c: $6b
    ld e, h                                       ; $472d: $5c
    dec d                                         ; $472e: $15
    sub $75                                       ; $472f: $d6 $75
    call $bffe                                    ; $4731: $cd $fe $bf
    add hl, hl                                    ; $4734: $29
    ld l, a                                       ; $4735: $6f
    ld bc, $a047                                  ; $4736: $01 $47 $a0
    ld a, $a3                                     ; $4739: $3e $a3
    rrca                                          ; $473b: $0f
    ld e, d                                       ; $473c: $5a
    sbc l                                         ; $473d: $9d
    ld [hl], l                                    ; $473e: $75
    ld a, h                                       ; $473f: $7c
    ret nz                                        ; $4740: $c0

    adc e                                         ; $4741: $8b
    add hl, sp                                    ; $4742: $39
    rst $08                                       ; $4743: $cf
    ld [hl], a                                    ; $4744: $77
    add d                                         ; $4745: $82
    dec l                                         ; $4746: $2d
    db $eb                                        ; $4747: $eb
    and $b7                                       ; $4748: $e6 $b7
    ld [$d47d], a                                 ; $474a: $ea $7d $d4
    cp b                                          ; $474d: $b8
    ld d, [hl]                                    ; $474e: $56
    ld l, h                                       ; $474f: $6c
    and a                                         ; $4750: $a7
    call c, Call_02d_731a                         ; $4751: $dc $1a $73
    ld b, d                                       ; $4754: $42
    jp nz, $c7f7                                  ; $4755: $c2 $f7 $c7

    ret c                                         ; $4758: $d8

    ld d, d                                       ; $4759: $52
    xor b                                         ; $475a: $a8

Jump_02d_475b:
    ld c, a                                       ; $475b: $4f
    db $dd                                        ; $475c: $dd
    pop de                                        ; $475d: $d1
    xor [hl]                                      ; $475e: $ae
    ld d, a                                       ; $475f: $57
    ld d, l                                       ; $4760: $55
    ld a, [$7c97]                                 ; $4761: $fa $97 $7c
    and d                                         ; $4764: $a2
    ld sp, $620f                                  ; $4765: $31 $0f $62
    ld hl, $f9d7                                  ; $4768: $21 $d7 $f9
    or e                                          ; $476b: $b3
    ld [hl], h                                    ; $476c: $74
    ld e, d                                       ; $476d: $5a
    rla                                           ; $476e: $17
    db $dd                                        ; $476f: $dd
    ld d, [hl]                                    ; $4770: $56
    ld h, a                                       ; $4771: $67
    push hl                                       ; $4772: $e5
    ld c, $5f                                     ; $4773: $0e $5f
    db $e3                                        ; $4775: $e3
    jp c, $b17f                                   ; $4776: $da $7f $b1

    jp z, $de30                                   ; $4779: $ca $30 $de

    adc a                                         ; $477c: $8f
    db $e4                                        ; $477d: $e4
    adc [hl]                                      ; $477e: $8e
    pop af                                        ; $477f: $f1
    sbc d                                         ; $4780: $9a
    ld [hl], h                                    ; $4781: $74
    ld a, [$fe7d]                                 ; $4782: $fa $7d $fe
    inc a                                         ; $4785: $3c
    cp c                                          ; $4786: $b9
    adc [hl]                                      ; $4787: $8e
    rrca                                          ; $4788: $0f
    jp nc, $20f1                                  ; $4789: $d2 $f1 $20

    sbc l                                         ; $478c: $9d
    ld l, $4a                                     ; $478d: $2e $4a
    xor $54                                       ; $478f: $ee $54

jr_02d_4791:
    add hl, sp                                    ; $4791: $39
    scf                                           ; $4792: $37
    ld h, h                                       ; $4793: $64
    dec d                                         ; $4794: $15
    db $ed                                        ; $4795: $ed
    pop bc                                        ; $4796: $c1
    ld c, [hl]                                    ; $4797: $4e
    sub l                                         ; $4798: $95
    scf                                           ; $4799: $37
    ld a, [$ce64]                                 ; $479a: $fa $64 $ce
    di                                            ; $479d: $f3
    sbc l                                         ; $479e: $9d
    cp $20                                        ; $479f: $fe $20
    add $9f                                       ; $47a1: $c6 $9f
    ld d, a                                       ; $47a3: $57
    add sp, $3a                                   ; $47a4: $e8 $3a
    ld a, a                                       ; $47a6: $7f
    and d                                         ; $47a7: $a2
    ld sp, $620f                                  ; $47a8: $31 $0f $62
    ld bc, $b8c8                                  ; $47ab: $01 $c8 $b8
    adc $1f                                       ; $47ae: $ce $1f
    ld d, a                                       ; $47b0: $57
    db $ec                                        ; $47b1: $ec
    ld a, d                                       ; $47b2: $7a
    ldh [$31], a                                  ; $47b3: $e0 $31
    ld l, [hl]                                    ; $47b5: $6e
    ccf                                           ; $47b6: $3f
    add $3c                                       ; $47b7: $c6 $3c
    ld [hl], d                                    ; $47b9: $72
    xor l                                         ; $47ba: $ad
    ld [hl-], a                                   ; $47bb: $32
    adc h                                         ; $47bc: $8c
    rst $30                                       ; $47bd: $f7
    di                                            ; $47be: $f3
    sbc l                                         ; $47bf: $9d
    and b                                         ; $47c0: $a0
    ld e, b                                       ; $47c1: $58
    di                                            ; $47c2: $f3
    ldh a, [rHDMA3]                               ; $47c3: $f0 $53
    inc l                                         ; $47c5: $2c
    inc bc                                        ; $47c6: $03
    ld a, [de]                                    ; $47c7: $1a
    di                                            ; $47c8: $f3
    jr nz, jr_02d_4791                            ; $47c9: $20 $c6

    ld [hl-], a                                   ; $47cb: $32
    sub $97                                       ; $47cc: $d6 $97
    db $eb                                        ; $47ce: $eb
    db $fc                                        ; $47cf: $fc
    ld sp, $620f                                  ; $47d0: $31 $0f $62
    adc l                                         ; $47d3: $8d
    cp h                                          ; $47d4: $bc
    ld [de], a                                    ; $47d5: $12
    sub c                                         ; $47d6: $91
    cp a                                          ; $47d7: $bf
    ld c, a                                       ; $47d8: $4f
    db $e3                                        ; $47d9: $e3
    sbc d                                         ; $47da: $9a
    xor e                                         ; $47db: $ab
    ld l, d                                       ; $47dc: $6a
    sbc [hl]                                      ; $47dd: $9e
    sub e                                         ; $47de: $93
    ld a, h                                       ; $47df: $7c
    push bc                                       ; $47e0: $c5
    halt                                          ; $47e1: $76
    dec a                                         ; $47e2: $3d
    ld l, b                                       ; $47e3: $68
    inc [hl]                                      ; $47e4: $34
    xor [hl]                                      ; $47e5: $ae
    ret c                                         ; $47e6: $d8

    ret                                           ; $47e7: $c9


    ld h, b                                       ; $47e8: $60
    db $e4                                        ; $47e9: $e4
    ld e, d                                       ; $47ea: $5a
    rlca                                          ; $47eb: $07
    jp Jump_000_3f78                              ; $47ec: $c3 $78 $3f


    ld a, [c]                                     ; $47ef: $f2
    ld d, $1d                                     ; $47f0: $16 $1d
    inc hl                                        ; $47f2: $23
    jr z, @-$2f                                   ; $47f3: $28 $cf

    di                                            ; $47f5: $f3
    ld e, l                                       ; $47f6: $5d
    ld [hl], a                                    ; $47f7: $77
    dec b                                         ; $47f8: $05
    dec l                                         ; $47f9: $2d
    inc bc                                        ; $47fa: $03
    rrca                                          ; $47fb: $0f
    ld d, a                                       ; $47fc: $57
    inc d                                         ; $47fd: $14
    ld l, e                                       ; $47fe: $6b
    ld e, $7e                                     ; $47ff: $1e $7e
    adc d                                         ; $4801: $8a
    jp c, Jump_02d_5b43                           ; $4802: $da $43 $5b

    sbc l                                         ; $4805: $9d
    ld h, b                                       ; $4806: $60
    ld b, l                                       ; $4807: $45
    ld sp, $b196                                  ; $4808: $31 $96 $b1
    cp [hl]                                       ; $480b: $be
    ld h, d                                       ; $480c: $62
    ld a, [$ed23]                                 ; $480d: $fa $23 $ed
    ld a, d                                       ; $4810: $7a

jr_02d_4811:
    ld d, l                                       ; $4811: $55
    di                                            ; $4812: $f3
    sbc h                                         ; $4813: $9c
    db $ec                                        ; $4814: $ec
    db $d3                                        ; $4815: $d3
    ld d, d                                       ; $4816: $52
    xor b                                         ; $4817: $a8
    ccf                                           ; $4818: $3f
    pop de                                        ; $4819: $d1
    ld [$1456], sp                                ; $481a: $08 $56 $14
    ld l, e                                       ; $481d: $6b
    db $e4                                        ; $481e: $e4
    inc a                                         ; $481f: $3c
    and [hl]                                      ; $4820: $a6
    ccf                                           ; $4821: $3f
    db $fd                                        ; $4822: $fd
    or h                                          ; $4823: $b4
    dec bc                                        ; $4824: $0b
    ld e, c                                       ; $4825: $59
    rst $18                                       ; $4826: $df
    ld a, $ad                                     ; $4827: $3e $ad
    jr z, jr_02d_4811                             ; $4829: $28 $e6

    ld [hl], l                                    ; $482b: $75
    ld e, c                                       ; $482c: $59
    ld b, l                                       ; $482d: $45
    sub c                                         ; $482e: $91
    rst $28                                       ; $482f: $ef
    and h                                         ; $4830: $a4
    cp a                                          ; $4831: $bf
    and d                                         ; $4832: $a2
    ret c                                         ; $4833: $d8

    push af                                       ; $4834: $f5
    xor d                                         ; $4835: $aa
    add [hl]                                      ; $4836: $86
    or h                                          ; $4837: $b4
    ld a, [hl-]                                   ; $4838: $3a
    dec hl                                        ; $4839: $2b
    or [hl]                                       ; $483a: $b6
    inc [hl]                                      ; $483b: $34
    cp $71                                        ; $483c: $fe $71
    xor l                                         ; $483e: $ad
    call c, $ffed                                 ; $483f: $dc $ed $ff
    sbc e                                         ; $4842: $9b
    ld h, $5a                                     ; $4843: $26 $5a
    or c                                          ; $4845: $b1
    ld d, l                                       ; $4846: $55
    add [hl]                                      ; $4847: $86
    pop af                                        ; $4848: $f1
    cp $32                                        ; $4849: $fe $32
    add b                                         ; $484b: $80
    or e                                          ; $484c: $b3
    dec d                                         ; $484d: $15
    xor l                                         ; $484e: $ad
    add hl, hl                                    ; $484f: $29
    db $10                                        ; $4850: $10
    db $e3                                        ; $4851: $e3
    ld e, d                                       ; $4852: $5a
    di                                            ; $4853: $f3
    ldh a, [rHDMA3]                               ; $4854: $f0 $53
    call z, Call_000_3555                         ; $4856: $cc $55 $35

jr_02d_4859:
    rst $08                                       ; $4859: $cf
    ld c, c                                       ; $485a: $49
    dec hl                                        ; $485b: $2b
    or [hl]                                       ; $485c: $b6
    db $eb                                        ; $485d: $eb
    ld b, c                                       ; $485e: $41
    and e                                         ; $485f: $a3
    cp h                                          ; $4860: $bc
    dec b                                         ; $4861: $05
    ld b, a                                       ; $4862: $47
    pop de                                        ; $4863: $d1
    xor [hl]                                      ; $4864: $ae
    ld d, a                                       ; $4865: $57
    ld d, l                                       ; $4866: $55
    ld a, [$78b4]                                 ; $4867: $fa $b4 $78
    ld d, l                                       ; $486a: $55
    and l                                         ; $486b: $a5
    xor b                                         ; $486c: $a8
    rst $30                                       ; $486d: $f7
    rra                                           ; $486e: $1f
    call nz, Call_02d_71ee                        ; $486f: $c4 $ee $71
    dec hl                                        ; $4872: $2b
    cp d                                          ; $4873: $ba
    ld [$ffdf], sp                                ; $4874: $08 $df $ff
    or a                                          ; $4877: $b7
    cp b                                          ; $4878: $b8
    rst $10                                       ; $4879: $d7
    ld e, $da                                     ; $487a: $1e $da

jr_02d_487c:
    ld [bc], a                                    ; $487c: $02
    push af                                       ; $487d: $f5
    or l                                          ; $487e: $b5
    rr a                                          ; $487f: $cb $1f
    add $32                                       ; $4881: $c6 $32
    ld [hl], b                                    ; $4883: $70
    rst $00                                       ; $4884: $c7
    or d                                          ; $4885: $b2
    or h                                          ; $4886: $b4
    ld bc, $b42d                                  ; $4887: $01 $2d $b4
    sub h                                         ; $488a: $94
    ld de, $66b9                                  ; $488b: $11 $b9 $66
    adc h                                         ; $488e: $8c
    xor [hl]                                      ; $488f: $ae
    pop bc                                        ; $4890: $c1
    rra                                           ; $4891: $1f
    ld sp, hl                                     ; $4892: $f9
    dec hl                                        ; $4893: $2b
    dec h                                         ; $4894: $25
    ld l, a                                       ; $4895: $6f
    ld bc, $02a7                                  ; $4896: $01 $a7 $02
    ld [hl-], a                                   ; $4899: $32
    ld a, [hl-]                                   ; $489a: $3a
    cp a                                          ; $489b: $bf
    ld e, [hl]                                    ; $489c: $5e
    push af                                       ; $489d: $f5
    jr nc, jr_02d_4859                            ; $489e: $30 $b9

    cp b                                          ; $48a0: $b8
    ld h, e                                       ; $48a1: $63
    add hl, de                                    ; $48a2: $19
    di                                            ; $48a3: $f3
    jr nz, jr_02d_487c                            ; $48a4: $20 $d6

    inc d                                         ; $48a6: $14
    db $eb                                        ; $48a7: $eb
    sub [hl]                                      ; $48a8: $96
    ld a, [c]                                     ; $48a9: $f2
    ld d, $f5                                     ; $48aa: $16 $f5
    rst $28                                       ; $48ac: $ef
    adc d                                         ; $48ad: $8a
    and [hl]                                      ; $48ae: $a6
    xor [hl]                                      ; $48af: $ae
    ld l, e                                       ; $48b0: $6b

jr_02d_48b1:
    add hl, de                                    ; $48b1: $19
    cp b                                          ; $48b2: $b8
    cp a                                          ; $48b3: $bf
    cp a                                          ; $48b4: $bf
    sub b                                         ; $48b5: $90
    db $db                                        ; $48b6: $db
    cp b                                          ; $48b7: $b8
    db $fd                                        ; $48b8: $fd
    ld e, b                                       ; $48b9: $58
    or c                                          ; $48ba: $b1
    ld d, l                                       ; $48bb: $55
    ld e, l                                       ; $48bc: $5d
    ld d, a                                       ; $48bd: $57
    ld e, d                                       ; $48be: $5a
    ld h, l                                       ; $48bf: $65
    jr jr_02d_48b1                                ; $48c0: $18 $ef

    daa                                           ; $48c2: $27
    ld d, a                                       ; $48c3: $57
    add hl, de                                    ; $48c4: $19
    add $3a                                       ; $48c5: $c6 $3a
    ld e, $7e                                     ; $48c7: $1e $7e
    ld [$ecea], a                                 ; $48c9: $ea $ea $ec
    ld d, h                                       ; $48cc: $54
    ld a, c                                       ; $48cd: $79
    and e                                         ; $48ce: $a3
    ld c, a                                       ; $48cf: $4f
    and $3c                                       ; $48d0: $e6 $3c
    rst $18                                       ; $48d2: $df
    ld [hl], c                                    ; $48d3: $71
    dec h                                         ; $48d4: $25
    or $b5                                        ; $48d5: $f6 $b5
    ld a, b                                       ; $48d7: $78
    sbc a                                         ; $48d8: $9f
    sub $58                                       ; $48d9: $d6 $58
    adc h                                         ; $48db: $8c
    ld e, $c4                                     ; $48dc: $1e $c4
    ld a, [hl+]                                   ; $48de: $2a
    inc bc                                        ; $48df: $03
    add $30                                       ; $48e0: $c6 $30
    ld d, [hl]                                    ; $48e2: $56
    ld [$4bd4], a                                 ; $48e3: $ea $d4 $4b
    ld e, c                                       ; $48e6: $59
    inc h                                         ; $48e7: $24
    ld d, a                                       ; $48e8: $57
    add hl, de                                    ; $48e9: $19
    add $2e                                       ; $48ea: $c6 $2e
    add hl, sp                                    ; $48ec: $39
    add hl, de                                    ; $48ed: $19
    cp $18                                        ; $48ee: $fe $18
    cp a                                          ; $48f0: $bf
    db $eb                                        ; $48f1: $eb
    sub e                                         ; $48f2: $93
    ld l, e                                       ; $48f3: $6b
    add d                                         ; $48f4: $82
    adc $8b                                       ; $48f5: $ce $8b
    rst $30                                       ; $48f7: $f7
    ld l, c                                       ; $48f8: $69
    adc h                                         ; $48f9: $8c
    dec de                                        ; $48fa: $1b
    ld d, [hl]                                    ; $48fb: $56
    ld a, [$eab4]                                 ; $48fc: $fa $b4 $ea
    halt                                          ; $48ff: $76
    or c                                          ; $4900: $b1
    db $ed                                        ; $4901: $ed
    ld d, e                                       ; $4902: $53
    db $e4                                        ; $4903: $e4
    dec l                                         ; $4904: $2d
    ld b, a                                       ; $4905: $47
    and b                                         ; $4906: $a0
    ld a, $a3                                     ; $4907: $3e $a3
    rrca                                          ; $4909: $0f
    ld e, d                                       ; $490a: $5a
    sbc l                                         ; $490b: $9d
    ld sp, $220f                                  ; $490c: $31 $0f $22
    cp c                                          ; $490f: $b9
    and d                                         ; $4910: $a2
    ret c                                         ; $4911: $d8

    ld a, a                                       ; $4912: $7f
    ret nz                                        ; $4913: $c0

    ret z                                         ; $4914: $c8

    and b                                         ; $4915: $a0
    di                                            ; $4916: $f3
    ld l, [hl]                                    ; $4917: $6e
    and l                                         ; $4918: $a5
    ld l, $a3                                     ; $4919: $2e $a3
    ret z                                         ; $491b: $c8

    ld d, a                                       ; $491c: $57
    ld e, a                                       ; $491d: $5f
    dec bc                                        ; $491e: $0b
    ret nz                                        ; $491f: $c0

    ret c                                         ; $4920: $d8

    pop hl                                        ; $4921: $e1
    dec h                                         ; $4922: $25
    dec b                                         ; $4923: $05
    or c                                          ; $4924: $b1
    inc hl                                        ; $4925: $23
    and c                                         ; $4926: $a1
    ld c, d                                       ; $4927: $4a
    dec d                                         ; $4928: $15
    pop af                                        ; $4929: $f1
    rst $20                                       ; $492a: $e7
    ld c, d                                       ; $492b: $4a
    xor [hl]                                      ; $492c: $ae
    ld l, b                                       ; $492d: $68
    inc e                                         ; $492e: $1c
    ld e, l                                       ; $492f: $5d
    rla                                           ; $4930: $17
    add hl, bc                                    ; $4931: $09
    ld a, h                                       ; $4932: $7c
    ld e, h                                       ; $4933: $5c
    db $eb                                        ; $4934: $eb
    ld hl, sp-$80                                 ; $4935: $f8 $80
    rla                                           ; $4937: $17
    ld [hl], e                                    ; $4938: $73
    sbc [hl]                                      ; $4939: $9e
    rst $28                                       ; $493a: $ef
    db $f4                                        ; $493b: $f4
    rlca                                          ; $493c: $07
    ld sp, $f657                                  ; $493d: $31 $57 $f6
    jp Jump_02d_5dcf                              ; $4940: $c3 $cf $5d


    rst $20                                       ; $4943: $e7
    adc a                                         ; $4944: $8f
    ld a, c                                       ; $4945: $79
    db $e4                                        ; $4946: $e4
    ld a, [de]                                    ; $4947: $1a
    ld e, c                                       ; $4948: $59
    xor d                                         ; $4949: $aa
    ld l, b                                       ; $494a: $68
    cp h                                          ; $494b: $bc
    ld l, [hl]                                    ; $494c: $6e
    inc l                                         ; $494d: $2c
    inc bc                                        ; $494e: $03
    ld a, [de]                                    ; $494f: $1a
    di                                            ; $4950: $f3
    jr nz, jr_02d_4969                            ; $4951: $20 $16

    ld [hl], d                                    ; $4953: $72
    sbc l                                         ; $4954: $9d
    ccf                                           ; $4955: $3f
    ld c, e                                       ; $4956: $4b
    and a                                         ; $4957: $a7
    ld [hl], l                                    ; $4958: $75
    pop de                                        ; $4959: $d1
    ld l, l                                       ; $495a: $6d
    ld [hl], l                                    ; $495b: $75
    ld b, $5f                                     ; $495c: $06 $5f
    xor e                                         ; $495e: $ab
    inc c                                         ; $495f: $0c
    db $e3                                        ; $4960: $e3
    db $fd                                        ; $4961: $fd
    cp h                                          ; $4962: $bc
    dec b                                         ; $4963: $05
    cp l                                          ; $4964: $bd
    ld h, b                                       ; $4965: $60
    reti                                          ; $4966: $d9


    push bc                                       ; $4967: $c5
    or [hl]                                       ; $4968: $b6

jr_02d_4969:
    ld c, a                                       ; $4969: $4f
    ld [$f775], a                                 ; $496a: $ea $75 $f7
    inc de                                        ; $496d: $13
    inc d                                         ; $496e: $14
    ld h, e                                       ; $496f: $63
    dec de                                        ; $4970: $1b
    ld d, b                                       ; $4971: $50
    call nc, $f7e3                                ; $4972: $d4 $e3 $f7
    db $f4                                        ; $4975: $f4
    di                                            ; $4976: $f3
    ld c, d                                       ; $4977: $4a
    ret                                           ; $4978: $c9


    dec d                                         ; $4979: $15
    push bc                                       ; $497a: $c5
    ld l, $b6                                     ; $497b: $2e $b6
    dec [hl]                                      ; $497d: $35
    ld [hl-], a                                   ; $497e: $32
    add sp, -$44                                  ; $497f: $e8 $bc
    ld l, b                                       ; $4981: $68
    adc d                                         ; $4982: $8a
    ld a, $47                                     ; $4983: $3e $47
    xor [hl]                                      ; $4985: $ae
    ld l, b                                       ; $4986: $68
    ld bc, $bf47                                  ; $4987: $01 $47 $bf
    ld c, a                                       ; $498a: $4f
    ld l, e                                       ; $498b: $6b
    cp d                                          ; $498c: $ba
    inc l                                         ; $498d: $2c
    rst $30                                       ; $498e: $f7
    and l                                         ; $498f: $a5
    sub c                                         ; $4990: $91
    dec b                                         ; $4991: $05
    xor [hl]                                      ; $4992: $ae
    add hl, de                                    ; $4993: $19
    inc [hl]                                      ; $4994: $34
    ld e, [hl]                                    ; $4995: $5e
    scf                                           ; $4996: $37
    add $b5                                       ; $4997: $c6 $b5
    ld [$b261], a                                 ; $4999: $ea $61 $b2
    dec b                                         ; $499c: $05
    ld e, c                                       ; $499d: $59
    and $ab                                       ; $499e: $e6 $ab
    or e                                          ; $49a0: $b3
    adc [hl]                                      ; $49a1: $8e
    rrca                                          ; $49a2: $0f
    ld a, b                                       ; $49a3: $78
    ld sp, $c9e7                                  ; $49a4: $31 $e7 $c9
    ld h, l                                       ; $49a7: $65
    ret nz                                        ; $49a8: $c0

    ld a, $5f                                     ; $49a9: $3e $5f
    or [hl]                                       ; $49ab: $b6
    add $6f                                       ; $49ac: $c6 $6f
    rla                                           ; $49ae: $17
    ld [hl], d                                    ; $49af: $72
    or l                                          ; $49b0: $b5
    ld e, c                                       ; $49b1: $59
    ld l, h                                       ; $49b2: $6c
    cp e                                          ; $49b3: $bb
    ldh [$2f], a                                  ; $49b4: $e0 $2f
    or h                                          ; $49b6: $b4
    ld a, b                                       ; $49b7: $78
    ld d, b                                       ; $49b8: $50
    adc c                                         ; $49b9: $89
    ld d, [hl]                                    ; $49ba: $56
    ld h, a                                       ; $49bb: $67
    push de                                       ; $49bc: $d5
    ei                                            ; $49bd: $fb
    cp e                                          ; $49be: $bb
    ret c                                         ; $49bf: $d8

    rrca                                          ; $49c0: $0f
    dec sp                                        ; $49c1: $3b
    rst $20                                       ; $49c2: $e7
    dec l                                         ; $49c3: $2d
    and a                                         ; $49c4: $a7
    and b                                         ; $49c5: $a0
    cp $be                                        ; $49c6: $fe $be
    ld d, [hl]                                    ; $49c8: $56
    db $dd                                        ; $49c9: $dd
    ld l, a                                       ; $49ca: $6f
    rla                                           ; $49cb: $17
    db $db                                        ; $49cc: $db
    sbc d                                         ; $49cd: $9a
    and $9e                                       ; $49ce: $e6 $9e
    sbc h                                         ; $49d0: $9c
    and e                                         ; $49d1: $a3
    cp $be                                        ; $49d2: $fe $be
    ld d, [hl]                                    ; $49d4: $56
    db $dd                                        ; $49d5: $dd
    call Call_02d_6bbd                            ; $49d6: $cd $bd $6b
    ld d, d                                       ; $49d9: $52
    dec bc                                        ; $49da: $0b
    daa                                           ; $49db: $27
    ld l, b                                       ; $49dc: $68
    ld e, c                                       ; $49dd: $59
    db $ec                                        ; $49de: $ec
    add a                                         ; $49df: $87
    sbc l                                         ; $49e0: $9d
    dec de                                        ; $49e1: $1b
    add hl, de                                    ; $49e2: $19
    call z, Call_000_0f46                         ; $49e3: $cc $46 $0f
    or d                                          ; $49e6: $b2
    rra                                           ; $49e7: $1f
    ld a, b                                       ; $49e8: $78
    call z, $e30d                                 ; $49e9: $cc $0d $e3
    db $fd                                        ; $49ec: $fd
    ld d, $1d                                     ; $49ed: $16 $1d
    ld b, h                                       ; $49ef: $44
    and h                                         ; $49f0: $a4
    di                                            ; $49f1: $f3
    db $eb                                        ; $49f2: $eb
    ld d, l                                       ; $49f3: $55
    rrca                                          ; $49f4: $0f
    rst $00                                       ; $49f5: $c7
    rst $18                                       ; $49f6: $df
    cp a                                          ; $49f7: $bf
    ld d, $e0                                     ; $49f8: $16 $e0
    ld h, e                                       ; $49fa: $63
    ld e, $b9                                     ; $49fb: $1e $b9
    ld b, [hl]                                    ; $49fd: $46
    ld e, l                                       ; $49fe: $5d
    sub e                                         ; $49ff: $93
    ld e, d                                       ; $4a00: $5a
    dec e                                         ; $4a01: $1d
    rra                                           ; $4a02: $1f
    ld hl, sp-$52                                 ; $4a03: $f8 $ae
    rst $30                                       ; $4a05: $f7
    cp a                                          ; $4a06: $bf
    ld [hl], l                                    ; $4a07: $75
    ld c, e                                       ; $4a08: $4b
    xor [hl]                                      ; $4a09: $ae
    ld sp, $5c8f                                  ; $4a0a: $31 $8f $5c
    xor e                                         ; $4a0d: $ab
    inc c                                         ; $4a0e: $0c
    db $e3                                        ; $4a0f: $e3
    db $fd                                        ; $4a10: $fd
    ld a, e                                       ; $4a11: $7b
    sbc $02                                       ; $4a12: $de $02
    rst $00                                       ; $4a14: $c7
    cp b                                          ; $4a15: $b8
    ld a, l                                       ; $4a16: $7d
    sub [hl]                                      ; $4a17: $96
    inc a                                         ; $4a18: $3c
    cp c                                          ; $4a19: $b9
    ld h, e                                       ; $4a1a: $63
    push hl                                       ; $4a1b: $e5
    dec d                                         ; $4a1c: $15
    cp [hl]                                       ; $4a1d: $be
    xor a                                         ; $4a1e: $af
    jp c, $16c4                                   ; $4a1f: $da $c4 $16

    rst $00                                       ; $4a22: $c7
    ld a, b                                       ; $4a23: $78
    ld c, l                                       ; $4a24: $4d
    ld a, [hl-]                                   ; $4a25: $3a
    db $fd                                        ; $4a26: $fd
    ld a, $7f                                     ; $4a27: $3e $7f
    ld e, [hl]                                    ; $4a29: $5e
    sbc e                                         ; $4a2a: $9b
    ret c                                         ; $4a2b: $d8

    ld [bc], a                                    ; $4a2c: $02
    dec e                                         ; $4a2d: $1d
    rra                                           ; $4a2e: $1f
    sub c                                         ; $4a2f: $91
    inc a                                         ; $4a30: $3c
    cp c                                          ; $4a31: $b9

jr_02d_4a32:
    ld h, e                                       ; $4a32: $63
    call $a6bd                                    ; $4a33: $cd $bd $a6
    ld [hl], $b1                                  ; $4a36: $36 $b1
    dec b                                         ; $4a38: $05
    dec e                                         ; $4a39: $1d

Jump_02d_4a3a:
    dec l                                         ; $4a3a: $2d
    halt                                          ; $4a3b: $76
    xor d                                         ; $4a3c: $aa
    cp h                                          ; $4a3d: $bc
    pop de                                        ; $4a3e: $d1
    daa                                           ; $4a3f: $27
    ld [hl], e                                    ; $4a40: $73
    sbc [hl]                                      ; $4a41: $9e
    ld e, h                                       ; $4a42: $5c
    ld h, e                                       ; $4a43: $63
    or c                                          ; $4a44: $b1
    ld d, e                                       ; $4a45: $53
    push hl                                       ; $4a46: $e5
    adc l                                         ; $4a47: $8d
    ld a, $99                                     ; $4a48: $3e $99
    di                                            ; $4a4a: $f3
    inc a                                         ; $4a4b: $3c
    rst $08                                       ; $4a4c: $cf
    ld e, e                                       ; $4a4d: $5b
    sbc l                                         ; $4a4e: $9d
    cp h                                          ; $4a4f: $bc
    ld l, [hl]                                    ; $4a50: $6e
    inc l                                         ; $4a51: $2c
    add l                                         ; $4a52: $85
    ld a, [$05c9]                                 ; $4a53: $fa $c9 $05
    adc [hl]                                      ; $4a56: $8e
    ld h, b                                       ; $4a57: $60
    adc d                                         ; $4a58: $8a
    ld b, l                                       ; $4a59: $45
    rrca                                          ; $4a5a: $0f
    sbc [hl]                                      ; $4a5b: $9e
    call c, $85a5                                 ; $4a5c: $dc $a5 $85
    call c, $cc76                                 ; $4a5f: $dc $76 $cc
    add hl, hl                                    ; $4a62: $29
    ld h, a                                       ; $4a63: $67
    dec e                                         ; $4a64: $1d
    ld a, l                                       ; $4a65: $7d
    db $f4                                        ; $4a66: $f4
    ld c, c                                       ; $4a67: $49
    daa                                           ; $4a68: $27
    ld e, $79                                     ; $4a69: $1e $79
    jp nc, Jump_02d_7929                          ; $4a6b: $d2 $29 $79

    dec bc                                        ; $4a6e: $0b
    rst $00                                       ; $4a6f: $c7
    ld a, b                                       ; $4a70: $78
    ld c, l                                       ; $4a71: $4d
    ld a, [hl-]                                   ; $4a72: $3a
    db $fd                                        ; $4a73: $fd
    ld a, $7f                                     ; $4a74: $3e $7f
    sbc [hl]                                      ; $4a76: $9e
    call c, Call_02d_5775                         ; $4a77: $dc $75 $57
    ret nc                                        ; $4a7a: $d0

    adc d                                         ; $4a7b: $8a
    xor l                                         ; $4a7c: $ad
    ld [hl-], a                                   ; $4a7d: $32
    adc h                                         ; $4a7e: $8c
    rst $30                                       ; $4a7f: $f7
    sub a                                         ; $4a80: $97
    add c                                         ; $4a81: $81
    dec sp                                        ; $4a82: $3b
    sub [hl]                                      ; $4a83: $96
    sub c                                         ; $4a84: $91
    sub [hl]                                      ; $4a85: $96
    ld [hl], $a0                                  ; $4a86: $36 $a0
    db $e4                                        ; $4a88: $e4
    adc [hl]                                      ; $4a89: $8e
    dec [hl]                                      ; $4a8a: $35
    rst $30                                       ; $4a8b: $f7
    sbc d                                         ; $4a8c: $9a
    ld a, h                                       ; $4a8d: $7c
    dec e                                         ; $4a8e: $1d
    inc c                                         ; $4a8f: $0c
    ccf                                           ; $4a90: $3f
    jp hl                                         ; $4a91: $e9


    db $db                                        ; $4a92: $db
    and a                                         ; $4a93: $a7
    db $e4                                        ; $4a94: $e4
    jr jr_02d_4a32                                ; $4a95: $18 $9b

    dec hl                                        ; $4a97: $2b
    ei                                            ; $4a98: $fb
    pop hl                                        ; $4a99: $e1
    rst $20                                       ; $4a9a: $e7
    xor [hl]                                      ; $4a9b: $ae
    sub c                                         ; $4a9c: $91
    adc l                                         ; $4a9d: $8d
    inc l                                         ; $4a9e: $2c
    ld d, l                                       ; $4a9f: $55
    sub h                                         ; $4aa0: $94
    or a                                          ; $4aa1: $b7
    sbc l                                         ; $4aa2: $9d
    db $fc                                        ; $4aa3: $fc
    ld bc, $f3a3                                  ; $4aa4: $01 $a3 $f3
    rst $00                                       ; $4aa7: $c7
    inc a                                         ; $4aa8: $3c
    ld [hl], d                                    ; $4aa9: $72
    adc l                                         ; $4aaa: $8d
    inc l                                         ; $4aab: $2c
    ld d, l                                       ; $4aac: $55
    sub h                                         ; $4aad: $94
    ld e, h                                       ; $4aae: $5c
    rst $00                                       ; $4aaf: $c7
    ld b, a                                       ; $4ab0: $47
    inc h                                         ; $4ab1: $24
    ld c, a                                       ; $4ab2: $4f
    xor $c1                                       ; $4ab3: $ee $c1
    sbc b                                         ; $4ab5: $98
    rlca                                          ; $4ab6: $07
    ld sp, $41e6                                  ; $4ab7: $31 $e6 $41
    pop de                                        ; $4aba: $d1
    ld sp, hl                                     ; $4abb: $f9
    db $e3                                        ; $4abc: $e3
    or a                                          ; $4abd: $b7
    db $ec                                        ; $4abe: $ec
    ld a, [hl-]                                   ; $4abf: $3a
    ld l, e                                       ; $4ac0: $6b
    db $e4                                        ; $4ac1: $e4

Jump_02d_4ac2:
    call c, $ae35                                 ; $4ac2: $dc $35 $ae
    ld e, b                                       ; $4ac5: $58
    di                                            ; $4ac6: $f3
    ldh a, [rHDMA3]                               ; $4ac7: $f0 $53
    call nc, $da1e                                ; $4ac9: $d4 $1e $da
    ld [bc], a                                    ; $4acc: $02
    daa                                           ; $4acd: $27
    ld bc, $a296                                  ; $4ace: $01 $96 $a2
    inc a                                         ; $4ad1: $3c
    rst $08                                       ; $4ad2: $cf
    ld d, a                                       ; $4ad3: $57
    reti                                          ; $4ad4: $d9


    xor b                                         ; $4ad5: $a8
    ld l, e                                       ; $4ad6: $6b
    ld d, d                                       ; $4ad7: $52
    sbc [hl]                                      ; $4ad8: $9e
    rst $20                                       ; $4ad9: $e7
    dec l                                         ; $4ada: $2d
    sbc l                                         ; $4adb: $9d
    db $fc                                        ; $4adc: $fc
    ld bc, $91a3                                  ; $4add: $01 $a3 $91
    adc l                                         ; $4ae0: $8d
    inc l                                         ; $4ae1: $2c
    ld d, l                                       ; $4ae2: $55
    sub h                                         ; $4ae3: $94
    call c, $e6b1                                 ; $4ae4: $dc $b1 $e6
    ld e, [hl]                                    ; $4ae7: $5e
    sub e                                         ; $4ae8: $93
    ld e, h                                       ; $4ae9: $5c
    or [hl]                                       ; $4aea: $b6
    add $1f                                       ; $4aeb: $c6 $1f
    add $02                                       ; $4aed: $c6 $02

jr_02d_4aef:
    sbc h                                         ; $4aef: $9c
    ld de, $2296                                  ; $4af0: $11 $96 $22
    ld e, a                                       ; $4af3: $5f
    or c                                          ; $4af4: $b1
    ld e, l                                       ; $4af5: $5d
    scf                                           ; $4af6: $37
    cp a                                          ; $4af7: $bf
    ld d, l                                       ; $4af8: $55
    rst $28                                       ; $4af9: $ef
    and e                                         ; $4afa: $a3
    ld a, [c]                                     ; $4afb: $f2
    ld d, $a7                                     ; $4afc: $16 $a7
    rst $10                                       ; $4afe: $d7
    ld h, e                                       ; $4aff: $63
    ld [$0631], a                                 ; $4b00: $ea $31 $06
    or h                                          ; $4b03: $b4
    ld a, [bc]                                    ; $4b04: $0a
    dec b                                         ; $4b05: $05
    sbc l                                         ; $4b06: $9d
    ld b, a                                       ; $4b07: $47
    cp $80                                        ; $4b08: $fe $80
    sub c                                         ; $4b0a: $91
    adc a                                         ; $4b0b: $8f
    xor c                                         ; $4b0c: $a9
    rst $00                                       ; $4b0d: $c7
    inc a                                         ; $4b0e: $3c
    ld [hl], d                                    ; $4b0f: $72
    adc l                                         ; $4b10: $8d
    ld [$a591], a                                 ; $4b11: $ea $91 $a5
    adc d                                         ; $4b14: $8a
    ld a, [c]                                     ; $4b15: $f2
    inc a                                         ; $4b16: $3c
    rst $18                                       ; $4b17: $df
    ei                                            ; $4b18: $fb
    ei                                            ; $4b19: $fb
    ld e, d                                       ; $4b1a: $5a
    jr jr_02d_4aef                                ; $4b1b: $18 $d2

    or d                                          ; $4b1d: $b2
    xor l                                         ; $4b1e: $ad
    ld [hl-], a                                   ; $4b1f: $32
    adc h                                         ; $4b20: $8c
    ld h, l                                       ; $4b21: $65
    nop                                           ; $4b22: $00
    rst $30                                       ; $4b23: $f7
    rra                                           ; $4b24: $1f
    call nz, $2c5c                                ; $4b25: $c4 $5c $2c
    ld [hl], e                                    ; $4b28: $73
    xor [hl]                                      ; $4b29: $ae
    cp h                                          ; $4b2a: $bc
    dec b                                         ; $4b2b: $05
    ld e, c                                       ; $4b2c: $59
    ld [hl], d                                    ; $4b2d: $72
    ld [hl-], a                                   ; $4b2e: $32
    db $fc                                        ; $4b2f: $fc
    ld sp, $ee7d                                  ; $4b30: $31 $7d $ee
    rrca                                          ; $4b33: $0f
    add hl, hl                                    ; $4b34: $29
    add $b5                                       ; $4b35: $c6 $b5
    adc [hl]                                      ; $4b37: $8e
    rrca                                          ; $4b38: $0f
    ld a, b                                       ; $4b39: $78
    ld sp, $8be7                                  ; $4b3a: $31 $e7 $8b
    rst $30                                       ; $4b3d: $f7
    ld l, c                                       ; $4b3e: $69
    ld hl, sp+$49                                 ; $4b3f: $f8 $49
    adc $91                                       ; $4b41: $ce $91
    ld [hl+], a                                   ; $4b43: $22
    cp c                                          ; $4b44: $b9
    ld h, e                                       ; $4b45: $63
    call Call_000_26bd                            ; $4b46: $cd $bd $26
    ld l, a                                       ; $4b49: $6f
    ld bc, $7759                                  ; $4b4a: $01 $59 $77
    dec b                                         ; $4b4d: $05
    dec c                                         ; $4b4e: $0d
    cpl                                           ; $4b4f: $2f
    ld e, h                                       ; $4b50: $5c
    or c                                          ; $4b51: $b1
    sub c                                         ; $4b52: $91
    and l                                         ; $4b53: $a5
    adc d                                         ; $4b54: $8a
    add $b5                                       ; $4b55: $c6 $b5
    ld h, e                                       ; $4b57: $63
    cp h                                          ; $4b58: $bc
    ld h, $9d                                     ; $4b59: $26 $9d
    ld a, [hl]                                    ; $4b5b: $7e
    sbc a                                         ; $4b5c: $9f
    ccf                                           ; $4b5d: $3f
    xor a                                         ; $4b5e: $af
    dec a                                         ; $4b5f: $3d
    or h                                          ; $4b60: $b4
    dec b                                         ; $4b61: $05
    daa                                           ; $4b62: $27
    cp [hl]                                       ; $4b63: $be
    sbc a                                         ; $4b64: $9f
    inc e                                         ; $4b65: $1c
    ld e, [hl]                                    ; $4b66: $5e
    cp b                                          ; $4b67: $b8
    db $eb                                        ; $4b68: $eb
    xor [hl]                                      ; $4b69: $ae
    and b                                         ; $4b6a: $a0
    ld [hl], l                                    ; $4b6b: $75
    ld a, h                                       ; $4b6c: $7c
    sub b                                         ; $4b6d: $90
    adc [hl]                                      ; $4b6e: $8e
    rlca                                          ; $4b6f: $07
    jp hl                                         ; $4b70: $e9


    ld [hl], h                                    ; $4b71: $74
    ld d, c                                       ; $4b72: $51
    sbc $02                                       ; $4b73: $de $02
    dec e                                         ; $4b75: $1d
    rra                                           ; $4b76: $1f
    and h                                         ; $4b77: $a4
    db $e3                                        ; $4b78: $e3
    ld b, c                                       ; $4b79: $41
    ld a, [hl-]                                   ; $4b7a: $3a
    ld e, l                                       ; $4b7b: $5d
    sub h                                         ; $4b7c: $94
    ld e, h                                       ; $4b7d: $5c
    ld d, c                                       ; $4b7e: $51
    xor h                                         ; $4b7f: $ac
    ld [de], a                                    ; $4b80: $12
    sub [hl]                                      ; $4b81: $96
    ld [hl+], a                                   ; $4b82: $22
    ldh a, [$a8]                                  ; $4b83: $f0 $a8
    ld c, l                                       ; $4b85: $4d
    ld l, h                                       ; $4b86: $6c
    ld bc, $de47                                  ; $4b87: $01 $47 $de
    ld [c], a                                     ; $4b8a: $e2
    sub l                                         ; $4b8b: $95
    ld e, e                                       ; $4b8c: $5b
    inc h                                         ; $4b8d: $24
    rst $30                                       ; $4b8e: $f7
    rra                                           ; $4b8f: $1f
    ld b, h                                       ; $4b90: $44
    ld [hl], d                                    ; $4b91: $72
    rst $10                                       ; $4b92: $d7
    ld e, l                                       ; $4b93: $5d
    ld b, c                                       ; $4b94: $41
    dec sp                                        ; $4b95: $3b
    ld d, l                                       ; $4b96: $55
    adc $0d                                       ; $4b97: $ce $0d
    ld e, c                                       ; $4b99: $59
    ld b, l                                       ; $4b9a: $45
    ld a, c                                       ; $4b9b: $79
    dec bc                                        ; $4b9c: $0b
    and a                                         ; $4b9d: $a7
    and b                                         ; $4b9e: $a0
    cp $be                                        ; $4b9f: $fe $be
    add $18                                       ; $4ba1: $c6 $18
    ret nc                                        ; $4ba3: $d0

    ld c, [hl]                                    ; $4ba4: $4e
    sub l                                         ; $4ba5: $95
    ld [hl], e                                    ; $4ba6: $73
    ld b, e                                       ; $4ba7: $43
    ld d, [hl]                                    ; $4ba8: $56
    ld d, c                                       ; $4ba9: $51
    ld l, l                                       ; $4baa: $6d
    ld h, d                                       ; $4bab: $62
    dec bc                                        ; $4bac: $0b
    ld b, a                                       ; $4bad: $47
    dec b                                         ; $4bae: $05
    push de                                       ; $4baf: $d5
    cp e                                          ; $4bb0: $bb
    or h                                          ; $4bb1: $b4
    inc c                                         ; $4bb2: $0c
    ld l, b                                       ; $4bb3: $68
    push bc                                       ; $4bb4: $c5
    ld d, [hl]                                    ; $4bb5: $56
    add hl, de                                    ; $4bb6: $19
    add $fb                                       ; $4bb7: $c6 $fb
    ld d, e                                       ; $4bb9: $53
    ret nc                                        ; $4bba: $d0

    inc c                                         ; $4bbb: $0c
    ld [hl+], a                                   ; $4bbc: $22
    ld [hl], b                                    ; $4bbd: $70
    db $fc                                        ; $4bbe: $fc
    ld d, $cf                                     ; $4bbf: $16 $cf
    ld sp, hl                                     ; $4bc1: $f9
    ei                                            ; $4bc2: $fb
    rst $38                                       ; $4bc3: $ff
    and [hl]                                      ; $4bc4: $a6
    ld h, l                                       ; $4bc5: $65
    ld b, b                                       ; $4bc6: $40
    dec hl                                        ; $4bc7: $2b
    ld [hl], $b2                                  ; $4bc8: $36 $b2
    ld d, h                                       ; $4bca: $54
    ld d, c                                       ; $4bcb: $51
    db $ed                                        ; $4bcc: $ed
    and c                                         ; $4bcd: $a1
    dec l                                         ; $4bce: $2d
    rst $00                                       ; $4bcf: $c7
    ld e, l                                       ; $4bd0: $5d
    sbc b                                         ; $4bd1: $98
    call c, Call_02d_5775                         ; $4bd2: $dc $75 $57
    ret nc                                        ; $4bd5: $d0

    ld c, [hl]                                    ; $4bd6: $4e

Jump_02d_4bd7:
    sub l                                         ; $4bd7: $95
    scf                                           ; $4bd8: $37
    ld a, [$ce64]                                 ; $4bd9: $fa $64 $ce
    ld l, e                                       ; $4bdc: $6b
    inc de                                        ; $4bdd: $13
    ld e, e                                       ; $4bde: $5b
    and a                                         ; $4bdf: $a7
    jp z, Jump_02d_7d1b                           ; $4be0: $ca $1b $7d

    ld [hl-], a                                   ; $4be3: $32
    rst $20                                       ; $4be4: $e7
    inc sp                                        ; $4be5: $33
    add $3e                                       ; $4be6: $c6 $3e
    adc l                                         ; $4be8: $8d
    ld e, $50                                     ; $4be9: $1e $50
    ld l, l                                       ; $4beb: $6d
    ld h, d                                       ; $4bec: $62
    dec bc                                        ; $4bed: $0b
    ld e, c                                       ; $4bee: $59
    ld [hl], a                                    ; $4bef: $77
    dec b                                         ; $4bf0: $05
    xor l                                         ; $4bf1: $ad
    nop                                           ; $4bf2: $00
    ld h, $77                                     ; $4bf3: $26 $77
    jp nz, Jump_000_3b51                          ; $4bf5: $c2 $51 $3b

    sub $dc                                       ; $4bf8: $d6 $dc
    ld l, e                                       ; $4bfa: $6b
    sub $f1                                       ; $4bfb: $d6 $f1
    ld de, $6bc9                                  ; $4bfd: $11 $c9 $6b
    inc de                                        ; $4c00: $13
    ld e, e                                       ; $4c01: $5b
    ld b, a                                       ; $4c02: $47
    cp [hl]                                       ; $4c03: $be
    xor d                                         ; $4c04: $aa
    ld [hl-], a                                   ; $4c05: $32
    sub [hl]                                      ; $4c06: $96
    sub [hl]                                      ; $4c07: $96
    add c                                         ; $4c08: $81
    dec sp                                        ; $4c09: $3b
    sub [hl]                                      ; $4c0a: $96
    db $fd                                        ; $4c0b: $fd
    ld a, e                                       ; $4c0c: $7b
    call Call_02d_690c                            ; $4c0d: $cd $0c $69
    adc l                                         ; $4c10: $8d
    push bc                                       ; $4c11: $c5
    ldh [rOCPD], a                                ; $4c12: $e0 $6b
    ld h, h                                       ; $4c14: $64
    xor c                                         ; $4c15: $a9
    and d                                         ; $4c16: $a2
    ld [hl], c                                    ; $4c17: $71
    xor l                                         ; $4c18: $ad
    jp $1c2b                                      ; $4c19: $c3 $2b $1c


    ld h, d                                       ; $4c1c: $62
    call $1f03                                    ; $4c1d: $cd $03 $1f
    dec a                                         ; $4c20: $3d
    ld c, h                                       ; $4c21: $4c
    xor [hl]                                      ; $4c22: $ae
    db $e3                                        ; $4c23: $e3
    inc hl                                        ; $4c24: $23
    sub d                                         ; $4c25: $92
    rst $20                                       ; $4c26: $e7
    dec l                                         ; $4c27: $2d
    and a                                         ; $4c28: $a7
    and d                                         ; $4c29: $a2

Call_02d_4c2a:
    rst $28                                       ; $4c2a: $ef
    ld b, h                                       ; $4c2b: $44
    cp h                                          ; $4c2c: $bc
    ret c                                         ; $4c2d: $d8

    xor a                                         ; $4c2e: $af
    ld e, b                                       ; $4c2f: $58
    adc h                                         ; $4c30: $8c
    ld l, e                                       ; $4c31: $6b
    dec e                                         ; $4c32: $1d
    or b                                          ; $4c33: $b0
    adc d                                         ; $4c34: $8a
    sbc d                                         ; $4c35: $9a
    ld a, d                                       ; $4c36: $7a
    dec e                                         ; $4c37: $1d
    sbc a                                         ; $4c38: $9f
    scf                                           ; $4c39: $37
    ld hl, sp+$59                                 ; $4c3a: $f8 $59
    db $f4                                        ; $4c3c: $f4
    ld a, [hl]                                    ; $4c3d: $7e
    ld [hl], d                                    ; $4c3e: $72
    ld l, c                                       ; $4c3f: $69
    ei                                            ; $4c40: $fb
    call nc, $a55d                                ; $4c41: $d4 $5d $a5
    ld sp, hl                                     ; $4c44: $f9
    dec l                                         ; $4c45: $2d
    sub b                                         ; $4c46: $90
    db $eb                                        ; $4c47: $eb
    db $d3                                        ; $4c48: $d3
    ld [$d8ac], a                                 ; $4c49: $ea $ac $d8
    add sp, -$7f                                  ; $4c4c: $e8 $81
    adc a                                         ; $4c4e: $8f
    ld l, e                                       ; $4c4f: $6b
    rst $00                                       ; $4c50: $c7
    ld a, b                                       ; $4c51: $78
    ld c, l                                       ; $4c52: $4d
    ld a, [hl-]                                   ; $4c53: $3a
    db $fd                                        ; $4c54: $fd
    ld a, $7f                                     ; $4c55: $3e $7f
    sbc [hl]                                      ; $4c57: $9e
    ld l, a                                       ; $4c58: $6f
    dec e                                         ; $4c59: $1d
    rra                                           ; $4c5a: $1f
    ld hl, sp-$68                                 ; $4c5b: $f8 $98
    rlca                                          ; $4c5d: $07
    or c                                          ; $4c5e: $b1
    sub b                                         ; $4c5f: $90
    inc sp                                        ; $4c60: $33
    add sp, $79                                   ; $4c61: $e8 $79
    dec bc                                        ; $4c63: $0b
    ld b, a                                       ; $4c64: $47
    db $fd                                        ; $4c65: $fd
    add hl, hl                                    ; $4c66: $29
    sbc l                                         ; $4c67: $9d
    ld d, $e5                                     ; $4c68: $16 $e5
    dec sp                                        ; $4c6a: $3b
    ld d, [hl]                                    ; $4c6b: $56
    ldh [$82], a                                  ; $4c6c: $e0 $82
    adc $e3                                       ; $4c6e: $ce $e3
    ld a, [de]                                    ; $4c70: $1a
    ld l, c                                       ; $4c71: $69
    rst $10                                       ; $4c72: $d7
    xor e                                         ; $4c73: $ab
    ld a, [de]                                    ; $4c74: $1a
    sub d                                         ; $4c75: $92
    xor a                                         ; $4c76: $af
    ld sp, $70af                                  ; $4c77: $31 $af $70
    rst $38                                       ; $4c7a: $ff
    ld b, c                                       ; $4c7b: $41
    db $e4                                        ; $4c7c: $e4
    dec l                                         ; $4c7d: $2d
    ld a, c                                       ; $4c7e: $79
    sbc [hl]                                      ; $4c7f: $9e
    or a                                          ; $4c80: $b7
    sbc l                                         ; $4c81: $9d
    ld h, b                                       ; $4c82: $60
    ld d, $2b                                     ; $4c83: $16 $2b
    ld [hl], a                                    ; $4c85: $77
    ld b, e                                       ; $4c86: $43
    rra                                           ; $4c87: $1f
    cp a                                          ; $4c88: $bf
    jp $b65f                                      ; $4c89: $c3 $5f $b6


    ldh [rOCPD], a                                ; $4c8c: $e0 $6b
    db $ec                                        ; $4c8e: $ec
    ld d, a                                       ; $4c8f: $57
    ld d, l                                       ; $4c90: $55
    ld e, d                                       ; $4c91: $5a
    call nc, $8d54                                ; $4c92: $d4 $54 $8d
    ld de, $331b                                  ; $4c95: $11 $1b $33
    and b                                         ; $4c98: $a0
    db $e4                                        ; $4c99: $e4
    ld a, [hl+]                                   ; $4c9a: $2a
    jp $a5d8                                      ; $4c9b: $c3 $d8 $a5


    db $fd                                        ; $4c9e: $fd
    cp e                                          ; $4c9f: $bb
    add d                                         ; $4ca0: $82
    sub $58                                       ; $4ca1: $d6 $58
    adc h                                         ; $4ca3: $8c
    ld l, h                                       ; $4ca4: $6c
    ld h, h                                       ; $4ca5: $64
    xor c                                         ; $4ca6: $a9
    and d                                         ; $4ca7: $a2
    cp h                                          ; $4ca8: $bc
    dec b                                         ; $4ca9: $05
    daa                                           ; $4caa: $27
    add e                                         ; $4cab: $83
    jp z, $abf8                                   ; $4cac: $ca $f8 $ab

    ld a, [hl+]                                   ; $4caf: $2a
    ld h, e                                       ; $4cb0: $63
    add hl, hl                                    ; $4cb1: $29
    rst $08                                       ; $4cb2: $cf
    di                                            ; $4cb3: $f3
    ld e, l                                       ; $4cb4: $5d
    jp c, Jump_000_2bbf                           ; $4cb5: $da $bf $2b

    ld l, b                                       ; $4cb8: $68
    adc l                                         ; $4cb9: $8d
    push bc                                       ; $4cba: $c5
    ret z                                         ; $4cbb: $c8

    ld b, [hl]                                    ; $4cbc: $46
    sub [hl]                                      ; $4cbd: $96
    ld a, [hl+]                                   ; $4cbe: $2a
    jp z, $bcf3                                   ; $4cbf: $ca $f3 $bc

    dec b                                         ; $4cc2: $05
    daa                                           ; $4cc3: $27
    ld bc, $7726                                  ; $4cc4: $01 $26 $77
    db $dd                                        ; $4cc7: $dd
    dec d                                         ; $4cc8: $15
    inc [hl]                                      ; $4cc9: $34
    cp h                                          ; $4cca: $bc
    or b                                          ; $4ccb: $b0
    ld [hl], $71                                  ; $4ccc: $36 $71
    daa                                           ; $4cce: $27
    db $fd                                        ; $4ccf: $fd
    add hl, hl                                    ; $4cd0: $29
    ld l, b                                       ; $4cd1: $68
    add c                                         ; $4cd2: $81
    cp e                                          ; $4cd3: $bb
    sbc $27                                       ; $4cd4: $de $27
    ld a, l                                       ; $4cd6: $7d
    adc d                                         ; $4cd7: $8a
    ld [hl], c                                    ; $4cd8: $71
    adc l                                         ; $4cd9: $8d
    xor $c6                                       ; $4cda: $ee $c6
    inc a                                         ; $4cdc: $3c
    db $f4                                        ; $4cdd: $f4
    add hl, de                                    ; $4cde: $19
    and e                                         ; $4cdf: $a3
    ld l, e                                       ; $4ce0: $6b
    rst $38                                       ; $4ce1: $ff
    ld b, c                                       ; $4ce2: $41
    call nc, $b626                                ; $4ce3: $d4 $26 $b6
    rst $00                                       ; $4ce6: $c7
    sbc d                                         ; $4ce7: $9a
    ld a, e                                       ; $4ce8: $7b
    ld c, l                                       ; $4ce9: $4d
    ld l, l                                       ; $4cea: $6d
    ld [c], a                                     ; $4ceb: $e2
    ld a, [hl-]                                   ; $4cec: $3a
    sbc d                                         ; $4ced: $9a
    rrca                                          ; $4cee: $0f
    cpl                                           ; $4cef: $2f
    xor h                                         ; $4cf0: $ac
    ld c, l                                       ; $4cf1: $4d
    ld l, h                                       ; $4cf2: $6c
    ld bc, $e41d                                  ; $4cf3: $01 $1d $e4
    rla                                           ; $4cf6: $17
    and $ab                                       ; $4cf7: $e6 $ab
    xor a                                         ; $4cf9: $af
    ld e, l                                       ; $4cfa: $5d
    xor a                                         ; $4cfb: $af
    xor d                                         ; $4cfc: $aa
    db $f4                                        ; $4cfd: $f4
    ld a, e                                       ; $4cfe: $7b
    inc [hl]                                      ; $4cff: $34
    adc h                                         ; $4d00: $8c
    push de                                       ; $4d01: $d5
    ld e, c                                       ; $4d02: $59
    and l                                         ; $4d03: $a5
    add l                                         ; $4d04: $85
    ld a, $a1                                     ; $4d05: $3e $a1
    rrca                                          ; $4d07: $0f
    cp $1a                                        ; $4d08: $fe $1a
    pop bc                                        ; $4d0a: $c1
    ld a, [de]                                    ; $4d0b: $1a
    add hl, sp                                    ; $4d0c: $39
    add a                                         ; $4d0d: $87
    cp h                                          ; $4d0e: $bc
    dec b                                         ; $4d0f: $05
    daa                                           ; $4d10: $27
    inc bc                                        ; $4d11: $03
    ld c, [hl]                                    ; $4d12: $4e
    ld b, c                                       ; $4d13: $41
    cp e                                          ; $4d14: $bb
    ld b, h                                       ; $4d15: $44
    ld h, e                                       ; $4d16: $63
    cp a                                          ; $4d17: $bf
    xor d                                         ; $4d18: $aa
    jp nc, $f60c                                  ; $4d19: $d2 $0c $f6

    ld [hl], l                                    ; $4d1c: $75
    cp $2e                                        ; $4d1d: $fe $2e
    ld a, a                                       ; $4d1f: $7f
    rla                                           ; $4d20: $17
    dec de                                        ; $4d21: $1b
    ld d, [hl]                                    ; $4d22: $56
    ld [$4bd4], a                                 ; $4d23: $ea $d4 $4b
    ld e, c                                       ; $4d26: $59
    call nc, $ba1e                                ; $4d27: $d4 $1e $ba
    sub e                                         ; $4d2a: $93
    cp $38                                        ; $4d2b: $fe $38
    cp d                                          ; $4d2d: $ba
    ld hl, $032d                                  ; $4d2e: $21 $2d $03
    ld [hl], a                                    ; $4d31: $77
    inc l                                         ; $4d32: $2c
    xor e                                         ; $4d33: $ab
    inc [hl]                                      ; $4d34: $34
    or [hl]                                       ; $4d35: $b6
    ld hl, $2de5                                  ; $4d36: $21 $e5 $2d
    ld e, c                                       ; $4d39: $59
    ld [hl], a                                    ; $4d3a: $77
    dec b                                         ; $4d3b: $05
    db $ed                                        ; $4d3c: $ed
    sub h                                         ; $4d3d: $94
    rst $00                                       ; $4d3e: $c7
    ld [bc], a                                    ; $4d3f: $02
    dec h                                         ; $4d40: $25
    ld d, a                                       ; $4d41: $57
    or h                                          ; $4d42: $b4
    add $5f                                       ; $4d43: $c6 $5f
    ld e, d                                       ; $4d45: $5a
    ld de, $1f02                                  ; $4d46: $11 $02 $1f
    rst $10                                       ; $4d49: $d7
    sbc d                                         ; $4d4a: $9a
    ld b, a                                       ; $4d4b: $47
    ld hl, sp+$7e                                 ; $4d4c: $f8 $7e
    ld c, h                                       ; $4d4e: $4c
    or h                                          ; $4d4f: $b4
    and d                                         ; $4d50: $a2
    ld [hl], c                                    ; $4d51: $71
    ld [hl], h                                    ; $4d52: $74
    ld e, l                                       ; $4d53: $5d
    inc h                                         ; $4d54: $24
    ldh a, [$71]                                  ; $4d55: $f0 $71
    db $ed                                        ; $4d57: $ed
    ld d, h                                       ; $4d58: $54
    ld a, c                                       ; $4d59: $79
    and e                                         ; $4d5a: $a3
    ld c, a                                       ; $4d5b: $4f
    and $3c                                       ; $4d5c: $e6 $3c
    rst $18                                       ; $4d5e: $df
    pop de                                        ; $4d5f: $d1
    add [hl]                                      ; $4d60: $86
    ld sp, $d223                                  ; $4d61: $31 $23 $d2
    daa                                           ; $4d64: $27
    ld a, h                                       ; $4d65: $7c
    ld a, a                                       ; $4d66: $7f
    ld [hl], l                                    ; $4d67: $75
    ld d, [hl]                                    ; $4d68: $56
    nop                                           ; $4d69: $00
    di                                            ; $4d6a: $f3
    ld h, l                                       ; $4d6b: $65
    xor c                                         ; $4d6c: $a9
    nop                                           ; $4d6d: $00
    adc $18                                       ; $4d6e: $ce $18
    ld e, l                                       ; $4d70: $5d
    dec hl                                        ; $4d71: $2b
    ld a, [de]                                    ; $4d72: $1a
    add c                                         ; $4d73: $81
    and a                                         ; $4d74: $a7
    db $ec                                        ; $4d75: $ec
    rst $28                                       ; $4d76: $ef
    cp d                                          ; $4d77: $ba
    dec hl                                        ; $4d78: $2b
    ld l, b                                       ; $4d79: $68
    daa                                           ; $4d7a: $27
    inc bc                                        ; $4d7b: $03
    cp d                                          ; $4d7c: $ba
    xor e                                         ; $4d7d: $ab
    sub h                                         ; $4d7e: $94
    db $e4                                        ; $4d7f: $e4
    or b                                          ; $4d80: $b0
    ld c, h                                       ; $4d81: $4c
    ccf                                           ; $4d82: $3f
    add h                                         ; $4d83: $84
    xor h                                         ; $4d84: $ac
    xor a                                         ; $4d85: $af
    dec d                                         ; $4d86: $15
    dec de                                        ; $4d87: $1b
    cp a                                          ; $4d88: $bf
    and l                                         ; $4d89: $a5
    push af                                       ; $4d8a: $f5
    ld b, e                                       ; $4d8b: $43
    cp e                                          ; $4d8c: $bb
    sbc $27                                       ; $4d8d: $de $27
    rst $10                                       ; $4d8f: $d7
    adc d                                         ; $4d90: $8a
    ld h, d                                       ; $4d91: $62
    jp hl                                         ; $4d92: $e9


    rst $20                                       ; $4d93: $e7
    sub a                                         ; $4d94: $97
    ld h, d                                       ; $4d95: $62
    inc e                                         ; $4d96: $1c
    sub $c1                                       ; $4d97: $d6 $c1
    ld c, d                                       ; $4d99: $4a
    cp [hl]                                       ; $4d9a: $be
    sub e                                         ; $4d9b: $93
    cp $38                                        ; $4d9c: $fe $38
    jp nc, $a032                                  ; $4d9e: $d2 $32 $a0

    sbc l                                         ; $4da1: $9d
    ld a, [c]                                     ; $4da2: $f2
    ld e, b                                       ; $4da3: $58
    and b                                         ; $4da4: $a0
    ld sp, $5a02                                  ; $4da5: $31 $02 $5a
    ret c                                         ; $4da8: $d8

Call_02d_4da9:
    sbc d                                         ; $4da9: $9a
    ld h, d                                       ; $4daa: $62
    sub a                                         ; $4dab: $97
    ld a, [c]                                     ; $4dac: $f2
    ld d, $f5                                     ; $4dad: $16 $f5
    rst $28                                       ; $4daf: $ef
    add [hl]                                      ; $4db0: $86
    cp e                                          ; $4db1: $bb
    pop de                                        ; $4db2: $d1
    ld l, l                                       ; $4db3: $6d
    rla                                           ; $4db4: $17
    ei                                            ; $4db5: $fb
    ld h, c                                       ; $4db6: $61
    ldh [$9a], a                                  ; $4db7: $e0 $9a
    rlca                                          ; $4db9: $07
    cp [hl]                                       ; $4dba: $be
    ld h, e                                       ; $4dbb: $63
    cp h                                          ; $4dbc: $bc
    ld h, $9d                                     ; $4dbd: $26 $9d
    ld a, [hl]                                    ; $4dbf: $7e
    sbc a                                         ; $4dc0: $9f
    ccf                                           ; $4dc1: $3f
    xor a                                         ; $4dc2: $af
    ld c, l                                       ; $4dc3: $4d
    ld l, h                                       ; $4dc4: $6c
    ld bc, $a047                                  ; $4dc5: $01 $47 $a0
    cp $b2                                        ; $4dc8: $fe $b2
    rra                                           ; $4dca: $1f
    call c, Call_000_3b92                         ; $4dcb: $dc $92 $3b
    push hl                                       ; $4dce: $e5
    db $fd                                        ; $4dcf: $fd
    jp c, $16c4                                   ; $4dd0: $da $c4 $16

    sbc l                                         ; $4dd3: $9d
    ld h, b                                       ; $4dd4: $60
    ld hl, $98b7                                  ; $4dd5: $21 $b7 $98
    ld sp, $f6ba                                  ; $4dd8: $31 $ba $f6
    rra                                           ; $4ddb: $1f
    ld b, h                                       ; $4ddc: $44
    ld l, l                                       ; $4ddd: $6d
    ld h, d                                       ; $4dde: $62
    dec bc                                        ; $4ddf: $0b
    sbc l                                         ; $4de0: $9d
    ld e, $44                                     ; $4de1: $1e $44
    db $ed                                        ; $4de3: $ed
    and c                                         ; $4de4: $a1
    dec sp                                        ; $4de5: $3b
    sbc h                                         ; $4de6: $9c
    sbc l                                         ; $4de7: $9d
    rst $20                                       ; $4de8: $e7
    ld sp, hl                                     ; $4de9: $f9
    call nz, Call_000_0a5e                        ; $4dea: $c4 $5e $0a
    push af                                       ; $4ded: $f5
    di                                            ; $4dee: $f3
    inc a                                         ; $4def: $3c
    sbc a                                         ; $4df0: $9f
    add b                                         ; $4df1: $80
    sbc l                                         ; $4df2: $9d
    rst $20                                       ; $4df3: $e7
    ld a, c                                       ; $4df4: $79
    dec bc                                        ; $4df5: $0b
    daa                                           ; $4df6: $27
    ret c                                         ; $4df7: $d8

    db $fc                                        ; $4df8: $fc
    sub $98                                       ; $4df9: $d6 $98
    inc de                                        ; $4dfb: $13
    ld [de], a                                    ; $4dfc: $12
    cp [hl]                                       ; $4dfd: $be
    ccf                                           ; $4dfe: $3f
    dec b                                         ; $4dff: $05
    adc l                                         ; $4e00: $8d
    db $e4                                        ; $4e01: $e4
    dec d                                         ; $4e02: $15
    cp $9b                                        ; $4e03: $fe $9b
    ld a, [c]                                     ; $4e05: $f2
    dec e                                         ; $4e06: $1d
    add c                                         ; $4e07: $81
    ld a, [$3e8c]                                 ; $4e08: $fa $8c $3e
    ld l, b                                       ; $4e0b: $68
    ld [hl], l                                    ; $4e0c: $75
    ld b, [hl]                                    ; $4e0d: $46
    rrca                                          ; $4e0e: $0f
    ld h, d                                       ; $4e0f: $62
    call $df03                                    ; $4e10: $cd $03 $df
    dec h                                         ; $4e13: $25
    ld [hl+], a                                   ; $4e14: $22
    db $ed                                        ; $4e15: $ed
    ccf                                           ; $4e16: $3f
    ld h, b                                       ; $4e17: $60
    ld d, h                                       ; $4e18: $54
    adc d                                         ; $4e19: $8a
    ld h, [hl]                                    ; $4e1a: $66
    rst $38                                       ; $4e1b: $ff
    rst $18                                       ; $4e1c: $df
    or h                                          ; $4e1d: $b4
    ld a, [hl-]                                   ; $4e1e: $3a
    db $eb                                        ; $4e1f: $eb
    ld hl, sp-$80                                 ; $4e20: $f8 $80
    rla                                           ; $4e22: $17
    ld [hl], e                                    ; $4e23: $73
    ld e, [hl]                                    ; $4e24: $5e
    sbc e                                         ; $4e25: $9b
    cp b                                          ; $4e26: $b8

jr_02d_4e27:
    sub e                                         ; $4e27: $93
    ld b, c                                       ; $4e28: $41
    dec hl                                        ; $4e29: $2b
    ld e, d                                       ; $4e2a: $5a
    ld e, d                                       ; $4e2b: $5a
    ld b, c                                       ; $4e2c: $41
    ld hl, sp+$77                                 ; $4e2d: $f8 $77
    cp l                                          ; $4e2f: $bd
    xor d                                         ; $4e30: $aa
    jp nc, Jump_02d_54bf                          ; $4e31: $d2 $bf $54

    sbc e                                         ; $4e34: $9b
    ret c                                         ; $4e35: $d8

    ld [bc], a                                    ; $4e36: $02
    ld b, a                                       ; $4e37: $47
    sbc $9a                                       ; $4e38: $de $9a
    xor [hl]                                      ; $4e3a: $ae
    cpl                                           ; $4e3b: $2f
    or [hl]                                       ; $4e3c: $b6
    ld [$c3d1], a                                 ; $4e3d: $ea $d1 $c3
    pop af                                        ; $4e40: $f1
    cp e                                          ; $4e41: $bb
    sub l                                         ; $4e42: $95
    ld [hl+], a                                   ; $4e43: $22
    rra                                           ; $4e44: $1f
    or a                                          ; $4e45: $b7
    rra                                           ; $4e46: $1f
    dec hl                                        ; $4e47: $2b
    or [hl]                                       ; $4e48: $b6
    ld h, e                                       ; $4e49: $63
    call c, $d73e                                 ; $4e4a: $dc $3e $d7
    ld c, [hl]                                    ; $4e4d: $4e
    or l                                          ; $4e4e: $b5
    ld d, d                                       ; $4e4f: $52
    sub h                                         ; $4e50: $94
    ld e, h                                       ; $4e51: $5c
    ldh [$7f], a                                  ; $4e52: $e0 $7f
    ld a, a                                       ; $4e54: $7f
    inc b                                         ; $4e55: $04
    ei                                            ; $4e56: $fb
    ld e, d                                       ; $4e57: $5a
    ret z                                         ; $4e58: $c8

    dec l                                         ; $4e59: $2d
    sub $58                                       ; $4e5a: $d6 $58
    inc l                                         ; $4e5c: $2c
    ld l, [hl]                                    ; $4e5d: $6e
    ld b, l                                       ; $4e5e: $45
    rla                                           ; $4e5f: $17
    pop hl                                        ; $4e60: $e1
    ei                                            ; $4e61: $fb
    rst $38                                       ; $4e62: $ff
    ld d, [hl]                                    ; $4e63: $56
    sbc e                                         ; $4e64: $9b
    ret c                                         ; $4e65: $d8

    ld [bc], a                                    ; $4e66: $02
    dec e                                         ; $4e67: $1d
    dec l                                         ; $4e68: $2d
    ld d, [hl]                                    ; $4e69: $56
    inc [hl]                                      ; $4e6a: $34
    ld d, d                                       ; $4e6b: $52
    push de                                       ; $4e6c: $d5
    ld b, h                                       ; $4e6d: $44
    ld [hl], d                                    ; $4e6e: $72
    reti                                          ; $4e6f: $d9


    ld a, [de]                                    ; $4e70: $1a
    ld a, a                                       ; $4e71: $7f
    jr jr_02d_4e27                                ; $4e72: $18 $b3

    ld d, d                                       ; $4e74: $52
    db $e4                                        ; $4e75: $e4
    xor e                                         ; $4e76: $ab
    or e                                          ; $4e77: $b3
    ld h, d                                       ; $4e78: $62
    di                                            ; $4e79: $f3
    ld e, e                                       ; $4e7a: $5b
    ld h, e                                       ; $4e7b: $63
    ld c, [hl]                                    ; $4e7c: $4e
    ld c, b                                       ; $4e7d: $48
    ld hl, sp+$7e                                 ; $4e7e: $f8 $7e
    sbc $02                                       ; $4e80: $de $02
    rst $00                                       ; $4e82: $c7
    sub l                                         ; $4e83: $95
    db $fd                                        ; $4e84: $fd
    ld a, e                                       ; $4e85: $7b
    call $8e6c                                    ; $4e86: $cd $6c $8e
    ld a, [$b3ab]                                 ; $4e89: $fa $ab $b3
    or h                                          ; $4e8c: $b4
    and c                                         ; $4e8d: $a1
    ld l, e                                       ; $4e8e: $6b
    ld a, b                                       ; $4e8f: $78
    ld h, c                                       ; $4e90: $61
    cp [hl]                                       ; $4e91: $be
    inc de                                        ; $4e92: $13
    inc d                                         ; $4e93: $14
    cp e                                          ; $4e94: $bb
    ret c                                         ; $4e95: $d8

    cpl                                           ; $4e96: $2f
    inc d                                         ; $4e97: $14
    jp $374f                                      ; $4e98: $c3 $4f $37


    ld d, a                                       ; $4e9b: $57
    add h                                         ; $4e9c: $84
    ld a, l                                       ; $4e9d: $7d
    ld d, d                                       ; $4e9e: $52
    db $ec                                        ; $4e9f: $ec
    ld a, l                                       ; $4ea0: $7d
    ld e, d                                       ; $4ea1: $5a
    ld b, c                                       ; $4ea2: $41
    pop bc                                        ; $4ea3: $c1
    cp b                                          ; $4ea4: $b8
    db $fd                                        ; $4ea5: $fd
    ld e, b                                       ; $4ea6: $58
    or c                                          ; $4ea7: $b1

jr_02d_4ea8:
    dec e                                         ; $4ea8: $1d
    db $e3                                        ; $4ea9: $e3
    or $b9                                        ; $4eaa: $f6 $b9
    halt                                          ; $4eac: $76
    xor d                                         ; $4ead: $aa
    sub l                                         ; $4eae: $95
    and d                                         ; $4eaf: $a2
    cp h                                          ; $4eb0: $bc
    dec b                                         ; $4eb1: $05
    and a                                         ; $4eb2: $a7
    ld [c], a                                     ; $4eb3: $e2
    ld [$b166], sp                                ; $4eb4: $08 $66 $b1
    sub h                                         ; $4eb7: $94
    ld [c], a                                     ; $4eb8: $e2
    pop hl                                        ; $4eb9: $e1
    rra                                           ; $4eba: $1f
    cp a                                          ; $4ebb: $bf
    ld e, e                                       ; $4ebc: $5b
    add hl, hl                                    ; $4ebd: $29
    ld a, [c]                                     ; $4ebe: $f2
    sub c                                         ; $4ebf: $91
    rst $10                                       ; $4ec0: $d7
    adc l                                         ; $4ec1: $8d
    ld sp, $9a48                                  ; $4ec2: $31 $48 $9a
    pop bc                                        ; $4ec5: $c1
    ld l, $fc                                     ; $4ec6: $2e $fc
    add hl, de                                    ; $4ec8: $19
    ret nz                                        ; $4ec9: $c0

    cp d                                          ; $4eca: $ba
    sub l                                         ; $4ecb: $95
    halt                                          ; $4ecc: $76
    inc hl                                        ; $4ecd: $23
    ld h, e                                       ; $4ece: $63
    add hl, hl                                    ; $4ecf: $29
    add hl, sp                                    ; $4ed0: $39
    inc l                                         ; $4ed1: $2c
    xor e                                         ; $4ed2: $ab
    sbc c                                         ; $4ed3: $99
    dec c                                         ; $4ed4: $0d
    cp [hl]                                       ; $4ed5: $be
    sub $3c                                       ; $4ed6: $d6 $3c
    daa                                           ; $4ed8: $27
    xor l                                         ; $4ed9: $ad
    ld [hl-], a                                   ; $4eda: $32
    ld d, $66                                     ; $4edb: $16 $66
    ld b, b                                       ; $4edd: $40
    db $e3                                        ; $4ede: $e3
    or $63                                        ; $4edf: $f6 $63
    sub a                                         ; $4ee1: $97
    halt                                          ; $4ee2: $76
    dec a                                         ; $4ee3: $3d
    jr z, jr_02d_4ef5                             ; $4ee4: $28 $0f

    dec a                                         ; $4ee6: $3d
    ld l, a                                       ; $4ee7: $6f
    ld bc, $fd27                                  ; $4ee8: $01 $27 $fd
    ld [hl], c                                    ; $4eeb: $71
    ld [hl], h                                    ; $4eec: $74
    ld b, e                                       ; $4eed: $43
    ld e, d                                       ; $4eee: $5a
    ld b, $b4                                     ; $4eef: $06 $b4
    ld d, e                                       ; $4ef1: $53
    ld e, $0b                                     ; $4ef2: $1e $0b
    inc [hl]                                      ; $4ef4: $34

jr_02d_4ef5:
    dec b                                         ; $4ef5: $05
    xor l                                         ; $4ef6: $ad
    ld sp, $07a7                                  ; $4ef7: $31 $a7 $07
    or h                                          ; $4efa: $b4
    add $fc                                       ; $4efb: $c6 $fc
    jp nc, Jump_02d_7032                          ; $4efd: $d2 $32 $70

    rst $00                                       ; $4f00: $c7
    or d                                          ; $4f01: $b2
    jr nc, jr_02d_4ea8                            ; $4f02: $30 $a4

    cp l                                          ; $4f04: $bd
    xor $17                                       ; $4f05: $ee $17
    rst $28                                       ; $4f07: $ef
    db $d3                                        ; $4f08: $d3
    adc d                                         ; $4f09: $8a
    ld h, d                                       ; $4f0a: $62
    call Call_02d_5273                            ; $4f0b: $cd $73 $52
    xor h                                         ; $4f0e: $ac
    ld [hl-], a                                   ; $4f0f: $32
    ld d, $66                                     ; $4f10: $16 $66
    ld b, b                                       ; $4f12: $40
    sub c                                         ; $4f13: $91
    rst $28                                       ; $4f14: $ef
    cp b                                          ; $4f15: $b8
    ld [hl-], a                                   ; $4f16: $32
    jr nz, @+$2e                                  ; $4f17: $20 $2c

    jr jr_02d_4f75                                ; $4f19: $18 $5a

    ld c, d                                       ; $4f1b: $4a
    ld b, $d7                                     ; $4f1c: $06 $d7
    add e                                         ; $4f1e: $83
    ld h, [hl]                                    ; $4f1f: $66
    sub a                                         ; $4f20: $97
    ld c, d                                       ; $4f21: $4a
    pop de                                        ; $4f22: $d1
    ld [hl-], a                                   ; $4f23: $32
    add b                                         ; $4f24: $80
    dec bc                                        ; $4f25: $0b
    adc l                                         ; $4f26: $8d
    db $fc                                        ; $4f27: $fc
    ld bc, $71a3                                  ; $4f28: $01 $a3 $71
    ei                                            ; $4f2b: $fb
    or c                                          ; $4f2c: $b1
    ld c, e                                       ; $4f2d: $4b
    ld h, e                                       ; $4f2e: $63
    ld e, e                                       ; $4f2f: $5b
    add hl, hl                                    ; $4f30: $29
    ld a, c                                       ; $4f31: $79
    dec bc                                        ; $4f32: $0b
    daa                                           ; $4f33: $27
    ret c                                         ; $4f34: $d8

    jp nz, $d14a                                  ; $4f35: $c2 $4a $d1

    cp b                                          ; $4f38: $b8
    halt                                          ; $4f39: $76
    dec d                                         ; $4f3a: $15
    adc e                                         ; $4f3b: $8b
    ret nc                                        ; $4f3c: $d0

    ld b, h                                       ; $4f3d: $44
    dec hl                                        ; $4f3e: $2b
    ld e, d                                       ; $4f3f: $5a
    ld a, [bc]                                    ; $4f40: $0a
    ld e, h                                       ; $4f41: $5c
    ld b, $e3                                     ; $4f42: $06 $e3
    jp c, $8f29                                   ; $4f44: $da $29 $8f

    dec b                                         ; $4f47: $05
    ld e, d                                       ; $4f48: $5a
    cp h                                          ; $4f49: $bc
    ld c, a                                       ; $4f4a: $4f
    db $d3                                        ; $4f4b: $d3
    ld e, a                                       ; $4f4c: $5f
    jp z, Jump_02d_5f22                           ; $4f4d: $ca $22 $5f

    sub $5d                                       ; $4f50: $d6 $5d
    ld b, c                                       ; $4f52: $41
    dec hl                                        ; $4f53: $2b
    ld e, d                                       ; $4f54: $5a
    db $e3                                        ; $4f55: $e3
    cpl                                           ; $4f56: $2f
    xor l                                         ; $4f57: $ad
    ld [$af81], sp                                ; $4f58: $08 $81 $af
    ld l, b                                       ; $4f5b: $68
    ld c, l                                       ; $4f5c: $4d
    add c                                         ; $4f5d: $81
    sbc b                                         ; $4f5e: $98
    jp nc, $b769                                  ; $4f5f: $d2 $69 $b7

    ld a, [de]                                    ; $4f62: $1a
    ei                                            ; $4f63: $fb
    sub h                                         ; $4f64: $94
    or a                                          ; $4f65: $b7
    daa                                           ; $4f66: $27
    ld l, b                                       ; $4f67: $68
    add hl, hl                                    ; $4f68: $29
    ld [hl], b                                    ; $4f69: $70
    add hl, de                                    ; $4f6a: $19
    adc h                                         ; $4f6b: $8c
    ld l, e                                       ; $4f6c: $6b
    dec e                                         ; $4f6d: $1d
    xor [hl]                                      ; $4f6e: $ae
    ld h, e                                       ; $4f6f: $63
    sbc $37                                       ; $4f70: $de $37
    sub [hl]                                      ; $4f72: $96
    sub l                                         ; $4f73: $95
    ld [hl-], a                                   ; $4f74: $32

jr_02d_4f75:
    dec b                                         ; $4f75: $05
    xor l                                         ; $4f76: $ad
    adc $2e                                       ; $4f77: $ce $2e
    pop de                                        ; $4f79: $d1
    ld l, [hl]                                    ; $4f7a: $6e
    ld h, h                                       ; $4f7b: $64
    inc l                                         ; $4f7c: $2c
    push hl                                       ; $4f7d: $e5
    dec sp                                        ; $4f7e: $3b

jr_02d_4f7f:
    xor [hl]                                      ; $4f7f: $ae
    db $ec                                        ; $4f80: $ec
    ld l, e                                       ; $4f81: $6b
    ld l, c                                       ; $4f82: $69
    inc bc                                        ; $4f83: $03
    ld e, d                                       ; $4f84: $5a
    ld h, e                                       ; $4f85: $63
    ld sp, $4773                                  ; $4f86: $31 $73 $47
    ld b, [hl]                                    ; $4f89: $46
    ld a, $fd                                     ; $4f8a: $3e $fd
    cp c                                          ; $4f8c: $b9
    ret z                                         ; $4f8d: $c8

    sbc h                                         ; $4f8e: $9c
    xor a                                         ; $4f8f: $af
    adc $42                                       ; $4f90: $ce $42
    or c                                          ; $4f92: $b1
    db $eb                                        ; $4f93: $eb
    add c                                         ; $4f94: $81
    ld b, a                                       ; $4f95: $47
    ld l, l                                       ; $4f96: $6d
    ld h, d                                       ; $4f97: $62
    dec bc                                        ; $4f98: $0b
    and a                                         ; $4f99: $a7
    ld a, $8c                                     ; $4f9a: $3e $8c
    dec [hl]                                      ; $4f9c: $35
    ld c, $5c                                     ; $4f9d: $0e $5c
    sbc a                                         ; $4f9f: $9f
    sub d                                         ; $4fa0: $92
    dec hl                                        ; $4fa1: $2b
    adc d                                         ; $4fa2: $8a
    add l                                         ; $4fa3: $85
    sub l                                         ; $4fa4: $95
    and d                                         ; $4fa5: $a2
    jr jr_02d_4f7f                                ; $4fa6: $18 $d7

    xor [hl]                                      ; $4fa8: $ae
    ld h, d                                       ; $4fa9: $62
    ld de, $689a                                  ; $4faa: $11 $9a $68
    ld b, l                                       ; $4fad: $45
    or c                                          ; $4fae: $b1
    inc d                                         ; $4faf: $14
    cp b                                          ; $4fb0: $b8
    inc c                                         ; $4fb1: $0c
    ld a, [hl-]                                   ; $4fb2: $3a
    adc a                                         ; $4fb3: $8f
    ld b, c                                       ; $4fb4: $41
    xor [hl]                                      ; $4fb5: $ae
    ld e, b                                       ; $4fb6: $58

Jump_02d_4fb7:
    inc hl                                        ; $4fb7: $23
    ld h, b                                       ; $4fb8: $60
    db $f4                                        ; $4fb9: $f4
    ld l, c                                       ; $4fba: $69
    sub a                                         ; $4fbb: $97
    ld e, l                                       ; $4fbc: $5d
    ld l, h                                       ; $4fbd: $6c
    ld sp, hl                                     ; $4fbe: $f9
    cp b                                          ; $4fbf: $b8
    ld h, d                                       ; $4fc0: $62
    sub a                                         ; $4fc1: $97
    rst $18                                       ; $4fc2: $df

Call_02d_4fc3:
    adc h                                         ; $4fc3: $8c
    ret nz                                        ; $4fc4: $c0

    dec d                                         ; $4fc5: $15
    inc hl                                        ; $4fc6: $23
    cp c                                          ; $4fc7: $b9
    ld h, e                                       ; $4fc8: $63
    ld a, [de]                                    ; $4fc9: $1a
    db $ed                                        ; $4fca: $ed
    sub e                                         ; $4fcb: $93
    ld [hl+], a                                   ; $4fcc: $22
    ld l, a                                       ; $4fcd: $6f
    ld bc, $b5f5                                  ; $4fce: $01 $f5 $b5
    xor a                                         ; $4fd1: $af
    cp c                                          ; $4fd2: $b9
    ld e, b                                       ; $4fd3: $58
    and $5c                                       ; $4fd4: $e6 $5c
    ld l, e                                       ; $4fd6: $6b
    inc l                                         ; $4fd7: $2c
    ld d, [hl]                                    ; $4fd8: $56
    inc d                                         ; $4fd9: $14
    dec bc                                        ; $4fda: $0b
    ld c, e                                       ; $4fdb: $4b
    dec d                                         ; $4fdc: $15
    sub h                                         ; $4fdd: $94
    rst $00                                       ; $4fde: $c7
    sbc d                                         ; $4fdf: $9a
    rlca                                          ; $4fe0: $07
    ld a, $e6                                     ; $4fe1: $3e $e6
    and c                                         ; $4fe3: $a1
    cpl                                           ; $4fe4: $2f
    inc bc                                        ; $4fe5: $03
    ld a, [hl+]                                   ; $4fe6: $2a
    ld b, l                                       ; $4fe7: $45
    xor e                                         ; $4fe8: $ab
    inc c                                         ; $4fe9: $0c
    db $e3                                        ; $4fea: $e3
    db $fd                                        ; $4feb: $fd
    reti                                          ; $4fec: $d9


    adc d                                         ; $4fed: $8a
    sub $14                                       ; $4fee: $d6 $14
    adc b                                         ; $4ff0: $88
    ld [hl], c                                    ; $4ff1: $71
    xor l                                         ; $4ff2: $ad
    ld a, c                                       ; $4ff3: $79
    ld hl, sp+$29                                 ; $4ff4: $f8 $29
    ld a, [c]                                     ; $4ff6: $f2
    push de                                       ; $4ff7: $d5
    rst $10                                       ; $4ff8: $d7
    adc d                                         ; $4ff9: $8a
    ld h, d                                       ; $4ffa: $62
    ld l, $96                                     ; $4ffb: $2e $96
    add hl, sp                                    ; $4ffd: $39
    rst $10                                       ; $4ffe: $d7
    ld a, [de]                                    ; $4fff: $1a
    di                                            ; $5000: $f3
    ld c, e                                       ; $5001: $4b
    set 0, b                                      ; $5002: $cb $c0
    dec e                                         ; $5004: $1d
    ld c, e                                       ; $5005: $4b
    db $ec                                        ; $5006: $ec
    ld b, [hl]                                    ; $5007: $46
    ld hl, sp+$2f                                 ; $5008: $f8 $2f
    sub l                                         ; $500a: $95
    and d                                         ; $500b: $a2
    ld c, a                                       ; $500c: $4f
    ld a, c                                       ; $500d: $79
    dec bc                                        ; $500e: $0b
    rst $00                                       ; $500f: $c7
    sub l                                         ; $5010: $95
    push de                                       ; $5011: $d5
    call z, $0196                                 ; $5012: $cc $96 $01
    sub l                                         ; $5015: $95
    inc c                                         ; $5016: $0c
    ld l, b                                       ; $5017: $68
    rla                                           ; $5018: $17

jr_02d_5019:
    ei                                            ; $5019: $fb
    add l                                         ; $501a: $85
    add $b5                                       ; $501b: $c6 $b5
    inc d                                         ; $501d: $14
    sbc [hl]                                      ; $501e: $9e
    ld l, a                                       ; $501f: $6f
    xor $9a                                       ; $5020: $ee $9a
    ld sp, $56ba                                  ; $5022: $31 $ba $56
    or h                                          ; $5025: $b4
    and [hl]                                      ; $5026: $a6
    ret c                                         ; $5027: $d8

    ld h, l                                       ; $5028: $65
    adc $57                                       ; $5029: $ce $57
    ld h, a                                       ; $502b: $67
    add hl, hl                                    ; $502c: $29
    dec hl                                        ; $502d: $2b
    add [hl]                                      ; $502e: $86
    ld sp, $9dae                                  ; $502f: $31 $ae $9d
    ld [bc], a                                    ; $5032: $02
    ld h, c                                       ; $5033: $61
    adc $f3                                       ; $5034: $ce $f3
    sbc l                                         ; $5036: $9d
    db $f4                                        ; $5037: $f4
    ld d, a                                       ; $5038: $57
    inc [hl]                                      ; $5039: $34
    and $21                                       ; $503a: $e6 $21
    xor l                                         ; $503c: $ad
    ld h, [hl]                                    ; $503d: $66
    ld a, [$f2e4]                                 ; $503e: $fa $e4 $f2
    ld d, l                                       ; $5041: $55
    add [hl]                                      ; $5042: $86
    or c                                          ; $5043: $b1
    ld l, h                                       ; $5044: $6c
    xor e                                         ; $5045: $ab
    inc c                                         ; $5046: $0c

jr_02d_5047:
    ld h, e                                       ; $5047: $63
    ld a, [$4573]                                 ; $5048: $fa $73 $45
    inc a                                         ; $504b: $3c
    daa                                           ; $504c: $27
    db $f4                                        ; $504d: $f4
    cp h                                          ; $504e: $bc
    dec b                                         ; $504f: $05
    daa                                           ; $5050: $27
    jr z, jr_02d_5019                             ; $5051: $28 $c6

    ld [hl-], a                                   ; $5053: $32
    ld h, a                                       ; $5054: $67
    dec a                                         ; $5055: $3d
    ret nz                                        ; $5056: $c0

    ld d, d                                       ; $5057: $52
    inc d                                         ; $5058: $14
    db $e3                                        ; $5059: $e3
    or $63                                        ; $505a: $f6 $63
    push bc                                       ; $505c: $c5
    ld d, $56                                     ; $505d: $16 $56
    adc d                                         ; $505f: $8a
    add $15                                       ; $5060: $c6 $15
    ld l, e                                       ; $5062: $6b
    db $fc                                        ; $5063: $fc
    and l                                         ; $5064: $a5
    dec d                                         ; $5065: $15
    ld hl, $18f0                                  ; $5066: $21 $f0 $18
    res 3, h                                      ; $5069: $cb $9c
    db $eb                                        ; $506b: $eb
    db $d3                                        ; $506c: $d3
    adc d                                         ; $506d: $8a
    xor l                                         ; $506e: $ad
    ld a, c                                       ; $506f: $79
    ld c, [hl]                                    ; $5070: $4e
    ld e, d                                       ; $5071: $5a
    pop de                                        ; $5072: $d1
    or d                                          ; $5073: $b2
    rra                                           ; $5074: $1f
    ld a, b                                       ; $5075: $78
    ld [hl], d                                    ; $5076: $72
    sub l                                         ; $5077: $95
    ld h, c                                       ; $5078: $61
    xor h                                         ; $5079: $ac
    ret c                                         ; $507a: $d8

    ld a, $20                                     ; $507b: $3e $20
    ld c, l                                       ; $507d: $4d
    and l                                         ; $507e: $a5
    jr z, jr_02d_5047                             ; $507f: $28 $c6

    sbc a                                         ; $5081: $9f
    ld d, a                                       ; $5082: $57
    ld a, [$b794]                                 ; $5083: $fa $94 $b7
    rst $00                                       ; $5086: $c7
    sub l                                         ; $5087: $95
    dec [hl]                                      ; $5088: $35
    and $d6                                       ; $5089: $e6 $d6
    dec l                                         ; $508b: $2d

jr_02d_508c:
    dec l                                         ; $508c: $2d
    inc bc                                        ; $508d: $03
    ld [hl], a                                    ; $508e: $77
    inc l                                         ; $508f: $2c
    xor e                                         ; $5090: $ab
    sbc c                                         ; $5091: $99
    dec c                                         ; $5092: $0d
    cp $14                                        ; $5093: $fe $14
    sub a                                         ; $5095: $97
    dec d                                         ; $5096: $15
    sub h                                         ; $5097: $94
    rst $28                                       ; $5098: $ef
    or d                                          ; $5099: $b2
    adc e                                         ; $509a: $8b
    ld a, l                                       ; $509b: $7d
    ld e, e                                       ; $509c: $5b
    and l                                         ; $509d: $a5
    ld l, a                                       ; $509e: $6f
    sbc a                                         ; $509f: $9f
    ld h, [hl]                                    ; $50a0: $66
    or b                                          ; $50a1: $b0
    inc c                                         ; $50a2: $0c
    jr @+$3b                                      ; $50a3: $18 $39

    sub $ad                                       ; $50a5: $d6 $ad
    or h                                          ; $50a7: $b4
    dec de                                        ; $50a8: $1b
    add hl, de                                    ; $50a9: $19
    ld c, e                                       ; $50aa: $4b
    ret                                           ; $50ab: $c9


    ld [hl], c                                    ; $50ac: $71
    ei                                            ; $50ad: $fb
    or c                                          ; $50ae: $b1
    ld c, e                                       ; $50af: $4b
    cp e                                          ; $50b0: $bb
    ld e, $94                                     ; $50b1: $1e $94
    add a                                         ; $50b3: $87
    sbc [hl]                                      ; $50b4: $9e
    ld e, h                                       ; $50b5: $5c
    ld h, l                                       ; $50b6: $65
    jr @-$33                                      ; $50b7: $18 $cb

    sub $be                                       ; $50b9: $d6 $be
    ld d, $86                                     ; $50bb: $16 $86
    or c                                          ; $50bd: $b1
    add $62                                       ; $50be: $c6 $62
    xor a                                         ; $50c0: $af
    ei                                            ; $50c1: $fb
    cp h                                          ; $50c2: $bc
    dec b                                         ; $50c3: $05
    and a                                         ; $50c4: $a7
    adc b                                         ; $50c5: $88
    ld h, l                                       ; $50c6: $65
    adc $b5                                       ; $50c7: $ce $b5
    inc d                                         ; $50c9: $14
    ld [$032f], a                                 ; $50ca: $ea $2f $03
    or $f9                                        ; $50cd: $f6 $f9
    ld [$4fa6], sp                                ; $50cf: $08 $a6 $4f
    xor [hl]                                      ; $50d2: $ae
    jr jr_02d_508c                                ; $50d3: $18 $b7

    rra                                           ; $50d5: $1f
    dec hl                                        ; $50d6: $2b
    ld e, d                                       ; $50d7: $5a
    ld a, [bc]                                    ; $50d8: $0a
    ld e, h                                       ; $50d9: $5c
    ld b, $e3                                     ; $50da: $06 $e3
    jp c, Jump_000_05d1                           ; $50dc: $da $d1 $05

    jp hl                                         ; $50df: $e9


    inc a                                         ; $50e0: $3c
    cp h                                          ; $50e1: $bc
    adc $4d                                       ; $50e2: $ce $4d
    ld c, $cb                                     ; $50e4: $0e $cb
    ld l, d                                       ; $50e6: $6a
    ld h, [hl]                                    ; $50e7: $66
    add e                                         ; $50e8: $83
    ccf                                           ; $50e9: $3f
    ld a, d                                       ; $50ea: $7a
    xor c                                         ; $50eb: $a9
    rst $00                                       ; $50ec: $c7
    ld h, d                                       ; $50ed: $62
    reti                                          ; $50ee: $d9


    rra                                           ; $50ef: $1f
    and e                                         ; $50f0: $a3
    ld l, a                                       ; $50f1: $6f
    sbc a                                         ; $50f2: $9f
    add $61                                       ; $50f3: $c6 $61
    db $e4                                        ; $50f5: $e4
    rrca                                          ; $50f6: $0f
    inc bc                                        ; $50f7: $03
    db $eb                                        ; $50f8: $eb
    ld d, [hl]                                    ; $50f9: $56
    jp c, $8c8d                                   ; $50fa: $da $8d $8c

    and l                                         ; $50fd: $a5
    pop de                                        ; $50fe: $d1
    inc bc                                        ; $50ff: $03
    ld e, d                                       ; $5100: $5a
    db $e3                                        ; $5101: $e3
    ld [hl], l                                    ; $5102: $75
    ld h, e                                       ; $5103: $63
    ld e, h                                       ; $5104: $5c
    dec hl                                        ; $5105: $2b
    or [hl]                                       ; $5106: $b6
    and $39                                       ; $5107: $e6 $39
    add hl, hl                                    ; $5109: $29
    ld l, a                                       ; $510a: $6f
    ld bc, $95c7                                  ; $510b: $01 $c7 $95
    dec [hl]                                      ; $510e: $35
    and $d6                                       ; $510f: $e6 $d6
    dec l                                         ; $5111: $2d
    dec l                                         ; $5112: $2d
    inc bc                                        ; $5113: $03
    ld [hl], a                                    ; $5114: $77
    ld hl, sp+$1a                                 ; $5115: $f8 $1a
    rst $10                                       ; $5117: $d7
    ld l, $c5                                     ; $5118: $2e $c5
    add d                                         ; $511a: $82
    adc h                                         ; $511b: $8c
    ld b, b                                       ; $511c: $40
    ld sp, $b1ae                                  ; $511d: $31 $ae $b1
    inc e                                         ; $5120: $1c
    db $d3                                        ; $5121: $d3
    jp hl                                         ; $5122: $e9


    rst $30                                       ; $5123: $f7
    ld d, a                                       ; $5124: $57
    push de                                       ; $5125: $d5
    db $fd                                        ; $5126: $fd
    ld e, d                                       ; $5127: $5a
    sbc l                                         ; $5128: $9d
    pop bc                                        ; $5129: $c1
    sbc a                                         ; $512a: $9f
    ld bc, $76b9                                  ; $512b: $01 $b9 $76
    dec a                                         ; $512e: $3d
    jr z, jr_02d_5140                             ; $512f: $28 $0f

    dec a                                         ; $5131: $3d
    ld l, a                                       ; $5132: $6f
    ld bc, $dc27                                  ; $5133: $01 $27 $dc
    pop hl                                        ; $5136: $e1
    ld l, e                                       ; $5137: $6b
    ld e, h                                       ; $5138: $5c
    cp e                                          ; $5139: $bb
    inc d                                         ; $513a: $14
    dec bc                                        ; $513b: $0b
    ld [hl-], a                                   ; $513c: $32
    ld [bc], a                                    ; $513d: $02
    push bc                                       ; $513e: $c5
    ld a, [de]                                    ; $513f: $1a

jr_02d_5140:
    ld bc, $348d                                  ; $5140: $01 $8d $34
    ld [hl], d                                    ; $5143: $72
    ei                                            ; $5144: $fb
    pop de                                        ; $5145: $d1
    inc a                                         ; $5146: $3c
    daa                                           ; $5147: $27
    ld sp, hl                                     ; $5148: $f9
    ld [$fe0c], a                                 ; $5149: $ea $0c $fe
    inc c                                         ; $514c: $0c
    ret z                                         ; $514d: $c8

    or l                                          ; $514e: $b5
    dec de                                        ; $514f: $1b
    add hl, de                                    ; $5150: $19
    ld c, e                                       ; $5151: $4b
    ret                                           ; $5152: $c9


    add l                                         ; $5153: $85
    db $fd                                        ; $5154: $fd
    ld e, b                                       ; $5155: $58
    push de                                       ; $5156: $d5
    ld [hl], l                                    ; $5157: $75
    and l                                         ; $5158: $a5
    and l                                         ; $5159: $a5
    ld e, $b0                                     ; $515a: $1e $b0
    db $e4                                        ; $515c: $e4
    ld a, c                                       ; $515d: $79
    dec bc                                        ; $515e: $0b
    push af                                       ; $515f: $f5
    or l                                          ; $5160: $b5
    ld a, a                                       ; $5161: $7f
    scf                                           ; $5162: $37
    ld e, h                                       ; $5163: $5c
    or [hl]                                       ; $5164: $b6
    ld d, l                                       ; $5165: $55
    add [hl]                                      ; $5166: $86
    ld sp, $d606                                  ; $5167: $31 $06 $d6
    ret z                                         ; $516a: $c8

    db $e3                                        ; $516b: $e3
    db $fd                                        ; $516c: $fd
    xor a                                         ; $516d: $af
    jp hl                                         ; $516e: $e9


    sub e                                         ; $516f: $93
    set 2, a                                      ; $5170: $cb $d7
    sbc b                                         ; $5172: $98
    rst $28                                       ; $5173: $ef
    ld [de], a                                    ; $5174: $12
    sub c                                         ; $5175: $91
    sub $3c                                       ; $5176: $d6 $3c
    daa                                           ; $5178: $27
    adc l                                         ; $5179: $8d
    sub c                                         ; $517a: $91
    ei                                            ; $517b: $fb
    inc bc                                        ; $517c: $03
    inc l                                         ; $517d: $2c
    push hl                                       ; $517e: $e5
    and [hl]                                      ; $517f: $a6
    dec [hl]                                      ; $5180: $35
    ld e, [hl]                                    ; $5181: $5e
    scf                                           ; $5182: $37
    add $b5                                       ; $5183: $c6 $b5
    ld h, d                                       ; $5185: $62
    ld c, e                                       ; $5186: $4b
    rla                                           ; $5187: $17
    res 0, b                                      ; $5188: $cb $80
    add $ef                                       ; $518a: $c6 $ef
    ld [hl-], a                                   ; $518c: $32
    ret z                                         ; $518d: $c8

    ld e, e                                       ; $518e: $5b

jr_02d_518f:
    rst $00                                       ; $518f: $c7
    sub l                                         ; $5190: $95
    ld a, l                                       ; $5191: $7d
    dec l                                         ; $5192: $2d
    ld l, l                                       ; $5193: $6d
    ld b, b                                       ; $5194: $40
    ld l, e                                       ; $5195: $6b
    inc l                                         ; $5196: $2c
    and [hl]                                      ; $5197: $a6
    ld c, a                                       ; $5198: $4f
    ld l, $1f                                     ; $5199: $2e $1f
    or a                                          ; $519b: $b7
    rra                                           ; $519c: $1f
    dec hl                                        ; $519d: $2b
    adc d                                         ; $519e: $8a
    add l                                         ; $519f: $85
    sub l                                         ; $51a0: $95
    and d                                         ; $51a1: $a2
    ld e, b                                       ; $51a2: $58
    ld b, $ec                                     ; $51a3: $06 $ec
    di                                            ; $51a5: $f3
    ld h, c                                       ; $51a6: $61
    ld e, c                                       ; $51a7: $59
    call Call_02d_5c6c                            ; $51a8: $cd $6c $5c
    or c                                          ; $51ab: $b1
    db $eb                                        ; $51ac: $eb
    add c                                         ; $51ad: $81
    ld b, a                                       ; $51ae: $47
    cp [hl]                                       ; $51af: $be
    inc de                                        ; $51b0: $13
    ld l, h                                       ; $51b1: $6c
    ld c, l                                       ; $51b2: $4d
    add c                                         ; $51b3: $81
    add $9c                                       ; $51b4: $c6 $9c
    add $15                                       ; $51b6: $c6 $15
    ld l, e                                       ; $51b8: $6b
    db $fc                                        ; $51b9: $fc
    and l                                         ; $51ba: $a5
    dec d                                         ; $51bb: $15
    ld hl, $98f0                                  ; $51bc: $21 $f0 $98
    ld a, [hl]                                    ; $51bf: $7e
    xor c                                         ; $51c0: $a9
    set 5, b                                      ; $51c1: $cb $e8
    db $d3                                        ; $51c3: $d3
    cp b                                          ; $51c4: $b8
    ld h, d                                       ; $51c5: $62
    call Call_02d_4fc3                            ; $51c6: $cd $c3 $4f
    or c                                          ; $51c9: $b1
    ret nz                                        ; $51ca: $c0

    cp l                                          ; $51cb: $bd
    cp a                                          ; $51cc: $bf
    and d                                         ; $51cd: $a2
    jr jr_02d_518f                                ; $51ce: $18 $bf

    cp c                                          ; $51d0: $b9
    ld a, l                                       ; $51d1: $7d
    sub [hl]                                      ; $51d2: $96
    ld a, [c]                                     ; $51d3: $f2
    ld d, $27                                     ; $51d4: $16 $27
    ld l, b                                       ; $51d6: $68
    rla                                           ; $51d7: $17
    ld e, e                                       ; $51d8: $5b
    dec d                                         ; $51d9: $15
    cp $15                                        ; $51da: $fe $15
    xor l                                         ; $51dc: $ad
    add hl, hl                                    ; $51dd: $29
    db $10                                        ; $51de: $10
    ld [hl], e                                    ; $51df: $73
    ld l, e                                       ; $51e0: $6b
    sub b                                         ; $51e1: $90
    ld l, e                                       ; $51e2: $6b
    call $9f03                                    ; $51e3: $cd $03 $9f
    sub l                                         ; $51e6: $95
    ld [hl+], a                                   ; $51e7: $22
    sbc a                                         ; $51e8: $9f
    pop bc                                        ; $51e9: $c1
    cp b                                          ; $51ea: $b8
    and b                                         ; $51eb: $a0
    inc sp                                        ; $51ec: $33
    sub $ad                                       ; $51ed: $d6 $ad
    or h                                          ; $51ef: $b4
    dec de                                        ; $51f0: $1b
    add hl, de                                    ; $51f1: $19
    ld c, e                                       ; $51f2: $4b
    ld l, e                                       ; $51f3: $6b
    inc l                                         ; $51f4: $2c
    ld b, d                                       ; $51f5: $42

jr_02d_51f6:
    ld l, e                                       ; $51f6: $6b
    call z, Call_000_3457                         ; $51f7: $cc $57 $34
    ld a, d                                       ; $51fa: $7a
    xor c                                         ; $51fb: $a9
    rst $00                                       ; $51fc: $c7
    ld h, d                                       ; $51fd: $62
    reti                                          ; $51fe: $d9


    rst $18                                       ; $51ff: $df
    ld h, l                                       ; $5200: $65
    rla                                           ; $5201: $17
    ei                                            ; $5202: $fb
    ld [hl], $83                                  ; $5203: $36 $83
    and l                                         ; $5205: $a5
    ld e, $d0                                     ; $5206: $1e $d0
    jr c, jr_02d_51f6                             ; $5208: $38 $ec

    ld a, d                                       ; $520a: $7a
    ld d, b                                       ; $520b: $50
    ld e, $7a                                     ; $520c: $1e $7a
    sbc $02                                       ; $520e: $de $02
    ld b, a                                       ; $5210: $47

jr_02d_5211:
    dec de                                        ; $5211: $1b
    add $8c                                       ; $5212: $c6 $8c
    ld c, b                                       ; $5214: $48
    sbc a                                         ; $5215: $9f
    ldh a, [$fd]                                  ; $5216: $f0 $fd
    push de                                       ; $5218: $d5
    ld e, c                                       ; $5219: $59
    cp c                                          ; $521a: $b9
    xor e                                         ; $521b: $ab
    inc sp                                        ; $521c: $33
    ld sp, hl                                     ; $521d: $f9
    xor l                                         ; $521e: $ad
    ld b, d                                       ; $521f: $42
    cp d                                          ; $5220: $ba
    db $ed                                        ; $5221: $ed
    ccf                                           ; $5222: $3f
    rst $20                                       ; $5223: $e7
    db $e3                                        ; $5224: $e3
    jp c, Jump_02d_5da5                           ; $5225: $da $a5 $5d

    rrca                                          ; $5228: $0f
    jp z, $cf43                                   ; $5229: $ca $43 $cf

    rst $10                                       ; $522c: $d7
    add hl, bc                                    ; $522d: $09
    sub $08                                       ; $522e: $d6 $08
    ld a, [hl-]                                   ; $5230: $3a
    adc a                                         ; $5231: $8f
    inc [hl]                                      ; $5232: $34
    rla                                           ; $5233: $17
    ld sp, hl                                     ; $5234: $f9
    inc bc                                        ; $5235: $03
    ld b, [hl]                                    ; $5236: $46
    cp [hl]                                       ; $5237: $be

jr_02d_5238:
    ld a, [hl-]                                   ; $5238: $3a
    add e                                         ; $5239: $83
    ccf                                           ; $523a: $3f
    inc bc                                        ; $523b: $03
    ld [hl], d                                    ; $523c: $72
    db $ed                                        ; $523d: $ed
    ld b, [hl]                                    ; $523e: $46
    add $d2                                       ; $523f: $c6 $d2
    ld [bc], a                                    ; $5241: $02
    ld b, a                                       ; $5242: $47
    or b                                          ; $5243: $b0
    ld a, a                                       ; $5244: $7f
    xor a                                         ; $5245: $af
    ld e, c                                       ; $5246: $59
    db $e3                                        ; $5247: $e3
    ld a, [$d63c]                                 ; $5248: $fa $3c $d6
    ld e, b                                       ; $524b: $58
    adc h                                         ; $524c: $8c
    ld h, l                                       ; $524d: $65
    adc $95                                       ; $524e: $ce $95
    or a                                          ; $5250: $b7
    ld b, a                                       ; $5251: $47
    ld b, l                                       ; $5252: $45
    jr jr_02d_52bf                                ; $5253: $18 $6a

    ld e, h                                       ; $5255: $5c
    inc hl                                        ; $5256: $23
    ld a, a                                       ; $5257: $7f
    ret nz                                        ; $5258: $c0

    ret z                                         ; $5259: $c8

    ld d, a                                       ; $525a: $57
    inc d                                         ; $525b: $14
    cp e                                          ; $525c: $bb
    db $ec                                        ; $525d: $ec
    ld h, d                                       ; $525e: $62
    adc e                                         ; $525f: $8b
    ld c, b                                       ; $5260: $48
    ld sp, $95ae                                  ; $5261: $31 $ae $95
    ei                                            ; $5264: $fb
    db $ed                                        ; $5265: $ed
    ld a, d                                       ; $5266: $7a
    ld b, l                                       ; $5267: $45
    ld sp, hl                                     ; $5268: $f9
    adc [hl]                                      ; $5269: $8e
    ld d, h                                       ; $526a: $54
    inc bc                                        ; $526b: $03
    jr jr_02d_5211                                ; $526c: $18 $a3

    rlca                                          ; $526e: $07
    reti                                          ; $526f: $d9


    rrca                                          ; $5270: $0f
    inc a                                         ; $5271: $3c
    ld d, [hl]                                    ; $5272: $56

Call_02d_5273:
    ld h, a                                       ; $5273: $67
    dec e                                         ; $5274: $1d
    rra                                           ; $5275: $1f
    ldh a, [$62]                                  ; $5276: $f0 $62
    adc $93                                       ; $5278: $ce $93
    dec hl                                        ; $527a: $2b
    adc d                                         ; $527b: $8a
    db $dd                                        ; $527c: $dd
    ld c, d                                       ; $527d: $4a
    ld e, l                                       ; $527e: $5d
    ld b, [hl]                                    ; $527f: $46
    or c                                          ; $5280: $b1
    sbc d                                         ; $5281: $9a
    ld e, l                                       ; $5282: $5d
    halt                                          ; $5283: $76
    or c                                          ; $5284: $b1
    push af                                       ; $5285: $f5
    ld l, c                                       ; $5286: $69
    ld e, h                                       ; $5287: $5c
    or c                                          ; $5288: $b1
    adc e                                         ; $5289: $8b
    db $fd                                        ; $528a: $fd
    ld b, d                                       ; $528b: $42
    sub c                                         ; $528c: $91
    or a                                          ; $528d: $b7
    push af                                       ; $528e: $f5
    or l                                          ; $528f: $b5
    ld c, d                                       ; $5290: $4a
    db $e3                                        ; $5291: $e3
    xor d                                         ; $5292: $aa
    db $ec                                        ; $5293: $ec
    ld [hl], e                                    ; $5294: $73
    db $ed                                        ; $5295: $ed
    jp nc, Jump_02d_7032                          ; $5296: $d2 $32 $70

    rst $00                                       ; $5299: $c7
    or d                                          ; $529a: $b2
    sbc d                                         ; $529b: $9a
    reti                                          ; $529c: $d9


    cp b                                          ; $529d: $b8
    db $fd                                        ; $529e: $fd
    ret c                                         ; $529f: $d8

    and l                                         ; $52a0: $a5
    ld e, l                                       ; $52a1: $5d
    rrca                                          ; $52a2: $0f
    jp z, $df43                                   ; $52a3: $ca $43 $df

    db $eb                                        ; $52a6: $eb
    ld a, [hl]                                    ; $52a7: $7e
    ld b, a                                       ; $52a8: $47
    ld b, d                                       ; $52a9: $42
    sub l                                         ; $52aa: $95
    ld a, [hl+]                                   ; $52ab: $2a
    ld [c], a                                     ; $52ac: $e2
    rst $08                                       ; $52ad: $cf
    or l                                          ; $52ae: $b5
    rst $38                                       ; $52af: $ff
    jr nz, jr_02d_5238                            ; $52b0: $20 $86

    sbc a                                         ; $52b2: $9f
    db $e4                                        ; $52b3: $e4
    inc e                                         ; $52b4: $1c
    ld l, c                                       ; $52b5: $69
    db $fc                                        ; $52b6: $fc
    ld l, [hl]                                    ; $52b7: $6e
    and l                                         ; $52b8: $a5
    ret z                                         ; $52b9: $c8

    di                                            ; $52ba: $f3
    ld d, $27                                     ; $52bb: $16 $27
    inc bc                                        ; $52bd: $03
    cp d                                          ; $52be: $ba

jr_02d_52bf:
    xor e                                         ; $52bf: $ab
    sub h                                         ; $52c0: $94
    add l                                         ; $52c1: $85
    xor d                                         ; $52c2: $aa
    ld d, h                                       ; $52c3: $54
    pop de                                        ; $52c4: $d1
    adc h                                         ; $52c5: $8c
    ld a, c                                       ; $52c6: $79
    add sp, $6b                                   ; $52c7: $e8 $6b
    inc b                                         ; $52c9: $04
    ld a, $ae                                     ; $52ca: $3e $ae
    pop de                                        ; $52cc: $d1
    inc bc                                        ; $52cd: $03
    jp z, $e1d7                                   ; $52ce: $ca $d7 $e1

    ld h, c                                       ; $52d1: $61
    ld [hl], d                                    ; $52d2: $72
    reti                                          ; $52d3: $d9


    ld [hl], a                                    ; $52d4: $77
    jp $1831                                      ; $52d5: $c3 $31 $18


    ld c, b                                       ; $52d8: $48
    or a                                          ; $52d9: $b7
    pop bc                                        ; $52da: $c1
    rst $10                                       ; $52db: $d7
    jp nc, $630f                                  ; $52dc: $d2 $0f $63

    call c, $2c7e                                 ; $52df: $dc $7e $2c
    sbc $5f                                       ; $52e2: $de $5f
    ld a, [bc]                                    ; $52e4: $0a
    ld e, h                                       ; $52e5: $5c
    ld b, $13                                     ; $52e6: $06 $13
    xor l                                         ; $52e8: $ad
    ld b, a                                       ; $52e9: $47
    ld e, e                                       ; $52ea: $5b
    ld [hl], l                                    ; $52eb: $75
    or a                                          ; $52ec: $b7
    and l                                         ; $52ed: $a5
    dec c                                         ; $52ee: $0d
    ld l, c                                       ; $52ef: $69
    adc l                                         ; $52f0: $8d
    ret nz                                        ; $52f1: $c0

    di                                            ; $52f2: $f3
    ld d, $9d                                     ; $52f3: $16 $9d
    ld h, b                                       ; $52f5: $60
    adc d                                         ; $52f6: $8a
    pop af                                        ; $52f7: $f1
    ld e, e                                       ; $52f8: $5b
    halt                                          ; $52f9: $76
    sbc l                                         ; $52fa: $9d
    ld e, c                                       ; $52fb: $59
    add hl, hl                                    ; $52fc: $29
    or a                                          ; $52fd: $b7
    ld [hl], c                                    ; $52fe: $71
    ei                                            ; $52ff: $fb
    or c                                          ; $5300: $b1
    ld h, d                                       ; $5301: $62
    dec bc                                        ; $5302: $0b
    dec hl                                        ; $5303: $2b
    ld b, l                                       ; $5304: $45
    db $e3                                        ; $5305: $e3
    adc d                                         ; $5306: $8a
    sub c                                         ; $5307: $91
    cp a                                          ; $5308: $bf
    add [hl]                                      ; $5309: $86
    ld a, l                                       ; $530a: $7d
    ld d, e                                       ; $530b: $53
    call nc, $ba1e                                ; $530c: $d4 $1e $ba
    sub e                                         ; $530f: $93
    cp $b2                                        ; $5310: $fe $b2
    pop bc                                        ; $5312: $c1
    push hl                                       ; $5313: $e5
    add [hl]                                      ; $5314: $86
    or h                                          ; $5315: $b4
    inc c                                         ; $5316: $0c
    ld l, b                                       ; $5317: $68
    ld b, l                                       ; $5318: $45
    ld sp, $0af3                                  ; $5319: $31 $f3 $0a
    ld e, h                                       ; $531c: $5c
    or c                                          ; $531d: $b1
    call nc, $9603                                ; $531e: $d4 $03 $96
    ld a, $2d                                     ; $5321: $3e $2d
    inc bc                                        ; $5323: $03
    or $f9                                        ; $5324: $f6 $f9
    sbc $df                                       ; $5326: $de $df
    rst $10                                       ; $5328: $d7
    ld e, h                                       ; $5329: $5c
    inc l                                         ; $532a: $2c
    ld [hl], e                                    ; $532b: $73
    xor [hl]                                      ; $532c: $ae
    dec [hl]                                      ; $532d: $35
    ld d, $79                                     ; $532e: $16 $79
    dec bc                                        ; $5330: $0b
    rst $00                                       ; $5331: $c7
    sub l                                         ; $5332: $95
    push de                                       ; $5333: $d5
    call z, $7f06                                 ; $5334: $cc $06 $7f
    rla                                           ; $5337: $17
    ld e, e                                       ; $5338: $5b
    dec d                                         ; $5339: $15
    cp $b9                                        ; $533a: $fe $b9
    dec [hl]                                      ; $533c: $35
    ret z                                         ; $533d: $c8

    or l                                          ; $533e: $b5
    and $81                                       ; $533f: $e6 $81
    xor a                                         ; $5341: $af
    ld l, b                                       ; $5342: $68
    and c                                         ; $5343: $a1
    add [hl]                                      ; $5344: $86
    or b                                          ; $5345: $b0
    ld l, [hl]                                    ; $5346: $6e
    and l                                         ; $5347: $a5
    db $dd                                        ; $5348: $dd
    ret z                                         ; $5349: $c8

    ld e, b                                       ; $534a: $58
    sbc d                                         ; $534b: $9a
    pop bc                                        ; $534c: $c1
    ld d, d                                       ; $534d: $52
    rrca                                          ; $534e: $0f
    ld l, b                                       ; $534f: $68
    inc e                                         ; $5350: $1c
    halt                                          ; $5351: $76

jr_02d_5352:
    dec a                                         ; $5352: $3d
    jr z, @+$11                                   ; $5353: $28 $0f

    dec a                                         ; $5355: $3d
    ld l, a                                       ; $5356: $6f
    ld bc, $af87                                  ; $5357: $01 $87 $af
    ld sp, $f427                                  ; $535a: $31 $27 $f4
    pop af                                        ; $535d: $f1
    dec sp                                        ; $535e: $3b
    ld e, [hl]                                    ; $535f: $5e
    sbc b                                         ; $5360: $98
    ld e, h                                       ; $5361: $5c
    pop de                                        ; $5362: $d1
    ld l, $b6                                     ; $5363: $2e $b6
    ld a, [hl+]                                   ; $5365: $2a
    db $fc                                        ; $5366: $fc
    dec hl                                        ; $5367: $2b
    ld e, d                                       ; $5368: $5a
    ld d, e                                       ; $5369: $53
    jr nz, jr_02d_5352                            ; $536a: $20 $e6

    sub $20                                       ; $536c: $d6 $20
    rst $10                                       ; $536e: $d7
    sbc d                                         ; $536f: $9a
    rlca                                          ; $5370: $07
    cp [hl]                                       ; $5371: $be
    ld h, e                                       ; $5372: $63
    cp h                                          ; $5373: $bc
    ld h, $9d                                     ; $5374: $26 $9d
    ld a, [hl]                                    ; $5376: $7e
    sbc a                                         ; $5377: $9f
    ccf                                           ; $5378: $3f
    ld e, a                                       ; $5379: $5f
    ld h, e                                       ; $537a: $63
    ld de, $635a                                  ; $537b: $11 $5a $63
    cp [hl]                                       ; $537e: $be
    ld h, d                                       ; $537f: $62
    ld l, e                                       ; $5380: $6b
    sbc [hl]                                      ; $5381: $9e
    sub e                                         ; $5382: $93
    ld d, [hl]                                    ; $5383: $56
    add hl, de                                    ; $5384: $19
    dec bc                                        ; $5385: $0b
    inc sp                                        ; $5386: $33
    and b                                         ; $5387: $a0
    add hl, de                                    ; $5388: $19
    inc l                                         ; $5389: $2c
    push af                                       ; $538a: $f5
    add b                                         ; $538b: $80
    add $61                                       ; $538c: $c6 $61
    ld l, h                                       ; $538e: $6c
    dec hl                                        ; $538f: $2b
    dec h                                         ; $5390: $25
    ld l, a                                       ; $5391: $6f
    ld bc, $95c7                                  ; $5392: $01 $c7 $95
    dec [hl]                                      ; $5395: $35
    and $d6                                       ; $5396: $e6 $d6
    dec l                                         ; $5398: $2d
    dec l                                         ; $5399: $2d
    inc bc                                        ; $539a: $03
    ld [hl], a                                    ; $539b: $77
    inc l                                         ; $539c: $2c
    xor e                                         ; $539d: $ab

jr_02d_539e:
    sbc c                                         ; $539e: $99
    dec c                                         ; $539f: $0d
    cp $dc                                        ; $53a0: $fe $dc
    xor [hl]                                      ; $53a2: $ae
    db $eb                                        ; $53a3: $eb
    add c                                         ; $53a4: $81
    ld e, a                                       ; $53a5: $5f
    cp b                                          ; $53a6: $b8
    and $81                                       ; $53a7: $e6 $81
    xor a                                         ; $53a9: $af
    ld l, b                                       ; $53aa: $68
    add c                                         ; $53ab: $81
    sbc l                                         ; $53ac: $9d
    or c                                          ; $53ad: $b1
    ld l, [hl]                                    ; $53ae: $6e
    and l                                         ; $53af: $a5
    db $dd                                        ; $53b0: $dd
    ret z                                         ; $53b1: $c8

    ld e, b                                       ; $53b2: $58
    ld e, d                                       ; $53b3: $5a
    sbc l                                         ; $53b4: $9d
    sub l                                         ; $53b5: $95
    cp e                                          ; $53b6: $bb
    add d                                         ; $53b7: $82
    add $b5                                       ; $53b8: $c6 $b5
    ld c, e                                       ; $53ba: $4b
    cp e                                          ; $53bb: $bb
    ld e, $94                                     ; $53bc: $1e $94
    add a                                         ; $53be: $87
    sbc [hl]                                      ; $53bf: $9e
    or a                                          ; $53c0: $b7
    daa                                           ; $53c1: $27
    ld l, b                                       ; $53c2: $68
    dec d                                         ; $53c3: $15
    ld a, [$5f43]                                 ; $53c4: $fa $43 $5f
    sbc l                                         ; $53c7: $9d
    ld e, l                                       ; $53c8: $5d
    db $dd                                        ; $53c9: $dd
    pop de                                        ; $53ca: $d1
    ld l, l                                       ; $53cb: $6d
    ld e, h                                       ; $53cc: $5c
    dec hl                                        ; $53cd: $2b
    or [hl]                                       ; $53ce: $b6
    and $39                                       ; $53cf: $e6 $39
    ld l, c                                       ; $53d1: $69
    sub l                                         ; $53d2: $95
    cp [hl]                                       ; $53d3: $be
    ld a, l                                       ; $53d4: $7d
    ld e, d                                       ; $53d5: $5a
    sbc l                                         ; $53d6: $9d
    sub l                                         ; $53d7: $95
    dec sp                                        ; $53d8: $3b
    cp $34                                        ; $53d9: $fe $34
    ld a, d                                       ; $53db: $7a
    dec h                                         ; $53dc: $25
    ld b, a                                       ; $53dd: $47
    ld c, l                                       ; $53de: $4d
    ld b, c                                       ; $53df: $41
    cp e                                          ; $53e0: $bb
    db $f4                                        ; $53e1: $f4
    db $e3                                        ; $53e2: $e3
    or [hl]                                       ; $53e3: $b6
    ld c, d                                       ; $53e4: $4a
    ld e, a                                       ; $53e5: $5f
    cp [hl]                                       ; $53e6: $be
    inc c                                         ; $53e7: $0c
    xor b                                         ; $53e8: $a8
    ld h, h                                       ; $53e9: $64
    ld b, b                                       ; $53ea: $40
    ld l, e                                       ; $53eb: $6b
    call z, Call_02d_6f29                         ; $53ec: $cc $29 $6f
    ld bc, $de1d                                  ; $53ef: $01 $1d $de
    ld e, a                                       ; $53f2: $5f
    ld d, e                                       ; $53f3: $53
    rst $10                                       ; $53f4: $d7
    or l                                          ; $53f5: $b5
    ld [$e36e], a                                 ; $53f6: $ea $6e $e3
    ld c, b                                       ; $53f9: $48
    set 0, b                                      ; $53fa: $cb $c0
    dec e                                         ; $53fc: $1d
    bit 5, d                                      ; $53fd: $cb $6a
    ld h, [hl]                                    ; $53ff: $66
    adc h                                         ; $5400: $8c
    ld hl, $fe0d                                  ; $5401: $21 $0d $fe
    ld a, [de]                                    ; $5404: $1a
    adc e                                         ; $5405: $8b
    jr nc, jr_02d_539e                            ; $5406: $30 $96

    ld d, $ba                                     ; $5408: $16 $ba

jr_02d_540a:
    ld e, h                                       ; $540a: $5c
    inc [hl]                                      ; $540b: $34
    ld l, $77                                     ; $540c: $2e $77
    xor h                                         ; $540e: $ac
    db $eb                                        ; $540f: $eb
    ld e, d                                       ; $5410: $5a
    pop de                                        ; $5411: $d1
    ld a, [hl+]                                   ; $5412: $2a
    db $f4                                        ; $5413: $f4
    add a                                         ; $5414: $87
    ld a, $83                                     ; $5415: $3e $83
    ld e, l                                       ; $5417: $5d
    rrca                                          ; $5418: $0f
    rst $38                                       ; $5419: $ff
    jr c, @-$72                                   ; $541a: $38 $8c

    ld l, l                                       ; $541c: $6d
    and l                                         ; $541d: $a5
    db $e4                                        ; $541e: $e4
    dec l                                         ; $541f: $2d
    ld b, a                                       ; $5420: $47
    ldh [rIE], a                                  ; $5421: $e0 $ff
    ld sp, $10fd                                  ; $5423: $31 $fd $10
    or d                                          ; $5426: $b2
    cp [hl]                                       ; $5427: $be
    ld d, [hl]                                    ; $5428: $56
    xor $6c                                       ; $5429: $ee $6c
    inc c                                         ; $542b: $0c
    ld a, d                                       ; $542c: $7a
    add sp, $1a                                   ; $542d: $e8 $1a
    rst $10                                       ; $542f: $d7
    adc d                                         ; $5430: $8a
    xor l                                         ; $5431: $ad
    ld [hl-], a                                   ; $5432: $32
    ld d, $6a                                     ; $5433: $16 $6a
    ld [hl], l                                    ; $5435: $75
    halt                                          ; $5436: $76
    adc c                                         ; $5437: $89
    halt                                          ; $5438: $76
    inc hl                                        ; $5439: $23
    ld h, e                                       ; $543a: $63
    add hl, hl                                    ; $543b: $29
    cp c                                          ; $543c: $b9
    ret nz                                        ; $543d: $c0

    ld h, l                                       ; $543e: $65
    ld e, e                                       ; $543f: $5b
    ld h, l                                       ; $5440: $65
    jr jr_02d_5466                                ; $5441: $18 $23

    jr jr_02d_54c4                                ; $5443: $18 $7f

    jr jr_02d_540a                                ; $5445: $18 $c3

    rst $08                                       ; $5447: $cf
    cp h                                          ; $5448: $bc
    inc c                                         ; $5449: $0c
    ret z                                         ; $544a: $c8

    ld [hl], a                                    ; $544b: $77
    ld l, c                                       ; $544c: $69
    add hl, de                                    ; $544d: $19
    cp b                                          ; $544e: $b8
    ld h, e                                       ; $544f: $63
    sbc c                                         ; $5450: $99
    ld a, [hl]                                    ; $5451: $7e
    ld [$5f59], sp                                ; $5452: $08 $59 $5f
    ld a, c                                       ; $5455: $79
    dec bc                                        ; $5456: $0b
    push af                                       ; $5457: $f5
    or l                                          ; $5458: $b5
    rr a                                          ; $5459: $cb $1f
    add $32                                       ; $545b: $c6 $32
    and b                                         ; $545d: $a0
    dec e                                         ; $545e: $1d
    add c                                         ; $545f: $81
    rst $38                                       ; $5460: $ff
    rst $00                                       ; $5461: $c7
    adc h                                         ; $5462: $8c
    ld sp, $c1a4                                  ; $5463: $31 $a4 $c1

jr_02d_5466:
    ld e, a                                       ; $5466: $5f
    ld a, [bc]                                    ; $5467: $0a
    ld e, h                                       ; $5468: $5c
    ld b, $ab                                     ; $5469: $06 $ab
    or e                                          ; $546b: $b3
    ld c, e                                       ; $546c: $4b
    or h                                          ; $546d: $b4
    dec de                                        ; $546e: $1b

jr_02d_546f:
    add hl, de                                    ; $546f: $19
    ld c, e                                       ; $5470: $4b
    inc sp                                        ; $5471: $33
    add $3e                                       ; $5472: $c6 $3e
    dec l                                         ; $5474: $2d
    ld l, h                                       ; $5475: $6c
    push de                                       ; $5476: $d5
    ld [hl], e                                    ; $5477: $73
    sbc d                                         ; $5478: $9a
    ld l, b                                       ; $5479: $68
    add $d8                                       ; $547a: $c6 $d8
    and a                                         ; $547c: $a7
    ld [hl], c                                    ; $547d: $71
    xor l                                         ; $547e: $ad
    or c                                          ; $547f: $b1
    ld [$e2f9], sp                                ; $5480: $08 $f9 $e2
    db $fd                                        ; $5483: $fd
    sub c                                         ; $5484: $91
    xor d                                         ; $5485: $aa
    ld h, $56                                     ; $5486: $26 $56
    jr nc, jr_02d_546f                            ; $5488: $30 $e5

    ld a, [de]                                    ; $548a: $1a
    or a                                          ; $548b: $b7
    rra                                           ; $548c: $1f
    dec hl                                        ; $548d: $2b
    or [hl]                                       ; $548e: $b6
    or b                                          ; $548f: $b0
    ld d, d                                       ; $5490: $52
    inc [hl]                                      ; $5491: $34
    xor [hl]                                      ; $5492: $ae
    ld e, b                                       ; $5493: $58
    db $e3                                        ; $5494: $e3
    cpl                                           ; $5495: $2f
    xor l                                         ; $5496: $ad
    ld [$4781], sp                                ; $5497: $08 $81 $47
    sbc $02                                       ; $549a: $de $02
    daa                                           ; $549c: $27
    call c, $a7f1                                 ; $549d: $dc $f1 $a7
    pop de                                        ; $54a0: $d1
    dec hl                                        ; $54a1: $2b
    add hl, sp                                    ; $54a2: $39
    ld l, d                                       ; $54a3: $6a
    and c                                         ; $54a4: $a1
    sub c                                         ; $54a5: $91
    ccf                                           ; $54a6: $3f
    ld h, b                                       ; $54a7: $60
    or h                                          ; $54a8: $b4
    ld a, [hl-]                                   ; $54a9: $3a
    cp e                                          ; $54aa: $bb
    ld b, h                                       ; $54ab: $44
    cp e                                          ; $54ac: $bb
    sub c                                         ; $54ad: $91
    or c                                          ; $54ae: $b1
    sub h                                         ; $54af: $94
    xor a                                         ; $54b0: $af
    cp [hl]                                       ; $54b1: $be
    sub $98                                       ; $54b2: $d6 $98
    and e                                         ; $54b4: $a3
    sub [hl]                                      ; $54b5: $96
    ld bc, $83ad                                  ; $54b6: $01 $ad $83
    ld [hl], c                                    ; $54b9: $71
    xor e                                         ; $54ba: $ab
    or h                                          ; $54bb: $b4
    adc [hl]                                      ; $54bc: $8e
    xor a                                         ; $54bd: $af
    ld c, d                                       ; $54be: $4a

Jump_02d_54bf:
    cp e                                          ; $54bf: $bb
    add d                                         ; $54c0: $82
    sbc l                                         ; $54c1: $9d
    ld e, h                                       ; $54c2: $5c
    cp c                                          ; $54c3: $b9

jr_02d_54c4:
    db $e3                                        ; $54c4: $e3
    ld c, a                                       ; $54c5: $4f
    and e                                         ; $54c6: $a3
    ld d, a                                       ; $54c7: $57
    ld e, b                                       ; $54c8: $58
    rst $10                                       ; $54c9: $d7
    sub l                                         ; $54ca: $95
    inc e                                         ; $54cb: $1c
    res 3, h                                      ; $54cc: $cb $9c
    ld l, e                                       ; $54ce: $6b
    ld c, l                                       ; $54cf: $4d
    ld de, $71fe                                  ; $54d0: $11 $fe $71
    xor l                                         ; $54d3: $ad
    ld a, c                                       ; $54d4: $79
    add h                                         ; $54d5: $84
    rst $28                                       ; $54d6: $ef
    rst $28                                       ; $54d7: $ef
    inc a                                         ; $54d8: $3c
    ld h, h                                       ; $54d9: $64
    or c                                          ; $54da: $b1
    db $f4                                        ; $54db: $f4
    rst $08                                       ; $54dc: $cf
    ld d, e                                       ; $54dd: $53
    pop hl                                        ; $54de: $e1
    jp $f30b                                      ; $54df: $c3 $0b $f3


    ld d, $c7                                     ; $54e2: $16 $c7
    sub l                                         ; $54e4: $95
    push de                                       ; $54e5: $d5
    call z, Call_02d_5f06                         ; $54e6: $cc $06 $5f
    ld l, e                                       ; $54e9: $6b
    sbc [hl]                                      ; $54ea: $9e
    sub e                                         ; $54eb: $93
    ld d, [hl]                                    ; $54ec: $56
    add hl, de                                    ; $54ed: $19
    dec bc                                        ; $54ee: $0b
    inc sp                                        ; $54ef: $33
    and b                                         ; $54f0: $a0
    ld [hl], c                                    ; $54f1: $71
    ei                                            ; $54f2: $fb
    or c                                          ; $54f3: $b1
    ld c, e                                       ; $54f4: $4b
    cp e                                          ; $54f5: $bb
    ld e, $94                                     ; $54f6: $1e $94
    add a                                         ; $54f8: $87
    cp [hl]                                       ; $54f9: $be
    inc c                                         ; $54fa: $0c
    ldh [$aa], a                                  ; $54fb: $e0 $aa
    cp d                                          ; $54fd: $ba
    ld e, a                                       ; $54fe: $5f
    inc sp                                        ; $54ff: $33
    add sp, -$44                                  ; $5500: $e8 $bc
    sra [hl]                                      ; $5502: $cb $2e
    or $a3                                        ; $5504: $f6 $a3
    ret z                                         ; $5506: $c8

    sub a                                         ; $5507: $97
    ld [hl], l                                    ; $5508: $75
    ld d, a                                       ; $5509: $57
    ret nc                                        ; $550a: $d0

    ld a, [de]                                    ; $550b: $1a
    scf                                           ; $550c: $37
    jp nz, $680c                                  ; $550d: $c2 $0c $68

    add c                                         ; $5510: $81
    inc hl                                        ; $5511: $23
    sbc b                                         ; $5512: $98
    ld h, d                                       ; $5513: $62
    ld a, [$9173]                                 ; $5514: $fa $73 $91
    add hl, sp                                    ; $5517: $39
    ld e, a                                       ; $5518: $5f
    di                                            ; $5519: $f3
    ret nz                                        ; $551a: $c0

    ld d, a                                       ; $551b: $57
    inc d                                         ; $551c: $14
    cp e                                          ; $551d: $bb
    ld e, $78                                     ; $551e: $1e $78
    adc h                                         ; $5520: $8c
    ld l, e                                       ; $5521: $6b
    and a                                         ; $5522: $a7
    inc a                                         ; $5523: $3c
    ld d, $28                                     ; $5524: $16 $28
    ld l, a                                       ; $5526: $6f
    ld bc, $1e9d                                  ; $5527: $01 $9d $1e
    call nz, Call_02d_628a                        ; $552a: $c4 $8a $62
    rst $10                                       ; $552d: $d7
    inc bc                                        ; $552e: $03
    adc a                                         ; $552f: $8f
    pop af                                        ; $5530: $f1
    ei                                            ; $5531: $fb
    adc l                                         ; $5532: $8d
    add b                                         ; $5533: $80
    ld l, e                                       ; $5534: $6b
    ld e, h                                       ; $5535: $5c
    or c                                          ; $5536: $b1
    ld c, $af                                     ; $5537: $0e $af
    ld [hl], b                                    ; $5539: $70
    adc b                                         ; $553a: $88
    cp l                                          ; $553b: $bd
    ld c, a                                       ; $553c: $4f
    dec hl                                        ; $553d: $2b
    jr z, jr_02d_5598                             ; $553e: $28 $58

    sbc l                                         ; $5540: $9d
    ld e, l                                       ; $5541: $5d

Jump_02d_5542:
    and d                                         ; $5542: $a2
    db $dd                                        ; $5543: $dd
    ret z                                         ; $5544: $c8

    ld e, b                                       ; $5545: $58
    ld c, d                                       ; $5546: $4a
    xor [hl]                                      ; $5547: $ae
    ld h, [hl]                                    ; $5548: $66
    rst $10                                       ; $5549: $d7
    xor e                                         ; $554a: $ab
    ld a, [de]                                    ; $554b: $1a
    rst $00                                       ; $554c: $c7
    ld e, b                                       ; $554d: $58
    ld d, c                                       ; $554e: $51
    db $ec                                        ; $554f: $ec
    ld a, d                                       ; $5550: $7a
    ldh [$31], a                                  ; $5551: $e0 $31
    ld a, [hl]                                    ; $5553: $7e
    scf                                           ; $5554: $37
    and a                                         ; $5555: $a7
    adc c                                         ; $5556: $89
    add $b5                                       ; $5557: $c6 $b5
    ld a, [bc]                                    ; $5559: $0a
    ld [bc], a                                    ; $555a: $02
    inc sp                                        ; $555b: $33

Jump_02d_555c:
    and b                                         ; $555c: $a0
    cp h                                          ; $555d: $bc
    dec b                                         ; $555e: $05
    rst $00                                       ; $555f: $c7
    sub l                                         ; $5560: $95
    push de                                       ; $5561: $d5
    call z, Call_02d_5f06                         ; $5562: $cc $06 $5f
    ld l, e                                       ; $5565: $6b
    sbc [hl]                                      ; $5566: $9e
    sub e                                         ; $5567: $93
    ld d, [hl]                                    ; $5568: $56
    add hl, de                                    ; $5569: $19
    dec bc                                        ; $556a: $0b
    inc sp                                        ; $556b: $33
    and b                                         ; $556c: $a0
    ld [hl], c                                    ; $556d: $71
    ei                                            ; $556e: $fb
    or c                                          ; $556f: $b1
    ld c, e                                       ; $5570: $4b
    cp e                                          ; $5571: $bb
    ld e, $94                                     ; $5572: $1e $94
    add a                                         ; $5574: $87
    cp [hl]                                       ; $5575: $be
    inc c                                         ; $5576: $0c
    ldh [rOBP0], a                                ; $5577: $e0 $48
    xor e                                         ; $5579: $ab
    ld [$b97e], a                                 ; $557a: $ea $7e $b9
    xor l                                         ; $557d: $ad
    pop af                                        ; $557e: $f1
    cp d                                          ; $557f: $ba
    ld sp, $15ae                                  ; $5580: $31 $ae $15
    ld e, e                                       ; $5583: $5b
    ld e, b                                       ; $5584: $58
    add hl, hl                                    ; $5585: $29
    ld a, [de]                                    ; $5586: $1a
    rst $10                                       ; $5587: $d7
    xor [hl]                                      ; $5588: $ae
    rlca                                          ; $5589: $07
    ld e, $e3                                     ; $558a: $1e $e3
    jp c, Jump_000_05d1                           ; $558c: $da $d1 $05

    jp hl                                         ; $558f: $e9


    inc a                                         ; $5590: $3c
    cp h                                          ; $5591: $bc
    adc $cd                                       ; $5592: $ce $cd
    ld e, e                                       ; $5594: $5b
    and a                                         ; $5595: $a7
    ld a, $8c                                     ; $5596: $3e $8c

jr_02d_5598:
    dec [hl]                                      ; $5598: $35
    ld c, $5c                                     ; $5599: $0e $5c
    sbc a                                         ; $559b: $9f
    ld d, $38                                     ; $559c: $16 $38
    add d                                         ; $559e: $82

Call_02d_559f:
    dec [hl]                                      ; $559f: $35
    or a                                          ; $55a0: $b7
    ld e, a                                       ; $55a1: $5f
    sub a                                         ; $55a2: $97
    ld e, h                                       ; $55a3: $5c
    ld sp, $3f6e                                  ; $55a4: $31 $6e $3f
    add $15                                       ; $55a7: $c6 $15
    dec bc                                        ; $55a9: $0b
    dec hl                                        ; $55aa: $2b
    ld b, l                                       ; $55ab: $45
    ld sp, $5dae                                  ; $55ac: $31 $ae $5d
    push bc                                       ; $55af: $c5
    ld [hl+], a                                   ; $55b0: $22
    inc [hl]                                      ; $55b1: $34
    ld b, $b9                                     ; $55b2: $06 $b9
    ld [hl+], a                                   ; $55b4: $22
    rst $08                                       ; $55b5: $cf
    di                                            ; $55b6: $f3
    ld de, $79ac                                  ; $55b7: $11 $ac $79
    ldh [$6e], a                                  ; $55ba: $e0 $6e
    jr jr_02d_5609                                ; $55bc: $18 $4b

    dec de                                        ; $55be: $1b
    cp d                                          ; $55bf: $ba
    add $b5                                       ; $55c0: $c6 $b5
    jp z, $3180                                   ; $55c2: $ca $80 $31

    inc c                                         ; $55c5: $0c
    push bc                                       ; $55c6: $c5
    ld e, h                                       ; $55c7: $5c
    rst $38                                       ; $55c8: $ff
    ld a, d                                       ; $55c9: $7a

jr_02d_55ca:
    sbc a                                         ; $55ca: $9f
    ld e, h                                       ; $55cb: $5c
    sub c                                         ; $55cc: $91
    or a                                          ; $55cd: $b7
    daa                                           ; $55ce: $27
    ld l, b                                       ; $55cf: $68
    ld e, c                                       ; $55d0: $59
    dec b                                         ; $55d1: $05
    ld d, d                                       ; $55d2: $52
    db $e3                                        ; $55d3: $e3
    adc d                                         ; $55d4: $8a
    ld h, l                                       ; $55d5: $65
    cp l                                          ; $55d6: $bd
    ld d, d                                       ; $55d7: $52
    ld [hl], h                                    ; $55d8: $74
    ld de, $ffbe                                  ; $55d9: $11 $be $ff
    dec b                                         ; $55dc: $05
    ld e, $e3                                     ; $55dd: $1e $e3
    ld e, d                                       ; $55df: $5a
    sub [hl]                                      ; $55e0: $96
    add hl, sp                                    ; $55e1: $39
    add hl, hl                                    ; $55e2: $29
    add $b5                                       ; $55e3: $c6 $b5
    ld d, e                                       ; $55e5: $53
    sbc a                                         ; $55e6: $9f
    ld e, a                                       ; $55e7: $5f
    ld e, b                                       ; $55e8: $58
    rst $10                                       ; $55e9: $d7
    dec d                                         ; $55ea: $15
    inc de                                        ; $55eb: $13
    db $ed                                        ; $55ec: $ed

jr_02d_55ed:
    call nc, Call_000_17e7                        ; $55ed: $d4 $e7 $17
    jp z, Jump_02d_5963                           ; $55f0: $ca $63 $59

    or a                                          ; $55f3: $b7
    ld d, d                                       ; $55f4: $52
    scf                                           ; $55f5: $37
    push hl                                       ; $55f6: $e5
    adc d                                         ; $55f7: $8a
    add hl, hl                                    ; $55f8: $29
    ld l, b                                       ; $55f9: $68
    db $e4                                        ; $55fa: $e4
    ld [hl], l                                    ; $55fb: $75
    ld h, e                                       ; $55fc: $63
    add hl, hl                                    ; $55fd: $29
    call nc, $f35f                                ; $55fe: $d4 $5f $f3
    ret nz                                        ; $5601: $c0

    and a                                         ; $5602: $a7
    ld [$91ab], sp                                ; $5603: $08 $ab $91
    xor a                                         ; $5606: $af
    jr z, jr_02d_567f                             ; $5607: $28 $76

jr_02d_5609:
    cp l                                          ; $5609: $bd
    ld a, [hl+]                                   ; $560a: $2a
    add l                                         ; $560b: $85
    rst $18                                       ; $560c: $df
    jr nc, jr_02d_55ed                            ; $560d: $30 $de

    adc a                                         ; $560f: $8f
    ld [hl], c                                    ; $5610: $71
    db $ed                                        ; $5611: $ed
    ld [hl-], a                                   ; $5612: $32
    daa                                           ; $5613: $27
    ld b, l                                       ; $5614: $45
    sbc $02                                       ; $5615: $de $02
    and a                                         ; $5617: $a7
    ld de, $0c16                                  ; $5618: $11 $16 $0c
    xor l                                         ; $561b: $ad
    ret c                                         ; $561c: $d8

    sbc d                                         ; $561d: $9a
    rst $20                                       ; $561e: $e7
    and h                                         ; $561f: $a4
    ld d, l                                       ; $5620: $55
    add $c2                                       ; $5621: $c6 $c2
    inc c                                         ; $5623: $0c
    ld l, b                                       ; $5624: $68
    inc e                                         ; $5625: $1c
    ld d, [hl]                                    ; $5626: $56
    add c                                         ; $5627: $81
    ld c, a                                       ; $5628: $4f
    ld b, c                                       ; $5629: $41
    ld l, e                                       ; $562a: $6b
    ld e, $f8                                     ; $562b: $1e $f8
    xor h                                         ; $562d: $ac
    inc d                                         ; $562e: $14
    ld sp, hl                                     ; $562f: $f9
    inc c                                         ; $5630: $0c
    sub [hl]                                      ; $5631: $96
    ld bc, $c723                                  ; $5632: $01 $23 $c7
    cp d                                          ; $5635: $ba
    sub l                                         ; $5636: $95
    halt                                          ; $5637: $76
    inc hl                                        ; $5638: $23
    ld h, e                                       ; $5639: $63
    add hl, hl                                    ; $563a: $29
    ld e, a                                       ; $563b: $5f
    daa                                           ; $563c: $27
    sbc b                                         ; $563d: $98
    cp c                                          ; $563e: $b9
    inc hl                                        ; $563f: $23
    inc hl                                        ; $5640: $23
    or a                                          ; $5641: $b7
    jr @+$7b                                      ; $5642: $18 $79

    db $dd                                        ; $5644: $dd
    jr jr_02d_55ca                                ; $5645: $18 $83

    and h                                         ; $5647: $a4
    dec [hl]                                      ; $5648: $35
    ld e, [hl]                                    ; $5649: $5e
    scf                                           ; $564a: $37
    add $b5                                       ; $564b: $c6 $b5
    ld [hl], d                                    ; $564d: $72
    rst $00                                       ; $564e: $c7
    sbc a                                         ; $564f: $9f
    ld b, [hl]                                    ; $5650: $46
    xor a                                         ; $5651: $af
    db $e4                                        ; $5652: $e4
    xor b                                         ; $5653: $a8
    dec b                                         ; $5654: $05
    ld l, $db                                     ; $5655: $2e $db
    ld a, [hl+]                                   ; $5657: $2a
    jp $c118                                      ; $5658: $c3 $18 $c1


    inc d                                         ; $565b: $14
    ld c, e                                       ; $565c: $4b
    dec d                                         ; $565d: $15
    ld b, l                                       ; $565e: $45
    call c, $16f2                                 ; $565f: $dc $f2 $16
    and a                                         ; $5662: $a7
    ld b, b                                       ; $5663: $40
    sbc b                                         ; $5664: $98
    di                                            ; $5665: $f3

jr_02d_5666:
    add l                                         ; $5666: $85
    add $6f                                       ; $5667: $c6 $6f
    ld c, l                                       ; $5669: $4d
    or c                                          ; $566a: $b1
    ld c, e                                       ; $566b: $4b
    inc hl                                        ; $566c: $23
    xor a                                         ; $566d: $af
    dec de                                        ; $566e: $1b
    ld h, e                                       ; $566f: $63
    sub b                                         ; $5670: $90
    inc [hl]                                      ; $5671: $34
    ld c, $73                                     ; $5672: $0e $73
    sbc l                                         ; $5674: $9d
    ld e, a                                       ; $5675: $5f
    adc a                                         ; $5676: $8f
    xor e                                         ; $5677: $ab
    sbc $c5                                       ; $5678: $de $c5
    ld [hl], $88                                  ; $567a: $36 $88
    cp b                                          ; $567c: $b8
    ld l, c                                       ; $567d: $69
    reti                                          ; $567e: $d9


jr_02d_567f:
    db $10                                        ; $567f: $10
    add hl, de                                    ; $5680: $19
    cp b                                          ; $5681: $b8
    db $e3                                        ; $5682: $e3
    add l                                         ; $5683: $85
    ld sp, hl                                     ; $5684: $f9
    ld [$976b], a                                 ; $5685: $ea $6b $97
    ccf                                           ; $5688: $3f
    adc h                                         ; $5689: $8c
    ld h, l                                       ; $568a: $65
    ld b, b                                       ; $568b: $40
    db $e3                                        ; $568c: $e3
    or $63                                        ; $568d: $f6 $63
    pop af                                        ; $568f: $f1
    cp $52                                        ; $5690: $fe $52
    ldh [$32], a                                  ; $5692: $e0 $32
    ret c                                         ; $5694: $d8

    add e                                         ; $5695: $83
    push bc                                       ; $5696: $c5
    ei                                            ; $5697: $fb
    ld l, e                                       ; $5698: $6b
    adc d                                         ; $5699: $8a
    ld e, l                                       ; $569a: $5d
    and $7c                                       ; $569b: $e6 $7c
    ld [hl], l                                    ; $569d: $75
    sub [hl]                                      ; $569e: $96
    or d                                          ; $569f: $b2
    ld h, d                                       ; $56a0: $62
    jr jr_02d_5666                                ; $56a1: $18 $c3

    or d                                          ; $56a3: $b2
    sbc d                                         ; $56a4: $9a
    reti                                          ; $56a5: $d9


    ldh [rOCPD], a                                ; $56a6: $e0 $6b
    call $d273                                    ; $56a8: $cd $73 $d2
    ld [hl-], a                                   ; $56ab: $32
    add b                                         ; $56ac: $80
    xor e                                         ; $56ad: $ab
    ld [$0d7e], a                                 ; $56ae: $ea $7e $0d
    cpl                                           ; $56b1: $2f
    call z, $a75b                                 ; $56b2: $cc $5b $a7
    ld [c], a                                     ; $56b5: $e2
    ld [$08c6], sp                                ; $56b6: $08 $c6 $08
    ld a, [hl-]                                   ; $56b9: $3a
    adc a                                         ; $56ba: $8f
    ld b, c                                       ; $56bb: $41
    jp nc, Jump_02d_7348                          ; $56bc: $d2 $48 $73

    ld a, l                                       ; $56bf: $7d
    xor $9a                                       ; $56c0: $ee $9a
    pop bc                                        ; $56c2: $c1
    ld [hl-], a                                   ; $56c3: $32
    ld h, b                                       ; $56c4: $60

Jump_02d_56c5:
    db $e4                                        ; $56c5: $e4
    ld e, b                                       ; $56c6: $58
    or a                                          ; $56c7: $b7
    jp nc, Jump_02d_646e                          ; $56c8: $d2 $6e $64

    inc l                                         ; $56cb: $2c
    dec h                                         ; $56cc: $25
    ld [hl], a                                    ; $56cd: $77
    or c                                          ; $56ce: $b1
    push hl                                       ; $56cf: $e5
    rla                                           ; $56d0: $17
    ld e, e                                       ; $56d1: $5b
    dec hl                                        ; $56d2: $2b
    ld [hl], a                                    ; $56d3: $77
    push bc                                       ; $56d4: $c5
    ld h, l                                       ; $56d5: $65
    dec b                                         ; $56d6: $05
    push hl                                       ; $56d7: $e5

Jump_02d_56d8:
    xor e                                         ; $56d8: $ab
    or e                                          ; $56d9: $b3
    ld [hl], d                                    ; $56da: $72
    ld d, a                                       ; $56db: $57
    ld h, a                                       ; $56dc: $67
    ld a, [c]                                     ; $56dd: $f2
    ld e, e                                       ; $56de: $5b
    add l                                         ; $56df: $85
    ld [hl], h                                    ; $56e0: $74
    ld e, e                                       ; $56e1: $5b
    nop                                           ; $56e2: $00
    rra                                           ; $56e3: $1f
    add a                                         ; $56e4: $87
    or c                                          ; $56e5: $b1
    xor l                                         ; $56e6: $ad
    sub h                                         ; $56e7: $94
    cp h                                          ; $56e8: $bc
    dec b                                         ; $56e9: $05
    daa                                           ; $56ea: $27
    ld l, b                                       ; $56eb: $68
    db $fc                                        ; $56ec: $fc
    sub [hl]                                      ; $56ed: $96
    ld [hl-], a                                   ; $56ee: $32
    ld [hl], a                                    ; $56ef: $77
    adc e                                         ; $56f0: $8b
    ld [hl], c                                    ; $56f1: $71
    db $ed                                        ; $56f2: $ed
    inc d                                         ; $56f3: $14
    ld [$be73], sp                                ; $56f4: $08 $73 $be
    ret nc                                        ; $56f7: $d0

    ret z                                         ; $56f8: $c8

    rra                                           ; $56f9: $1f
    jr nc, jr_02d_5756                            ; $56fa: $30 $5a

    add b                                         ; $56fc: $80
    rst $28                                       ; $56fd: $ef
    ld [de], a                                    ; $56fe: $12
    db $ed                                        ; $56ff: $ed
    ld b, [hl]                                    ; $5700: $46
    add $52                                       ; $5701: $c6 $52
    cp [hl]                                       ; $5703: $be
    db $e3                                        ; $5704: $e3
    jp z, Jump_02d_731a                           ; $5705: $ca $1a $73

    db $eb                                        ; $5708: $eb
    sub [hl]                                      ; $5709: $96
    sub [hl]                                      ; $570a: $96
    add c                                         ; $570b: $81
    dec sp                                        ; $570c: $3b

Call_02d_570d:
    sub [hl]                                      ; $570d: $96
    ld e, l                                       ; $570e: $5d
    rst $28                                       ; $570f: $ef
    inc de                                        ; $5710: $13
    ld [$f8d3], a                                 ; $5711: $ea $d3 $f8
    db $dd                                        ; $5714: $dd
    ld [hl+], a                                   ; $5715: $22
    ld [hl], h                                    ; $5716: $74
    cp $2a                                        ; $5717: $fe $2a
    inc bc                                        ; $5719: $03
    add $30                                       ; $571a: $c6 $30
    inc d                                         ; $571c: $14
    dec bc                                        ; $571d: $0b
    ldh a, [$c6]                                  ; $571e: $f0 $c6
    ld sp, $7914                                  ; $5720: $31 $14 $79
    dec bc                                        ; $5723: $0b
    rst $00                                       ; $5724: $c7
    sub l                                         ; $5725: $95
    push de                                       ; $5726: $d5
    call z, Call_02d_5f06                         ; $5727: $cc $06 $5f
    cp e                                          ; $572a: $bb
    sub c                                         ; $572b: $91
    or c                                          ; $572c: $b1
    ld [$66ba], a                                 ; $572d: $ea $ba $66
    adc h                                         ; $5730: $8c
    xor [hl]                                      ; $5731: $ae
    ld [hl], c                                    ; $5732: $71
    xor l                                         ; $5733: $ad
    ret c                                         ; $5734: $d8

    ld a, [de]                                    ; $5735: $1a
    ld l, e                                       ; $5736: $6b
    ld b, h                                       ; $5737: $44
    ld [hl], d                                    ; $5738: $72
    call nc, $c7f4                                ; $5739: $d4 $f4 $c7
    ld [hl], $a0                                  ; $573c: $36 $a0
    ld [hl], c                                    ; $573e: $71
    ei                                            ; $573f: $fb
    or c                                          ; $5740: $b1
    and d                                         ; $5741: $a2
    ld e, l                                       ; $5742: $5d
    rrca                                          ; $5743: $0f
    ld a, a                                       ; $5744: $7f
    cp [hl]                                       ; $5745: $be
    db $d3                                        ; $5746: $d3
    cp $b2                                        ; $5747: $fe $b2
    rra                                           ; $5749: $1f
    ld a, b                                       ; $574a: $78
    ld [hl], d                                    ; $574b: $72
    reti                                          ; $574c: $d9


    rst $30                                       ; $574d: $f7
    sbc d                                         ; $574e: $9a
    add hl, de                                    ; $574f: $19
    ld c, [hl]                                    ; $5750: $4e
    sbc a                                         ; $5751: $9f
    db $f4                                        ; $5752: $f4
    add hl, sp                                    ; $5753: $39
    adc h                                         ; $5754: $8c
    ld l, e                                       ; $5755: $6b

jr_02d_5756:
    call c, Call_000_2bbb                         ; $5756: $dc $bb $2b
    adc d                                         ; $5759: $8a
    ld [hl], c                                    ; $575a: $71
    dec l                                         ; $575b: $2d
    push hl                                       ; $575c: $e5
    add b                                         ; $575d: $80
    inc d                                         ; $575e: $14
    ld a, c                                       ; $575f: $79
    dec bc                                        ; $5760: $0b
    push af                                       ; $5761: $f5
    rst $28                                       ; $5762: $ef
    add [hl]                                      ; $5763: $86
    ld h, e                                       ; $5764: $63
    call c, $d2b0                                 ; $5765: $dc $b0 $d2
    and a                                         ; $5768: $a7
    or c                                          ; $5769: $b1
    cp e                                          ; $576a: $bb
    inc h                                         ; $576b: $24
    adc l                                         ; $576c: $8d
    ld l, e                                       ; $576d: $6b
    rst $10                                       ; $576e: $d7
    xor e                                         ; $576f: $ab
    ld a, [hl+]                                   ; $5770: $2a
    db $fd                                        ; $5771: $fd
    ld c, e                                       ; $5772: $4b
    cp [hl]                                       ; $5773: $be
    ld [hl], d                                    ; $5774: $72

Call_02d_5775:
Jump_02d_5775:
    or a                                          ; $5775: $b7
    jr nz, jr_02d_57f7                            ; $5776: $20 $7f

    rst $38                                       ; $5778: $ff
    ld d, l                                       ; $5779: $55
    xor b                                         ; $577a: $a8
    ld a, h                                       ; $577b: $7c
    daa                                           ; $577c: $27
    ret c                                         ; $577d: $d8

    sbc d                                         ; $577e: $9a
    rst $20                                       ; $577f: $e7
    and h                                         ; $5780: $a4
    ld h, l                                       ; $5781: $65
    nop                                           ; $5782: $00
    ld d, a                                       ; $5783: $57
    push de                                       ; $5784: $d5
    db $fd                                        ; $5785: $fd
    ld e, d                                       ; $5786: $5a
    sbc l                                         ; $5787: $9d
    dec d                                         ; $5788: $15
    dec de                                        ; $5789: $1b
    dec a                                         ; $578a: $3d
    ldh a, [$29]                                  ; $578b: $f0 $29
    ld l, b                                       ; $578d: $68
    and h                                         ; $578e: $a4
    ld d, d                                       ; $578f: $52
    ld d, h                                       ; $5790: $54
    jp hl                                         ; $5791: $e9


    db $d3                                        ; $5792: $d3
    adc h                                         ; $5793: $8c
    ld [$3edd], sp                                ; $5794: $08 $dd $3e
    add hl, hl                                    ; $5797: $29
    ld l, a                                       ; $5798: $6f
    ld bc, $5a59                                  ; $5799: $01 $59 $5a
    di                                            ; $579c: $f3
    sbc h                                         ; $579d: $9c
    call c, Call_02d_6690                         ; $579e: $dc $90 $66
    rst $10                                       ; $57a1: $d7
    push hl                                       ; $57a2: $e5
    rst $28                                       ; $57a3: $ef
    ld h, d                                       ; $57a4: $62
    rst $18                                       ; $57a5: $df
    ld h, [hl]                                    ; $57a6: $66
    or b                                          ; $57a7: $b0
    ld a, [bc]                                    ; $57a8: $0a
    ld a, h                                       ; $57a9: $7c
    rst $38                                       ; $57aa: $ff
    add hl, sp                                    ; $57ab: $39
    rst $08                                       ; $57ac: $cf
    di                                            ; $57ad: $f3
    ld a, h                                       ; $57ae: $7c
    reti                                          ; $57af: $d9


    ld e, d                                       ; $57b0: $5a
    cp c                                          ; $57b1: $b9
    db $eb                                        ; $57b2: $eb
    sub e                                         ; $57b3: $93
    ld a, $8f                                     ; $57b4: $3e $8f
    dec [hl]                                      ; $57b6: $35
    and $e9                                       ; $57b7: $e6 $e9
    add a                                         ; $57b9: $87
    or c                                          ; $57ba: $b1
    jp z, Jump_02d_7abc                           ; $57bb: $ca $bc $7a

    rst $38                                       ; $57be: $ff
    set 6, e                                      ; $57bf: $cb $f3
    ld d, $f5                                     ; $57c1: $16 $f5
    or l                                          ; $57c3: $b5
    ld a, a                                       ; $57c4: $7f
    scf                                           ; $57c5: $37
    rst $30                                       ; $57c6: $f7
    xor [hl]                                      ; $57c7: $ae
    ld c, c                                       ; $57c8: $49
    ld l, e                                       ; $57c9: $6b
    inc l                                         ; $57ca: $2c
    add $35                                       ; $57cb: $c6 $35
    rla                                           ; $57cd: $17
    res 3, h                                      ; $57ce: $cb $9c
    set 0, a                                      ; $57d0: $cb $c7
    db $ed                                        ; $57d2: $ed
    rst $00                                       ; $57d3: $c7
    ld l, $11                                     ; $57d4: $2e $11
    ld l, c                                       ; $57d6: $69
    inc l                                         ; $57d7: $2c
    ld a, a                                       ; $57d8: $7f
    ld de, $ea5a                                  ; $57d9: $11 $5a $ea
    ld b, c                                       ; $57dc: $41
    pop de                                        ; $57dd: $d1
    cp b                                          ; $57de: $b8
    halt                                          ; $57df: $76

jr_02d_57e0:
    add hl, sp                                    ; $57e0: $39
    ld b, $59                                     ; $57e1: $06 $59
    ld c, c                                       ; $57e3: $49
    xor [hl]                                      ; $57e4: $ae
    ld [hl-], a                                   ; $57e5: $32
    adc h                                         ; $57e6: $8c
    dec d                                         ; $57e7: $15
    dec l                                         ; $57e8: $2d
    dec c                                         ; $57e9: $0d
    inc b                                         ; $57ea: $04
    cp [hl]                                       ; $57eb: $be
    xor a                                         ; $57ec: $af
    ld d, l                                       ; $57ed: $55
    ld [hl], a                                    ; $57ee: $77
    ld l, e                                       ; $57ef: $6b
    ld a, [de]                                    ; $57f0: $1a
    ld [hl], e                                    ; $57f1: $73
    db $eb                                        ; $57f2: $eb
    sub [hl]                                      ; $57f3: $96
    sub [hl]                                      ; $57f4: $96
    ld l, l                                       ; $57f5: $6d
    sub l                                         ; $57f6: $95

jr_02d_57f7:
    ld h, c                                       ; $57f7: $61
    db $e4                                        ; $57f8: $e4
    dec l                                         ; $57f9: $2d
    push af                                       ; $57fa: $f5
    rst $28                                       ; $57fb: $ef
    adc d                                         ; $57fc: $8a
    and [hl]                                      ; $57fd: $a6
    xor [hl]                                      ; $57fe: $ae
    ld l, e                                       ; $57ff: $6b
    add hl, de                                    ; $5800: $19
    ret nc                                        ; $5801: $d0

    adc d                                         ; $5802: $8a
    sub [hl]                                      ; $5803: $96
    or d                                          ; $5804: $b2
    sbc a                                         ; $5805: $9f
    ld bc, $98d1                                  ; $5806: $01 $d1 $98
    rlca                                          ; $5809: $07
    ld sp, $535b                                  ; $580a: $31 $5b $53
    jr nz, jr_02d_586e                            ; $580d: $20 $5f

    rlca                                          ; $580f: $07
    jp $fa4f                                      ; $5810: $c3 $4f $fa


    or $29                                        ; $5813: $f6 $29
    add hl, sp                                    ; $5815: $39
    and $41                                       ; $5816: $e6 $41
    adc h                                         ; $5818: $8c
    adc e                                         ; $5819: $8b
    pop de                                        ; $581a: $d1
    ld sp, hl                                     ; $581b: $f9
    inc hl                                        ; $581c: $23
    ld a, a                                       ; $581d: $7f
    ret nz                                        ; $581e: $c0

    ret z                                         ; $581f: $c8

    rst $00                                       ; $5820: $c7
    inc a                                         ; $5821: $3c
    ld [hl], d                                    ; $5822: $72
    xor l                                         ; $5823: $ad
    ld [hl-], a                                   ; $5824: $32
    adc h                                         ; $5825: $8c
    rst $30                                       ; $5826: $f7
    ld l, e                                       ; $5827: $6b
    inc de                                        ; $5828: $13
    ld e, e                                       ; $5829: $5b
    daa                                           ; $582a: $27
    ld [hl], l                                    ; $582b: $75
    ccf                                           ; $582c: $3f
    dec b                                         ; $582d: $05
    db $ed                                        ; $582e: $ed
    jr jr_02d_57e0                                ; $582f: $18 $af

    ld c, c                                       ; $5831: $49
    and a                                         ; $5832: $a7
    rst $18                                       ; $5833: $df
    rst $20                                       ; $5834: $e7
    rst $08                                       ; $5835: $cf
    ld l, e                                       ; $5836: $6b
    rrca                                          ; $5837: $0f
    ld l, l                                       ; $5838: $6d
    ld bc, $de47                                  ; $5839: $01 $47 $de
    or d                                          ; $583c: $b2
    db $eb                                        ; $583d: $eb
    inc l                                         ; $583e: $2c
    push af                                       ; $583f: $f5
    cp $b8                                        ; $5840: $fe $b8

jr_02d_5842:
    db $fc                                        ; $5842: $fc
    and e                                         ; $5843: $a3
    inc a                                         ; $5844: $3c
    cp c                                          ; $5845: $b9
    ld a, [hl-]                                   ; $5846: $3a
    cp e                                          ; $5847: $bb
    or h                                          ; $5848: $b4
    inc c                                         ; $5849: $0c
    ld l, b                                       ; $584a: $68
    reti                                          ; $584b: $d9


    ld a, [de]                                    ; $584c: $1a
    di                                            ; $584d: $f3
    jr nc, jr_02d_5842                            ; $584e: $30 $f2

    ld d, $87                                     ; $5850: $16 $87
    or e                                          ; $5852: $b3
    sub e                                         ; $5853: $93
    cp e                                          ; $5854: $bb
    or h                                          ; $5855: $b4
    ld a, a                                       ; $5856: $7f
    ld d, a                                       ; $5857: $57
    ret nc                                        ; $5858: $d0

    ld a, [de]                                    ; $5859: $1a
    adc e                                         ; $585a: $8b
    ld d, l                                       ; $585b: $55
    or [hl]                                       ; $585c: $b6
    jp z, $de30                                   ; $585d: $ca $30 $de

    rst $08                                       ; $5860: $cf
    ld e, e                                       ; $5861: $5b
    ld b, a                                       ; $5862: $47
    ld [hl], l                                    ; $5863: $75
    cp [hl]                                       ; $5864: $be
    jr nz, jr_02d_58db                            ; $5865: $20 $74

    ld a, [hl]                                    ; $5867: $7e
    cp l                                          ; $5868: $bd
    ld [$7261], a                                 ; $5869: $ea $61 $72
    adc l                                         ; $586c: $8d
    cp a                                          ; $586d: $bf

jr_02d_586e:
    or h                                          ; $586e: $b4
    ld [hl+], a                                   ; $586f: $22
    inc b                                         ; $5870: $04
    sbc [hl]                                      ; $5871: $9e
    call c, $7eeb                                 ; $5872: $dc $eb $7e
    ld a, [bc]                                    ; $5875: $0a
    jp c, Jump_02d_5e31                           ; $5876: $da $31 $5e

    sub e                                         ; $5879: $93
    ld c, [hl]                                    ; $587a: $4e
    cp a                                          ; $587b: $bf
    rst $08                                       ; $587c: $cf
    sbc a                                         ; $587d: $9f
    rst $10                                       ; $587e: $d7
    ld e, $da                                     ; $587f: $1e $da
    ld [bc], a                                    ; $5881: $02
    and a                                         ; $5882: $a7
    ccf                                           ; $5883: $3f
    adc b                                         ; $5884: $88
    and l                                         ; $5885: $a5
    push hl                                       ; $5886: $e5
    xor b                                         ; $5887: $a8
    di                                            ; $5888: $f3
    ld d, a                                       ; $5889: $57
    and c                                         ; $588a: $a1
    and b                                         ; $588b: $a0
    di                                            ; $588c: $f3
    cp b                                          ; $588d: $b8
    ld b, [hl]                                    ; $588e: $46
    cp $80                                        ; $588f: $fe $80
    sub c                                         ; $5891: $91
    rst $08                                       ; $5892: $cf
    jr @-$03                                      ; $5893: $18 $fb

    or h                                          ; $5895: $b4
    ld [hl], d                                    ; $5896: $72
    ld d, a                                       ; $5897: $57
    ld h, a                                       ; $5898: $67
    jp nz, $117f                                  ; $5899: $c2 $7f $11

    cp [hl]                                       ; $589c: $be
    ccf                                           ; $589d: $3f
    xor [hl]                                      ; $589e: $ae
    ld e, b                                       ; $589f: $58
    ld e, d                                       ; $58a0: $5a
    ret nc                                        ; $58a1: $d0

    add hl, sp                                    ; $58a2: $39
    cp c                                          ; $58a3: $b9
    adc [hl]                                      ; $58a4: $8e
    adc a                                         ; $58a5: $8f
    ld c, b                                       ; $58a6: $48
    sbc [hl]                                      ; $58a7: $9e
    or a                                          ; $58a8: $b7
    push af                                       ; $58a9: $f5
    rst $28                                       ; $58aa: $ef
    ld a, [$c30b]                                 ; $58ab: $fa $0b $c3
    sbc b                                         ; $58ae: $98
    and e                                         ; $58af: $a3
    ld a, [hl]                                    ; $58b0: $7e
    sbc $02                                       ; $58b1: $de $02
    add a                                         ; $58b3: $87
    xor a                                         ; $58b4: $af
    ld a, d                                       ; $58b5: $7a
    ld a, a                                       ; $58b6: $7f
    add $60                                       ; $58b7: $c6 $60
    inc h                                         ; $58b9: $24
    rst $30                                       ; $58ba: $f7
    rst $28                                       ; $58bb: $ef
    ld e, b                                       ; $58bc: $58
    dec [hl]                                      ; $58bd: $35
    rst $08                                       ; $58be: $cf
    ld c, c                                       ; $58bf: $49
    ld a, e                                       ; $58c0: $7b
    db $dd                                        ; $58c1: $dd
    rst $20                                       ; $58c2: $e7
    dec l                                         ; $58c3: $2d
    dec e                                         ; $58c4: $1d
    ret nc                                        ; $58c5: $d0

    sbc $83                                       ; $58c6: $de $83
    cp h                                          ; $58c8: $bc
    dec b                                         ; $58c9: $05
    daa                                           ; $58ca: $27
    sbc $55                                       ; $58cb: $de $55
    and l                                         ; $58cd: $a5
    cp d                                          ; $58ce: $ba
    ld h, $9d                                     ; $58cf: $26 $9d
    cp a                                          ; $58d1: $bf
    add $62                                       ; $58d2: $c6 $62
    sub a                                         ; $58d4: $97
    adc b                                         ; $58d5: $88
    or h                                          ; $58d6: $b4

Jump_02d_58d7:
    add $80                                       ; $58d7: $c6 $80
    ld [hl], c                                    ; $58d9: $71
    xor l                                         ; $58da: $ad

jr_02d_58db:
    inc bc                                        ; $58db: $03
    ld b, [hl]                                    ; $58dc: $46
    xor h                                         ; $58dd: $ac
    sub e                                         ; $58de: $93
    sub b                                         ; $58df: $90
    push af                                       ; $58e0: $f5
    ld d, l                                       ; $58e1: $55
    sbc e                                         ; $58e2: $9b
    cp b                                          ; $58e3: $b8
    ld a, [$f31a]                                 ; $58e4: $fa $1a $f3
    jr nz, jr_02d_594f                            ; $58e7: $20 $66

    jr c, jr_02d_5965                             ; $58e9: $38 $7a

    db $10                                        ; $58eb: $10
    xor e                                         ; $58ec: $ab
    or e                                          ; $58ed: $b3
    ld [hl], d                                    ; $58ee: $72
    ld a, a                                       ; $58ef: $7f
    jp nz, $9b52                                  ; $58f0: $c2 $52 $9b

    ret c                                         ; $58f3: $d8

    ld [bc], a                                    ; $58f4: $02
    push af                                       ; $58f5: $f5
    or l                                          ; $58f6: $b5

jr_02d_58f7:
    xor a                                         ; $58f7: $af
    add l                                         ; $58f8: $85
    ld h, c                                       ; $58f9: $61
    xor h                                         ; $58fa: $ac
    or c                                          ; $58fb: $b1
    jr jr_02d_58f7                                ; $58fc: $18 $f9

    ld l, e                                       ; $58fe: $6b
    sub d                                         ; $58ff: $92
    xor e                                         ; $5900: $ab
    inc c                                         ; $5901: $0c
    ld h, e                                       ; $5902: $63
    pop de                                        ; $5903: $d1
    add e                                         ; $5904: $83
    xor e                                         ; $5905: $ab
    jp nc, $35a7                                  ; $5906: $d2 $a7 $35

    dec b                                         ; $5909: $05
    ld h, d                                       ; $590a: $62
    ld l, h                                       ; $590b: $6c
    inc bc                                        ; $590c: $03
    jp z, $bcf3                                   ; $590d: $ca $f3 $bc

    dec b                                         ; $5910: $05
    daa                                           ; $5911: $27
    cp l                                          ; $5912: $bd
    rst $00                                       ; $5913: $c7
    ld c, [hl]                                    ; $5914: $4e
    xor [hl]                                      ; $5915: $ae

Call_02d_5916:
    ld de, $ed21                                  ; $5916: $11 $21 $ed
    ccf                                           ; $5919: $3f
    ld h, b                                       ; $591a: $60
    ld h, h                                       ; $591b: $64
    sub b                                         ; $591c: $90
    ld e, h                                       ; $591d: $5c
    ld h, e                                       ; $591e: $63
    ld c, [hl]                                    ; $591f: $4e
    rrca                                          ; $5920: $0f
    ld l, b                                       ; $5921: $68
    xor a                                         ; $5922: $af
    ei                                            ; $5923: $fb
    ld de, $c5cc                                  ; $5924: $11 $cc $c5
    ld [hl-], a                                   ; $5927: $32
    rst $20                                       ; $5928: $e7
    adc d                                         ; $5929: $8a
    inc a                                         ; $592a: $3c
    rst $08                                       ; $592b: $cf
    ld e, e                                       ; $592c: $5b
    sbc l                                         ; $592d: $9d
    ld d, b                                       ; $592e: $50
    ccf                                           ; $592f: $3f
    ld [$c3d1], a                                 ; $5930: $ea $d1 $c3
    ld e, l                                       ; $5933: $5d
    rst $08                                       ; $5934: $cf
    ld e, l                                       ; $5935: $5d
    rla                                           ; $5936: $17
    xor c                                         ; $5937: $a9
    jp nc, $e4a7                                  ; $5938: $d2 $a7 $e4

    ld a, [hl-]                                   ; $593b: $3a
    ld c, d                                       ; $593c: $4a
    adc h                                         ; $593d: $8c
    ld [hl+], a                                   ; $593e: $22
    cp c                                          ; $593f: $b9
    rlca                                          ; $5940: $07
    inc hl                                        ; $5941: $23
    jr jr_02d_5967                                ; $5942: $18 $23

    add sp, -$44                                  ; $5944: $e8 $bc
    inc c                                         ; $5946: $0c
    ld l, b                                       ; $5947: $68
    reti                                          ; $5948: $d9


    ld [hl], a                                    ; $5949: $77
    ld l, e                                       ; $594a: $6b
    ld a, [de]                                    ; $594b: $1a
    sub l                                         ; $594c: $95
    and d                                         ; $594d: $a2
    dec d                                         ; $594e: $15

jr_02d_594f:
    db $ed                                        ; $594f: $ed
    ld [$f7f3], sp                                ; $5950: $08 $f3 $f7
    ld [hl], a                                    ; $5953: $77
    xor d                                         ; $5954: $aa
    ld a, l                                       ; $5955: $7d
    ld d, [hl]                                    ; $5956: $56
    or c                                          ; $5957: $b1
    ld c, a                                       ; $5958: $4f
    or l                                          ; $5959: $b5
    add a                                         ; $595a: $87
    or [hl]                                       ; $595b: $b6
    push af                                       ; $595c: $f5
    dec [hl]                                      ; $595d: $35
    and $41                                       ; $595e: $e6 $41
    ld sp, $658c                                  ; $5960: $31 $8c $65

Jump_02d_5963:
    ld b, e                                       ; $5963: $43
    sub b                                         ; $5964: $90

jr_02d_5965:
    ld d, [hl]                                    ; $5965: $56
    db $dd                                        ; $5966: $dd

jr_02d_5967:
    xor l                                         ; $5967: $ad
    add d                                         ; $5968: $82
    sub b                                         ; $5969: $90
    daa                                           ; $596a: $27
    sub a                                         ; $596b: $97
    add c                                         ; $596c: $81
    add a                                         ; $596d: $87
    ld a, c                                       ; $596e: $79
    sbc [hl]                                      ; $596f: $9e
    or a                                          ; $5970: $b7
    daa                                           ; $5971: $27
    inc bc                                        ; $5972: $03
    xor $ba                                       ; $5973: $ee $ba
    rst $18                                       ; $5975: $df
    ret z                                         ; $5976: $c8

    sub b                                         ; $5977: $90
    ld l, d                                       ; $5978: $6a
    rrca                                          ; $5979: $0f
    ld l, l                                       ; $597a: $6d
    ld bc, $251d                                  ; $597b: $01 $1d $25
    ld b, [hl]                                    ; $597e: $46
    sub c                                         ; $597f: $91
    ld e, h                                       ; $5980: $5c
    cp c                                          ; $5981: $b9
    dec hl                                        ; $5982: $2b
    ld a, [de]                                    ; $5983: $1a
    ld b, a                                       ; $5984: $47
    ld e, d                                       ; $5985: $5a
    jp c, $69ad                                   ; $5986: $da $ad $69

    inc b                                         ; $5989: $04
    sbc [hl]                                      ; $598a: $9e
    xor a                                         ; $598b: $af
    jp $8d2d                                      ; $598c: $c3 $2d $8d


    xor d                                         ; $598f: $aa
    ld b, a                                       ; $5990: $47
    rrca                                          ; $5991: $0f
    rst $00                                       ; $5992: $c7
    or l                                          ; $5993: $b5
    ld [bc], a                                    ; $5994: $02
    ld e, b                                       ; $5995: $58
    sbc e                                         ; $5996: $9b
    cp b                                          ; $5997: $b8
    inc de                                        ; $5998: $13
    or h                                          ; $5999: $b4
    inc hl                                        ; $599a: $23
    call z, $dfdf                                 ; $599b: $cc $df $df
    xor c                                         ; $599e: $a9
    or $59                                        ; $599f: $f6 $59
    push bc                                       ; $59a1: $c5
    ld a, $25                                     ; $59a2: $3e $25
    ld d, a                                       ; $59a4: $57
    or h                                          ; $59a5: $b4
    or h                                          ; $59a6: $b4
    ld a, l                                       ; $59a7: $7d
    ld [$d2ae], a                                 ; $59a8: $ea $ae $d2
    cp b                                          ; $59ab: $b8
    halt                                          ; $59ac: $76
    xor d                                         ; $59ad: $aa
    cp h                                          ; $59ae: $bc
    pop de                                        ; $59af: $d1
    daa                                           ; $59b0: $27
    ld [hl], e                                    ; $59b1: $73
    sbc [hl]                                      ; $59b2: $9e
    sbc h                                         ; $59b3: $9c
    add d                                         ; $59b4: $82
    ld d, [hl]                                    ; $59b5: $56
    or h                                          ; $59b6: $b4
    db $10                                        ; $59b7: $10
    sub h                                         ; $59b8: $94
    push de                                       ; $59b9: $d5
    ld e, c                                       ; $59ba: $59
    ld b, $70                                     ; $59bb: $06 $70
    ld e, b                                       ; $59bd: $58
    or $52                                        ; $59be: $f6 $52
    scf                                           ; $59c0: $37
    adc h                                         ; $59c1: $8c
    ld d, b                                       ; $59c2: $50
    sbc $02                                       ; $59c3: $de $02
    sbc l                                         ; $59c5: $9d
    db $fc                                        ; $59c6: $fc
    ld bc, $15a3                                  ; $59c7: $01 $a3 $15
    dec de                                        ; $59ca: $1b
    bit 3, a                                      ; $59cb: $cb $5f
    add h                                         ; $59cd: $84
    add $ad                                       ; $59ce: $c6 $ad

jr_02d_59d0:
    jp nc, $d18c                                  ; $59d0: $d2 $8c $d1

    dec [hl]                                      ; $59d3: $35
    ld hl, sp-$66                                 ; $59d4: $f8 $9a
    cp a                                          ; $59d6: $bf
    sub h                                         ; $59d7: $94
    and $2f                                       ; $59d8: $e6 $2f
    sub h                                         ; $59da: $94
    call c, Call_02d_5775                         ; $59db: $dc $75 $57
    ret nc                                        ; $59de: $d0

    add sp, $01                                   ; $59df: $e8 $01
    db $ed                                        ; $59e1: $ed
    jp nc, $a032                                  ; $59e2: $d2 $32 $a0

    ld h, l                                       ; $59e5: $65
    ld l, e                                       ; $59e6: $6b
    ld h, c                                       ; $59e7: $61
    jr jr_02d_5a63                                ; $59e8: $18 $79

    dec bc                                        ; $59ea: $0b
    push af                                       ; $59eb: $f5
    or l                                          ; $59ec: $b5
    rr a                                          ; $59ed: $cb $1f
    add $32                                       ; $59ef: $c6 $32
    and b                                         ; $59f1: $a0
    ld e, l                                       ; $59f2: $5d
    ld [hl], a                                    ; $59f3: $77
    dec b                                         ; $59f4: $05
    adc l                                         ; $59f5: $8d
    db $db                                        ; $59f6: $db
    adc a                                         ; $59f7: $8f
    pop bc                                        ; $59f8: $c1
    rst $10                                       ; $59f9: $d7
    add sp, -$7f                                  ; $59fa: $e8 $81
    rst $20                                       ; $59fc: $e7
    db $eb                                        ; $59fd: $eb
    inc b                                         ; $59fe: $04
    db $e3                                        ; $59ff: $e3
    ld h, d                                       ; $5a00: $62
    call c, $c630                                 ; $5a01: $dc $30 $c6
    inc a                                         ; $5a04: $3c

jr_02d_5a05:
    db $f4                                        ; $5a05: $f4
    add hl, de                                    ; $5a06: $19
    call nc, $8ae3                                ; $5a07: $d4 $e3 $8a
    add b                                         ; $5a0a: $80
    ret z                                         ; $5a0b: $c8

    ld e, e                                       ; $5a0c: $5b
    and a                                         ; $5a0d: $a7
    adc b                                         ; $5a0e: $88
    ld h, l                                       ; $5a0f: $65
    adc $35                                       ; $5a10: $ce $35
    db $fd                                        ; $5a12: $fd
    or c                                          ; $5a13: $b1
    dec c                                         ; $5a14: $0d
    jr z, jr_02d_59d0                             ; $5a15: $28 $b9

    add $62                                       ; $5a17: $c6 $62
    ld a, [$594b]                                 ; $5a19: $fa $4b $59
    db $e4                                        ; $5a1c: $e4
    dec l                                         ; $5a1d: $2d
    rst $00                                       ; $5a1e: $c7
    sub l                                         ; $5a1f: $95
    dec [hl]                                      ; $5a20: $35
    and $d6                                       ; $5a21: $e6 $d6
    dec l                                         ; $5a23: $2d
    dec l                                         ; $5a24: $2d
    inc bc                                        ; $5a25: $03
    jp c, Jump_02d_5775                           ; $5a26: $da $75 $57

    ret nc                                        ; $5a29: $d0

    ld a, [de]                                    ; $5a2a: $1a
    xor a                                         ; $5a2b: $af
    dec de                                        ; $5a2c: $1b
    db $e3                                        ; $5a2d: $e3
    ld [hl], a                                    ; $5a2e: $77
    ld hl, sp+$1a                                 ; $5a2f: $f8 $1a
    bit 3, a                                      ; $5a31: $cb $5f
    add h                                         ; $5a33: $84
    sub [hl]                                      ; $5a34: $96
    ld a, d                                       ; $5a35: $7a
    ld d, b                                       ; $5a36: $50
    sub h                                         ; $5a37: $94
    or a                                          ; $5a38: $b7
    ld e, c                                       ; $5a39: $59
    ld [hl], a                                    ; $5a3a: $77
    dec b                                         ; $5a3b: $05
    xor l                                         ; $5a3c: $ad
    ld de, $bd50                                  ; $5a3d: $11 $50 $bd
    xor [hl]                                      ; $5a40: $ae
    ret                                           ; $5a41: $c9


    dec [hl]                                      ; $5a42: $35
    ld l, $77                                     ; $5a43: $2e $77
    xor h                                         ; $5a45: $ac
    db $eb                                        ; $5a46: $eb
    ld a, [de]                                    ; $5a47: $1a
    db $fc                                        ; $5a48: $fc
    sub c                                         ; $5a49: $91
    and l                                         ; $5a4a: $a5
    adc d                                         ; $5a4b: $8a
    inc c                                         ; $5a4c: $0c
    ld a, [c]                                     ; $5a4d: $f2
    ld d, $1d                                     ; $5a4e: $16 $1d
    dec l                                         ; $5a50: $2d
    ld b, [hl]                                    ; $5a51: $46
    ld e, [hl]                                    ; $5a52: $5e
    scf                                           ; $5a53: $37
    ld d, [hl]                                    ; $5a54: $56
    ld e, $fe                                     ; $5a55: $1e $fe
    inc a                                         ; $5a57: $3c
    rst $08                                       ; $5a58: $cf
    ld b, a                                       ; $5a59: $47
    rrca                                          ; $5a5a: $0f
    ld l, b                                       ; $5a5b: $68
    adc l                                         ; $5a5c: $8d
    rst $10                                       ; $5a5d: $d7
    adc l                                         ; $5a5e: $8d
    cp h                                          ; $5a5f: $bc
    dec b                                         ; $5a60: $05
    and a                                         ; $5a61: $a7
    ccf                                           ; $5a62: $3f

jr_02d_5a63:
    adc b                                         ; $5a63: $88
    dec [hl]                                      ; $5a64: $35
    rrca                                          ; $5a65: $0f
    jr jr_02d_5a05                                ; $5a66: $18 $9d

    cp a                                          ; $5a68: $bf
    add $bc                                       ; $5a69: $c6 $bc
    ret z                                         ; $5a6b: $c8

    ld l, e                                       ; $5a6c: $6b
    rrca                                          ; $5a6d: $0f
    ld l, l                                       ; $5a6e: $6d
    ld bc, $d147                                  ; $5a6f: $01 $47 $d1
    sbc d                                         ; $5a72: $9a
    rlca                                          ; $5a73: $07
    sbc [hl]                                      ; $5a74: $9e
    add c                                         ; $5a75: $81
    add a                                         ; $5a76: $87
    ei                                            ; $5a77: $fb
    ld e, d                                       ; $5a78: $5a
    ld h, e                                       ; $5a79: $63
    ld e, [hl]                                    ; $5a7a: $5e
    db $e4                                        ; $5a7b: $e4
    add [hl]                                      ; $5a7c: $86
    ld d, c                                       ; $5a7d: $51
    cpl                                           ; $5a7e: $2f
    ld e, e                                       ; $5a7f: $5b
    ld l, e                                       ; $5a80: $6b
    inc l                                         ; $5a81: $2c
    ld l, d                                       ; $5a82: $6a
    rrca                                          ; $5a83: $0f
    ld l, l                                       ; $5a84: $6d
    ld bc, $1aa7                                  ; $5a85: $01 $a7 $1a
    and e                                         ; $5a88: $a3
    di                                            ; $5a89: $f3
    db $eb                                        ; $5a8a: $eb
    ld sp, $620f                                  ; $5a8b: $31 $0f $62
    xor a                                         ; $5a8e: $af
    ei                                            ; $5a8f: $fb
    add hl, hl                                    ; $5a90: $29
    ld l, b                                       ; $5a91: $68
    rst $00                                       ; $5a92: $c7
    ld a, b                                       ; $5a93: $78
    ld c, l                                       ; $5a94: $4d
    ld a, [hl-]                                   ; $5a95: $3a
    db $fd                                        ; $5a96: $fd
    ld a, $7f                                     ; $5a97: $3e $7f
    ld e, [hl]                                    ; $5a99: $5e
    ld a, e                                       ; $5a9a: $7b

jr_02d_5a9b:
    ld l, b                                       ; $5a9b: $68
    dec bc                                        ; $5a9c: $0b
    ld b, a                                       ; $5a9d: $47
    and b                                         ; $5a9e: $a0
    cp $a2                                        ; $5a9f: $fe $a2
    rlca                                          ; $5aa1: $07
    ld c, a                                       ; $5aa2: $4f
    ld l, $5b                                     ; $5aa3: $2e $5b
    dec bc                                        ; $5aa5: $0b
    ret nz                                        ; $5aa6: $c0

    ld e, b                                       ; $5aa7: $58
    or c                                          ; $5aa8: $b1
    or c                                          ; $5aa9: $b1
    call z, $ea39                                 ; $5aaa: $cc $39 $ea
    ld a, a                                       ; $5aad: $7f
    adc l                                         ; $5aae: $8d
    ld l, e                                       ; $5aaf: $6b
    rst $00                                       ; $5ab0: $c7
    ld a, b                                       ; $5ab1: $78
    ld c, l                                       ; $5ab2: $4d
    ld a, [hl-]                                   ; $5ab3: $3a
    db $fd                                        ; $5ab4: $fd
    ld a, $7f                                     ; $5ab5: $3e $7f
    sbc [hl]                                      ; $5ab7: $9e
    or a                                          ; $5ab8: $b7
    ld e, c                                       ; $5ab9: $59
    xor a                                         ; $5aba: $af
    xor d                                         ; $5abb: $aa
    db $f4                                        ; $5abc: $f4
    ld l, c                                       ; $5abd: $69
    ld l, c                                       ; $5abe: $69
    ld b, e                                       ; $5abf: $43
    rst $10                                       ; $5ac0: $d7
    sbc d                                         ; $5ac1: $9a
    rlca                                          ; $5ac2: $07
    ld a, $7d                                     ; $5ac3: $3e $7d
    ld [hl], d                                    ; $5ac5: $72
    ld a, c                                       ; $5ac6: $79
    db $ed                                        ; $5ac7: $ed
    and c                                         ; $5ac8: $a1
    dec l                                         ; $5ac9: $2d
    rst $00                                       ; $5aca: $c7
    sub l                                         ; $5acb: $95
    and l                                         ; $5acc: $a5
    dec c                                         ; $5acd: $0d
    ld l, b                                       ; $5ace: $68
    sub l                                         ; $5acf: $95
    add $df                                       ; $5ad0: $c6 $df
    rst $38                                       ; $5ad2: $ff
    ld a, [c]                                     ; $5ad3: $f2
    dec d                                         ; $5ad4: $15
    xor l                                         ; $5ad5: $ad
    ld a, d                                       ; $5ad6: $7a
    inc [hl]                                      ; $5ad7: $34
    xor [hl]                                      ; $5ad8: $ae
    dec [hl]                                      ; $5ad9: $35
    ld d, $a1                                     ; $5ada: $16 $a1
    add l                                         ; $5adc: $85
    ld l, $17                                     ; $5add: $2e $17
    push hl                                       ; $5adf: $e5
    dec l                                         ; $5ae0: $2d
    ld b, a                                       ; $5ae1: $47
    pop de                                        ; $5ae2: $d1
    ld [hl-], a                                   ; $5ae3: $32
    and b                                         ; $5ae4: $a0
    or d                                          ; $5ae5: $b2
    and e                                         ; $5ae6: $a3
    ld c, [hl]                                    ; $5ae7: $4e
    db $ed                                        ; $5ae8: $ed
    or h                                          ; $5ae9: $b4
    and d                                         ; $5aea: $a2
    ld d, l                                       ; $5aeb: $55
    adc a                                         ; $5aec: $8f
    add $b5                                       ; $5aed: $c6 $b5
    add $22                                       ; $5aef: $c6 $22
    or h                                          ; $5af1: $b4
    ret nc                                        ; $5af2: $d0

    push hl                                       ; $5af3: $e5
    and d                                         ; $5af4: $a2
    jp c, Jump_02d_5b43                           ; $5af5: $da $43 $5b

    ld e, c                                       ; $5af8: $59
    jp c, Jump_02d_42d7                           ; $5af9: $da $d7 $42

    ld l, [hl]                                    ; $5afc: $6e
    ld c, b                                       ; $5afd: $48
    ld l, e                                       ; $5afe: $6b
    ld a, [bc]                                    ; $5aff: $0a
    call nz, Call_000_2fe0                        ; $5b00: $c4 $e0 $2f
    ld [hl], h                                    ; $5b03: $74
    cp c                                          ; $5b04: $b9
    ld l, b                                       ; $5b05: $68
    add c                                         ; $5b06: $81
    set 2, [hl]                                   ; $5b07: $cb $d6
    ld c, b                                       ; $5b09: $48
    dec hl                                        ; $5b0a: $2b
    ld a, [de]                                    ; $5b0b: $1a
    rst $00                                       ; $5b0c: $c7
    jr nc, jr_02d_5a9b                            ; $5b0d: $30 $8c

    db $e4                                        ; $5b0f: $e4
    sub b                                         ; $5b10: $90
    db $e3                                        ; $5b11: $e3
    and e                                         ; $5b12: $a3
    ld a, h                                       ; $5b13: $7c
    rst $00                                       ; $5b14: $c7

Jump_02d_5b15:
    sub l                                         ; $5b15: $95
    and l                                         ; $5b16: $a5
    dec c                                         ; $5b17: $0d
    ld l, b                                       ; $5b18: $68
    add hl, de                                    ; $5b19: $19
    ret nc                                        ; $5b1a: $d0

    ld [$3456], sp                                ; $5b1b: $08 $56 $34
    ld a, [c]                                     ; $5b1e: $f2
    rlca                                          ; $5b1f: $07
    adc h                                         ; $5b20: $8c
    ld h, d                                       ; $5b21: $62
    db $f4                                        ; $5b22: $f4
    add b                                         ; $5b23: $80
    ld d, $82                                     ; $5b24: $16 $82
    sub d                                         ; $5b26: $92
    or a                                          ; $5b27: $b7
    sbc l                                         ; $5b28: $9d
    ld h, b                                       ; $5b29: $60
    rst $10                                       ; $5b2a: $d7
    ei                                            ; $5b2b: $fb
    rst $18                                       ; $5b2c: $df
    jr nc, jr_02d_5b85                            ; $5b2d: $30 $56

    or h                                          ; $5b2f: $b4
    ld [$b8d1], a                                 ; $5b30: $ea $d1 $b8
    sub $58                                       ; $5b33: $d6 $58
    add h                                         ; $5b35: $84
    add $b5                                       ; $5b36: $c6 $b5
    ld h, e                                       ; $5b38: $63
    cp h                                          ; $5b39: $bc
    ld h, $9d                                     ; $5b3a: $26 $9d
    ld a, [hl]                                    ; $5b3c: $7e
    sbc a                                         ; $5b3d: $9f
    ccf                                           ; $5b3e: $3f
    xor a                                         ; $5b3f: $af
    dec a                                         ; $5b40: $3d
    or h                                          ; $5b41: $b4
    dec b                                         ; $5b42: $05

Jump_02d_5b43:
    ld b, a                                       ; $5b43: $47
    xor d                                         ; $5b44: $aa
    or d                                          ; $5b45: $b2
    rst $08                                       ; $5b46: $cf
    or l                                          ; $5b47: $b5
    ld a, [hl-]                                   ; $5b48: $3a
    res 0, b                                      ; $5b49: $cb $80
    ld c, d                                       ; $5b4b: $4a
    ld b, $ee                                     ; $5b4c: $06 $ee
    ldh a, [$c7]                                  ; $5b4e: $f0 $c7
    or l                                          ; $5b50: $b5
    ld h, e                                       ; $5b51: $63
    cp h                                          ; $5b52: $bc
    ld h, $9d                                     ; $5b53: $26 $9d
    ld a, [hl]                                    ; $5b55: $7e
    sbc a                                         ; $5b56: $9f
    ccf                                           ; $5b57: $3f
    rst $08                                       ; $5b58: $cf
    ld e, e                                       ; $5b59: $5b
    push af                                       ; $5b5a: $f5
    or l                                          ; $5b5b: $b5
    xor a                                         ; $5b5c: $af
    ld e, l                                       ; $5b5d: $5d
    rst $28                                       ; $5b5e: $ef
    ld a, a                                       ; $5b5f: $7f
    jp $d558                                      ; $5b60: $c3 $58 $d5


    ld [hl], l                                    ; $5b63: $75

jr_02d_5b64:
    and l                                         ; $5b64: $a5
    dec [hl]                                      ; $5b65: $35
    ld d, $2b                                     ; $5b66: $16 $2b
    ld e, d                                       ; $5b68: $5a
    add l                                         ; $5b69: $85
    ld a, [$0b79]                                 ; $5b6a: $fa $79 $0b
    and a                                         ; $5b6d: $a7
    ccf                                           ; $5b6e: $3f
    adc b                                         ; $5b6f: $88
    ld e, l                                       ; $5b70: $5d
    rst $28                                       ; $5b71: $ef
    ld a, a                                       ; $5b72: $7f
    jp $9d08                                      ; $5b73: $c3 $08 $9d


    cp a                                          ; $5b76: $bf
    and d                                         ; $5b77: $a2
    ld d, l                                       ; $5b78: $55
    adc a                                         ; $5b79: $8f
    add $b5                                       ; $5b7a: $c6 $b5
    add $22                                       ; $5b7c: $c6 $22
    or h                                          ; $5b7e: $b4
    and $81                                       ; $5b7f: $e6 $81
    ld c, a                                       ; $5b81: $4f
    sbc a                                         ; $5b82: $9f
    ld e, h                                       ; $5b83: $5c
    cp [hl]                                       ; $5b84: $be

jr_02d_5b85:
    ld a, [hl-]                                   ; $5b85: $3a
    dec sp                                        ; $5b86: $3b
    add $6b                                       ; $5b87: $c6 $6b
    jp nc, $f7e9                                  ; $5b89: $d2 $e9 $f7

    ld sp, hl                                     ; $5b8c: $f9
    di                                            ; $5b8d: $f3
    jp c, Jump_02d_5b43                           ; $5b8e: $da $43 $5b

    and a                                         ; $5b91: $a7
    ld [c], a                                     ; $5b92: $e2
    or d                                          ; $5b93: $b2
    or l                                          ; $5b94: $b5
    xor a                                         ; $5b95: $af
    dec d                                         ; $5b96: $15
    db $ed                                        ; $5b97: $ed
    ld a, d                                       ; $5b98: $7a
    rst $38                                       ; $5b99: $ff
    dec de                                        ; $5b9a: $1b
    ld b, [hl]                                    ; $5b9b: $46
    jr jr_02d_5b64                                ; $5b9c: $18 $c6

    ld a, [de]                                    ; $5b9e: $1a
    adc e                                         ; $5b9f: $8b
    db $e4                                        ; $5ba0: $e4
    or d                                          ; $5ba1: $b2
    or l                                          ; $5ba2: $b5
    sub b                                         ; $5ba3: $90
    dec de                                        ; $5ba4: $1b
    add $e0                                       ; $5ba5: $c6 $e0
    xor a                                         ; $5ba7: $af
    pop bc                                        ; $5ba8: $c1
    cp d                                          ; $5ba9: $ba
    db $e4                                        ; $5baa: $e4
    ld e, d                                       ; $5bab: $5a
    jp c, Jump_02d_753e                           ; $5bac: $da $3e $75

    ld d, a                                       ; $5baf: $57
    ld l, c                                       ; $5bb0: $69
    cpl                                           ; $5bb1: $2f
    sbc l                                         ; $5bb2: $9d
    add $0b                                       ; $5bb3: $c6 $0b
    ld d, l                                       ; $5bb5: $55
    ld l, d                                       ; $5bb6: $6a
    inc de                                        ; $5bb7: $13
    ld e, e                                       ; $5bb8: $5b
    ld b, a                                       ; $5bb9: $47
    pop de                                        ; $5bba: $d1
    xor [hl]                                      ; $5bbb: $ae
    cp e                                          ; $5bbc: $bb
    add d                                         ; $5bbd: $82
    sub [hl]                                      ; $5bbe: $96
    add c                                         ; $5bbf: $81
    add a                                         ; $5bc0: $87
    or l                                          ; $5bc1: $b5
    add a                                         ; $5bc2: $87
    or [hl]                                       ; $5bc3: $b6
    ld b, a                                       ; $5bc4: $47
    or c                                          ; $5bc5: $b1
    sub a                                         ; $5bc6: $97
    ld b, d                                       ; $5bc7: $42
    db $fd                                        ; $5bc8: $fd
    db $e4                                        ; $5bc9: $e4
    ld [$3cd6], sp                                ; $5bca: $08 $d6 $3c
    ld [hl], b                                    ; $5bcd: $70
    scf                                           ; $5bce: $37
    adc h                                         ; $5bcf: $8c
    dec [hl]                                      ; $5bd0: $35
    ld [bc], a                                    ; $5bd1: $02
    xor d                                         ; $5bd2: $aa
    rst $10                                       ; $5bd3: $d7
    dec [hl]                                      ; $5bd4: $35
    cp c                                          ; $5bd5: $b9
    ld d, [hl]                                    ; $5bd6: $56
    ld l, c                                       ; $5bd7: $69
    xor [hl]                                      ; $5bd8: $ae
    rst $08                                       ; $5bd9: $cf
    ld e, l                                       ; $5bda: $5d
    add e                                         ; $5bdb: $83
    cp a                                          ; $5bdc: $bf
    sub b                                         ; $5bdd: $90
    inc sp                                        ; $5bde: $33
    ld a, b                                       ; $5bdf: $78
    ld l, c                                       ; $5be0: $69
    add $d8                                       ; $5be1: $c6 $d8
    and a                                         ; $5be3: $a7
    inc a                                         ; $5be4: $3c
    rst $08                                       ; $5be5: $cf
    ld e, e                                       ; $5be6: $5b
    daa                                           ; $5be7: $27
    add e                                         ; $5be8: $83
    jp z, $fa58                                   ; $5be9: $ca $58 $fa

    xor [hl]                                      ; $5bec: $ae
    ld [hl], c                                    ; $5bed: $71
    dec l                                         ; $5bee: $2d
    db $e4                                        ; $5bef: $e4
    inc c                                         ; $5bf0: $0c
    ld e, [hl]                                    ; $5bf1: $5e
    xor d                                         ; $5bf2: $aa
    dec a                                         ; $5bf3: $3d
    or h                                          ; $5bf4: $b4
    dec b                                         ; $5bf5: $05
    rst $00                                       ; $5bf6: $c7
    sub l                                         ; $5bf7: $95
    push de                                       ; $5bf8: $d5
    call z, Call_000_2a46                         ; $5bf9: $cc $46 $2a
    ld b, l                                       ; $5bfc: $45
    sub l                                         ; $5bfd: $95
    ld a, $8d                                     ; $5bfe: $3e $8d
    ld l, e                                       ; $5c00: $6b
    rst $10                                       ; $5c01: $d7
    inc bc                                        ; $5c02: $03
    or a                                          ; $5c03: $b7
    ld c, a                                       ; $5c04: $4f
    ld sp, $377e                                  ; $5c05: $31 $7e $37
    db $f4                                        ; $5c08: $f4
    ld [hl], c                                    ; $5c09: $71
    ei                                            ; $5c0a: $fb
    or c                                          ; $5c0b: $b1
    ld c, e                                       ; $5c0c: $4b
    or c                                          ; $5c0d: $b1
    db $eb                                        ; $5c0e: $eb
    ld b, c                                       ; $5c0f: $41
    ld a, c                                       ; $5c10: $79
    add sp, -$4f                                  ; $5c11: $e8 $b1
    inc c                                         ; $5c13: $0c
    ld l, b                                       ; $5c14: $68
    sub l                                         ; $5c15: $95
    adc l                                         ; $5c16: $8d
    cp d                                          ; $5c17: $ba
    ld h, $ad                                     ; $5c18: $26 $ad
    ld a, c                                       ; $5c1a: $79
    ldh [$6e], a                                  ; $5c1b: $e0 $6e
    ld c, b                                       ; $5c1d: $48
    adc e                                         ; $5c1e: $8b
    cp e                                          ; $5c1f: $bb
    cp c                                          ; $5c20: $b9
    db $db                                        ; $5c21: $db
    push bc                                       ; $5c22: $c5
    sub [hl]                                      ; $5c23: $96
    xor a                                         ; $5c24: $af
    adc $e8                                       ; $5c25: $ce $e8
    ld bc, $7aad                                  ; $5c27: $01 $ad $7a
    sub l                                         ; $5c2a: $95
    ld a, $e5                                     ; $5c2b: $3e $e5
    dec l                                         ; $5c2d: $2d
    sbc l                                         ; $5c2e: $9d
    ld h, b                                       ; $5c2f: $60
    call $7703                                    ; $5c30: $cd $03 $77
    jp $2358                                      ; $5c33: $c3 $58 $23


    and b                                         ; $5c36: $a0
    ld a, d                                       ; $5c37: $7a

jr_02d_5c38:
    ld e, l                                       ; $5c38: $5d
    sub e                                         ; $5c39: $93
    ld l, e                                       ; $5c3a: $6b
    db $e4                                        ; $5c3b: $e4
    rrca                                          ; $5c3c: $0f
    jr jr_02d_5c38                                ; $5c3d: $18 $f9

    ld [hl-], a                                   ; $5c3f: $32
    and b                                         ; $5c40: $a0
    sub d                                         ; $5c41: $92
    ld bc, $62ed                                  ; $5c42: $01 $ed $62
    cp a                                          ; $5c45: $bf
    ret nc                                        ; $5c46: $d0

    sbc d                                         ; $5c47: $9a
    rlca                                          ; $5c48: $07
    cp [hl]                                       ; $5c49: $be
    ld h, d                                       ; $5c4a: $62
    ld c, e                                       ; $5c4b: $4b
    ld h, e                                       ; $5c4c: $63
    ld h, a                                       ; $5c4d: $67
    ld a, c                                       ; $5c4e: $79
    sbc $02                                       ; $5c4f: $de $02
    dec e                                         ; $5c51: $1d
    call $cea7                                    ; $5c52: $cd $a7 $ce
    xor d                                         ; $5c55: $aa
    sbc d                                         ; $5c56: $9a
    and d                                         ; $5c57: $a2
    jp c, Jump_02d_5b43                           ; $5c58: $da $43 $5b

    and a                                         ; $5c5b: $a7
    ld a, l                                       ; $5c5c: $7d
    adc l                                         ; $5c5d: $8d
    ld b, c                                       ; $5c5e: $41
    ld h, c                                       ; $5c5f: $61
    add hl, hl                                    ; $5c60: $29
    jp c, $c6e5                                   ; $5c61: $da $e5 $c6

    jr @+$6b                                      ; $5c64: $18 $69

    ld hl, $a437                                  ; $5c66: $21 $37 $a4
    dec [hl]                                      ; $5c69: $35
    and $69                                       ; $5c6a: $e6 $69

Call_02d_5c6c:
    ld b, e                                       ; $5c6c: $43
    ld d, d                                       ; $5c6d: $52
    sbc $02                                       ; $5c6e: $de $02

Call_02d_5c70:
    dec e                                         ; $5c70: $1d
    inc c                                         ; $5c71: $0c
    ld h, e                                       ; $5c72: $63
    reti                                          ; $5c73: $d9


    ld [hl], a                                    ; $5c74: $77
    db $fd                                        ; $5c75: $fd
    add hl, de                                    ; $5c76: $19
    ld c, $be                                     ; $5c77: $0e $be
    ld l, d                                       ; $5c79: $6a
    inc de                                        ; $5c7a: $13
    ld e, e                                       ; $5c7b: $5b
    and a                                         ; $5c7c: $a7
    ld [de], a                                    ; $5c7d: $12
    inc [hl]                                      ; $5c7e: $34
    or a                                          ; $5c7f: $b7
    inc [hl]                                      ; $5c80: $34
    jp c, $daa7                                   ; $5c81: $da $a7 $da

    call nz, $6175                                ; $5c84: $c4 $75 $61
    xor e                                         ; $5c87: $ab
    inc c                                         ; $5c88: $0c
    ccf                                           ; $5c89: $3f
    and c                                         ; $5c8a: $a1
    ld a, $77                                     ; $5c8b: $3e $77
    ld e, e                                       ; $5c8d: $5b
    ld h, l                                       ; $5c8e: $65
    ld h, e                                       ; $5c8f: $63
    ld d, b                                       ; $5c90: $50
    ld e, b                                       ; $5c91: $58
    adc d                                         ; $5c92: $8a
    halt                                          ; $5c93: $76
    ld hl, $03f9                                  ; $5c94: $21 $f9 $03
    inc l                                         ; $5c97: $2c
    ld b, l                                       ; $5c98: $45
    db $d3                                        ; $5c99: $d3
    ld e, a                                       ; $5c9a: $5f
    ld d, e                                       ; $5c9b: $53
    db $ec                                        ; $5c9c: $ec
    ld d, d                                       ; $5c9d: $52
    ld l, l                                       ; $5c9e: $6d
    ld [c], a                                     ; $5c9f: $e2
    ld c, [hl]                                    ; $5ca0: $4e
    ret nc                                        ; $5ca1: $d0

    xor d                                         ; $5ca2: $aa
    ld b, a                                       ; $5ca3: $47
    db $e3                                        ; $5ca4: $e3
    ld e, d                                       ; $5ca5: $5a
    ld h, e                                       ; $5ca6: $63
    ld de, $829a                                  ; $5ca7: $11 $9a $82
    halt                                          ; $5caa: $76
    rst $08                                       ; $5cab: $cf
    or d                                          ; $5cac: $b2
    ld b, $68                                     ; $5cad: $06 $68
    ld b, a                                       ; $5caf: $47
    cp d                                          ; $5cb0: $ba
    ld e, l                                       ; $5cb1: $5d
    rst $28                                       ; $5cb2: $ef
    ld h, e                                       ; $5cb3: $63
    call c, Call_000_1df3                         ; $5cb4: $dc $f3 $1d
    cp [hl]                                       ; $5cb7: $be
    inc d                                         ; $5cb8: $14
    ld [$7753], a                                 ; $5cb9: $ea $53 $77
    ld d, h                                       ; $5cbc: $54
    sbc e                                         ; $5cbd: $9b
    ret c                                         ; $5cbe: $d8

    ld [bc], a                                    ; $5cbf: $02
    ld b, a                                       ; $5cc0: $47
    pop de                                        ; $5cc1: $d1
    ld e, [hl]                                    ; $5cc2: $5e
    rst $30                                       ; $5cc3: $f7
    ld d, e                                       ; $5cc4: $53
    ld d, b                                       ; $5cc5: $50
    cp l                                          ; $5cc6: $bd
    ld c, e                                       ; $5cc7: $4b
    res 0, b                                      ; $5cc8: $cb $80
    sub [hl]                                      ; $5cca: $96
    xor l                                         ; $5ccb: $ad
    dec [hl]                                      ; $5ccc: $35
    rrca                                          ; $5ccd: $0f
    call c, Call_02d_630d                         ; $5cce: $dc $0d $63
    ld a, [$7f23]                                 ; $5cd1: $fa $23 $7f

jr_02d_5cd4:
    ret nz                                        ; $5cd4: $c0

    ret z                                         ; $5cd5: $c8

    rlca                                          ; $5cd6: $07
    ld e, a                                       ; $5cd7: $5f
    or l                                          ; $5cd8: $b5
    add a                                         ; $5cd9: $87
    or [hl]                                       ; $5cda: $b6
    push af                                       ; $5cdb: $f5
    or l                                          ; $5cdc: $b5
    rr a                                          ; $5cdd: $cb $1f
    add $32                                       ; $5cdf: $c6 $32
    and b                                         ; $5ce1: $a0
    ld h, l                                       ; $5ce2: $65
    rst $18                                       ; $5ce3: $df
    push af                                       ; $5ce4: $f5
    ld h, a                                       ; $5ce5: $67
    jr c, jr_02d_5cee                             ; $5ce6: $38 $06

    ld b, $5f                                     ; $5ce8: $06 $5f
    db $e3                                        ; $5cea: $e3
    or $63                                        ; $5ceb: $f6 $63
    ld b, l                                       ; $5ced: $45

jr_02d_5cee:
    ld h, e                                       ; $5cee: $63
    ld e, e                                       ; $5cef: $5b
    add hl, hl                                    ; $5cf0: $29
    db $e3                                        ; $5cf1: $e3
    ld [hl], a                                    ; $5cf2: $77
    ld a, l                                       ; $5cf3: $7d
    ld a, [c]                                     ; $5cf4: $f2
    sbc e                                         ; $5cf5: $9b
    ld a, [c]                                     ; $5cf6: $f2
    ld d, $59                                     ; $5cf7: $16 $59
    ld [hl], a                                    ; $5cf9: $77
    dec b                                         ; $5cfa: $05
    db $ed                                        ; $5cfb: $ed
    jp nc, $fa58                                  ; $5cfc: $d2 $58 $fa

    xor [hl]                                      ; $5cff: $ae
    ld [hl], c                                    ; $5d00: $71
    db $ed                                        ; $5d01: $ed
    ld [hl], d                                    ; $5d02: $72
    ld h, e                                       ; $5d03: $63
    adc h                                         ; $5d04: $8c
    or h                                          ; $5d05: $b4
    inc c                                         ; $5d06: $0c
    ld l, b                                       ; $5d07: $68
    call z, Call_000_1883                         ; $5d08: $cc $83 $18
    di                                            ; $5d0b: $f3
    and b                                         ; $5d0c: $a0
    add sp, -$04                                  ; $5d0d: $e8 $fc
    jp c, Jump_02d_5b43                           ; $5d0f: $da $43 $5b

    push af                                       ; $5d12: $f5
    or l                                          ; $5d13: $b5
    ld a, a                                       ; $5d14: $7f
    scf                                           ; $5d15: $37
    sbc h                                         ; $5d16: $9c
    and e                                         ; $5d17: $a3
    cp $c8                                        ; $5d18: $fe $c8
    rra                                           ; $5d1a: $1f
    jr nc, jr_02d_5cd4                            ; $5d1b: $30 $b7

    cp h                                          ; $5d1d: $bc
    dec b                                         ; $5d1e: $05
    sbc l                                         ; $5d1f: $9d
    ld h, b                                       ; $5d20: $60
    ld d, $73                                     ; $5d21: $16 $73
    or c                                          ; $5d23: $b1
    call z, Call_02d_6df9                         ; $5d24: $cc $f9 $6d
    call c, $ac7e                                 ; $5d27: $dc $7e $ac
    ld l, b                                       ; $5d2a: $68
    ld l, h                                       ; $5d2b: $6c
    dec hl                                        ; $5d2c: $2b
    ld h, l                                       ; $5d2d: $65
    db $fc                                        ; $5d2e: $fc
    xor [hl]                                      ; $5d2f: $ae
    ld c, a                                       ; $5d30: $4f
    ld a, [hl]                                    ; $5d31: $7e
    ld d, e                                       ; $5d32: $53
    db $ed                                        ; $5d33: $ed
    and c                                         ; $5d34: $a1
    dec sp                                        ; $5d35: $3b
    xor [hl]                                      ; $5d36: $ae
    xor h                                         ; $5d37: $ac
    jp nc, Jump_02d_5542                          ; $5d38: $d2 $42 $55

    xor d                                         ; $5d3b: $aa
    ld l, b                                       ; $5d3c: $68
    add hl, de                                    ; $5d3d: $19
    cp b                                          ; $5d3e: $b8
    jp Jump_02d_58d7                              ; $5d3f: $c3 $d7 $58


    and $ac                                       ; $5d42: $e6 $ac
    rlca                                          ; $5d44: $07
    ld e, b                                       ; $5d45: $58
    adc d                                         ; $5d46: $8a
    sub $3c                                       ; $5d47: $d6 $3c
    daa                                           ; $5d49: $27
    ld b, e                                       ; $5d4a: $43
    ld e, d                                       ; $5d4b: $5a
    ld b, $54                                     ; $5d4c: $06 $54
    ld [hl-], a                                   ; $5d4e: $32
    and b                                         ; $5d4f: $a0
    ld e, l                                       ; $5d50: $5d
    db $ec                                        ; $5d51: $ec
    rla                                           ; $5d52: $17
    ld e, d                                       ; $5d53: $5a
    ld b, $70                                     ; $5d54: $06 $70
    dec [hl]                                      ; $5d56: $35
    ld [hl], e                                    ; $5d57: $73
    ld b, l                                       ; $5d58: $45
    xor b                                         ; $5d59: $a8
    ld c, d                                       ; $5d5a: $4a
    dec d                                         ; $5d5b: $15
    ld b, e                                       ; $5d5c: $43
    sbc d                                         ; $5d5d: $9a
    ld b, l                                       ; $5d5e: $45
    add sp, -$04                                  ; $5d5f: $e8 $fc
    ld a, h                                       ; $5d61: $7c
    sbc l                                         ; $5d62: $9d
    ld h, b                                       ; $5d63: $60
    ld e, h                                       ; $5d64: $5c
    adc h                                         ; $5d65: $8c
    dec de                                        ; $5d66: $1b
    add $1a                                       ; $5d67: $c6 $1a
    ld bc, $ebd5                                  ; $5d69: $01 $d5 $eb
    sbc d                                         ; $5d6c: $9a
    ld e, h                                       ; $5d6d: $5c
    xor e                                         ; $5d6e: $ab
    sbc c                                         ; $5d6f: $99
    adc e                                         ; $5d70: $8b
    ld e, $f8                                     ; $5d71: $1e $f8
    sub a                                         ; $5d73: $97
    rst $20                                       ; $5d74: $e7
    dec l                                         ; $5d75: $2d
    ld e, c                                       ; $5d76: $59
    ld [hl], a                                    ; $5d77: $77
    dec b                                         ; $5d78: $05
    dec l                                         ; $5d79: $2d
    inc bc                                        ; $5d7a: $03
    rrca                                          ; $5d7b: $0f
    sub e                                         ; $5d7c: $93
    add e                                         ; $5d7d: $83
    cp a                                          ; $5d7e: $bf
    ld a, e                                       ; $5d7f: $7b
    push af                                       ; $5d80: $f5
    ld l, b                                       ; $5d81: $68
    ld e, h                                       ; $5d82: $5c
    ld l, e                                       ; $5d83: $6b
    inc l                                         ; $5d84: $2c
    ld b, d                                       ; $5d85: $42
    rst $30                                       ; $5d86: $f7
    jp c, Jump_02d_5b43                           ; $5d87: $da $43 $5b

    push af                                       ; $5d8a: $f5
    or l                                          ; $5d8b: $b5
    db $eb                                        ; $5d8c: $eb
    db $fd                                        ; $5d8d: $fd
    ld l, a                                       ; $5d8e: $6f
    jr jr_02d_5dbc                                ; $5d8f: $18 $2b

    ld e, d                                       ; $5d91: $5a
    add l                                         ; $5d92: $85
    ld a, [$35c9]                                 ; $5d93: $fa $c9 $35
    ld d, $2b                                     ; $5d96: $16 $2b
    ld a, [de]                                    ; $5d98: $1a
    and c                                         ; $5d99: $a1
    ld a, [hl]                                    ; $5d9a: $7e
    sbc $02                                       ; $5d9b: $de $02
    daa                                           ; $5d9d: $27
    cp [hl]                                       ; $5d9e: $be
    sbc a                                         ; $5d9f: $9f
    inc e                                         ; $5da0: $1c
    cp a                                          ; $5da1: $bf
    push bc                                       ; $5da2: $c5
    dec hl                                        ; $5da3: $2b
    or a                                          ; $5da4: $b7

Jump_02d_5da5:
    cp h                                          ; $5da5: $bc
    dec b                                         ; $5da6: $05
    dec e                                         ; $5da7: $1d
    rra                                           ; $5da8: $1f
    cp b                                          ; $5da9: $b8
    dec de                                        ; $5daa: $1b
    add $1a                                       ; $5dab: $c6 $1a
    adc e                                         ; $5dad: $8b
    sub c                                         ; $5dae: $91
    ld d, [hl]                                    ; $5daf: $56
    inc [hl]                                      ; $5db0: $34
    adc [hl]                                      ; $5db1: $8e
    xor [hl]                                      ; $5db2: $ae
    cp h                                          ; $5db3: $bc
    dec b                                         ; $5db4: $05
    ld b, a                                       ; $5db5: $47
    ld b, l                                       ; $5db6: $45
    jr @+$6c                                      ; $5db7: $18 $6a

    db $fc                                        ; $5db9: $fc
    db $fd                                        ; $5dba: $fd
    ld l, e                                       ; $5dbb: $6b

jr_02d_5dbc:
    rst $30                                       ; $5dbc: $f7
    ld c, $f8                                     ; $5dbd: $0e $f8
    dec l                                         ; $5dbf: $2d
    ld d, l                                       ; $5dc0: $55
    ld [hl], h                                    ; $5dc1: $74
    rst $08                                       ; $5dc2: $cf
    ld [hl], a                                    ; $5dc3: $77
    ld hl, sp-$56                                 ; $5dc4: $f8 $aa
    rst $30                                       ; $5dc6: $f7
    ld h, a                                       ; $5dc7: $67
    inc c                                         ; $5dc8: $0c
    ld b, [hl]                                    ; $5dc9: $46
    ld [hl], d                                    ; $5dca: $72
    dec a                                         ; $5dcb: $3d
    jp c, Jump_000_18b8                           ; $5dcc: $da $b8 $18

Jump_02d_5dcf:
    scf                                           ; $5dcf: $37
    and h                                         ; $5dd0: $a4
    ld d, l                                       ; $5dd1: $55
    and $17                                       ; $5dd2: $e6 $17
    ld e, e                                       ; $5dd4: $5b
    sbc [hl]                                      ; $5dd5: $9e
    or a                                          ; $5dd6: $b7
    push af                                       ; $5dd7: $f5
    dec [hl]                                      ; $5dd8: $35
    cp $fe                                        ; $5dd9: $fe $fe
    rst $10                                       ; $5ddb: $d7
    ld a, [hl+]                                   ; $5ddc: $2a
    ld e, e                                       ; $5ddd: $5b

jr_02d_5dde:
    or c                                          ; $5dde: $b1
    rst $08                                       ; $5ddf: $cf
    ld [bc], a                                    ; $5de0: $02
    call Call_000_1760                            ; $5de1: $cd $60 $17
    db $db                                        ; $5de4: $db
    jr z, jr_02d_5e56                             ; $5de5: $28 $6f

    ld bc, $b127                                  ; $5de7: $01 $27 $b1
    sub e                                         ; $5dea: $93
    ld [hl], e                                    ; $5deb: $73
    and l                                         ; $5dec: $a5
    sbc $cf                                       ; $5ded: $de $cf
    ld a, [hl]                                    ; $5def: $7e
    ldh [$79], a                                  ; $5df0: $e0 $79
    dec bc                                        ; $5df2: $0b
    ld e, c                                       ; $5df3: $59
    sub $00                                       ; $5df4: $d6 $00
    db $ed                                        ; $5df6: $ed
    ld c, b                                       ; $5df7: $48
    or a                                          ; $5df8: $b7
    db $eb                                        ; $5df9: $eb
    ld a, l                                       ; $5dfa: $7d
    adc h                                         ; $5dfb: $8c
    jp c, $16c4                                   ; $5dfc: $da $c4 $16

    ld b, a                                       ; $5dff: $47
    and b                                         ; $5e00: $a0
    ld a, $a3                                     ; $5e01: $3e $a3
    rrca                                          ; $5e03: $0f
    ld e, d                                       ; $5e04: $5a
    sbc l                                         ; $5e05: $9d
    dec e                                         ; $5e06: $1d
    db $e3                                        ; $5e07: $e3
    dec [hl]                                      ; $5e08: $35
    jp hl                                         ; $5e09: $e9


    db $f4                                        ; $5e0a: $f4
    ei                                            ; $5e0b: $fb
    db $fc                                        ; $5e0c: $fc
    ld a, c                                       ; $5e0d: $79
    ld [hl], d                                    ; $5e0e: $72
    rst $00                                       ; $5e0f: $c7
    sbc d                                         ; $5e10: $9a
    ld a, e                                       ; $5e11: $7b
    ld c, l                                       ; $5e12: $4d
    cp [hl]                                       ; $5e13: $be
    and e                                         ; $5e14: $a3
    ld a, $b9                                     ; $5e15: $3e $b9
    ld a, [c]                                     ; $5e17: $f2
    ld d, $47                                     ; $5e18: $16 $47
    cp h                                          ; $5e1a: $bc

jr_02d_5e1b:
    sbc a                                         ; $5e1b: $9f
    db $fd                                        ; $5e1c: $fd
    ret nz                                        ; $5e1d: $c0

    di                                            ; $5e1e: $f3
    ld d, $47                                     ; $5e1f: $16 $47
    and b                                         ; $5e21: $a0
    ld a, $a3                                     ; $5e22: $3e $a3
    rrca                                          ; $5e24: $0f
    ld e, d                                       ; $5e25: $5a
    sbc l                                         ; $5e26: $9d
    dec d                                         ; $5e27: $15
    ld e, e                                       ; $5e28: $5b
    ld h, l                                       ; $5e29: $65
    jr jr_02d_5e1b                                ; $5e2a: $18 $ef

    rst $28                                       ; $5e2c: $ef
    jr jr_02d_5dde                                ; $5e2d: $18 $af

    ld c, c                                       ; $5e2f: $49
    and a                                         ; $5e30: $a7

Jump_02d_5e31:
    rst $18                                       ; $5e31: $df
    rst $20                                       ; $5e32: $e7
    rst $08                                       ; $5e33: $cf
    di                                            ; $5e34: $f3
    dec e                                         ; $5e35: $1d
    push af                                       ; $5e36: $f5
    ret                                           ; $5e37: $c9


Call_02d_5e38:
    sub l                                         ; $5e38: $95
    ld e, h                                       ; $5e39: $5c
    push af                                       ; $5e3a: $f5
    cp $1a                                        ; $5e3b: $fe $1a
    ld de, $de52                                  ; $5e3d: $11 $52 $de
    ld [bc], a                                    ; $5e40: $02
    daa                                           ; $5e41: $27
    sbc $1f                                       ; $5e42: $de $1f
    and h                                         ; $5e44: $a4
    ld a, [bc]                                    ; $5e45: $0a
    ld l, d                                       ; $5e46: $6a
    adc l                                         ; $5e47: $8d
    ld b, l                                       ; $5e48: $45
    ld l, l                                       ; $5e49: $6d
    ld [c], a                                     ; $5e4a: $e2
    halt                                          ; $5e4b: $76
    add d                                         ; $5e4c: $82
    ld d, [hl]                                    ; $5e4d: $56
    dec a                                         ; $5e4e: $3d
    ld a, [de]                                    ; $5e4f: $1a
    rst $10                                       ; $5e50: $d7
    ld a, [de]                                    ; $5e51: $1a
    adc e                                         ; $5e52: $8b
    ret nc                                        ; $5e53: $d0

    inc d                                         ; $5e54: $14
    or h                                          ; $5e55: $b4

jr_02d_5e56:
    ld a, e                                       ; $5e56: $7b
    sub [hl]                                      ; $5e57: $96
    dec [hl]                                      ; $5e58: $35
    ld b, b                                       ; $5e59: $40
    dec sp                                        ; $5e5a: $3b
    jp nc, Jump_02d_7aed                          ; $5e5b: $d2 $ed $7a

    rra                                           ; $5e5e: $1f
    db $e3                                        ; $5e5f: $e3
    sbc [hl]                                      ; $5e60: $9e
    or a                                          ; $5e61: $b7
    sbc l                                         ; $5e62: $9d
    ld h, b                                       ; $5e63: $60
    adc l                                         ; $5e64: $8d
    and b                                         ; $5e65: $a0
    di                                            ; $5e66: $f3
    db $f4                                        ; $5e67: $f4
    ret                                           ; $5e68: $c9


    push hl                                       ; $5e69: $e5
    ret                                           ; $5e6a: $c9


    ld d, l                                       ; $5e6b: $55
    rst $28                                       ; $5e6c: $ef
    xor a                                         ; $5e6d: $af
    ld de, $e521                                  ; $5e6e: $11 $21 $e5
    dec l                                         ; $5e71: $2d
    ld b, a                                       ; $5e72: $47
    and b                                         ; $5e73: $a0
    ld a, $a3                                     ; $5e74: $3e $a3
    rrca                                          ; $5e76: $0f
    ld e, d                                       ; $5e77: $5a
    sbc l                                         ; $5e78: $9d
    dec e                                         ; $5e79: $1d
    db $e3                                        ; $5e7a: $e3
    dec [hl]                                      ; $5e7b: $35
    jp hl                                         ; $5e7c: $e9


    db $f4                                        ; $5e7d: $f4
    ei                                            ; $5e7e: $fb
    db $fc                                        ; $5e7f: $fc
    ld a, c                                       ; $5e80: $79
    ld [hl], d                                    ; $5e81: $72
    rst $00                                       ; $5e82: $c7
    sbc d                                         ; $5e83: $9a
    ld a, e                                       ; $5e84: $7b
    ld c, l                                       ; $5e85: $4d
    ld l, l                                       ; $5e86: $6d
    ld [c], a                                     ; $5e87: $e2
    sub $09                                       ; $5e88: $d6 $09
    sub $08                                       ; $5e8a: $d6 $08
    ld a, [hl-]                                   ; $5e8c: $3a
    cpl                                           ; $5e8d: $2f
    ld l, l                                       ; $5e8e: $6d
    add sp, $1a                                   ; $5e8f: $e8 $1a
    db $fc                                        ; $5e91: $fc
    dec [hl]                                      ; $5e92: $35
    ld [hl+], a                                   ; $5e93: $22
    and h                                         ; $5e94: $a4
    pop de                                        ; $5e95: $d1
    inc bc                                        ; $5e96: $03
    rst $08                                       ; $5e97: $cf
    ld e, e                                       ; $5e98: $5b
    push af                                       ; $5e99: $f5
    or l                                          ; $5e9a: $b5
    nop                                           ; $5e9b: $00
    adc h                                         ; $5e9c: $8c
    ld e, l                                       ; $5e9d: $5d
    rst $28                                       ; $5e9e: $ef
    sub e                                         ; $5e9f: $93
    ld a, $8d                                     ; $5ea0: $3e $8d
    rst $18                                       ; $5ea2: $df
    adc l                                         ; $5ea3: $8d
    ld a, c                                       ; $5ea4: $79
    add sp, $4b                                   ; $5ea5: $e8 $4b
    db $e3                                        ; $5ea7: $e3
    rst $00                                       ; $5ea8: $c7
    dec [hl]                                      ; $5ea9: $35
    and $ab                                       ; $5eaa: $e6 $ab
    sbc c                                         ; $5eac: $99
    cp c                                          ; $5ead: $b9
    inc hl                                        ; $5eae: $23
    inc hl                                        ; $5eaf: $23
    rst $08                                       ; $5eb0: $cf
    ld e, e                                       ; $5eb1: $5b
    dec e                                         ; $5eb2: $1d
    inc c                                         ; $5eb3: $0c
    ld h, e                                       ; $5eb4: $63
    xor a                                         ; $5eb5: $af
    ei                                            ; $5eb6: $fb
    ld sp, $f516                                  ; $5eb7: $31 $16 $f5
    ld [$0f6a], sp                                ; $5eba: $08 $6a $0f
    db $dd                                        ; $5ebd: $dd
    or d                                          ; $5ebe: $b2
    xor $0a                                       ; $5ebf: $ee $0a
    ld e, d                                       ; $5ec1: $5a
    pop de                                        ; $5ec2: $d1
    ld hl, sp+$73                                 ; $5ec3: $f8 $73
    ld a, d                                       ; $5ec5: $7a
    add sp, -$1d                                  ; $5ec6: $e8 $e3
    adc d                                         ; $5ec8: $8a
    and l                                         ; $5ec9: $a5
    or c                                          ; $5eca: $b1
    inc d                                         ; $5ecb: $14
    push bc                                       ; $5ecc: $c5
    ld a, [de]                                    ; $5ecd: $1a
    di                                            ; $5ece: $f3
    sub l                                         ; $5ecf: $95
    ld a, [hl-]                                   ; $5ed0: $3a
    or l                                          ; $5ed1: $b5
    adc c                                         ; $5ed2: $89
    ld e, e                                       ; $5ed3: $5b
    sub $5d                                       ; $5ed4: $d6 $5d
    ld b, c                                       ; $5ed6: $41
    dec sp                                        ; $5ed7: $3b
    xor $c4                                       ; $5ed8: $ee $c4
    ld c, [hl]                                    ; $5eda: $4e
    ld b, a                                       ; $5edb: $47
    sbc l                                         ; $5edc: $9d
    ld [hl], d                                    ; $5edd: $72
    db $e4                                        ; $5ede: $e4
    ld [hl], c                                    ; $5edf: $71
    sbc l                                         ; $5ee0: $9d
    ld h, [hl]                                    ; $5ee1: $66
    ret nc                                        ; $5ee2: $d0

    ld a, c                                       ; $5ee3: $79
    inc l                                         ; $5ee4: $2c
    di                                            ; $5ee5: $f3
    ld e, $df                                     ; $5ee6: $1e $df
    adc a                                         ; $5ee8: $8f
    jp c, $16c4                                   ; $5ee9: $da $c4 $16

    daa                                           ; $5eec: $27
    sbc $1f                                       ; $5eed: $de $1f
    and h                                         ; $5eef: $a4
    ld a, [bc]                                    ; $5ef0: $0a
    ld l, d                                       ; $5ef1: $6a
    adc l                                         ; $5ef2: $8d
    push bc                                       ; $5ef3: $c5
    cp b                                          ; $5ef4: $b8
    and $62                                       ; $5ef5: $e6 $62
    sbc c                                         ; $5ef7: $99
    ld [hl], e                                    ; $5ef8: $73
    ld sp, hl                                     ; $5ef9: $f9
    adc d                                         ; $5efa: $8a
    ld b, [hl]                                    ; $5efb: $46
    sub [hl]                                      ; $5efc: $96
    ld a, [hl+]                                   ; $5efd: $2a
    ld [hl-], a                                   ; $5efe: $32
    jr @-$3f                                      ; $5eff: $18 $bf

    ld e, e                                       ; $5f01: $5b
    ld a, [hl-]                                   ; $5f02: $3a

Call_02d_5f03:
    adc l                                         ; $5f03: $8d
    rla                                           ; $5f04: $17

Jump_02d_5f05:
    db $db                                        ; $5f05: $db

Call_02d_5f06:
    ld e, b                                       ; $5f06: $58
    jp z, $9d5b                                   ; $5f07: $ca $5b $9d

    ld h, b                                       ; $5f0a: $60
    adc [hl]                                      ; $5f0b: $8e
    sub c                                         ; $5f0c: $91
    ld bc, $f8c5                                  ; $5f0d: $01 $c5 $f8
    db $dd                                        ; $5f10: $dd
    sbc b                                         ; $5f11: $98
    add a                                         ; $5f12: $87
    ld a, $ae                                     ; $5f13: $3e $ae
    sbc b                                         ; $5f15: $98
    cp $07                                        ; $5f16: $fe $07
    adc h                                         ; $5f18: $8c
    dec b                                         ; $5f19: $05
    adc [hl]                                      ; $5f1a: $8e
    ld h, b                                       ; $5f1b: $60
    add hl, de                                    ; $5f1c: $19
    ld b, b                                       ; $5f1d: $40
    ld [hl+], a                                   ; $5f1e: $22
    push bc                                       ; $5f1f: $c5
    adc [hl]                                      ; $5f20: $8e
    pop af                                        ; $5f21: $f1

Jump_02d_5f22:
    sbc d                                         ; $5f22: $9a
    ld [hl], h                                    ; $5f23: $74
    ld a, [$fe7d]                                 ; $5f24: $fa $7d $fe
    ld a, h                                       ; $5f27: $7c
    push bc                                       ; $5f28: $c5
    or $01                                        ; $5f29: $f6 $01
    add hl, hl                                    ; $5f2b: $29
    rst $08                                       ; $5f2c: $cf
    di                                            ; $5f2d: $f3
    dec b                                         ; $5f2e: $05
    adc [hl]                                      ; $5f2f: $8e
    ld h, b                                       ; $5f30: $60
    and h                                         ; $5f31: $a4
    and l                                         ; $5f32: $a5
    dec c                                         ; $5f33: $0d
    ld h, e                                       ; $5f34: $63
    adc l                                         ; $5f35: $8d
    db $eb                                        ; $5f36: $eb
    ld [hl], e                                    ; $5f37: $73
    ld d, a                                       ; $5f38: $57
    ld [hl], d                                    ; $5f39: $72
    add hl, hl                                    ; $5f3a: $29
    call nc, $f45f                                ; $5f3b: $d4 $5f $f4
    ldh [$79], a                                  ; $5f3e: $e0 $79
    dec bc                                        ; $5f40: $0b
    push af                                       ; $5f41: $f5
    rst $28                                       ; $5f42: $ef
    adc d                                         ; $5f43: $8a
    and [hl]                                      ; $5f44: $a6
    xor [hl]                                      ; $5f45: $ae
    ld l, e                                       ; $5f46: $6b
    add hl, de                                    ; $5f47: $19
    cp b                                          ; $5f48: $b8
    cp a                                          ; $5f49: $bf
    ccf                                           ; $5f4a: $3f
    ld d, a                                       ; $5f4b: $57
    push de                                       ; $5f4c: $d5
    inc a                                         ; $5f4d: $3c

jr_02d_5f4e:
    daa                                           ; $5f4e: $27
    cp c                                          ; $5f4f: $b9
    xor l                                         ; $5f50: $ad
    ret c                                         ; $5f51: $d8

    xor [hl]                                      ; $5f52: $ae
    rlca                                          ; $5f53: $07
    adc l                                         ; $5f54: $8d
    add $15                                       ; $5f55: $c6 $15
    dec sp                                        ; $5f57: $3b
    add hl, de                                    ; $5f58: $19
    adc h                                         ; $5f59: $8c
    ld e, h                                       ; $5f5a: $5c
    db $eb                                        ; $5f5b: $eb
    ld h, b                                       ; $5f5c: $60
    jr jr_02d_5f4e                                ; $5f5d: $18 $ef

    rst $00                                       ; $5f5f: $c7
    ld l, $11                                     ; $5f60: $2e $11
    ld l, c                                       ; $5f62: $69
    or $ff                                        ; $5f63: $f6 $ff
    ld c, l                                       ; $5f65: $4d
    ld sp, hl                                     ; $5f66: $f9
    halt                                          ; $5f67: $76
    xor d                                         ; $5f68: $aa
    cp h                                          ; $5f69: $bc
    pop de                                        ; $5f6a: $d1
    daa                                           ; $5f6b: $27
    ld [hl], e                                    ; $5f6c: $73
    cp [hl]                                       ; $5f6d: $be
    ld [hl], d                                    ; $5f6e: $72
    or a                                          ; $5f6f: $b7
    or c                                          ; $5f70: $b1
    adc h                                         ; $5f71: $8c
    push af                                       ; $5f72: $f5
    ld l, a                                       ; $5f73: $6f
    ld e, d                                       ; $5f74: $5a
    ld h, b                                       ; $5f75: $60
    rst $20                                       ; $5f76: $e7
    reti                                          ; $5f77: $d9


    rst $38                                       ; $5f78: $ff
    scf                                           ; $5f79: $37
    push bc                                       ; $5f7a: $c5
    xor [hl]                                      ; $5f7b: $ae
    rst $30                                       ; $5f7c: $f7
    db $e3                                        ; $5f7d: $e3
    halt                                          ; $5f7e: $76
    ld bc, $a321                                  ; $5f7f: $01 $21 $a3
    xor b                                         ; $5f82: $a8
    ld c, l                                       ; $5f83: $4d
    ld l, h                                       ; $5f84: $6c
    ld bc, $609d                                  ; $5f85: $01 $9d $60
    adc l                                         ; $5f88: $8d
    and b                                         ; $5f89: $a0
    di                                            ; $5f8a: $f3
    xor [hl]                                      ; $5f8b: $ae
    rst $30                                       ; $5f8c: $f7
    cp a                                          ; $5f8d: $bf
    ld [hl], l                                    ; $5f8e: $75
    ld c, e                                       ; $5f8f: $4b
    xor [hl]                                      ; $5f90: $ae
    dec d                                         ; $5f91: $15
    dec l                                         ; $5f92: $2d
    xor [hl]                                      ; $5f93: $ae
    rst $20                                       ; $5f94: $e7
    ld a, [de]                                    ; $5f95: $1a
    rst $10                                       ; $5f96: $d7
    adc d                                         ; $5f97: $8a
    xor l                                         ; $5f98: $ad
    ld [hl-], a                                   ; $5f99: $32
    adc h                                         ; $5f9a: $8c
    rst $30                                       ; $5f9b: $f7
    rst $00                                       ; $5f9c: $c7
    ld a, [c]                                     ; $5f9d: $f2
    ld l, $2f                                     ; $5f9e: $2e $2f
    call $f3a0                                    ; $5fa0: $cd $a0 $f3
    jp nz, $0552                                  ; $5fa3: $c2 $52 $05

    push hl                                       ; $5fa6: $e5
    ld sp, $3f6e                                  ; $5fa7: $31 $6e $3f
    ld d, [hl]                                    ; $5faa: $56
    inc [hl]                                      ; $5fab: $34
    or [hl]                                       ; $5fac: $b6
    sub l                                         ; $5fad: $95
    ld [hl-], a                                   ; $5fae: $32
    ld a, [hl]                                    ; $5faf: $7e
    rst $10                                       ; $5fb0: $d7
    daa                                           ; $5fb1: $27
    cp a                                          ; $5fb2: $bf
    add hl, hl                                    ; $5fb3: $29
    ld l, a                                       ; $5fb4: $6f
    ld bc, $95c7                                  ; $5fb5: $01 $c7 $95
    dec [hl]                                      ; $5fb8: $35
    and $d6                                       ; $5fb9: $e6 $d6
    dec l                                         ; $5fbb: $2d
    dec l                                         ; $5fbc: $2d
    inc bc                                        ; $5fbd: $03
    ld [hl], a                                    ; $5fbe: $77
    inc l                                         ; $5fbf: $2c
    xor e                                         ; $5fc0: $ab
    sbc c                                         ; $5fc1: $99
    dec c                                         ; $5fc2: $0d
    cp [hl]                                       ; $5fc3: $be
    sub [hl]                                      ; $5fc4: $96
    ld a, d                                       ; $5fc5: $7a
    db $dd                                        ; $5fc6: $dd
    sub d                                         ; $5fc7: $92
    add $ef                                       ; $5fc8: $c6 $ef
    cpl                                           ; $5fca: $2f
    sub l                                         ; $5fcb: $95
    dec l                                         ; $5fcc: $2d
    adc d                                         ; $5fcd: $8a
    ld e, l                                       ; $5fce: $5d
    rst $28                                       ; $5fcf: $ef
    and a                                         ; $5fd0: $a7
    ld sp, $7032                                  ; $5fd1: $31 $32 $70
    adc e                                         ; $5fd4: $8b
    ld [hl], c                                    ; $5fd5: $71
    ei                                            ; $5fd6: $fb
    or c                                          ; $5fd7: $b1
    ld h, d                                       ; $5fd8: $62
    dec bc                                        ; $5fd9: $0b
    dec hl                                        ; $5fda: $2b
    ld b, l                                       ; $5fdb: $45
    db $e3                                        ; $5fdc: $e3
    adc d                                         ; $5fdd: $8a
    dec [hl]                                      ; $5fde: $35
    cp $d2                                        ; $5fdf: $fe $d2
    adc d                                         ; $5fe1: $8a
    db $10                                        ; $5fe2: $10
    ld a, b                                       ; $5fe3: $78
    db $e4                                        ; $5fe4: $e4
    xor e                                         ; $5fe5: $ab
    xor a                                         ; $5fe6: $af
    dec [hl]                                      ; $5fe7: $35
    and $a8                                       ; $5fe8: $e6 $a8
    ld h, l                                       ; $5fea: $65
    ldh [$8e], a                                  ; $5feb: $e0 $8e
    ld h, l                                       ; $5fed: $65
    dec [hl]                                      ; $5fee: $35
    or e                                          ; $5fef: $b3
    ld [hl], c                                    ; $5ff0: $71
    push bc                                       ; $5ff1: $c5
    ret z                                         ; $5ff2: $c8

    pop hl                                        ; $5ff3: $e1
    adc d                                         ; $5ff4: $8a
    pop hl                                        ; $5ff5: $e1
    and a                                         ; $5ff6: $a7
    sbc e                                         ; $5ff7: $9b
    dec hl                                        ; $5ff8: $2b
    jp nz, $c53e                                  ; $5ff9: $c2 $3e $c5

    cp b                                          ; $5ffc: $b8
    cp b                                          ; $5ffd: $b8
    db $fd                                        ; $5ffe: $fd
    ret z                                         ; $5fff: $c8

    ld e, e                                       ; $6000: $5b
    daa                                           ; $6001: $27
    ld a, $72                                     ; $6002: $3e $72
    xor l                                         ; $6004: $ad
    ld [hl], c                                    ; $6005: $71
    ld d, l                                       ; $6006: $55
    ld e, b                                       ; $6007: $58
    rst $10                                       ; $6008: $d7
    or l                                          ; $6009: $b5
    and d                                         ; $600a: $a2
    ld e, $df                                     ; $600b: $1e $df
    sbc a                                         ; $600d: $9f
    add d                                         ; $600e: $82
    ld b, $7f                                     ; $600f: $06 $7f
    rst $10                                       ; $6011: $d7
    inc bc                                        ; $6012: $03
    adc a                                         ; $6013: $8f
    ld [hl], c                                    ; $6014: $71
    xor l                                         ; $6015: $ad
    ld a, c                                       ; $6016: $79
    add h                                         ; $6017: $84
    rst $28                                       ; $6018: $ef
    rst $00                                       ; $6019: $c7
    adc h                                         ; $601a: $8c
    pop de                                        ; $601b: $d1
    or l                                          ; $601c: $b5
    and d                                         ; $601d: $a2
    dec [hl]                                      ; $601e: $35
    cp $d2                                        ; $601f: $fe $d2
    adc d                                         ; $6021: $8a
    db $10                                        ; $6022: $10
    ld hl, sp+$4e                                 ; $6023: $f8 $4e
    ld a, c                                       ; $6025: $79
    inc l                                         ; $6026: $2c
    ld d, b                                       ; $6027: $50
    sbc [hl]                                      ; $6028: $9e
    rst $20                                       ; $6029: $e7
    inc de                                        ; $602a: $13
    xor l                                         ; $602b: $ad
    jr z, jr_02d_60a4                             ; $602c: $28 $76

    xor d                                         ; $602e: $aa
    cp h                                          ; $602f: $bc
    pop de                                        ; $6030: $d1
    daa                                           ; $6031: $27
    ld [hl], e                                    ; $6032: $73
    ld e, [hl]                                    ; $6033: $5e
    sbc e                                         ; $6034: $9b
    ret c                                         ; $6035: $d8

    ld [bc], a                                    ; $6036: $02
    ld b, a                                       ; $6037: $47
    dec sp                                        ; $6038: $3b
    jp c, Jump_000_18e7                           ; $6039: $da $e7 $18

    adc d                                         ; $603c: $8a
    push de                                       ; $603d: $d5
    add hl, de                                    ; $603e: $19
    and e                                         ; $603f: $a3
    rst $08                                       ; $6040: $cf
    ld e, l                                       ; $6041: $5d
    ld sp, hl                                     ; $6042: $f9
    sub $d1                                       ; $6043: $d6 $d1
    or c                                          ; $6045: $b1
    di                                            ; $6046: $f3
    call c, $de30                                 ; $6047: $dc $30 $de
    rst $38                                       ; $604a: $ff
    sub [hl]                                      ; $604b: $96
    ld a, [hl+]                                   ; $604c: $2a
    adc d                                         ; $604d: $8a
    ld a, h                                       ; $604e: $7c
    dec sp                                        ; $604f: $3b
    dec d                                         ; $6050: $15
    ld e, c                                       ; $6051: $59
    rst $38                                       ; $6052: $ff
    or [hl]                                       ; $6053: $b6
    add e                                         ; $6054: $83
    ld [hl], a                                    ; $6055: $77
    or h                                          ; $6056: $b4
    adc e                                         ; $6057: $8b
    ld c, a                                       ; $6058: $4f
    or h                                          ; $6059: $b4
    ld h, e                                       ; $605a: $63
    db $f4                                        ; $605b: $f4
    sbc h                                         ; $605c: $9c
    and l                                         ; $605d: $a5
    sbc l                                         ; $605e: $9d
    ld hl, $a28b                                  ; $605f: $21 $8b $a2
    sbc d                                         ; $6062: $9a
    cp h                                          ; $6063: $bc
    dec b                                         ; $6064: $05
    dec e                                         ; $6065: $1d
    ld a, [c]                                     ; $6066: $f2
    sbc l                                         ; $6067: $9d
    ld [bc], a                                    ; $6068: $02
    ld h, c                                       ; $6069: $61
    adc $57                                       ; $606a: $ce $57
    or h                                          ; $606c: $b4
    db $eb                                        ; $606d: $eb
    db $fd                                        ; $606e: $fd
    dec bc                                        ; $606f: $0b
    push hl                                       ; $6070: $e5
    inc l                                         ; $6071: $2c
    adc l                                         ; $6072: $8d
    ld a, c                                       ; $6073: $79
    db $10                                        ; $6074: $10
    ld [hl], e                                    ; $6075: $73
    ld l, e                                       ; $6076: $6b
    ld a, [de]                                    ; $6077: $1a
    sub l                                         ; $6078: $95
    and d                                         ; $6079: $a2
    ld h, l                                       ; $607a: $65
    ldh [$8e], a                                  ; $607b: $e0 $8e
    ld h, l                                       ; $607d: $65
    ld a, [bc]                                    ; $607e: $0a
    ld a, [de]                                    ; $607f: $1a
    ld a, [hl]                                    ; $6080: $7e
    sub d                                         ; $6081: $92
    ld [hl], e                                    ; $6082: $73
    and h                                         ; $6083: $a4
    ld [hl], c                                    ; $6084: $71
    dec l                                         ; $6085: $2d
    ld l, l                                       ; $6086: $6d
    add sp, $1a                                   ; $6087: $e8 $1a
    rst $10                                       ; $6089: $d7
    adc d                                         ; $608a: $8a
    xor l                                         ; $608b: $ad
    ld [hl-], a                                   ; $608c: $32
    ld d, $6a                                     ; $608d: $16 $6a
    call c, $ac7e                                 ; $608f: $dc $7e $ac
    jr z, jr_02d_610a                             ; $6092: $28 $76

    dec a                                         ; $6094: $3d
    jr z, jr_02d_60a6                             ; $6095: $28 $0f

    dec a                                         ; $6097: $3d
    and [hl]                                      ; $6098: $a6
    ld c, a                                       ; $6099: $4f
    xor [hl]                                      ; $609a: $ae
    dec d                                         ; $609b: $15
    push bc                                       ; $609c: $c5
    xor [hl]                                      ; $609d: $ae
    rlca                                          ; $609e: $07
    ld e, $f9                                     ; $609f: $1e $f9
    halt                                          ; $60a1: $76
    add d                                         ; $60a2: $82
    ld h, d                                       ; $60a3: $62

jr_02d_60a4:
    rst $10                                       ; $60a4: $d7
    ei                                            ; $60a5: $fb

jr_02d_60a6:
    db $e4                                        ; $60a6: $e4
    ld h, d                                       ; $60a7: $62
    db $f4                                        ; $60a8: $f4
    db $ed                                        ; $60a9: $ed
    ld d, e                                       ; $60aa: $53
    call z, Call_000_3231                         ; $60ab: $cc $31 $32
    and b                                         ; $60ae: $a0
    ld c, a                                       ; $60af: $4f
    db $e3                                        ; $60b0: $e3
    ld e, d                                       ; $60b1: $5a
    ld l, b                                       ; $60b2: $68

jr_02d_60b3:
    ld l, c                                       ; $60b3: $69
    ld b, e                                       ; $60b4: $43
    rst $10                                       ; $60b5: $d7
    db $f4                                        ; $60b6: $f4
    adc e                                         ; $60b7: $8b
    jr jr_02d_60b3                                ; $60b8: $18 $f9

    cp b                                          ; $60ba: $b8
    ld h, d                                       ; $60bb: $62
    call Call_02d_4fc3                            ; $60bc: $cd $c3 $4f
    sub c                                         ; $60bf: $91
    or a                                          ; $60c0: $b7
    daa                                           ; $60c1: $27
    ret c                                         ; $60c2: $d8

    jp nc, $bbcf                                  ; $60c3: $d2 $cf $bb

    and [hl]                                      ; $60c6: $a6
    add hl, hl                                    ; $60c7: $29
    ld l, b                                       ; $60c8: $68
    ld b, c                                       ; $60c9: $41
    adc [hl]                                      ; $60ca: $8e
    rla                                           ; $60cb: $17
    xor c                                         ; $60cc: $a9
    jp nc, $e1a7                                  ; $60cd: $d2 $a7 $e1

    daa                                           ; $60d0: $27
    add hl, sp                                    ; $60d1: $39
    ld b, a                                       ; $60d2: $47
    jp nc, Jump_000_3a0c                          ; $60d3: $d2 $0c $3a

    rst $28                                       ; $60d6: $ef
    ld d, [hl]                                    ; $60d7: $56
    ld [$8a32], a                                 ; $60d8: $ea $32 $8a
    cp h                                          ; $60db: $bc
    dec b                                         ; $60dc: $05
    daa                                           ; $60dd: $27
    ld l, b                                       ; $60de: $68
    rst $10                                       ; $60df: $d7
    add e                                         ; $60e0: $83
    ld a, [c]                                     ; $60e1: $f2
    ret nc                                        ; $60e2: $d0

    rst $00                                       ; $60e3: $c7
    ld h, c                                       ; $60e4: $61
    db $e4                                        ; $60e5: $e4
    rrca                                          ; $60e6: $0f
    inc bc                                        ; $60e7: $03
    db $eb                                        ; $60e8: $eb
    ld d, [hl]                                    ; $60e9: $56
    jp c, $8c8d                                   ; $60ea: $da $8d $8c

    and l                                         ; $60ed: $a5
    push de                                       ; $60ee: $d5
    add hl, de                                    ; $60ef: $19
    rst $30                                       ; $60f0: $f7
    add a                                         ; $60f1: $87
    and h                                         ; $60f2: $a4
    add hl, hl                                    ; $60f3: $29
    ld l, b                                       ; $60f4: $68
    ld hl, sp+$49                                 ; $60f5: $f8 $49
    adc $91                                       ; $60f7: $ce $91
    ld d, [hl]                                    ; $60f9: $56
    ld h, a                                       ; $60fa: $67
    sub a                                         ; $60fb: $97
    and b                                         ; $60fc: $a0
    di                                            ; $60fd: $f3
    ld [hl-], a                                   ; $60fe: $32
    add b                                         ; $60ff: $80
    ei                                            ; $6100: $fb
    ld a, [de]                                    ; $6101: $1a
    cp a                                          ; $6102: $bf
    dec b                                         ; $6103: $05
    cp d                                          ; $6104: $ba
    ld a, $ad                                     ; $6105: $3e $ad
    or c                                          ; $6107: $b1
    ld e, b                                       ; $6108: $58
    ld [hl], e                                    ; $6109: $73

jr_02d_610a:
    ld [hl], e                                    ; $610a: $73
    db $f4                                        ; $610b: $f4
    pop af                                        ; $610c: $f1
    dec sp                                        ; $610d: $3b
    ld a, h                                       ; $610e: $7c
    xor l                                         ; $610f: $ad
    ld a, d                                       ; $6110: $7a
    ld c, [hl]                                    ; $6111: $4e
    inc sp                                        ; $6112: $33
    ld a, [c]                                     ; $6113: $f2
    ld [hl], a                                    ; $6114: $77
    add hl, hl                                    ; $6115: $29
    rst $18                                       ; $6116: $df
    ld c, [hl]                                    ; $6117: $4e
    ld b, l                                       ; $6118: $45

jr_02d_6119:
    sub $bf                                       ; $6119: $d6 $bf
    db $ed                                        ; $611b: $ed
    ldh [rNR33], a                                ; $611c: $e0 $1d
    ld e, [hl]                                    ; $611e: $5e
    ld d, d                                       ; $611f: $52
    db $10                                        ; $6120: $10
    dec sp                                        ; $6121: $3b
    ld [de], a                                    ; $6122: $12
    xor d                                         ; $6123: $aa
    ld d, h                                       ; $6124: $54
    ld de, $ae7f                                  ; $6125: $11 $7f $ae
    cp h                                          ; $6128: $bc
    dec b                                         ; $6129: $05
    dec e                                         ; $612a: $1d
    ld e, $8d                                     ; $612b: $1e $8d
    ld l, e                                       ; $612d: $6b
    adc l                                         ; $612e: $8d
    ld b, l                                       ; $612f: $45
    ld l, b                                       ; $6130: $68
    rlca                                          ; $6131: $07
    rst $28                                       ; $6132: $ef
    sbc [hl]                                      ; $6133: $9e
    ld h, l                                       ; $6134: $65
    dec c                                         ; $6135: $0d
    ret nc                                        ; $6136: $d0

    adc [hl]                                      ; $6137: $8e
    ld [hl], h                                    ; $6138: $74
    cp e                                          ; $6139: $bb
    sbc $c7                                       ; $613a: $de $c7
    cp b                                          ; $613c: $b8
    rst $20                                       ; $613d: $e7
    dec l                                         ; $613e: $2d
    rst $00                                       ; $613f: $c7
    ld e, l                                       ; $6140: $5d
    cp b                                          ; $6141: $b8
    db $eb                                        ; $6142: $eb
    xor [hl]                                      ; $6143: $ae
    and b                                         ; $6144: $a0
    dec d                                         ; $6145: $15
    adc l                                         ; $6146: $8d
    ccf                                           ; $6147: $3f
    and a                                         ; $6148: $a7
    add a                                         ; $6149: $87
    ld a, $ae                                     ; $614a: $3e $ae
    jr jr_02d_6119                                ; $614c: $18 $cb

    cp h                                          ; $614e: $bc
    rst $00                                       ; $614f: $c7
    rst $30                                       ; $6150: $f7
    inc hl                                        ; $6151: $23
    rst $18                                       ; $6152: $df
    ld c, [hl]                                    ; $6153: $4e
    ld d, b                                       ; $6154: $50
    xor h                                         ; $6155: $ac
    ld [hl], c                                    ; $6156: $71
    ld d, l                                       ; $6157: $55
    ld e, b                                       ; $6158: $58
    rst $10                                       ; $6159: $d7
    dec [hl]                                      ; $615a: $35
    ei                                            ; $615b: $fb
    rst $38                                       ; $615c: $ff
    and [hl]                                      ; $615d: $a6
    pop af                                        ; $615e: $f1
    rst $20                                       ; $615f: $e7
    sub l                                         ; $6160: $95
    ld a, $cd                                     ; $6161: $3e $cd
    ld h, b                                       ; $6163: $60
    adc l                                         ; $6164: $8d
    xor e                                         ; $6165: $ab
    ld b, d                                       ; $6166: $42
    ld sp, hl                                     ; $6167: $f9
    ld l, [hl]                                    ; $6168: $6e
    ld h, h                                       ; $6169: $64
    inc l                                         ; $616a: $2c
    push hl                                       ; $616b: $e5
    dec l                                         ; $616c: $2d
    daa                                           ; $616d: $27
    call c, Call_000_33f5                         ; $616e: $dc $f5 $33
    ret nc                                        ; $6171: $d0

    dec [hl]                                      ; $6172: $35
    ld l, c                                       ; $6173: $69
    ld bc, $a2be                                  ; $6174: $01 $be $a2
    ld e, l                                       ; $6177: $5d
    ld d, [hl]                                    ; $6178: $56
    and l                                         ; $6179: $a5
    inc e                                         ; $617a: $1c
    ld e, a                                       ; $617b: $5f
    ld sp, $c696                                  ; $617c: $31 $96 $c6
    or l                                          ; $617f: $b5
    ld h, e                                       ; $6180: $63
    inc e                                         ; $6181: $1c
    ccf                                           ; $6182: $3f
    db $eb                                        ; $6183: $eb
    ld de, $42c5                                  ; $6184: $11 $c5 $42
    ld l, e                                       ; $6187: $6b
    ld e, $78                                     ; $6188: $1e $78
    nop                                           ; $618a: $00
    jp nc, Jump_000_1e0e                          ; $618b: $d2 $0e $1e

    ld d, a                                       ; $618e: $57
    call z, Call_000_1ab8                         ; $618f: $cc $b8 $1a
    ld d, d                                       ; $6192: $52
    adc h                                         ; $6193: $8c
    ld l, e                                       ; $6194: $6b
    push bc                                       ; $6195: $c5
    ld d, [hl]                                    ; $6196: $56
    add hl, de                                    ; $6197: $19
    dec bc                                        ; $6198: $0b
    or l                                          ; $6199: $b5
    rst $38                                       ; $619a: $ff
    ret nc                                        ; $619b: $d0

    or l                                          ; $619c: $b5
    ld a, b                                       ; $619d: $78
    sbc a                                         ; $619e: $9f
    sub [hl]                                      ; $619f: $96
    ld a, [hl]                                    ; $61a0: $7e
    ld c, [hl]                                    ; $61a1: $4e
    xor d                                         ; $61a2: $aa
    db $f4                                        ; $61a3: $f4
    ld l, c                                       ; $61a4: $69
    pop af                                        ; $61a5: $f1
    and b                                         ; $61a6: $a0
    jp hl                                         ; $61a7: $e9


    pop af                                        ; $61a8: $f1
    db $fd                                        ; $61a9: $fd
    ld a, a                                       ; $61aa: $7f
    adc e                                         ; $61ab: $8b
    ld a, h                                       ; $61ac: $7c
    dec sp                                        ; $61ad: $3b
    dec b                                         ; $61ae: $05
    push af                                       ; $61af: $f5
    rst $30                                       ; $61b0: $f7
    rst $28                                       ; $61b1: $ef
    or [hl]                                       ; $61b2: $b6
    dec de                                        ; $61b3: $1b
    db $dd                                        ; $61b4: $dd
    add $bc                                       ; $61b5: $c6 $bc
    ld [hl], d                                    ; $61b7: $72
    ld c, e                                       ; $61b8: $4b
    xor [hl]                                      ; $61b9: $ae
    ret c                                         ; $61ba: $d8

    ld l, $b6                                     ; $61bb: $2e $b6
    ld d, l                                       ; $61bd: $55
    add hl, hl                                    ; $61be: $29
    rst $10                                       ; $61bf: $d7
    jp nc, $49cf                                  ; $61c0: $d2 $cf $49

    ld c, e                                       ; $61c3: $4b
    cp e                                          ; $61c4: $bb
    ld e, l                                       ; $61c5: $5d
    inc b                                         ; $61c6: $04
    ld a, [hl]                                    ; $61c7: $7e
    db $d3                                        ; $61c8: $d3
    adc h                                         ; $61c9: $8c
    ld sp, $e9a4                                  ; $61ca: $31 $a4 $e9
    ld c, a                                       ; $61cd: $4f
    jp hl                                         ; $61ce: $e9


    or h                                          ; $61cf: $b4
    ld l, b                                       ; $61d0: $68
    scf                                           ; $61d1: $37
    cp d                                          ; $61d2: $ba
    adc l                                         ; $61d3: $8d
    ld b, c                                       ; $61d4: $41
    ld a, [hl]                                    ; $61d5: $7e
    db $d3                                        ; $61d6: $d3
    adc d                                         ; $61d7: $8a
    ld d, [hl]                                    ; $61d8: $56
    ld [hl], l                                    ; $61d9: $75
    ld e, l                                       ; $61da: $5d
    ld l, c                                       ; $61db: $69
    reti                                          ; $61dc: $d9


    rrca                                          ; $61dd: $0f
    inc a                                         ; $61de: $3c
    rst $18                                       ; $61df: $df
    xor $1d                                       ; $61e0: $ee $1d
    inc c                                         ; $61e2: $0c
    ld h, e                                       ; $61e3: $63
    rst $38                                       ; $61e4: $ff
    ld b, c                                       ; $61e5: $41
    db $ec                                        ; $61e6: $ec
    ld l, e                                       ; $61e7: $6b
    call z, $9883                                 ; $61e8: $cc $83 $98
    rst $18                                       ; $61eb: $df
    sbc b                                         ; $61ec: $98
    ld e, e                                       ; $61ed: $5b
    sub c                                         ; $61ee: $91
    cp a                                          ; $61ef: $bf
    rra                                           ; $61f0: $1f
    ld l, e                                       ; $61f1: $6b
    inc l                                         ; $61f2: $2c
    halt                                          ; $61f3: $76
    ld l, c                                       ; $61f4: $69
    add hl, de                                    ; $61f5: $19
    cp b                                          ; $61f6: $b8
    xor e                                         ; $61f7: $ab

jr_02d_61f8:
    inc d                                         ; $61f8: $14
    db $ed                                        ; $61f9: $ed
    ld a, d                                       ; $61fa: $7a
    sbc a                                         ; $61fb: $9f
    db $f4                                        ; $61fc: $f4
    dec c                                         ; $61fd: $0d
    add hl, hl                                    ; $61fe: $29
    add hl, sp                                    ; $61ff: $39
    pop de                                        ; $6200: $d1
    cp $83                                        ; $6201: $fe $83
    jr jr_02d_61f8                                ; $6203: $18 $f3

    jr nz, jr_02d_627d                            ; $6205: $20 $76

    cp l                                          ; $6207: $bd
    rra                                           ; $6208: $1f
    jp nz, $de52                                  ; $6209: $c2 $52 $de

    adc a                                         ; $620c: $8f
    ld sp, $a8c8                                  ; $620d: $31 $c8 $a8
    jp nc, $71a7                                  ; $6210: $d2 $a7 $71

    db $ed                                        ; $6213: $ed
    ld l, e                                       ; $6214: $6b
    adc l                                         ; $6215: $8d
    push bc                                       ; $6216: $c5
    sbc b                                         ; $6217: $98
    rlca                                          ; $6218: $07
    or c                                          ; $6219: $b1
    xor d                                         ; $621a: $aa
    db $eb                                        ; $621b: $eb
    ld [hl+], a                                   ; $621c: $22
    rra                                           ; $621d: $1f
    rst $10                                       ; $621e: $d7
    ld l, $11                                     ; $621f: $2e $11
    ld l, c                                       ; $6221: $69
    sub [hl]                                      ; $6222: $96
    ld c, [hl]                                    ; $6223: $4e
    dec de                                        ; $6224: $1b
    cp d                                          ; $6225: $ba
    sub d                                         ; $6226: $92
    rst $30                                       ; $6227: $f7
    reti                                          ; $6228: $d9


    ld hl, sp-$13                                 ; $6229: $f8 $ed
    ld a, [hl+]                                   ; $622b: $2a
    and $b7                                       ; $622c: $e6 $b7
    dec d                                         ; $622e: $15
    adc l                                         ; $622f: $8d
    push af                                       ; $6230: $f5
    ld d, d                                       ; $6231: $52
    ld a, [hl+]                                   ; $6232: $2a
    ld hl, sp-$29                                 ; $6233: $f8 $d7
    inc a                                         ; $6235: $3c
    daa                                           ; $6236: $27
    push de                                       ; $6237: $d5
    ld l, e                                       ; $6238: $6b
    call z, $d15f                                 ; $6239: $cc $5f $d1
    cp b                                          ; $623c: $b8
    halt                                          ; $623d: $76
    adc h                                         ; $623e: $8c
    db $e3                                        ; $623f: $e3
    ld h, a                                       ; $6240: $67
    dec a                                         ; $6241: $3d
    and d                                         ; $6242: $a2
    ret z                                         ; $6243: $c8

    ld e, e                                       ; $6244: $5b
    daa                                           ; $6245: $27
    db $fd                                        ; $6246: $fd
    and l                                         ; $6247: $a5
    push hl                                       ; $6248: $e5
    add [hl]                                      ; $6249: $86
    or h                                          ; $624a: $b4
    ld a, [bc]                                    ; $624b: $0a
    dec b                                         ; $624c: $05
    sbc l                                         ; $624d: $9d
    rst $00                                       ; $624e: $c7
    or l                                          ; $624f: $b5
    ret nc                                        ; $6250: $d0

    xor [hl]                                      ; $6251: $ae
    rlca                                          ; $6252: $07
    rla                                           ; $6253: $17
    ld e, e                                       ; $6254: $5b
    ld a, $ea                                     ; $6255: $3e $ea
    adc [hl]                                      ; $6257: $8e
    sub d                                         ; $6258: $92
    dec sp                                        ; $6259: $3b
    sub $dc                                       ; $625a: $d6 $dc
    ld l, e                                       ; $625c: $6b
    ld a, [c]                                     ; $625d: $f2
    db $ed                                        ; $625e: $ed
    ld c, b                                       ; $625f: $48
    ld d, l                                       ; $6260: $55
    add [hl]                                      ; $6261: $86
    ccf                                           ; $6262: $3f
    cp c                                          ; $6263: $b9
    ld c, e                                       ; $6264: $4b
    dec bc                                        ; $6265: $0b
    cp c                                          ; $6266: $b9
    dec c                                         ; $6267: $0d
    cp [hl]                                       ; $6268: $be
    and $c0                                       ; $6269: $e6 $c0
    or l                                          ; $626b: $b5
    db $ec                                        ; $626c: $ec
    rlca                                          ; $626d: $07
    cp $6f                                        ; $626e: $fe $6f
    jp z, $f55b                                   ; $6270: $ca $5b $f5

    or l                                          ; $6273: $b5
    nop                                           ; $6274: $00
    adc h                                         ; $6275: $8c
    sub c                                         ; $6276: $91
    cp a                                          ; $6277: $bf
    ld h, [hl]                                    ; $6278: $66
    sub a                                         ; $6279: $97
    adc e                                         ; $627a: $8b
    cp c                                          ; $627b: $b9
    xor l                                         ; $627c: $ad

jr_02d_627d:
    ld a, c                                       ; $627d: $79
    ldh [rOCPD], a                                ; $627e: $e0 $6b
    call z, Call_000_3c8b                         ; $6280: $cc $8b $3c
    ld l, a                                       ; $6283: $6f
    ld bc, $5c9d                                  ; $6284: $01 $9d $5c
    call z, $89f3                                 ; $6287: $cc $f3 $89

Call_02d_628a:
Jump_02d_628a:
    ld d, [hl]                                    ; $628a: $56
    dec a                                         ; $628b: $3d
    call c, Call_02d_63fb                         ; $628c: $dc $fb $63
    ld l, h                                       ; $628f: $6c
    and c                                         ; $6290: $a1
    ld e, l                                       ; $6291: $5d
    rrca                                          ; $6292: $0f
    ld l, $b6                                     ; $6293: $2e $b6
    inc a                                         ; $6295: $3c
    cp c                                          ; $6296: $b9
    add $62                                       ; $6297: $c6 $62
    adc h                                         ; $6299: $8c
    dec de                                        ; $629a: $1b
    xor [hl]                                      ; $629b: $ae
    sub e                                         ; $629c: $93
    adc e                                         ; $629d: $8b
    ld a, c                                       ; $629e: $79
    ld e, [hl]                                    ; $629f: $5e
    ld a, e                                       ; $62a0: $7b
    add sp, $3a                                   ; $62a1: $e8 $3a
    cp c                                          ; $62a3: $b9
    sbc b                                         ; $62a4: $98
    rst $20                                       ; $62a5: $e7
    ld a, c                                       ; $62a6: $79
    sbc [hl]                                      ; $62a7: $9e
    rst $10                                       ; $62a8: $d7
    ld e, $da                                     ; $62a9: $1e $da
    ld [bc], a                                    ; $62ab: $02
    ld b, a                                       ; $62ac: $47
    cp h                                          ; $62ad: $bc
    rst $38                                       ; $62ae: $ff
    or l                                          ; $62af: $b5
    rrca                                          ; $62b0: $0f
    ld c, b                                       ; $62b1: $48
    ret                                           ; $62b2: $c9


    dec e                                         ; $62b3: $1d
    ld l, e                                       ; $62b4: $6b
    xor $35                                       ; $62b5: $ee $35
    ret                                           ; $62b7: $c9


    ld e, l                                       ; $62b8: $5d
    ld [hl], a                                    ; $62b9: $77
    dec b                                         ; $62ba: $05
    dec c                                         ; $62bb: $0d
    cp $d8                                        ; $62bc: $fe $d8
    rst $28                                       ; $62be: $ef
    ld a, a                                       ; $62bf: $7f

jr_02d_62c0:
    add c                                         ; $62c0: $81
    adc a                                         ; $62c1: $8f
    rst $18                                       ; $62c2: $df
    cp e                                          ; $62c3: $bb
    ld h, $d7                                     ; $62c4: $26 $d7
    cp b                                          ; $62c6: $b8
    db $fd                                        ; $62c7: $fd
    ld e, b                                       ; $62c8: $58
    or c                                          ; $62c9: $b1
    ld d, l                                       ; $62ca: $55
    ld e, l                                       ; $62cb: $5d
    ld d, a                                       ; $62cc: $57
    ld e, d                                       ; $62cd: $5a
    ld h, l                                       ; $62ce: $65
    jr jr_02d_62c0                                ; $62cf: $18 $ef

    cpl                                           ; $62d1: $2f
    inc bc                                        ; $62d2: $03
    ld a, [de]                                    ; $62d3: $1a
    dec a                                         ; $62d4: $3d
    call z, $9d5b                                 ; $62d5: $cc $5b $9d
    db $fc                                        ; $62d8: $fc
    dec [hl]                                      ; $62d9: $35
    ld c, e                                       ; $62da: $4b
    dec de                                        ; $62db: $1b
    ld hl, $6e0b                                  ; $62dc: $21 $0b $6e
    ld l, e                                       ; $62df: $6b
    ld e, $f8                                     ; $62e0: $1e $f8
    ld a, [de]                                    ; $62e2: $1a
    di                                            ; $62e3: $f3
    ld [hl+], a                                   ; $62e4: $22
    rst $08                                       ; $62e5: $cf

Call_02d_62e6:
    or a                                          ; $62e6: $b7
    inc hl                                        ; $62e7: $23
    sbc $07                                       ; $62e8: $de $07
    and h                                         ; $62ea: $a4
    cp h                                          ; $62eb: $bc
    dec b                                         ; $62ec: $05
    ld b, a                                       ; $62ed: $47
    cp h                                          ; $62ee: $bc
    rst $38                                       ; $62ef: $ff
    or l                                          ; $62f0: $b5
    rrca                                          ; $62f1: $0f
    ld c, b                                       ; $62f2: $48
    ret                                           ; $62f3: $c9


    dec e                                         ; $62f4: $1d
    ld l, e                                       ; $62f5: $6b
    xor $35                                       ; $62f6: $ee $35

jr_02d_62f8:
    ld a, c                                       ; $62f8: $79
    dec bc                                        ; $62f9: $0b
    ld b, a                                       ; $62fa: $47
    sbc $9a                                       ; $62fb: $de $9a
    xor [hl]                                      ; $62fd: $ae
    cpl                                           ; $62fe: $2f
    or [hl]                                       ; $62ff: $b6
    ld [$c3d1], a                                 ; $6300: $ea $d1 $c3
    db $e4                                        ; $6303: $e4
    adc [hl]                                      ; $6304: $8e
    dec [hl]                                      ; $6305: $35
    rst $30                                       ; $6306: $f7
    sbc d                                         ; $6307: $9a
    ld a, h                                       ; $6308: $7c
    dec sp                                        ; $6309: $3b
    jp hl                                         ; $630a: $e9


    rst $08                                       ; $630b: $cf
    halt                                          ; $630c: $76

Call_02d_630d:
    dec a                                         ; $630d: $3d
    ldh a, [rNR23]                                ; $630e: $f0 $18
    rst $10                                       ; $6310: $d7
    sbc d                                         ; $6311: $9a
    ld b, a                                       ; $6312: $47
    ld hl, sp+$7e                                 ; $6313: $f8 $7e
    call nc, Call_02d_6e26                        ; $6315: $d4 $26 $6e
    and a                                         ; $6318: $a7
    inc a                                         ; $6319: $3c
    ld d, $68                                     ; $631a: $16 $68
    db $fc                                        ; $631c: $fc
    ld b, [hl]                                    ; $631d: $46
    ld a, [bc]                                    ; $631e: $0a
    jp nc, Jump_02d_7032                          ; $631f: $d2 $32 $70

    ld a, a                                       ; $6322: $7f
    ld a, a                                       ; $6323: $7f
    pop af                                        ; $6324: $f1
    sub b                                         ; $6325: $90
    and [hl]                                      ; $6326: $a6
    ccf                                           ; $6327: $3f
    rla                                           ; $6328: $17
    sbc c                                         ; $6329: $99
    di                                            ; $632a: $f3
    jp c, $16c4                                   ; $632b: $da $c4 $16

    and a                                         ; $632e: $a7
    set 7, l                                      ; $632f: $cb $fd
    ld bc, $7296                                  ; $6331: $01 $96 $72
    ld d, e                                       ; $6334: $53
    sbc $02                                       ; $6335: $de $02
    daa                                           ; $6337: $27
    ld [hl], l                                    ; $6338: $75
    ccf                                           ; $6339: $3f
    dec b                                         ; $633a: $05
    xor l                                         ; $633b: $ad
    ret c                                         ; $633c: $d8

    jp nz, $d14a                                  ; $633d: $c2 $4a $d1

    cp b                                          ; $6340: $b8
    sub $3c                                       ; $6341: $d6 $3c
    jp nz, $a3f7                                  ; $6343: $c2 $f7 $a3

    or $d0                                        ; $6346: $f6 $d0
    ld d, $87                                     ; $6348: $16 $87
    ld b, e                                       ; $634a: $43
    inc b                                         ; $634b: $04
    xor [hl]                                      ; $634c: $ae
    inc a                                         ; $634d: $3c
    db $fc                                        ; $634e: $fc
    res 0, b                                      ; $634f: $cb $80
    sub $bc                                       ; $6351: $d6 $bc
    ld [$154c], sp                                ; $6353: $08 $4c $15
    adc l                                         ; $6356: $8d
    ld e, $d0                                     ; $6357: $1e $d0
    db $f4                                        ; $6359: $f4
    rst $20                                       ; $635a: $e7
    ld a, [bc]                                    ; $635b: $0a
    or d                                          ; $635c: $b2
    ld c, a                                       ; $635d: $4f
    db $e3                                        ; $635e: $e3
    or $63                                        ; $635f: $f6 $63
    ld b, l                                       ; $6361: $45
    ld c, e                                       ; $6362: $4b
    ld [hl], l                                    ; $6363: $75
    ld c, c                                       ; $6364: $49
    ld e, b                                       ; $6365: $58
    jp hl                                         ; $6366: $e9


    ld d, e                                       ; $6367: $53
    cp [hl]                                       ; $6368: $be
    ld [hl], l                                    ; $6369: $75
    jr nc, jr_02d_62f8                            ; $636a: $30 $8c

    ld h, c                                       ; $636c: $61
    ld e, c                                       ; $636d: $59
    call $d56c                                    ; $636e: $cd $6c $d5
    xor e                                         ; $6371: $ab
    pop de                                        ; $6372: $d1
    rra                                           ; $6373: $1f
    cp a                                          ; $6374: $bf
    rst $10                                       ; $6375: $d7
    call z, $91dc                                 ; $6376: $cc $dc $91
    sub c                                         ; $6379: $91
    xor a                                         ; $637a: $af
    add hl, hl                                    ; $637b: $29
    db $10                                        ; $637c: $10
    ld h, e                                       ; $637d: $63
    sub b                                         ; $637e: $90
    or h                                          ; $637f: $b4
    ret nz                                        ; $6380: $c0

    ld de, $c5cc                                  ; $6381: $11 $cc $c5
    ld [hl-], a                                   ; $6384: $32
    rst $20                                       ; $6385: $e7
    adc d                                         ; $6386: $8a
    and l                                         ; $6387: $a5
    ld d, b                                       ; $6388: $50
    ccf                                           ; $6389: $3f
    ld l, a                                       ; $638a: $6f
    ld bc, $da47                                  ; $638b: $01 $47 $da
    adc a                                         ; $638e: $8f
    pop bc                                        ; $638f: $c1
    sbc a                                         ; $6390: $9f
    ld a, $f7                                     ; $6391: $3e $f7
    add a                                         ; $6393: $87
    or h                                          ; $6394: $b4
    add $5f                                       ; $6395: $c6 $5f
    ld a, [$9e7d]                                 ; $6397: $fa $7d $9e
    ld e, h                                       ; $639a: $5c
    cp h                                          ; $639b: $bc
    ld a, [hl+]                                   ; $639c: $2a
    push hl                                       ; $639d: $e5
    sbc d                                         ; $639e: $9a
    ld l, b                                       ; $639f: $68
    add c                                         ; $63a0: $81
    rra                                           ; $63a1: $1f
    add e                                         ; $63a2: $83
    ld e, h                                       ; $63a3: $5c
    ret                                           ; $63a4: $c9


    xor c                                         ; $63a5: $a9
    or e                                          ; $63a6: $b3
    ld e, l                                       ; $63a7: $5d
    and h                                         ; $63a8: $a4
    ld c, d                                       ; $63a9: $4a
    sbc a                                         ; $63aa: $9f
    halt                                          ; $63ab: $76
    cp l                                          ; $63ac: $bd
    xor d                                         ; $63ad: $aa
    jp nc, Jump_02d_794e                          ; $63ae: $d2 $4e $79

    inc l                                         ; $63b1: $2c
    ret nc                                        ; $63b2: $d0

    adc d                                         ; $63b3: $8a
    ld h, d                                       ; $63b4: $62
    add [hl]                                      ; $63b5: $86
    sub l                                         ; $63b6: $95
    ld a, [c]                                     ; $63b7: $f2
    ld d, $59                                     ; $63b8: $16 $59
    ld l, h                                       ; $63ba: $6c
    jr nz, @+$2f                                  ; $63bb: $20 $2d

    push hl                                       ; $63bd: $e5
    ld b, b                                       ; $63be: $40
    ld d, [hl]                                    ; $63bf: $56
    inc [hl]                                      ; $63c0: $34
    ld c, $bb                                     ; $63c1: $0e $bb
    ld e, $78                                     ; $63c3: $1e $78
    adc h                                         ; $63c5: $8c
    dec hl                                        ; $63c6: $2b
    sub $3c                                       ; $63c7: $d6 $3c
    jp nz, Jump_000_23f7                          ; $63c9: $c2 $f7 $23

    add hl, sp                                    ; $63cc: $39
    inc l                                         ; $63cd: $2c
    ld c, e                                       ; $63ce: $4b
    db $e3                                        ; $63cf: $e3
    ld b, a                                       ; $63d0: $47
    or a                                          ; $63d1: $b7
    add hl, de                                    ; $63d2: $19
    db $ec                                        ; $63d3: $ec
    or d                                          ; $63d4: $b2
    adc e                                         ; $63d5: $8b
    db $fd                                        ; $63d6: $fd
    jr z, jr_02d_6448                             ; $63d7: $28 $6f

    ld bc, $95c7                                  ; $63d9: $01 $c7 $95
    push de                                       ; $63dc: $d5
    call z, Call_02d_7fa6                         ; $63dd: $cc $a6 $7f
    dec a                                         ; $63e0: $3d
    rst $10                                       ; $63e1: $d7
    ld d, d                                       ; $63e2: $52
    ld [hl-], a                                   ; $63e3: $32
    cp b                                          ; $63e4: $b8
    ld e, $34                                     ; $63e5: $1e $34
    db $e3                                        ; $63e7: $e3
    jp c, Jump_02d_56c5                           ; $63e8: $da $c5 $56

    add l                                         ; $63eb: $85
    ld a, a                                       ; $63ec: $7f
    ld [hl], l                                    ; $63ed: $75
    sub [hl]                                      ; $63ee: $96
    ld [hl], $74                                  ; $63ef: $36 $74
    push hl                                       ; $63f1: $e5
    dec l                                         ; $63f2: $2d
    push af                                       ; $63f3: $f5
    rst $28                                       ; $63f4: $ef

jr_02d_63f5:
    add [hl]                                      ; $63f5: $86
    sub l                                         ; $63f6: $95
    call c, $9630                                 ; $63f7: $dc $30 $96
    ld b, d                                       ; $63fa: $42

Call_02d_63fb:
    db $fd                                        ; $63fb: $fd
    sub c                                         ; $63fc: $91
    ccf                                           ; $63fd: $3f
    ld h, b                                       ; $63fe: $60

jr_02d_63ff:
    db $e4                                        ; $63ff: $e4
    dec hl                                        ; $6400: $2b
    ld [hl], a                                    ; $6401: $77
    db $fc                                        ; $6402: $fc
    ld l, c                                       ; $6403: $69
    db $f4                                        ; $6404: $f4
    ld c, d                                       ; $6405: $4a
    adc [hl]                                      ; $6406: $8e
    ld c, d                                       ; $6407: $4a
    ld l, $fb                                     ; $6408: $2e $fb
    ld l, [hl]                                    ; $640a: $6e
    jr c, jr_02d_63ff                             ; $640b: $38 $f2

    rst $10                                       ; $640d: $d7
    xor h                                         ; $640e: $ac
    or d                                          ; $640f: $b2
    rst $08                                       ; $6410: $cf
    cp d                                          ; $6411: $ba
    adc l                                         ; $6412: $8d
    adc l                                         ; $6413: $8d
    ld a, [c]                                     ; $6414: $f2
    push bc                                       ; $6415: $c5
    ld b, e                                       ; $6416: $43
    rst $08                                       ; $6417: $cf
    ld e, e                                       ; $6418: $5b
    sbc l                                         ; $6419: $9d
    db $ec                                        ; $641a: $ec
    db $d3                                        ; $641b: $d3
    ld [hl-], a                                   ; $641c: $32
    and b                                         ; $641d: $a0
    ld de, $6bec                                  ; $641e: $11 $ec $6b
    push de                                       ; $6421: $d5
    ei                                            ; $6422: $fb
    and h                                         ; $6423: $a4
    ld e, b                                       ; $6424: $58
    ld h, e                                       ; $6425: $63
    ld sp, $32d1                                  ; $6426: $31 $d1 $32
    and b                                         ; $6429: $a0
    ld de, $6bec                                  ; $642a: $11 $ec $6b
    xor [hl]                                      ; $642d: $ae
    jr nz, jr_02d_63f5                            ; $642e: $20 $c5

    ld a, [de]                                    ; $6430: $1a
    adc e                                         ; $6431: $8b
    dec b                                         ; $6432: $05
    ld hl, sp-$66                                 ; $6433: $f8 $9a
    ld h, d                                       ; $6435: $62
    sub a                                         ; $6436: $97
    sub d                                         ; $6437: $92
    inc hl                                        ; $6438: $23
    sbc b                                         ; $6439: $98
    ld h, d                                       ; $643a: $62
    call c, $ac7e                                 ; $643b: $dc $7e $ac
    ret c                                         ; $643e: $d8

    ld d, d                                       ; $643f: $52
    rst $28                                       ; $6440: $ef
    ld a, a                                       ; $6441: $7f
    adc l                                         ; $6442: $8d
    and e                                         ; $6443: $a3
    db $eb                                        ; $6444: $eb
    ld [hl+], a                                   ; $6445: $22
    ld a, h                                       ; $6446: $7c
    ccf                                           ; $6447: $3f

jr_02d_6448:
    ld l, a                                       ; $6448: $6f
    ld bc, $1e1d                                  ; $6449: $01 $1d $1e
    adc $20                                       ; $644c: $ce $20
    ld [bc], a                                    ; $644e: $02
    sub a                                         ; $644f: $97
    xor l                                         ; $6450: $ad
    pop af                                        ; $6451: $f1
    add a                                         ; $6452: $87
    ld sp, $4773                                  ; $6453: $31 $73 $47
    ld b, [hl]                                    ; $6456: $46
    cp [hl]                                       ; $6457: $be
    ld a, [hl-]                                   ; $6458: $3a
    dec hl                                        ; $6459: $2b
    ld [hl], a                                    ; $645a: $77
    or [hl]                                       ; $645b: $b6
    ret nz                                        ; $645c: $c0

    ld d, l                                       ; $645d: $55
    sbc e                                         ; $645e: $9b
    ret c                                         ; $645f: $d8

    ld [bc], a                                    ; $6460: $02
    daa                                           ; $6461: $27
    ld l, b                                       ; $6462: $68
    add hl, hl                                    ; $6463: $29
    ld [hl], b                                    ; $6464: $70
    add hl, de                                    ; $6465: $19
    adc h                                         ; $6466: $8c
    ld l, e                                       ; $6467: $6b
    and a                                         ; $6468: $a7
    inc a                                         ; $6469: $3c
    ld d, $68                                     ; $646a: $16 $68
    ld a, [bc]                                    ; $646c: $0a
    ld a, [de]                                    ; $646d: $1a

Jump_02d_646e:
    or a                                          ; $646e: $b7
    rra                                           ; $646f: $1f
    dec hl                                        ; $6470: $2b
    jp c, Jump_000_1765                           ; $6471: $da $65 $17

    ei                                            ; $6474: $fb
    ld d, c                                       ; $6475: $51
    cp [hl]                                       ; $6476: $be
    sbc l                                         ; $6477: $9d
    ld l, d                                       ; $6478: $6a
    dec bc                                        ; $6479: $0b
    dec hl                                        ; $647a: $2b
    ld b, l                                       ; $647b: $45
    db $e3                                        ; $647c: $e3
    jp c, $2c55                                   ; $647d: $da $55 $2c

    ld b, d                                       ; $6480: $42
    db $e3                                        ; $6481: $e3
    ld h, d                                       ; $6482: $62
    call c, $d690                                 ; $6483: $dc $90 $d6
    dec [hl]                                      ; $6486: $35
    cp c                                          ; $6487: $b9
    ld d, [hl]                                    ; $6488: $56
    ld h, a                                       ; $6489: $67
    ld d, a                                       ; $648a: $57
    ld [hl], a                                    ; $648b: $77
    ld [hl], h                                    ; $648c: $74
    bit 3, e                                      ; $648d: $cb $5b
    and a                                         ; $648f: $a7
    ld l, d                                       ; $6490: $6a
    adc l                                         ; $6491: $8d
    sbc h                                         ; $6492: $9c
    cp e                                          ; $6493: $bb
    sub d                                         ; $6494: $92
    db $eb                                        ; $6495: $eb
    pop de                                        ; $6496: $d1
    halt                                          ; $6497: $76
    db $dd                                        ; $6498: $dd
    dec d                                         ; $6499: $15
    inc [hl]                                      ; $649a: $34
    xor d                                         ; $649b: $aa
    ld l, c                                       ; $649c: $69
    jr nc, jr_02d_64a2                            ; $649d: $30 $03

    xor d                                         ; $649f: $aa

jr_02d_64a0:
    db $f4                                        ; $64a0: $f4
    ld l, c                                       ; $64a1: $69

jr_02d_64a2:
    rst $00                                       ; $64a2: $c7
    ld a, b                                       ; $64a3: $78
    ld c, l                                       ; $64a4: $4d
    ld a, [hl-]                                   ; $64a5: $3a
    db $fd                                        ; $64a6: $fd
    ld a, $7f                                     ; $64a7: $3e $7f
    ld e, [hl]                                    ; $64a9: $5e
    sbc e                                         ; $64aa: $9b
    ret c                                         ; $64ab: $d8

    ld [bc], a                                    ; $64ac: $02
    sbc l                                         ; $64ad: $9d
    ld e, $d6                                     ; $64ae: $1e $d6
    ld h, $6e                                     ; $64b0: $26 $6e
    dec e                                         ; $64b2: $1d
    rra                                           ; $64b3: $1f
    ld a, b                                       ; $64b4: $78
    ld b, $1e                                     ; $64b5: $06 $1e
    xor $df                                       ; $64b7: $ee $df
    dec d                                         ; $64b9: $15
    push af                                       ; $64ba: $f5
    ld [$58d6], sp                                ; $64bb: $08 $d6 $58
    ld c, h                                       ; $64be: $4c
    ld a, a                                       ; $64bf: $7f
    ld d, a                                       ; $64c0: $57
    or c                                          ; $64c1: $b1
    ld [$1ed5], sp                                ; $64c2: $08 $d5 $1e
    jp c, $f502                                   ; $64c5: $da $02 $f5

    rst $28                                       ; $64c8: $ef
    adc d                                         ; $64c9: $8a
    jr nc, jr_02d_64a0                            ; $64ca: $30 $d4

    cp b                                          ; $64cc: $b8
    ld b, [hl]                                    ; $64cd: $46
    cp $80                                        ; $64ce: $fe $80
    sub c                                         ; $64d0: $91
    xor a                                         ; $64d1: $af
    ld l, b                                       ; $64d2: $68
    rst $10                                       ; $64d3: $d7
    inc bc                                        ; $64d4: $03
    adc a                                         ; $64d5: $8f
    ld [hl], c                                    ; $64d6: $71
    xor l                                         ; $64d7: $ad
    ld a, c                                       ; $64d8: $79
    add h                                         ; $64d9: $84
    rst $28                                       ; $64da: $ef
    ld b, a                                       ; $64db: $47
    sbc $02                                       ; $64dc: $de $02
    ld e, c                                       ; $64de: $59
    ld [hl], a                                    ; $64df: $77
    dec b                                         ; $64e0: $05
    adc l                                         ; $64e1: $8d
    db $db                                        ; $64e2: $db
    adc a                                         ; $64e3: $8f
    dec d                                         ; $64e4: $15
    db $ed                                        ; $64e5: $ed
    or d                                          ; $64e6: $b2
    adc e                                         ; $64e7: $8b
    db $fd                                        ; $64e8: $fd
    xor b                                         ; $64e9: $a8
    ld [hl], $71                                  ; $64ea: $36 $71
    db $eb                                        ; $64ec: $eb
    ret nc                                        ; $64ed: $d0

    ld [hl], l                                    ; $64ee: $75
    and l                                         ; $64ef: $a5
    jp hl                                         ; $64f0: $e9


    xor a                                         ; $64f1: $af
    ld [hl], c                                    ; $64f2: $71
    ld d, l                                       ; $64f3: $55
    ld e, b                                       ; $64f4: $58
    rst $10                                       ; $64f5: $d7
    dec [hl]                                      ; $64f6: $35
    ei                                            ; $64f7: $fb
    rst $38                                       ; $64f8: $ff
    and [hl]                                      ; $64f9: $a6
    cp l                                          ; $64fa: $bd
    ccf                                           ; $64fb: $3f
    ld l, $c6                                     ; $64fc: $2e $c6
    dec c                                         ; $64fe: $0d
    ld l, c                                       ; $64ff: $69

jr_02d_6500:
    ld b, l                                       ; $6500: $45
    dec bc                                        ; $6501: $0b
    ld h, e                                       ; $6502: $63
    ld e, $7a                                     ; $6503: $1e $7a

jr_02d_6505:
    ld l, l                                       ; $6505: $6d
    ld h, d                                       ; $6506: $62
    dec bc                                        ; $6507: $0b
    and a                                         ; $6508: $a7
    db $db                                        ; $6509: $db
    db $f4                                        ; $650a: $f4
    ld [hl], a                                    ; $650b: $77
    dec d                                         ; $650c: $15
    adc e                                         ; $650d: $8b
    ld d, b                                       ; $650e: $50
    ld [hl], d                                    ; $650f: $72
    dec e                                         ; $6510: $1d
    rra                                           ; $6511: $1f
    sub c                                         ; $6512: $91
    cp h                                          ; $6513: $bc
    ld [hl], $b1                                  ; $6514: $36 $b1
    dec b                                         ; $6516: $05
    add a                                         ; $6517: $87
    or e                                          ; $6518: $b3
    sub e                                         ; $6519: $93
    ld h, e                                       ; $651a: $63
    ld e, $5e                                     ; $651b: $1e $5e
    cp b                                          ; $651d: $b8
    ld h, e                                       ; $651e: $63
    call Call_02d_66bd                            ; $651f: $cd $bd $66
    dec e                                         ; $6522: $1d
    rra                                           ; $6523: $1f
    sub c                                         ; $6524: $91
    inc a                                         ; $6525: $3c
    rst $18                                       ; $6526: $df
    ld c, [hl]                                    ; $6527: $4e
    ld a, h                                       ; $6528: $7c
    db $e4                                        ; $6529: $e4
    jp c, $c07f                                   ; $652a: $da $7f $c0

    xor b                                         ; $652d: $a8
    inc d                                         ; $652e: $14
    push hl                                       ; $652f: $e5
    ld a, c                                       ; $6530: $79
    cp [hl]                                       ; $6531: $be
    db $eb                                        ; $6532: $eb
    ld d, [hl]                                    ; $6533: $56
    ld l, [hl]                                    ; $6534: $6e
    add hl, hl                                    ; $6535: $29
    ld b, a                                       ; $6536: $47
    cp d                                          ; $6537: $ba
    push hl                                       ; $6538: $e5
    db $db                                        ; $6539: $db
    pop hl                                        ; $653a: $e1
    ld de, $d1aa                                  ; $653b: $11 $aa $d1
    ld sp, hl                                     ; $653e: $f9
    push af                                       ; $653f: $f5
    sbc b                                         ; $6540: $98

jr_02d_6541:
    rlca                                          ; $6541: $07
    sub c                                         ; $6542: $91
    or a                                          ; $6543: $b7
    dec e                                         ; $6544: $1d
    rra                                           ; $6545: $1f
    sub c                                         ; $6546: $91
    inc a                                         ; $6547: $3c
    cp c                                          ; $6548: $b9
    rst $10                                       ; $6549: $d7
    db $fd                                        ; $654a: $fd
    ret nc                                        ; $654b: $d0

    ld d, c                                       ; $654c: $51
    rst $20                                       ; $654d: $e7
    rst $10                                       ; $654e: $d7
    ld h, e                                       ; $654f: $63
    ld e, $c4                                     ; $6550: $1e $c4
    ld [bc], a                                    ; $6552: $02
    sub a                                         ; $6553: $97
    xor l                                         ; $6554: $ad
    ld sp, $620f                                  ; $6555: $31 $0f $62
    ld e, h                                       ; $6558: $5c
    sub l                                         ; $6559: $95
    ld a, l                                       ; $655a: $7d
    ld l, [hl]                                    ; $655b: $6e
    jr jr_02d_6541                                ; $655c: $18 $e3

    ld e, d                                       ; $655e: $5a
    and l                                         ; $655f: $a5
    cp c                                          ; $6560: $b9
    dec [hl]                                      ; $6561: $35
    call $9273                                    ; $6562: $cd $73 $92
    rrca                                          ; $6565: $0f
    cp $52                                        ; $6566: $fe $52
    or a                                          ; $6568: $b7
    di                                            ; $6569: $f3
    sbc a                                         ; $656a: $9f
    add hl, sp                                    ; $656b: $39
    xor a                                         ; $656c: $af
    dec a                                         ; $656d: $3d
    or h                                          ; $656e: $b4
    dec b                                         ; $656f: $05
    push af                                       ; $6570: $f5
    or l                                          ; $6571: $b5
    jr nc, jr_02d_6500                            ; $6572: $30 $8c

    db $e4                                        ; $6574: $e4
    or d                                          ; $6575: $b2
    or l                                          ; $6576: $b5
    jr nc, jr_02d_6505                            ; $6577: $30 $8c

    jp c, $16c4                                   ; $6579: $da $c4 $16

    push af                                       ; $657c: $f5
    or l                                          ; $657d: $b5
    xor a                                         ; $657e: $af
    add l                                         ; $657f: $85
    ld h, c                                       ; $6580: $61
    xor h                                         ; $6581: $ac
    or c                                          ; $6582: $b1
    ld c, b                                       ; $6583: $48
    xor [hl]                                      ; $6584: $ae
    jp $81fb                                      ; $6585: $c3 $fb $81


    ld [bc], a                                    ; $6588: $02
    rst $08                                       ; $6589: $cf
    or a                                          ; $658a: $b7
    ld c, $86                                     ; $658b: $0e $86
    ld sp, $41e6                                  ; $658d: $31 $e6 $41
    adc h                                         ; $6590: $8c
    adc e                                         ; $6591: $8b
    ld [hl], c                                    ; $6592: $71
    call nc, Call_02d_6bf9                        ; $6593: $d4 $f9 $6b
    inc b                                         ; $6596: $04
    ld d, h                                       ; $6597: $54
    xor a                                         ; $6598: $af
    ld l, e                                       ; $6599: $6b
    ld [hl], d                                    ; $659a: $72
    xor l                                         ; $659b: $ad
    ld l, b                                       ; $659c: $68
    ld e, h                                       ; $659d: $5c
    sub l                                         ; $659e: $95
    ld a, l                                       ; $659f: $7d
    ld l, $5f                                     ; $65a0: $2e $5f
    sbc l                                         ; $65a2: $9d
    dec e                                         ; $65a3: $1d
    dec hl                                        ; $65a4: $2b
    xor a                                         ; $65a5: $af
    ldh a, [$7d]                                  ; $65a6: $f0 $7d
    dec h                                         ; $65a8: $25
    sub a                                         ; $65a9: $97
    xor l                                         ; $65aa: $ad
    ld e, l                                       ; $65ab: $5d
    cp $30                                        ; $65ac: $fe $30
    sub [hl]                                      ; $65ae: $96
    add c                                         ; $65af: $81
    cp e                                          ; $65b0: $bb
    ld c, d                                       ; $65b1: $4a
    pop de                                        ; $65b2: $d1
    adc d                                         ; $65b3: $8a
    ld d, $86                                     ; $65b4: $16 $86
    sub h                                         ; $65b6: $94
    or a                                          ; $65b7: $b7
    ld e, c                                       ; $65b8: $59
    ld e, d                                       ; $65b9: $5a
    ret z                                         ; $65ba: $c8

    ld l, l                                       ; $65bb: $6d
    ldh a, [$d7]                                  ; $65bc: $f0 $d7
    inc a                                         ; $65be: $3c
    db $fc                                        ; $65bf: $fc
    inc [hl]                                      ; $65c0: $34
    xor [hl]                                      ; $65c1: $ae
    ld d, l                                       ; $65c2: $55
    rrca                                          ; $65c3: $0f
    ld a, a                                       ; $65c4: $7f
    xor h                                         ; $65c5: $ac
    adc $8e                                       ; $65c6: $ce $8e
    pop af                                        ; $65c8: $f1
    sbc d                                         ; $65c9: $9a
    ld [hl], h                                    ; $65ca: $74
    ld a, [$fe7d]                                 ; $65cb: $fa $7d $fe
    inc a                                         ; $65ce: $3c
    cp c                                          ; $65cf: $b9
    adc [hl]                                      ; $65d0: $8e
    adc a                                         ; $65d1: $8f
    ld c, b                                       ; $65d2: $48
    sbc [hl]                                      ; $65d3: $9e
    or a                                          ; $65d4: $b7

jr_02d_65d5:
    daa                                           ; $65d5: $27
    ld bc, $a296                                  ; $65d6: $01 $96 $a2
    db $e4                                        ; $65d9: $e4
    ld e, $60                                     ; $65da: $1e $60
    add hl, hl                                    ; $65dc: $29
    ld c, d                                       ; $65dd: $4a
    xor $01                                       ; $65de: $ee $01
    sub [hl]                                      ; $65e0: $96
    and d                                         ; $65e1: $a2
    jp c, $16c4                                   ; $65e2: $da $c4 $16

    and a                                         ; $65e5: $a7
    ccf                                           ; $65e6: $3f
    ld [hl], d                                    ; $65e7: $72
    call Call_02d_4c2a                            ; $65e8: $cd $2a $4c
    xor [hl]                                      ; $65eb: $ae
    ld b, e                                       ; $65ec: $43
    cp [hl]                                       ; $65ed: $be
    inc de                                        ; $65ee: $13
    sbc $e7                                       ; $65ef: $de $e7
    sub b                                         ; $65f1: $90
    ld [hl-], a                                   ; $65f2: $32
    ld e, d                                       ; $65f3: $5a
    xor b                                         ; $65f4: $a8
    ld c, d                                       ; $65f5: $4a
    dec d                                         ; $65f6: $15
    dec l                                         ; $65f7: $2d
    xor $5d                                       ; $65f8: $ee $5d
    sub e                                         ; $65fa: $93
    ld l, e                                       ; $65fb: $6b
    ld l, c                                       ; $65fc: $69
    ld b, e                                       ; $65fd: $43

jr_02d_65fe:
    ld e, d                                       ; $65fe: $5a
    ld h, l                                       ; $65ff: $65
    dec h                                         ; $6600: $25
    rst $18                                       ; $6601: $df
    ld c, [hl]                                    ; $6602: $4e
    ld a, a                                       ; $6603: $7f
    db $10                                        ; $6604: $10
    ld [hl], e                                    ; $6605: $73
    adc e                                         ; $6606: $8b
    ld d, b                                       ; $6607: $50
    sub l                                         ; $6608: $95
    ld a, [hl+]                                   ; $6609: $2a
    ld [hl], d                                    ; $660a: $72
    sbc l                                         ; $660b: $9d
    cp a                                          ; $660c: $bf
    and d                                         ; $660d: $a2
    jr jr_02d_668e                                ; $660e: $18 $7e

    sub [hl]                                      ; $6610: $96
    rst $18                                       ; $6611: $df
    jr c, jr_02d_65fe                             ; $6612: $38 $ea

    ld d, e                                       ; $6614: $53
    db $ec                                        ; $6615: $ec
    rst $18                                       ; $6616: $df
    ld l, $45                                     ; $6617: $2e $45
    jr jr_02d_65d5                                ; $6619: $18 $ba

    ld h, d                                       ; $661b: $62
    ld [hl], l                                    ; $661c: $75
    ld b, $5f                                     ; $661d: $06 $5f
    ld l, e                                       ; $661f: $6b
    ld e, $e1                                     ; $6620: $1e $e1
    ei                                            ; $6622: $fb
    db $e3                                        ; $6623: $e3
    ld a, [de]                                    ; $6624: $1a
    dec bc                                        ; $6625: $0b
    ld l, [hl]                                    ; $6626: $6e
    adc [hl]                                      ; $6627: $8e
    pop af                                        ; $6628: $f1
    ld a, [hl]                                    ; $6629: $7e
    ld [hl], d                                    ; $662a: $72
    dec e                                         ; $662b: $1d
    rra                                           ; $662c: $1f
    sub c                                         ; $662d: $91
    inc a                                         ; $662e: $3c
    ld l, a                                       ; $662f: $6f
    ld bc, $0c1d                                  ; $6630: $01 $1d $0c
    inc hl                                        ; $6633: $23

jr_02d_6634:
    rst $08                                       ; $6634: $cf
    di                                            ; $6635: $f3
    ld d, $c7                                     ; $6636: $16 $c7
    sub l                                         ; $6638: $95
    and l                                         ; $6639: $a5
    dec c                                         ; $663a: $0d
    ld l, b                                       ; $663b: $68
    ld a, l                                       ; $663c: $7d
    xor a                                         ; $663d: $af
    ld a, c                                       ; $663e: $79
    ld c, [hl]                                    ; $663f: $4e
    ld hl, sp+$7e                                 ; $6640: $f8 $7e
    adc h                                         ; $6642: $8c
    rst $18                                       ; $6643: $df
    ld l, e                                       ; $6644: $6b
    inc b                                         ; $6645: $04
    sbc l                                         ; $6646: $9d
    rst $00                                       ; $6647: $c7
    or l                                          ; $6648: $b5
    cp b                                          ; $6649: $b8
    call z, Call_02d_752d                         ; $664a: $cc $2d $75
    ld d, e                                       ; $664d: $53
    ld [hl], d                                    ; $664e: $72
    ld a, l                                       ; $664f: $7d
    xor l                                         ; $6650: $ad
    ld a, c                                       ; $6651: $79
    ld c, [hl]                                    ; $6652: $4e
    ld hl, sp-$02                                 ; $6653: $f8 $fe
    cp b                                          ; $6655: $b8
    halt                                          ; $6656: $76
    ld sp, hl                                     ; $6657: $f9
    cp e                                          ; $6658: $bb
    ret c                                         ; $6659: $d8

    and d                                         ; $665a: $a2
    jr jr_02d_6634                                ; $665b: $18 $d7

    ld b, d                                       ; $665d: $42
    sbc $e8                                       ; $665e: $de $e8
    db $d3                                        ; $6660: $d3
    ld b, h                                       ; $6661: $44
    db $eb                                        ; $6662: $eb
    ld l, e                                       ; $6663: $6b
    call $c273                                    ; $6664: $cd $73 $c2
    rst $30                                       ; $6667: $f7
    rst $00                                       ; $6668: $c7
    or l                                          ; $6669: $b5
    ld b, [hl]                                    ; $666a: $46
    ld b, $e3                                     ; $666b: $06 $e3
    rst $30                                       ; $666d: $f7
    rst $10                                       ; $666e: $d7
    or b                                          ; $666f: $b0
    sub c                                         ; $6670: $91
    and e                                         ; $6671: $a3
    ld a, [hl]                                    ; $6672: $7e
    cp [hl]                                       ; $6673: $be
    sbc l                                         ; $6674: $9d
    db $f4                                        ; $6675: $f4
    ld d, a                                       ; $6676: $57
    inc d                                         ; $6677: $14
    inc hl                                        ; $6678: $23
    ld a, a                                       ; $6679: $7f
    ret nz                                        ; $667a: $c0

    ld l, b                                       ; $667b: $68
    ld [hl], l                                    ; $667c: $75
    ld d, [hl]                                    ; $667d: $56
    xor $f8                                       ; $667e: $ee $f8
    jp hl                                         ; $6680: $e9


    and $28                                       ; $6681: $e6 $28
    ldh a, [$3d]                                  ; $6683: $f0 $3d
    ld e, b                                       ; $6685: $58
    sbc l                                         ; $6686: $9d
    sub l                                         ; $6687: $95
    cp e                                          ; $6688: $bb
    ld a, [hl-]                                   ; $6689: $3a
    db $d3                                        ; $668a: $d3
    call $e051                                    ; $668b: $cd $51 $e0

jr_02d_668e:
    db $e3                                        ; $668e: $e3
    ld e, d                                       ; $668f: $5a

Call_02d_6690:
    rst $00                                       ; $6690: $c7
    rlca                                          ; $6691: $07
    cp h                                          ; $6692: $bc
    sbc b                                         ; $6693: $98
    di                                            ; $6694: $f3
    ld a, h                                       ; $6695: $7c
    dec sp                                        ; $6696: $3b
    db $fd                                        ; $6697: $fd
    ld b, c                                       ; $6698: $41
    inc l                                         ; $6699: $2c
    dec l                                         ; $669a: $2d
    ld b, a                                       ; $669b: $47
    sbc l                                         ; $669c: $9d
    cp a                                          ; $669d: $bf
    inc d                                         ; $669e: $14
    ld [$6b8f], a                                 ; $669f: $ea $8f $6b
    ld e, h                                       ; $66a2: $5c
    sub l                                         ; $66a3: $95
    ld a, l                                       ; $66a4: $7d
    ld l, $df                                     ; $66a5: $2e $df
    push af                                       ; $66a7: $f5
    ld a, [hl]                                    ; $66a8: $7e

jr_02d_66a9:
    ld [$eacb], sp                                ; $66a9: $08 $cb $ea
    db $ec                                        ; $66ac: $ec
    ld e, b                                       ; $66ad: $58
    ld h, e                                       ; $66ae: $63
    add hl, sp                                    ; $66af: $39
    ld a, [c]                                     ; $66b0: $f2
    db $e4                                        ; $66b1: $e4
    adc d                                         ; $66b2: $8a
    add $32                                       ; $66b3: $c6 $32
    rst $20                                       ; $66b5: $e7
    xor d                                         ; $66b6: $aa
    ld [hl], a                                    ; $66b7: $77
    or c                                          ; $66b8: $b1
    dec l                                         ; $66b9: $2d
    ld b, d                                       ; $66ba: $42
    ret                                           ; $66bb: $c9


    dec [hl]                                      ; $66bc: $35

Call_02d_66bd:
    rrca                                          ; $66bd: $0f
    ld a, h                                       ; $66be: $7c
    rst $08                                       ; $66bf: $cf
    ld d, c                                       ; $66c0: $51
    sbc a                                         ; $66c1: $9f
    db $e4                                        ; $66c2: $e4
    ld h, e                                       ; $66c3: $63
    ld e, [hl]                                    ; $66c4: $5e
    call z, $b175                                 ; $66c5: $cc $75 $b1
    push hl                                       ; $66c8: $e5
    rla                                           ; $66c9: $17
    ld e, e                                       ; $66ca: $5b
    sub c                                         ; $66cb: $91
    rst $28                                       ; $66cc: $ef
    jr z, jr_02d_66a9                             ; $66cd: $28 $da

    rst $10                                       ; $66cf: $d7
    adc d                                         ; $66d0: $8a
    ld d, l                                       ; $66d1: $55
    add hl, hl                                    ; $66d2: $29
    db $fc                                        ; $66d3: $fc
    ld a, [hl-]                                   ; $66d4: $3a
    ld a, a                                       ; $66d5: $7f
    adc l                                         ; $66d6: $8d
    ld b, l                                       ; $66d7: $45
    cp [hl]                                       ; $66d8: $be
    push de                                       ; $66d9: $d5
    cp a                                          ; $66da: $bf
    db $eb                                        ; $66db: $eb
    sub a                                         ; $66dc: $97
    cp d                                          ; $66dd: $ba
    adc h                                         ; $66de: $8c
    call c, Call_02d_5c70                         ; $66df: $dc $70 $5c
    or c                                          ; $66e2: $b1
    and $e1                                       ; $66e3: $e6 $e1
    and a                                         ; $66e5: $a7
    sbc b                                         ; $66e6: $98
    ld b, c                                       ; $66e7: $41
    rst $20                                       ; $66e8: $e7
    sub c                                         ; $66e9: $91
    ld e, e                                       ; $66ea: $5b
    or a                                          ; $66eb: $b7
    rst $18                                       ; $66ec: $df
    sbc h                                         ; $66ed: $9c
    ld b, a                                       ; $66ee: $47
    sbc $02                                       ; $66ef: $de $02
    ld b, a                                       ; $66f1: $47
    sbc $9a                                       ; $66f2: $de $9a
    xor [hl]                                      ; $66f4: $ae
    cpl                                           ; $66f5: $2f
    or [hl]                                       ; $66f6: $b6
    ld [$c3d1], a                                 ; $66f7: $ea $d1 $c3
    db $e4                                        ; $66fa: $e4
    adc [hl]                                      ; $66fb: $8e
    dec [hl]                                      ; $66fc: $35
    rst $30                                       ; $66fd: $f7
    sbc d                                         ; $66fe: $9a
    inc a                                         ; $66ff: $3c
    rst $08                                       ; $6700: $cf
    ld e, e                                       ; $6701: $5b
    ld e, c                                       ; $6702: $59
    or [hl]                                       ; $6703: $b6
    or h                                          ; $6704: $b4
    ld hl, $718d                                  ; $6705: $21 $8d $71
    jp $9f4a                                      ; $6708: $c3 $4a $9f


    ld d, [hl]                                    ; $670b: $56
    ld e, c                                       ; $670c: $59
    xor c                                         ; $670d: $a9
    ld c, l                                       ; $670e: $4d
    ld l, h                                       ; $670f: $6c
    ld bc, $da59                                  ; $6710: $01 $59 $da
    cp a                                          ; $6713: $bf
    dec hl                                        ; $6714: $2b
    ld l, b                                       ; $6715: $68
    adc l                                         ; $6716: $8d
    push bc                                       ; $6717: $c5
    ldh a, [$c2]                                  ; $6718: $f0 $c2
    ld h, l                                       ; $671a: $65
    ld b, b                                       ; $671b: $40
    ld h, e                                       ; $671c: $63
    ld e, $c4                                     ; $671d: $1e $c4
    ret z                                         ; $671f: $c8

    rra                                           ; $6720: $1f
    jr nc, jr_02d_6795                            ; $6721: $30 $72

    sbc l                                         ; $6723: $9d
    cp a                                          ; $6724: $bf
    ld c, e                                       ; $6725: $4b
    res 0, b                                      ; $6726: $cb $80
    add $3c                                       ; $6728: $c6 $3c
    adc b                                         ; $672a: $88
    ld e, l                                       ; $672b: $5d
    ld l, h                                       ; $672c: $6c
    ld sp, hl                                     ; $672d: $f9
    push bc                                       ; $672e: $c5
    sub $f9                                       ; $672f: $d6 $f9
    ret                                           ; $6731: $c9


    ld [hl], l                                    ; $6732: $75
    ret z                                         ; $6733: $c8

    rst $10                                       ; $6734: $d7
    pop af                                        ; $6735: $f1
    ld de, $f3c9                                  ; $6736: $11 $c9 $f3
    ld d, $59                                     ; $6739: $16 $59
    ld [hl+], a                                   ; $673b: $22
    jp nc, Jump_02d_4ac2                          ; $673c: $d2 $c2 $4a

    pop de                                        ; $673f: $d1
    inc d                                         ; $6740: $14
    or h                                          ; $6741: $b4
    ld d, e                                       ; $6742: $53
    adc [hl]                                      ; $6743: $8e
    ld a, [hl-]                                   ; $6744: $3a
    push af                                       ; $6745: $f5
    xor b                                         ; $6746: $a8
    ld d, e                                       ; $6747: $53
    ld c, [hl]                                    ; $6748: $4e
    ccf                                           ; $6749: $3f
    ld [$19a8], a                                 ; $674a: $ea $a8 $19
    ld [hl], h                                    ; $674d: $74
    sbc $ad                                       ; $674e: $de $ad
    call nc, Call_000_1465                        ; $6750: $d4 $65 $14
    inc sp                                        ; $6753: $33
    add $fe                                       ; $6754: $c6 $fe
    ld [hl], l                                    ; $6756: $75
    adc e                                         ; $6757: $8b
    db $e4                                        ; $6758: $e4
    ld a, [hl-]                                   ; $6759: $3a
    ld a, $22                                     ; $675a: $3e $22
    ld a, c                                       ; $675c: $79
    sbc $02                                       ; $675d: $de $02
    daa                                           ; $675f: $27
    jp Jump_02d_415d                              ; $6760: $c3 $5d $41


    push af                                       ; $6763: $f5
    ld l, $2d                                     ; $6764: $2e $2d
    inc bc                                        ; $6766: $03
    ld a, [de]                                    ; $6767: $1a
    pop bc                                        ; $6768: $c1
    jp nc, Jump_000_3186                          ; $6769: $d2 $86 $31

    db $fd                                        ; $676c: $fd
    ld a, d                                       ; $676d: $7a
    ld e, h                                       ; $676e: $5c
    db $ec                                        ; $676f: $ec
    rst $20                                       ; $6770: $e7
    ld sp, $91ae                                  ; $6771: $31 $ae $91
    db $ed                                        ; $6774: $ed
    ld a, [hl+]                                   ; $6775: $2a
    ld d, $a1                                     ; $6776: $16 $a1
    db $e4                                        ; $6778: $e4
    adc [hl]                                      ; $6779: $8e
    dec [hl]                                      ; $677a: $35
    rst $30                                       ; $677b: $f7
    sbc d                                         ; $677c: $9a
    jp c, $b743                                   ; $677d: $da $43 $b7

    ld a, [$005a]                                 ; $6780: $fa $5a $00
    add $1a                                       ; $6783: $c6 $1a
    cp a                                          ; $6785: $bf
    and l                                         ; $6786: $a5
    ld b, l                                       ; $6787: $45
    ret                                           ; $6788: $c9


    ld h, l                                       ; $6789: $65
    ld l, e                                       ; $678a: $6b
    db $fc                                        ; $678b: $fc
    ld h, c                                       ; $678c: $61
    xor h                                         ; $678d: $ac
    ld l, b                                       ; $678e: $68
    ld h, c                                       ; $678f: $61
    call z, $cf43                                 ; $6790: $cc $43 $cf
    ld e, e                                       ; $6793: $5b
    daa                                           ; $6794: $27

jr_02d_6795:
    adc d                                         ; $6795: $8a
    pop bc                                        ; $6796: $c1
    ld d, d                                       ; $6797: $52
    inc [hl]                                      ; $6798: $34
    sbc e                                         ; $6799: $9b
    ld h, b                                       ; $679a: $60
    ldh a, [$67]                                  ; $679b: $f0 $67
    rst $10                                       ; $679d: $d7
    add l                                         ; $679e: $85
    ld e, h                                       ; $679f: $5c
    sbc a                                         ; $67a0: $9f
    ld h, $da                                     ; $67a1: $26 $da
    add hl, hl                                    ; $67a3: $29
    adc a                                         ; $67a4: $8f
    dec b                                         ; $67a5: $05
    ld e, d                                       ; $67a6: $5a
    ld [hl], l                                    ; $67a7: $75
    or a                                          ; $67a8: $b7
    ld [hl], c                                    ; $67a9: $71
    ld d, l                                       ; $67aa: $55
    or $f9                                        ; $67ab: $f6 $f9
    ld l, l                                       ; $67ad: $6d
    ld e, h                                       ; $67ae: $5c
    inc hl                                        ; $67af: $23
    ld a, a                                       ; $67b0: $7f
    ret nz                                        ; $67b1: $c0

    ret z                                         ; $67b2: $c8

    ld d, a                                       ; $67b3: $57
    inc d                                         ; $67b4: $14
    jp $f2cf                                      ; $67b5: $c3 $cf $f2


    dec de                                        ; $67b8: $1b
    ld b, a                                       ; $67b9: $47
    ld a, l                                       ; $67ba: $7d
    adc d                                         ; $67bb: $8a
    ld [hl], c                                    ; $67bc: $71
    xor l                                         ; $67bd: $ad
    ret c                                         ; $67be: $d8

    sbc d                                         ; $67bf: $9a
    ld b, a                                       ; $67c0: $47
    ld hl, sp-$02                                 ; $67c1: $f8 $fe
    sbc d                                         ; $67c3: $9a
    rlca                                          ; $67c4: $07
    cp [hl]                                       ; $67c5: $be
    and d                                         ; $67c6: $a2
    push bc                                       ; $67c7: $c5
    ld b, e                                       ; $67c8: $43
    sub $97                                       ; $67c9: $d6 $97
    rst $20                                       ; $67cb: $e7
    dec l                                         ; $67cc: $2d

jr_02d_67cd:
    and a                                         ; $67cd: $a7
    db $db                                        ; $67ce: $db
    ld a, [de]                                    ; $67cf: $1a
    di                                            ; $67d0: $f3
    ld [hl+], a                                   ; $67d1: $22
    ld e, a                                       ; $67d2: $5f
    sbc l                                         ; $67d3: $9d
    dec e                                         ; $67d4: $1d
    ld l, e                                       ; $67d5: $6b
    inc l                                         ; $67d6: $2c
    ld b, a                                       ; $67d7: $47
    sbc [hl]                                      ; $67d8: $9e
    rst $28                                       ; $67d9: $ef
    cp b                                          ; $67da: $b8
    or d                                          ; $67db: $b2
    db $eb                                        ; $67dc: $eb
    db $fd                                        ; $67dd: $fd
    ld l, a                                       ; $67de: $6f
    db $dd                                        ; $67df: $dd
    jp nc, $b62e                                  ; $67e0: $d2 $2e $b6

    ld h, l                                       ; $67e3: $65
    ld b, b                                       ; $67e4: $40
    ld [hl], e                                    ; $67e5: $73
    ld e, l                                       ; $67e6: $5d
    rrca                                          ; $67e7: $0f
    rst $38                                       ; $67e8: $ff
    cp b                                          ; $67e9: $b8
    sub $f1                                       ; $67ea: $d6 $f1
    ld bc, $e62f                                  ; $67ec: $01 $2f $e6
    ld a, h                                       ; $67ef: $7c
    and d                                         ; $67f0: $a2
    add hl, sp                                    ; $67f1: $39
    ld [$6b8f], a                                 ; $67f2: $ea $8f $6b
    sub a                                         ; $67f5: $97
    sub [hl]                                      ; $67f6: $96
    ld bc, $dc5c                                  ; $67f7: $01 $5c $dc
    ld l, e                                       ; $67fa: $6b
    sub $58                                       ; $67fb: $d6 $58
    add h                                         ; $67fd: $84
    or $b5                                        ; $67fe: $f6 $b5
    ld [bc], a                                    ; $6800: $02
    cp b                                          ; $6801: $b8
    db $db                                        ; $6802: $db
    push bc                                       ; $6803: $c5
    or [hl]                                       ; $6804: $b6
    and [hl]                                      ; $6805: $a6
    ld d, c                                       ; $6806: $51
    sbc $02                                       ; $6807: $de $02
    daa                                           ; $6809: $27
    jp Jump_02d_415d                              ; $680a: $c3 $5d $41


    push af                                       ; $680d: $f5
    ld l, $2d                                     ; $680e: $2e $2d
    inc bc                                        ; $6810: $03
    jr c, jr_02d_67cd                             ; $6811: $38 $ba

    ld e, e                                       ; $6813: $5b
    ld d, l                                       ; $6814: $55
    rst $30                                       ; $6815: $f7
    ld l, e                                       ; $6816: $6b
    ld a, b                                       ; $6817: $78
    pop hl                                        ; $6818: $e1
    ld a, [de]                                    ; $6819: $1a
    ld a, l                                       ; $681a: $7d
    ld l, [hl]                                    ; $681b: $6e
    sbc a                                         ; $681c: $9f
    ld d, [hl]                                    ; $681d: $56
    inc d                                         ; $681e: $14
    ld h, e                                       ; $681f: $63
    dec bc                                        ; $6820: $0b
    ld e, h                                       ; $6821: $5c
    ld sp, $5dae                                  ; $6822: $31 $ae $5d
    rrca                                          ; $6825: $0f
    inc a                                         ; $6826: $3c
    sub d                                         ; $6827: $92
    dec sp                                        ; $6828: $3b
    sub $dc                                       ; $6829: $d6 $dc
    ld l, e                                       ; $682b: $6b
    ld l, d                                       ; $682c: $6a
    rrca                                          ; $682d: $0f
    ld l, l                                       ; $682e: $6d
    ld bc, $6827                                  ; $682f: $01 $27 $68
    adc l                                         ; $6832: $8d
    cp a                                          ; $6833: $bf
    or h                                          ; $6834: $b4
    ld [hl+], a                                   ; $6835: $22
    inc b                                         ; $6836: $04
    cp [hl]                                       ; $6837: $be
    ld d, e                                       ; $6838: $53
    ld e, $0b                                     ; $6839: $1e $0b
    or h                                          ; $683b: $b4
    ld [$e36e], a                                 ; $683c: $ea $6e $e3
    xor d                                         ; $683f: $aa
    db $ec                                        ; $6840: $ec
    di                                            ; $6841: $f3
    db $db                                        ; $6842: $db
    cp b                                          ; $6843: $b8
    and $b7                                       ; $6844: $e6 $b7
    dec bc                                        ; $6846: $0b
    sbc d                                         ; $6847: $9a
    sbc e                                         ; $6848: $9b
    set 0, a                                      ; $6849: $cb $c7
    dec d                                         ; $684b: $15
    jp $f2cf                                      ; $684c: $c3 $cf $f2


    dec de                                        ; $684f: $1b
    ld b, a                                       ; $6850: $47
    ld a, l                                       ; $6851: $7d
    adc d                                         ; $6852: $8a
    dec [hl]                                      ; $6853: $35
    rrca                                          ; $6854: $0f
    ld a, h                                       ; $6855: $7c
    ld b, l                                       ; $6856: $45
    or c                                          ; $6857: $b1
    and $11                                       ; $6858: $e6 $11
    cp [hl]                                       ; $685a: $be
    rra                                           ; $685b: $1f
    dec sp                                        ; $685c: $3b
    ld a, b                                       ; $685d: $78
    ld e, h                                       ; $685e: $5c
    or c                                          ; $685f: $b1
    ld a, [de]                                    ; $6860: $1a
    ld b, c                                       ; $6861: $41
    rst $20                                       ; $6862: $e7
    ld [hl], c                                    ; $6863: $71
    dec l                                         ; $6864: $2d
    ld l, $73                                     ; $6865: $2e $73
    ld c, e                                       ; $6867: $4b
    db $dd                                        ; $6868: $dd
    sub h                                         ; $6869: $94
    inc e                                         ; $686a: $1c
    rst $10                                       ; $686b: $d7
    adc d                                         ; $686c: $8a
    xor l                                         ; $686d: $ad
    sub c                                         ; $686e: $91
    pop bc                                        ; $686f: $c1
    ld hl, sp-$03                                 ; $6870: $f8 $fd
    dec [hl]                                      ; $6872: $35
    ld l, h                                       ; $6873: $6c
    db $e4                                        ; $6874: $e4
    xor b                                         ; $6875: $a8
    ccf                                           ; $6876: $3f
    pop de                                        ; $6877: $d1
    cp b                                          ; $6878: $b8
    ld h, d                                       ; $6879: $62
    sub a                                         ; $687a: $97
    cp a                                          ; $687b: $bf
    adc e                                         ; $687c: $8b
    dec l                                         ; $687d: $2d
    adc d                                         ; $687e: $8a
    ld [hl], c                                    ; $687f: $71
    dec l                                         ; $6880: $2d
    db $e4                                        ; $6881: $e4
    adc l                                         ; $6882: $8d
    ld a, $e5                                     ; $6883: $3e $e5
    dec l                                         ; $6885: $2d
    sbc l                                         ; $6886: $9d
    ld h, b                                       ; $6887: $60
    adc l                                         ; $6888: $8d
    and b                                         ; $6889: $a0
    di                                            ; $688a: $f3
    ld a, [de]                                    ; $688b: $1a
    di                                            ; $688c: $f3
    db $f4                                        ; $688d: $f4
    jp $f918                                      ; $688e: $c3 $18 $f9


    inc bc                                        ; $6891: $03
    ld b, [hl]                                    ; $6892: $46
    ld a, $ae                                     ; $6893: $3e $ae
    ld e, b                                       ; $6895: $58
    adc l                                         ; $6896: $8d
    and b                                         ; $6897: $a0
    di                                            ; $6898: $f3
    cp b                                          ; $6899: $b8
    ld d, $97                                     ; $689a: $16 $97
    cp c                                          ; $689c: $b9
    and l                                         ; $689d: $a5
    ld l, [hl]                                    ; $689e: $6e
    ld a, [de]                                    ; $689f: $1a
    or a                                          ; $68a0: $b7
    rra                                           ; $68a1: $1f
    dec hl                                        ; $68a2: $2b
    ld e, d                                       ; $68a3: $5a
    ld h, e                                       ; $68a4: $63
    ld a, [hl]                                    ; $68a5: $7e
    adc l                                         ; $68a6: $8d
    ld l, e                                       ; $68a7: $6b
    push hl                                       ; $68a8: $e5
    ld a, [hl]                                    ; $68a9: $7e
    cp e                                          ; $68aa: $bb
    ld e, [hl]                                    ; $68ab: $5e
    ld d, c                                       ; $68ac: $51
    cp [hl]                                       ; $68ad: $be
    sub e                                         ; $68ae: $93
    pop bc                                        ; $68af: $c1
    ld a, $ad                                     ; $68b0: $3e $ad
    adc $8a                                       ; $68b2: $ce $8a
    xor l                                         ; $68b4: $ad
    sub c                                         ; $68b5: $91
    pop bc                                        ; $68b6: $c1
    ld hl, sp-$03                                 ; $68b7: $f8 $fd
    dec [hl]                                      ; $68b9: $35
    ld l, h                                       ; $68ba: $6c
    db $e4                                        ; $68bb: $e4
    xor b                                         ; $68bc: $a8
    sbc a                                         ; $68bd: $9f
    ld e, h                                       ; $68be: $5c
    adc a                                         ; $68bf: $8f
    or [hl]                                       ; $68c0: $b6
    xor a                                         ; $68c1: $af
    ld d, l                                       ; $68c2: $55
    rst $30                                       ; $68c3: $f7
    dec de                                        ; $68c4: $1b
    cp l                                          ; $68c5: $bd
    rst $38                                       ; $68c6: $ff
    push hl                                       ; $68c7: $e5
    add [hl]                                      ; $68c8: $86
    or h                                          ; $68c9: $b4
    add $62                                       ; $68ca: $c6 $62
    add hl, de                                    ; $68cc: $19
    ret nc                                        ; $68cd: $d0

    ld c, [hl]                                    ; $68ce: $4e
    ld a, c                                       ; $68cf: $79
    inc l                                         ; $68d0: $2c
    ret nc                                        ; $68d1: $d0

    db $f4                                        ; $68d2: $f4
    ld h, a                                       ; $68d3: $67
    ld c, b                                       ; $68d4: $48
    db $e3                                        ; $68d5: $e3
    or $63                                        ; $68d6: $f6 $63
    pop af                                        ; $68d8: $f1
    cp $52                                        ; $68d9: $fe $52
    ldh [$32], a                                  ; $68db: $e0 $32
    ld c, b                                       ; $68dd: $48
    ld c, $cb                                     ; $68de: $0e $cb
    adc h                                         ; $68e0: $8c
    ccf                                           ; $68e1: $3f
    rst $10                                       ; $68e2: $d7
    add sp, $01                                   ; $68e3: $e8 $01
    db $ed                                        ; $68e5: $ed
    jp nc, $8032                                  ; $68e6: $d2 $32 $80

    and e                                         ; $68e9: $a3
    rlca                                          ; $68ea: $07
    rla                                           ; $68eb: $17
    ld e, e                                       ; $68ec: $5b
    inc sp                                        ; $68ed: $33
    add sp, $3c                                   ; $68ee: $e8 $3c
    ld d, a                                       ; $68f0: $57
    ld b, e                                       ; $68f1: $43
    ld e, b                                       ; $68f2: $58
    inc d                                         ; $68f3: $14
    ld a, c                                       ; $68f4: $79
    dec bc                                        ; $68f5: $0b
    rst $00                                       ; $68f6: $c7
    sub l                                         ; $68f7: $95
    ld a, l                                       ; $68f8: $7d
    dec l                                         ; $68f9: $2d
    ld l, l                                       ; $68fa: $6d
    ld b, b                                       ; $68fb: $40
    ld l, e                                       ; $68fc: $6b
    inc l                                         ; $68fd: $2c
    add [hl]                                      ; $68fe: $86
    sbc a                                         ; $68ff: $9f
    db $e4                                        ; $6900: $e4
    cp $aa                                        ; $6901: $fe $aa
    add $b5                                       ; $6903: $c6 $b5
    and d                                         ; $6905: $a2
    ret c                                         ; $6906: $d8

    push af                                       ; $6907: $f5
    ret nz                                        ; $6908: $c0

    and e                                         ; $6909: $a3
    ld [hl], $71                                  ; $690a: $36 $71

Call_02d_690c:
    db $eb                                        ; $690c: $eb
    ld l, a                                       ; $690d: $6f
    call Call_02d_4fc3                            ; $690e: $cd $c3 $4f
    ld sp, $55ae                                  ; $6911: $31 $ae $55
    rrca                                          ; $6914: $0f
    ld a, a                                       ; $6915: $7f

jr_02d_6916:
    xor h                                         ; $6916: $ac
    ld a, c                                       ; $6917: $79
    ldh [$3b], a                                  ; $6918: $e0 $3b
    add $6b                                       ; $691a: $c6 $6b
    jp nc, $f7e9                                  ; $691c: $d2 $e9 $f7

    ld sp, hl                                     ; $691f: $f9
    di                                            ; $6920: $f3
    jp c, $16c4                                   ; $6921: $da $c4 $16

    rst $00                                       ; $6924: $c7
    sbc $56                                       ; $6925: $de $56
    add hl, de                                    ; $6927: $19
    ld b, [hl]                                    ; $6928: $46
    sbc [hl]                                      ; $6929: $9e
    rst $20                                       ; $692a: $e7
    dec sp                                        ; $692b: $3b
    sub $58                                       ; $692c: $d6 $58
    adc [hl]                                      ; $692e: $8e
    ld a, h                                       ; $692f: $7c
    ld [hl], $8e                                  ; $6930: $36 $8e
    or h                                          ; $6932: $b4
    inc c                                         ; $6933: $0c
    call c, $acb1                                 ; $6934: $dc $b1 $ac
    add c                                         ; $6937: $81
    jp nz, $1cdc                                  ; $6938: $c2 $dc $1c

    jp $c690                                      ; $693b: $c3 $90 $c6


    or l                                          ; $693e: $b5
    ld [hl], d                                    ; $693f: $72
    rst $00                                       ; $6940: $c7
    rra                                           ; $6941: $1f
    cp d                                          ; $6942: $ba
    ld [$e42f], sp                                ; $6943: $08 $2f $e4
    ld e, d                                       ; $6946: $5a
    add b                                         ; $6947: $80
    adc a                                         ; $6948: $8f
    dec hl                                        ; $6949: $2b
    ld d, $97                                     ; $694a: $16 $97
    cp c                                          ; $694c: $b9
    and l                                         ; $694d: $a5
    ld l, [hl]                                    ; $694e: $6e
    adc d                                         ; $694f: $8a
    dec [hl]                                      ; $6950: $35
    and $c3                                       ; $6951: $e6 $c3
    dec bc                                        ; $6953: $0b
    ld l, e                                       ; $6954: $6b
    inc de                                        ; $6955: $13
    ld e, e                                       ; $6956: $5b
    dec e                                         ; $6957: $1d
    inc c                                         ; $6958: $0c
    ld h, e                                       ; $6959: $63
    rrca                                          ; $695a: $0f
    jr nc, jr_02d_6916                            ; $695b: $30 $b9

    ld c, e                                       ; $695d: $4b
    adc e                                         ; $695e: $8b
    rst $30                                       ; $695f: $f7
    ld l, c                                       ; $6960: $69
    ld e, h                                       ; $6961: $5c
    or c                                          ; $6962: $b1
    ld a, [de]                                    ; $6963: $1a
    ld b, c                                       ; $6964: $41
    rst $20                                       ; $6965: $e7
    ld [hl], c                                    ; $6966: $71
    dec l                                         ; $6967: $2d
    ld l, $73                                     ; $6968: $2e $73
    ld c, e                                       ; $696a: $4b
    db $dd                                        ; $696b: $dd
    ld d, h                                       ; $696c: $54
    sbc e                                         ; $696d: $9b
    ret c                                         ; $696e: $d8

jr_02d_696f:
    ld [bc], a                                    ; $696f: $02
    daa                                           ; $6970: $27
    db $fd                                        ; $6971: $fd
    ld [hl], c                                    ; $6972: $71
    ld [hl], h                                    ; $6973: $74
    ld b, e                                       ; $6974: $43
    ld a, [de]                                    ; $6975: $1a
    db $e3                                        ; $6976: $e3
    add [hl]                                      ; $6977: $86
    sub l                                         ; $6978: $95
    ld a, $8d                                     ; $6979: $3e $8d
    dec hl                                        ; $697b: $2b
    ld d, [hl]                                    ; $697c: $56
    inc hl                                        ; $697d: $23
    add sp, $3c                                   ; $697e: $e8 $3c
    ld a, [hl]                                    ; $6980: $7e
    rst $00                                       ; $6981: $c7
    rra                                           ; $6982: $1f
    cp d                                          ; $6983: $ba
    ld c, b                                       ; $6984: $48
    ld a, c                                       ; $6985: $79
    sbc [hl]                                      ; $6986: $9e
    adc a                                         ; $6987: $8f
    ld l, e                                       ; $6988: $6b
    ld [hl], c                                    ; $6989: $71
    sbc c                                         ; $698a: $99
    ld e, e                                       ; $698b: $5b
    ld [$daa6], a                                 ; $698c: $ea $a6 $da
    call nz, Call_02d_5916                        ; $698f: $c4 $16 $59
    ld e, d                                       ; $6992: $5a
    ret z                                         ; $6993: $c8

    dec de                                        ; $6994: $1b
    ld a, l                                       ; $6995: $7d
    sbc d                                         ; $6996: $9a
    xor l                                         ; $6997: $ad
    call c, Call_02d_7d0d                         ; $6998: $dc $0d $7d
    add hl, hl                                    ; $699b: $29
    inc a                                         ; $699c: $3c
    rst $18                                       ; $699d: $df
    call c, $e795                                 ; $699e: $dc $95 $e7
    ld a, c                                       ; $69a1: $79
    dec bc                                        ; $69a2: $0b
    ld e, c                                       ; $69a3: $59
    ld [hl], a                                    ; $69a4: $77
    dec b                                         ; $69a5: $05
    adc l                                         ; $69a6: $8d
    ld l, e                                       ; $69a7: $6b
    push bc                                       ; $69a8: $c5
    add $b8                                       ; $69a9: $c6 $b8
    and c                                         ; $69ab: $a1
    sub $c8                                       ; $69ac: $d6 $c8
    ld h, b                                       ; $69ae: $60
    ld e, h                                       ; $69af: $5c
    dec bc                                        ; $69b0: $0b
    ld a, c                                       ; $69b1: $79
    and e                                         ; $69b2: $a3
    ld c, a                                       ; $69b3: $4f
    ld sp, hl                                     ; $69b4: $f9
    sub $01                                       ; $69b5: $d6 $01
    ccf                                           ; $69b7: $3f
    sub b                                         ; $69b8: $90
    ld a, [c]                                     ; $69b9: $f2
    inc a                                         ; $69ba: $3c
    rra                                           ; $69bb: $1f
    db $fc                                        ; $69bc: $fc
    cp l                                          ; $69bd: $bd
    add [hl]                                      ; $69be: $86
    adc l                                         ; $69bf: $8d
    inc e                                         ; $69c0: $1c
    push af                                       ; $69c1: $f5
    sub e                                         ; $69c2: $93
    cp e                                          ; $69c3: $bb
    xor $0a                                       ; $69c4: $ee $0a
    ld a, [de]                                    ; $69c6: $1a
    db $fc                                        ; $69c7: $fc
    add l                                         ; $69c8: $85
    cp h                                          ; $69c9: $bc
    pop de                                        ; $69ca: $d1
    and a                                         ; $69cb: $a7
    jp c, $16c4                                   ; $69cc: $da $c4 $16

    daa                                           ; $69cf: $27
    jp Jump_02d_415d                              ; $69d0: $c3 $5d $41


    push af                                       ; $69d3: $f5
    ld l, $2d                                     ; $69d4: $2e $2d
    inc bc                                        ; $69d6: $03
    ld [hl], a                                    ; $69d7: $77
    inc l                                         ; $69d8: $2c
    xor e                                         ; $69d9: $ab
    sbc c                                         ; $69da: $99
    adc l                                         ; $69db: $8d
    cp a                                          ; $69dc: $bf
    ld a, a                                       ; $69dd: $7f
    ld c, l                                       ; $69de: $4d
    sbc a                                         ; $69df: $9f
    ld e, h                                       ; $69e0: $5c
    dec hl                                        ; $69e1: $2b
    adc d                                         ; $69e2: $8a
    dec [hl]                                      ; $69e3: $35
    ld b, [hl]                                    ; $69e4: $46
    and h                                         ; $69e5: $a4
    jr jr_02d_696f                                ; $69e6: $18 $87

    or c                                          ; $69e8: $b1
    inc e                                         ; $69e9: $1c
    db $d3                                        ; $69ea: $d3
    jp hl                                         ; $69eb: $e9


    rst $30                                       ; $69ec: $f7
    ld l, e                                       ; $69ed: $6b
    rrca                                          ; $69ee: $0f
    ld l, l                                       ; $69ef: $6d
    ld bc, $fd27                                  ; $69f0: $01 $27 $fd
    ld [hl], c                                    ; $69f3: $71
    ld [hl], h                                    ; $69f4: $74
    ld b, e                                       ; $69f5: $43
    ld a, [de]                                    ; $69f6: $1a
    ld d, a                                       ; $69f7: $57
    db $ec                                        ; $69f8: $ec
    ld a, [c]                                     ; $69f9: $f2
    ld [hl], a                                    ; $69fa: $77
    or c                                          ; $69fb: $b1
    ld b, l                                       ; $69fc: $45
    ld sp, $85ae                                  ; $69fd: $31 $ae $85
    cp h                                          ; $6a00: $bc
    pop de                                        ; $6a01: $d1
    and a                                         ; $6a02: $a7
    ld a, h                                       ; $6a03: $7c
    xor e                                         ; $6a04: $ab
    ld a, a                                       ; $6a05: $7f
    ld d, a                                       ; $6a06: $57
    inc [hl]                                      ; $6a07: $34
    ld [hl], l                                    ; $6a08: $75
    ld e, l                                       ; $6a09: $5d
    res 0, b                                      ; $6a0a: $cb $80
    halt                                          ; $6a0c: $76
    db $dd                                        ; $6a0d: $dd
    dec d                                         ; $6a0e: $15
    or h                                          ; $6a0f: $b4
    ld h, d                                       ; $6a10: $62
    adc e                                         ; $6a11: $8b
    rst $20                                       ; $6a12: $e7

jr_02d_6a13:
    and h                                         ; $6a13: $a4
    ld h, l                                       ; $6a14: $65
    ldh [$8e], a                                  ; $6a15: $e0 $8e
    ld h, l                                       ; $6a17: $65
    ld l, c                                       ; $6a18: $69
    inc bc                                        ; $6a19: $03
    jp z, $c75b                                   ; $6a1a: $ca $5b $c7

    db $fd                                        ; $6a1d: $fd
    db $eb                                        ; $6a1e: $eb
    cp c                                          ; $6a1f: $b9
    db $eb                                        ; $6a20: $eb
    and d                                         ; $6a21: $a2
    ld a, h                                       ; $6a22: $7c
    db $eb                                        ; $6a23: $eb
    ld l, e                                       ; $6a24: $6b
    call Call_02d_4fc3                            ; $6a25: $cd $c3 $4f
    db $e3                                        ; $6a28: $e3
    ld e, d                                       ; $6a29: $5a
    push af                                       ; $6a2a: $f5
    ldh a, [rBGP]                                 ; $6a2b: $f0 $47
    cp [hl]                                       ; $6a2d: $be
    dec e                                         ; $6a2e: $1d
    ld d, a                                       ; $6a2f: $57
    sub [hl]                                      ; $6a30: $96
    ld [hl], $a0                                  ; $6a31: $36 $a0
    ld e, l                                       ; $6a33: $5d
    cp $d0                                        ; $6a34: $fe $d0
    or l                                          ; $6a36: $b5
    inc c                                         ; $6a37: $0c
    ld l, b                                       ; $6a38: $68
    push bc                                       ; $6a39: $c5
    halt                                          ; $6a3a: $76
    db $dd                                        ; $6a3b: $dd
    jp z, $e52d                                   ; $6a3c: $ca $2d $e5

    ld c, b                                       ; $6a3f: $48
    or a                                          ; $6a40: $b7
    db $fd                                        ; $6a41: $fd
    cp e                                          ; $6a42: $bb
    add d                                         ; $6a43: $82
    sub $58                                       ; $6a44: $d6 $58
    adc h                                         ; $6a46: $8c
    ld e, $50                                     ; $6a47: $1e $50
    cp [hl]                                       ; $6a49: $be
    ld h, l                                       ; $6a4a: $65
    cp l                                          ; $6a4b: $bd
    ld c, a                                       ; $6a4c: $4f
    ld hl, sp+$41                                 ; $6a4d: $f8 $41
    rst $20                                       ; $6a4f: $e7
    xor a                                         ; $6a50: $af
    adc $2e                                       ; $6a51: $ce $2e
    or [hl]                                       ; $6a53: $b6
    db $fc                                        ; $6a54: $fc
    ld h, d                                       ; $6a55: $62
    set 6, e                                      ; $6a56: $cb $f3
    ld d, $c7                                     ; $6a58: $16 $c7
    db $fd                                        ; $6a5a: $fd
    db $eb                                        ; $6a5b: $eb
    ld d, l                                       ; $6a5c: $55
    ld c, l                                       ; $6a5d: $4d
    ld de, $5be5                                  ; $6a5e: $11 $e5 $5b
    ld e, a                                       ; $6a61: $5f
    ld l, e                                       ; $6a62: $6b
    ld e, $7e                                     ; $6a63: $1e $7e
    ld a, [de]                                    ; $6a65: $1a
    rst $10                                       ; $6a66: $d7
    xor d                                         ; $6a67: $aa
    add a                                         ; $6a68: $87
    ccf                                           ; $6a69: $3f
    ld a, [c]                                     ; $6a6a: $f2
    db $ed                                        ; $6a6b: $ed
    db $f4                                        ; $6a6c: $f4
    rlca                                          ; $6a6d: $07
    or c                                          ; $6a6e: $b1
    ld h, d                                       ; $6a6f: $62
    jr jr_02d_6a13                                ; $6a70: $18 $a1

    di                                            ; $6a72: $f3
    ld b, a                                       ; $6a73: $47
    xor a                                         ; $6a74: $af
    ld c, d                                       ; $6a75: $4a
    ret                                           ; $6a76: $c9


    rst $00                                       ; $6a77: $c7
    inc a                                         ; $6a78: $3c
    ld [hl], d                                    ; $6a79: $72
    call Call_02d_4c2a                            ; $6a7a: $cd $2a $4c
    xor [hl]                                      ; $6a7d: $ae
    ld b, e                                       ; $6a7e: $43
    cp [hl]                                       ; $6a7f: $be
    inc de                                        ; $6a80: $13
    sbc $e7                                       ; $6a81: $de $e7
    sub b                                         ; $6a83: $90
    ld [hl-], a                                   ; $6a84: $32
    jp z, Jump_000_1d5b                           ; $6a85: $ca $5b $1d

    dec l                                         ; $6a88: $2d
    ld h, [hl]                                    ; $6a89: $66
    ld de, $7f3a                                  ; $6a8a: $11 $3a $7f
    db $fc                                        ; $6a8d: $fc
    adc [hl]                                      ; $6a8e: $8e
    sbc a                                         ; $6a8f: $9f
    push hl                                       ; $6a90: $e5
    scf                                           ; $6a91: $37
    adc [hl]                                      ; $6a92: $8e
    ld a, [$c914]                                 ; $6a93: $fa $14 $c9
    ld [hl], l                                    ; $6a96: $75
    ld a, h                                       ; $6a97: $7c
    ld b, h                                       ; $6a98: $44
    ld a, [c]                                     ; $6a99: $f2
    ld a, h                                       ; $6a9a: $7c
    bit 7, d                                      ; $6a9b: $cb $7a
    sbc a                                         ; $6a9d: $9f
    ldh a, [$83]                                  ; $6a9e: $f0 $83
    adc $5f                                       ; $6aa0: $ce $5f
    sbc l                                         ; $6aa2: $9d
    ld e, l                                       ; $6aa3: $5d
    ld l, h                                       ; $6aa4: $6c
    ld sp, hl                                     ; $6aa5: $f9
    push bc                                       ; $6aa6: $c5

jr_02d_6aa7:
    sub [hl]                                      ; $6aa7: $96
    rst $20                                       ; $6aa8: $e7
    dec l                                         ; $6aa9: $2d
    and a                                         ; $6aaa: $a7
    ccf                                           ; $6aab: $3f
    ld [hl], d                                    ; $6aac: $72
    call $dc2a                                    ; $6aad: $cd $2a $dc
    cp a                                          ; $6ab0: $bf
    db $db                                        ; $6ab1: $db
    ld a, [de]                                    ; $6ab2: $1a
    adc e                                         ; $6ab3: $8b
    dec [hl]                                      ; $6ab4: $35
    jr nc, jr_02d_6ada                            ; $6ab5: $30 $23

    jp nc, $aee7                                  ; $6ab7: $d2 $e7 $ae

    adc c                                         ; $6aba: $89
    ld h, [hl]                                    ; $6abb: $66
    db $e3                                        ; $6abc: $e3
    dec a                                         ; $6abd: $3d
    call z, $914a                                 ; $6abe: $cc $4a $91
    xor a                                         ; $6ac1: $af
    adc $ca                                       ; $6ac2: $ce $ca
    dec e                                         ; $6ac4: $1d
    ld a, a                                       ; $6ac5: $7f
    ld a, [de]                                    ; $6ac6: $1a
    cp l                                          ; $6ac7: $bd
    sub d                                         ; $6ac8: $92
    and e                                         ; $6ac9: $a3
    ld a, [c]                                     ; $6aca: $f2
    xor l                                         ; $6acb: $ad
    sub e                                         ; $6acc: $93
    dec de                                        ; $6acd: $1b
    ld h, e                                       ; $6ace: $63
    ld e, b                                       ; $6acf: $58
    add [hl]                                      ; $6ad0: $86

jr_02d_6ad1:
    ccf                                           ; $6ad1: $3f
    adc h                                         ; $6ad2: $8c
    jr nc, jr_02d_6aa7                            ; $6ad3: $30 $d2

    add [hl]                                      ; $6ad5: $86
    ld h, c                                       ; $6ad6: $61
    sbc a                                         ; $6ad7: $9f
    sub d                                         ; $6ad8: $92
    db $eb                                        ; $6ad9: $eb

jr_02d_6ada:
    sub b                                         ; $6ada: $90
    xor a                                         ; $6adb: $af
    db $e3                                        ; $6adc: $e3
    inc hl                                        ; $6add: $23
    sub d                                         ; $6ade: $92
    rst $20                                       ; $6adf: $e7
    ld e, e                                       ; $6ae0: $5b
    ld a, a                                       ; $6ae1: $7f
    ld l, e                                       ; $6ae2: $6b
    ld e, $7e                                     ; $6ae3: $1e $7e
    adc d                                         ; $6ae5: $8a
    ld [hl], c                                    ; $6ae6: $71
    xor l                                         ; $6ae7: $ad
    ld a, d                                       ; $6ae8: $7a
    ld hl, sp+$63                                 ; $6ae9: $f8 $63
    call $df03                                    ; $6aeb: $cd $03 $df
    ld sp, $935e                                  ; $6aee: $31 $5e $93
    ld c, [hl]                                    ; $6af1: $4e
    cp a                                          ; $6af2: $bf
    rst $08                                       ; $6af3: $cf
    sbc a                                         ; $6af4: $9f
    rst $20                                       ; $6af5: $e7
    db $db                                        ; $6af6: $db
    add hl, bc                                    ; $6af7: $09
    jp c, $c0f5                                   ; $6af8: $da $f5 $c0

    ld h, e                                       ; $6afb: $63
    ld a, [bc]                                    ; $6afc: $0a
    ld a, [de]                                    ; $6afd: $1a
    ret                                           ; $6afe: $c9


jr_02d_6aff:
    dec hl                                        ; $6aff: $2b
    db $fc                                        ; $6b00: $fc
    or a                                          ; $6b01: $b7
    cp h                                          ; $6b02: $bc
    dec b                                         ; $6b03: $05
    and a                                         ; $6b04: $a7
    ccf                                           ; $6b05: $3f
    inc l                                         ; $6b06: $2c
    ld [hl], l                                    ; $6b07: $75
    sub d                                         ; $6b08: $92
    res 7, [hl]                                   ; $6b09: $cb $be
    dec de                                        ; $6b0b: $1b
    ld l, $8d                                     ; $6b0c: $2e $8d
    rra                                           ; $6b0e: $1f
    di                                            ; $6b0f: $f3
    db $ed                                        ; $6b10: $ed
    and h                                         ; $6b11: $a4
    ccf                                           ; $6b12: $3f
    add $c6                                       ; $6b13: $c6 $c6
    inc a                                         ; $6b15: $3c
    db $f4                                        ; $6b16: $f4
    dec b                                         ; $6b17: $05
    xor $94                                       ; $6b18: $ee $94
    rst $00                                       ; $6b1a: $c7
    ld [bc], a                                    ; $6b1b: $02
    xor l                                         ; $6b1c: $ad
    cp d                                          ; $6b1d: $ba
    db $eb                                        ; $6b1e: $eb
    sub a                                         ; $6b1f: $97
    cp d                                          ; $6b20: $ba
    adc h                                         ; $6b21: $8c
    and [hl]                                      ; $6b22: $a6
    ld a, a                                       ; $6b23: $7f
    dec a                                         ; $6b24: $3d
    rst $10                                       ; $6b25: $d7
    cp b                                          ; $6b26: $b8
    ld h, d                                       ; $6b27: $62
    call Call_02d_4fc3                            ; $6b28: $cd $c3 $4f
    ld d, c                                       ; $6b2b: $51
    sbc e                                         ; $6b2c: $9b
    ret c                                         ; $6b2d: $d8

    ld [bc], a                                    ; $6b2e: $02
    push af                                       ; $6b2f: $f5
    dec [hl]                                      ; $6b30: $35
    and $41                                       ; $6b31: $e6 $41
    call z, $ebae                                 ; $6b33: $cc $ae $eb
    add hl, sp                                    ; $6b36: $39
    rst $10                                       ; $6b37: $d7
    ld [bc], a                                    ; $6b38: $02
    dec sp                                        ; $6b39: $3b
    xor a                                         ; $6b3a: $af
    ld a, c                                       ; $6b3b: $79
    ld hl, sp+$29                                 ; $6b3c: $f8 $29
    sub $3c                                       ; $6b3e: $d6 $3c
    ldh a, [rNR24]                                ; $6b40: $f0 $19
    di                                            ; $6b42: $f3
    ret nc                                        ; $6b43: $d0

    ld b, a                                       ; $6b44: $47
    cp $80                                        ; $6b45: $fe $80
    cp c                                          ; $6b47: $b9
    xor l                                         ; $6b48: $ad
    jr z, jr_02d_6ad1                             ; $6b49: $28 $86

    sbc a                                         ; $6b4b: $9f
    push hl                                       ; $6b4c: $e5
    scf                                           ; $6b4d: $37
    adc [hl]                                      ; $6b4e: $8e
    ld a, [$ab14]                                 ; $6b4f: $fa $14 $ab
    inc c                                         ; $6b52: $0c
    ld h, e                                       ; $6b53: $63
    reti                                          ; $6b54: $d9


    ld a, [de]                                    ; $6b55: $1a
    di                                            ; $6b56: $f3
    jr nz, jr_02d_6aff                            ; $6b57: $20 $a6

    ccf                                           ; $6b59: $3f
    rla                                           ; $6b5a: $17
    and c                                         ; $6b5b: $a1
    ld l, e                                       ; $6b5c: $6b
    ldh a, [$93]                                  ; $6b5d: $f0 $93
    ld l, e                                       ; $6b5f: $6b
    ld e, $f8                                     ; $6b60: $1e $f8
    sbc b                                         ; $6b62: $98
    rlca                                          ; $6b63: $07
    ld sp, $1a6b                                  ; $6b64: $31 $6b $1a
    rst $10                                       ; $6b67: $d7
    rst $20                                       ; $6b68: $e7
    xor [hl]                                      ; $6b69: $ae
    push de                                       ; $6b6a: $d5
    reti                                          ; $6b6b: $d9


    rst $10                                       ; $6b6c: $d7
    ld a, [de]                                    ; $6b6d: $1a
    adc e                                         ; $6b6e: $8b
    dec d                                         ; $6b6f: $15
    xor e                                         ; $6b70: $ab
    ld d, d                                       ; $6b71: $52
    ld hl, sp-$1b                                 ; $6b72: $f8 $e5
    db $d3                                        ; $6b74: $d3
    rst $18                                       ; $6b75: $df
    push bc                                       ; $6b76: $c5
    ld d, [hl]                                    ; $6b77: $56
    add l                                         ; $6b78: $85
    ccf                                           ; $6b79: $3f
    rst $18                                       ; $6b7a: $df
    ld d, c                                       ; $6b7b: $51
    or h                                          ; $6b7c: $b4
    jp z, $93f0                                   ; $6b7d: $ca $f0 $93

    cp [hl]                                       ; $6b80: $be
    ld a, l                                       ; $6b81: $7d
    ld c, d                                       ; $6b82: $4a
    adc [hl]                                      ; $6b83: $8e
    rst $18                                       ; $6b84: $df
    sbc d                                         ; $6b85: $9a
    xor [hl]                                      ; $6b86: $ae
    cpl                                           ; $6b87: $2f
    or [hl]                                       ; $6b88: $b6
    adc $af                                       ; $6b89: $ce $af
    rst $00                                       ; $6b8b: $c7
    inc a                                         ; $6b8c: $3c
    adc b                                         ; $6b8d: $88

jr_02d_6b8e:
    pop af                                        ; $6b8e: $f1
    cp e                                          ; $6b8f: $bb
    sub l                                         ; $6b90: $95
    ld [hl+], a                                   ; $6b91: $22
    ld e, a                                       ; $6b92: $5f
    sbc l                                         ; $6b93: $9d
    ld sp, $5c8f                                  ; $6b94: $31 $8f $5c
    ld l, e                                       ; $6b97: $6b
    db $fc                                        ; $6b98: $fc
    ld e, l                                       ; $6b99: $5d
    ld l, h                                       ; $6b9a: $6c
    jp $ebbf                                      ; $6b9b: $c3 $bf $eb


    add c                                         ; $6b9e: $81
    ld b, a                                       ; $6b9f: $47
    sbc [hl]                                      ; $6ba0: $9e
    rst $20                                       ; $6ba1: $e7
    xor e                                         ; $6ba2: $ab
    or e                                          ; $6ba3: $b3
    ld [$8fe1], a                                 ; $6ba4: $ea $e1 $8f
    ld h, l                                       ; $6ba7: $65
    ld b, b                                       ; $6ba8: $40
    ld h, e                                       ; $6ba9: $63
    ld e, $c4                                     ; $6baa: $1e $c4
    cp [hl]                                       ; $6bac: $be
    ld d, $0f                                     ; $6bad: $16 $0f
    ret c                                         ; $6baf: $d8

    add [hl]                                      ; $6bb0: $86
    add h                                         ; $6bb1: $84
    ld a, [hl-]                                   ; $6bb2: $3a
    ld a, a                                       ; $6bb3: $7f
    adc l                                         ; $6bb4: $8d
    sbc h                                         ; $6bb5: $9c
    cp e                                          ; $6bb6: $bb
    add $8d                                       ; $6bb7: $c6 $8d
    or c                                          ; $6bb9: $b1
    ld c, a                                       ; $6bba: $4f
    add $d2                                       ; $6bbb: $c6 $d2

Call_02d_6bbd:
    cp b                                          ; $6bbd: $b8
    sub $3c                                       ; $6bbe: $d6 $3c
    db $fc                                        ; $6bc0: $fc
    inc d                                         ; $6bc1: $14
    ld a, c                                       ; $6bc2: $79
    dec bc                                        ; $6bc3: $0b
    and a                                         ; $6bc4: $a7
    add d                                         ; $6bc5: $82
    inc sp                                        ; $6bc6: $33
    jp nz, $b452                                  ; $6bc7: $c2 $52 $b4

    inc d                                         ; $6bca: $14
    ld [$28af], a                                 ; $6bcb: $ea $af $28
    add $32                                       ; $6bce: $c6 $32
    ld h, a                                       ; $6bd0: $67
    dec a                                         ; $6bd1: $3d
    ret nz                                        ; $6bd2: $c0

    ld d, d                                       ; $6bd3: $52
    inc d                                         ; $6bd4: $14
    db $e3                                        ; $6bd5: $e3
    jr nc, jr_02d_6b8e                            ; $6bd6: $30 $b6

    sub l                                         ; $6bd8: $95
    ld [hl-], a                                   ; $6bd9: $32
    ld a, [hl]                                    ; $6bda: $7e
    rst $10                                       ; $6bdb: $d7
    daa                                           ; $6bdc: $27
    cp a                                          ; $6bdd: $bf
    add hl, hl                                    ; $6bde: $29
    rst $18                                       ; $6bdf: $df
    ret                                           ; $6be0: $c9


    and b                                         ; $6be1: $a0
    sub d                                         ; $6be2: $92
    add c                                         ; $6be3: $81
    dec sp                                        ; $6be4: $3b
    db $fc                                        ; $6be5: $fc
    pop af                                        ; $6be6: $f1
    cp e                                          ; $6be7: $bb
    ld bc, $56b9                                  ; $6be8: $01 $b9 $56
    inc d                                         ; $6beb: $14
    or e                                          ; $6bec: $b3
    push de                                       ; $6bed: $d5
    ld e, c                                       ; $6bee: $59
    cp c                                          ; $6bef: $b9
    ccf                                           ; $6bf0: $3f
    ld h, c                                       ; $6bf1: $61
    ret                                           ; $6bf2: $c9


    ld e, e                                       ; $6bf3: $5b
    and a                                         ; $6bf4: $a7
    db $db                                        ; $6bf5: $db
    sbc b                                         ; $6bf6: $98

Jump_02d_6bf7:
    add a                                         ; $6bf7: $87
    cp [hl]                                       ; $6bf8: $be

Call_02d_6bf9:
    add $eb                                       ; $6bf9: $c6 $eb
    add $b8                                       ; $6bfb: $c6 $b8
    ld d, [hl]                                    ; $6bfd: $56
    ld l, h                                       ; $6bfe: $6c
    sub a                                         ; $6bff: $97
    and l                                         ; $6c00: $a5
    db $ec                                        ; $6c01: $ec
    ld l, e                                       ; $6c02: $6b
    ld e, h                                       ; $6c03: $5c
    dec sp                                        ; $6c04: $3b
    sub $58                                       ; $6c05: $d6 $58
    adc [hl]                                      ; $6c07: $8e
    inc a                                         ; $6c08: $3c
    ld e, a                                       ; $6c09: $5f
    db $fd                                        ; $6c0a: $fd
    cp e                                          ; $6c0b: $bb
    pop hl                                        ; $6c0c: $e1
    ld hl, sp+$2d                                 ; $6c0d: $f8 $2d
    cp e                                          ; $6c0f: $bb
    adc $c8                                       ; $6c10: $ce $c8
    rra                                           ; $6c12: $1f
    jr nc, @-$47                                  ; $6c13: $30 $b7

    ld [hl], c                                    ; $6c15: $71
    push bc                                       ; $6c16: $c5
    ldh a, [$b3]                                  ; $6c17: $f0 $b3
    db $fc                                        ; $6c19: $fc
    add $51                                       ; $6c1a: $c6 $51
    sbc a                                         ; $6c1c: $9f
    ld h, d                                       ; $6c1d: $62
    call c, $2c7e                                 ; $6c1e: $dc $7e $2c
    sbc $5f                                       ; $6c21: $de $5f
    or [hl]                                       ; $6c23: $b6
    add hl, sp                                    ; $6c24: $39
    rst $00                                       ; $6c25: $c7
    sbc a                                         ; $6c26: $9f
    or a                                          ; $6c27: $b7
    rst $00                                       ; $6c28: $c7
    sub l                                         ; $6c29: $95
    ld d, l                                       ; $6c2a: $55
    ld e, d                                       ; $6c2b: $5a
    xor b                                         ; $6c2c: $a8
    ld c, d                                       ; $6c2d: $4a
    dec d                                         ; $6c2e: $15
    ld c, l                                       ; $6c2f: $4d
    ld a, a                                       ; $6c30: $7f
    add $3c                                       ; $6c31: $c6 $3c
    db $f4                                        ; $6c33: $f4
    ld sp, $c6b0                                  ; $6c34: $31 $b0 $c6
    db $eb                                        ; $6c37: $eb
    add $b8                                       ; $6c38: $c6 $b8
    ld h, d                                       ; $6c3a: $62
    dec b                                         ; $6c3b: $05
    rst $18                                       ; $6c3c: $df
    adc a                                         ; $6c3d: $8f
    push de                                       ; $6c3e: $d5
    add hl, de                                    ; $6c3f: $19
    ld [hl], l                                    ; $6c40: $75
    ld c, l                                       ; $6c41: $4d
    ld a, [de]                                    ; $6c42: $1a
    cp a                                          ; $6c43: $bf
    dec de                                        ; $6c44: $1b
    or d                                          ; $6c45: $b2
    adc d                                         ; $6c46: $8a
    ld h, [hl]                                    ; $6c47: $66
    jr nc, jr_02d_6c78                            ; $6c48: $30 $2e

jr_02d_6c4a:
    add sp, -$74                                  ; $6c4a: $e8 $8c
    ld [hl], l                                    ; $6c4c: $75
    dec hl                                        ; $6c4d: $2b
    db $ed                                        ; $6c4e: $ed
    ld b, [hl]                                    ; $6c4f: $46
    add $52                                       ; $6c50: $c6 $52
    sbc $02                                       ; $6c52: $de $02
    and a                                         ; $6c54: $a7
    inc a                                         ; $6c55: $3c
    ld d, $68                                     ; $6c56: $16 $68
    ld [hl], $ae                                  ; $6c58: $36 $ae
    jr @+$80                                      ; $6c5a: $18 $7e

    sub [hl]                                      ; $6c5c: $96
    rst $18                                       ; $6c5d: $df
    jr c, jr_02d_6c4a                             ; $6c5e: $38 $ea

    ld d, e                                       ; $6c60: $53
    adc h                                         ; $6c61: $8c
    db $db                                        ; $6c62: $db
    adc a                                         ; $6c63: $8f
    push bc                                       ; $6c64: $c5
    ei                                            ; $6c65: $fb
    ld c, e                                       ; $6c66: $4b
    add c                                         ; $6c67: $81
    sla b                                         ; $6c68: $cb $20
    rst $18                                       ; $6c6a: $df
    ld [hl], c                                    ; $6c6b: $71
    dec h                                         ; $6c6c: $25
    sub $08                                       ; $6c6d: $d6 $08
    jr jr_02d_6cee                                ; $6c6f: $18 $7d

    ld e, d                                       ; $6c71: $5a
    ld l, b                                       ; $6c72: $68
    db $e4                                        ; $6c73: $e4
    rrca                                          ; $6c74: $0f
    jr @-$05                                      ; $6c75: $18 $f9

    ld a, [de]                                    ; $6c77: $1a

jr_02d_6c78:
    ld [hl], e                                    ; $6c78: $73
    ld a, d                                       ; $6c79: $7a
    ld b, b                                       ; $6c7a: $40
    ret                                           ; $6c7b: $c9


    ld d, l                                       ; $6c7c: $55
    ld e, l                                       ; $6c7d: $5d
    ld d, a                                       ; $6c7e: $57
    ld e, d                                       ; $6c7f: $5a
    add b                                         ; $6c80: $80
    xor a                                         ; $6c81: $af
    jr z, @+$58                                   ; $6c82: $28 $56

    add c                                         ; $6c84: $81
    ld b, a                                       ; $6c85: $47
    sbc $02                                       ; $6c86: $de $02
    ld b, a                                       ; $6c88: $47
    dec b                                         ; $6c89: $05
    push de                                       ; $6c8a: $d5
    cp e                                          ; $6c8b: $bb
    or h                                          ; $6c8c: $b4
    inc c                                         ; $6c8d: $0c
    ld l, b                                       ; $6c8e: $68
    inc b                                         ; $6c8f: $04
    or e                                          ; $6c90: $b3
    jr jr_02d_6c96                                ; $6c91: $18 $03

    db $e3                                        ; $6c93: $e3
    adc d                                         ; $6c94: $8a
    pop hl                                        ; $6c95: $e1

jr_02d_6c96:
    ld h, a                                       ; $6c96: $67
    ld sp, hl                                     ; $6c97: $f9
    adc l                                         ; $6c98: $8d
    and e                                         ; $6c99: $a3
    ld a, $c5                                     ; $6c9a: $3e $c5
    cp b                                          ; $6c9c: $b8
    sub $3c                                       ; $6c9d: $d6 $3c
    jp nz, $c7f7                                  ; $6c9f: $c2 $f7 $c7

    db $ed                                        ; $6ca2: $ed
    rst $00                                       ; $6ca3: $c7
    adc d                                         ; $6ca4: $8a
    halt                                          ; $6ca5: $76
    dec a                                         ; $6ca6: $3d
    db $fc                                        ; $6ca7: $fc
    or l                                          ; $6ca8: $b5
    add a                                         ; $6ca9: $87
    or [hl]                                       ; $6caa: $b6
    add a                                         ; $6cab: $87
    jp Jump_02d_5f05                              ; $6cac: $c3 $05 $5f


    ld l, e                                       ; $6caf: $6b
    ld e, $e1                                     ; $6cb0: $1e $e1
    ei                                            ; $6cb2: $fb
    ei                                            ; $6cb3: $fb
    ld e, d                                       ; $6cb4: $5a
    inc hl                                        ; $6cb5: $23
    and b                                         ; $6cb6: $a0
    sub c                                         ; $6cb7: $91
    add $82                                       ; $6cb8: $c6 $82
    sbc e                                         ; $6cba: $9b
    and e                                         ; $6cbb: $a3
    daa                                           ; $6cbc: $27
    rst $10                                       ; $6cbd: $d7
    pop af                                        ; $6cbe: $f1
    ld de, $f3c9                                  ; $6cbf: $11 $c9 $f3
    ld d, $47                                     ; $6cc2: $16 $47
    dec de                                        ; $6cc4: $1b
    add $8c                                       ; $6cc5: $c6 $8c
    ld c, b                                       ; $6cc7: $48
    sbc a                                         ; $6cc8: $9f
    ldh a, [$fd]                                  ; $6cc9: $f0 $fd
    push de                                       ; $6ccb: $d5
    reti                                          ; $6ccc: $d9


    rst $10                                       ; $6ccd: $d7
    ld a, [de]                                    ; $6cce: $1a
    adc e                                         ; $6ccf: $8b
    db $dd                                        ; $6cd0: $dd
    jp hl                                         ; $6cd1: $e9


    ld d, l                                       ; $6cd2: $55
    add hl, hl                                    ; $6cd3: $29
    ld sp, hl                                     ; $6cd4: $f9
    ld a, l                                       ; $6cd5: $7d
    call c, Call_000_0c7e                         ; $6cd6: $dc $7e $0c
    cp $2e                                        ; $6cd9: $fe $2e
    or [hl]                                       ; $6cdb: $b6
    ld bc, $f7f7                                  ; $6cdc: $01 $f7 $f7
    sub e                                         ; $6cdf: $93
    db $eb                                        ; $6ce0: $eb
    ld hl, sp-$78                                 ; $6ce1: $f8 $88
    db $e4                                        ; $6ce3: $e4
    ld a, c                                       ; $6ce4: $79
    dec bc                                        ; $6ce5: $0b
    rst $00                                       ; $6ce6: $c7
    sub l                                         ; $6ce7: $95
    dec [hl]                                      ; $6ce8: $35
    and $d6                                       ; $6ce9: $e6 $d6
    dec l                                         ; $6ceb: $2d
    dec l                                         ; $6cec: $2d
    inc bc                                        ; $6ced: $03

jr_02d_6cee:
    jp c, $8f29                                   ; $6cee: $da $29 $8f

    dec b                                         ; $6cf1: $05
    jp c, Jump_000_1bbf                           ; $6cf2: $da $bf $1b

    ld d, [hl]                                    ; $6cf5: $56
    ld e, d                                       ; $6cf6: $5a
    ld b, $b4                                     ; $6cf7: $06 $b4
    and d                                         ; $6cf9: $a2
    ret c                                         ; $6cfa: $d8

    xor c                                         ; $6cfb: $a9
    ld a, [c]                                     ; $6cfc: $f2
    ld b, [hl]                                    ; $6cfd: $46
    sbc a                                         ; $6cfe: $9f
    call z, Call_000_1af9                         ; $6cff: $cc $f9 $1a
    di                                            ; $6d02: $f3
    ld c, e                                       ; $6d03: $4b
    res 0, b                                      ; $6d04: $cb $80
    halt                                          ; $6d06: $76
    db $dd                                        ; $6d07: $dd
    dec d                                         ; $6d08: $15
    or h                                          ; $6d09: $b4
    and d                                         ; $6d0a: $a2
    ld [hl], c                                    ; $6d0b: $71
    ld [hl], h                                    ; $6d0c: $74
    ld e, l                                       ; $6d0d: $5d
    inc h                                         ; $6d0e: $24
    ldh a, [$71]                                  ; $6d0f: $f0 $71
    xor l                                         ; $6d11: $ad
    ld [$957c], sp                                ; $6d12: $08 $7c $95
    ld h, c                                       ; $6d15: $61
    cp h                                          ; $6d16: $bc
    sbc a                                         ; $6d17: $9f
    or a                                          ; $6d18: $b7
    and a                                         ; $6d19: $a7
    inc a                                         ; $6d1a: $3c
    ld d, $68                                     ; $6d1b: $16 $68
    sub l                                         ; $6d1d: $95
    add $df                                       ; $6d1e: $c6 $df
    rst $38                                       ; $6d20: $ff
    ld e, d                                       ; $6d21: $5a
    or c                                          ; $6d22: $b1
    ld e, l                                       ; $6d23: $5d
    ld l, h                                       ; $6d24: $6c
    ld b, e                                       ; $6d25: $43
    rra                                           ; $6d26: $1f
    rst $10                                       ; $6d27: $d7
    sbc d                                         ; $6d28: $9a
    rlca                                          ; $6d29: $07
    ld b, l                                       ; $6d2a: $45
    ld a, c                                       ; $6d2b: $79
    dec bc                                        ; $6d2c: $0b
    push af                                       ; $6d2d: $f5
    rst $28                                       ; $6d2e: $ef
    add [hl]                                      ; $6d2f: $86
    sub l                                         ; $6d30: $95
    call c, $9630                                 ; $6d31: $dc $30 $96
    ld b, d                                       ; $6d34: $42
    db $fd                                        ; $6d35: $fd
    ld e, c                                       ; $6d36: $59
    db $d3                                        ; $6d37: $d3
    cp b                                          ; $6d38: $b8
    ld a, $77                                     ; $6d39: $3e $77
    xor l                                         ; $6d3b: $ad
    adc $d2                                       ; $6d3c: $ce $d2
    add [hl]                                      ; $6d3e: $86

jr_02d_6d3f:
    xor [hl]                                      ; $6d3f: $ae
    ld [hl], c                                    ; $6d40: $71
    push bc                                       ; $6d41: $c5
    ld d, d                                       ; $6d42: $52
    rrca                                          ; $6d43: $0f
    inc hl                                        ; $6d44: $23
    sbc $8f                                       ; $6d45: $de $8f
    or c                                          ; $6d47: $b1
    db $ec                                        ; $6d48: $ec
    ld a, h                                       ; $6d49: $7c
    ld b, c                                       ; $6d4a: $41
    jr z, jr_02d_6d3f                             ; $6d4b: $28 $f2

    ld d, $5d                                     ; $6d4d: $16 $5d
    ret c                                         ; $6d4f: $d8

    ld b, d                                       ; $6d50: $42
    sbc a                                         ; $6d51: $9f
    ld d, [hl]                                    ; $6d52: $56
    inc d                                         ; $6d53: $14
    ld a, e                                       ; $6d54: $7b
    add d                                         ; $6d55: $82
    ld [hl], h                                    ; $6d56: $74
    xor h                                         ; $6d57: $ac
    ld a, c                                       ; $6d58: $79
    ldh [$8e], a                                  ; $6d59: $e0 $8e
    ld sp, $30bc                                  ; $6d5b: $31 $bc $30
    ld l, a                                       ; $6d5e: $6f
    ld bc, $de1d                                  ; $6d5f: $01 $1d $de
    ld e, a                                       ; $6d62: $5f
    jp c, $baeb                                   ; $6d63: $da $eb $ba

    ld d, [hl]                                    ; $6d66: $56
    db $dd                                        ; $6d67: $dd
    ld l, l                                       ; $6d68: $6d
    inc e                                         ; $6d69: $1c
    ld l, c                                       ; $6d6a: $69
    add hl, de                                    ; $6d6b: $19
    ret nc                                        ; $6d6c: $d0

    ld [bc], a                                    ; $6d6d: $02
    sub a                                         ; $6d6e: $97
    xor l                                         ; $6d6f: $ad
    add l                                         ; $6d70: $85
    xor [hl]                                      ; $6d71: $ae
    rlca                                          ; $6d72: $07
    ld a, [de]                                    ; $6d73: $1a
    ld a, h                                       ; $6d74: $7c
    dec l                                         ; $6d75: $2d
    push af                                       ; $6d76: $f5
    add b                                         ; $6d77: $80
    add h                                         ; $6d78: $84
    and l                                         ; $6d79: $a5
    ld l, b                                       ; $6d7a: $68
    ld e, h                                       ; $6d7b: $5c
    ld l, e                                       ; $6d7c: $6b
    ld e, $e1                                     ; $6d7d: $1e $e1
    ei                                            ; $6d7f: $fb
    ld l, e                                       ; $6d80: $6b
    adc d                                         ; $6d81: $8a
    ldh a, [$2b]                                  ; $6d82: $f0 $2b
    add hl, sp                                    ; $6d84: $39
    inc l                                         ; $6d85: $2c
    ld h, e                                       ; $6d86: $63
    ld l, h                                       ; $6d87: $6c
    and c                                         ; $6d88: $a1
    dec [hl]                                      ; $6d89: $35
    ld d, $21                                     ; $6d8a: $16 $21
    rra                                           ; $6d8c: $1f
    db $fc                                        ; $6d8d: $fc
    sub c                                         ; $6d8e: $91
    jp $cab5                                      ; $6d8f: $c3 $b5 $ca


    call c, $53ed                                 ; $6d92: $dc $ed $53
    sbc $02                                       ; $6d95: $de $02
    push af                                       ; $6d97: $f5
    dec [hl]                                      ; $6d98: $35
    ld b, [hl]                                    ; $6d99: $46
    ret nc                                        ; $6d9a: $d0

    ld a, c                                       ; $6d9b: $79
    sub $34                                       ; $6d9c: $d6 $34
    xor [hl]                                      ; $6d9e: $ae
    rst $08                                       ; $6d9f: $cf
    ld e, l                                       ; $6da0: $5d

jr_02d_6da1:
    xor e                                         ; $6da1: $ab
    or e                                          ; $6da2: $b3
    or h                                          ; $6da3: $b4
    and c                                         ; $6da4: $a1
    ld l, e                                       ; $6da5: $6b
    ldh a, [$b5]                                  ; $6da6: $f0 $b5
    and $11                                       ; $6da8: $e6 $11
    cp [hl]                                       ; $6daa: $be
    ccf                                           ; $6dab: $3f
    xor [hl]                                      ; $6dac: $ae
    or c                                          ; $6dad: $b1
    ldh [$e6], a                                  ; $6dae: $e0 $e6
    jr jr_02d_6da1                                ; $6db0: $18 $ef

    xor a                                         ; $6db2: $af
    ld sp, $b4bf                                  ; $6db3: $31 $bf $b4
    inc c                                         ; $6db6: $0c
    ld l, b                                       ; $6db7: $68
    ld b, l                                       ; $6db8: $45
    or c                                          ; $6db9: $b1
    ld d, e                                       ; $6dba: $53
    push hl                                       ; $6dbb: $e5
    adc l                                         ; $6dbc: $8d
    ld a, $99                                     ; $6dbd: $3e $99
    di                                            ; $6dbf: $f3
    db $fd                                        ; $6dc0: $fd
    cp e                                          ; $6dc1: $bb
    cp c                                          ; $6dc2: $b9
    ld [hl], a                                    ; $6dc3: $77
    ld c, l                                       ; $6dc4: $4d
    ld a, [$c6b4]                                 ; $6dc5: $fa $b4 $c6
    ld h, d                                       ; $6dc8: $62
    ld e, h                                       ; $6dc9: $5c
    xor e                                         ; $6dca: $ab
    or h                                          ; $6dcb: $b4
    jp z, $62fc                                   ; $6dcc: $ca $fc $62

    rl a                                          ; $6dcf: $cb $17
    ldh [$2b], a                                  ; $6dd1: $e0 $2b
    adc d                                         ; $6dd3: $8a
    dec [hl]                                      ; $6dd4: $35
    jr z, jr_02d_6df5                             ; $6dd5: $28 $1e

    ld a, c                                       ; $6dd7: $79
    dec bc                                        ; $6dd8: $0b
    ld b, a                                       ; $6dd9: $47
    ld b, l                                       ; $6dda: $45
    jr jr_02d_6e47                                ; $6ddb: $18 $6a

    ld e, h                                       ; $6ddd: $5c
    ei                                            ; $6dde: $fb
    ld e, d                                       ; $6ddf: $5a
    ld h, e                                       ; $6de0: $63
    ld sp, $9237                                  ; $6de1: $31 $37 $92
    adc a                                         ; $6de4: $8f
    sbc $1f                                       ; $6de5: $de $1f
    add hl, sp                                    ; $6de7: $39
    ld e, h                                       ; $6de8: $5c
    ret                                           ; $6de9: $c9


    ld [hl], l                                    ; $6dea: $75
    ld a, h                                       ; $6deb: $7c
    ld b, h                                       ; $6dec: $44
    ld a, [c]                                     ; $6ded: $f2
    cp h                                          ; $6dee: $bc
    dec b                                         ; $6def: $05
    push af                                       ; $6df0: $f5
    rst $28                                       ; $6df1: $ef
    adc d                                         ; $6df2: $8a
    and [hl]                                      ; $6df3: $a6
    xor [hl]                                      ; $6df4: $ae

jr_02d_6df5:
    ld l, e                                       ; $6df5: $6b
    add hl, de                                    ; $6df6: $19
    ret nc                                        ; $6df7: $d0

    or d                                          ; $6df8: $b2

Call_02d_6df9:
    or l                                          ; $6df9: $b5
    xor a                                         ; $6dfa: $af
    cp c                                          ; $6dfb: $b9
    ld a, $23                                     ; $6dfc: $3e $23
    rrca                                          ; $6dfe: $0f
    cp c                                          ; $6dff: $b9
    pop hl                                        ; $6e00: $e1
    inc e                                         ; $6e01: $1c
    push af                                       ; $6e02: $f5
    ld [hl], a                                    ; $6e03: $77
    adc c                                         ; $6e04: $89
    ld c, b                                       ; $6e05: $48
    ld c, e                                       ; $6e06: $4b
    ccf                                           ; $6e07: $3f
    adc h                                         ; $6e08: $8c
    ld a, d                                       ; $6e09: $7a
    rla                                           ; $6e0a: $17
    and $2d                                       ; $6e0b: $e6 $2d
    dec e                                         ; $6e0d: $1d
    sbc $df                                       ; $6e0e: $de $df
    push bc                                       ; $6e10: $c5

jr_02d_6e11:
    ld [hl], $e0                                  ; $6e11: $36 $e0
    cp $fe                                        ; $6e13: $fe $fe
    inc d                                         ; $6e15: $14
    or h                                          ; $6e16: $b4
    and d                                         ; $6e17: $a2
    dec [hl]                                      ; $6e18: $35
    dec b                                         ; $6e19: $05
    ld h, d                                       ; $6e1a: $62
    add hl, hl                                    ; $6e1b: $29
    rst $00                                       ; $6e1c: $c7
    ld d, d                                       ; $6e1d: $52
    db $ec                                        ; $6e1e: $ec
    db $d3                                        ; $6e1f: $d3
    cp b                                          ; $6e20: $b8
    ld b, [hl]                                    ; $6e21: $46
    rrca                                          ; $6e22: $0f
    ld [hl+], a                                   ; $6e23: $22
    ld e, a                                       ; $6e24: $5f
    daa                                           ; $6e25: $27

Call_02d_6e26:
    jr jr_02d_6e3f                                ; $6e26: $18 $17

    db $e3                                        ; $6e28: $e3
    add [hl]                                      ; $6e29: $86
    ld sp, $c20b                                  ; $6e2a: $31 $0b $c2
    inc c                                         ; $6e2d: $0c
    ret z                                         ; $6e2e: $c8

    ld d, a                                       ; $6e2f: $57
    inc [hl]                                      ; $6e30: $34
    ld b, d                                       ; $6e31: $42
    db $fd                                        ; $6e32: $fd
    cp h                                          ; $6e33: $bc
    dec b                                         ; $6e34: $05
    dec e                                         ; $6e35: $1d
    inc d                                         ; $6e36: $14
    ld c, e                                       ; $6e37: $4b
    ld a, e                                       ; $6e38: $7b
    ld e, l                                       ; $6e39: $5d
    ld d, a                                       ; $6e3a: $57
    adc h                                         ; $6e3b: $8c
    ld h, e                                       ; $6e3c: $63
    add sp, -$2d                                  ; $6e3d: $e8 $d3

jr_02d_6e3f:
    ld [hl-], a                                   ; $6e3f: $32
    and b                                         ; $6e40: $a0
    sbc l                                         ; $6e41: $9d

Jump_02d_6e42:
    ld a, [c]                                     ; $6e42: $f2
    ld e, b                                       ; $6e43: $58
    and b                                         ; $6e44: $a0
    add hl, hl                                    ; $6e45: $29
    ld l, b                                       ; $6e46: $68

jr_02d_6e47:
    ld b, $11                                     ; $6e47: $06 $11
    jr c, jr_02d_6e11                             ; $6e49: $38 $c6

    ld l, $b6                                     ; $6e4b: $2e $b6
    sub [hl]                                      ; $6e4d: $96
    add c                                         ; $6e4e: $81
    dec sp                                        ; $6e4f: $3b
    sub [hl]                                      ; $6e50: $96
    jp hl                                         ; $6e51: $e9


    rst $08                                       ; $6e52: $cf
    ld d, [hl]                                    ; $6e53: $56
    xor $86                                       ; $6e54: $ee $86

jr_02d_6e56:
    sbc [hl]                                      ; $6e56: $9e
    or a                                          ; $6e57: $b7
    ld e, c                                       ; $6e58: $59
    rrca                                          ; $6e59: $0f
    inc a                                         ; $6e5a: $3c
    add $b5                                       ; $6e5b: $c6 $b5
    add $55                                       ; $6e5d: $c6 $55
    ld h, c                                       ; $6e5f: $61
    ld e, l                                       ; $6e60: $5d
    rst $10                                       ; $6e61: $d7
    db $ec                                        ; $6e62: $ec
    rst $38                                       ; $6e63: $ff
    sbc e                                         ; $6e64: $9b
    halt                                          ; $6e65: $76
    ldh a, [$aa]                                  ; $6e66: $f0 $aa
    dec de                                        ; $6e68: $1b
    ld e, c                                       ; $6e69: $59
    push af                                       ; $6e6a: $f5
    cp h                                          ; $6e6b: $bc
    ld h, c                                       ; $6e6c: $61
    cp a                                          ; $6e6d: $bf
    ld d, b                                       ; $6e6e: $50
    ld [hl], d                                    ; $6e6f: $72
    call Call_02d_7c23                            ; $6e70: $cd $23 $7c
    ccf                                           ; $6e73: $3f
    sub d                                         ; $6e74: $92
    db $d3                                        ; $6e75: $d3
    cp a                                          ; $6e76: $bf
    ret c                                         ; $6e77: $d8

    or $49                                        ; $6e78: $f6 $49
    sub l                                         ; $6e7a: $95
    ld a, $45                                     ; $6e7b: $3e $45
    ld [hl], d                                    ; $6e7d: $72
    ld l, h                                       ; $6e7e: $6c
    inc c                                         ; $6e7f: $0c
    ld a, d                                       ; $6e80: $7a
    add sp, $1a                                   ; $6e81: $e8 $1a
    rst $10                                       ; $6e83: $d7
    adc d                                         ; $6e84: $8a
    xor l                                         ; $6e85: $ad
    ld [hl-], a                                   ; $6e86: $32
    ld d, $2a                                     ; $6e87: $16 $2a
    cp c                                          ; $6e89: $b9
    call nc, $fb23                                ; $6e8a: $d4 $23 $fb
    sbc b                                         ; $6e8d: $98
    ld bc, $c725                                  ; $6e8e: $01 $25 $c7
    ld l, a                                       ; $6e91: $6f
    ld l, c                                       ; $6e92: $69
    db $fd                                        ; $6e93: $fd
    ret nc                                        ; $6e94: $d0

    xor [hl]                                      ; $6e95: $ae
    rst $30                                       ; $6e96: $f7
    ret                                           ; $6e97: $c9


    or l                                          ; $6e98: $b5
    and d                                         ; $6e99: $a2
    ld e, b                                       ; $6e9a: $58
    ld a, [$a5f9]                                 ; $6e9b: $fa $f9 $a5
    jr @-$77                                      ; $6e9e: $18 $87

    ld [hl], l                                    ; $6ea0: $75
    or b                                          ; $6ea1: $b0
    ld [hl-], a                                   ; $6ea2: $32
    pop de                                        ; $6ea3: $d1
    sbc b                                         ; $6ea4: $98
    ld d, a                                       ; $6ea5: $57
    ld a, [c]                                     ; $6ea6: $f2
    ld d, $47                                     ; $6ea7: $16 $47
    sbc $9a                                       ; $6ea9: $de $9a
    xor [hl]                                      ; $6eab: $ae
    cpl                                           ; $6eac: $2f
    or [hl]                                       ; $6ead: $b6
    ld [$c3d1], a                                 ; $6eae: $ea $d1 $c3
    ld [hl], c                                    ; $6eb1: $71
    adc l                                         ; $6eb2: $8d
    db $fc                                        ; $6eb3: $fc
    ld bc, $1f23                                  ; $6eb4: $01 $23 $1f
    cp l                                          ; $6eb7: $bd
    cp a                                          ; $6eb8: $bf
    add $df                                       ; $6eb9: $c6 $df
    push bc                                       ; $6ebb: $c5
    ld [hl], $fc                                  ; $6ebc: $36 $fc
    cp e                                          ; $6ebe: $bb
    ld e, $78                                     ; $6ebf: $1e $78
    db $e4                                        ; $6ec1: $e4
    dec l                                         ; $6ec2: $2d
    and a                                         ; $6ec3: $a7
    ld [c], a                                     ; $6ec4: $e2
    ld [$b5f6], sp                                ; $6ec5: $08 $f6 $b5
    jr nc, jr_02d_6e56                            ; $6ec8: $30 $8c

    dec [hl]                                      ; $6eca: $35
    ld d, $cb                                     ; $6ecb: $16 $cb
    add b                                         ; $6ecd: $80
    jp z, $b414                                   ; $6ece: $ca $14 $b4

    and d                                         ; $6ed1: $a2
    ld e, l                                       ; $6ed2: $5d
    rrca                                          ; $6ed3: $0f
    inc a                                         ; $6ed4: $3c
    ld d, $80                                     ; $6ed5: $16 $80
    adc h                                         ; $6ed7: $8c
    ld a, l                                       ; $6ed8: $7d
    ld c, d                                       ; $6ed9: $4a
    adc $c5                                       ; $6eda: $ce $c5
    ld [hl-], a                                   ; $6edc: $32
    rst $20                                       ; $6edd: $e7
    ld e, d                                       ; $6ede: $5a
    add b                                         ; $6edf: $80
    xor a                                         ; $6ee0: $af
    ld l, b                                       ; $6ee1: $68
    ld h, h                                       ; $6ee2: $64
    xor c                                         ; $6ee3: $a9
    ld [hl+], a                                   ; $6ee4: $22
    add e                                         ; $6ee5: $83
    pop af                                        ; $6ee6: $f1
    cp e                                          ; $6ee7: $bb
    and l                                         ; $6ee8: $a5
    db $d3                                        ; $6ee9: $d3
    ld a, b                                       ; $6eea: $78
    or c                                          ; $6eeb: $b1
    adc l                                         ; $6eec: $8d
    and l                                         ; $6eed: $a5
    ld [hl], c                                    ; $6eee: $71
    ei                                            ; $6eef: $fb
    or c                                          ; $6ef0: $b1
    ld h, d                                       ; $6ef1: $62
    dec bc                                        ; $6ef2: $0b
    dec hl                                        ; $6ef3: $2b
    ld b, l                                       ; $6ef4: $45
    cp e                                          ; $6ef5: $bb
    ld e, [hl]                                    ; $6ef6: $5e
    ld d, l                                       ; $6ef7: $55
    pop bc                                        ; $6ef8: $c1
    rst $10                                       ; $6ef9: $d7
    cp b                                          ; $6efa: $b8
    ld b, [hl]                                    ; $6efb: $46
    or [hl]                                       ; $6efc: $b6
    jp z, $de30                                   ; $6efd: $ca $30 $de

    rst $08                                       ; $6f00: $cf
    ld e, e                                       ; $6f01: $5b
    push af                                       ; $6f02: $f5
    dec [hl]                                      ; $6f03: $35
    add $30                                       ; $6f04: $c6 $30
    ld h, [hl]                                    ; $6f06: $66
    or b                                          ; $6f07: $b0
    db $eb                                        ; $6f08: $eb
    add c                                         ; $6f09: $81
    rst $00                                       ; $6f0a: $c7
    cp b                                          ; $6f0b: $b8
    sub [hl]                                      ; $6f0c: $96
    ld a, d                                       ; $6f0d: $7a
    ld h, h                                       ; $6f0e: $64
    rra                                           ; $6f0f: $1f
    inc sp                                        ; $6f10: $33
    and b                                         ; $6f11: $a0
    ld a, h                                       ; $6f12: $7c
    rst $00                                       ; $6f13: $c7
    sub l                                         ; $6f14: $95
    reti                                          ; $6f15: $d9


    ld a, [bc]                                    ; $6f16: $0a
    ld a, [bc]                                    ; $6f17: $0a
    add $c5                                       ; $6f18: $c6 $c5
    ld a, [hl]                                    ; $6f1a: $7e
    ld e, $c9                                     ; $6f1b: $1e $c9
    ld [hl], c                                    ; $6f1d: $71
    ei                                            ; $6f1e: $fb
    or c                                          ; $6f1f: $b1
    and d                                         ; $6f20: $a2
    ld e, b                                       ; $6f21: $58
    ret z                                         ; $6f22: $c8

    ld e, l                                       ; $6f23: $5d
    sub c                                         ; $6f24: $91
    or a                                          ; $6f25: $b7
    push af                                       ; $6f26: $f5
    or l                                          ; $6f27: $b5
    adc e                                         ; $6f28: $8b

Call_02d_6f29:
    dec l                                         ; $6f29: $2d
    cp a                                          ; $6f2a: $bf
    ret c                                         ; $6f2b: $d8

    ld e, d                                       ; $6f2c: $5a
    pop de                                        ; $6f2d: $d1
    xor [hl]                                      ; $6f2e: $ae
    rlca                                          ; $6f2f: $07
    ld e, $e3                                     ; $6f30: $1e $e3
    ld [hl], a                                    ; $6f32: $77
    db $fd                                        ; $6f33: $fd
    adc e                                         ; $6f34: $8b
    ld l, l                                       ; $6f35: $6d
    sbc a                                         ; $6f36: $9f
    ld d, h                                       ; $6f37: $54
    jp hl                                         ; $6f38: $e9


    ld d, e                                       ; $6f39: $53
    db $e4                                        ; $6f3a: $e4
    xor e                                         ; $6f3b: $ab
    xor a                                         ; $6f3c: $af
    ld e, l                                       ; $6f3d: $5d
    cp $30                                        ; $6f3e: $fe $30
    sub [hl]                                      ; $6f40: $96
    ld bc, $baed                                  ; $6f41: $01 $ed $ba
    dec hl                                        ; $6f44: $2b
    ld l, b                                       ; $6f45: $68
    ld b, $e3                                     ; $6f46: $06 $e3
    add d                                         ; $6f48: $82
    adc $58                                       ; $6f49: $ce $58
    or a                                          ; $6f4b: $b7
    jp nc, Jump_02d_646e                          ; $6f4c: $d2 $6e $64

    inc l                                         ; $6f4f: $2c
    push hl                                       ; $6f50: $e5
    dec l                                         ; $6f51: $2d
    daa                                           ; $6f52: $27
    ld l, b                                       ; $6f53: $68
    rst $10                                       ; $6f54: $d7
    inc bc                                        ; $6f55: $03
    adc a                                         ; $6f56: $8f
    ld [hl], c                                    ; $6f57: $71
    adc l                                         ; $6f58: $8d
    rst $18                                       ; $6f59: $df
    jp nc, $a1fa                                  ; $6f5a: $d2 $fa $a1

    ld e, l                                       ; $6f5d: $5d
    rst $28                                       ; $6f5e: $ef
    sub e                                         ; $6f5f: $93
    ld l, e                                       ; $6f60: $6b
    ld b, l                                       ; $6f61: $45
    or c                                          ; $6f62: $b1
    db $f4                                        ; $6f63: $f4
    di                                            ; $6f64: $f3
    ld c, e                                       ; $6f65: $4b
    ld sp, $eb0e                                  ; $6f66: $31 $0e $eb
    ld h, b                                       ; $6f69: $60

jr_02d_6f6a:
    ld h, l                                       ; $6f6a: $65
    or [hl]                                       ; $6f6b: $b6
    ld [hl], d                                    ; $6f6c: $72
    scf                                           ; $6f6d: $37
    db $f4                                        ; $6f6e: $f4
    db $dd                                        ; $6f6f: $dd
    ret z                                         ; $6f70: $c8

    db $ed                                        ; $6f71: $ed
    or e                                          ; $6f72: $b3
    sub h                                         ; $6f73: $94
    cpl                                           ; $6f74: $2f
    db $eb                                        ; $6f75: $eb
    xor [hl]                                      ; $6f76: $ae
    and b                                         ; $6f77: $a0
    add hl, de                                    ; $6f78: $19
    adc h                                         ; $6f79: $8c
    db $fc                                        ; $6f7a: $fc
    ld h, c                                       ; $6f7b: $61
    ld h, b                                       ; $6f7c: $60
    db $dd                                        ; $6f7d: $dd
    ld c, d                                       ; $6f7e: $4a
    cp e                                          ; $6f7f: $bb
    sub c                                         ; $6f80: $91
    or c                                          ; $6f81: $b1
    sub h                                         ; $6f82: $94
    or a                                          ; $6f83: $b7
    rst $00                                       ; $6f84: $c7
    sub l                                         ; $6f85: $95
    db $fd                                        ; $6f86: $fd
    ld a, e                                       ; $6f87: $7b
    call Call_000_066c                            ; $6f88: $cd $6c $06
    rla                                           ; $6f8b: $17
    db $fc                                        ; $6f8c: $fc
    ld e, l                                       ; $6f8d: $5d
    rrca                                          ; $6f8e: $0f
    inc a                                         ; $6f8f: $3c
    ld h, [hl]                                    ; $6f90: $66
    jr nc, jr_02d_6f6a                            ; $6f91: $30 $d7

    ld sp, hl                                     ; $6f93: $f9
    push af                                       ; $6f94: $f5
    cp b                                          ; $6f95: $b8
    ld [$6c5d], a                                 ; $6f96: $ea $5d $6c
    add e                                         ; $6f99: $83
    adc b                                         ; $6f9a: $88
    sbc e                                         ; $6f9b: $9b
    ld a, [c]                                     ; $6f9c: $f2
    ld d, $27                                     ; $6f9d: $16 $27
    jr z, jr_02d_7017                             ; $6f9f: $28 $76

    dec a                                         ; $6fa1: $3d
    ldh a, [rNR23]                                ; $6fa2: $f0 $18
    rst $10                                       ; $6fa4: $d7
    ld a, [de]                                    ; $6fa5: $1a
    ld d, a                                       ; $6fa6: $57
    add l                                         ; $6fa7: $85
    ld [hl], l                                    ; $6fa8: $75
    ld e, l                                       ; $6fa9: $5d
    or e                                          ; $6faa: $b3
    rst $38                                       ; $6fab: $ff
    ld l, a                                       ; $6fac: $6f
    ld e, d                                       ; $6fad: $5a
    cp h                                          ; $6fae: $bc
    ld c, a                                       ; $6faf: $4f
    jp Jump_000_31cf                              ; $6fb0: $c3 $cf $31


    inc bc                                        ; $6fb3: $03
    or a                                          ; $6fb4: $b7
    ld e, b                                       ; $6fb5: $58
    add b                                         ; $6fb6: $80
    xor a                                         ; $6fb7: $af
    ld l, b                                       ; $6fb8: $68
    ld h, h                                       ; $6fb9: $64
    xor c                                         ; $6fba: $a9
    ld [hl+], a                                   ; $6fbb: $22
    add e                                         ; $6fbc: $83
    pop af                                        ; $6fbd: $f1
    cp e                                          ; $6fbe: $bb
    and l                                         ; $6fbf: $a5
    db $d3                                        ; $6fc0: $d3
    ld a, b                                       ; $6fc1: $78
    or c                                          ; $6fc2: $b1
    adc l                                         ; $6fc3: $8d
    and l                                         ; $6fc4: $a5
    ld [hl], c                                    ; $6fc5: $71
    xor l                                         ; $6fc6: $ad
    ret c                                         ; $6fc7: $d8

    jp nz, $d14a                                  ; $6fc8: $c2 $4a $d1

    xor [hl]                                      ; $6fcb: $ae
    ld d, a                                       ; $6fcc: $57
    ld d, l                                       ; $6fcd: $55
    ldh a, [$35]                                  ; $6fce: $f0 $35
    xor [hl]                                      ; $6fd0: $ae
    dec e                                         ; $6fd1: $1d
    db $e3                                        ; $6fd2: $e3
    dec [hl]                                      ; $6fd3: $35
    jp hl                                         ; $6fd4: $e9


    db $f4                                        ; $6fd5: $f4
    ei                                            ; $6fd6: $fb
    db $fc                                        ; $6fd7: $fc
    ld a, c                                       ; $6fd8: $79
    sbc $02                                       ; $6fd9: $de $02
    daa                                           ; $6fdb: $27
    ld l, b                                       ; $6fdc: $68
    rst $10                                       ; $6fdd: $d7
    inc bc                                        ; $6fde: $03
    adc a                                         ; $6fdf: $8f
    ld [hl], c                                    ; $6fe0: $71
    xor l                                         ; $6fe1: $ad
    ld a, c                                       ; $6fe2: $79
    add h                                         ; $6fe3: $84
    rst $28                                       ; $6fe4: $ef
    rst $00                                       ; $6fe5: $c7
    inc d                                         ; $6fe6: $14
    or h                                          ; $6fe7: $b4
    and d                                         ; $6fe8: $a2
    add l                                         ; $6fe9: $85
    and b                                         ; $6fea: $a0
    inc l                                         ; $6feb: $2c
    inc bc                                        ; $6fec: $03
    jr c, @+$5d                                   ; $6fed: $38 $5b

    ld b, c                                       ; $6fef: $41
    pop bc                                        ; $6ff0: $c1
    db $f4                                        ; $6ff1: $f4
    sub a                                         ; $6ff2: $97
    or d                                          ; $6ff3: $b2
    ret z                                         ; $6ff4: $c8

    ld e, e                                       ; $6ff5: $5b
    push af                                       ; $6ff6: $f5
    rst $28                                       ; $6ff7: $ef
    add [hl]                                      ; $6ff8: $86
    sub l                                         ; $6ff9: $95
    call c, $9630                                 ; $6ffa: $dc $30 $96
    ld b, d                                       ; $6ffd: $42
    db $fd                                        ; $6ffe: $fd
    add hl, de                                    ; $6fff: $19
    di                                            ; $7000: $f3
    ret nc                                        ; $7001: $d0

    rst $10                                       ; $7002: $d7
    inc d                                         ; $7003: $14
    adc b                                         ; $7004: $88
    ld [hl], c                                    ; $7005: $71
    db $ed                                        ; $7006: $ed
    ld a, d                                       ; $7007: $7a
    ldh [$31], a                                  ; $7008: $e0 $31
    ld l, [hl]                                    ; $700a: $6e
    ccf                                           ; $700b: $3f
    ld d, [hl]                                    ; $700c: $56
    or h                                          ; $700d: $b4
    sra [hl]                                      ; $700e: $cb $2e
    or $a3                                        ; $7010: $f6 $a3
    ld a, h                                       ; $7012: $7c
    ld e, c                                       ; $7013: $59
    ld [hl], a                                    ; $7014: $77
    dec b                                         ; $7015: $05
    adc l                                         ; $7016: $8d

jr_02d_7017:
    ld e, $d0                                     ; $7017: $1e $d0
    ld a, [de]                                    ; $7019: $1a
    xor a                                         ; $701a: $af
    dec de                                        ; $701b: $1b
    db $e3                                        ; $701c: $e3
    ld e, d                                       ; $701d: $5a
    xor c                                         ; $701e: $a9
    or e                                          ; $701f: $b3
    rst $10                                       ; $7020: $d7
    db $fd                                        ; $7021: $fd
    or d                                          ; $7022: $b2
    rst $28                                       ; $7023: $ef
    ld l, h                                       ; $7024: $6c
    ld c, e                                       ; $7025: $4b
    ld hl, $6f29                                  ; $7026: $21 $29 $6f
    ld bc, $95c7                                  ; $7029: $01 $c7 $95
    db $fd                                        ; $702c: $fd
    ld a, e                                       ; $702d: $7b
    call $8d6c                                    ; $702e: $cd $6c $8d
    push bc                                       ; $7031: $c5

Jump_02d_7032:
    cp b                                          ; $7032: $b8
    halt                                          ; $7033: $76
    dec a                                         ; $7034: $3d
    ldh a, [$58]                                  ; $7035: $f0 $58
    sbc l                                         ; $7037: $9d
    ld e, l                                       ; $7038: $5d
    and d                                         ; $7039: $a2
    db $dd                                        ; $703a: $dd
    ret z                                         ; $703b: $c8

    ld e, b                                       ; $703c: $58
    jp z, Jump_000_275b                           ; $703d: $ca $5b $27

    ret c                                         ; $7040: $d8

    sbc d                                         ; $7041: $9a
    ld [bc], a                                    ; $7042: $02
    adc l                                         ; $7043: $8d
    add hl, sp                                    ; $7044: $39
    adc l                                         ; $7045: $8d
    dec hl                                        ; $7046: $2b
    halt                                          ; $7047: $76
    dec a                                         ; $7048: $3d
    ldh a, [rNR23]                                ; $7049: $f0 $18
    rst $10                                       ; $704b: $d7
    ld a, [de]                                    ; $704c: $1a
    ld d, a                                       ; $704d: $57
    add l                                         ; $704e: $85
    ld [hl], l                                    ; $704f: $75
    ld e, l                                       ; $7050: $5d
    or e                                          ; $7051: $b3
    rst $38                                       ; $7052: $ff
    ld l, a                                       ; $7053: $6f
    ld e, d                                       ; $7054: $5a
    cp h                                          ; $7055: $bc
    ld c, a                                       ; $7056: $4f
    db $d3                                        ; $7057: $d3
    rra                                           ; $7058: $1f
    db $db                                        ; $7059: $db
    add b                                         ; $705a: $80
    sub d                                         ; $705b: $92
    dec bc                                        ; $705c: $0b
    add e                                         ; $705d: $83
    db $f4                                        ; $705e: $f4
    sbc d                                         ; $705f: $9a
    ld b, a                                       ; $7060: $47
    ld hl, sp+$7e                                 ; $7061: $f8 $7e
    ld c, h                                       ; $7063: $4c
    or h                                          ; $7064: $b4
    call nc, $fb23                                ; $7065: $d4 $23 $fb
    sbc b                                         ; $7068: $98
    ld bc, $2de5                                  ; $7069: $01 $e5 $2d
    daa                                           ; $706c: $27
    ret c                                         ; $706d: $d8

    jp nz, $d14a                                  ; $706e: $c2 $4a $d1

    cp b                                          ; $7071: $b8
    ld h, d                                       ; $7072: $62
    adc l                                         ; $7073: $8d
    cp a                                          ; $7074: $bf
    or h                                          ; $7075: $b4
    ld [hl+], a                                   ; $7076: $22
    inc b                                         ; $7077: $04
    ld e, $0b                                     ; $7078: $1e $0b
    adc l                                         ; $707a: $8d
    db $fc                                        ; $707b: $fc
    ld bc, $19a3                                  ; $707c: $01 $a3 $19
    call z, $7e75                                 ; $707f: $cc $75 $7e
    dec a                                         ; $7082: $3d
    xor [hl]                                      ; $7083: $ae
    ld a, d                                       ; $7084: $7a
    rla                                           ; $7085: $17
    db $db                                        ; $7086: $db
    jr nz, @-$1c                                  ; $7087: $20 $e2

    and [hl]                                      ; $7089: $a6
    db $e4                                        ; $708a: $e4
    ld a, [hl+]                                   ; $708b: $2a
    jp $9618                                      ; $708c: $c3 $18 $96


    db $fd                                        ; $708f: $fd
    ld a, e                                       ; $7090: $7b
    call $8d6c                                    ; $7091: $cd $6c $8d
    push bc                                       ; $7094: $c5
    cp b                                          ; $7095: $b8
    ld d, $56                                     ; $7096: $16 $56
    adc d                                         ; $7098: $8a
    add $b5                                       ; $7099: $c6 $b5
    xor e                                         ; $709b: $ab
    ld e, b                                       ; $709c: $58
    add h                                         ; $709d: $84
    ld a, [c]                                     ; $709e: $f2
    ld d, $f5                                     ; $709f: $16 $f5
    or l                                          ; $70a1: $b5
    xor a                                         ; $70a2: $af
    add l                                         ; $70a3: $85
    ld h, c                                       ; $70a4: $61
    xor h                                         ; $70a5: $ac
    ld [$d2ba], a                                 ; $70a6: $ea $ba $d2
    ld a, [de]                                    ; $70a9: $1a
    adc e                                         ; $70aa: $8b
    cp l                                          ; $70ab: $bd
    xor $87                                       ; $70ac: $ee $87
    ld h, l                                       ; $70ae: $65
    ld l, c                                       ; $70af: $69
    inc bc                                        ; $70b0: $03
    sbc d                                         ; $70b1: $9a
    sub l                                         ; $70b2: $95
    ld [hl+], a                                   ; $70b3: $22
    rst $08                                       ; $70b4: $cf
    ld e, e                                       ; $70b5: $5b
    ld b, a                                       ; $70b6: $47
    dec b                                         ; $70b7: $05
    push de                                       ; $70b8: $d5
    cp e                                          ; $70b9: $bb
    or h                                          ; $70ba: $b4
    inc c                                         ; $70bb: $0c
    ld l, b                                       ; $70bc: $68
    ld b, l                                       ; $70bd: $45
    cp e                                          ; $70be: $bb
    ld e, $78                                     ; $70bf: $1e $78
    adc h                                         ; $70c1: $8c
    ld l, e                                       ; $70c2: $6b
    push de                                       ; $70c3: $d5
    adc l                                         ; $70c4: $8d
    xor h                                         ; $70c5: $ac
    ld a, d                                       ; $70c6: $7a
    sbc $b0                                       ; $70c7: $de $b0
    ld e, a                                       ; $70c9: $5f
    ld l, b                                       ; $70ca: $68
    or [hl]                                       ; $70cb: $b6
    add d                                         ; $70cc: $82
    add d                                         ; $70cd: $82
    pop hl                                        ; $70ce: $e1
    add l                                         ; $70cf: $85
    or l                                          ; $70d0: $b5
    add a                                         ; $70d1: $87
    xor $64                                       ; $70d2: $ee $64
    ld d, b                                       ; $70d4: $50
    ret                                           ; $70d5: $c9


    ret nz                                        ; $70d6: $c0

    dec e                                         ; $70d7: $1d
    cp $aa                                        ; $70d8: $fe $aa
    cp e                                          ; $70da: $bb
    adc l                                         ; $70db: $8d
    inc hl                                        ; $70dc: $23
    xor l                                         ; $70dd: $ad
    ld b, a                                       ; $70de: $47
    bit 3, e                                      ; $70df: $cb $5b
    daa                                           ; $70e1: $27
    ld l, b                                       ; $70e2: $68
    rst $10                                       ; $70e3: $d7
    inc bc                                        ; $70e4: $03
    adc a                                         ; $70e5: $8f
    ld [hl], c                                    ; $70e6: $71
    xor l                                         ; $70e7: $ad
    cp d                                          ; $70e8: $ba
    sub c                                         ; $70e9: $91
    ld d, l                                       ; $70ea: $55
    rst $08                                       ; $70eb: $cf
    dec de                                        ; $70ec: $1b
    or $0b                                        ; $70ed: $f6 $0b
    adc l                                         ; $70ef: $8d
    jp $7f1a                                      ; $70f0: $c3 $1a $7f


    ld l, c                                       ; $70f3: $69
    ld b, l                                       ; $70f4: $45
    ld [$1d7c], sp                                ; $70f5: $08 $7c $1d
    xor [hl]                                      ; $70f8: $ae
    ld h, e                                       ; $70f9: $63
    sbc $37                                       ; $70fa: $de $37
    sub [hl]                                      ; $70fc: $96
    sub l                                         ; $70fd: $95
    ld [hl-], a                                   ; $70fe: $32
    ld e, e                                       ; $70ff: $5b
    ld b, c                                       ; $7100: $41
    pop bc                                        ; $7101: $c1
    ld a, [de]                                    ; $7102: $1a
    di                                            ; $7103: $f3
    pop hl                                        ; $7104: $e1
    add l                                         ; $7105: $85
    ld a, c                                       ; $7106: $79
    dec bc                                        ; $7107: $0b
    push af                                       ; $7108: $f5
    or l                                          ; $7109: $b5
    ld c, d                                       ; $710a: $4a
    db $e3                                        ; $710b: $e3
    xor d                                         ; $710c: $aa
    db $ec                                        ; $710d: $ec
    ld [hl], e                                    ; $710e: $73
    db $ed                                        ; $710f: $ed
    ld a, d                                       ; $7110: $7a
    ld d, l                                       ; $7111: $55
    ld a, [bc]                                    ; $7112: $0a
    push af                                       ; $7113: $f5
    rst $00                                       ; $7114: $c7
    rst $28                                       ; $7115: $ef
    or a                                          ; $7116: $b7
    ld d, d                                       ; $7117: $52
    sub a                                         ; $7118: $97
    ld d, c                                       ; $7119: $51
    adc h                                         ; $711a: $8c
    ld b, c                                       ; $711b: $41
    db $fd                                        ; $711c: $fd
    xor a                                         ; $711d: $af
    ld c, a                                       ; $711e: $4f
    db $e3                                        ; $711f: $e3
    ld e, d                                       ; $7120: $5a
    jp c, Jump_000_2c2a                           ; $7121: $da $2a $2c

    ld b, l                                       ; $7124: $45
    or c                                          ; $7125: $b1
    ld [$0e15], a                                 ; $7126: $ea $15 $0e
    adc d                                         ; $7129: $8a
    cp h                                          ; $712a: $bc
    dec b                                         ; $712b: $05
    and a                                         ; $712c: $a7
    ld [c], a                                     ; $712d: $e2
    xor [hl]                                      ; $712e: $ae
    cp e                                          ; $712f: $bb
    add d                                         ; $7130: $82
    ld d, [hl]                                    ; $7131: $56
    or h                                          ; $7132: $b4
    db $eb                                        ; $7133: $eb
    add c                                         ; $7134: $81
    rst $00                                       ; $7135: $c7
    ld hl, sp+$5d                                 ; $7136: $f8 $5d
    rst $38                                       ; $7138: $ff
    ld h, d                                       ; $7139: $62
    db $db                                        ; $713a: $db
    daa                                           ; $713b: $27
    ld d, l                                       ; $713c: $55
    ld a, [$cb14]                                 ; $713d: $fa $14 $cb
    add b                                         ; $7140: $80
    ld b, [hl]                                    ; $7141: $46
    or b                                          ; $7142: $b0
    adc e                                         ; $7143: $8b
    dec l                                         ; $7144: $2d
    cp a                                          ; $7145: $bf
    ret c                                         ; $7146: $d8

    adc d                                         ; $7147: $8a
    db $e4                                        ; $7148: $e4
    or b                                          ; $7149: $b0
    inc l                                         ; $714a: $2c
    inc [hl]                                      ; $714b: $34
    ld a, [c]                                     ; $714c: $f2
    rlca                                          ; $714d: $07
    adc h                                         ; $714e: $8c
    ld d, [hl]                                    ; $714f: $56
    ld h, a                                       ; $7150: $67
    push hl                                       ; $7151: $e5
    xor [hl]                                      ; $7152: $ae
    adc $e4                                       ; $7153: $ce $e4
    or a                                          ; $7155: $b7
    ld a, [bc]                                    ; $7156: $0a
    jp hl                                         ; $7157: $e9


    or [hl]                                       ; $7158: $b6
    rst $38                                       ; $7159: $ff
    sbc h                                         ; $715a: $9c
    adc a                                         ; $715b: $8f
    jp Jump_000_07ae                              ; $715c: $c3 $ae $07


    push hl                                       ; $715f: $e5
    and c                                         ; $7160: $a1
    rst $20                                       ; $7161: $e7
    dec l                                         ; $7162: $2d
    rst $00                                       ; $7163: $c7
    sub l                                         ; $7164: $95
    push de                                       ; $7165: $d5
    call z, Call_02d_5f06                         ; $7166: $cc $06 $5f
    ld h, e                                       ; $7169: $63
    cp c                                          ; $716a: $b9
    ld a, l                                       ; $716b: $7d
    xor [hl]                                      ; $716c: $ae
    dec [hl]                                      ; $716d: $35
    ld e, b                                       ; $716e: $58
    rst $30                                       ; $716f: $f7
    jp nc, Jump_02d_555c                          ; $7170: $d2 $5c $55

    ld d, e                                       ; $7173: $53
    ld d, b                                       ; $7174: $50
    db $e3                                        ; $7175: $e3
    ld e, d                                       ; $7176: $5a
    ld b, c                                       ; $7177: $41
    add $15                                       ; $7178: $c6 $15
    xor e                                         ; $717a: $ab
    or e                                          ; $717b: $b3
    ld c, e                                       ; $717c: $4b
    or h                                          ; $717d: $b4
    dec de                                        ; $717e: $1b
    add hl, de                                    ; $717f: $19
    ld c, e                                       ; $7180: $4b
    ld sp, hl                                     ; $7181: $f9
    ld [$8d6b], a                                 ; $7182: $ea $6b $8d
    add hl, sp                                    ; $7185: $39
    ld l, d                                       ; $7186: $6a
    add hl, de                                    ; $7187: $19
    ret nc                                        ; $7188: $d0

    xor [hl]                                      ; $7189: $ae
    cp e                                          ; $718a: $bb

jr_02d_718b:
    add d                                         ; $718b: $82
    ld d, [hl]                                    ; $718c: $56
    ld l, h                                       ; $718d: $6c
    add hl, hl                                    ; $718e: $29
    ld c, h                                       ; $718f: $4c
    dec d                                         ; $7190: $15
    ld a, h                                       ; $7191: $7c
    call nz, $9bae                                ; $7192: $c4 $ae $9b
    ld bc, $2de5                                  ; $7195: $01 $e5 $2d
    daa                                           ; $7198: $27
    ret c                                         ; $7199: $d8

    jp nz, $d14a                                  ; $719a: $c2 $4a $d1

    jr c, jr_02d_718b                             ; $719d: $38 $ec

    ld a, d                                       ; $719f: $7a
    ldh [$31], a                                  ; $71a0: $e0 $31

Jump_02d_71a2:
    ld a, [hl]                                    ; $71a2: $7e
    rst $10                                       ; $71a3: $d7
    cp a                                          ; $71a4: $bf
    ret c                                         ; $71a5: $d8

    or $49                                        ; $71a6: $f6 $49
    sub l                                         ; $71a8: $95
    ld a, $c5                                     ; $71a9: $3e $c5
    ld b, d                                       ; $71ab: $42
    inc hl                                        ; $71ac: $23
    ld a, a                                       ; $71ad: $7f
    ret nz                                        ; $71ae: $c0

    ld l, b                                       ; $71af: $68
    ld a, [$5ae4]                                 ; $71b0: $fa $e4 $5a
    ld d, c                                       ; $71b3: $51
    adc h                                         ; $71b4: $8c
    dec bc                                        ; $71b5: $0b
    ld a, [hl-]                                   ; $71b6: $3a
    adc a                                         ; $71b7: $8f
    xor h                                         ; $71b8: $ac
    pop bc                                        ; $71b9: $c1
    ld [$2a39], sp                                ; $71ba: $08 $39 $2a
    ld h, [hl]                                    ; $71bd: $66
    or b                                          ; $71be: $b0
    call nc, Call_000_1a03                        ; $71bf: $d4 $03 $1a
    add a                                         ; $71c2: $87
    or c                                          ; $71c3: $b1
    xor l                                         ; $71c4: $ad
    sub h                                         ; $71c5: $94
    cp h                                          ; $71c6: $bc
    dec b                                         ; $71c7: $05
    daa                                           ; $71c8: $27
    ld l, b                                       ; $71c9: $68
    rst $10                                       ; $71ca: $d7
    inc bc                                        ; $71cb: $03
    adc a                                         ; $71cc: $8f
    ld [hl], c                                    ; $71cd: $71
    adc l                                         ; $71ce: $8d
    rst $18                                       ; $71cf: $df
    jp nc, $a1fa                                  ; $71d0: $d2 $fa $a1

    ld e, l                                       ; $71d3: $5d
    rst $28                                       ; $71d4: $ef
    sub e                                         ; $71d5: $93
    ld l, e                                       ; $71d6: $6b
    ld b, l                                       ; $71d7: $45
    or c                                          ; $71d8: $b1
    db $f4                                        ; $71d9: $f4
    di                                            ; $71da: $f3
    ld c, e                                       ; $71db: $4b
    ld sp, $eb0e                                  ; $71dc: $31 $0e $eb
    ld h, b                                       ; $71df: $60
    ld h, l                                       ; $71e0: $65
    or [hl]                                       ; $71e1: $b6
    add d                                         ; $71e2: $82
    add d                                         ; $71e3: $82
    push de                                       ; $71e4: $d5
    reti                                          ; $71e5: $d9


    dec h                                         ; $71e6: $25
    jp c, $8c8d                                   ; $71e7: $da $8d $8c

    and l                                         ; $71ea: $a5
    cp h                                          ; $71eb: $bc
    dec b                                         ; $71ec: $05
    daa                                           ; $71ed: $27

Call_02d_71ee:
    ld l, b                                       ; $71ee: $68
    add hl, hl                                    ; $71ef: $29
    ld [hl], b                                    ; $71f0: $70
    add hl, de                                    ; $71f1: $19
    adc h                                         ; $71f2: $8c
    jp $7f1a                                      ; $71f3: $c3 $1a $7f


    ld l, c                                       ; $71f6: $69
    ld b, l                                       ; $71f7: $45
    ld [$277c], sp                                ; $71f8: $08 $7c $27
    inc bc                                        ; $71fb: $03
    cp d                                          ; $71fc: $ba
    xor e                                         ; $71fd: $ab
    sub h                                         ; $71fe: $94
    add hl, hl                                    ; $71ff: $29
    ld l, b                                       ; $7200: $68
    adc l                                         ; $7201: $8d

jr_02d_7202:
    ld sp, hl                                     ; $7202: $f9
    ld c, d                                       ; $7203: $4a
    sbc l                                         ; $7204: $9d
    ld a, h                                       ; $7205: $7c
    daa                                           ; $7206: $27
    ret c                                         ; $7207: $d8

    xor [hl]                                      ; $7208: $ae
    ld h, d                                       ; $7209: $62
    ld de, $d71a                                  ; $720a: $11 $1a $d7
    ld hl, sp+$2d                                 ; $720d: $f8 $2d
    xor l                                         ; $720f: $ad
    rra                                           ; $7210: $1f
    jp c, Jump_000_3ef5                           ; $7211: $da $f5 $3e

    cp c                                          ; $7214: $b9
    ld d, [hl]                                    ; $7215: $56
    inc d                                         ; $7216: $14
    ld c, e                                       ; $7217: $4b
    ccf                                           ; $7218: $3f
    cp a                                          ; $7219: $bf
    inc d                                         ; $721a: $14
    db $e3                                        ; $721b: $e3
    or b                                          ; $721c: $b0
    ld c, $56                                     ; $721d: $0e $56
    add $1f                                       ; $721f: $c6 $1f
    jp nc, Jump_000_26ba                          ; $7221: $d2 $ba $26

    rst $10                                       ; $7224: $d7
    add sp, $01                                   ; $7225: $e8 $01
    xor l                                         ; $7227: $ad
    pop af                                        ; $7228: $f1
    cp d                                          ; $7229: $ba
    sub c                                         ; $722a: $91
    or a                                          ; $722b: $b7
    daa                                           ; $722c: $27
    ret c                                         ; $722d: $d8

    sbc d                                         ; $722e: $9a
    rst $20                                       ; $722f: $e7
    and h                                         ; $7230: $a4
    ld d, l                                       ; $7231: $55
    ld a, [$69f6]                                 ; $7232: $fa $f6 $69
    ld [hl], l                                    ; $7235: $75
    ld d, [hl]                                    ; $7236: $56
    xor $37                                       ; $7237: $ee $37
    ld [hl-], a                                   ; $7239: $32
    sub [hl]                                      ; $723a: $96
    ld d, $d0                                     ; $723b: $16 $d0
    call c, $051c                                 ; $723d: $dc $1c $05
    ld a, $ae                                     ; $7240: $3e $ae
    dec d                                         ; $7242: $15
    ld e, e                                       ; $7243: $5b
    ld a, [bc]                                    ; $7244: $0a
    ld d, e                                       ; $7245: $53
    dec b                                         ; $7246: $05
    rra                                           ; $7247: $1f
    or c                                          ; $7248: $b1
    db $eb                                        ; $7249: $eb
    ld h, [hl]                                    ; $724a: $66
    ld b, b                                       ; $724b: $40
    dec bc                                        ; $724c: $0b
    adc l                                         ; $724d: $8d
    db $fc                                        ; $724e: $fc
    ld bc, $71a3                                  ; $724f: $01 $a3 $71
    xor l                                         ; $7252: $ad
    call c, $c80d                                 ; $7253: $dc $0d $c8
    or l                                          ; $7256: $b5
    xor e                                         ; $7257: $ab
    dec sp                                        ; $7258: $3b
    cp d                                          ; $7259: $ba
    adc l                                         ; $725a: $8d
    jp Jump_02d_56d8                              ; $725b: $c3 $d8 $56


    ld c, d                                       ; $725e: $4a
    ld [hl], d                                    ; $725f: $72
    ld a, [$db4b]                                 ; $7260: $fa $4b $db
    and l                                         ; $7263: $a5
    ld [hl], c                                    ; $7264: $71
    xor l                                         ; $7265: $ad
    ret c                                         ; $7266: $d8

    jp nz, $d14a                                  ; $7267: $c2 $4a $d1

    cp b                                          ; $726a: $b8
    add $6f                                       ; $726b: $c6 $6f
    ld l, c                                       ; $726d: $69
    db $fd                                        ; $726e: $fd
    ret nc                                        ; $726f: $d0

    xor [hl]                                      ; $7270: $ae
    rst $30                                       ; $7271: $f7
    ret                                           ; $7272: $c9


    or l                                          ; $7273: $b5
    and d                                         ; $7274: $a2
    ld e, b                                       ; $7275: $58
    ld a, [$a5f9]                                 ; $7276: $fa $f9 $a5
    jr jr_02d_7202                                ; $7279: $18 $87

    ld [hl], l                                    ; $727b: $75
    or b                                          ; $727c: $b0
    sub d                                         ; $727d: $92
    or a                                          ; $727e: $b7
    push af                                       ; $727f: $f5
    or l                                          ; $7280: $b5
    xor a                                         ; $7281: $af
    ld sp, $630f                                  ; $7282: $31 $0f $63
    adc l                                         ; $7285: $8d
    push bc                                       ; $7286: $c5
    sbc d                                         ; $7287: $9a
    rlca                                          ; $7288: $07
    sbc [hl]                                      ; $7289: $9e
    add c                                         ; $728a: $81
    add a                                         ; $728b: $87
    set 2, [hl]                                   ; $728c: $cb $d6
    ld hl, sp-$3d                                 ; $728e: $f8 $c3
    sbc b                                         ; $7290: $98
    dec hl                                        ; $7291: $2b
    ld c, b                                       ; $7292: $48
    cp [hl]                                       ; $7293: $be
    dec de                                        ; $7294: $1b
    inc hl                                        ; $7295: $23
    inc l                                         ; $7296: $2c
    push hl                                       ; $7297: $e5
    or [hl]                                       ; $7298: $b6
    ld b, [hl]                                    ; $7299: $46
    sbc a                                         ; $729a: $9f
    db $db                                        ; $729b: $db
    and a                                         ; $729c: $a7
    dec d                                         ; $729d: $15
    push bc                                       ; $729e: $c5
    xor [hl]                                      ; $729f: $ae
    rlca                                          ; $72a0: $07
    ld e, $e3                                     ; $72a1: $1e $e3
    ld [hl], a                                    ; $72a3: $77
    ld [hl], $06                                  ; $72a4: $36 $06
    dec a                                         ; $72a6: $3d
    ld [hl], h                                    ; $72a7: $74
    adc l                                         ; $72a8: $8d
    ld l, e                                       ; $72a9: $6b
    push bc                                       ; $72aa: $c5
    ld d, [hl]                                    ; $72ab: $56
    add hl, de                                    ; $72ac: $19
    dec bc                                        ; $72ad: $0b
    dec [hl]                                      ; $72ae: $35
    dec hl                                        ; $72af: $2b
    rst $08                                       ; $72b0: $cf
    ld h, e                                       ; $72b1: $63
    add hl, de                                    ; $72b2: $19
    ret nc                                        ; $72b3: $d0

    adc d                                         ; $72b4: $8a
    sub $f8                                       ; $72b5: $d6 $f8
    ld c, e                                       ; $72b7: $4b
    dec hl                                        ; $72b8: $2b
    ld b, d                                       ; $72b9: $42
    ldh [$8b], a                                  ; $72ba: $e0 $8b
    cp e                                          ; $72bc: $bb
    ld a, $7f                                     ; $72bd: $3e $7f
    ld c, [hl]                                    ; $72bf: $4e
    and e                                         ; $72c0: $a3
    rlca                                          ; $72c1: $07
    or h                                          ; $72c2: $b4
    and d                                         ; $72c3: $a2
    sub c                                         ; $72c4: $91
    xor d                                         ; $72c5: $aa
    ld h, $f2                                     ; $72c6: $26 $f2
    ld d, $a7                                     ; $72c8: $16 $a7
    ld [c], a                                     ; $72ca: $e2
    ld [$b176], sp                                ; $72cb: $08 $76 $b1
    push hl                                       ; $72ce: $e5
    rla                                           ; $72cf: $17
    ld e, e                                       ; $72d0: $5b
    or c                                          ; $72d1: $b1
    and d                                         ; $72d2: $a2
    ld e, l                                       ; $72d3: $5d
    rrca                                          ; $72d4: $0f
    inc a                                         ; $72d5: $3c
    add $ef                                       ; $72d6: $c6 $ef
    ld l, h                                       ; $72d8: $6c
    inc c                                         ; $72d9: $0c
    ld a, d                                       ; $72da: $7a
    add sp, $1a                                   ; $72db: $e8 $1a
    rst $10                                       ; $72dd: $d7
    adc d                                         ; $72de: $8a
    xor l                                         ; $72df: $ad
    ld [hl-], a                                   ; $72e0: $32
    ld d, $2a                                     ; $72e1: $16 $2a

jr_02d_72e3:
    cp c                                          ; $72e3: $b9
    db $eb                                        ; $72e4: $eb
    xor [hl]                                      ; $72e5: $ae
    and b                                         ; $72e6: $a0
    push de                                       ; $72e7: $d5
    reti                                          ; $72e8: $d9


    dec h                                         ; $72e9: $25
    jp c, $8c8d                                   ; $72ea: $da $8d $8c

    and l                                         ; $72ed: $a5
    ld h, l                                       ; $72ee: $65
    ld b, b                                       ; $72ef: $40
    db $eb                                        ; $72f0: $eb
    pop de                                        ; $72f1: $d1
    ld d, $5a                                     ; $72f2: $16 $5a
    ld h, e                                       ; $72f4: $63
    ld de, $5bca                                  ; $72f5: $11 $ca $5b
    daa                                           ; $72f8: $27
    jr z, jr_02d_7371                             ; $72f9: $28 $76

    dec hl                                        ; $72fb: $2b
    ld [hl], l                                    ; $72fc: $75
    add hl, de                                    ; $72fd: $19
    push bc                                       ; $72fe: $c5
    cp b                                          ; $72ff: $b8
    ld h, d                                       ; $7300: $62
    ld d, a                                       ; $7301: $57
    or c                                          ; $7302: $b1
    ld [$02c5], sp                                ; $7303: $08 $c5 $02
    sbc d                                         ; $7306: $9a
    sbc e                                         ; $7307: $9b
    and e                                         ; $7308: $a3
    ret nz                                        ; $7309: $c0

    dec d                                         ; $730a: $15
    xor e                                         ; $730b: $ab
    xor $ef                                       ; $730c: $ee $ef
    db $d3                                        ; $730e: $d3
    jr c, jr_02d_72e3                             ; $730f: $38 $d2

    cp b                                          ; $7311: $b8
    add $15                                       ; $7312: $c6 $15
    sub a                                         ; $7314: $97
    ld a, $77                                     ; $7315: $3e $77
    push hl                                       ; $7317: $e5
    dec sp                                        ; $7318: $3b
    add hl, de                                    ; $7319: $19

Call_02d_731a:
Jump_02d_731a:
    xor $0a                                       ; $731a: $ee $0a
    xor d                                         ; $731c: $aa
    ld [hl], a                                    ; $731d: $77
    ld l, c                                       ; $731e: $69
    add hl, de                                    ; $731f: $19
    cp b                                          ; $7320: $b8
    cp a                                          ; $7321: $bf
    cp a                                          ; $7322: $bf
    or h                                          ; $7323: $b4
    ld hl, $1ed5                                  ; $7324: $21 $d5 $1e
    jp c, $c702                                   ; $7327: $da $02 $c7

    sub l                                         ; $732a: $95
    db $fd                                        ; $732b: $fd
    ld a, e                                       ; $732c: $7b
    call $8d6c                                    ; $732d: $cd $6c $8d
    push bc                                       ; $7330: $c5
    cp b                                          ; $7331: $b8
    halt                                          ; $7332: $76
    dec a                                         ; $7333: $3d
    ldh a, [rNR23]                                ; $7334: $f0 $18
    rst $10                                       ; $7336: $d7
    ld a, [de]                                    ; $7337: $1a
    ld d, a                                       ; $7338: $57
    add l                                         ; $7339: $85
    ld [hl], l                                    ; $733a: $75
    ld e, l                                       ; $733b: $5d
    or e                                          ; $733c: $b3
    rst $38                                       ; $733d: $ff
    ld l, a                                       ; $733e: $6f
    ld a, [de]                                    ; $733f: $1a
    ld e, [hl]                                    ; $7340: $5e
    sbc b                                         ; $7341: $98
    or a                                          ; $7342: $b7
    add a                                         ; $7343: $87
    jp Jump_02d_7f05                              ; $7344: $c3 $05 $7f


    ld e, h                                       ; $7347: $5c

Jump_02d_7348:
    or c                                          ; $7348: $b1
    db $eb                                        ; $7349: $eb
    add c                                         ; $734a: $81
    rst $00                                       ; $734b: $c7
    ld hl, sp-$05                                 ; $734c: $f8 $fb
    rst $38                                       ; $734e: $ff
    ld d, $c3                                     ; $734f: $16 $c3
    dec bc                                        ; $7351: $0b
    rst $30                                       ; $7352: $f7
    rst $28                                       ; $7353: $ef
    ld a, [bc]                                    ; $7354: $0a
    ld e, d                                       ; $7355: $5a
    add b                                         ; $7356: $80
    xor a                                         ; $7357: $af
    ld a, d                                       ; $7358: $7a
    ld a, a                                       ; $7359: $7f
    xor d                                         ; $735a: $aa
    sbc d                                         ; $735b: $9a
    ld a, [c]                                     ; $735c: $f2
    ld [hl], b                                    ; $735d: $70
    inc e                                         ; $735e: $1c
    ld b, [hl]                                    ; $735f: $46
    xor d                                         ; $7360: $aa
    sbc d                                         ; $7361: $9a
    ret z                                         ; $7362: $c8

    ld e, e                                       ; $7363: $5b
    daa                                           ; $7364: $27
    db $fd                                        ; $7365: $fd
    ld d, l                                       ; $7366: $55
    ld [hl], a                                    ; $7367: $77
    dec de                                        ; $7368: $1b
    ld b, a                                       ; $7369: $47
    ld e, d                                       ; $736a: $5a
    ld b, $34                                     ; $736b: $06 $34
    ld a, d                                       ; $736d: $7a
    db $10                                        ; $736e: $10
    dec hl                                        ; $736f: $2b
    adc d                                         ; $7370: $8a

jr_02d_7371:
    ld e, l                                       ; $7371: $5d
    rrca                                          ; $7372: $0f
    inc a                                         ; $7373: $3c
    add $b5                                       ; $7374: $c6 $b5
    add $55                                       ; $7376: $c6 $55
    ld h, c                                       ; $7378: $61
    ld e, l                                       ; $7379: $5d
    rst $10                                       ; $737a: $d7
    db $ec                                        ; $737b: $ec
    rst $38                                       ; $737c: $ff
    sbc e                                         ; $737d: $9b
    ld d, $ef                                     ; $737e: $16 $ef
    db $d3                                        ; $7380: $d3
    inc c                                         ; $7381: $0c
    sub [hl]                                      ; $7382: $96
    ld bc, $c723                                  ; $7383: $01 $23 $c7
    cp d                                          ; $7386: $ba
    sub l                                         ; $7387: $95
    halt                                          ; $7388: $76
    inc hl                                        ; $7389: $23
    ld h, e                                       ; $738a: $63
    ld l, c                                       ; $738b: $69
    rrca                                          ; $738c: $0f
    sub $14                                       ; $738d: $d6 $14
    adc b                                         ; $738f: $88
    and l                                         ; $7390: $a5

jr_02d_7391:
    inc l                                         ; $7391: $2c
    ld a, [c]                                     ; $7392: $f2
    ld d, $9d                                     ; $7393: $16 $9d
    ld e, $c4                                     ; $7395: $1e $c4
    adc d                                         ; $7397: $8a
    ld h, d                                       ; $7398: $62
    rst $10                                       ; $7399: $d7
    inc bc                                        ; $739a: $03
    adc a                                         ; $739b: $8f
    ld [hl], c                                    ; $739c: $71
    xor l                                         ; $739d: $ad
    ld [hl], c                                    ; $739e: $71
    ld d, l                                       ; $739f: $55
    ld e, b                                       ; $73a0: $58
    rst $10                                       ; $73a1: $d7
    dec [hl]                                      ; $73a2: $35
    ei                                            ; $73a3: $fb
    rst $38                                       ; $73a4: $ff
    and [hl]                                      ; $73a5: $a6
    push bc                                       ; $73a6: $c5
    ei                                            ; $73a7: $fb
    inc [hl]                                      ; $73a8: $34
    cp $fe                                        ; $73a9: $fe $fe
    cp a                                          ; $73ab: $bf
    push bc                                       ; $73ac: $c5
    inc c                                         ; $73ad: $0c
    ld a, [hl-]                                   ; $73ae: $3a
    rst $28                                       ; $73af: $ef
    ld b, [hl]                                    ; $73b0: $46
    add $52                                       ; $73b1: $c6 $52
    inc c                                         ; $73b3: $0c

jr_02d_73b4:
    ld a, a                                       ; $73b4: $7f
    ld a, [$28e6]                                 ; $73b5: $fa $e6 $28
    ldh a, [$c8]                                  ; $73b8: $f0 $c8
    ld e, e                                       ; $73ba: $5b
    dec e                                         ; $73bb: $1d
    ld e, $2e                                     ; $73bc: $1e $2e
    ei                                            ; $73be: $fb
    ld l, [hl]                                    ; $73bf: $6e
    jr c, jr_02d_73b4                             ; $73c0: $38 $f2

    rlca                                          ; $73c2: $07
    call z, $956d                                 ; $73c3: $cc $6d $95
    ld h, d                                       ; $73c6: $62
    ld h, c                                       ; $73c7: $61
    and l                                         ; $73c8: $a5
    jr z, jr_02d_7391                             ; $73c9: $28 $c6

    or l                                          ; $73cb: $b5
    db $eb                                        ; $73cc: $eb
    add c                                         ; $73cd: $81
    rst $00                                       ; $73ce: $c7
    db $f4                                        ; $73cf: $f4
    ld [hl], a                                    ; $73d0: $77
    cp l                                          ; $73d1: $bd
    rra                                           ; $73d2: $1f
    ld d, b                                       ; $73d3: $50
    ret z                                         ; $73d4: $c8

    ld a, $ad                                     ; $73d5: $3e $ad
    ld l, b                                       ; $73d7: $68
    ld h, h                                       ; $73d8: $64
    xor c                                         ; $73d9: $a9
    ld [hl+], a                                   ; $73da: $22
    add e                                         ; $73db: $83
    pop af                                        ; $73dc: $f1
    cp e                                          ; $73dd: $bb
    and l                                         ; $73de: $a5
    db $d3                                        ; $73df: $d3
    ld a, b                                       ; $73e0: $78
    or c                                          ; $73e1: $b1
    adc l                                         ; $73e2: $8d
    and l                                         ; $73e3: $a5
    ld [hl], c                                    ; $73e4: $71
    ei                                            ; $73e5: $fb
    or c                                          ; $73e6: $b1
    ld h, d                                       ; $73e7: $62
    dec bc                                        ; $73e8: $0b
    dec hl                                        ; $73e9: $2b
    ld b, l                                       ; $73ea: $45
    cp e                                          ; $73eb: $bb
    ld e, [hl]                                    ; $73ec: $5e
    ld d, l                                       ; $73ed: $55
    pop bc                                        ; $73ee: $c1
    ld d, a                                       ; $73ef: $57
    sbc $02                                       ; $73f0: $de $02
    add a                                         ; $73f2: $87
    jp Jump_02d_7f05                              ; $73f3: $c3 $05 $7f


    ld e, h                                       ; $73f6: $5c
    or c                                          ; $73f7: $b1
    db $eb                                        ; $73f8: $eb
    add c                                         ; $73f9: $81
    rst $00                                       ; $73fa: $c7
    cp b                                          ; $73fb: $b8
    halt                                          ; $73fc: $76
    adc c                                         ; $73fd: $89
    halt                                          ; $73fe: $76
    inc hl                                        ; $73ff: $23
    ld h, e                                       ; $7400: $63
    ld l, c                                       ; $7401: $69
    ld e, a                                       ; $7402: $5f
    xor e                                         ; $7403: $ab
    inc [hl]                                      ; $7404: $34
    adc [hl]                                      ; $7405: $8e
    and c                                         ; $7406: $a1
    ld c, a                                       ; $7407: $4f
    res 0, b                                      ; $7408: $cb $80
    ld c, d                                       ; $740a: $4a
    ld b, $b4                                     ; $740b: $06 $b4
    adc e                                         ; $740d: $8b
    db $fd                                        ; $740e: $fd
    ld b, d                                       ; $740f: $42
    ld a, c                                       ; $7410: $79
    dec bc                                        ; $7411: $0b
    push af                                       ; $7412: $f5
    or l                                          ; $7413: $b5
    rr a                                          ; $7414: $cb $1f
    add $32                                       ; $7416: $c6 $32
    and b                                         ; $7418: $a0
    dec d                                         ; $7419: $15
    push bc                                       ; $741a: $c5
    xor [hl]                                      ; $741b: $ae
    rlca                                          ; $741c: $07
    ld e, $e3                                     ; $741d: $1e $e3
    ld e, d                                       ; $741f: $5a
    db $e3                                        ; $7420: $e3
    xor d                                         ; $7421: $aa
    or b                                          ; $7422: $b0
    xor [hl]                                      ; $7423: $ae
    ld l, e                                       ; $7424: $6b
    or $ff                                        ; $7425: $f6 $ff
    ld c, l                                       ; $7427: $4d
    ei                                            ; $7428: $fb
    rst $30                                       ; $7429: $f7
    rst $30                                       ; $742a: $f7
    ld l, c                                       ; $742b: $69
    adc l                                         ; $742c: $8d
    push bc                                       ; $742d: $c5
    ld a, [bc]                                    ; $742e: $0a
    ld a, [bc]                                    ; $742f: $0a
    add [hl]                                      ; $7430: $86
    rla                                           ; $7431: $17
    and $2d                                       ; $7432: $e6 $2d
    daa                                           ; $7434: $27
    ld l, b                                       ; $7435: $68
    adc l                                         ; $7436: $8d
    rst $18                                       ; $7437: $df
    jp nc, Jump_02d_71a2                          ; $7438: $d2 $a2 $71

    xor l                                         ; $743b: $ad
    or d                                          ; $743c: $b2
    ld d, l                                       ; $743d: $55
    add [hl]                                      ; $743e: $86
    pop af                                        ; $743f: $f1
    cp $aa                                        ; $7440: $fe $aa
    cp e                                          ; $7442: $bb
    adc l                                         ; $7443: $8d
    inc hl                                        ; $7444: $23
    adc l                                         ; $7445: $8d
    ld l, e                                       ; $7446: $6b
    ld e, h                                       ; $7447: $5c
    ld [hl], c                                    ; $7448: $71
    jp hl                                         ; $7449: $e9


    ld [hl], e                                    ; $744a: $73
    rst $10                                       ; $744b: $d7
    db $f4                                        ; $744c: $f4
    ld [hl], a                                    ; $744d: $77

jr_02d_744e:
    dec d                                         ; $744e: $15
    adc e                                         ; $744f: $8b
    ld d, b                                       ; $7450: $50
    cp [hl]                                       ; $7451: $be
    ld l, $6c                                     ; $7452: $2e $6c
    adc h                                         ; $7454: $8c
    add b                                         ; $7455: $80
    ld d, $3d                                     ; $7456: $16 $3d
    cp b                                          ; $7458: $b8
    ld a, [hl+]                                   ; $7459: $2a
    ld a, l                                       ; $745a: $7d
    ld a, [de]                                    ; $745b: $1a
    ld b, a                                       ; $745c: $47
    rst $10                                       ; $745d: $d7
    db $f4                                        ; $745e: $f4
    sub a                                         ; $745f: $97
    or d                                          ; $7460: $b2
    ret z                                         ; $7461: $c8

    ld e, e                                       ; $7462: $5b
    daa                                           ; $7463: $27
    ld a, $88                                     ; $7464: $3e $88
    dec d                                         ; $7466: $15
    push bc                                       ; $7467: $c5
    ld a, [de]                                    ; $7468: $1a
    ld d, a                                       ; $7469: $57
    add l                                         ; $746a: $85
    ld [hl], l                                    ; $746b: $75
    ld e, l                                       ; $746c: $5d
    or e                                          ; $746d: $b3
    rst $38                                       ; $746e: $ff
    ld l, a                                       ; $746f: $6f
    jp c, $fbfb                                   ; $7470: $da $fb $fb

    ld [hl], a                                    ; $7473: $77
    inc bc                                        ; $7474: $03
    or a                                          ; $7475: $b7
    dec [hl]                                      ; $7476: $35
    ld d, $e3                                     ; $7477: $16 $e3
    ld e, d                                       ; $7479: $5a
    jr nz, jr_02d_74f1                            ; $747a: $20 $75

    ld b, a                                       ; $747c: $47
    db $e3                                        ; $747d: $e3
    adc d                                         ; $747e: $8a
    ld e, l                                       ; $747f: $5d
    rrca                                          ; $7480: $0f
    inc a                                         ; $7481: $3c
    add [hl]                                      ; $7482: $86
    rla                                           ; $7483: $17
    and $2d                                       ; $7484: $e6 $2d
    rst $00                                       ; $7486: $c7
    ld a, $8f                                     ; $7487: $3e $8f
    add l                                         ; $7489: $85
    sbc h                                         ; $748a: $9c
    pop bc                                        ; $748b: $c1
    ld c, e                                       ; $748c: $4b
    ld a, c                                       ; $748d: $79
    dec bc                                        ; $748e: $0b
    daa                                           ; $748f: $27
    cp l                                          ; $7490: $bd
    rst $00                                       ; $7491: $c7
    ld c, [hl]                                    ; $7492: $4e
    ld c, $fe                                     ; $7493: $0e $fe
    ld a, [de]                                    ; $7495: $1a
    ld de, $fed2                                  ; $7496: $11 $d2 $fe
    inc bc                                        ; $7499: $03
    ld b, [hl]                                    ; $749a: $46
    ld b, $d3                                     ; $749b: $06 $d3
    sbc a                                         ; $749d: $9f
    ccf                                           ; $749e: $3f
    jr nz, jr_02d_744e                            ; $749f: $20 $ad

    ld a, c                                       ; $74a1: $79
    ldh [$0b], a                                  ; $74a2: $e0 $0b
    push bc                                       ; $74a4: $c5
    xor [hl]                                      ; $74a5: $ae
    rlca                                          ; $74a6: $07
    ld e, $b5                                     ; $74a7: $1e $b5
    adc c                                         ; $74a9: $89
    dec sp                                        ; $74aa: $3b
    adc d                                         ; $74ab: $8a
    or $ba                                        ; $74ac: $f6 $ba
    rra                                           ; $74ae: $1f
    ld h, e                                       ; $74af: $63
    push af                                       ; $74b0: $f5
    xor b                                         ; $74b1: $a8
    ld e, $96                                     ; $74b2: $1e $96
    jp c, Jump_02d_5b43                           ; $74b4: $da $43 $5b

    daa                                           ; $74b7: $27
    ld b, c                                       ; $74b8: $41
    xor d                                         ; $74b9: $aa
    and b                                         ; $74ba: $a0
    ld [$0f55], a                                 ; $74bb: $ea $55 $0f
    sub e                                         ; $74be: $93
    db $eb                                        ; $74bf: $eb
    jr z, jr_02d_74f3                             ; $74c0: $28 $31

    adc d                                         ; $74c2: $8a
    cp h                                          ; $74c3: $bc
    dec b                                         ; $74c4: $05
    add a                                         ; $74c5: $87
    sub a                                         ; $74c6: $97
    rst $20                                       ; $74c7: $e7
    or c                                          ; $74c8: $b1
    ld l, h                                       ; $74c9: $6c
    adc l                                         ; $74ca: $8d
    ld sp, $918c                                  ; $74cb: $31 $8c $91
    add $df                                       ; $74ce: $c6 $df
    rst $38                                       ; $74d0: $ff
    ld a, [c]                                     ; $74d1: $f2
    ld h, l                                       ; $74d2: $65
    ld b, b                                       ; $74d3: $40
    dec h                                         ; $74d4: $25
    inc bc                                        ; $74d5: $03
    jp c, $7ec5                                   ; $74d6: $da $c5 $7e

    and c                                         ; $74d9: $a1
    ld h, l                                       ; $74da: $65
    ld b, b                                       ; $74db: $40
    inc hl                                        ; $74dc: $23
    ret c                                         ; $74dd: $d8

    rst $10                                       ; $74de: $d7
    inc e                                         ; $74df: $1c
    inc hl                                        ; $74e0: $23
    inc bc                                        ; $74e1: $03
    adc d                                         ; $74e2: $8a
    dec [hl]                                      ; $74e3: $35
    ld d, $e3                                     ; $74e4: $16 $e3
    rst $30                                       ; $74e6: $f7
    rlca                                          ; $74e7: $07
    xor c                                         ; $74e8: $a9
    add d                                         ; $74e9: $82
    ld a, [c]                                     ; $74ea: $f2
    cp h                                          ; $74eb: $bc
    dec b                                         ; $74ec: $05
    add a                                         ; $74ed: $87
    ld d, e                                       ; $74ee: $53
    sbc [hl]                                      ; $74ef: $9e
    rst $20                                       ; $74f0: $e7

jr_02d_74f1:
    add a                                         ; $74f1: $87
    ld d, e                                       ; $74f2: $53

jr_02d_74f3:
    sbc [hl]                                      ; $74f3: $9e
    rst $20                                       ; $74f4: $e7
    add a                                         ; $74f5: $87
    db $d3                                        ; $74f6: $d3
    push bc                                       ; $74f7: $c5
    ld a, [hl]                                    ; $74f8: $7e
    nop                                           ; $74f9: $00
    ld d, l                                       ; $74fa: $55
    sbc [hl]                                      ; $74fb: $9e
    rst $20                                       ; $74fc: $e7
    dec l                                         ; $74fd: $2d
    rst $00                                       ; $74fe: $c7
    ld [c], a                                     ; $74ff: $e2
    ret c                                         ; $7500: $d8

    jr c, jr_02d_7539                             ; $7501: $38 $36

    adc [hl]                                      ; $7503: $8e
    adc l                                         ; $7504: $8d
    ld a, c                                       ; $7505: $79
    sbc [hl]                                      ; $7506: $9e
    or a                                          ; $7507: $b7
    add a                                         ; $7508: $87
    db $d3                                        ; $7509: $d3
    push bc                                       ; $750a: $c5
    ld a, [hl]                                    ; $750b: $7e
    ld d, b                                       ; $750c: $50
    dec h                                         ; $750d: $25
    rla                                           ; $750e: $17
    rra                                           ; $750f: $1f
    db $d3                                        ; $7510: $d3
    ret                                           ; $7511: $c9


    push bc                                       ; $7512: $c5
    rst $00                                       ; $7513: $c7
    ld [hl], h                                    ; $7514: $74
    sbc [hl]                                      ; $7515: $9e
    rst $20                                       ; $7516: $e7
    dec l                                         ; $7517: $2d
    dec e                                         ; $7518: $1d
    ld [$a875], a                                 ; $7519: $ea $75 $a8
    rst $10                                       ; $751c: $d7
    pop hl                                        ; $751d: $e1
    db $fd                                        ; $751e: $fd
    ld b, b                                       ; $751f: $40
    add c                                         ; $7520: $81
    xor a                                         ; $7521: $af
    db $e3                                        ; $7522: $e3
    inc hl                                        ; $7523: $23
    sub d                                         ; $7524: $92
    daa                                           ; $7525: $27

jr_02d_7526:
    rst $10                                       ; $7526: $d7
    dec [hl]                                      ; $7527: $35
    add hl, hl                                    ; $7528: $29
    ld [$0f31], a                                 ; $7529: $ea $31 $0f
    ld h, d                                       ; $752c: $62

Call_02d_752d:
    sub l                                         ; $752d: $95
    dec d                                         ; $752e: $15
    db $e3                                        ; $752f: $e3
    xor d                                         ; $7530: $aa
    dec a                                         ; $7531: $3d
    or h                                          ; $7532: $b4
    dec b                                         ; $7533: $05
    daa                                           ; $7534: $27
    cp [hl]                                       ; $7535: $be
    sbc a                                         ; $7536: $9f
    ld e, h                                       ; $7537: $5c
    ld h, l                                       ; $7538: $65

jr_02d_7539:
    jr jr_02d_7526                                ; $7539: $18 $eb

    jr z, jr_02d_756e                             ; $753b: $28 $31

    adc d                                         ; $753d: $8a

Jump_02d_753e:
    ld sp, $4fa8                                  ; $753e: $31 $a8 $4f
    db $e3                                        ; $7541: $e3
    ld e, d                                       ; $7542: $5a

jr_02d_7543:
    and l                                         ; $7543: $a5
    ld h, l                                       ; $7544: $65
    adc e                                         ; $7545: $8b
    db $e4                                        ; $7546: $e4
    add e                                         ; $7547: $83
    xor a                                         ; $7548: $af
    ld d, l                                       ; $7549: $55
    ld d, [hl]                                    ; $754a: $56
    ld l, [hl]                                    ; $754b: $6e
    inc e                                         ; $754c: $1c
    cpl                                           ; $754d: $2f
    jp nz, $f3f7                                  ; $754e: $c2 $f7 $f3

    dec e                                         ; $7551: $1d
    ld c, [hl]                                    ; $7552: $4e
    rla                                           ; $7553: $17
    ei                                            ; $7554: $fb
    ld b, c                                       ; $7555: $41
    sub l                                         ; $7556: $95
    ld e, h                                       ; $7557: $5c
    ld a, h                                       ; $7558: $7c
    ld c, h                                       ; $7559: $4c
    rst $20                                       ; $755a: $e7
    ld a, c                                       ; $755b: $79
    sbc $02                                       ; $755c: $de $02
    ld b, a                                       ; $755e: $47
    sub $3b                                       ; $755f: $d6 $3b
    or d                                          ; $7561: $b2
    sbc $91                                       ; $7562: $de $91
    ld [hl], a                                    ; $7564: $77
    ld l, e                                       ; $7565: $6b
    cp h                                          ; $7566: $bc
    ld l, [hl]                                    ; $7567: $6e
    xor h                                         ; $7568: $ac
    jr z, jr_02d_7581                             ; $7569: $28 $16

    dec [hl]                                      ; $756b: $35
    ld d, l                                       ; $756c: $55
    ld b, e                                       ; $756d: $43

jr_02d_756e:
    db $dd                                        ; $756e: $dd
    ld d, l                                       ; $756f: $55
    adc d                                         ; $7570: $8a
    db $e4                                        ; $7571: $e4
    or d                                          ; $7572: $b2
    dec [hl]                                      ; $7573: $35
    adc [hl]                                      ; $7574: $8e
    ld l, [hl]                                    ; $7575: $6e
    jr jr_02d_7543                                ; $7576: $18 $cb

    add b                                         ; $7578: $80
    add $3c                                       ; $7579: $c6 $3c
    adc b                                         ; $757b: $88
    ld [hl], l                                    ; $757c: $75
    ld c, l                                       ; $757d: $4d
    adc d                                         ; $757e: $8a
    push bc                                       ; $757f: $c5
    add e                                         ; $7580: $83

jr_02d_7581:
    ld e, b                                       ; $7581: $58
    cp c                                          ; $7582: $b9
    dec hl                                        ; $7583: $2b
    sbc l                                         ; $7584: $9d
    ld d, $8d                                     ; $7585: $16 $8d
    rst $18                                       ; $7587: $df
    pop hl                                        ; $7588: $e1
    xor a                                         ; $7589: $af
    inc bc                                        ; $758a: $03
    ld e, h                                       ; $758b: $5c
    db $10                                        ; $758c: $10
    dec sp                                        ; $758d: $3b
    sbc h                                         ; $758e: $9c
    rst $28                                       ; $758f: $ef
    ld b, h                                       ; $7590: $44
    add e                                         ; $7591: $83
    db $10                                        ; $7592: $10
    ld d, h                                       ; $7593: $54
    ld a, c                                       ; $7594: $79
    sbc [hl]                                      ; $7595: $9e
    rst $28                                       ; $7596: $ef
    inc b                                         ; $7597: $04
    ld e, e                                       ; $7598: $5b
    ld h, l                                       ; $7599: $65
    push hl                                       ; $759a: $e5
    add $f1                                       ; $759b: $c6 $f1
    ld [hl+], a                                   ; $759d: $22
    ld a, h                                       ; $759e: $7c
    ld a, a                                       ; $759f: $7f
    inc e                                         ; $75a0: $1c
    sub $e1                                       ; $75a1: $d6 $e1
    add hl, sp                                    ; $75a3: $39
    inc hl                                        ; $75a4: $23
    add sp, $5c                                   ; $75a5: $e8 $5c
    sbc e                                         ; $75a7: $9b
    ret c                                         ; $75a8: $d8

    ld [bc], a                                    ; $75a9: $02
    and a                                         ; $75aa: $a7
    ld a, [hl]                                    ; $75ab: $7e
    ld c, h                                       ; $75ac: $4c
    rst $10                                       ; $75ad: $d7
    ld h, $b6                                     ; $75ae: $26 $b6
    sbc l                                         ; $75b0: $9d
    ld e, $d0                                     ; $75b1: $1e $d0
    ld [$6d2c], a                                 ; $75b3: $ea $2c $6d
    ld c, b                                       ; $75b6: $48
    ld sp, hl                                     ; $75b7: $f9
    or d                                          ; $75b8: $b2
    ld [hl], h                                    ; $75b9: $74
    pop hl                                        ; $75ba: $e1
    ld a, b                                       ; $75bb: $78
    dec a                                         ; $75bc: $3d
    ld e, [hl]                                    ; $75bd: $5e
    adc a                                         ; $75be: $8f
    xor e                                         ; $75bf: $ab
    or d                                          ; $75c0: $b2
    rst $08                                       ; $75c1: $cf
    dec [hl]                                      ; $75c2: $35
    ld hl, sp-$1d                                 ; $75c3: $f8 $e3
    ld h, d                                       ; $75c5: $62
    ld e, $fa                                     ; $75c6: $1e $fa
    and d                                         ; $75c8: $a2
    cp c                                          ; $75c9: $b9
    ld e, l                                       ; $75ca: $5d
    ld l, b                                       ; $75cb: $68
    ld h, l                                       ; $75cc: $65
    add hl, de                                    ; $75cd: $19
    ret nc                                        ; $75ce: $d0

    or d                                          ; $75cf: $b2
    dec [hl]                                      ; $75d0: $35
    cp a                                          ; $75d1: $bf
    add l                                         ; $75d2: $85
    sbc h                                         ; $75d3: $9c
    pop de                                        ; $75d4: $d1
    inc c                                         ; $75d5: $0c
    ld a, [hl-]                                   ; $75d6: $3a
    rst $28                                       ; $75d7: $ef
    ld d, [hl]                                    ; $75d8: $56
    ld [$8a32], a                                 ; $75d9: $ea $32 $8a
    dec [hl]                                      ; $75dc: $35
    push af                                       ; $75dd: $f5
    sbc d                                         ; $75de: $9a
    ld a, d                                       ; $75df: $7a
    ld c, l                                       ; $75e0: $4d
    add c                                         ; $75e1: $81
    sbc b                                         ; $75e2: $98
    ld sp, $aff6                                  ; $75e3: $31 $f6 $af
    ld e, e                                       ; $75e6: $5b
    inc h                                         ; $75e7: $24
    ld d, a                                       ; $75e8: $57
    push de                                       ; $75e9: $d5
    xor e                                         ; $75ea: $ab
    ld [$8655], a                                 ; $75eb: $ea $55 $86
    or c                                          ; $75ee: $b1
    db $eb                                        ; $75ef: $eb
    ld d, l                                       ; $75f0: $55
    sub l                                         ; $75f1: $95
    add $3c                                       ; $75f2: $c6 $3c
    adc b                                         ; $75f4: $88
    ld [hl], l                                    ; $75f5: $75
    ld c, l                                       ; $75f6: $4d
    adc d                                         ; $75f7: $8a
    dec e                                         ; $75f8: $1d
    ld l, e                                       ; $75f9: $6b
    xor $35                                       ; $75fa: $ee $35
    db $eb                                        ; $75fc: $eb
    ld e, b                                       ; $75fd: $58
    xor a                                         ; $75fe: $af
    ld h, e                                       ; $75ff: $63
    cp l                                          ; $7600: $bd
    adc [hl]                                      ; $7601: $8e
    adc a                                         ; $7602: $8f
    ld c, b                                       ; $7603: $48
    sbc [hl]                                      ; $7604: $9e
    rst $20                                       ; $7605: $e7
    ld a, c                                       ; $7606: $79
    dec bc                                        ; $7607: $0b
    ld b, a                                       ; $7608: $47
    pop de                                        ; $7609: $d1
    xor [hl]                                      ; $760a: $ae
    cp e                                          ; $760b: $bb
    add d                                         ; $760c: $82
    sub [hl]                                      ; $760d: $96
    add c                                         ; $760e: $81
    add a                                         ; $760f: $87
    or l                                          ; $7610: $b5
    add a                                         ; $7611: $87
    xor $d4                                       ; $7612: $ee $d4
    adc a                                         ; $7614: $8f
    jp hl                                         ; $7615: $e9


    cp h                                          ; $7616: $bc
    dec b                                         ; $7617: $05
    sbc l                                         ; $7618: $9d
    ld [$aa75], a                                 ; $7619: $ea $75 $aa
    ld b, a                                       ; $761c: $47
    cp $80                                        ; $761d: $fe $80
    sub c                                         ; $761f: $91
    xor a                                         ; $7620: $af
    call c, $13ed                                 ; $7621: $dc $ed $13
    sub $8b                                       ; $7624: $d6 $8b
    rst $20                                       ; $7626: $e7
    sub h                                         ; $7627: $94
    rst $28                                       ; $7628: $ef
    jr z, jr_02d_7645                             ; $7629: $28 $1a

    xor a                                         ; $762b: $af
    rst $00                                       ; $762c: $c7
    db $eb                                        ; $762d: $eb
    pop af                                        ; $762e: $f1
    ld e, e                                       ; $762f: $5b
    db $d3                                        ; $7630: $d3
    push af                                       ; $7631: $f5
    push bc                                       ; $7632: $c5
    sub $f9                                       ; $7633: $d6 $f9
    push af                                       ; $7635: $f5
    sbc b                                         ; $7636: $98
    rlca                                          ; $7637: $07
    sub c                                         ; $7638: $91
    ld e, h                                       ; $7639: $5c
    or c                                          ; $763a: $b1
    ld d, l                                       ; $763b: $55
    ld d, [hl]                                    ; $763c: $56
    ld l, [hl]                                    ; $763d: $6e
    inc e                                         ; $763e: $1c
    cpl                                           ; $763f: $2f
    jp nz, $c7f7                                  ; $7640: $c2 $f7 $c7

    ld h, c                                       ; $7643: $61
    dec e                                         ; $7644: $1d

jr_02d_7645:
    sbc [hl]                                      ; $7645: $9e
    inc sp                                        ; $7646: $33
    add d                                         ; $7647: $82
    adc $63                                       ; $7648: $ce $63
    ld e, $c4                                     ; $764a: $1e $c4
    cp h                                          ; $764c: $bc
    sbc [hl]                                      ; $764d: $9e
    rst $10                                       ; $764e: $d7
    ld [hl], e                                    ; $764f: $73
    ld a, l                                       ; $7650: $7d
    xor $36                                       ; $7651: $ee $36
    xor [hl]                                      ; $7653: $ae
    dec [hl]                                      ; $7654: $35
    push af                                       ; $7655: $f5
    sbc d                                         ; $7656: $9a
    ld a, d                                       ; $7657: $7a
    ld c, l                                       ; $7658: $4d
    add c                                         ; $7659: $81
    sbc b                                         ; $765a: $98
    cp $9a                                        ; $765b: $fe $9a
    ld a, d                                       ; $765d: $7a
    ld c, l                                       ; $765e: $4d
    cp l                                          ; $765f: $bd
    and [hl]                                      ; $7660: $a6
    ld b, b                                       ; $7661: $40
    inc l                                         ; $7662: $2c
    ld l, l                                       ; $7663: $6d
    sbc b                                         ; $7664: $98
    ld a, [hl+]                                   ; $7665: $2a
    sbc d                                         ; $7666: $9a
    ld l, b                                       ; $7667: $68
    call z, Call_000_1883                         ; $7668: $cc $83 $18
    rla                                           ; $766b: $17
    db $e3                                        ; $766c: $e3
    ld a, [hl-]                                   ; $766d: $3a
    ld a, a                                       ; $766e: $7f
    call z, $9883                                 ; $766f: $cc $83 $98
    dec d                                         ; $7672: $15
    inc h                                         ; $7673: $24
    ld a, c                                       ; $7674: $79
    sbc $02                                       ; $7675: $de $02
    ld e, c                                       ; $7677: $59
    jp c, Jump_000_2bbf                           ; $7678: $da $bf $2b

    ld l, b                                       ; $767b: $68
    ld c, l                                       ; $767c: $4d
    cp l                                          ; $767d: $bd
    and [hl]                                      ; $767e: $a6
    ld e, [hl]                                    ; $767f: $5e
    ld h, e                                       ; $7680: $63
    ld sp, $70bc                                  ; $7681: $31 $bc $70
    add hl, de                                    ; $7684: $19
    ret nc                                        ; $7685: $d0

    sbc b                                         ; $7686: $98
    rlca                                          ; $7687: $07
    ld sp, $07f2                                  ; $7688: $31 $f2 $07
    adc h                                         ; $768b: $8c
    ld e, h                                       ; $768c: $5c
    rst $20                                       ; $768d: $e7
    xor a                                         ; $768e: $af
    call c, $13ed                                 ; $768f: $dc $ed $13
    sub $8b                                       ; $7692: $d6 $8b
    rst $20                                       ; $7694: $e7
    sub h                                         ; $7695: $94
    call c, $e6b1                                 ; $7696: $dc $b1 $e6
    ld e, [hl]                                    ; $7699: $5e
    ld d, e                                       ; $769a: $53
    sbc e                                         ; $769b: $9b
    ret c                                         ; $769c: $d8

    ld [bc], a                                    ; $769d: $02
    push af                                       ; $769e: $f5
    sub l                                         ; $769f: $95
    rst $20                                       ; $76a0: $e7
    ld sp, hl                                     ; $76a1: $f9
    cp [hl]                                       ; $76a2: $be
    ld d, [hl]                                    ; $76a3: $56
    ld l, c                                       ; $76a4: $69
    and c                                         ; $76a5: $a1
    rra                                           ; $76a6: $1f
    ld l, e                                       ; $76a7: $6b
    inc l                                         ; $76a8: $2c
    ld a, [c]                                     ; $76a9: $f2
    inc a                                         ; $76aa: $3c
    rra                                           ; $76ab: $1f
    ld a, c                                       ; $76ac: $79
    db $dd                                        ; $76ad: $dd
    ld e, b                                       ; $76ae: $58
    ld a, [bc]                                    ; $76af: $0a
    push af                                       ; $76b0: $f5
    di                                            ; $76b1: $f3
    inc a                                         ; $76b2: $3c
    ld l, a                                       ; $76b3: $6f
    ld bc, $9787                                  ; $76b4: $01 $87 $97
    rst $20                                       ; $76b7: $e7
    sub c                                         ; $76b8: $91
    ld e, h                                       ; $76b9: $5c
    adc a                                         ; $76ba: $8f
    ld [hl], $c6                                  ; $76bb: $36 $c6
    ld d, [hl]                                    ; $76bd: $56
    and c                                         ; $76be: $a1
    and b                                         ; $76bf: $a0
    ld [hl], e                                    ; $76c0: $73
    db $ed                                        ; $76c1: $ed
    and c                                         ; $76c2: $a1
    db $eb                                        ; $76c3: $eb
    inc b                                         ; $76c4: $04
    inc sp                                        ; $76c5: $33
    add $30                                       ; $76c6: $c6 $30
    add $b8                                       ; $76c8: $c6 $b8
    ld h, c                                       ; $76ca: $61
    and l                                         ; $76cb: $a5
    ld c, a                                       ; $76cc: $4f
    dec hl                                        ; $76cd: $2b
    ld [hl], a                                    ; $76ce: $77
    ld b, e                                       ; $76cf: $43
    ld e, a                                       ; $76d0: $5f
    ld h, l                                       ; $76d1: $65
    push bc                                       ; $76d2: $c5
    cp b                                          ; $76d3: $b8
    sub [hl]                                      ; $76d4: $96
    ld bc, $7cfb                                  ; $76d5: $01 $fb $7c
    rst $28                                       ; $76d8: $ef
    adc a                                         ; $76d9: $8f
    xor $36                                       ; $76da: $ee $36
    xor e                                         ; $76dc: $ab
    db $f4                                        ; $76dd: $f4
    ld l, a                                       ; $76de: $6f
    ld a, c                                       ; $76df: $79
    dec bc                                        ; $76e0: $0b
    push af                                       ; $76e1: $f5
    or l                                          ; $76e2: $b5
    nop                                           ; $76e3: $00
    adc h                                         ; $76e4: $8c
    ld sp, $1178                                  ; $76e5: $31 $78 $11
    ld d, [hl]                                    ; $76e8: $56
    ld a, [de]                                    ; $76e9: $1a
    rst $10                                       ; $76ea: $d7
    adc d                                         ; $76eb: $8a
    xor l                                         ; $76ec: $ad
    or d                                          ; $76ed: $b2
    ld [hl], d                                    ; $76ee: $72
    db $e3                                        ; $76ef: $e3
    ld a, b                                       ; $76f0: $78
    ld de, $3fbe                                  ; $76f1: $11 $be $3f
    ld c, $eb                                     ; $76f4: $0e $eb
    ldh a, [$9c]                                  ; $76f6: $f0 $9c
    ld de, $ce74                                  ; $76f8: $11 $74 $ce
    ld [hl], a                                    ; $76fb: $77
    ld [$74c7], a                                 ; $76fc: $ea $c7 $74
    cp [hl]                                       ; $76ff: $be
    inc de                                        ; $7700: $13
    or h                                          ; $7701: $b4
    add $5f                                       ; $7702: $c6 $5f
    ld e, d                                       ; $7704: $5a
    ld de, $df02                                  ; $7705: $11 $02 $df
    ret                                           ; $7708: $c9


    add b                                         ; $7709: $80
    xor $2a                                       ; $770a: $ee $2a
    ld h, l                                       ; $770c: $65
    push de                                       ; $770d: $d5
    db $dd                                        ; $770e: $dd
    add $55                                       ; $770f: $c6 $55
    reti                                          ; $7711: $d9


    rst $20                                       ; $7712: $e7
    or a                                          ; $7713: $b7
    ld [hl], c                                    ; $7714: $71
    adc l                                         ; $7715: $8d
    db $fc                                        ; $7716: $fc
    ld bc, $5f23                                  ; $7717: $01 $23 $5f
    cp c                                          ; $771a: $b9
    db $db                                        ; $771b: $db
    daa                                           ; $771c: $27
    xor h                                         ; $771d: $ac
    rla                                           ; $771e: $17
    rst $08                                       ; $771f: $cf
    add hl, hl                                    ; $7720: $29
    rst $18                                       ; $7721: $df
    xor c                                         ; $7722: $a9
    rra                                           ; $7723: $1f
    db $d3                                        ; $7724: $d3
    ld sp, hl                                     ; $7725: $f9
    ld a, [hl-]                                   ; $7726: $3a
    ld a, $60                                     ; $7727: $3e $60
    ld [hl], h                                    ; $7729: $74
    ld a, [hl]                                    ; $772a: $7e
    dec a                                         ; $772b: $3d
    and $41                                       ; $772c: $e6 $41
    xor h                                         ; $772e: $ac
    cp d                                          ; $772f: $ba
    dec de                                        ; $7730: $1b
    ld [hl], d                                    ; $7731: $72
    ld a, c                                       ; $7732: $79
    db $ed                                        ; $7733: $ed
    and c                                         ; $7734: $a1
    dec l                                         ; $7735: $2d
    dec e                                         ; $7736: $1d
    ld e, l                                       ; $7737: $5d
    sbc a                                         ; $7738: $9f
    rst $00                                       ; $7739: $c7
    adc d                                         ; $773a: $8a
    xor l                                         ; $773b: $ad
    ld a, c                                       ; $773c: $79
    add h                                         ; $773d: $84
    rst $28                                       ; $773e: $ef
    rst $28                                       ; $773f: $ef
    inc a                                         ; $7740: $3c

jr_02d_7741:
    ld h, h                                       ; $7741: $64
    or c                                          ; $7742: $b1
    db $f4                                        ; $7743: $f4
    rst $08                                       ; $7744: $cf
    ld d, e                                       ; $7745: $53
    pop hl                                        ; $7746: $e1
    ret                                           ; $7747: $c9


    xor c                                         ; $7748: $a9
    inc d                                         ; $7749: $14
    db $ed                                        ; $774a: $ed
    ld l, e                                       ; $774b: $6b
    db $fc                                        ; $774c: $fc
    ld b, [hl]                                    ; $774d: $46
    ld c, $e8                                     ; $774e: $0e $e8
    or [hl]                                       ; $7750: $b6
    add $62                                       ; $7751: $c6 $62
    ld b, l                                       ; $7753: $45
    adc e                                         ; $7754: $8b
    rst $20                                       ; $7755: $e7
    sub h                                         ; $7756: $94
    ld e, h                                       ; $7757: $5c
    ld h, l                                       ; $7758: $65
    jr jr_02d_777e                                ; $7759: $18 $23

    jr jr_02d_77c6                                ; $775b: $18 $69

    and c                                         ; $775d: $a1
    ld c, a                                       ; $775e: $4f
    add sp, $16                                   ; $775f: $e8 $16
    xor e                                         ; $7761: $ab
    ld d, b                                       ; $7762: $50
    ret nc                                        ; $7763: $d0

    add hl, sp                                    ; $7764: $39
    ld l, a                                       ; $7765: $6f
    ld bc, $e41d                                  ; $7766: $01 $1d $e4
    rla                                           ; $7769: $17
    ld h, $d7                                     ; $776a: $26 $d7
    pop bc                                        ; $776c: $c1
    cp b                                          ; $776d: $b8
    ld d, l                                       ; $776e: $55
    ld e, d                                       ; $776f: $5a
    rst $00                                       ; $7770: $c7
    ld d, a                                       ; $7771: $57
    and l                                         ; $7772: $a5
    ld e, l                                       ; $7773: $5d
    pop bc                                        ; $7774: $c1
    adc $5b                                       ; $7775: $ce $5b
    push af                                       ; $7777: $f5
    dec [hl]                                      ; $7778: $35
    jp nc, $ddca                                  ; $7779: $d2 $ca $dd

    jr jr_02d_7741                                ; $777c: $18 $c3

jr_02d_777e:
    ld e, b                                       ; $777e: $58
    di                                            ; $777f: $f3
    ret nz                                        ; $7780: $c0

    ret                                           ; $7781: $c9


    ld a, $2d                                     ; $7782: $3e $2d
    add l                                         ; $7784: $85
    ld a, [$48e3]                                 ; $7785: $fa $e3 $48
    ld a, c                                       ; $7788: $79
    dec bc                                        ; $7789: $0b
    ld e, c                                       ; $778a: $59
    xor a                                         ; $778b: $af
    xor d                                         ; $778c: $aa
    db $f4                                        ; $778d: $f4
    ld l, c                                       ; $778e: $69
    ld l, c                                       ; $778f: $69
    ld b, e                                       ; $7790: $43
    rst $10                                       ; $7791: $d7
    sbc d                                         ; $7792: $9a
    rlca                                          ; $7793: $07
    cp [hl]                                       ; $7794: $be
    add b                                         ; $7795: $80
    and [hl]                                      ; $7796: $a6
    ld [hl], c                                    ; $7797: $71
    xor h                                         ; $7798: $ac
    db $e4                                        ; $7799: $e4
    cp e                                          ; $779a: $bb
    ld b, h                                       ; $779b: $44
    and h                                         ; $779c: $a4
    ld d, l                                       ; $779d: $55
    ld d, [hl]                                    ; $779e: $56
    ld l, [hl]                                    ; $779f: $6e
    inc e                                         ; $77a0: $1c
    cpl                                           ; $77a1: $2f
    jp nz, Jump_02d_6bf7                          ; $77a2: $c2 $f7 $6b

    rrca                                          ; $77a5: $0f
    ld l, l                                       ; $77a6: $6d
    ld bc, $d827                                  ; $77a7: $01 $27 $d8
    ld a, [hl+]                                   ; $77aa: $2a
    dec hl                                        ; $77ab: $2b
    scf                                           ; $77ac: $37
    adc [hl]                                      ; $77ad: $8e
    rla                                           ; $77ae: $17
    pop hl                                        ; $77af: $e1
    ei                                            ; $77b0: $fb
    ret                                           ; $77b1: $c9


    ld e, l                                       ; $77b2: $5d
    ld [hl], a                                    ; $77b3: $77
    dec b                                         ; $77b4: $05
    xor l                                         ; $77b5: $ad
    db $d3                                        ; $77b6: $d3
    ld c, c                                       ; $77b7: $49
    rst $00                                       ; $77b8: $c7
    dec h                                         ; $77b9: $25
    rst $10                                       ; $77ba: $d7
    pop af                                        ; $77bb: $f1
    ld de, $93c9                                  ; $77bc: $11 $c9 $93
    inc de                                        ; $77bf: $13
    xor l                                         ; $77c0: $ad
    jp $c749                                      ; $77c1: $c3 $49 $c7


    dec l                                         ; $77c4: $2d
    ei                                            ; $77c5: $fb

jr_02d_77c6:
    ld l, [hl]                                    ; $77c6: $6e
    ld e, b                                       ; $77c7: $58
    ret                                           ; $77c8: $c9


    dec c                                         ; $77c9: $0d
    ld h, e                                       ; $77ca: $63
    add hl, de                                    ; $77cb: $19
    cp b                                          ; $77cc: $b8
    cp a                                          ; $77cd: $bf
    ccf                                           ; $77ce: $3f
    jp nc, $9a02                                  ; $77cf: $d2 $02 $9a

    add $b1                                       ; $77d2: $c6 $b1
    ld d, d                                       ; $77d4: $52
    sbc $02                                       ; $77d5: $de $02
    sbc l                                         ; $77d7: $9d
    ld h, b                                       ; $77d8: $60
    ld e, a                                       ; $77d9: $5f
    ld h, e                                       ; $77da: $63
    inc l                                         ; $77db: $2c
    sub $58                                       ; $77dc: $d6 $58
    inc l                                         ; $77de: $2c
    ld e, $30                                     ; $77df: $1e $30
    ld a, [$8334]                                 ; $77e1: $fa $34 $83
    adc $bb                                       ; $77e4: $ce $bb
    ld e, $78                                     ; $77e6: $1e $78
    inc h                                         ; $77e8: $24
    ld [hl], a                                    ; $77e9: $77
    xor h                                         ; $77ea: $ac
    cp c                                          ; $77eb: $b9
    rst $10                                       ; $77ec: $d7
    db $e4                                        ; $77ed: $e4
    dec l                                         ; $77ee: $2d
    daa                                           ; $77ef: $27
    db $fd                                        ; $77f0: $fd
    ld d, l                                       ; $77f1: $55
    ld [hl], a                                    ; $77f2: $77
    ld e, e                                       ; $77f3: $5b
    or [hl]                                       ; $77f4: $b6
    add sp, $36                                   ; $77f5: $e8 $36
    ld hl, sp+$5a                                 ; $77f7: $f8 $5a
    ld h, l                                       ; $77f9: $65
    push hl                                       ; $77fa: $e5
    add $f1                                       ; $77fb: $c6 $f1
    ld [hl+], a                                   ; $77fd: $22
    ld a, h                                       ; $77fe: $7c
    ccf                                           ; $77ff: $3f
    cp c                                          ; $7800: $b9
    ld hl, sp-$68                                 ; $7801: $f8 $98
    adc $5b                                       ; $7803: $ce $5b
    daa                                           ; $7805: $27
    inc bc                                        ; $7806: $03
    xor [hl]                                      ; $7807: $ae
    ld b, a                                       ; $7808: $47
    xor e                                         ; $7809: $ab
    dec a                                         ; $780a: $3d
    or h                                          ; $780b: $b4
    dec b                                         ; $780c: $05
    dec e                                         ; $780d: $1d
    dec h                                         ; $780e: $25
    ld b, [hl]                                    ; $780f: $46
    sub c                                         ; $7810: $91
    rst $28                                       ; $7811: $ef
    cp b                                          ; $7812: $b8
    or d                                          ; $7813: $b2
    ld [$cb6e], a                                 ; $7814: $ea $6e $cb
    ld d, $dd                                     ; $7817: $16 $dd
    ld d, [hl]                                    ; $7819: $56
    ld l, h                                       ; $781a: $6c
    sub l                                         ; $781b: $95
    sub l                                         ; $781c: $95
    dec de                                        ; $781d: $1b
    rst $00                                       ; $781e: $c7
    adc e                                         ; $781f: $8b
    ldh a, [$fd]                                  ; $7820: $f0 $fd
    ld [hl], c                                    ; $7822: $71
    ld e, b                                       ; $7823: $58
    add a                                         ; $7824: $87
    rst $20                                       ; $7825: $e7
    adc h                                         ; $7826: $8c
    and b                                         ; $7827: $a0
    di                                            ; $7828: $f3
    ld b, h                                       ; $7829: $44
    dec sp                                        ; $782a: $3b
    add hl, de                                    ; $782b: $19
    ret nc                                        ; $782c: $d0

    ld e, l                                       ; $782d: $5d
    and l                                         ; $782e: $a5
    xor h                                         ; $782f: $ac
    cp d                                          ; $7830: $ba
    db $db                                        ; $7831: $db
    cp b                                          ; $7832: $b8
    ld a, [hl+]                                   ; $7833: $2a
    ei                                            ; $7834: $fb
    db $fc                                        ; $7835: $fc
    ld [hl], $ae                                  ; $7836: $36 $ae
    sub c                                         ; $7838: $91
    ccf                                           ; $7839: $3f
    ld h, b                                       ; $783a: $60
    db $e4                                        ; $783b: $e4
    dec hl                                        ; $783c: $2b
    ld [hl], a                                    ; $783d: $77
    ei                                            ; $783e: $fb
    add h                                         ; $783f: $84
    push af                                       ; $7840: $f5
    ld [c], a                                     ; $7841: $e2
    add hl, sp                                    ; $7842: $39
    push hl                                       ; $7843: $e5
    dec sp                                        ; $7844: $3b
    push af                                       ; $7845: $f5
    ld h, e                                       ; $7846: $63
    ld a, [hl-]                                   ; $7847: $3a
    ld l, a                                       ; $7848: $6f
    ld bc, $2259                                  ; $7849: $01 $59 $22
    jp nc, $2b2a                                  ; $784c: $d2 $2a $2b

    scf                                           ; $784f: $37
    adc [hl]                                      ; $7850: $8e
    rla                                           ; $7851: $17
    pop hl                                        ; $7852: $e1
    ei                                            ; $7853: $fb
    db $e3                                        ; $7854: $e3
    sbc d                                         ; $7855: $9a
    db $eb                                        ; $7856: $eb
    ld [hl], e                                    ; $7857: $73
    or a                                          ; $7858: $b7
    pop de                                        ; $7859: $d1
    add e                                         ; $785a: $83
    db $ec                                        ; $785b: $ec
    rlca                                          ; $785c: $07
    ld e, $6b                                     ; $785d: $1e $6b
    ld a, [bc]                                    ; $785f: $0a
    call nz, $86d2                                ; $7860: $c4 $d2 $86
    xor c                                         ; $7863: $a9
    and d                                         ; $7864: $a2
    ld a, h                                       ; $7865: $7c
    push af                                       ; $7866: $f5
    or l                                          ; $7867: $b5
    add $1c                                       ; $7868: $c6 $1c
    or l                                          ; $786a: $b5
    inc c                                         ; $786b: $0c
    ld l, b                                       ; $786c: $68
    call c, $ac7e                                 ; $786d: $dc $7e $ac
    ret c                                         ; $7870: $d8

    ld d, d                                       ; $7871: $52
    sbc b                                         ; $7872: $98
    ld a, [hl+]                                   ; $7873: $2a
    ld hl, sp-$78                                 ; $7874: $f8 $88
    ld e, l                                       ; $7876: $5d
    scf                                           ; $7877: $37
    inc bc                                        ; $7878: $03
    ld a, [de]                                    ; $7879: $1a
    pop bc                                        ; $787a: $c1
    ret z                                         ; $787b: $c8

    rra                                           ; $787c: $1f
    jr nc, jr_02d_78f1                            ; $787d: $30 $72

    adc e                                         ; $787f: $8b
    ld [hl], c                                    ; $7880: $71
    xor l                                         ; $7881: $ad
    call c, $b90d                                 ; $7882: $dc $0d $b9
    ld a, [c]                                     ; $7885: $f2
    ld d, $c7                                     ; $7886: $16 $c7
    sbc d                                         ; $7888: $9a
    ld a, e                                       ; $7889: $7b
    ld c, l                                       ; $788a: $4d
    ld l, l                                       ; $788b: $6d
    ld [c], a                                     ; $788c: $e2
    ld a, [hl-]                                   ; $788d: $3a

Call_02d_788e:
    ld a, $f0                                     ; $788e: $3e $f0
    inc c                                         ; $7890: $0c
    inc a                                         ; $7891: $3c
    call c, Call_000_2bbf                         ; $7892: $dc $bf $2b
    ld [$ac11], a                                 ; $7895: $ea $11 $ac
    or c                                          ; $7898: $b1
    sbc b                                         ; $7899: $98
    cp $ae                                        ; $789a: $fe $ae
    ld h, d                                       ; $789c: $62
    ld de, $3daa                                  ; $789d: $11 $aa $3d
    or h                                          ; $78a0: $b4
    dec b                                         ; $78a1: $05
    daa                                           ; $78a2: $27
    ld l, b                                       ; $78a3: $68
    adc l                                         ; $78a4: $8d
    cp a                                          ; $78a5: $bf
    or h                                          ; $78a6: $b4
    ld [hl+], a                                   ; $78a7: $22
    inc b                                         ; $78a8: $04
    cp [hl]                                       ; $78a9: $be
    sub e                                         ; $78aa: $93
    ld bc, $55dd                                  ; $78ab: $01 $dd $55
    jp z, $bbaa                                   ; $78ae: $ca $aa $bb

    adc l                                         ; $78b1: $8d
    xor e                                         ; $78b2: $ab
    or d                                          ; $78b3: $b2
    rst $08                                       ; $78b4: $cf
    ld l, a                                       ; $78b5: $6f
    db $e3                                        ; $78b6: $e3
    ld [hl], a                                    ; $78b7: $77
    ld l, e                                       ; $78b8: $6b
    ld a, [de]                                    ; $78b9: $1a
    rst $10                                       ; $78ba: $d7
    rst $20                                       ; $78bb: $e7
    xor [hl]                                      ; $78bc: $ae
    push de                                       ; $78bd: $d5
    ld e, c                                       ; $78be: $59
    ld b, b                                       ; $78bf: $40
    db $d3                                        ; $78c0: $d3
    jr c, @+$58                                   ; $78c1: $38 $56

    ld a, [c]                                     ; $78c3: $f2
    dec d                                         ; $78c4: $15
    ld e, e                                       ; $78c5: $5b
    ld h, l                                       ; $78c6: $65
    push hl                                       ; $78c7: $e5
    add $f1                                       ; $78c8: $c6 $f1
    ld [hl+], a                                   ; $78ca: $22
    ld a, h                                       ; $78cb: $7c
    ld a, a                                       ; $78cc: $7f
    db $fc                                        ; $78cd: $fc
    ld a, l                                       ; $78ce: $7d
    ld e, d                                       ; $78cf: $5a
    or [hl]                                       ; $78d0: $b6
    ld d, $80                                     ; $78d1: $16 $80
    ld sp, $2f06                                  ; $78d3: $31 $06 $2f
    jp nz, $f94a                                  ; $78d6: $c2 $4a $f9

    ld c, [hl]                                    ; $78d9: $4e
    db $fd                                        ; $78da: $fd
    sbc b                                         ; $78db: $98
    adc $5b                                       ; $78dc: $ce $5b
    ld b, a                                       ; $78de: $47
    xor d                                         ; $78df: $aa
    or d                                          ; $78e0: $b2
    rst $08                                       ; $78e1: $cf
    or l                                          ; $78e2: $b5
    ld a, [hl-]                                   ; $78e3: $3a
    dec hl                                        ; $78e4: $2b
    or [hl]                                       ; $78e5: $b6
    inc d                                         ; $78e6: $14
    and [hl]                                      ; $78e7: $a6
    ld a, [bc]                                    ; $78e8: $0a
    ld a, $62                                     ; $78e9: $3e $62
    rst $18                                       ; $78eb: $df
    ld l, $43                                     ; $78ec: $2e $43
    ld d, a                                       ; $78ee: $57
    ld [hl], d                                    ; $78ef: $72
    dec e                                         ; $78f0: $1d

jr_02d_78f1:
    adc h                                         ; $78f1: $8c
    ld e, e                                       ; $78f2: $5b
    and l                                         ; $78f3: $a5
    ld [hl], l                                    ; $78f4: $75
    call nz, Call_000_297f                        ; $78f5: $c4 $7f $29
    rst $18                                       ; $78f8: $df
    ld [hl], c                                    ; $78f9: $71
    ld h, l                                       ; $78fa: $65
    dec [hl]                                      ; $78fb: $35
    or e                                          ; $78fc: $b3
    pop bc                                        ; $78fd: $c1
    rst $10                                       ; $78fe: $d7
    ld b, d                                       ; $78ff: $42
    rla                                           ; $7900: $17
    pop hl                                        ; $7901: $e1
    ei                                            ; $7902: $fb
    rlc b                                         ; $7903: $cb $00
    ld c, [hl]                                    ; $7905: $4e
    ld b, c                                       ; $7906: $41
    cp e                                          ; $7907: $bb
    sbc $0f                                       ; $7908: $de $0f
    cp e                                          ; $790a: $bb
    db $fc                                        ; $790b: $fc
    and [hl]                                      ; $790c: $a6
    add hl, de                                    ; $790d: $19
    ld [hl], h                                    ; $790e: $74
    sbc [hl]                                      ; $790f: $9e
    ld a, l                                       ; $7910: $7d
    jp nz, $f17a                                  ; $7911: $c2 $7a $f1

    sbc h                                         ; $7914: $9c
    ld [hl+], a                                   ; $7915: $22
    ld l, a                                       ; $7916: $6f
    ld bc, $609d                                  ; $7917: $01 $9d $60
    ld h, c                                       ; $791a: $61
    jr @-$43                                      ; $791b: $18 $bb

    ld e, [hl]                                    ; $791d: $5e
    ld d, l                                       ; $791e: $55
    jp hl                                         ; $791f: $e9


    db $d3                                        ; $7920: $d3
    ld [bc], a                                    ; $7921: $02
    sbc d                                         ; $7922: $9a
    add $b1                                       ; $7923: $c6 $b1
    sub d                                         ; $7925: $92
    rst $28                                       ; $7926: $ef
    ld [de], a                                    ; $7927: $12
    sub c                                         ; $7928: $91

Jump_02d_7929:
    ld d, [hl]                                    ; $7929: $56
    ld e, c                                       ; $792a: $59
    cp c                                          ; $792b: $b9
    ld [hl], c                                    ; $792c: $71
    cp h                                          ; $792d: $bc
    ld [$afdf], sp                                ; $792e: $08 $df $af
    dec a                                         ; $7931: $3d
    or h                                          ; $7932: $b4
    dec b                                         ; $7933: $05
    daa                                           ; $7934: $27
    cp [hl]                                       ; $7935: $be
    sbc a                                         ; $7936: $9f
    sbc h                                         ; $7937: $9c
    ld l, b                                       ; $7938: $68
    inc b                                         ; $7939: $04
    ld d, e                                       ; $793a: $53
    xor h                                         ; $793b: $ac
    ld [hl], c                                    ; $793c: $71
    cp h                                          ; $793d: $bc
    adc l                                         ; $793e: $8d
    ld l, e                                       ; $793f: $6b
    ld e, a                                       ; $7940: $5f
    ld l, e                                       ; $7941: $6b
    inc l                                         ; $7942: $2c
    ld d, [hl]                                    ; $7943: $56
    ld l, h                                       ; $7944: $6c
    ld l, [hl]                                    ; $7945: $6e
    sub l                                         ; $7946: $95
    cp [hl]                                       ; $7947: $be
    ld a, h                                       ; $7948: $7c
    ld [hl], l                                    ; $7949: $75
    halt                                          ; $794a: $76
    adc h                                         ; $794b: $8c
    rst $10                                       ; $794c: $d7
    and h                                         ; $794d: $a4

Jump_02d_794e:
    db $d3                                        ; $794e: $d3
    rst $28                                       ; $794f: $ef
    di                                            ; $7950: $f3
    rst $20                                       ; $7951: $e7
    inc sp                                        ; $7952: $33
    ld b, [hl]                                    ; $7953: $46
    rst $10                                       ; $7954: $d7
    add sp, $61                                   ; $7955: $e8 $61
    sbc $02                                       ; $7957: $de $02
    daa                                           ; $7959: $27
    db $fd                                        ; $795a: $fd
    ld a, l                                       ; $795b: $7d
    xor l                                         ; $795c: $ad
    call c, $8d6d                                 ; $795d: $dc $6d $8d
    push bc                                       ; $7960: $c5
    db $f4                                        ; $7961: $f4
    xor a                                         ; $7962: $af
    rst $20                                       ; $7963: $e7
    sbc d                                         ; $7964: $9a
    dec [hl]                                      ; $7965: $35
    adc l                                         ; $7966: $8d
    ld h, e                                       ; $7967: $63
    db $e4                                        ; $7968: $e4
    dec l                                         ; $7969: $2d
    ld b, a                                       ; $796a: $47
    ld [$9d80], sp                                ; $796b: $08 $80 $9d
    rst $28                                       ; $796e: $ef
    ld d, h                                       ; $796f: $54
    inc e                                         ; $7970: $1c
    pop bc                                        ; $7971: $c1
    inc l                                         ; $7972: $2c
    and $ea                                       ; $7973: $e6 $ea
    ld de, $5f06                                  ; $7975: $11 $06 $5f
    xor e                                         ; $7978: $ab
    xor h                                         ; $7979: $ac
    call c, Call_02d_5e38                         ; $797a: $dc $38 $5e
    add h                                         ; $797d: $84
    rst $28                                       ; $797e: $ef
    daa                                           ; $797f: $27
    ld [hl], a                                    ; $7980: $77
    dec hl                                        ; $7981: $2b
    rrca                                          ; $7982: $0f
    ld e, c                                       ; $7983: $59
    ld e, a                                       ; $7984: $5f
    push af                                       ; $7985: $f5
    add sp, -$1f                                  ; $7986: $e8 $e1
    cp b                                          ; $7988: $b8
    ld d, [hl]                                    ; $7989: $56
    dec a                                         ; $798a: $3d
    xor h                                         ; $798b: $ac
    ld c, l                                       ; $798c: $4d
    ld l, h                                       ; $798d: $6c
    ld bc, $e847                                  ; $798e: $01 $47 $e8
    daa                                           ; $7991: $27
    ld h, a                                       ; $7992: $67
    adc h                                         ; $7993: $8c
    xor [hl]                                      ; $7994: $ae
    pop bc                                        ; $7995: $c1
    sbc a                                         ; $7996: $9f
    ld a, l                                       ; $7997: $7d
    jp nz, $f17a                                  ; $7998: $c2 $7a $f1

    sbc h                                         ; $799b: $9c
    ld l, d                                       ; $799c: $6a
    inc de                                        ; $799d: $13
    ld e, e                                       ; $799e: $5b
    daa                                           ; $799f: $27
    ld l, b                                       ; $79a0: $68
    adc l                                         ; $79a1: $8d
    cp a                                          ; $79a2: $bf
    or h                                          ; $79a3: $b4
    ld [hl+], a                                   ; $79a4: $22
    inc b                                         ; $79a5: $04
    cp [hl]                                       ; $79a6: $be
    sub e                                         ; $79a7: $93
    ld bc, $55dd                                  ; $79a8: $01 $dd $55
    jp z, $168a                                   ; $79ab: $ca $8a $16

    add [hl]                                      ; $79ae: $86
    or h                                          ; $79af: $b4
    add sp, -$3f                                  ; $79b0: $e8 $c1
    ld d, l                                       ; $79b2: $55
    jp hl                                         ; $79b3: $e9


    ld d, e                                       ; $79b4: $53
    sbc $02                                       ; $79b5: $de $02
    and a                                         ; $79b7: $a7
    db $db                                        ; $79b8: $db
    sbc b                                         ; $79b9: $98
    add a                                         ; $79ba: $87
    ld a, $6e                                     ; $79bb: $3e $6e
    ccf                                           ; $79bd: $3f
    ld d, [hl]                                    ; $79be: $56
    ld l, h                                       ; $79bf: $6c
    add hl, hl                                    ; $79c0: $29
    ld c, h                                       ; $79c1: $4c
    dec d                                         ; $79c2: $15
    ld a, h                                       ; $79c3: $7c
    call nz, $9bae                                ; $79c4: $c4 $ae $9b
    ld bc, $3be5                                  ; $79c7: $01 $e5 $3b
    xor [hl]                                      ; $79ca: $ae
    xor h                                         ; $79cb: $ac
    ld h, [hl]                                    ; $79cc: $66
    ld [hl], $ae                                  ; $79cd: $36 $ae
    ld e, b                                       ; $79cf: $58
    ld b, c                                       ; $79d0: $41
    add $15                                       ; $79d1: $c6 $15
    dec bc                                        ; $79d3: $0b
    ldh a, [$d1]                                  ; $79d4: $f0 $d1
    inc bc                                        ; $79d6: $03
    jp z, $f55b                                   ; $79d7: $ca $5b $f5

    dec [hl]                                      ; $79da: $35
    ld b, $f5                                     ; $79db: $06 $f5
    ld h, e                                       ; $79dd: $63
    call Call_02d_5f03                            ; $79de: $cd $03 $5f
    ld b, b                                       ; $79e1: $40
    db $d3                                        ; $79e2: $d3
    jr c, jr_02d_7a3b                             ; $79e3: $38 $56

    ld a, [c]                                     ; $79e5: $f2
    pop bc                                        ; $79e6: $c1
    rst $10                                       ; $79e7: $d7
    ld a, [hl+]                                   ; $79e8: $2a
    dec hl                                        ; $79e9: $2b
    scf                                           ; $79ea: $37
    adc [hl]                                      ; $79eb: $8e
    rla                                           ; $79ec: $17
    pop hl                                        ; $79ed: $e1
    ei                                            ; $79ee: $fb
    ld sp, hl                                     ; $79ef: $f9
    ld c, [hl]                                    ; $79f0: $4e
    db $fd                                        ; $79f1: $fd
    sbc b                                         ; $79f2: $98
    adc $5b                                       ; $79f3: $ce $5b
    daa                                           ; $79f5: $27
    ld a, $af                                     ; $79f6: $3e $af
    xor h                                         ; $79f8: $ac
    xor b                                         ; $79f9: $a8
    jp nc, $65a7                                  ; $79fa: $d2 $a7 $65

    ld l, e                                       ; $79fd: $6b
    and h                                         ; $79fe: $a4
    ld e, l                                       ; $79ff: $5d
    rst $28                                       ; $7a00: $ef
    add a                                         ; $7a01: $87
    or b                                          ; $7a02: $b0
    inc d                                         ; $7a03: $14
    cp c                                          ; $7a04: $b9
    ld h, c                                       ; $7a05: $61
    xor h                                         ; $7a06: $ac
    ld l, b                                       ; $7a07: $68
    dec e                                         ; $7a08: $1d
    db $ec                                        ; $7a09: $ec
    add e                                         ; $7a0a: $83
    jp z, $ba3a                                   ; $7a0b: $ca $3a $ba

    ld de, $4066                                  ; $7a0e: $11 $66 $40
    db $e3                                        ; $7a11: $e3
    adc d                                         ; $7a12: $8a
    dec e                                         ; $7a13: $1d
    cp $09                                        ; $7a14: $fe $09
    db $eb                                        ; $7a16: $eb
    sbc l                                         ; $7a17: $9d
    ld a, [$229c]                                 ; $7a18: $fa $9c $22
    add hl, sp                                    ; $7a1b: $39
    ld l, $e8                                     ; $7a1c: $2e $e8
    adc h                                         ; $7a1e: $8c
    ld [hl], l                                    ; $7a1f: $75
    dec hl                                        ; $7a20: $2b
    db $ed                                        ; $7a21: $ed
    add $91                                       ; $7a22: $c6 $91
    ldh a, [$fd]                                  ; $7a24: $f0 $fd
    ld sp, hl                                     ; $7a26: $f9
    adc l                                         ; $7a27: $8d
    pop bc                                        ; $7a28: $c1
    cp b                                          ; $7a29: $b8
    add hl, hl                                    ; $7a2a: $29
    cp c                                          ; $7a2b: $b9
    jp z, $8630                                   ; $7a2c: $ca $30 $86

    ld h, l                                       ; $7a2f: $65
    rst $38                                       ; $7a30: $ff
    xor [hl]                                      ; $7a31: $ae
    and b                                         ; $7a32: $a0
    dec [hl]                                      ; $7a33: $35
    dec b                                         ; $7a34: $05
    ld h, d                                       ; $7a35: $62
    ld bc, $a2be                                  ; $7a36: $01 $be $a2
    ret c                                         ; $7a39: $d8

    adc l                                         ; $7a3a: $8d

jr_02d_7a3b:
    adc h                                         ; $7a3b: $8c
    ld d, l                                       ; $7a3c: $55
    rst $10                                       ; $7a3d: $d7
    dec d                                         ; $7a3e: $15
    db $e3                                        ; $7a3f: $e3
    ld l, d                                       ; $7a40: $6a
    nop                                           ; $7a41: $00
    ld h, e                                       ; $7a42: $63
    add hl, de                                    ; $7a43: $19
    ld d, b                                       ; $7a44: $50
    ret                                           ; $7a45: $c9


    add b                                         ; $7a46: $80
    ld b, [hl]                                    ; $7a47: $46
    xor d                                         ; $7a48: $aa
    sbc d                                         ; $7a49: $9a
    ret z                                         ; $7a4a: $c8

    ld e, e                                       ; $7a4b: $5b
    ld b, a                                       ; $7a4c: $47
    pop de                                        ; $7a4d: $d1
    ld [hl-], a                                   ; $7a4e: $32
    add b                                         ; $7a4f: $80
    dec hl                                        ; $7a50: $2b
    ld [hl], a                                    ; $7a51: $77
    sbc e                                         ; $7a52: $9b
    xor d                                         ; $7a53: $aa
    add $e1                                       ; $7a54: $c6 $e1
    db $d3                                        ; $7a56: $d3
    xor l                                         ; $7a57: $ad
    or $d0                                        ; $7a58: $f6 $d0
    sbc l                                         ; $7a5a: $9d
    ld a, [$9d31]                                 ; $7a5b: $fa $31 $9d
    or a                                          ; $7a5e: $b7
    dec e                                         ; $7a5f: $1d
    push hl                                       ; $7a60: $e5
    pop af                                        ; $7a61: $f1
    cp $57                                        ; $7a62: $fe $57
    cp [hl]                                       ; $7a64: $be
    ld d, e                                       ; $7a65: $53
    rra                                           ; $7a66: $1f
    jp nc, $ccb0                                  ; $7a67: $d2 $b0 $cc

    halt                                          ; $7a6a: $76
    and e                                         ; $7a6b: $a3
    db $db                                        ; $7a6c: $db
    sbc b                                         ; $7a6d: $98
    ld d, a                                       ; $7a6e: $57
    ld l, [hl]                                    ; $7a6f: $6e
    ld a, e                                       ; $7a70: $7b
    or b                                          ; $7a71: $b0
    rst $30                                       ; $7a72: $f7
    ld d, a                                       ; $7a73: $57
    db $dd                                        ; $7a74: $dd
    ld l, l                                       ; $7a75: $6d
    ld l, c                                       ; $7a76: $69
    ld b, e                                       ; $7a77: $43
    ld a, [de]                                    ; $7a78: $1a
    ld a, h                                       ; $7a79: $7c
    dec l                                         ; $7a7a: $2d
    ld l, l                                       ; $7a7b: $6d
    ld a, [hl]                                    ; $7a7c: $7e
    add hl, hl                                    ; $7a7d: $29
    ld e, a                                       ; $7a7e: $5f
    db $fd                                        ; $7a7f: $fd
    cp e                                          ; $7a80: $bb
    pop hl                                        ; $7a81: $e1
    ld e, [hl]                                    ; $7a82: $5e
    ld a, [hl-]                                   ; $7a83: $3a
    dec l                                         ; $7a84: $2d
    and a                                         ; $7a85: $a7
    pop bc                                        ; $7a86: $c1
    rst $10                                       ; $7a87: $d7
    db $fc                                        ; $7a88: $fc
    halt                                          ; $7a89: $76
    cp l                                          ; $7a8a: $bd
    xor d                                         ; $7a8b: $aa
    pop de                                        ; $7a8c: $d1
    rrca                                          ; $7a8d: $0f
    xor l                                         ; $7a8e: $ad
    adc $32                                       ; $7a8f: $ce $32
    add b                                         ; $7a91: $80
    dec hl                                        ; $7a92: $2b
    sbc d                                         ; $7a93: $9a
    adc e                                         ; $7a94: $8b
    db $fc                                        ; $7a95: $fc
    ld bc, $b723                                  ; $7a96: $01 $23 $b7
    ld a, h                                       ; $7a99: $7c
    ld b, a                                       ; $7a9a: $47
    pop de                                        ; $7a9b: $d1
    call z, Call_02d_6bbd                         ; $7a9c: $cc $bd $6b
    jp nc, $96b8                                  ; $7a9f: $d2 $b8 $96

    ld [hl], $74                                  ; $7aa2: $36 $74
    adc l                                         ; $7aa4: $8d
    jp Jump_000_0e52                              ; $7aa5: $c3 $52 $0e


    ld c, b                                       ; $7aa8: $48
    db $e3                                        ; $7aa9: $e3
    or $63                                        ; $7aaa: $f6 $63
    push bc                                       ; $7aac: $c5
    sub [hl]                                      ; $7aad: $96
    jp nz, $c154                                  ; $7aae: $c2 $54 $c1

    ld b, a                                       ; $7ab1: $47
    db $ec                                        ; $7ab2: $ec
    cp d                                          ; $7ab3: $ba
    add hl, de                                    ; $7ab4: $19
    ld d, b                                       ; $7ab5: $50
    sbc $02                                       ; $7ab6: $de $02
    sbc l                                         ; $7ab8: $9d
    cp h                                          ; $7ab9: $bc
    ld l, [hl]                                    ; $7aba: $6e
    inc l                                         ; $7abb: $2c

Jump_02d_7abc:
    add l                                         ; $7abc: $85
    ld a, [$75c9]                                 ; $7abd: $fa $c9 $75
    sub h                                         ; $7ac0: $94
    jr jr_02d_7b08                                ; $7ac1: $18 $45

    ld [hl], d                                    ; $7ac3: $72
    inc b                                         ; $7ac4: $04
    and e                                         ; $7ac5: $a3
    cp e                                          ; $7ac6: $bb
    ld h, d                                       ; $7ac7: $62
    add hl, hl                                    ; $7ac8: $29
    call nc, Call_02d_559f                        ; $7ac9: $d4 $9f $55
    db $10                                        ; $7acc: $10
    or a                                          ; $7acd: $b7
    push af                                       ; $7ace: $f5
    ld [de], a                                    ; $7acf: $12
    rra                                           ; $7ad0: $1f
    db $d3                                        ; $7ad1: $d3
    cp l                                          ; $7ad2: $bd
    and $3b                                       ; $7ad3: $e6 $3b
    ld [de], a                                    ; $7ad5: $12
    and e                                         ; $7ad6: $a3
    ld e, [hl]                                    ; $7ad7: $5e
    push af                                       ; $7ad8: $f5
    ld [hl], b                                    ; $7ad9: $70
    rst $10                                       ; $7ada: $d7
    xor e                                         ; $7adb: $ab
    ld a, [hl+]                                   ; $7adc: $2a
    ld a, l                                       ; $7add: $7d
    ld e, d                                       ; $7ade: $5a
    and l                                         ; $7adf: $a5
    pop af                                        ; $7ae0: $f1
    ld e, e                                       ; $7ae1: $5b
    jp z, $2ddc                                   ; $7ae2: $ca $dc $2d

    ld b, d                                       ; $7ae5: $42
    ld a, $ae                                     ; $7ae6: $3e $ae
    ld e, l                                       ; $7ae8: $5d
    ld [hl+], a                                   ; $7ae9: $22
    jp nc, $2b2a                                  ; $7aea: $d2 $2a $2b

Jump_02d_7aed:
    scf                                           ; $7aed: $37
    adc [hl]                                      ; $7aee: $8e
    rla                                           ; $7aef: $17
    pop hl                                        ; $7af0: $e1
    ei                                            ; $7af1: $fb
    or l                                          ; $7af2: $b5
    adc c                                         ; $7af3: $89
    dec l                                         ; $7af4: $2d
    ld b, a                                       ; $7af5: $47
    dec b                                         ; $7af6: $05
    push de                                       ; $7af7: $d5
    cp e                                          ; $7af8: $bb
    or h                                          ; $7af9: $b4
    inc c                                         ; $7afa: $0c
    ld l, b                                       ; $7afb: $68
    ld b, l                                       ; $7afc: $45
    ld l, e                                       ; $7afd: $6b
    ld b, h                                       ; $7afe: $44
    ld c, b                                       ; $7aff: $48
    ei                                            ; $7b00: $fb
    rrca                                          ; $7b01: $0f
    jr @+$1b                                      ; $7b02: $18 $19

    call z, Call_02d_62e6                         ; $7b04: $cc $e6 $62
    sbc c                                         ; $7b07: $99

jr_02d_7b08:
    di                                            ; $7b08: $f3
    db $db                                        ; $7b09: $db
    cp b                                          ; $7b0a: $b8
    db $fd                                        ; $7b0b: $fd
    ld e, b                                       ; $7b0c: $58
    or c                                          ; $7b0d: $b1
    and l                                         ; $7b0e: $a5
    jr nc, jr_02d_7b66                            ; $7b0f: $30 $55

    ldh a, [rNR11]                                ; $7b11: $f0 $11
    cp e                                          ; $7b13: $bb
    ld l, [hl]                                    ; $7b14: $6e
    ld b, $54                                     ; $7b15: $06 $54
    ld a, e                                       ; $7b17: $7b
    ld l, b                                       ; $7b18: $68
    dec bc                                        ; $7b19: $0b
    daa                                           ; $7b1a: $27
    ld bc, $68ae                                  ; $7b1b: $01 $ae $68
    adc l                                         ; $7b1e: $8d
    ld [$cf29], sp                                ; $7b1f: $08 $29 $cf
    di                                            ; $7b22: $f3
    add hl, bc                                    ; $7b23: $09
    ret c                                         ; $7b24: $d8

    ret                                           ; $7b25: $c9


    dec a                                         ; $7b26: $3d
    ret nz                                        ; $7b27: $c0

    ld h, l                                       ; $7b28: $65
    rst $18                                       ; $7b29: $df
    dec c                                         ; $7b2a: $0d
    rst $20                                       ; $7b2b: $e7
    ld h, d                                       ; $7b2c: $62
    sbc c                                         ; $7b2d: $99
    di                                            ; $7b2e: $f3
    ld e, e                                       ; $7b2f: $5b
    cp [hl]                                       ; $7b30: $be
    inc de                                        ; $7b31: $13
    or h                                          ; $7b32: $b4
    add d                                         ; $7b33: $82
    adc h                                         ; $7b34: $8c
    ld l, e                                       ; $7b35: $6b
    add hl, de                                    ; $7b36: $19
    cp b                                          ; $7b37: $b8
    ld h, e                                       ; $7b38: $63
    ld e, c                                       ; $7b39: $59
    jp c, $f680                                   ; $7b3a: $da $80 $f6

    rst $28                                       ; $7b3d: $ef
    dec [hl]                                      ; $7b3e: $35
    ld d, e                                       ; $7b3f: $53
    ret nc                                        ; $7b40: $d0

    ld a, [de]                                    ; $7b41: $1a
    adc e                                         ; $7b42: $8b
    ld a, h                                       ; $7b43: $7c
    add a                                         ; $7b44: $87
    db $d3                                        ; $7b45: $d3
    push bc                                       ; $7b46: $c5
    ld a, [hl]                                    ; $7b47: $7e
    ld d, b                                       ; $7b48: $50
    push de                                       ; $7b49: $d5
    ld h, $b6                                     ; $7b4a: $26 $b6
    ld e, c                                       ; $7b4c: $59
    ld [hl], a                                    ; $7b4d: $77
    dec b                                         ; $7b4e: $05
    xor l                                         ; $7b4f: $ad
    or c                                          ; $7b50: $b1
    ld e, b                                       ; $7b51: $58
    push af                                       ; $7b52: $f5
    ld [hl], b                                    ; $7b53: $70
    add hl, de                                    ; $7b54: $19
    ret nz                                        ; $7b55: $c0

    sub l                                         ; $7b56: $95
    cp e                                          ; $7b57: $bb
    ld h, c                                       ; $7b58: $61
    cp [hl]                                       ; $7b59: $be
    and e                                         ; $7b5a: $a3
    ld a, [hl]                                    ; $7b5b: $7e
    ld a, [de]                                    ; $7b5c: $1a
    ld a, a                                       ; $7b5d: $7f
    ld [hl], d                                    ; $7b5e: $72
    adc l                                         ; $7b5f: $8d
    push bc                                       ; $7b60: $c5
    db $f4                                        ; $7b61: $f4
    ld [hl], a                                    ; $7b62: $77
    ld l, c                                       ; $7b63: $69
    push de                                       ; $7b64: $d5
    xor e                                         ; $7b65: $ab

jr_02d_7b66:
    db $f4                                        ; $7b66: $f4
    add hl, hl                                    ; $7b67: $29
    rst $18                                       ; $7b68: $df
    ld c, c                                       ; $7b69: $49
    db $dd                                        ; $7b6a: $dd
    xor a                                         ; $7b6b: $af
    ld a, c                                       ; $7b6c: $79
    ldh [$6e], a                                  ; $7b6d: $e0 $6e
    ld c, b                                       ; $7b6f: $48
    push af                                       ; $7b70: $f5
    or b                                          ; $7b71: $b0
    xor h                                         ; $7b72: $ac
    ld l, e                                       ; $7b73: $6b
    ld [hl], d                                    ; $7b74: $72
    push de                                       ; $7b75: $d5
    ld e, $ba                                     ; $7b76: $1e $ba
    xor h                                         ; $7b78: $ac
    cp e                                          ; $7b79: $bb
    add d                                         ; $7b7a: $82
    sub $08                                       ; $7b7b: $d6 $08
    xor b                                         ; $7b7d: $a8
    ld e, [hl]                                    ; $7b7e: $5e
    rst $10                                       ; $7b7f: $d7
    db $e4                                        ; $7b80: $e4
    ld a, [de]                                    ; $7b81: $1a
    db $fc                                        ; $7b82: $fc
    ld [hl], l                                    ; $7b83: $75
    ld a, b                                       ; $7b84: $78
    add l                                         ; $7b85: $85
    jp $8032                                      ; $7b86: $c3 $32 $80


    dec hl                                        ; $7b89: $2b
    ld [hl], a                                    ; $7b8a: $77
    set 6, e                                      ; $7b8b: $cb $f3
    cp h                                          ; $7b8d: $bc
    dec b                                         ; $7b8e: $05
    push af                                       ; $7b8f: $f5
    or l                                          ; $7b90: $b5
    nop                                           ; $7b91: $00
    adc h                                         ; $7b92: $8c
    ld sp, $1178                                  ; $7b93: $31 $78 $11
    ld d, [hl]                                    ; $7b96: $56
    ld a, [de]                                    ; $7b97: $1a
    rst $10                                       ; $7b98: $d7
    adc d                                         ; $7b99: $8a
    xor l                                         ; $7b9a: $ad
    or d                                          ; $7b9b: $b2
    ld [hl], d                                    ; $7b9c: $72
    db $e3                                        ; $7b9d: $e3
    ld a, b                                       ; $7b9e: $78
    ld de, $3fbe                                  ; $7b9f: $11 $be $3f
    ld c, $eb                                     ; $7ba2: $0e $eb
    ldh a, [$9c]                                  ; $7ba4: $f0 $9c
    ld de, $ce74                                  ; $7ba6: $11 $74 $ce
    ld [hl], a                                    ; $7ba9: $77
    ld [$74c7], a                                 ; $7baa: $ea $c7 $74
    cp [hl]                                       ; $7bad: $be
    inc de                                        ; $7bae: $13
    or h                                          ; $7baf: $b4
    add $5f                                       ; $7bb0: $c6 $5f
    ld e, d                                       ; $7bb2: $5a
    ld de, $df02                                  ; $7bb3: $11 $02 $df
    ret                                           ; $7bb6: $c9


    add b                                         ; $7bb7: $80
    xor $2a                                       ; $7bb8: $ee $2a
    ld h, l                                       ; $7bba: $65
    push de                                       ; $7bbb: $d5
    db $dd                                        ; $7bbc: $dd
    add $55                                       ; $7bbd: $c6 $55
    reti                                          ; $7bbf: $d9


    rst $20                                       ; $7bc0: $e7
    or a                                          ; $7bc1: $b7
    ld [hl], c                                    ; $7bc2: $71
    adc l                                         ; $7bc3: $8d
    db $fc                                        ; $7bc4: $fc
    ld bc, $5f23                                  ; $7bc5: $01 $23 $5f
    cp c                                          ; $7bc8: $b9
    db $db                                        ; $7bc9: $db
    daa                                           ; $7bca: $27
    xor h                                         ; $7bcb: $ac
    rla                                           ; $7bcc: $17
    rst $08                                       ; $7bcd: $cf
    add hl, hl                                    ; $7bce: $29
    rst $18                                       ; $7bcf: $df
    xor c                                         ; $7bd0: $a9
    rra                                           ; $7bd1: $1f
    db $d3                                        ; $7bd2: $d3
    ld sp, hl                                     ; $7bd3: $f9
    ld a, [hl-]                                   ; $7bd4: $3a
    ld a, $60                                     ; $7bd5: $3e $60
    ld [hl], h                                    ; $7bd7: $74
    ld a, [hl]                                    ; $7bd8: $7e
    dec a                                         ; $7bd9: $3d
    and $41                                       ; $7bda: $e6 $41
    xor h                                         ; $7bdc: $ac
    cp d                                          ; $7bdd: $ba
    dec de                                        ; $7bde: $1b
    ld [hl], d                                    ; $7bdf: $72
    ld a, c                                       ; $7be0: $79
    db $ed                                        ; $7be1: $ed
    and c                                         ; $7be2: $a1
    dec l                                         ; $7be3: $2d
    ld b, a                                       ; $7be4: $47
    dec de                                        ; $7be5: $1b
    add $8c                                       ; $7be6: $c6 $8c
    ld c, b                                       ; $7be8: $48
    sbc a                                         ; $7be9: $9f
    ldh a, [$fd]                                  ; $7bea: $f0 $fd
    push de                                       ; $7bec: $d5
    ld e, c                                       ; $7bed: $59
    or c                                          ; $7bee: $b1
    add l                                         ; $7bef: $85
    sub l                                         ; $7bf0: $95
    and d                                         ; $7bf1: $a2
    pop af                                        ; $7bf2: $f1
    ei                                            ; $7bf3: $fb
    ld d, c                                       ; $7bf4: $51
    inc b                                         ; $7bf5: $04
    ld e, h                                       ; $7bf6: $5c
    db $e3                                        ; $7bf7: $e3
    adc d                                         ; $7bf8: $8a
    ld [hl], l                                    ; $7bf9: $75
    ld a, b                                       ; $7bfa: $78
    add l                                         ; $7bfb: $85
    ld b, e                                       ; $7bfc: $43
    db $e4                                        ; $7bfd: $e4
    ld e, e                                       ; $7bfe: $5b
    db $fd                                        ; $7bff: $fd
    cp e                                          ; $7c00: $bb
    pop hl                                        ; $7c01: $e1
    jr jr_02d_7c5c                                ; $7c02: $18 $58

    ld b, a                                       ; $7c04: $47
    adc c                                         ; $7c05: $89
    ld d, c                                       ; $7c06: $51
    xor h                                         ; $7c07: $ac
    ld h, [hl]                                    ; $7c08: $66
    ld a, [$f2e4]                                 ; $7c09: $fa $e4 $f2
    adc c                                         ; $7c0c: $89
    and [hl]                                      ; $7c0d: $a6
    cp a                                          ; $7c0e: $bf
    ld a, b                                       ; $7c0f: $78
    ld c, [hl]                                    ; $7c10: $4e
    add sp, -$3d                                  ; $7c11: $e8 $c3
    or d                                          ; $7c13: $b2
    ld a, a                                       ; $7c14: $7f
    xor a                                         ; $7c15: $af
    sbc c                                         ; $7c16: $99
    xor l                                         ; $7c17: $ad
    or c                                          ; $7c18: $b1
    ld e, b                                       ; $7c19: $58
    ld a, c                                       ; $7c1a: $79
    sbc a                                         ; $7c1b: $9f
    ld b, l                                       ; $7c1c: $45
    xor d                                         ; $7c1d: $aa
    sbc d                                         ; $7c1e: $9a
    ret z                                         ; $7c1f: $c8

    ld e, e                                       ; $7c20: $5b
    sbc l                                         ; $7c21: $9d
    ld h, b                                       ; $7c22: $60

Call_02d_7c23:
    rla                                           ; $7c23: $17
    ld e, e                                       ; $7c24: $5b
    ld a, [hl]                                    ; $7c25: $7e

jr_02d_7c26:
    or c                                          ; $7c26: $b1
    dec d                                         ; $7c27: $15
    db $e3                                        ; $7c28: $e3
    ld e, d                                       ; $7c29: $5a
    or c                                          ; $7c2a: $b1
    dec d                                         ; $7c2b: $15
    ld e, l                                       ; $7c2c: $5d
    inc b                                         ; $7c2d: $04
    xor [hl]                                      ; $7c2e: $ae
    jp c, Jump_02d_5b43                           ; $7c2f: $da $43 $5b

    daa                                           ; $7c32: $27
    ld [hl], l                                    ; $7c33: $75
    ccf                                           ; $7c34: $3f
    dec b                                         ; $7c35: $05
    db $ed                                        ; $7c36: $ed
    jp nc, Jump_000_320a                          ; $7c37: $d2 $0a $32

    xor [hl]                                      ; $7c3a: $ae
    db $e4                                        ; $7c3b: $e4
    ld a, [hl-]                                   ; $7c3c: $3a
    ld c, d                                       ; $7c3d: $4a
    adc h                                         ; $7c3e: $8c
    and d                                         ; $7c3f: $a2
    or $d0                                        ; $7c40: $f6 $d0
    ld d, $1d                                     ; $7c42: $16 $1d
    inc c                                         ; $7c44: $0c
    ld h, e                                       ; $7c45: $63
    rst $10                                       ; $7c46: $d7
    ld e, l                                       ; $7c47: $5d
    ld b, c                                       ; $7c48: $41
    db $d3                                        ; $7c49: $d3
    rst $38                                       ; $7c4a: $ff
    ld d, b                                       ; $7c4b: $50
    inc hl                                        ; $7c4c: $23
    add sp, $3c                                   ; $7c4d: $e8 $3c
    xor [hl]                                      ; $7c4f: $ae
    dec d                                         ; $7c50: $15
    ld [hl], h                                    ; $7c51: $74
    push hl                                       ; $7c52: $e5
    dec sp                                        ; $7c53: $3b
    ld b, l                                       ; $7c54: $45
    inc l                                         ; $7c55: $2c
    ld [hl], e                                    ; $7c56: $73
    xor [hl]                                      ; $7c57: $ae
    dec [hl]                                      ; $7c58: $35
    dec b                                         ; $7c59: $05
    xor b                                         ; $7c5a: $a8
    dec sp                                        ; $7c5b: $3b

jr_02d_7c5c:
    ld e, d                                       ; $7c5c: $5a
    or c                                          ; $7c5d: $b1
    pop de                                        ; $7c5e: $d1
    xor l                                         ; $7c5f: $ad
    call c, $16f2                                 ; $7c60: $dc $f2 $16
    and a                                         ; $7c63: $a7
    ccf                                           ; $7c64: $3f
    inc l                                         ; $7c65: $2c
    ld [hl], l                                    ; $7c66: $75
    halt                                          ; $7c67: $76
    xor h                                         ; $7c68: $ac
    cp c                                          ; $7c69: $b9
    rst $10                                       ; $7c6a: $d7
    inc h                                         ; $7c6b: $24
    rst $10                                       ; $7c6c: $d7
    cp b                                          ; $7c6d: $b8
    ld [hl+], a                                   ; $7c6e: $22
    inc bc                                        ; $7c6f: $03
    sbc d                                         ; $7c70: $9a
    ld a, $61                                     ; $7c71: $3e $61
    ld e, l                                       ; $7c73: $5d
    ld d, a                                       ; $7c74: $57
    and l                                         ; $7c75: $a5
    ld c, a                                       ; $7c76: $4f
    ld [hl], e                                    ; $7c77: $73
    ld d, l                                       ; $7c78: $55
    jr jr_02d_7c26                                ; $7c79: $18 $ab

    or e                                          ; $7c7b: $b3
    cpl                                           ; $7c7c: $2f
    ld c, b                                       ; $7c7d: $48
    rst $10                                       ; $7c7e: $d7
    ld h, $b6                                     ; $7c7f: $26 $b6
    dec e                                         ; $7c81: $1d
    db $e4                                        ; $7c82: $e4
    rla                                           ; $7c83: $17
    and $3b                                       ; $7c84: $e6 $3b
    push af                                       ; $7c86: $f5
    ld h, e                                       ; $7c87: $63
    ld a, [hl-]                                   ; $7c88: $3a
    ld l, a                                       ; $7c89: $6f
    ld bc, $eff5                                  ; $7c8a: $01 $f5 $ef
    add [hl]                                      ; $7c8d: $86
    db $e3                                        ; $7c8e: $e3
    ld c, b                                       ; $7c8f: $48
    cp e                                          ; $7c90: $bb
    scf                                           ; $7c91: $37
    xor [hl]                                      ; $7c92: $ae
    ret z                                         ; $7c93: $c8

    add b                                         ; $7c94: $80
    xor $79                                       ; $7c95: $ee $79
    dec bc                                        ; $7c97: $0b
    ld b, a                                       ; $7c98: $47
    cp h                                          ; $7c99: $bc
    sbc a                                         ; $7c9a: $9f
    db $fd                                        ; $7c9b: $fd
    ret nz                                        ; $7c9c: $c0

    ld [hl], a                                    ; $7c9d: $77
    xor h                                         ; $7c9e: $ac
    cp c                                          ; $7c9f: $b9
    rst $10                                       ; $7ca0: $d7
    db $e4                                        ; $7ca1: $e4
    db $eb                                        ; $7ca2: $eb
    inc b                                         ; $7ca3: $04
    inc hl                                        ; $7ca4: $23
    dec l                                         ; $7ca5: $2d
    db $f4                                        ; $7ca6: $f4
    ld h, e                                       ; $7ca7: $63
    dec d                                         ; $7ca8: $15
    ld a, [bc]                                    ; $7ca9: $0a
    ld a, [hl-]                                   ; $7caa: $3a
    rst $10                                       ; $7cab: $d7
    ld e, $da                                     ; $7cac: $1e $da
    ld [bc], a                                    ; $7cae: $02
    daa                                           ; $7caf: $27
    ld bc, $3be6                                  ; $7cb0: $01 $e6 $3b
    push af                                       ; $7cb3: $f5
    ld h, e                                       ; $7cb4: $63
    ld a, [hl-]                                   ; $7cb5: $3a
    ld e, a                                       ; $7cb6: $5f
    rlca                                          ; $7cb7: $07
    jp $6358                                      ; $7cb8: $c3 $58 $63


    or c                                          ; $7cbb: $b1
    db $eb                                        ; $7cbc: $eb
    ld d, l                                       ; $7cbd: $55
    ld c, l                                       ; $7cbe: $4d
    xor c                                         ; $7cbf: $a9
    ld c, e                                       ; $7cc0: $4b
    xor d                                         ; $7cc1: $aa
    db $f4                                        ; $7cc2: $f4
    add hl, hl                                    ; $7cc3: $29
    ld l, a                                       ; $7cc4: $6f
    ld bc, $b387                                  ; $7cc5: $01 $87 $b3
    sub e                                         ; $7cc8: $93
    set 2, [hl]                                   ; $7cc9: $cb $d6
    ld a, [hl+]                                   ; $7ccb: $2a
    dec l                                         ; $7ccc: $2d
    db $f4                                        ; $7ccd: $f4
    ld h, e                                       ; $7cce: $63
    dec d                                         ; $7ccf: $15
    ld a, [bc]                                    ; $7cd0: $0a
    ld a, [hl-]                                   ; $7cd1: $3a
    rst $20                                       ; $7cd2: $e7
    xor e                                         ; $7cd3: $ab
    xor a                                         ; $7cd4: $af
    ld e, l                                       ; $7cd5: $5d
    cp $30                                        ; $7cd6: $fe $30
    sub [hl]                                      ; $7cd8: $96
    ld bc, $5b2d                                  ; $7cd9: $01 $2d $5b
    xor e                                         ; $7cdc: $ab
    or h                                          ; $7cdd: $b4
    ld a, b                                       ; $7cde: $78
    ret nz                                        ; $7cdf: $c0

    and b                                         ; $7ce0: $a0
    ld a, [hl]                                    ; $7ce1: $7e
    adc h                                         ; $7ce2: $8c
    ld l, e                                       ; $7ce3: $6b
    sub a                                         ; $7ce4: $97
    ld d, $cf                                     ; $7ce5: $16 $cf
    add hl, hl                                    ; $7ce7: $29
    ld l, a                                       ; $7ce8: $6f
    ld bc, $eff5                                  ; $7ce9: $01 $f5 $ef
    add [hl]                                      ; $7cec: $86
    inc hl                                        ; $7ced: $23
    ld a, a                                       ; $7cee: $7f
    ret nz                                        ; $7cef: $c0

    call c, $b456                                 ; $7cf0: $dc $56 $b4
    add d                                         ; $7cf3: $82
    adc h                                         ; $7cf4: $8c
    ld l, e                                       ; $7cf5: $6b
    ld e, h                                       ; $7cf6: $5c
    ld sp, $84fb                                  ; $7cf7: $31 $fb $84
    push af                                       ; $7cfa: $f5
    ld [c], a                                     ; $7cfb: $e2
    add hl, sp                                    ; $7cfc: $39
    ld b, l                                       ; $7cfd: $45
    sbc $02                                       ; $7cfe: $de $02
    daa                                           ; $7d00: $27
    ld [hl], l                                    ; $7d01: $75
    cp a                                          ; $7d02: $bf
    ld e, $ad                                     ; $7d03: $1e $ad
    or $d0                                        ; $7d05: $f6 $d0
    ld d, $1d                                     ; $7d07: $16 $1d
    dec h                                         ; $7d09: $25
    ld b, [hl]                                    ; $7d0a: $46
    or c                                          ; $7d0b: $b1
    ld [hl], d                                    ; $7d0c: $72

Call_02d_7d0d:
    scf                                           ; $7d0d: $37
    add $90                                       ; $7d0e: $c6 $90
    halt                                          ; $7d10: $76
    reti                                          ; $7d11: $d9


jr_02d_7d12:
    push bc                                       ; $7d12: $c5
    cp [hl]                                       ; $7d13: $be
    adc l                                         ; $7d14: $8d
    db $db                                        ; $7d15: $db
    adc a                                         ; $7d16: $8f
    dec d                                         ; $7d17: $15
    ld e, e                                       ; $7d18: $5b
    ld e, b                                       ; $7d19: $58
    add hl, hl                                    ; $7d1a: $29

Jump_02d_7d1b:
    ld a, [de]                                    ; $7d1b: $1a
    cp a                                          ; $7d1c: $bf
    rra                                           ; $7d1d: $1f
    ld b, l                                       ; $7d1e: $45
    ret nz                                        ; $7d1f: $c0

    dec [hl]                                      ; $7d20: $35
    xor [hl]                                      ; $7d21: $ae
    ld e, b                                       ; $7d22: $58
    add a                                         ; $7d23: $87
    ld d, a                                       ; $7d24: $57
    jr c, jr_02d_7d6b                             ; $7d25: $38 $44

    sbc $02                                       ; $7d27: $de $02
    push af                                       ; $7d29: $f5
    rst $28                                       ; $7d2a: $ef
    ld b, $6e                                     ; $7d2b: $06 $6e
    jr jr_02d_7d12                                ; $7d2d: $18 $e3

    dec a                                         ; $7d2f: $3d

jr_02d_7d30:
    xor h                                         ; $7d30: $ac
    cp d                                          ; $7d31: $ba
    db $eb                                        ; $7d32: $eb
    adc a                                         ; $7d33: $8f
    ccf                                           ; $7d34: $3f
    jr nz, jr_02d_7d30                            ; $7d35: $20 $f9

    ld [hl-], a                                   ; $7d37: $32
    and b                                         ; $7d38: $a0
    ld e, l                                       ; $7d39: $5d
    rst $30                                       ; $7d3a: $f7
    dec de                                        ; $7d3b: $1b
    add hl, de                                    ; $7d3c: $19
    jp nc, Jump_02d_4a3a                          ; $7d3d: $d2 $3a $4a

    adc h                                         ; $7d40: $8c
    ld [hl+], a                                   ; $7d41: $22
    ld e, a                                       ; $7d42: $5f
    rst $18                                       ; $7d43: $df

jr_02d_7d44:
    db $fd                                        ; $7d44: $fd
    xor l                                         ; $7d45: $ad
    ld a, c                                       ; $7d46: $79
    ld hl, sp+$29                                 ; $7d47: $f8 $29
    sub $3c                                       ; $7d49: $d6 $3c
    ldh a, [rNR33]                                ; $7d4b: $f0 $1d
    db $e3                                        ; $7d4d: $e3
    dec [hl]                                      ; $7d4e: $35
    jp hl                                         ; $7d4f: $e9


    db $f4                                        ; $7d50: $f4
    ei                                            ; $7d51: $fb
    db $fc                                        ; $7d52: $fc
    ld sp, hl                                     ; $7d53: $f9
    sbc d                                         ; $7d54: $9a
    rlca                                          ; $7d55: $07
    ld a, $63                                     ; $7d56: $3e $63
    ld e, $fa                                     ; $7d58: $1e $fa
    db $fc                                        ; $7d5a: $fc
    halt                                          ; $7d5b: $76
    ld b, c                                       ; $7d5c: $41
    ld [hl], e                                    ; $7d5d: $73
    di                                            ; $7d5e: $f3
    db $db                                        ; $7d5f: $db
    adc d                                         ; $7d60: $8a
    xor l                                         ; $7d61: $ad
    pop af                                        ; $7d62: $f1
    rst $10                                       ; $7d63: $d7
    jr c, jr_02d_7d44                             ; $7d64: $38 $de

    add sp, $36                                   ; $7d66: $e8 $36
    xor [hl]                                      ; $7d68: $ae
    dec d                                         ; $7d69: $15
    ld e, e                                       ; $7d6a: $5b

jr_02d_7d6b:
    ld a, [bc]                                    ; $7d6b: $0a
    ld d, e                                       ; $7d6c: $53
    dec b                                         ; $7d6d: $05
    rra                                           ; $7d6e: $1f
    or c                                          ; $7d6f: $b1
    db $eb                                        ; $7d70: $eb
    ld h, [hl]                                    ; $7d71: $66
    ld b, b                                       ; $7d72: $40
    ld sp, hl                                     ; $7d73: $f9
    ld a, [hl-]                                   ; $7d74: $3a
    jr jr_02d_7df5                                ; $7d75: $18 $7e

    jp nc, Jump_02d_4fb7                          ; $7d77: $d2 $b7 $4f

    ret                                           ; $7d7a: $c9


    cp c                                          ; $7d7b: $b9
    add sp, -$7f                                  ; $7d7c: $e8 $81
    ld a, a                                       ; $7d7e: $7f
    call $d760                                    ; $7d7f: $cd $60 $d7
    inc bc                                        ; $7d82: $03
    adc a                                         ; $7d83: $8f
    ld [hl], c                                    ; $7d84: $71
    adc l                                         ; $7d85: $8d
    rst $18                                       ; $7d86: $df
    jp nc, $a1fa                                  ; $7d87: $d2 $fa $a1

    ld e, l                                       ; $7d8a: $5d
    rst $28                                       ; $7d8b: $ef
    sub e                                         ; $7d8c: $93
    ld l, e                                       ; $7d8d: $6b
    ld b, l                                       ; $7d8e: $45
    or c                                          ; $7d8f: $b1
    db $f4                                        ; $7d90: $f4
    di                                            ; $7d91: $f3
    ld c, e                                       ; $7d92: $4b
    ld sp, $eb0e                                  ; $7d93: $31 $0e $eb
    ld h, b                                       ; $7d96: $60
    ld h, l                                       ; $7d97: $65

jr_02d_7d98:
    call Call_02d_5f03                            ; $7d98: $cd $03 $5f
    ld a, [de]                                    ; $7d9b: $1a
    ccf                                           ; $7d9c: $3f
    ld a, [$fde8]                                 ; $7d9d: $fa $e8 $fd
    ld [hl], c                                    ; $7da0: $71
    ld sp, $3d0f                                  ; $7da1: $31 $0f $3d
    ld l, a                                       ; $7da4: $6f
    ld bc, $609d                                  ; $7da5: $01 $9d $60
    and h                                         ; $7da8: $a4
    add l                                         ; $7da9: $85
    ld a, [hl]                                    ; $7daa: $7e
    xor h                                         ; $7dab: $ac
    ld b, d                                       ; $7dac: $42
    ld b, c                                       ; $7dad: $41
    rst $20                                       ; $7dae: $e7
    db $e4                                        ; $7daf: $e4
    adc [hl]                                      ; $7db0: $8e
    dec [hl]                                      ; $7db1: $35
    rst $30                                       ; $7db2: $f7
    sbc d                                         ; $7db3: $9a
    jp c, Jump_02d_5b43                           ; $7db4: $da $43 $5b

    daa                                           ; $7db7: $27
    ld bc, $2726                                  ; $7db8: $01 $26 $27
    ld e, d                                       ; $7dbb: $5a
    or $dd                                        ; $7dbc: $f6 $dd
    ld [hl], b                                    ; $7dbe: $70
    db $e4                                        ; $7dbf: $e4
    rrca                                          ; $7dc0: $0f
    sbc b                                         ; $7dc1: $98
    db $db                                        ; $7dc2: $db
    adc d                                         ; $7dc3: $8a
    ld d, [hl]                                    ; $7dc4: $56
    reti                                          ; $7dc5: $d9


    rlca                                          ; $7dc6: $07
    sub l                                         ; $7dc7: $95
    ld [hl], c                                    ; $7dc8: $71
    push bc                                       ; $7dc9: $c5
    db $ec                                        ; $7dca: $ec
    inc de                                        ; $7dcb: $13
    sub $8b                                       ; $7dcc: $d6 $8b
    rst $20                                       ; $7dce: $e7
    inc d                                         ; $7dcf: $14
    ld a, c                                       ; $7dd0: $79
    dec bc                                        ; $7dd1: $0b
    sbc l                                         ; $7dd2: $9d
    cp h                                          ; $7dd3: $bc
    ld l, [hl]                                    ; $7dd4: $6e
    inc l                                         ; $7dd5: $2c
    add l                                         ; $7dd6: $85
    ld a, [$1dc9]                                 ; $7dd7: $fa $c9 $1d
    ld l, e                                       ; $7dda: $6b
    xor $35                                       ; $7ddb: $ee $35
    ld sp, hl                                     ; $7ddd: $f9
    ld a, [hl-]                                   ; $7dde: $3a
    jr jr_02d_7d98                                ; $7ddf: $18 $b7

    ld c, d                                       ; $7de1: $4a
    db $eb                                        ; $7de2: $eb
    adc b                                         ; $7de3: $88
    rst $38                                       ; $7de4: $ff
    jp nc, Jump_02d_6e42                          ; $7de5: $d2 $42 $6e

    ld [hl], e                                    ; $7de8: $73
    ld h, e                                       ; $7de9: $63
    ld d, b                                       ; $7dea: $50
    db $e3                                        ; $7deb: $e3
    sbc d                                         ; $7dec: $9a
    rst $18                                       ; $7ded: $df
    ld l, $68                                     ; $7dee: $2e $68
    ld l, [hl]                                    ; $7df0: $6e
    ld l, $5f                                     ; $7df1: $2e $5f
    cp h                                          ; $7df3: $bc
    cp a                                          ; $7df4: $bf

jr_02d_7df5:
    add d                                         ; $7df5: $82
    adc h                                         ; $7df6: $8c
    dec hl                                        ; $7df7: $2b
    ld l, a                                       ; $7df8: $6f
    ld bc, $9ac7                                  ; $7df9: $01 $c7 $9a
    ld a, e                                       ; $7dfc: $7b
    ld c, l                                       ; $7dfd: $4d
    ld l, l                                       ; $7dfe: $6d
    ld [c], a                                     ; $7dff: $e2
    ld [$cbd7], a                                 ; $7e00: $ea $d7 $cb
    xor [hl]                                      ; $7e03: $ae
    sub a                                         ; $7e04: $97
    xor l                                         ; $7e05: $ad
    ld sp, $630f                                  ; $7e06: $31 $0f $63
    add hl, de                                    ; $7e09: $19
    cp b                                          ; $7e0a: $b8
    cp a                                          ; $7e0b: $bf
    cp a                                          ; $7e0c: $bf
    xor a                                         ; $7e0d: $af
    cp c                                          ; $7e0e: $b9
    ld a, $a6                                     ; $7e0f: $3e $a6
    adc e                                         ; $7e11: $8b
    sub $14                                       ; $7e12: $d6 $14
    adc b                                         ; $7e14: $88
    cp h                                          ; $7e15: $bc
    dec b                                         ; $7e16: $05
    push af                                       ; $7e17: $f5
    rst $28                                       ; $7e18: $ef
    add [hl]                                      ; $7e19: $86
    inc hl                                        ; $7e1a: $23
    ld a, a                                       ; $7e1b: $7f
    ret nz                                        ; $7e1c: $c0

    call c, $b456                                 ; $7e1d: $dc $56 $b4
    add d                                         ; $7e20: $82
    adc h                                         ; $7e21: $8c
    ld l, e                                       ; $7e22: $6b
    add hl, de                                    ; $7e23: $19
    cp b                                          ; $7e24: $b8
    ld h, e                                       ; $7e25: $63
    ld e, c                                       ; $7e26: $59
    jp c, Jump_000_314a                           ; $7e27: $da $4a $31

    and h                                         ; $7e2a: $a4

jr_02d_7e2b:
    add hl, de                                    ; $7e2b: $19
    and e                                         ; $7e2c: $a3
    ld l, e                                       ; $7e2d: $6b
    push hl                                       ; $7e2e: $e5
    ld l, [hl]                                    ; $7e2f: $6e
    sbc a                                         ; $7e30: $9f
    or b                                          ; $7e31: $b0
    ld e, [hl]                                    ; $7e32: $5e
    inc a                                         ; $7e33: $3c
    and a                                         ; $7e34: $a7
    adc c                                         ; $7e35: $89
    sub [hl]                                      ; $7e36: $96
    xor l                                         ; $7e37: $ad
    sub l                                         ; $7e38: $95
    cp e                                          ; $7e39: $bb
    pop hl                                        ; $7e3a: $e1
    ld e, h                                       ; $7e3b: $5c
    sbc a                                         ; $7e3c: $9f
    jp $acea                                      ; $7e3d: $c3 $ea $ac


    ret c                                         ; $7e40: $d8

    ld d, d                                       ; $7e41: $52
    sbc b                                         ; $7e42: $98
    ld a, [hl+]                                   ; $7e43: $2a
    ld hl, sp-$78                                 ; $7e44: $f8 $88
    ld e, l                                       ; $7e46: $5d
    scf                                           ; $7e47: $37
    inc bc                                        ; $7e48: $03
    jp z, Jump_02d_475b                           ; $7e49: $ca $5b $47

    call nc, $d54b                                ; $7e4c: $d4 $4b $d5
    ld c, e                                       ; $7e4f: $4b
    cp l                                          ; $7e50: $bd
    ccf                                           ; $7e51: $3f
    ld [hl], d                                    ; $7e52: $72
    ld h, e                                       ; $7e53: $63
    inc c                                         ; $7e54: $0c
    ld c, e                                       ; $7e55: $4b
    ld [hl], d                                    ; $7e56: $72
    rst $00                                       ; $7e57: $c7
    sbc d                                         ; $7e58: $9a
    ld a, e                                       ; $7e59: $7b
    ld c, l                                       ; $7e5a: $4d
    ld [hl], d                                    ; $7e5b: $72
    reti                                          ; $7e5c: $d9


    push af                                       ; $7e5d: $f5
    or d                                          ; $7e5e: $b2
    db $eb                                        ; $7e5f: $eb
    ld h, l                                       ; $7e60: $65
    ld l, e                                       ; $7e61: $6b
    rst $38                                       ; $7e62: $ff
    xor [hl]                                      ; $7e63: $ae
    ccf                                           ; $7e64: $3f
    inc hl                                        ; $7e65: $23
    jp nc, $86e7                                  ; $7e66: $d2 $e7 $86

    or c                                          ; $7e69: $b1
    add $62                                       ; $7e6a: $c6 $62
    push de                                       ; $7e6c: $d5
    jp $f91f                                      ; $7e6d: $c3 $1f $f9


    ld a, [$73ea]                                 ; $7e70: $fa $ea $73
    call Call_02d_4fc3                            ; $7e73: $cd $c3 $4f
    or c                                          ; $7e76: $b1
    and $81                                       ; $7e77: $e6 $81
    rst $28                                       ; $7e79: $ef
    jr jr_02d_7e2b                                ; $7e7a: $18 $af

    ld [hl], a                                    ; $7e7c: $77
    adc h                                         ; $7e7d: $8c
    rst $10                                       ; $7e7e: $d7
    dec sp                                        ; $7e7f: $3b
    add $6b                                       ; $7e80: $c6 $6b
    jp nc, $f7e9                                  ; $7e82: $d2 $e9 $f7

    ld sp, hl                                     ; $7e85: $f9
    di                                            ; $7e86: $f3
    cp h                                          ; $7e87: $bc
    dec b                                         ; $7e88: $05

jr_02d_7e89:
    push af                                       ; $7e89: $f5
    rst $28                                       ; $7e8a: $ef
    add [hl]                                      ; $7e8b: $86
    inc hl                                        ; $7e8c: $23
    ld a, a                                       ; $7e8d: $7f
    ret nz                                        ; $7e8e: $c0

    call c, $b456                                 ; $7e8f: $dc $56 $b4
    add d                                         ; $7e92: $82
    adc h                                         ; $7e93: $8c
    ld l, e                                       ; $7e94: $6b
    add hl, de                                    ; $7e95: $19
    cp b                                          ; $7e96: $b8
    ld h, e                                       ; $7e97: $63
    ld e, c                                       ; $7e98: $59
    jp c, Jump_000_314a                           ; $7e99: $da $4a $31

    and h                                         ; $7e9c: $a4
    add hl, de                                    ; $7e9d: $19
    and e                                         ; $7e9e: $a3
    ld l, e                                       ; $7e9f: $6b
    push hl                                       ; $7ea0: $e5
    ld l, [hl]                                    ; $7ea1: $6e
    sbc a                                         ; $7ea2: $9f
    or b                                          ; $7ea3: $b0
    ld e, [hl]                                    ; $7ea4: $5e
    inc a                                         ; $7ea5: $3c
    and a                                         ; $7ea6: $a7
    cp h                                          ; $7ea7: $bc
    dec b                                         ; $7ea8: $05
    ld b, a                                       ; $7ea9: $47
    call nc, $d54b                                ; $7eaa: $d4 $4b $d5
    ld c, e                                       ; $7ead: $4b
    cp l                                          ; $7eae: $bd
    ccf                                           ; $7eaf: $3f
    ld [hl], d                                    ; $7eb0: $72
    ld h, e                                       ; $7eb1: $63
    inc c                                         ; $7eb2: $0c
    ld c, e                                       ; $7eb3: $4b
    ld [hl], d                                    ; $7eb4: $72
    rst $00                                       ; $7eb5: $c7
    sbc d                                         ; $7eb6: $9a
    ld a, e                                       ; $7eb7: $7b
    ld c, l                                       ; $7eb8: $4d
    ld [hl], d                                    ; $7eb9: $72
    reti                                          ; $7eba: $d9


    push af                                       ; $7ebb: $f5
    or d                                          ; $7ebc: $b2
    db $eb                                        ; $7ebd: $eb
    ld h, l                                       ; $7ebe: $65
    ld l, e                                       ; $7ebf: $6b
    rst $38                                       ; $7ec0: $ff
    xor [hl]                                      ; $7ec1: $ae
    ccf                                           ; $7ec2: $3f
    inc hl                                        ; $7ec3: $23
    jp nc, $86e7                                  ; $7ec4: $d2 $e7 $86

    or c                                          ; $7ec7: $b1
    add $62                                       ; $7ec8: $c6 $62
    push de                                       ; $7eca: $d5
    jp $f91f                                      ; $7ecb: $c3 $1f $f9


    ld a, [$73ea]                                 ; $7ece: $fa $ea $73
    call Call_02d_4fc3                            ; $7ed1: $cd $c3 $4f
    or c                                          ; $7ed4: $b1
    and $81                                       ; $7ed5: $e6 $81
    rst $28                                       ; $7ed7: $ef
    jr jr_02d_7e89                                ; $7ed8: $18 $af

    ld [hl], a                                    ; $7eda: $77
    adc h                                         ; $7edb: $8c
    rst $10                                       ; $7edc: $d7
    dec sp                                        ; $7edd: $3b
    add $6b                                       ; $7ede: $c6 $6b
    jp nc, $f7e9                                  ; $7ee0: $d2 $e9 $f7

    ld sp, hl                                     ; $7ee3: $f9
    di                                            ; $7ee4: $f3
    ld a, h                                       ; $7ee5: $7c
    ld b, a                                       ; $7ee6: $47
    sub $e3                                       ; $7ee7: $d6 $e3
    push af                                       ; $7ee9: $f5
    ld hl, sp-$05                                 ; $7eea: $f8 $fb
    ld e, a                                       ; $7eec: $5f
    rst $20                                       ; $7eed: $e7
    rst $10                                       ; $7eee: $d7
    xor e                                         ; $7eef: $ab
    ld e, $ae                                     ; $7ef0: $1e $ae
    ld l, b                                       ; $7ef2: $68
    dec b                                         ; $7ef3: $05
    add hl, de                                    ; $7ef4: $19
    rst $10                                       ; $7ef5: $d7
    ld b, h                                       ; $7ef6: $44
    set 2, [hl]                                   ; $7ef7: $cb $d6
    adc d                                         ; $7ef9: $8a
    and $fa                                       ; $7efa: $e6 $fa
    call c, Call_02d_570d                         ; $7efc: $dc $0d $57
    ld h, a                                       ; $7eff: $67
    dec e                                         ; $7f00: $1d
    adc h                                         ; $7f01: $8c
    ld e, e                                       ; $7f02: $5b
    and l                                         ; $7f03: $a5
    ld [hl], l                                    ; $7f04: $75

Jump_02d_7f05:
    call nz, Call_000_297f                        ; $7f05: $c4 $7f $29
    ld l, a                                       ; $7f08: $6f
    ld bc, $f49d                                  ; $7f09: $01 $9d $f4
    ld [hl], l                                    ; $7f0c: $75
    ld a, [hl]                                    ; $7f0d: $7e
    sbc $02                                       ; $7f0e: $de $02
    and a                                         ; $7f10: $a7
    rst $10                                       ; $7f11: $d7
    ld h, e                                       ; $7f12: $63
    ld [$8f31], a                                 ; $7f13: $ea $31 $8f
    ld e, h                                       ; $7f16: $5c
    db $e3                                        ; $7f17: $e3
    ld h, d                                       ; $7f18: $62
    ld e, $fa                                     ; $7f19: $1e $fa
    adc h                                         ; $7f1b: $8c
    or c                                          ; $7f1c: $b1
    ld a, a                                       ; $7f1d: $7f
    add hl, hl                                    ; $7f1e: $29
    cp c                                          ; $7f1f: $b9
    ld h, e                                       ; $7f20: $63
    call $a6bd                                    ; $7f21: $cd $bd $a6
    or $d0                                        ; $7f24: $f6 $d0
    ld d, $a7                                     ; $7f26: $16 $a7
    ld a, [hl]                                    ; $7f28: $7e
    ld c, h                                       ; $7f29: $4c
    daa                                           ; $7f2a: $27
    ld h, a                                       ; $7f2b: $67
    ld [hl], h                                    ; $7f2c: $74
    or c                                          ; $7f2d: $b1
    rra                                           ; $7f2e: $1f
    ld d, h                                       ; $7f2f: $54
    ld a, c                                       ; $7f30: $79
    sbc [hl]                                      ; $7f31: $9e
    or a                                          ; $7f32: $b7
    ld b, a                                       ; $7f33: $47
    rst $10                                       ; $7f34: $d7
    ld c, e                                       ; $7f35: $4b
    rst $10                                       ; $7f36: $d7
    ld c, e                                       ; $7f37: $4b
    dec de                                        ; $7f38: $1b
    ret nc                                        ; $7f39: $d0

    sbc b                                         ; $7f3a: $98
    rlca                                          ; $7f3b: $07
    ld sp, $bdfd                                  ; $7f3c: $31 $fd $bd
    db $eb                                        ; $7f3f: $eb
    add d                                         ; $7f40: $82
    ld b, [hl]                                    ; $7f41: $46
    sbc [hl]                                      ; $7f42: $9e
    call c, $e6b1                                 ; $7f43: $dc $b1 $e6
    ld e, [hl]                                    ; $7f46: $5e
    sub e                                         ; $7f47: $93
    or a                                          ; $7f48: $b7
    and a                                         ; $7f49: $a7
    ccf                                           ; $7f4a: $3f
    adc b                                         ; $7f4b: $88
    add hl, de                                    ; $7f4c: $19
    and e                                         ; $7f4d: $a3
    di                                            ; $7f4e: $f3
    rst $00                                       ; $7f4f: $c7
    ld l, a                                       ; $7f50: $6f
    ld l, [hl]                                    ; $7f51: $6e
    sbc a                                         ; $7f52: $9f
    ld [hl], l                                    ; $7f53: $75
    dec de                                        ; $7f54: $1b
    db $fc                                        ; $7f55: $fc
    ld e, l                                       ; $7f56: $5d
    rrca                                          ; $7f57: $0f
    inc a                                         ; $7f58: $3c
    ld l, d                                       ; $7f59: $6a
    inc de                                        ; $7f5a: $13
    rst $10                                       ; $7f5b: $d7
    rst $18                                       ; $7f5c: $df
    sbc d                                         ; $7f5d: $9a
    add a                                         ; $7f5e: $87
    sbc a                                         ; $7f5f: $9f
    ld h, d                                       ; $7f60: $62
    ld e, h                                       ; $7f61: $5c
    xor e                                         ; $7f62: $ab
    ld e, $fe                                     ; $7f63: $1e $fe
    xor b                                         ; $7f65: $a8
    ld c, l                                       ; $7f66: $4d
    ld l, h                                       ; $7f67: $6c
    ld bc, $9e79                                  ; $7f68: $01 $79 $9e
    dec de                                        ; $7f6b: $1b
    db $ec                                        ; $7f6c: $ec
    ld a, d                                       ; $7f6d: $7a
    ldh [$31], a                                  ; $7f6e: $e0 $31
    xor [hl]                                      ; $7f70: $ae
    sub l                                         ; $7f71: $95
    cp e                                          ; $7f72: $bb
    and l                                         ; $7f73: $a5
    db $d3                                        ; $7f74: $d3
    cp $3e                                        ; $7f75: $fe $3e
    xor c                                         ; $7f77: $a9
    jp nc, $e9a7                                  ; $7f78: $d2 $a7 $e9

    sub e                                         ; $7f7b: $93
    ld l, e                                       ; $7f7c: $6b
    ld b, l                                       ; $7f7d: $45
    or c                                          ; $7f7e: $b1
    adc e                                         ; $7f7f: $8b
    ld l, l                                       ; $7f80: $6d
    inc d                                         ; $7f81: $14
    dec bc                                        ; $7f82: $0b
    inc bc                                        ; $7f83: $03
    add $58                                       ; $7f84: $c6 $58
    adc d                                         ; $7f86: $8a
    adc c                                         ; $7f87: $89
    ld d, [hl]                                    ; $7f88: $56
    inc d                                         ; $7f89: $14
    ld h, e                                       ; $7f8a: $63
    sbc c                                         ; $7f8b: $99
    or e                                          ; $7f8c: $b3
    ld e, $60                                     ; $7f8d: $1e $60
    add hl, hl                                    ; $7f8f: $29
    adc d                                         ; $7f90: $8a
    ld [hl], c                                    ; $7f91: $71
    xor l                                         ; $7f92: $ad
    xor a                                         ; $7f93: $af
    add e                                         ; $7f94: $83
    ld a, [$2bea]                                 ; $7f95: $fa $ea $2b

jr_02d_7f98:
    cp c                                          ; $7f98: $b9
    and d                                         ; $7f99: $a2
    ret c                                         ; $7f9a: $d8

    push bc                                       ; $7f9b: $c5
    ld [hl], $8a                                  ; $7f9c: $36 $8a
    add l                                         ; $7f9e: $85
    ld bc, $2c63                                  ; $7f9f: $01 $63 $2c
    ld b, l                                       ; $7fa2: $45
    sbc [hl]                                      ; $7fa3: $9e
    rst $20                                       ; $7fa4: $e7
    dec l                                         ; $7fa5: $2d

Call_02d_7fa6:
    push af                                       ; $7fa6: $f5
    or l                                          ; $7fa7: $b5
    ld c, d                                       ; $7fa8: $4a
    ld c, e                                       ; $7fa9: $4b
    dec de                                        ; $7faa: $1b
    add $e0                                       ; $7fab: $c6 $e0
    xor a                                         ; $7fad: $af
    add hl, hl                                    ; $7fae: $29
    add [hl]                                      ; $7faf: $86
    add c                                         ; $7fb0: $81
    ld a, $ae                                     ; $7fb1: $3e $ae
    ld sp, $620f                                  ; $7fb3: $31 $0f $62
    cpl                                           ; $7fb6: $2f
    sbc l                                         ; $7fb7: $9d
    halt                                          ; $7fb8: $76
    db $f4                                        ; $7fb9: $f4
    push af                                       ; $7fba: $f5
    or a                                          ; $7fbb: $b7
    and $e1                                       ; $7fbc: $e6 $e1
    and a                                         ; $7fbe: $a7
    jr jr_02d_7f98                                ; $7fbf: $18 $d7

    xor d                                         ; $7fc1: $aa
    add a                                         ; $7fc2: $87
    ccf                                           ; $7fc3: $3f
    sub $3c                                       ; $7fc4: $d6 $3c
    ldh a, [rNR24]                                ; $7fc6: $f0 $19
    di                                            ; $7fc8: $f3
    ret nc                                        ; $7fc9: $d0

    rst $00                                       ; $7fca: $c7
    ld l, a                                       ; $7fcb: $6f
    ld l, [hl]                                    ; $7fcc: $6e
    sbc a                                         ; $7fcd: $9f
    ld [hl], l                                    ; $7fce: $75
    ld e, e                                       ; $7fcf: $5b
    push af                                       ; $7fd0: $f5
    cp $ae                                        ; $7fd1: $fe $ae
    rlca                                          ; $7fd3: $07
    ld e, $c9                                     ; $7fd4: $1e $c9
    ld [hl], l                                    ; $7fd6: $75
    ld a, h                                       ; $7fd7: $7c
    ld b, h                                       ; $7fd8: $44
    ld a, [c]                                     ; $7fd9: $f2
    jp c, $16c4                                   ; $7fda: $da $c4 $16

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
