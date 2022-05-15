; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $069", ROMX[$4000], BANK[$69]

    ld l, c                                       ; $4000: $69
    db $ed                                        ; $4001: $ed
    ld [hl], l                                    ; $4002: $75
    sbc e                                         ; $4003: $9b
    daa                                           ; $4004: $27
    ld h, $f1                                     ; $4005: $26 $f1
    cp a                                          ; $4007: $bf
    ret nz                                        ; $4008: $c0

    ld a, [$cd63]                                 ; $4009: $fa $63 $cd
    or b                                          ; $400c: $b0
    and $17                                       ; $400d: $e6 $17
    and [hl]                                      ; $400f: $a6

Call_069_4010:
    adc d                                         ; $4010: $8a
    adc h                                         ; $4011: $8c
    ld a, d                                       ; $4012: $7a
    rst $18                                       ; $4013: $df
    sub d                                         ; $4014: $92
    inc e                                         ; $4015: $1c
    dec l                                         ; $4016: $2d
    ld a, [hl-]                                   ; $4017: $3a
    jp c, $6b0c                                   ; $4018: $da $0c $6b

    ld [hl], $46                                  ; $401b: $36 $46
    push af                                       ; $401d: $f5
    adc [hl]                                      ; $401e: $8e
    ld c, c                                       ; $401f: $49
    add [hl]                                      ; $4020: $86
    add hl, hl                                    ; $4021: $29
    sbc e                                         ; $4022: $9b
    daa                                           ; $4023: $27
    adc h                                         ; $4024: $8c
    ld d, $b2                                     ; $4025: $16 $b2
    db $e3                                        ; $4027: $e3
    db $ec                                        ; $4028: $ec
    xor l                                         ; $4029: $ad
    rra                                           ; $402a: $1f
    cp l                                          ; $402b: $bd
    ccf                                           ; $402c: $3f
    db $ed                                        ; $402d: $ed
    ld [hl], l                                    ; $402e: $75
    ld [c], a                                     ; $402f: $e2
    cpl                                           ; $4030: $2f
    ld b, $36                                     ; $4031: $06 $36
    ld a, [bc]                                    ; $4033: $0a
    and a                                         ; $4034: $a7
    adc b                                         ; $4035: $88
    rst $38                                       ; $4036: $ff
    call nz, $d46c                                ; $4037: $c4 $6c $d4
    adc h                                         ; $403a: $8c
    ld b, d                                       ; $403b: $42
    inc sp                                        ; $403c: $33
    ld a, [$c8db]                                 ; $403d: $fa $db $c8
    cp c                                          ; $4040: $b9
    ccf                                           ; $4041: $3f
    db $db                                        ; $4042: $db
    add h                                         ; $4043: $84
    db $d3                                        ; $4044: $d3
    adc h                                         ; $4045: $8c
    xor b                                         ; $4046: $a8
    db $fd                                        ; $4047: $fd
    ld l, l                                       ; $4048: $6d
    db $e4                                        ; $4049: $e4
    ld l, b                                       ; $404a: $68
    ld a, l                                       ; $404b: $7d
    ld a, [de]                                    ; $404c: $1a
    dec hl                                        ; $404d: $2b
    ld b, a                                       ; $404e: $47
    or e                                          ; $404f: $b3
    pop de                                        ; $4050: $d1
    xor $0f                                       ; $4051: $ee $0f
    add hl, bc                                    ; $4053: $09
    add d                                         ; $4054: $82
    pop af                                        ; $4055: $f1
    cp e                                          ; $4056: $bb
    ld c, h                                       ; $4057: $4c
    db $eb                                        ; $4058: $eb
    sub h                                         ; $4059: $94
    sbc c                                         ; $405a: $99
    add hl, hl                                    ; $405b: $29
    add a                                         ; $405c: $87
    ld b, $68                                     ; $405d: $06 $68
    ld b, [hl]                                    ; $405f: $46
    ld a, a                                       ; $4060: $7f
    dec de                                        ; $4061: $1b
    add hl, sp                                    ; $4062: $39
    rst $30                                       ; $4063: $f7
    rlca                                          ; $4064: $07
    ld [c], a                                     ; $4065: $e2
    ld c, e                                       ; $4066: $4b
    jp z, $f93d                                   ; $4067: $ca $3d $f9

    ld hl, sp+$01                                 ; $406a: $f8 $01
    add hl, bc                                    ; $406c: $09
    pop af                                        ; $406d: $f1
    ld h, a                                       ; $406e: $67
    call z, $8894                                 ; $406f: $cc $94 $88
    ld a, c                                       ; $4072: $79
    db $f4                                        ; $4073: $f4
    inc bc                                        ; $4074: $03
    ld e, e                                       ; $4075: $5b
    cp c                                          ; $4076: $b9
    add h                                         ; $4077: $84
    or a                                          ; $4078: $b7
    cp $60                                        ; $4079: $fe $60
    add sp, $07                                   ; $407b: $e8 $07
    adc c                                         ; $407d: $89
    ld [hl], $19                                  ; $407e: $36 $19
    rst $38                                       ; $4080: $ff
    ld a, d                                       ; $4081: $7a
    pop hl                                        ; $4082: $e1
    ld a, h                                       ; $4083: $7c
    ld [c], a                                     ; $4084: $e2
    pop hl                                        ; $4085: $e1
    xor l                                         ; $4086: $ad
    ld e, [hl]                                    ; $4087: $5e
    ld c, h                                       ; $4088: $4c
    ld [hl], d                                    ; $4089: $72
    cp l                                          ; $408a: $bd
    ld [hl], b                                    ; $408b: $70
    ld a, $e7                                     ; $408c: $3e $e7
    inc hl                                        ; $408e: $23
    jp nz, Jump_000_3cb8                          ; $408f: $c2 $b8 $3c

    call Call_000_00fc                            ; $4092: $cd $fc $00
    sbc e                                         ; $4095: $9b
    sbc l                                         ; $4096: $9d
    ld sp, $7d8c                                  ; $4097: $31 $8c $7d
    ld e, e                                       ; $409a: $5b
    ld h, $2d                                     ; $409b: $26 $2d
    adc b                                         ; $409d: $88
    sub [hl]                                      ; $409e: $96
    push af                                       ; $409f: $f5
    inc bc                                        ; $40a0: $03
    ld e, e                                       ; $40a1: $5b
    rst $30                                       ; $40a2: $f7
    ret nc                                        ; $40a3: $d0

    rst $30                                       ; $40a4: $f7
    rst $08                                       ; $40a5: $cf
    rlca                                          ; $40a6: $07
    sub a                                         ; $40a7: $97
    cp b                                          ; $40a8: $b8
    rla                                           ; $40a9: $17
    jp nz, Jump_069_7fcb                          ; $40aa: $c2 $cb $7f

    ld a, [c]                                     ; $40ad: $f2
    inc bc                                        ; $40ae: $03
    sub a                                         ; $40af: $97
    add hl, de                                    ; $40b0: $19
    and e                                         ; $40b1: $a3
    ld a, d                                       ; $40b2: $7a
    ld e, a                                       ; $40b3: $5f
    jp c, $d719                                   ; $40b4: $da $19 $d7

    dec bc                                        ; $40b7: $0b
    rst $20                                       ; $40b8: $e7
    inc bc                                        ; $40b9: $03
    add hl, bc                                    ; $40ba: $09
    ld d, a                                       ; $40bb: $57
    dec h                                         ; $40bc: $25
    ld a, [hl]                                    ; $40bd: $7e
    rla                                           ; $40be: $17
    db $e3                                        ; $40bf: $e3
    ld h, b                                       ; $40c0: $60
    add sp, $07                                   ; $40c1: $e8 $07
    ld e, e                                       ; $40c3: $5b
    ld l, b                                       ; $40c4: $68
    or [hl]                                       ; $40c5: $b6
    or e                                          ; $40c6: $b3
    add hl, bc                                    ; $40c7: $09
    pop af                                        ; $40c8: $f1
    sbc a                                         ; $40c9: $9f
    sbc b                                         ; $40ca: $98
    ld l, l                                       ; $40cb: $6d
    call c, $e207                                 ; $40cc: $dc $07 $e2
    ld hl, $9ee5                                  ; $40cf: $21 $e5 $9e
    dec a                                         ; $40d2: $3d
    db $db                                        ; $40d3: $db
    db $f4                                        ; $40d4: $f4
    ld bc, $bb6d                                  ; $40d5: $01 $6d $bb

jr_069_40d8:
    db $e3                                        ; $40d8: $e3
    ret                                           ; $40d9: $c9


    rrca                                          ; $40da: $0f
    ld l, l                                       ; $40db: $6d
    cp e                                          ; $40dc: $bb
    ld c, l                                       ; $40dd: $4d
    jr c, jr_069_40ff                             ; $40de: $38 $1f

    add hl, bc                                    ; $40e0: $09
    sbc d                                         ; $40e1: $9a
    ld e, c                                       ; $40e2: $59
    ld a, a                                       ; $40e3: $7f
    inc l                                         ; $40e4: $2c
    or e                                          ; $40e5: $b3
    ret nc                                        ; $40e6: $d0

    cp h                                          ; $40e7: $bc
    ld d, [hl]                                    ; $40e8: $56
    rrca                                          ; $40e9: $0f
    ld h, h                                       ; $40ea: $64
    or e                                          ; $40eb: $b3
    ld sp, $0cfe                                  ; $40ec: $31 $fe $0c
    call c, Call_000_01f0                         ; $40ef: $dc $f0 $01
    db $db                                        ; $40f2: $db
    or l                                          ; $40f3: $b5
    rst $38                                       ; $40f4: $ff
    ld a, b                                       ; $40f5: $78
    dec c                                         ; $40f6: $0d
    jp c, $9e80                                   ; $40f7: $da $80 $9e

    ld l, a                                       ; $40fa: $6f
    cpl                                           ; $40fb: $2f
    and [hl]                                      ; $40fc: $a6
    daa                                           ; $40fd: $27
    ld h, a                                       ; $40fe: $67

jr_069_40ff:
    xor l                                         ; $40ff: $ad
    ld a, [bc]                                    ; $4100: $0a
    and a                                         ; $4101: $a7
    ld [de], a                                    ; $4102: $12
    ld a, [hl+]                                   ; $4103: $2a
    and a                                         ; $4104: $a7
    rst $10                                       ; $4105: $d7
    ld a, e                                       ; $4106: $7b
    rst $00                                       ; $4107: $c7
    ld [hl-], a                                   ; $4108: $32
    db $f4                                        ; $4109: $f4
    ldh a, [$0d]                                  ; $410a: $f0 $0d
    rra                                           ; $410c: $1f
    sub a                                         ; $410d: $97
    jr c, jr_069_40d8                             ; $410e: $38 $c8

    ld a, [hl+]                                   ; $4110: $2a
    dec a                                         ; $4111: $3d
    add sp, $34                                   ; $4112: $e8 $34
    push hl                                       ; $4114: $e5
    ld d, b                                       ; $4115: $50
    ld a, a                                       ; $4116: $7f
    ld [bc], a                                    ; $4117: $02
    ld a, [bc]                                    ; $4118: $0a
    call $06b4                                    ; $4119: $cd $b4 $06
    call nz, $d36c                                ; $411c: $c4 $6c $d3
    nop                                           ; $411f: $00
    call Call_000_3fe8                            ; $4120: $cd $e8 $3f
    ld e, [hl]                                    ; $4123: $5e
    jp Jump_069_5ea6                              ; $4124: $c3 $a6 $5e


    and $ba                                       ; $4127: $e6 $ba
    xor [hl]                                      ; $4129: $ae
    add hl, hl                                    ; $412a: $29
    add a                                         ; $412b: $87
    ld b, [hl]                                    ; $412c: $46
    pop hl                                        ; $412d: $e1
    ld d, h                                       ; $412e: $54
    jp hl                                         ; $412f: $e9


    add c                                         ; $4130: $81
    sbc $1f                                       ; $4131: $de $1f
    sub a                                         ; $4133: $97
    ld sp, $6a66                                  ; $4134: $31 $66 $6a
    db $fd                                        ; $4137: $fd
    or c                                          ; $4138: $b1
    ld c, h                                       ; $4139: $4c
    ld l, l                                       ; $413a: $6d
    ld [hl], $c6                                  ; $413b: $36 $c6
    sbc a                                         ; $413d: $9f
    add c                                         ; $413e: $81
    cp d                                          ; $413f: $ba
    pop hl                                        ; $4140: $e1
    inc bc                                        ; $4141: $03
    dec sp                                        ; $4142: $3b
    halt                                          ; $4143: $76
    xor a                                         ; $4144: $af
    ccf                                           ; $4145: $3f
    ld bc, $c45a                                  ; $4146: $01 $5a $c4
    ld l, h                                       ; $4149: $6c
    or h                                          ; $414a: $b4
    add $69                                       ; $414b: $c6 $69
    add [hl]                                      ; $414d: $86
    db $eb                                        ; $414e: $eb
    ccf                                           ; $414f: $3f
    ld e, [hl]                                    ; $4150: $5e
    jp Jump_000_01fd                              ; $4151: $c3 $fd $01


    ld e, e                                       ; $4154: $5b
    xor c                                         ; $4155: $a9
    ld d, l                                       ; $4156: $55
    ret c                                         ; $4157: $d8

    ld e, d                                       ; $4158: $5a
    ld d, e                                       ; $4159: $53
    ld c, $8d                                     ; $415a: $0e $8d
    ld l, $fe                                     ; $415c: $2e $fe
    xor h                                         ; $415e: $ac
    db $e4                                        ; $415f: $e4
    db $d3                                        ; $4160: $d3
    cp $49                                        ; $4161: $fe $49
    and h                                         ; $4163: $a4
    xor c                                         ; $4164: $a9
    push hl                                       ; $4165: $e5
    inc [hl]                                      ; $4166: $34
    jp $1ff5                                      ; $4167: $c3 $f5 $1f


    xor a                                         ; $416a: $af
    ld h, c                                       ; $416b: $61
    db $d3                                        ; $416c: $d3
    rlca                                          ; $416d: $07
    add hl, bc                                    ; $416e: $09

jr_069_416f:
    sbc d                                         ; $416f: $9a
    ld e, c                                       ; $4170: $59
    ld a, a                                       ; $4171: $7f
    inc l                                         ; $4172: $2c
    or e                                          ; $4173: $b3
    ret nc                                        ; $4174: $d0

    cp h                                          ; $4175: $bc
    ld d, [hl]                                    ; $4176: $56
    ret                                           ; $4177: $c9


    and a                                         ; $4178: $a7
    push af                                       ; $4179: $f5
    ld [c], a                                     ; $417a: $e2
    ld c, a                                       ; $417b: $4f
    ld [hl-], a                                   ; $417c: $32
    or b                                          ; $417d: $b0
    add hl, hl                                    ; $417e: $29

jr_069_417f:
    add a                                         ; $417f: $87
    or d                                          ; $4180: $b2
    ccf                                           ; $4181: $3f
    dec l                                         ; $4182: $2d
    db $e3                                        ; $4183: $e3
    add hl, de                                    ; $4184: $19
    dec de                                        ; $4185: $1b
    and [hl]                                      ; $4186: $a6

Call_069_4187:
    sub a                                         ; $4187: $97
    cp l                                          ; $4188: $bd
    jp hl                                         ; $4189: $e9


    dec d                                         ; $418a: $15
    or b                                          ; $418b: $b0
    jr c, jr_069_417f                             ; $418c: $38 $f1

    cp $00                                        ; $418e: $fe $00
    ld [c], a                                     ; $4190: $e2
    ld d, e                                       ; $4191: $53
    adc c                                         ; $4192: $89
    jr c, jr_069_416f                             ; $4193: $38 $da

    inc a                                         ; $4195: $3c
    add c                                         ; $4196: $81
    ld e, d                                       ; $4197: $5a
    ld l, b                                       ; $4198: $68
    and [hl]                                      ; $4199: $a6
    sub $1f                                       ; $419a: $d6 $1f
    set 2, h                                      ; $419c: $cb $d4
    ld h, [hl]                                    ; $419e: $66
    ld h, e                                       ; $419f: $63
    db $fc                                        ; $41a0: $fc
    add hl, de                                    ; $41a1: $19
    xor b                                         ; $41a2: $a8
    dec c                                         ; $41a3: $0d
    jp nz, $28d9                                  ; $41a4: $c2 $d9 $28

    ld d, c                                       ; $41a7: $51
    ld d, [hl]                                    ; $41a8: $56
    ld de, $eb95                                  ; $41a9: $11 $95 $eb
    add l                                         ; $41ac: $85
    db $d3                                        ; $41ad: $d3
    add b                                         ; $41ae: $80
    and [hl]                                      ; $41af: $a6
    inc e                                         ; $41b0: $1c
    ld a, [hl-]                                   ; $41b1: $3a
    sub l                                         ; $41b2: $95
    ld [hl], b                                    ; $41b3: $70
    db $fd                                        ; $41b4: $fd
    rst $00                                       ; $41b5: $c7
    ld l, e                                       ; $41b6: $6b
    jr z, jr_069_41ed                             ; $41b7: $28 $34

    xor a                                         ; $41b9: $af
    ld d, l                                       ; $41ba: $55
    sub c                                         ; $41bb: $91
    halt                                          ; $41bc: $76
    ld [hl], $f7                                  ; $41bd: $36 $f7
    rlca                                          ; $41bf: $07
    ld e, e                                       ; $41c0: $5b
    xor c                                         ; $41c1: $a9
    ld c, l                                       ; $41c2: $4d
    add hl, sp                                    ; $41c3: $39
    call nc, $cb1f                                ; $41c4: $d4 $1f $cb
    ld l, h                                       ; $41c7: $6c
    ld d, $4e                                     ; $41c8: $16 $4e
    dec a                                         ; $41ca: $3d
    sub b                                         ; $41cb: $90
    call $f8c6                                    ; $41cc: $cd $c6 $f8
    inc sp                                        ; $41cf: $33
    ldh a, [$fe]                                  ; $41d0: $f0 $fe
    nop                                           ; $41d2: $00
    rst $20                                       ; $41d3: $e7
    ld b, d                                       ; $41d4: $42
    rst $38                                       ; $41d5: $ff
    pop af                                        ; $41d6: $f1
    jr @-$4a                                      ; $41d7: $18 $b4

    add hl, hl                                    ; $41d9: $29
    add a                                         ; $41da: $87
    ld b, d                                       ; $41db: $42
    inc sp                                        ; $41dc: $33
    db $eb                                        ; $41dd: $eb
    adc a                                         ; $41de: $8f
    ld h, l                                       ; $41df: $65
    ld d, $9a                                     ; $41e0: $16 $9a
    rst $10                                       ; $41e2: $d7
    sbc d                                         ; $41e3: $9a
    adc l                                         ; $41e4: $8d
    pop af                                        ; $41e5: $f1
    ld h, a                                       ; $41e6: $67
    ld h, b                                       ; $41e7: $60
    rst $38                                       ; $41e8: $ff
    sub c                                         ; $41e9: $91
    ld d, l                                       ; $41ea: $55
    and h                                         ; $41eb: $a4
    sbc l                                         ; $41ec: $9d

jr_069_41ed:
    ld sp, $e7ae                                  ; $41ed: $31 $ae $e7
    db $fd                                        ; $41f0: $fd
    ld bc, $20db                                  ; $41f1: $01 $db $20
    dec sp                                        ; $41f4: $3b
    db $dd                                        ; $41f5: $dd
    jp nz, $bdb4                                  ; $41f6: $c2 $b4 $bd

    ret nc                                        ; $41f9: $d0

    ld a, a                                       ; $41fa: $7f
    and d                                         ; $41fb: $a2
    ld [hl+], a                                   ; $41fc: $22
    db $ed                                        ; $41fd: $ed
    ld e, $4b                                     ; $41fe: $1e $4b
    adc a                                         ; $4200: $8f
    dec a                                         ; $4201: $3d
    dec hl                                        ; $4202: $2b
    inc [hl]                                      ; $4203: $34
    or e                                          ; $4204: $b3
    cp $58                                        ; $4205: $fe $58
    and $fd                                       ; $4207: $e6 $fd
    ld bc, $6389                                  ; $4209: $01 $89 $63
    call $a6b6                                    ; $420c: $cd $b6 $a6
    dec c                                         ; $420f: $0d
    xor h                                         ; $4210: $ac
    ccf                                           ; $4211: $3f
    sub [hl]                                      ; $4212: $96
    reti                                          ; $4213: $d9


    ld l, h                                       ; $4214: $6c
    adc h                                         ; $4215: $8c
    ccf                                           ; $4216: $3f
    inc bc                                        ; $4217: $03
    db $eb                                        ; $4218: $eb
    ld c, a                                       ; $4219: $4f
    ld a, b                                       ; $421a: $78
    inc l                                         ; $421b: $2c
    inc [hl]                                      ; $421c: $34
    db $d3                                        ; $421d: $d3
    sbc d                                         ; $421e: $9a
    ld [hl], d                                    ; $421f: $72
    ld e, h                                       ; $4220: $5c
    ld d, d                                       ; $4221: $52
    ld c, $d6                                     ; $4222: $0e $d6
    ld a, a                                       ; $4224: $7f
    sbc [hl]                                      ; $4225: $9e
    ld [hl], d                                    ; $4226: $72
    ld b, e                                       ; $4227: $43
    or a                                          ; $4228: $b7
    ld [hl+], a                                   ; $4229: $22
    adc [hl]                                      ; $422a: $8e
    ld [hl], $3b                                  ; $422b: $36 $3b
    ld d, c                                       ; $422d: $51
    rst $38                                       ; $422e: $ff
    add l                                         ; $422f: $85
    ld [hl], $1f                                  ; $4230: $36 $1f
    sub a                                         ; $4232: $97
    ld sp, $6a66                                  ; $4233: $31 $66 $6a
    db $fd                                        ; $4236: $fd
    or c                                          ; $4237: $b1
    ld c, h                                       ; $4238: $4c
    ld l, l                                       ; $4239: $6d
    ld [hl], $c6                                  ; $423a: $36 $c6
    sbc a                                         ; $423c: $9f
    add c                                         ; $423d: $81
    ld a, d                                       ; $423e: $7a
    rst $18                                       ; $423f: $df
    ld [hl], a                                    ; $4240: $77
    or e                                          ; $4241: $b3
    ld [hl], b                                    ; $4242: $70
    ld [$fb8f], a                                 ; $4243: $ea $8f $fb
    xor c                                         ; $4246: $a9
    db $fd                                        ; $4247: $fd
    sub e                                         ; $4248: $93
    ld e, h                                       ; $4249: $5c
    ld b, c                                       ; $424a: $41
    rst $28                                       ; $424b: $ef
    rrca                                          ; $424c: $0f
    db $db                                        ; $424d: $db
    add h                                         ; $424e: $84
    ld d, e                                       ; $424f: $53
    ld a, a                                       ; $4250: $7f
    ld [bc], a                                    ; $4251: $02
    or h                                          ; $4252: $b4
    adc b                                         ; $4253: $88
    reti                                          ; $4254: $d9


    ld l, b                                       ; $4255: $68
    add l                                         ; $4256: $85
    db $ec                                        ; $4257: $ec
    ccf                                           ; $4258: $3f
    ld e, [hl]                                    ; $4259: $5e
    ld b, e                                       ; $425a: $43
    inc hl                                        ; $425b: $23
    ld h, d                                       ; $425c: $62
    jp nc, $fac9                                  ; $425d: $d2 $c9 $fa

    inc [hl]                                      ; $4260: $34
    sub [hl]                                      ; $4261: $96
    srl d                                         ; $4262: $cb $3a
    reti                                          ; $4264: $d9


    jr nc, @-$31                                  ; $4265: $30 $cd

    ld [hl], b                                    ; $4267: $70
    rst $30                                       ; $4268: $f7
    rlca                                          ; $4269: $07
    dec sp                                        ; $426a: $3b
    ld h, b                                       ; $426b: $60
    ld l, e                                       ; $426c: $6b
    ld c, l                                       ; $426d: $4d
    ret c                                         ; $426e: $d8

    ld [hl], c                                    ; $426f: $71
    ld e, c                                       ; $4270: $59
    ld b, d                                       ; $4271: $42
    and a                                         ; $4272: $a7
    rst $38                                       ; $4273: $ff
    ld a, b                                       ; $4274: $78
    dec c                                         ; $4275: $0d
    dec c                                         ; $4276: $0d

jr_069_4277:
    db $d3                                        ; $4277: $d3
    dec l                                         ; $4278: $2d
    inc [hl]                                      ; $4279: $34
    db $db                                        ; $427a: $db
    reti                                          ; $427b: $d9


    call nz, $19c9                                ; $427c: $c4 $c9 $19
    or [hl]                                       ; $427f: $b6
    xor c                                         ; $4280: $a9
    db $dd                                        ; $4281: $dd
    ld h, $1c                                     ; $4282: $26 $1c
    ld d, c                                       ; $4284: $51
    and e                                         ; $4285: $a3
    ld [hl], b                                    ; $4286: $70
    cp d                                          ; $4287: $ba
    xor $fe                                       ; $4288: $ee $fe
    nop                                           ; $428a: $00
    db $db                                        ; $428b: $db
    add h                                         ; $428c: $84
    ld d, e                                       ; $428d: $53
    ld a, a                                       ; $428e: $7f
    ld [bc], a                                    ; $428f: $02
    or h                                          ; $4290: $b4
    adc b                                         ; $4291: $88
    reti                                          ; $4292: $d9


    ld l, b                                       ; $4293: $68
    and d                                         ; $4294: $a2
    ld c, d                                       ; $4295: $4a
    ld l, d                                       ; $4296: $6a
    ld a, l                                       ; $4297: $7d
    inc l                                         ; $4298: $2c
    ld d, e                                       ; $4299: $53
    adc c                                         ; $429a: $89
    jr c, jr_069_4277                             ; $429b: $38 $da

    jr z, @-$62                                   ; $429d: $28 $9c

    ld h, [hl]                                    ; $429f: $66
    ld b, h                                       ; $42a0: $44
    ld l, l                                       ; $42a1: $6d
    ld b, b                                       ; $42a2: $40
    inc sp                                        ; $42a3: $33
    ld h, d                                       ; $42a4: $62
    and [hl]                                      ; $42a5: $a6
    ld d, l                                       ; $42a6: $55
    ld sp, hl                                     ; $42a7: $f9
    ld l, h                                       ; $42a8: $6c
    jp $9707                                      ; $42a9: $c3 $07 $97


    jr c, @+$56                                   ; $42ac: $38 $54

    sbc l                                         ; $42ae: $9d
    ld sp, hl                                     ; $42af: $f9
    ld b, $e5                                     ; $42b0: $06 $e5
    ld a, l                                       ; $42b2: $7d
    rst $18                                       ; $42b3: $df
    add l                                         ; $42b4: $85
    ld h, [hl]                                    ; $42b5: $66
    sub $1f                                       ; $42b6: $d6 $1f
    sra h                                         ; $42b8: $cb $2c
    inc [hl]                                      ; $42ba: $34
    xor a                                         ; $42bb: $af
    dec [hl]                                      ; $42bc: $35

Jump_069_42bd:
    dec de                                        ; $42bd: $1b
    db $e3                                        ; $42be: $e3
    rst $08                                       ; $42bf: $cf
    ret nz                                        ; $42c0: $c0

    ei                                            ; $42c1: $fb
    inc bc                                        ; $42c2: $03
    db $db                                        ; $42c3: $db
    ld e, l                                       ; $42c4: $5d
    or [hl]                                       ; $42c5: $b6
    jp hl                                         ; $42c6: $e9


    ccf                                           ; $42c7: $3f
    ld e, [hl]                                    ; $42c8: $5e
    ld b, e                                       ; $42c9: $43
    ld hl, $729b                                  ; $42ca: $21 $9b $72
    ld l, b                                       ; $42cd: $68
    inc d                                         ; $42ce: $14

Jump_069_42cf:
    ld c, [hl]                                    ; $42cf: $4e
    db $fd                                        ; $42d0: $fd
    add hl, bc                                    ; $42d1: $09
    ret nc                                        ; $42d2: $d0

    ld [hl+], a                                   ; $42d3: $22
    ld h, [hl]                                    ; $42d4: $66
    and e                                         ; $42d5: $a3
    db $dd                                        ; $42d6: $dd
    rra                                           ; $42d7: $1f
    add hl, bc                                    ; $42d8: $09
    sbc d                                         ; $42d9: $9a
    ld e, c                                       ; $42da: $59
    ld a, a                                       ; $42db: $7f
    inc l                                         ; $42dc: $2c
    or e                                          ; $42dd: $b3
    ret nc                                        ; $42de: $d0

    cp h                                          ; $42df: $bc
    ld d, [hl]                                    ; $42e0: $56
    rrca                                          ; $42e1: $0f
    ld h, h                                       ; $42e2: $64
    or e                                          ; $42e3: $b3
    ld sp, $0cfe                                  ; $42e4: $31 $fe $0c
    cp h                                          ; $42e7: $bc
    ccf                                           ; $42e8: $3f
    add hl, bc                                    ; $42e9: $09
    ld a, [$92cf]                                 ; $42ea: $fa $cf $92
    ld b, h                                       ; $42ed: $44
    ld b, a                                       ; $42ee: $47
    sbc e                                         ; $42ef: $9b
    pop hl                                        ; $42f0: $e1
    or h                                          ; $42f1: $b4
    cpl                                           ; $42f2: $2f
    and [hl]                                      ; $42f3: $a6
    dec c                                         ; $42f4: $0d
    pop hl                                        ; $42f5: $e1
    ld hl, $6866                                  ; $42f6: $21 $66 $68
    ld d, c                                       ; $42f9: $51
    rst $18                                       ; $42fa: $df
    sbc [hl]                                      ; $42fb: $9e
    ld b, h                                       ; $42fc: $44
    rst $08                                       ; $42fd: $cf
    sbc c                                         ; $42fe: $99
    inc l                                         ; $42ff: $2c
    sbc h                                         ; $4300: $9c
    xor $c8                                       ; $4301: $ee $c8
    or h                                          ; $4303: $b4
    ld e, h                                       ; $4304: $5c
    sbc a                                         ; $4305: $9f
    add $8e                                       ; $4306: $c6 $8e
    ld d, [hl]                                    ; $4308: $56
    ld a, $cd                                     ; $4309: $3e $cd
    adc $68                                       ; $430b: $ce $68
    rst $30                                       ; $430d: $f7
    rlca                                          ; $430e: $07
    db $fd                                        ; $430f: $fd
    nop                                           ; $4310: $00
    db $fd                                        ; $4311: $fd
    nop                                           ; $4312: $00
    db $db                                        ; $4313: $db
    add h                                         ; $4314: $84
    ld d, e                                       ; $4315: $53
    cp $13                                        ; $4316: $fe $13
    inc sp                                        ; $4318: $33
    ld a, [hl]                                    ; $4319: $7e
    inc [hl]                                      ; $431a: $34
    ld [hl-], a                                   ; $431b: $32
    ldh a, [$6e]                                  ; $431c: $f0 $6e
    ld [hl+], a                                   ; $431e: $22
    inc l                                         ; $431f: $2c
    ld b, b                                       ; $4320: $40
    inc sp                                        ; $4321: $33
    ld a, [hl-]                                   ; $4322: $3a
    jp c, $d317                                   ; $4323: $da $17 $d3

    add [hl]                                      ; $4326: $86
    ldh a, [rNR10]                                ; $4327: $f0 $10
    inc sp                                        ; $4329: $33
    db $f4                                        ; $432a: $f4
    cp $00                                        ; $432b: $fe $00
    rst $20                                       ; $432d: $e7
    inc c                                         ; $432e: $0c
    scf                                           ; $432f: $37
    ld [hl], h                                    ; $4330: $74
    or e                                          ; $4331: $b3
    dec a                                         ; $4332: $3d
    ld l, d                                       ; $4333: $6a
    add $69                                       ; $4334: $c6 $69
    rra                                           ; $4336: $1f
    db $db                                        ; $4337: $db
    ld h, [hl]                                    ; $4338: $66
    dec [hl]                                      ; $4339: $35
    cp l                                          ; $433a: $bd
    ld [hl], b                                    ; $433b: $70
    jp nc, Jump_000_01f3                          ; $433c: $d2 $f3 $01

    sbc e                                         ; $433f: $9b
    ld l, c                                       ; $4340: $69
    add [hl]                                      ; $4341: $86
    inc [hl]                                      ; $4342: $34
    xor l                                         ; $4343: $ad
    rla                                           ; $4344: $17
    ld c, [hl]                                    ; $4345: $4e
    ld a, d                                       ; $4346: $7a
    ld a, $3b                                     ; $4347: $3e $3b
    or b                                          ; $4349: $b0
    ldh [rIE], a                                  ; $434a: $e0 $ff
    rst $18                                       ; $434c: $df
    ld b, h                                       ; $434d: $44
    ld e, d                                       ; $434e: $5a
    cpl                                           ; $434f: $2f
    ld [$246f], sp                                ; $4350: $08 $6f $24
    ccf                                           ; $4353: $3f
    rla                                           ; $4354: $17
    ld c, [hl]                                    ; $4355: $4e
    ld a, d                                       ; $4356: $7a
    or h                                          ; $4357: $b4
    ld bc, $673d                                  ; $4358: $01 $3d $67
    rst $30                                       ; $435b: $f7
    add sp, -$0c                                  ; $435c: $e8 $f4
    inc bc                                        ; $435e: $03
    db $db                                        ; $435f: $db
    add h                                         ; $4360: $84
    ld d, e                                       ; $4361: $53
    ld l, b                                       ; $4362: $68
    ld e, [hl]                                    ; $4363: $5e
    db $d3                                        ; $4364: $d3
    ld a, d                                       ; $4365: $7a

jr_069_4366:
    ld l, c                                       ; $4366: $69
    ld a, c                                       ; $4367: $79
    ld a, [de]                                    ; $4368: $1a
    ret c                                         ; $4369: $d8

    dec l                                         ; $436a: $2d
    jr nc, jr_069_4366                            ; $436b: $30 $f9

    ld h, $62                                     ; $436d: $26 $62
    ld d, e                                       ; $436f: $53
    inc de                                        ; $4370: $13
    ld d, $96                                     ; $4371: $16 $96
    ld a, a                                       ; $4373: $7f
    sub d                                         ; $4374: $92
    ld c, l                                       ; $4375: $4d
    add hl, sp                                    ; $4376: $39
    ld d, h                                       ; $4377: $54
    jp hl                                         ; $4378: $e9


    ld b, c                                       ; $4379: $41
    or e                                          ; $437a: $b3
    dec bc                                        ; $437b: $0b
    ld [hl], e                                    ; $437c: $73
    ld a, a                                       ; $437d: $7f
    db $db                                        ; $437e: $db
    add h                                         ; $437f: $84
    ld d, e                                       ; $4380: $53
    ld b, $f9                                     ; $4381: $06 $f9
    adc h                                         ; $4383: $8c
    ld c, l                                       ; $4384: $4d
    add hl, sp                                    ; $4385: $39
    inc [hl]                                      ; $4386: $34
    cp [hl]                                       ; $4387: $be
    sbc b                                         ; $4388: $98
    halt                                          ; $4389: $76
    db $eb                                        ; $438a: $eb
    ld h, h                                       ; $438b: $64
    ld e, c                                       ; $438c: $59
    ld [hl], l                                    ; $438d: $75
    cp $58                                        ; $438e: $fe $58
    add $fd                                       ; $4390: $c6 $fd
    ld bc, $479b                                  ; $4392: $01 $9b $47
    adc $7d                                       ; $4395: $ce $7d
    rst $18                                       ; $4397: $df
    db $fd                                        ; $4398: $fd
    ld b, a                                       ; $4399: $47
    ld c, [hl]                                    ; $439a: $4e
    db $fd                                        ; $439b: $fd
    add hl, bc                                    ; $439c: $09
    sub b                                         ; $439d: $90
    dec c                                         ; $439e: $0d
    ld l, a                                       ; $439f: $6f
    rla                                           ; $43a0: $17
    xor h                                         ; $43a1: $ac
    ld c, a                                       ; $43a2: $4f
    ld [hl], l                                    ; $43a3: $75
    xor d                                         ; $43a4: $aa
    db $e3                                        ; $43a5: $e3
    ld sp, $3e54                                  ; $43a6: $31 $54 $3e
    ld a, c                                       ; $43a9: $79
    rst $18                                       ; $43aa: $df
    rst $30                                       ; $43ab: $f7
    rlca                                          ; $43ac: $07
    ld [c], a                                     ; $43ad: $e2
    ld a, a                                       ; $43ae: $7f
    ld [hl], d                                    ; $43af: $72
    sbc d                                         ; $43b0: $9a
    ld [hl], d                                    ; $43b1: $72
    jr z, jr_069_43ca                             ; $43b2: $28 $16

    ld [hl], $8e                                  ; $43b4: $36 $8e
    halt                                          ; $43b6: $76
    call c, $b9ea                                 ; $43b7: $dc $ea $b9
    ei                                            ; $43ba: $fb
    cp [hl]                                       ; $43bb: $be
    ccf                                           ; $43bc: $3f
    ld d, a                                       ; $43bd: $57
    inc a                                         ; $43be: $3c
    call $bb28                                    ; $43bf: $cd $28 $bb
    dec b                                         ; $43c2: $05
    ld h, $df                                     ; $43c3: $26 $df
    ld b, h                                       ; $43c5: $44
    db $f4                                        ; $43c6: $f4
    ld a, h                                       ; $43c7: $7c
    ld h, e                                       ; $43c8: $63
    ld c, h                                       ; $43c9: $4c

jr_069_43ca:
    jp Jump_069_7d36                              ; $43ca: $c3 $36 $7d


    ld d, a                                       ; $43cd: $57
    cp h                                          ; $43ce: $bc
    adc l                                         ; $43cf: $8d
    xor h                                         ; $43d0: $ac
    and h                                         ; $43d1: $a4
    ld [hl], $0a                                  ; $43d2: $36 $0a
    and a                                         ; $43d4: $a7
    adc d                                         ; $43d5: $8a
    ld d, a                                       ; $43d6: $57
    sbc a                                         ; $43d7: $9f
    add $4e                                       ; $43d8: $c6 $4e
    inc c                                         ; $43da: $0c
    xor b                                         ; $43db: $a8
    ld [hl], a                                    ; $43dc: $77
    sbc $fd                                       ; $43dd: $de $fd
    ld bc, $3109                                  ; $43df: $01 $09 $31
    dec bc                                        ; $43e2: $0b
    and a                                         ; $43e3: $a7
    cp [hl]                                       ; $43e4: $be
    call $8cef                                    ; $43e5: $cd $ef $8c
    dec de                                        ; $43e8: $1b
    ld a, c                                       ; $43e9: $79
    rst $30                                       ; $43ea: $f7
    adc h                                         ; $43eb: $8c
    xor d                                         ; $43ec: $aa
    di                                            ; $43ed: $f3
    ld b, a                                       ; $43ee: $47
    di                                            ; $43ef: $f3
    inc [hl]                                      ; $43f0: $34
    ld c, a                                       ; $43f1: $4f
    ld h, b                                       ; $43f2: $60
    reti                                          ; $43f3: $d9


    inc [hl]                                      ; $43f4: $34
    ld h, d                                       ; $43f5: $62
    ld b, [hl]                                    ; $43f6: $46
    dec d                                         ; $43f7: $15
    dec [hl]                                      ; $43f8: $35
    cp b                                          ; $43f9: $b8
    ld hl, sp-$54                                 ; $43fa: $f8 $ac
    ld a, $8d                                     ; $43fc: $3e $8d
    ld h, l                                       ; $43fe: $65
    cp l                                          ; $43ff: $bd
    ret nc                                        ; $4400: $d0

    call z, $7406                                 ; $4401: $cc $06 $74
    dec bc                                        ; $4404: $0b
    sub a                                         ; $4405: $97
    ld h, l                                       ; $4406: $65
    inc b                                         ; $4407: $04
    ld bc, $fef1                                  ; $4408: $01 $f1 $fe
    nop                                           ; $440b: $00
    ld [c], a                                     ; $440c: $e2
    call $9988                                    ; $440d: $cd $88 $99
    ld d, [hl]                                    ; $4410: $56
    add sp, $4f                                   ; $4411: $e8 $4f
    sbc a                                         ; $4413: $9f
    or [hl]                                       ; $4414: $b6
    xor c                                         ; $4415: $a9
    adc c                                         ; $4416: $89
    ld h, e                                       ; $4417: $63
    sub l                                         ; $4418: $95
    ld c, a                                       ; $4419: $4f
    ld [hl], $0a                                  ; $441a: $36 $0a
    and a                                         ; $441c: $a7
    ld a, $55                                     ; $441d: $3e $55
    xor c                                         ; $441f: $a9
    ld [hl], a                                    ; $4420: $77
    rst $08                                       ; $4421: $cf
    ld a, e                                       ; $4422: $7b
    ccf                                           ; $4423: $3f
    or l                                          ; $4424: $b5
    ld c, h                                       ; $4425: $4c
    cp c                                          ; $4426: $b9
    ld d, a                                       ; $4427: $57
    sbc a                                         ; $4428: $9f
    add $4e                                       ; $4429: $c6 $4e
    dec a                                         ; $442b: $3d
    adc h                                         ; $442c: $8c
    add hl, hl                                    ; $442d: $29
    add a                                         ; $442e: $87
    adc h                                         ; $442f: $8c
    ei                                            ; $4430: $fb
    inc bc                                        ; $4431: $03
    add hl, bc                                    ; $4432: $09
    sbc d                                         ; $4433: $9a
    rst $00                                       ; $4434: $c7
    dec [hl]                                      ; $4435: $35
    and b                                         ; $4436: $a0
    ld l, c                                       ; $4437: $69
    ld b, a                                       ; $4438: $47
    dec bc                                        ; $4439: $0b
    inc l                                         ; $443a: $2c
    dec bc                                        ; $443b: $0b
    call $3fac                                    ; $443c: $cd $ac $3f
    sub [hl]                                      ; $443f: $96
    ld e, c                                       ; $4440: $59
    and $75                                       ; $4441: $e6 $75
    sbc l                                         ; $4443: $9d
    ld a, d                                       ; $4444: $7a
    jr jr_069_449a                                ; $4445: $18 $53

    ld c, $19                                     ; $4447: $0e $19
    db $fd                                        ; $4449: $fd
    ld b, a                                       ; $444a: $47
    ld h, d                                       ; $444b: $62
    dec a                                         ; $444c: $3d
    db $ed                                        ; $444d: $ed
    xor $36                                       ; $444e: $ee $36
    pop hl                                        ; $4450: $e1
    inc [hl]                                      ; $4451: $34
    push hl                                       ; $4452: $e5
    ld h, b                                       ; $4453: $60
    sub b                                         ; $4454: $90
    and e                                         ; $4455: $a3
    ld c, l                                       ; $4456: $4d
    add hl, sp                                    ; $4457: $39
    ld d, h                                       ; $4458: $54
    ld a, [c]                                     ; $4459: $f2
    ld l, c                                       ; $445a: $69
    db $e3                                        ; $445b: $e3
    adc e                                         ; $445c: $8b
    ld l, c                                       ; $445d: $69
    or a                                          ; $445e: $b7
    ld c, [hl]                                    ; $445f: $4e
    ld d, [hl]                                    ; $4460: $56
    ld d, c                                       ; $4461: $51
    add sp, $4f                                   ; $4462: $e8 $4f
    rra                                           ; $4464: $1f
    rst $30                                       ; $4465: $f7
    rlca                                          ; $4466: $07
    ld [c], a                                     ; $4467: $e2
    cp e                                          ; $4468: $bb

Jump_069_4469:
    dec d                                         ; $4469: $15
    or d                                          ; $446a: $b2
    rst $38                                       ; $446b: $ff
    sub e                                         ; $446c: $93
    ld l, h                                       ; $446d: $6c
    inc d                                         ; $446e: $14
    ld c, [hl]                                    ; $446f: $4e
    sub e                                         ; $4470: $93
    ld l, e                                       ; $4471: $6b
    adc l                                         ; $4472: $8d
    inc c                                         ; $4473: $0c
    inc d                                         ; $4474: $14
    ld [hl], l                                    ; $4475: $75
    dec bc                                        ; $4476: $0b
    call $de76                                    ; $4477: $cd $76 $de
    dec d                                         ; $447a: $15
    xor a                                         ; $447b: $af
    rla                                           ; $447c: $17
    sbc d                                         ; $447d: $9a
    reti                                          ; $447e: $d9


    ld [hl], l                                    ; $447f: $75
    ld h, l                                       ; $4480: $65
    jp z, Jump_069_42bd                           ; $4481: $ca $bd $42

    sub $c3                                       ; $4484: $d6 $c3
    daa                                           ; $4486: $27
    ld a, b                                       ; $4487: $78
    ld [hl], $7c                                  ; $4488: $36 $7c
    db $db                                        ; $448a: $db
    jr nz, @-$13                                  ; $448b: $20 $eb

    inc hl                                        ; $448d: $23
    ld a, [hl+]                                   ; $448e: $2a
    or h                                          ; $448f: $b4
    add hl, hl                                    ; $4490: $29
    add a                                         ; $4491: $87
    xor [hl]                                      ; $4492: $ae
    ld hl, sp-$4c                                 ; $4493: $f8 $b4
    ld [de], a                                    ; $4495: $12
    add d                                         ; $4496: $82
    ld h, c                                       ; $4497: $61
    db $fd                                        ; $4498: $fd
    ld b, a                                       ; $4499: $47

jr_069_449a:
    sub [hl]                                      ; $449a: $96
    sub l                                         ; $449b: $95
    cpl                                           ; $449c: $2f
    ld h, $59                                     ; $449d: $26 $59
    rrca                                          ; $449f: $0f
    ld d, $56                                     ; $44a0: $16 $56
    ld d, d                                       ; $44a2: $52
    push hl                                       ; $44a3: $e5
    sbc b                                         ; $44a4: $98
    or c                                          ; $44a5: $b1
    res 2, e                                      ; $44a6: $cb $93
    cp $8b                                        ; $44a8: $fe $8b
    ld c, c                                       ; $44aa: $49
    sbc $3d                                       ; $44ab: $de $3d
    rst $28                                       ; $44ad: $ef
    db $fd                                        ; $44ae: $fd
    inc l                                         ; $44af: $2c
    ld d, e                                       ; $44b0: $53
    xor $15                                       ; $44b1: $ee $15
    or d                                          ; $44b3: $b2
    rst $38                                       ; $44b4: $ff
    sub e                                         ; $44b5: $93
    xor h                                         ; $44b6: $ac
    ld c, a                                       ; $44b7: $4f
    ld h, e                                       ; $44b8: $63
    ld e, c                                       ; $44b9: $59
    cpl                                           ; $44ba: $2f
    inc [hl]                                      ; $44bb: $34
    di                                            ; $44bc: $f3
    cp [hl]                                       ; $44bd: $be
    rst $28                                       ; $44be: $ef
    and [hl]                                      ; $44bf: $a6
    inc e                                         ; $44c0: $1c
    ld a, [bc]                                    ; $44c1: $0a
    rst $10                                       ; $44c2: $d7

jr_069_44c3:
    nop                                           ; $44c3: $00
    ld a, a                                       ; $44c4: $7f
    sbc [hl]                                      ; $44c5: $9e
    halt                                          ; $44c6: $76
    dec [hl]                                      ; $44c7: $35
    xor [hl]                                      ; $44c8: $ae
    add hl, de                                    ; $44c9: $19
    sub $80                                       ; $44ca: $d6 $80
    ld l, $4f                                     ; $44cc: $2e $4f
    ld a, [$fbb4]                                 ; $44ce: $fa $b4 $fb
    inc bc                                        ; $44d1: $03
    ld [c], a                                     ; $44d2: $e2
    cpl                                           ; $44d3: $2f
    ld b, $36                                     ; $44d4: $06 $36
    ld a, [bc]                                    ; $44d6: $0a
    and a                                         ; $44d7: $a7
    cp $04                                        ; $44d8: $fe $04
    ld l, b                                       ; $44da: $68
    ld de, $d1b3                                  ; $44db: $11 $b3 $d1
    xor $8a                                       ; $44de: $ee $8a
    ld l, e                                       ; $44e0: $6b
    inc bc                                        ; $44e1: $03
    cp $31                                        ; $44e2: $fe $31
    xor [hl]                                      ; $44e4: $ae
    ccf                                           ; $44e5: $3f
    jr jr_069_4542                                ; $44e6: $18 $5a

jr_069_44e8:
    cp [hl]                                       ; $44e8: $be
    jr jr_069_44c3                                ; $44e9: $18 $d8

    jr z, @-$62                                   ; $44eb: $28 $9c

    ld b, d                                       ; $44ed: $42
    or e                                          ; $44ee: $b3
    ld [hl], b                                    ; $44ef: $70
    ld [$c4db], a                                 ; $44f0: $ea $db $c4
    ld c, h                                       ; $44f3: $4c
    cp l                                          ; $44f4: $bd
    ccf                                           ; $44f5: $3f
    db $db                                        ; $44f6: $db
    add h                                         ; $44f7: $84
    push af                                       ; $44f8: $f5
    daa                                           ; $44f9: $27
    ld b, b                                       ; $44fa: $40
    rr b                                          ; $44fb: $cb $18
    ld l, b                                       ; $44fd: $68
    push af                                       ; $44fe: $f5
    db $ed                                        ; $44ff: $ed
    ldh a, [$fd]                                  ; $4500: $f0 $fd
    ld d, e                                       ; $4502: $53
    xor $95                                       ; $4503: $ee $95
    push af                                       ; $4505: $f5
    xor c                                         ; $4506: $a9
    ld a, [bc]                                    ; $4507: $0a
    ld e, d                                       ; $4508: $5a
    ld e, c                                       ; $4509: $59
    ld l, b                                       ; $450a: $68
    and [hl]                                      ; $450b: $a6
    ld [hl], $39                                  ; $450c: $36 $39
    ld b, [hl]                                    ; $450e: $46
    dec d                                         ; $450f: $15
    ld [hl], l                                    ; $4510: $75
    dec bc                                        ; $4511: $0b
    call $de76                                    ; $4512: $cd $76 $de
    rra                                           ; $4515: $1f
    ld d, a                                       ; $4516: $57
    inc a                                         ; $4517: $3c
    call $bb28                                    ; $4518: $cd $28 $bb
    dec b                                         ; $451b: $05
    ld h, $df                                     ; $451c: $26 $df
    ld b, h                                       ; $451e: $44
    db $f4                                        ; $451f: $f4
    ld a, h                                       ; $4520: $7c
    ld h, e                                       ; $4521: $63
    ld c, h                                       ; $4522: $4c
    jp Jump_069_7d36                              ; $4523: $c3 $36 $7d


    ld [c], a                                     ; $4526: $e2
    ld a, a                                       ; $4527: $7f
    ld [hl], d                                    ; $4528: $72
    sbc d                                         ; $4529: $9a
    ld [hl], d                                    ; $452a: $72
    jr z, jr_069_44e8                             ; $452b: $28 $bb

    ld a, d                                       ; $452d: $7a
    dec d                                         ; $452e: $15
    ldh [$62], a                                  ; $452f: $e0 $62
    sbc [hl]                                      ; $4531: $9e
    ld [hl], d                                    ; $4532: $72
    ld [$19a1], a                                 ; $4533: $ea $a1 $19
    ld a, a                                       ; $4536: $7f
    pop hl                                        ; $4537: $e1
    inc [hl]                                      ; $4538: $34
    ld d, b                                       ; $4539: $50
    cp e                                          ; $453a: $bb
    and d                                         ; $453b: $a2
    ld [$a338], a                                 ; $453c: $ea $38 $a3
    sbc $1f                                       ; $453f: $de $1f
    db $db                                        ; $4541: $db

jr_069_4542:
    dec de                                        ; $4542: $1b
    ld l, c                                       ; $4543: $69
    ld l, a                                       ; $4544: $6f
    ld d, a                                       ; $4545: $57
    inc bc                                        ; $4546: $03
    ld d, [hl]                                    ; $4547: $56
    jr z, @+$36                                   ; $4548: $28 $34

    db $d3                                        ; $454a: $d3
    adc d                                         ; $454b: $8a
    add sp, $7d                                   ; $454c: $e8 $7d
    inc c                                         ; $454e: $0c
    db $d3                                        ; $454f: $d3
    add sp, $64                                   ; $4550: $e8 $64
    sub a                                         ; $4552: $97
    or a                                          ; $4553: $b7
    or d                                          ; $4554: $b2
    ld de, $5255                                  ; $4555: $11 $55 $52
    dec de                                        ; $4558: $1b
    and [hl]                                      ; $4559: $a6
    ld b, $cd                                     ; $455a: $06 $cd
    db $d3                                        ; $455c: $d3
    add b                                         ; $455d: $80
    add l                                         ; $455e: $85
    adc l                                         ; $455f: $8d
    jp nz, $e2a9                                  ; $4560: $c2 $a9 $e2

    db $dd                                        ; $4563: $dd
    rra                                           ; $4564: $1f
    adc c                                         ; $4565: $89
    inc de                                        ; $4566: $13
    ld d, b                                       ; $4567: $50
    ld l, b                                       ; $4568: $68
    and [hl]                                      ; $4569: $a6
    push af                                       ; $456a: $f5
    rra                                           ; $456b: $1f
    reti                                          ; $456c: $d9


    xor c                                         ; $456d: $a9
    jp nc, $869f                                  ; $456e: $d2 $9f $86

    jp hl                                         ; $4571: $e9


    ld [hl], $ac                                  ; $4572: $36 $ac
    sbc $b2                                       ; $4574: $de $b2
    ldh [$be], a                                  ; $4576: $e0 $be
    rst $28                                       ; $4578: $ef
    ld b, d                                       ; $4579: $42
    or e                                          ; $457a: $b3
    ld [hl], b                                    ; $457b: $70
    ld a, [hl-]                                   ; $457c: $3a
    jp c, Jump_069_4f30                           ; $457d: $da $30 $4f

    db $eb                                        ; $4580: $eb
    jp Jump_000_0bc2                              ; $4581: $c3 $c2 $0b


    and e                                         ; $4584: $a3
    rst $30                                       ; $4585: $f7
    rlca                                          ; $4586: $07
    add hl, bc                                    ; $4587: $09
    sbc d                                         ; $4588: $9a
    rst $10                                       ; $4589: $d7
    ld a, [de]                                    ; $458a: $1a
    xor c                                         ; $458b: $a9
    db $fd                                        ; $458c: $fd
    xor c                                         ; $458d: $a9
    call nc, $d406                                ; $458e: $d4 $06 $d4
    jp $9c98                                      ; $4591: $c3 $98 $9c


    ld b, $6a                                     ; $4594: $06 $6a
    adc l                                         ; $4596: $8d
    ld a, $ed                                     ; $4597: $3e $ed

jr_069_4599:
    and l                                         ; $4599: $a5
    xor c                                         ; $459a: $a9
    dec c                                         ; $459b: $0d
    ld d, e                                       ; $459c: $53
    rst $18                                       ; $459d: $df
    sbc [hl]                                      ; $459e: $9e
    call nz, Call_000_29b3                        ; $459f: $c4 $b3 $29
    ld h, e                                       ; $45a2: $63

Jump_069_45a3:
    and b                                         ; $45a3: $a0
    adc c                                         ; $45a4: $89
    ld [$65a5], a                                 ; $45a5: $ea $a5 $65
    ld [hl], $a0                                  ; $45a8: $36 $a0
    ld a, a                                       ; $45aa: $7f
    ld [hl], d                                    ; $45ab: $72
    adc h                                         ; $45ac: $8c
    ld h, $6a                                     ; $45ad: $26 $6a
    jp c, $9eb8                                   ; $45af: $da $b8 $9e

    ld e, d                                       ; $45b2: $5a
    halt                                          ; $45b3: $76
    dec [hl]                                      ; $45b4: $35
    rst $38                                       ; $45b5: $ff
    add c                                         ; $45b6: $81
    cp d                                          ; $45b7: $ba
    pop hl                                        ; $45b8: $e1
    inc bc                                        ; $45b9: $03
    db $db                                        ; $45ba: $db
    sub e                                         ; $45bb: $93
    and d                                         ; $45bc: $a2
    ld b, [hl]                                    ; $45bd: $46
    pop hl                                        ; $45be: $e1
    ld l, h                                       ; $45bf: $6c
    add sp, $36                                   ; $45c0: $e8 $36
    ld h, c                                       ; $45c2: $61
    cp l                                          ; $45c3: $bd
    di                                            ; $45c4: $f3
    ld a, [de]                                    ; $45c5: $1a
    ld d, b                                       ; $45c6: $50
    rst $18                                       ; $45c7: $df
    add $df                                       ; $45c8: $c6 $df
    ld e, l                                       ; $45ca: $5d
    ld e, a                                       ; $45cb: $5f
    sbc [hl]                                      ; $45cc: $9e
    ei                                            ; $45cd: $fb
    inc bc                                        ; $45ce: $03
    sub a                                         ; $45cf: $97
    jr c, @-$38                                   ; $45d0: $38 $c6

    jr nc, jr_069_4599                            ; $45d2: $30 $c5

    jp nz, Jump_069_66ae                          ; $45d4: $c2 $ae $66

    ret                                           ; $45d7: $c9


    or h                                          ; $45d8: $b4
    ld a, [$4f08]                                 ; $45d9: $fa $08 $4f
    adc [hl]                                      ; $45dc: $8e
    ld [hl], $40                                  ; $45dd: $36 $40
    ld a, a                                       ; $45df: $7f
    or a                                          ; $45e0: $b7
    ld hl, sp-$44                                 ; $45e1: $f8 $bc
    ccf                                           ; $45e3: $3f
    sub a                                         ; $45e4: $97
    ld c, l                                       ; $45e5: $4d
    jr @-$51                                      ; $45e6: $18 $ad

    ld c, a                                       ; $45e8: $4f
    ld h, e                                       ; $45e9: $63
    and a                                         ; $45ea: $a7
    dec sp                                        ; $45eb: $3b
    cp b                                          ; $45ec: $b8
    ld [$4367], sp                                ; $45ed: $08 $67 $43
    cpl                                           ; $45f0: $2f
    ld [hl], c                                    ; $45f1: $71
    add sp, $3f                                   ; $45f2: $e8 $3f
    ld [de], a                                    ; $45f4: $12
    ccf                                           ; $45f5: $3f
    jp z, $a17a                                   ; $45f6: $ca $7a $a1

    sbc c                                         ; $45f9: $99
    dec c                                         ; $45fa: $0d
    add sp, $16                                   ; $45fb: $e8 $16
    ld l, $cb                                     ; $45fd: $2e $cb
    ld [$e1c2], sp                                ; $45ff: $08 $c2 $e1
    adc b                                         ; $4602: $88
    dec de                                        ; $4603: $1b
    ld a, $e7                                     ; $4604: $3e $e7
    ld l, a                                       ; $4606: $6f
    ld c, h                                       ; $4607: $4c
    ld l, a                                       ; $4608: $6f
    ld c, h                                       ; $4609: $4c
    cp a                                          ; $460a: $bf
    inc [hl]                                      ; $460b: $34
    ld h, e                                       ; $460c: $63
    add $7d                                       ; $460d: $c6 $7d
    rst $18                                       ; $460f: $df
    adc l                                         ; $4610: $8d
    ld d, e                                       ; $4611: $53
    ld a, a                                       ; $4612: $7f

Call_069_4613:
    and e                                         ; $4613: $a3
    cp a                                          ; $4614: $bf
    pop de                                        ; $4615: $d1
    or a                                          ; $4616: $b7
    daa                                           ; $4617: $27
    pop af                                        ; $4618: $f1
    ld l, h                                       ; $4619: $6c
    jp z, $3618                                   ; $461a: $ca $18 $36

jr_069_461d:
    add [hl]                                      ; $461d: $86
    adc l                                         ; $461e: $8d
    add c                                         ; $461f: $81
    halt                                          ; $4620: $76
    rst $18                                       ; $4621: $df
    ld [hl], a                                    ; $4622: $77
    ld sp, hl                                     ; $4623: $f9
    daa                                           ; $4624: $27
    pop af                                        ; $4625: $f1
    sbc d                                         ; $4626: $9a
    ld [hl], d                                    ; $4627: $72
    add sp, $6a                                   ; $4628: $e8 $6a
    cp $03                                        ; $462a: $fe $03
    or l                                          ; $462c: $b5
    ld bc, $47ab                                  ; $462d: $01 $ab $47
    ld e, c                                       ; $4630: $59
    and l                                         ; $4631: $a5
    rlca                                          ; $4632: $07
    halt                                          ; $4633: $76
    ld a, a                                       ; $4634: $7f
    sbc e                                         ; $4635: $9b
    sub e                                         ; $4636: $93
    ldh a, [rSCY]                                 ; $4637: $f0 $42
    dec de                                        ; $4639: $1b
    ret nc                                        ; $463a: $d0

    ld [hl], e                                    ; $463b: $73
    pop hl                                        ; $463c: $e1
    db $d3                                        ; $463d: $d3
    ld [hl-], a                                   ; $463e: $32
    dec h                                         ; $463f: $25
    ld h, d                                       ; $4640: $62
    ld e, $51                                     ; $4641: $1e $51
    rla                                           ; $4643: $17
    xor h                                         ; $4644: $ac
    jr nz, @+$4d                                  ; $4645: $20 $4b

    dec l                                         ; $4647: $2d
    ld d, d                                       ; $4648: $52
    xor $f9                                       ; $4649: $ee $f9
    call nc, Call_000_34fa                        ; $464b: $d4 $fa $34
    halt                                          ; $464e: $76
    or h                                          ; $464f: $b4
    ld h, c                                       ; $4650: $61
    ld c, h                                       ; $4651: $4c
    cp [hl]                                       ; $4652: $be
    cp h                                          ; $4653: $bc
    cp e                                          ; $4654: $bb
    cp l                                          ; $4655: $bd
    pop de                                        ; $4656: $d1
    ld a, $89                                     ; $4657: $3e $89
    ldh a, [$98]                                  ; $4659: $f0 $98
    add hl, hl                                    ; $465b: $29
    ld de, $3633                                  ; $465c: $11 $33 $36
    ld a, h                                       ; $465f: $7c
    rst $20                                       ; $4660: $e7
    cp l                                          ; $4661: $bd
    sub h                                         ; $4662: $94
    add e                                         ; $4663: $83
    xor h                                         ; $4664: $ac
    nop                                           ; $4665: $00
    rla                                           ; $4666: $17
    di                                            ; $4667: $f3

Call_069_4668:
    xor b                                         ; $4668: $a8

Jump_069_4669:
    xor b                                         ; $4669: $a8
    ld e, h                                       ; $466a: $5c
    ld e, h                                       ; $466b: $5c
    inc e                                         ; $466c: $1c
    ld l, l                                       ; $466d: $6d
    jr jr_069_461d                                ; $466e: $18 $ad

    ld l, a                                       ; $4670: $6f
    ld c, a                                       ; $4671: $4f
    ld [c], a                                     ; $4672: $e2
    reti                                          ; $4673: $d9


    ld l, b                                       ; $4674: $68
    add hl, de                                    ; $4675: $19
    ld b, a                                       ; $4676: $47
    scf                                           ; $4677: $37
    ld [hl], h                                    ; $4678: $74
    rst $00                                       ; $4679: $c7
    ld c, e                                       ; $467a: $4b
    ld d, e                                       ; $467b: $53
    ld l, [hl]                                    ; $467c: $6e
    sub h                                         ; $467d: $94
    ret c                                         ; $467e: $d8

    ldh a, [rSB]                                  ; $467f: $f0 $01
    sbc e                                         ; $4681: $9b
    ld b, a                                       ; $4682: $47
    ld c, [hl]                                    ; $4683: $4e
    db $fd                                        ; $4684: $fd
    add hl, bc                                    ; $4685: $09
    xor b                                         ; $4686: $a8
    sub e                                         ; $4687: $93
    ld c, l                                       ; $4688: $4d
    cp a                                          ; $4689: $bf
    inc [hl]                                      ; $468a: $34
    ld h, e                                       ; $468b: $63
    ld b, [hl]                                    ; $468c: $46
    inc sp                                        ; $468d: $33
    xor h                                         ; $468e: $ac
    adc b                                         ; $468f: $88
    reti                                          ; $4690: $d9


    jr jr_069_46f9                                ; $4691: $18 $66

    db $d3                                        ; $4693: $d3
    rlca                                          ; $4694: $07
    sub a                                         ; $4695: $97
    ld [hl], c                                    ; $4696: $71
    ld e, c                                       ; $4697: $59
    ld h, c                                       ; $4698: $61
    ld d, a                                       ; $4699: $57
    and a                                         ; $469a: $a7
    adc c                                         ; $469b: $89
    ret nz                                        ; $469c: $c0

    ld a, [bc]                                    ; $469d: $0a
    jp c, Jump_069_4669                           ; $469e: $da $69 $46

    ld c, h                                       ; $46a1: $4c
    or d                                          ; $46a2: $b2
    ld bc, $304f                                  ; $46a3: $01 $4f $30
    jp Jump_000_3114                              ; $46a6: $c3 $14 $31


    dec de                                        ; $46a9: $1b
    xor l                                         ; $46aa: $ad
    rst $38                                       ; $46ab: $ff
    ret z                                         ; $46ac: $c8

    xor c                                         ; $46ad: $a9
    ld c, a                                       ; $46ae: $4f
    sra a                                         ; $46af: $cb $2f
    or b                                          ; $46b1: $b0
    ld bc, $c2dd                                  ; $46b2: $01 $dd $c2
    ld h, l                                       ; $46b5: $65
    add hl, de                                    ; $46b6: $19
    ld b, c                                       ; $46b7: $41
    ld b, b                                       ; $46b8: $40
    cp h                                          ; $46b9: $bc
    ccf                                           ; $46ba: $3f
    add hl, bc                                    ; $46bb: $09
    ld [$58c3], a                                 ; $46bc: $ea $c3 $58
    xor $76                                       ; $46bf: $ee $76
    rst $18                                       ; $46c1: $df
    ld [hl], a                                    ; $46c2: $77
    reti                                          ; $46c3: $d9


    dec l                                         ; $46c4: $2d
    jr nc, @-$05                                  ; $46c5: $30 $f9

    ld h, $a2                                     ; $46c7: $26 $a2
    ld d, c                                       ; $46c9: $51
    jr c, jr_069_4721                             ; $46ca: $38 $55

    ld a, d                                       ; $46cc: $7a
    ret nc                                        ; $46cd: $d0

    jr nc, jr_069_471d                            ; $46ce: $30 $4d

    cp a                                          ; $46d0: $bf
    inc [hl]                                      ; $46d1: $34
    ld h, e                                       ; $46d2: $63
    add $86                                       ; $46d3: $c6 $86
    or $32                                        ; $46d5: $f6 $32
    ret z                                         ; $46d7: $c8

    pop de                                        ; $46d8: $d1
    ld b, $94                                     ; $46d9: $06 $94
    push hl                                       ; $46db: $e5
    ld [$6d29], a                                 ; $46dc: $ea $29 $6d
    jp $db07                                      ; $46df: $c3 $07 $db


    sbc e                                         ; $46e2: $9b
    ld [hl], d                                    ; $46e3: $72
    jr z, jr_069_471a                             ; $46e4: $28 $34

    ld [hl], e                                    ; $46e6: $73
    push bc                                       ; $46e7: $c5
    ld c, [hl]                                    ; $46e8: $4e
    ld [hl], a                                    ; $46e9: $77
    ld b, h                                       ; $46ea: $44
    ld a, [$eb28]                                 ; $46eb: $fa $28 $eb
    push hl                                       ; $46ee: $e5
    ld l, $58                                     ; $46ef: $2e $58
    sbc c                                         ; $46f1: $99
    ld [hl], d                                    ; $46f2: $72
    xor a                                         ; $46f3: $af
    sub b                                         ; $46f4: $90
    db $fd                                        ; $46f5: $fd
    sbc a                                         ; $46f6: $9f
    db $e4                                        ; $46f7: $e4
    and [hl]                                      ; $46f8: $a6

jr_069_46f9:
    rrca                                          ; $46f9: $0f
    adc c                                         ; $46fa: $89
    adc b                                         ; $46fb: $88
    ld c, d                                       ; $46fc: $4a
    ld l, l                                       ; $46fd: $6d
    ld a, h                                       ; $46fe: $7c
    xor d                                         ; $46ff: $aa
    ld d, e                                       ; $4700: $53
    ret                                           ; $4701: $c9


    and a                                         ; $4702: $a7
    call $80b4                                    ; $4703: $cd $b4 $80
    cp e                                          ; $4706: $bb
    ld d, a                                       ; $4707: $57
    ld d, b                                       ; $4708: $50
    adc [hl]                                      ; $4709: $8e
    sub $b7                                       ; $470a: $d6 $b7
    ld sp, hl                                     ; $470c: $f9
    sbc l                                         ; $470d: $9d
    pop de                                        ; $470e: $d1
    jp z, $816e                                   ; $470f: $ca $6e $81

    ret                                           ; $4712: $c9


    scf                                           ; $4713: $37
    ld de, $3e1b                                  ; $4714: $11 $1b $3e
    sbc e                                         ; $4717: $9b
    sub e                                         ; $4718: $93
    ld a, b                                       ; $4719: $78

jr_069_471a:
    add $8d                                       ; $471a: $c6 $8d
    add hl, de                                    ; $471c: $19

jr_069_471d:
    ld h, l                                       ; $471d: $65
    cp c                                          ; $471e: $b9
    and h                                         ; $471f: $a4
    sbc l                                         ; $4720: $9d

jr_069_4721:
    ld h, h                                       ; $4721: $64
    rst $38                                       ; $4722: $ff
    ld a, c                                       ; $4723: $79
    jp z, Jump_000_1f4d                           ; $4724: $ca $4d $1f

    dec sp                                        ; $4727: $3b
    sbc [hl]                                      ; $4728: $9e
    cp h                                          ; $4729: $bc
    rst $28                                       ; $472a: $ef
    cp e                                          ; $472b: $bb
    xor h                                         ; $472c: $ac
    call nz, Call_069_76a3                        ; $472d: $c4 $a3 $76
    add l                                         ; $4730: $85
    dec h                                         ; $4731: $25
    ld c, c                                       ; $4732: $49
    dec l                                         ; $4733: $2d
    ld a, [$a953]                                 ; $4734: $fa $53 $a9
    dec c                                         ; $4737: $0d
    xor b                                         ; $4738: $a8
    add a                                         ; $4739: $87
    ld sp, $f539                                  ; $473a: $31 $39 $f5
    rst $30                                       ; $473d: $f7
    ldh a, [$2c]                                  ; $473e: $f0 $2c
    rst $28                                       ; $4740: $ef
    and a                                         ; $4741: $a7
    sbc $bd                                       ; $4742: $de $bd
    adc h                                         ; $4744: $8c
    rrc d                                         ; $4745: $cb $0a
    cp e                                          ; $4747: $bb
    ld a, [bc]                                    ; $4748: $0a
    call Call_069_4010                            ; $4749: $cd $10 $40
    add hl, sp                                    ; $474c: $39
    ld e, d                                       ; $474d: $5a
    rra                                           ; $474e: $1f
    sub [hl]                                      ; $474f: $96
    and a                                         ; $4750: $a7
    ld bc, $b1dd                                  ; $4751: $01 $dd $b1
    db $ec                                        ; $4754: $ec
    call z, $d849                                 ; $4755: $cc $49 $d8
    adc e                                         ; $4758: $8b
    rst $30                                       ; $4759: $f7
    rlca                                          ; $475a: $07
    sub a                                         ; $475b: $97
    ld c, [hl]                                    ; $475c: $4e
    cp h                                          ; $475d: $bc
    rst $28                                       ; $475e: $ef
    cp e                                          ; $475f: $bb
    or e                                          ; $4760: $b3
    inc h                                         ; $4761: $24
    cp c                                          ; $4762: $b9
    pop hl                                        ; $4763: $e1
    inc bc                                        ; $4764: $03
    adc c                                         ; $4765: $89
    inc [hl]                                      ; $4766: $34
    halt                                          ; $4767: $76
    ld h, d                                       ; $4768: $62
    ld b, b                                       ; $4769: $40
    ld d, a                                       ; $476a: $57
    ld a, h                                       ; $476b: $7c
    sbc e                                         ; $476c: $9b
    ld a, $97                                     ; $476d: $3e $97
    cp a                                          ; $476f: $bf
    dec c                                         ; $4770: $0d
    dec de                                        ; $4771: $1b
    ld [hl], $7c                                  ; $4772: $36 $7c
    db $db                                        ; $4774: $db
    sbc e                                         ; $4775: $9b
    ld [hl], d                                    ; $4776: $72
    xor b                                         ; $4777: $a8
    ld [hl], a                                    ; $4778: $77
    ld e, [hl]                                    ; $4779: $5e
    sbc c                                         ; $477a: $99
    ld [hl], d                                    ; $477b: $72
    ld l, a                                       ; $477c: $6f
    sbc c                                         ; $477d: $99
    ld c, l                                       ; $477e: $4d
    rra                                           ; $477f: $1f
    ld e, e                                       ; $4780: $5b
    ld h, b                                       ; $4781: $60
    ld a, [c]                                     ; $4782: $f2
    ld c, l                                       ; $4783: $4d
    call nz, Call_069_6e86                        ; $4784: $c4 $86 $6e
    ld l, a                                       ; $4787: $6f
    ld a, [$19a5]                                 ; $4788: $fa $a5 $19
    inc sp                                        ; $478b: $33
    adc d                                         ; $478c: $8a
    ld hl, sp+$4f                                 ; $478d: $f8 $4f
    call z, $6e36                                 ; $478f: $cc $36 $6e
    inc hl                                        ; $4792: $23
    scf                                           ; $4793: $37
    ld a, h                                       ; $4794: $7c
    ld e, e                                       ; $4795: $5b
    ld l, b                                       ; $4796: $68
    or [hl]                                       ; $4797: $b6
    ld d, e                                       ; $4798: $53
    call nc, $a88c                                ; $4799: $d4 $8c $a8
    dec c                                         ; $479c: $0d
    jr z, @-$53                                   ; $479d: $28 $ab

    ld e, h                                       ; $479f: $5c
    ld d, [hl]                                    ; $47a0: $56
    or h                                          ; $47a1: $b4
    dec c                                         ; $47a2: $0d
    rra                                           ; $47a3: $1f
    ld [c], a                                     ; $47a4: $e2
    ld a, $63                                     ; $47a5: $3e $63
    ld [de], a                                    ; $47a7: $12
    ld l, a                                       ; $47a8: $6f
    ld h, e                                       ; $47a9: $63
    ld b, [hl]                                    ; $47aa: $46
    dec h                                         ; $47ab: $25
    ld d, h                                       ; $47ac: $54
    ld c, [hl]                                    ; $47ad: $4e
    reti                                          ; $47ae: $d9


    inc c                                         ; $47af: $0c
    jp hl                                         ; $47b0: $e9


    rst $08                                       ; $47b1: $cf
    add [hl]                                      ; $47b2: $86
    adc d                                         ; $47b3: $8a
    cp a                                          ; $47b4: $bf
    jr @+$5a                                      ; $47b5: $18 $58

    rrca                                          ; $47b7: $0f
    ld h, h                                       ; $47b8: $64
    ld d, e                                       ; $47b9: $53
    ld c, $cd                                     ; $47ba: $0e $cd
    cpl                                           ; $47bc: $2f
    ld h, $59                                     ; $47bd: $26 $59
    daa                                           ; $47bf: $27
    reti                                          ; $47c0: $d9


    call nz, $2f59                                ; $47c1: $c4 $59 $2f
    sbc h                                         ; $47c4: $9c
    ld e, [hl]                                    ; $47c5: $5e
    ld sp, hl                                     ; $47c6: $f9
    jp nc, Jump_069_4469                          ; $47c7: $d2 $69 $44

    ld b, c                                       ; $47ca: $41
    ld e, b                                       ; $47cb: $58
    jp nz, $addd                                  ; $47cc: $c2 $dd $ad

    call nc, Call_069_5bb2                        ; $47cf: $d4 $b2 $5b
    ld h, b                                       ; $47d2: $60
    ld a, [c]                                     ; $47d3: $f2
    ld c, l                                       ; $47d4: $4d
    ld b, h                                       ; $47d5: $44
    ld sp, hl                                     ; $47d6: $f9
    ld h, d                                       ; $47d7: $62
    ld h, b                                       ; $47d8: $60
    sub a                                         ; $47d9: $97
    or l                                          ; $47da: $b5
    ld b, d                                       ; $47db: $42
    di                                            ; $47dc: $f3
    jp c, $cbdd                                   ; $47dd: $da $dd $cb

    db $10                                        ; $47e0: $10
    or l                                          ; $47e1: $b5
    ld bc, $9565                                  ; $47e2: $01 $65 $95
    res 1, d                                      ; $47e5: $cb $8a
    or [hl]                                       ; $47e7: $b6
    pop hl                                        ; $47e8: $e1
    inc bc                                        ; $47e9: $03
    ld [c], a                                     ; $47ea: $e2
    ld a, $63                                     ; $47eb: $3e $63
    ld [de], a                                    ; $47ed: $12
    ld l, a                                       ; $47ee: $6f
    ld h, e                                       ; $47ef: $63
    ld b, [hl]                                    ; $47f0: $46
    dec h                                         ; $47f1: $25
    ld d, h                                       ; $47f2: $54
    ld c, [hl]                                    ; $47f3: $4e
    reti                                          ; $47f4: $d9


    inc c                                         ; $47f5: $0c
    jp hl                                         ; $47f6: $e9


    rst $08                                       ; $47f7: $cf
    add [hl]                                      ; $47f8: $86
    adc d                                         ; $47f9: $8a
    cp a                                          ; $47fa: $bf
    jr @+$5a                                      ; $47fb: $18 $58

    rrca                                          ; $47fd: $0f
    ld h, h                                       ; $47fe: $64
    ld d, e                                       ; $47ff: $53
    ld c, $cd                                     ; $4800: $0e $cd
    cpl                                           ; $4802: $2f
    ld h, $d9                                     ; $4803: $26 $d9
    ld [hl], c                                    ; $4805: $71
    reti                                          ; $4806: $d9


    ret c                                         ; $4807: $d8

    call nz, $2f59                                ; $4808: $c4 $59 $2f
    sbc h                                         ; $480b: $9c
    ld e, [hl]                                    ; $480c: $5e
    ld sp, hl                                     ; $480d: $f9
    jp nc, Jump_069_4469                          ; $480e: $d2 $69 $44

    ld b, c                                       ; $4811: $41
    ld e, b                                       ; $4812: $58
    jp nz, $addd                                  ; $4813: $c2 $dd $ad

    call nc, $c5f2                                ; $4816: $d4 $f2 $c5
    ret nz                                        ; $4819: $c0

    ld h, [hl]                                    ; $481a: $66
    ld b, h                                       ; $481b: $44
    ld l, l                                       ; $481c: $6d
    ld b, b                                       ; $481d: $40
    sub l                                         ; $481e: $95
    res 1, d                                      ; $481f: $cb $8a
    ld d, [hl]                                    ; $4821: $56
    halt                                          ; $4822: $76
    dec bc                                        ; $4823: $0b
    ld c, h                                       ; $4824: $4c
    cp [hl]                                       ; $4825: $be
    adc c                                         ; $4826: $89
    ret c                                         ; $4827: $d8

    ldh a, [rSB]                                  ; $4828: $f0 $01
    ld e, e                                       ; $482a: $5b
    ld h, b                                       ; $482b: $60
    ld a, [c]                                     ; $482c: $f2
    ld c, l                                       ; $482d: $4d
    call nz, $2686                                ; $482e: $c4 $86 $26

jr_069_4831:
    ld l, b                                       ; $4831: $68
    ld e, [hl]                                    ; $4832: $5e
    db $d3                                        ; $4833: $d3
    ld a, d                                       ; $4834: $7a
    jr nz, jr_069_486e                            ; $4835: $20 $37

    ld a, l                                       ; $4837: $7d
    dec sp                                        ; $4838: $3b
    sbc [hl]                                      ; $4839: $9e
    cp h                                          ; $483a: $bc
    rst $28                                       ; $483b: $ef
    cp e                                          ; $483c: $bb
    db $fc                                        ; $483d: $fc
    sub e                                         ; $483e: $93
    db $d3                                        ; $483f: $d3
    sub h                                         ; $4840: $94
    ld b, e                                       ; $4841: $43
    push af                                       ; $4842: $f5
    ret                                           ; $4843: $c9


    ei                                            ; $4844: $fb
    cp [hl]                                       ; $4845: $be
    ccf                                           ; $4846: $3f
    db $db                                        ; $4847: $db
    sbc e                                         ; $4848: $9b
    ld [hl], d                                    ; $4849: $72
    jr z, @+$01                                   ; $484a: $28 $ff

    adc c                                         ; $484c: $89
    add hl, de                                    ; $484d: $19
    ccf                                           ; $484e: $3f
    call c, $df7d                                 ; $484f: $dc $7d $df
    sbc [hl]                                      ; $4852: $9e
    inc bc                                        ; $4853: $03
    ld c, $10                                     ; $4854: $0e $10
    dec d                                         ; $4856: $15
    sbc d                                         ; $4857: $9a
    add hl, hl                                    ; $4858: $29
    ld b, a                                       ; $4859: $47
    dec de                                        ; $485a: $1b
    reti                                          ; $485b: $d9


    sbc a                                         ; $485c: $9f
    jp z, $d406                                   ; $485d: $ca $06 $d4

    jp $9c98                                      ; $4860: $c3 $98 $9c


    ld b, $6a                                     ; $4863: $06 $6a
    adc l                                         ; $4865: $8d
    ld a, $ed                                     ; $4866: $3e $ed
    and l                                         ; $4868: $a5
    xor c                                         ; $4869: $a9
    rst $30                                       ; $486a: $f7
    rlca                                          ; $486b: $07
    rst $20                                       ; $486c: $e7
    adc l                                         ; $486d: $8d

jr_069_486e:
    ld d, c                                       ; $486e: $51
    halt                                          ; $486f: $76
    or h                                          ; $4870: $b4
    reti                                          ; $4871: $d9


    ld c, $d4                                     ; $4872: $0e $d4
    xor $5f                                       ; $4874: $ee $5f
    rst $18                                       ; $4876: $df
    and $77                                       ; $4877: $e6 $77

jr_069_4879:
    add $86                                       ; $4879: $c6 $86
    jp hl                                         ; $487b: $e9


    ld sp, hl                                     ; $487c: $f9
    cpl                                           ; $487d: $2f
    call $b198                                    ; $487e: $cd $98 $b1
    xor c                                         ; $4881: $a9
    sub a                                         ; $4882: $97
    dec e                                         ; $4883: $1d
    jr z, jr_069_4831                             ; $4884: $28 $ab

    ld h, e                                       ; $4886: $63

Call_069_4887:
    add hl, de                                    ; $4887: $19
    dec c                                         ; $4888: $0d
    ld l, b                                       ; $4889: $68
    inc d                                         ; $488a: $14
    ld c, [hl]                                    ; $488b: $4e
    and c                                         ; $488c: $a1
    sbc c                                         ; $488d: $99
    ld b, $59                                     ; $488e: $06 $59
    add hl, sp                                    ; $4890: $39
    sub [hl]                                      ; $4891: $96
    ld b, a                                       ; $4892: $47
    scf                                           ; $4893: $37
    ld a, h                                       ; $4894: $7c
    add hl, bc                                    ; $4895: $09
    xor [hl]                                      ; $4896: $ae
    ld e, [hl]                                    ; $4897: $5e
    rst $30                                       ; $4898: $f7
    cp d                                          ; $4899: $ba
    ld a, a                                       ; $489a: $7f
    ld a, l                                       ; $489b: $7d
    sbc e                                         ; $489c: $9b
    rst $18                                       ; $489d: $df
    add hl, de                                    ; $489e: $19
    dec de                                        ; $489f: $1b
    or b                                          ; $48a0: $b0
    and b                                         ; $48a1: $a0
    ld a, [hl-]                                   ; $48a2: $3a
    cp e                                          ; $48a3: $bb
    ld e, [hl]                                    ; $48a4: $5e
    ld c, h                                       ; $48a5: $4c
    ld a, [c]                                     ; $48a6: $f2
    ld l, [hl]                                    ; $48a7: $6e
    push bc                                       ; $48a8: $c5
    rst $38                                       ; $48a9: $ff
    inc h                                         ; $48aa: $24
    ld e, [hl]                                    ; $48ab: $5e
    ld d, e                                       ; $48ac: $53
    ld c, $fd                                     ; $48ad: $0e $fd
    daa                                           ; $48af: $27
    ld a, [hl+]                                   ; $48b0: $2a
    jp nc, $b1ee                                  ; $48b1: $d2 $ee $b1

    ld e, [hl]                                    ; $48b4: $5e

jr_069_48b5:
    xor $82                                       ; $48b5: $ee $82
    ld l, l                                       ; $48b7: $6d
    ld e, h                                       ; $48b8: $5c
    sub d                                         ; $48b9: $92
    xor b                                         ; $48ba: $a8
    rst $10                                       ; $48bb: $d7
    db $10                                        ; $48bc: $10
    inc sp                                        ; $48bd: $33
    ld [$a58f], a                                 ; $48be: $ea $8f $a5
    inc e                                         ; $48c1: $1c
    ld a, [hl+]                                   ; $48c2: $2a
    ld h, b                                       ; $48c3: $60
    xor l                                         ; $48c4: $ad
    bit 5, e                                      ; $48c5: $cb $6b
    halt                                          ; $48c7: $76
    ld h, c                                       ; $48c8: $61
    xor d                                         ; $48c9: $aa
    db $e3                                        ; $48ca: $e3
    ld sp, $0b14                                  ; $48cb: $31 $14 $0b
    db $f4                                        ; $48ce: $f4
    xor $0e                                       ; $48cf: $ee $0e
    ld [hl], h                                    ; $48d1: $74
    ld a, d                                       ; $48d2: $7a
    jp hl                                         ; $48d3: $e9


    call nz, $d3a2                                ; $48d4: $c4 $a2 $d3
    dec l                                         ; $48d7: $2d
    inc [hl]                                      ; $48d8: $34
    db $db                                        ; $48d9: $db
    reti                                          ; $48da: $d9


    jr z, jr_069_4879                             ; $48db: $28 $9c

    ld c, d                                       ; $48dd: $4a
    inc [hl]                                      ; $48de: $34
    cp a                                          ; $48df: $bf
    dec d                                         ; $48e0: $15
    ld d, h                                       ; $48e1: $54
    ld hl, $f88b                                  ; $48e2: $21 $8b $f8
    ld c, a                                       ; $48e5: $4f
    call z, $30c6                                 ; $48e6: $cc $c6 $30
    add l                                         ; $48e9: $85
    ld h, [hl]                                    ; $48ea: $66
    jp c, $e563                                   ; $48eb: $da $63 $e5

    ld e, b                                       ; $48ee: $58
    and $fd                                       ; $48ef: $e6 $fd

jr_069_48f1:
    ld bc, $3109                                  ; $48f1: $01 $09 $31
    dec bc                                        ; $48f4: $0b
    and a                                         ; $48f5: $a7
    xor h                                         ; $48f6: $ac
    ld b, c                                       ; $48f7: $41
    db $fd                                        ; $48f8: $fd
    adc c                                         ; $48f9: $89
    ld c, d                                       ; $48fa: $4a
    rst $08                                       ; $48fb: $cf
    ld e, e                                       ; $48fc: $5b
    ld e, [hl]                                    ; $48fd: $5e
    ld h, b                                       ; $48fe: $60
    ld b, b                                       ; $48ff: $40
    rst $10                                       ; $4900: $d7
    dec [hl]                                      ; $4901: $35
    dec sp                                        ; $4902: $3b
    ld l, [hl]                                    ; $4903: $6e
    add sp, -$5b                                  ; $4904: $e8 $a5
    ret z                                         ; $4906: $c8

    rst $08                                       ; $4907: $cf
    and [hl]                                      ; $4908: $a6
    rst $38                                       ; $4909: $ff
    adc e                                         ; $490a: $8b
    rst $38                                       ; $490b: $ff
    call nc, $989f                                ; $490c: $d4 $9f $98
    ld b, a                                       ; $490f: $47
    res 3, [hl]                                   ; $4910: $cb $9e
    ld l, a                                       ; $4912: $6f
    dec sp                                        ; $4913: $3b
    cp l                                          ; $4914: $bd
    sbc $17                                       ; $4915: $de $17
    jp $ddd8                                      ; $4917: $c3 $d8 $dd


    dec bc                                        ; $491a: $0b
    rst $10                                       ; $491b: $d7
    ld [$d8d3], a                                 ; $491c: $ea $d3 $d8
    ld l, c                                       ; $491f: $69
    jr jr_069_48b5                                ; $4920: $18 $93

    cpl                                           ; $4922: $2f
    rst $28                                       ; $4923: $ef
    ld l, [hl]                                    ; $4924: $6e
    ld l, a                                       ; $4925: $6f
    xor $0f                                       ; $4926: $ee $0f
    sub a                                         ; $4928: $97
    jr c, jr_069_48f1                             ; $4929: $38 $c6

    inc a                                         ; $492b: $3c
    ld h, l                                       ; $492c: $65
    ld d, a                                       ; $492d: $57
    di                                            ; $492e: $f3
    rra                                           ; $492f: $1f
    xor b                                         ; $4930: $a8
    and d                                         ; $4931: $a2
    ld b, [hl]                                    ; $4932: $46
    pop hl                                        ; $4933: $e1
    inc [hl]                                      ; $4934: $34
    cp c                                          ; $4935: $b9
    ld d, [hl]                                    ; $4936: $56
    jp hl                                         ; $4937: $e9


    ld e, [hl]                                    ; $4938: $5e
    ld e, $2d                                     ; $4939: $1e $2d
    rla                                           ; $493b: $17
    rla                                           ; $493c: $17
    ld b, a                                       ; $493d: $47
    dec de                                        ; $493e: $1b
    and [hl]                                      ; $493f: $a6
    cp [hl]                                       ; $4940: $be
    dec a                                         ; $4941: $3d
    adc c                                         ; $4942: $89
    ld h, a                                       ; $4943: $67
    ld d, e                                       ; $4944: $53
    add $69                                       ; $4945: $c6 $69
    jp z, $88a1                                   ; $4947: $ca $a1 $88

    ld e, [hl]                                    ; $494a: $5e
    ld b, e                                       ; $494b: $43
    call z, $8554                                 ; $494c: $cc $54 $85
    xor h                                         ; $494f: $ac
    sub e                                         ; $4950: $93
    dec a                                         ; $4951: $3d
    rst $38                                       ; $4952: $ff
    and l                                         ; $4953: $a5
    add hl, de                                    ; $4954: $19
    inc sp                                        ; $4955: $33
    ld a, [de]                                    ; $4956: $1a
    xor b                                         ; $4957: $a8
    db $dd                                        ; $4958: $dd
    ld a, [hl-]                                   ; $4959: $3a
    ld sp, $2633                                  ; $495a: $31 $33 $26
    xor c                                         ; $495d: $a9
    ld [hl], a                                    ; $495e: $77
    scf                                           ; $495f: $37
    inc sp                                        ; $4960: $33
    or b                                          ; $4961: $b0
    ld c, [hl]                                    ; $4962: $4e
    ld [hl], $cd                                  ; $4963: $36 $cd
    sbc b                                         ; $4965: $98
    ld h, h                                       ; $4966: $64
    rst $38                                       ; $4967: $ff
    rla                                           ; $4968: $17
    rst $38                                       ; $4969: $ff
    xor c                                         ; $496a: $a9
    ccf                                           ; $496b: $3f
    ld sp, $d68f                                  ; $496c: $31 $8f $d6
    and a                                         ; $496f: $a7
    or c                                          ; $4970: $b1

Jump_069_4971:
    rst $20                                       ; $4971: $e7
    db $db                                        ; $4972: $db
    ld c, [hl]                                    ; $4973: $4e
    xor a                                         ; $4974: $af
    rst $30                                       ; $4975: $f7
    push bc                                       ; $4976: $c5
    jr nc, jr_069_49ef                            ; $4977: $30 $76

jr_069_4979:
    or a                                          ; $4979: $b7
    adc c                                         ; $497a: $89
    inc de                                        ; $497b: $13
    jr nz, jr_069_4979                            ; $497c: $20 $fb

    db $ec                                        ; $497e: $ec
    cp $00                                        ; $497f: $fe $00
    rst $20                                       ; $4981: $e7

jr_069_4982:
    call Call_000_3eab                            ; $4982: $cd $ab $3e
    jp hl                                         ; $4985: $e9


    xor a                                         ; $4986: $af
    push hl                                       ; $4987: $e5
    rst $30                                       ; $4988: $f7
    ld c, a                                       ; $4989: $4f
    inc bc                                        ; $498a: $03
    sbc e                                         ; $498b: $9b
    dec e                                         ; $498c: $1d
    db $eb                                        ; $498d: $eb
    db $d3                                        ; $498e: $d3
    ld [hl-], a                                   ; $498f: $32
    cp d                                          ; $4990: $ba
    cp h                                          ; $4991: $bc
    sub l                                         ; $4992: $95
    pop de                                        ; $4993: $d1
    ld [hl], $c6                                  ; $4994: $36 $c6
    pop de                                        ; $4996: $d1
    ld b, $54                                     ; $4997: $06 $54
    ld l, c                                       ; $4999: $69
    ld l, a                                       ; $499a: $6f
    ld c, c                                       ; $499b: $49
    adc [hl]                                      ; $499c: $8e
    adc d                                         ; $499d: $8a
    ld a, [bc]                                    ; $499e: $0a
    push af                                       ; $499f: $f5
    pop af                                        ; $49a0: $f1
    ccf                                           ; $49a1: $3f
    ld l, $12                                     ; $49a2: $2e $12
    ld sp, $01a3                                  ; $49a4: $31 $a3 $01
    cp $3c                                        ; $49a7: $fe $3c
    ld l, l                                       ; $49a9: $6d
    ld b, b                                       ; $49aa: $40
    pop hl                                        ; $49ab: $e1
    sbc d                                         ; $49ac: $9a
    ld h, c                                       ; $49ad: $61
    dec c                                         ; $49ae: $0d
    cpl                                           ; $49af: $2f
    ld c, a                                       ; $49b0: $4f
    rst $38                                       ; $49b1: $ff
    ld a, c                                       ; $49b2: $79
    ld c, d                                       ; $49b3: $4a
    ld l, l                                       ; $49b4: $6d
    ld d, $4e                                     ; $49b5: $16 $4e
    push hl                                       ; $49b7: $e5
    sbc d                                         ; $49b8: $9a
    sbc $1f                                       ; $49b9: $de $1f
    rst $20                                       ; $49bb: $e7
    ld b, b                                       ; $49bc: $40
    adc d                                         ; $49bd: $8a
    cp d                                          ; $49be: $ba
    sbc d                                         ; $49bf: $9a
    rst $38                                       ; $49c0: $ff
    ld b, b                                       ; $49c1: $40
    xor l                                         ; $49c2: $ad
    ld [hl], d                                    ; $49c3: $72
    ld e, c                                       ; $49c4: $59
    pop de                                        ; $49c5: $d1
    jr z, jr_069_49ff                             ; $49c6: $28 $37

    ld c, d                                       ; $49c8: $4a
    adc b                                         ; $49c9: $88
    ld a, [hl+]                                   ; $49ca: $2a
    and c                                         ; $49cb: $a1
    ld [hl], d                                    ; $49cc: $72

Jump_069_49cd:
    ld a, [de]                                    ; $49cd: $1a
    ldh [$cf], a                                  ; $49ce: $e0 $cf
    db $d3                                        ; $49d0: $d3
    ld b, $14                                     ; $49d1: $06 $14
    xor $be                                       ; $49d3: $ee $be
    rst $28                                       ; $49d5: $ef
    ld h, [hl]                                    ; $49d6: $66
    ld e, b                                       ; $49d7: $58
    dec c                                         ; $49d8: $0d
    ld c, h                                       ; $49d9: $4c
    cp a                                          ; $49da: $bf
    jr nc, jr_069_4982                            ; $49db: $30 $a5

    ld [$f793], a                                 ; $49dd: $ea $93 $f7
    rlca                                          ; $49e0: $07
    db $db                                        ; $49e1: $db
    sub a                                         ; $49e2: $97
    inc h                                         ; $49e3: $24
    ld b, l                                       ; $49e4: $45
    dec c                                         ; $49e5: $0d
    ld e, b                                       ; $49e6: $58
    db $ed                                        ; $49e7: $ed
    ld b, [hl]                                    ; $49e8: $46
    add hl, sp                                    ; $49e9: $39
    ld e, d                                       ; $49ea: $5a
    add l                                         ; $49eb: $85
    sub l                                         ; $49ec: $95
    ld a, [c]                                     ; $49ed: $f2
    and l                                         ; $49ee: $a5

jr_069_49ef:
    ld b, a                                       ; $49ef: $47
    adc e                                         ; $49f0: $8b
    ld d, d                                       ; $49f1: $52
    add b                                         ; $49f2: $80
    dec bc                                        ; $49f3: $0b
    or h                                          ; $49f4: $b4
    adc l                                         ; $49f5: $8d
    ld [hl], c                                    ; $49f6: $71
    or h                                          ; $49f7: $b4
    ld l, $6a                                     ; $49f8: $2e $6a
    add hl, sp                                    ; $49fa: $39
    jp c, $d971                                   ; $49fb: $da $71 $d9

    ld b, [hl]                                    ; $49fe: $46

jr_069_49ff:
    rst $28                                       ; $49ff: $ef
    sbc [hl]                                      ; $4a00: $9e
    dec bc                                        ; $4a01: $0b
    or e                                          ; $4a02: $b3
    ret                                           ; $4a03: $c9


    or h                                          ; $4a04: $b4
    ld a, [hl-]                                   ; $4a05: $3a
    reti                                          ; $4a06: $d9


    db $f4                                        ; $4a07: $f4
    ld c, e                                       ; $4a08: $4b
    inc sp                                        ; $4a09: $33
    ld h, [hl]                                    ; $4a0a: $66
    ld [hl], h                                    ; $4a0b: $74
    ld e, l                                       ; $4a0c: $5d
    inc bc                                        ; $4a0d: $03
    ld d, e                                       ; $4a0e: $53
    ld c, $0b                                     ; $4a0f: $0e $0b
    or l                                          ; $4a11: $b5
    rst $38                                       ; $4a12: $ff
    inc a                                         ; $4a13: $3c
    and l                                         ; $4a14: $a5
    ld [hl], $e5                                  ; $4a15: $36 $e5
    ld d, b                                       ; $4a17: $50
    ld a, [$8236]                                 ; $4a18: $fa $36 $82
    sbc a                                         ; $4a1b: $9f
    ld h, h                                       ; $4a1c: $64
    xor c                                         ; $4a1d: $a9
    push af                                       ; $4a1e: $f5
    and c                                         ; $4a1f: $a1
    ld a, [hl-]                                   ; $4a20: $3a
    call nc, $03fb                                ; $4a21: $d4 $fb $03
    add hl, bc                                    ; $4a24: $09
    ld sp, $a70b                                  ; $4a25: $31 $0b $a7
    ld a, [bc]                                    ; $4a28: $0a
    add e                                         ; $4a29: $83
    inc e                                         ; $4a2a: $1c
    dec l                                         ; $4a2b: $2d
    push hl                                       ; $4a2c: $e5
    ld c, e                                       ; $4a2d: $4b
    adc a                                         ; $4a2e: $8f
    ld l, [hl]                                    ; $4a2f: $6e
    ld hl, sp+$00                                 ; $4a30: $f8 $00
    add hl, bc                                    ; $4a32: $09
    xor [hl]                                      ; $4a33: $ae
    db $fc                                        ; $4a34: $fc
    sub e                                         ; $4a35: $93
    db $d3                                        ; $4a36: $d3
    sub h                                         ; $4a37: $94
    ld b, e                                       ; $4a38: $43
    inc bc                                        ; $4a39: $03
    ld d, [hl]                                    ; $4a3a: $56
    cp e                                          ; $4a3b: $bb
    ld d, c                                       ; $4a3c: $51
    adc [hl]                                      ; $4a3d: $8e
    ld [hl], $c3                                  ; $4a3e: $36 $c3
    ld l, d                                       ; $4a40: $6a
    ld hl, sp-$1f                                 ; $4a41: $f8 $e1
    ld a, c                                       ; $4a43: $79
    ld h, c                                       ; $4a44: $61
    ld a, [hl+]                                   ; $4a45: $2a
    ld sp, hl                                     ; $4a46: $f9
    or h                                          ; $4a47: $b4
    cp $c4                                        ; $4a48: $fe $c4
    inc a                                         ; $4a4a: $3c
    ld e, d                                       ; $4a4b: $5a
    ld a, a                                       ; $4a4c: $7f
    xor h                                         ; $4a4d: $ac
    ld c, h                                       ; $4a4e: $4c
    cp c                                          ; $4a4f: $b9
    or a                                          ; $4a50: $b7
    adc h                                         ; $4a51: $8c
    xor b                                         ; $4a52: $a8
    ld c, d                                       ; $4a53: $4a
    rrca                                          ; $4a54: $0f
    db $e4                                        ; $4a55: $e4
    and [hl]                                      ; $4a56: $a6
    rrca                                          ; $4a57: $0f
    sub a                                         ; $4a58: $97
    cp l                                          ; $4a59: $bd

jr_069_4a5a:
    dec d                                         ; $4a5a: $15
    ld [$fb24], a                                 ; $4a5b: $ea $24 $fb
    ld [bc], a                                    ; $4a5e: $02
    ld e, $ef                                     ; $4a5f: $1e $ef
    ei                                            ; $4a61: $fb

jr_069_4a62:
    ld l, [hl]                                    ; $4a62: $6e
    ret nz                                        ; $4a63: $c0

    ld l, d                                       ; $4a64: $6a
    scf                                           ; $4a65: $37
    jp z, $3ed1                                   ; $4a66: $ca $d1 $3e

    xor e                                         ; $4a69: $ab
    sub a                                         ; $4a6a: $97
    dec bc                                        ; $4a6b: $0b
    xor l                                         ; $4a6c: $ad
    rst $38                                       ; $4a6d: $ff
    ret z                                         ; $4a6e: $c8

    ld c, [hl]                                    ; $4a6f: $4e
    or a                                          ; $4a70: $b7
    jr nc, jr_069_4ae0                            ; $4a71: $30 $6d

    cpl                                           ; $4a73: $2f
    call c, Call_069_584d                         ; $4a74: $dc $4d $58
    ret nc                                        ; $4a77: $d0

    ld [hl], l                                    ; $4a78: $75
    sbc l                                         ; $4a79: $9d
    ld [hl+], a                                   ; $4a7a: $22
    cp $34                                        ; $4a7b: $fe $34
    ld b, e                                       ; $4a7d: $43
    sbc d                                         ; $4a7e: $9a
    ld h, c                                       ; $4a7f: $61
    ld a, [de]                                    ; $4a80: $1a
    ld b, [hl]                                    ; $4a81: $46
    dec hl                                        ; $4a82: $2b
    ld h, b                                       ; $4a83: $60
    jp nc, Jump_069_45a3                          ; $4a84: $d2 $a3 $45

    sub l                                         ; $4a87: $95
    ld e, $34                                     ; $4a88: $1e $34
    cp e                                          ; $4a8a: $bb
    jr nc, jr_069_4a62                            ; $4a8b: $30 $d5

    pop af                                        ; $4a8d: $f1
    jr jr_069_4a5a                                ; $4a8e: $18 $ca

    ld hl, sp+$24                                 ; $4a90: $f8 $24
    sbc a                                         ; $4a92: $9f
    sbc $bd                                       ; $4a93: $de $bd
    adc h                                         ; $4a95: $8c
    rrc d                                         ; $4a96: $cb $0a
    cp e                                          ; $4a98: $bb
    xor d                                         ; $4a99: $aa
    ld a, h                                       ; $4a9a: $7c
    ld e, $36                                     ; $4a9b: $1e $36
    push hl                                       ; $4a9d: $e5
    cp b                                          ; $4a9e: $b8
    and h                                         ; $4a9f: $a4
    inc e                                         ; $4aa0: $1c
    xor h                                         ; $4aa1: $ac
    rst $38                                       ; $4aa2: $ff
    inc a                                         ; $4aa3: $3c
    ld h, l                                       ; $4aa4: $65
    ld [hl], l                                    ; $4aa5: $75
    inc a                                         ; $4aa6: $3c
    add [hl]                                      ; $4aa7: $86
    ld c, [hl]                                    ; $4aa8: $4e
    ld a, a                                       ; $4aa9: $7f
    pop hl                                        ; $4aaa: $e1
    inc [hl]                                      ; $4aab: $34
    and b                                         ; $4aac: $a0
    reti                                          ; $4aad: $d9


    ld c, $d4                                     ; $4aae: $0e $d4
    cp $f4                                        ; $4ab0: $fe $f4
    ld h, b                                       ; $4ab2: $60
    dec a                                         ; $4ab3: $3d

Call_069_4ab4:
    push af                                       ; $4ab4: $f5
    cp $00                                        ; $4ab5: $fe $00
    db $db                                        ; $4ab7: $db
    add h                                         ; $4ab8: $84
    db $d3                                        ; $4ab9: $d3
    db $fc                                        ; $4aba: $fc
    ld h, d                                       ; $4abb: $62
    sub d                                         ; $4abc: $92
    push af                                       ; $4abd: $f5
    ld de, $6195                                  ; $4abe: $11 $95 $61
    ld a, [de]                                    ; $4ac1: $1a
    sbc a                                         ; $4ac2: $9f
    ld [$dddc], a                                 ; $4ac3: $ea $dc $dd
    add c                                         ; $4ac6: $81
    ld b, [hl]                                    ; $4ac7: $46
    pop hl                                        ; $4ac8: $e1
    ld d, h                                       ; $4ac9: $54
    rst $00                                       ; $4aca: $c7
    ld a, c                                       ; $4acb: $79
    ld h, b                                       ; $4acc: $60
    dec d                                         ; $4acd: $15
    or b                                          ; $4ace: $b0
    ld h, $2a                                     ; $4acf: $26 $2a
    db $fd                                        ; $4ad1: $fd
    pop de                                        ; $4ad2: $d1
    inc a                                         ; $4ad3: $3c
    ld c, l                                       ; $4ad4: $4d
    add hl, sp                                    ; $4ad5: $39
    call nc, $809f                                ; $4ad6: $d4 $9f $80
    ld b, $e8                                     ; $4ad9: $06 $e8
    ccf                                           ; $4adb: $3f
    ld e, $7b                                     ; $4adc: $1e $7b
    halt                                          ; $4ade: $76
    rst $30                                       ; $4adf: $f7

jr_069_4ae0:
    ld a, [bc]                                    ; $4ae0: $0a
    jp z, $fbd1                                   ; $4ae1: $ca $d1 $fb

    inc bc                                        ; $4ae4: $03
    ld e, e                                       ; $4ae5: $5b
    cp c                                          ; $4ae6: $b9
    add h                                         ; $4ae7: $84
    sub a                                         ; $4ae8: $97
    ld b, a                                       ; $4ae9: $47
    ld d, h                                       ; $4aea: $54
    ld d, [hl]                                    ; $4aeb: $56
    adc [hl]                                      ; $4aec: $8e
    dec b                                         ; $4aed: $05
    ld e, b                                       ; $4aee: $58
    inc bc                                        ; $4aef: $03
    ld d, e                                       ; $4af0: $53
    ld c, $0b                                     ; $4af1: $0e $0b
    dec hl                                        ; $4af3: $2b
    add hl, de                                    ; $4af4: $19
    pop af                                        ; $4af5: $f1
    adc h                                         ; $4af6: $8c
    ld [hl], a                                    ; $4af7: $77
    scf                                           ; $4af8: $37
    adc a                                         ; $4af9: $8f
    sbc h                                         ; $4afa: $9c
    xor [hl]                                      ; $4afb: $ae
    ld l, e                                       ; $4afc: $6b
    jp z, $ffa1                                   ; $4afd: $ca $a1 $ff

    ld b, h                                       ; $4b00: $44
    ld b, l                                       ; $4b01: $45
    jp c, Jump_000_393d                           ; $4b02: $da $3d $39

    ld e, d                                       ; $4b05: $5a
    ld l, b                                       ; $4b06: $68
    and [hl]                                      ; $4b07: $a6
    sub l                                         ; $4b08: $95
    add hl, de                                    ; $4b09: $19
    ld sp, $768f                                  ; $4b0a: $31 $8f $76
    ld a, a                                       ; $4b0d: $7f
    ld l, l                                       ; $4b0e: $6d
    or [hl]                                       ; $4b0f: $b6
    inc bc                                        ; $4b10: $03
    or l                                          ; $4b11: $b5
    ccf                                           ; $4b12: $3f
    dec a                                         ; $4b13: $3d
    ld e, b                                       ; $4b14: $58
    ld c, a                                       ; $4b15: $4f
    dec l                                         ; $4b16: $2d
    and a                                         ; $4b17: $a7
    ld [de], a                                    ; $4b18: $12
    ld a, [hl+]                                   ; $4b19: $2a
    and a                                         ; $4b1a: $a7
    add hl, de                                    ; $4b1b: $19
    jp nc, Jump_069_4d9f                          ; $4b1c: $d2 $9f $4d

    rra                                           ; $4b1f: $1f
    rst $20                                       ; $4b20: $e7
    ld b, d                                       ; $4b21: $42
    ld a, a                                       ; $4b22: $7f
    or a                                          ; $4b23: $b7
    ld hl, sp+$10                                 ; $4b24: $f8 $10
    push de                                       ; $4b26: $d5
    and a                                         ; $4b27: $a7
    ld a, [hl+]                                   ; $4b28: $2a
    scf                                           ; $4b29: $37
    ld a, [hl+]                                   ; $4b2a: $2a
    jp z, $ed25                                   ; $4b2b: $ca $25 $ed

    inc h                                         ; $4b2e: $24
    ei                                            ; $4b2f: $fb
    rst $08                                       ; $4b30: $cf
    ld d, e                                       ; $4b31: $53
    ld l, [hl]                                    ; $4b32: $6e
    ld l, d                                       ; $4b33: $6a
    add d                                         ; $4b34: $82
    and $b5                                       ; $4b35: $e6 $b5
    or d                                          ; $4b37: $b2
    rst $38                                       ; $4b38: $ff
    ld [$ed06], sp                                ; $4b39: $08 $06 $ed
    cp $00                                        ; $4b3c: $fe $00
    ld [c], a                                     ; $4b3e: $e2
    ld sp, $cb50                                  ; $4b3f: $31 $50 $cb
    ld b, d                                       ; $4b42: $42
    db $fd                                        ; $4b43: $fd
    ld b, a                                       ; $4b44: $47
    db $db                                        ; $4b45: $db
    jr z, jr_069_4b69                             ; $4b46: $28 $21

    ld l, d                                       ; $4b48: $6a
    ld [c], a                                     ; $4b49: $e2
    db $e4                                        ; $4b4a: $e4
    inc c                                         ; $4b4b: $0c
    db $db                                        ; $4b4c: $db
    call nc, $b173                                ; $4b4d: $d4 $73 $b1
    ld a, d                                       ; $4b50: $7a
    call nc, Call_000_06fa                        ; $4b51: $d4 $fa $06
    call Call_069_4ab4                            ; $4b54: $cd $b4 $4a
    ld a, $2d                                     ; $4b57: $3e $2d
    inc sp                                        ; $4b59: $33
    ld [c], a                                     ; $4b5a: $e2
    ld a, d                                       ; $4b5b: $7a
    pop hl                                        ; $4b5c: $e1
    sub h                                         ; $4b5d: $94
    and e                                         ; $4b5e: $a3
    add l                                         ; $4b5f: $85
    ld h, [hl]                                    ; $4b60: $66
    rla                                           ; $4b61: $17
    ld b, [hl]                                    ; $4b62: $46
    adc e                                         ; $4b63: $8b
    ld c, d                                       ; $4b64: $4a
    call nz, $b2d1                                ; $4b65: $c4 $d1 $b2
    rst $38                                       ; $4b68: $ff

jr_069_4b69:
    inc a                                         ; $4b69: $3c
    and l                                         ; $4b6a: $a5
    ld [hl], $e5                                  ; $4b6b: $36 $e5
    ret nc                                        ; $4b6d: $d0

    jr z, @-$62                                   ; $4b6e: $28 $9c

    ld h, [hl]                                    ; $4b70: $66
    inc [hl]                                      ; $4b71: $34
    cp h                                          ; $4b72: $bc
    ld e, l                                       ; $4b73: $5d
    sub b                                         ; $4b74: $90
    dec [hl]                                      ; $4b75: $35
    xor b                                         ; $4b76: $a8
    adc a                                         ; $4b77: $8f
    sub a                                         ; $4b78: $97
    rst $20                                       ; $4b79: $e7
    cp $00                                        ; $4b7a: $fe $00
    sub a                                         ; $4b7c: $97
    reti                                          ; $4b7d: $d9


    add c                                         ; $4b7e: $81
    jp c, $1e9f                                   ; $4b7f: $da $9f $1e

    xor h                                         ; $4b82: $ac
    and a                                         ; $4b83: $a7
    ld l, [hl]                                    ; $4b84: $6e
    ld l, d                                       ; $4b85: $6a
    jp nz, Jump_069_6682                          ; $4b86: $c2 $82 $66

    call nz, $ae3c                                ; $4b89: $c4 $3c $ae
    ld a, $55                                     ; $4b8c: $3e $55
    ld l, c                                       ; $4b8e: $69
    push af                                       ; $4b8f: $f5
    or c                                          ; $4b90: $b1
    ld c, h                                       ; $4b91: $4c
    ld a, a                                       ; $4b92: $7f
    pop hl                                        ; $4b93: $e1
    inc [hl]                                      ; $4b94: $34
    and b                                         ; $4b95: $a0
    reti                                          ; $4b96: $d9


    ld c, $d4                                     ; $4b97: $0e $d4
    cp $f4                                        ; $4b99: $fe $f4
    ld h, b                                       ; $4b9b: $60
    dec a                                         ; $4b9c: $3d
    or l                                          ; $4b9d: $b5
    ld [hl], c                                    ; $4b9e: $71
    cp d                                          ; $4b9f: $ba
    add l                                         ; $4ba0: $85
    swap d                                        ; $4ba1: $cb $32
    add d                                         ; $4ba3: $82
    add b                                         ; $4ba4: $80
    cp b                                          ; $4ba5: $b8
    and c                                         ; $4ba6: $a1
    add hl, bc                                    ; $4ba7: $09
    and l                                         ; $4ba8: $a5
    ccf                                           ; $4ba9: $3f
    sbc d                                         ; $4baa: $9a
    and a                                         ; $4bab: $a7
    add hl, hl                                    ; $4bac: $29
    add a                                         ; $4bad: $87
    ld b, $3c                                     ; $4bae: $06 $3c
    pop bc                                        ; $4bb0: $c1
    db $e3                                        ; $4bb1: $e3
    adc d                                         ; $4bb2: $8a
    sbc b                                         ; $4bb3: $98
    adc l                                         ; $4bb4: $8d
    sub $e9                                       ; $4bb5: $d6 $e9
    ld sp, hl                                     ; $4bb7: $f9
    cpl                                           ; $4bb8: $2f
    call $d198                                    ; $4bb9: $cd $98 $d1
    ld a, a                                       ; $4bbc: $7f
    db $e4                                        ; $4bbd: $e4
    ld d, h                                       ; $4bbe: $54
    ld [hl-], a                                   ; $4bbf: $32
    adc [hl]                                      ; $4bc0: $8e
    rst $00                                       ; $4bc1: $c7
    ret c                                         ; $4bc2: $d8

    add b                                         ; $4bc3: $80
    add [hl]                                      ; $4bc4: $86
    or a                                          ; $4bc5: $b7
    add d                                         ; $4bc6: $82
    xor c                                         ; $4bc7: $a9
    ld [hl], b                                    ; $4bc8: $70
    ld [hl], $f4                                  ; $4bc9: $36 $f4
    ld a, [bc]                                    ; $4bcb: $0a
    jp z, $eed1                                   ; $4bcc: $ca $d1 $ee

    rst $18                                       ; $4bcf: $df
    sbc a                                         ; $4bd0: $9f
    ld e, $46                                     ; $4bd1: $1e $46
    ld [hl], $4c                                  ; $4bd3: $36 $4c
    or a                                          ; $4bd5: $b7
    jr nc, jr_069_4c45                            ; $4bd6: $30 $6d

    cpl                                           ; $4bd8: $2f
    ld l, h                                       ; $4bd9: $6c
    ld hl, sp+$00                                 ; $4bda: $f8 $00
    db $db                                        ; $4bdc: $db
    sub a                                         ; $4bdd: $97
    or l                                          ; $4bde: $b5
    dec c                                         ; $4bdf: $0d
    db $dd                                        ; $4be0: $dd
    ld h, $ac                                     ; $4be1: $26 $ac
    adc a                                         ; $4be3: $8f
    xor b                                         ; $4be4: $a8
    ld a, b                                       ; $4be5: $78
    ld e, l                                       ; $4be6: $5d
    pop bc                                        ; $4be7: $c1
    ld [hl], $ae                                  ; $4be8: $36 $ae
    ld b, [hl]                                    ; $4bea: $46
    sbc e                                         ; $4beb: $9b
    inc e                                         ; $4bec: $1c

Jump_069_4bed:
    ld bc, $3fb8                                  ; $4bed: $01 $b8 $3f
    db $db                                        ; $4bf0: $db
    cp e                                          ; $4bf1: $bb

Call_069_4bf2:
    inc hl                                        ; $4bf2: $23
    jp nc, Jump_000_3347                          ; $4bf3: $d2 $47 $33

    ld h, d                                       ; $4bf6: $62
    ld e, $57                                     ; $4bf7: $1e $57
    sbc a                                         ; $4bf9: $9f
    xor d                                         ; $4bfa: $aa
    or h                                          ; $4bfb: $b4
    ld [hl-], a                                   ; $4bfc: $32
    push hl                                       ; $4bfd: $e5
    or b                                          ; $4bfe: $b0
    and b                                         ; $4bff: $a0
    cp a                                          ; $4c00: $bf
    ld [hl], b                                    ; $4c01: $70
    ld a, [de]                                    ; $4c02: $1a
    ret nc                                        ; $4c03: $d0

    ld l, h                                       ; $4c04: $6c
    rlca                                          ; $4c05: $07
    ld l, d                                       ; $4c06: $6a
    ld a, a                                       ; $4c07: $7f
    ld a, d                                       ; $4c08: $7a
    or b                                          ; $4c09: $b0
    sbc [hl]                                      ; $4c0a: $9e
    jp c, $fd38                                   ; $4c0b: $da $38 $fd

    rst $00                                       ; $4c0e: $c7
    inc c                                         ; $4c0f: $0c
    ld h, c                                       ; $4c10: $61
    xor h                                         ; $4c11: $ac
    cp [hl]                                       ; $4c12: $be
    call $bcf3                                    ; $4c13: $cd $f3 $bc
    jr nc, jr_069_4c8f                            ; $4c16: $30 $77

    rst $08                                       ; $4c18: $cf
    sbc e                                         ; $4c19: $9b
    ld d, a                                       ; $4c1a: $57
    add hl, sp                                    ; $4c1b: $39
    ld d, $5e                                     ; $4c1c: $16 $5e
    sbc b                                         ; $4c1e: $98
    cp e                                          ; $4c1f: $bb
    ld [c], a                                     ; $4c20: $e2
    ld a, a                                       ; $4c21: $7f

jr_069_4c22:
    sub d                                         ; $4c22: $92
    ld [hl], d                                    ; $4c23: $72
    or h                                          ; $4c24: $b4
    add hl, hl                                    ; $4c25: $29
    add a                                         ; $4c26: $87
    ld h, d                                       ; $4c27: $62
    ld b, c                                       ; $4c28: $41
    and c                                         ; $4c29: $a1
    sbc c                                         ; $4c2a: $99
    dec hl                                        ; $4c2b: $2b
    sub [hl]                                      ; $4c2c: $96
    call $9988                                    ; $4c2d: $cd $88 $99
    ld d, [hl]                                    ; $4c30: $56
    dec de                                        ; $4c31: $1b
    rst $20                                       ; $4c32: $e7
    and c                                         ; $4c33: $a1
    ld [hl], l                                    ; $4c34: $75
    sbc d                                         ; $4c35: $9a
    ld [hl], d                                    ; $4c36: $72
    add sp, -$0c                                  ; $4c37: $e8 $f4
    rla                                           ; $4c39: $17
    ld c, [hl]                                    ; $4c3a: $4e
    and c                                         ; $4c3b: $a1
    ld a, c                                       ; $4c3c: $79
    xor l                                         ; $4c3d: $ad
    ld l, h                                       ; $4c3e: $6c
    jp c, Jump_000_02d1                           ; $4c3f: $da $d1 $02

    db $ed                                        ; $4c42: $ed
    cp $00                                        ; $4c43: $fe $00

jr_069_4c45:
    sbc e                                         ; $4c45: $9b
    ld b, a                                       ; $4c46: $47
    ld e, $be                                     ; $4c47: $1e $be
    xor [hl]                                      ; $4c49: $ae
    add hl, hl                                    ; $4c4a: $29
    add a                                         ; $4c4b: $87
    ld a, [hl+]                                   ; $4c4c: $2a
    dec a                                         ; $4c4d: $3d
    sub b                                         ; $4c4e: $90
    dec c                                         ; $4c4f: $0d
    db $d3                                        ; $4c50: $d3
    di                                            ; $4c51: $f3
    ld d, $e7                                     ; $4c52: $16 $e7
    push af                                       ; $4c54: $f5
    xor $14                                       ; $4c55: $ee $14
    ld [hl], l                                    ; $4c57: $75
    ld a, [hl+]                                   ; $4c58: $2a
    pop hl                                        ; $4c59: $e1
    ld a, [$a70b]                                 ; $4c5a: $fa $0b $a7
    ld bc, $76cd                                  ; $4c5d: $01 $cd $76
    and b                                         ; $4c60: $a0
    or $a7                                        ; $4c61: $f6 $a7
    rlca                                          ; $4c63: $07
    db $eb                                        ; $4c64: $eb

jr_069_4c65:
    xor c                                         ; $4c65: $a9
    sbc e                                         ; $4c66: $9b

Jump_069_4c67:
    cp d                                          ; $4c67: $ba
    ld a, c                                       ; $4c68: $79
    and h                                         ; $4c69: $a4
    ld l, a                                       ; $4c6a: $6f
    ld a, b                                       ; $4c6b: $78
    dec de                                        ; $4c6c: $1b
    and a                                         ; $4c6d: $a7
    ld [hl], c                                    ; $4c6e: $71
    jp z, $f538                                   ; $4c6f: $ca $38 $f5

    xor c                                         ; $4c72: $a9
    jp z, $3870                                   ; $4c73: $ca $70 $38

    db $eb                                        ; $4c76: $eb
    ld h, h                                       ; $4c77: $64
    db $d3                                        ; $4c78: $d3
    add [hl]                                      ; $4c79: $86
    db $f4                                        ; $4c7a: $f4
    pop hl                                        ; $4c7b: $e1
    jr z, jr_069_4c22                             ; $4c7c: $28 $a4

    ld l, a                                       ; $4c7e: $6f
    ret nc                                        ; $4c7f: $d0

    adc h                                         ; $4c80: $8c
    or a                                          ; $4c81: $b7
    ld [hl], c                                    ; $4c82: $71
    jp z, $b9e9                                   ; $4c83: $ca $e9 $b9

    ld c, [hl]                                    ; $4c86: $4e
    ld a, d                                       ; $4c87: $7a
    ld d, $84                                     ; $4c88: $16 $84
    ld sp, $37d4                                  ; $4c8a: $31 $d4 $37
    ld [hl], $ed                                  ; $4c8d: $36 $ed

jr_069_4c8f:
    ld l, b                                       ; $4c8f: $68
    add c                                         ; $4c90: $81
    ld d, [hl]                                    ; $4c91: $56
    sbc $f7                                       ; $4c92: $de $f7
    ld e, l                                       ; $4c94: $5d
    rst $08                                       ; $4c95: $cf
    ld c, b                                       ; $4c96: $48
    ld d, c                                       ; $4c97: $51
    and e                                         ; $4c98: $a3
    or b                                          ; $4c99: $b0
    cpl                                           ; $4c9a: $2f
    and $c3                                       ; $4c9b: $e6 $c3
    dec c                                         ; $4c9d: $0d
    xor d                                         ; $4c9e: $aa
    cp h                                          ; $4c9f: $bc
    ccf                                           ; $4ca0: $3f
    rst $20                                       ; $4ca1: $e7
    dec sp                                        ; $4ca2: $3b
    ld e, d                                       ; $4ca3: $5a
    and b                                         ; $4ca4: $a0
    sub l                                         ; $4ca5: $95
    ld c, l                                       ; $4ca6: $4d
    cp c                                          ; $4ca7: $b9

jr_069_4ca8:
    inc bc                                        ; $4ca8: $03
    scf                                           ; $4ca9: $37
    ld a, l                                       ; $4caa: $7d
    db $db                                        ; $4cab: $db
    sub a                                         ; $4cac: $97
    inc h                                         ; $4cad: $24
    and h                                         ; $4cae: $a4
    xor b                                         ; $4caf: $a8
    ld d, c                                       ; $4cb0: $51
    ld e, b                                       ; $4cb1: $58
    ld b, l                                       ; $4cb2: $45
    dec h                                         ; $4cb3: $25
    ld [hl-], a                                   ; $4cb4: $32
    ld h, l                                       ; $4cb5: $65
    db $e3                                        ; $4cb6: $e3
    inc [hl]                                      ; $4cb7: $34
    push hl                                       ; $4cb8: $e5
    ret nc                                        ; $4cb9: $d0

    jr z, jr_069_4ca8                             ; $4cba: $28 $ec

    ld l, d                                       ; $4cbc: $6a
    or h                                          ; $4cbd: $b4

jr_069_4cbe:
    pop hl                                        ; $4cbe: $e1
    db $ed                                        ; $4cbf: $ed
    xor d                                         ; $4cc0: $aa
    ld b, c                                       ; $4cc1: $41
    ld a, l                                       ; $4cc2: $7d
    cp h                                          ; $4cc3: $bc
    inc a                                         ; $4cc4: $3c
    ld [hl], a                                    ; $4cc5: $77
    inc de                                        ; $4cc6: $13
    inc [hl]                                      ; $4cc7: $34
    push hl                                       ; $4cc8: $e5
    or b                                          ; $4cc9: $b0
    sbc [hl]                                      ; $4cca: $9e
    or d                                          ; $4ccb: $b2
    db $d3                                        ; $4ccc: $d3
    ld e, a                                       ; $4ccd: $5f
    jr c, jr_069_4c65                             ; $4cce: $38 $95

    ld a, h                                       ; $4cd0: $7c
    jp c, $ca69                                   ; $4cd1: $da $69 $ca

    dec e                                         ; $4cd4: $1d
    adc [hl]                                      ; $4cd5: $8e
    dec b                                         ; $4cd6: $05
    ld c, l                                       ; $4cd7: $4d
    dec sp                                        ; $4cd8: $3b
    ld e, d                                       ; $4cd9: $5a
    ldh [$7d], a                                  ; $4cda: $e0 $7d
    rst $18                                       ; $4cdc: $df
    ld c, a                                       ; $4cdd: $4f
    push af                                       ; $4cde: $f5
    ldh a, [$75]                                  ; $4cdf: $f0 $75
    ld b, l                                       ; $4ce1: $45
    call z, $f876                                 ; $4ce2: $cc $76 $f8
    db $f4                                        ; $4ce5: $f4
    ld e, h                                       ; $4ce6: $5c
    daa                                           ; $4ce7: $27
    dec a                                         ; $4ce8: $3d
    dec bc                                        ; $4ce9: $0b
    jp nz, $8a18                                  ; $4cea: $c2 $18 $8a

    ld c, [hl]                                    ; $4ced: $4e
    or a                                          ; $4cee: $b7
    cp l                                          ; $4cef: $bd
    ld a, a                                       ; $4cf0: $7f
    ld d, $6a                                     ; $4cf1: $16 $6a
    rst $08                                       ; $4cf3: $cf
    ld e, e                                       ; $4cf4: $5b
    jr z, jr_069_4ca8                             ; $4cf5: $28 $b1

jr_069_4cf7:
    call c, $e21f                                 ; $4cf7: $dc $1f $e2
    ld c, c                                       ; $4cfa: $49
    ld d, c                                       ; $4cfb: $51
    ld de, $70b3                                  ; $4cfc: $11 $b3 $70
    sbc d                                         ; $4cff: $9a
    ld hl, $eb47                                  ; $4d00: $21 $47 $eb
    ld h, h                                       ; $4d03: $64
    or a                                          ; $4d04: $b7
    cp l                                          ; $4d05: $bd
    ld a, a                                       ; $4d06: $7f
    ld d, $6a                                     ; $4d07: $16 $6a
    rst $08                                       ; $4d09: $cf
    ld e, e                                       ; $4d0a: $5b
    jr z, jr_069_4cbe                             ; $4d0b: $28 $b1

    ld d, h                                       ; $4d0d: $54
    ld [hl+], a                                   ; $4d0e: $22
    cp a                                          ; $4d0f: $bf
    jr nc, jr_069_4cf7                            ; $4d10: $30 $e5

    call nc, Call_069_7343                        ; $4d12: $d4 $43 $73
    ld c, e                                       ; $4d15: $4b
    ld [hl], d                                    ; $4d16: $72
    xor $0f                                       ; $4d17: $ee $0f
    db $db                                        ; $4d19: $db
    add h                                         ; $4d1a: $84
    dec c                                         ; $4d1b: $0d
    cpl                                           ; $4d1c: $2f
    dec a                                         ; $4d1d: $3d
    sub l                                         ; $4d1e: $95
    ld a, h                                       ; $4d1f: $7c
    add a                                         ; $4d20: $87
    ld b, a                                       ; $4d21: $47
    ld b, $6e                                     ; $4d22: $06 $6e
    ld hl, sp+$00                                 ; $4d24: $f8 $00
    sub a                                         ; $4d26: $97
    ld b, c                                       ; $4d27: $41
    adc [hl]                                      ; $4d28: $8e
    ld [hl], $a0                                  ; $4d29: $36 $a0
    ld [hl], c                                    ; $4d2b: $71
    or h                                          ; $4d2c: $b4
    ld bc, $f3ea                                  ; $4d2d: $01 $ea $f3
    ld c, a                                       ; $4d30: $4f
    jp nc, $d3ea                                  ; $4d31: $d2 $ea $d3

    ld e, b                                       ; $4d34: $58
    call nz, $627f                                ; $4d35: $c4 $7f $62
    ld [hl], $5a                                  ; $4d38: $36 $5a
    reti                                          ; $4d3a: $d9


    dec l                                         ; $4d3b: $2d

Call_069_4d3c:
    jr nc, @-$05                                  ; $4d3c: $30 $f9

    ld h, $42                                     ; $4d3e: $26 $42
    call nc, $342d                                ; $4d40: $d4 $2d $34
    db $db                                        ; $4d43: $db
    ld a, c                                       ; $4d44: $79
    ld [hl], a                                    ; $4d45: $77
    rlca                                          ; $4d46: $07
    dec a                                         ; $4d47: $3d
    sub b                                         ; $4d48: $90
    and e                                         ; $4d49: $a3
    ld c, l                                       ; $4d4a: $4d
    add hl, sp                                    ; $4d4b: $39
    inc d                                         ; $4d4c: $14
    sbc d                                         ; $4d4d: $9a
    rst $10                                       ; $4d4e: $d7
    jp z, $ed25                                   ; $4d4f: $ca $25 $ed

    inc c                                         ; $4d52: $0c
    jp c, $f538                                   ; $4d53: $da $38 $f5

    db $ed                                        ; $4d56: $ed
    ld c, c                                       ; $4d57: $49
    inc a                                         ; $4d58: $3c
    sbc e                                         ; $4d59: $9b
    ld [hl-], a                                   ; $4d5a: $32
    ld b, $da                                     ; $4d5b: $06 $da
    add [hl]                                      ; $4d5d: $86
    rrca                                          ; $4d5e: $0f
    db $db                                        ; $4d5f: $db
    cp e                                          ; $4d60: $bb
    jp $9eee                                      ; $4d61: $c3 $ee $9e


    rst $30                                       ; $4d64: $f7
    sub [hl]                                      ; $4d65: $96
    ccf                                           ; $4d66: $3f
    ld e, c                                       ; $4d67: $59
    call nz, $627f                                ; $4d68: $c4 $7f $62
    or [hl]                                       ; $4d6b: $b6
    ld [hl], c                                    ; $4d6c: $71
    dec de                                        ; $4d6d: $1b
    inc sp                                        ; $4d6e: $33
    ld a, [de]                                    ; $4d6f: $1a
    reti                                          ; $4d70: $d9


    inc a                                         ; $4d71: $3c
    ld h, [hl]                                    ; $4d72: $66
    ld l, b                                       ; $4d73: $68
    ld b, b                                       ; $4d74: $40
    xor c                                         ; $4d75: $a9
    reti                                          ; $4d76: $d9


    ld h, $8e                                     ; $4d77: $26 $8e
    ld a, h                                       ; $4d79: $7c
    call c, Call_000_01f0                         ; $4d7a: $dc $f0 $01
    ld e, e                                       ; $4d7d: $5b
    ld l, b                                       ; $4d7e: $68
    or [hl]                                       ; $4d7f: $b6
    ld [hl], e                                    ; $4d80: $73
    ld b, e                                       ; $4d81: $43
    inc de                                        ; $4d82: $13
    inc [hl]                                      ; $4d83: $34
    ld [hl], e                                    ; $4d84: $73
    push bc                                       ; $4d85: $c5
    or d                                          ; $4d86: $b2
    add hl, de                                    ; $4d87: $19
    ld sp, $cad3                                  ; $4d88: $31 $d3 $ca
    push de                                       ; $4d8b: $d5
    ld d, e                                       ; $4d8c: $53
    jp c, $0cc6                                   ; $4d8d: $da $c6 $0c

    ld d, c                                       ; $4d90: $51
    and a                                         ; $4d91: $a7
    rst $20                                       ; $4d92: $e7
    ld a, [de]                                    ; $4d93: $1a
    rst $38                                       ; $4d94: $ff
    ld l, c                                       ; $4d95: $69
    ld a, b                                       ; $4d96: $78
    xor d                                         ; $4d97: $aa
    ld l, b                                       ; $4d98: $68
    jp z, $f9a1                                   ; $4d99: $ca $a1 $f9

    push bc                                       ; $4d9c: $c5
    inc h                                         ; $4d9d: $24
    or l                                          ; $4d9e: $b5

Jump_069_4d9f:
    ld c, [hl]                                    ; $4d9f: $4e
    ld [hl], $18                                  ; $4da0: $36 $18
    db $d3                                        ; $4da2: $d3
    rst $30                                       ; $4da3: $f7
    ld a, l                                       ; $4da4: $7d
    ld a, a                                       ; $4da5: $7f
    sbc e                                         ; $4da6: $9b
    sub e                                         ; $4da7: $93
    rst $08                                       ; $4da8: $cf
    ld l, l                                       ; $4da9: $6d
    ld hl, sp+$00                                 ; $4daa: $f8 $00
    sbc e                                         ; $4dac: $9b
    daa                                           ; $4dad: $27
    ld h, [hl]                                    ; $4dae: $66
    ld l, d                                       ; $4daf: $6a
    ld b, [hl]                                    ; $4db0: $46
    add hl, sp                                    ; $4db1: $39
    dec a                                         ; $4db2: $3d
    rst $10                                       ; $4db3: $d7
    ld hl, sp+$4f                                 ; $4db4: $f8 $4f
    sbc l                                         ; $4db6: $9d
    ld h, h                                       ; $4db7: $64
    sub e                                         ; $4db8: $93
    ld c, a                                       ; $4db9: $4f
    di                                            ; $4dba: $f3
    xor $f6                                       ; $4dbb: $ee $f6
    ld e, b                                       ; $4dbd: $58
    dec e                                         ; $4dbe: $1d
    adc a                                         ; $4dbf: $8f
    and c                                         ; $4dc0: $a1
    ld c, [hl]                                    ; $4dc1: $4e
    ld [hl], $18                                  ; $4dc2: $36 $18
    db $d3                                        ; $4dc4: $d3
    jp nz, Jump_069_4fa9                          ; $4dc5: $c2 $a9 $4f

    ld h, e                                       ; $4dc8: $63
    or c                                          ; $4dc9: $b1
    and b                                         ; $4dca: $a0
    jp z, Jump_000_0d67                           ; $4dcb: $ca $67 $0d

    db $ec                                        ; $4dce: $ec
    ld c, a                                       ; $4dcf: $4f
    ret                                           ; $4dd0: $c9


    and d                                         ; $4dd1: $a2
    ld [de], a                                    ; $4dd2: $12
    add hl, de                                    ; $4dd3: $19
    or [hl]                                       ; $4dd4: $b6
    ld d, c                                       ; $4dd5: $51
    ld d, c                                       ; $4dd6: $51
    ret z                                         ; $4dd7: $c8

    ld a, [hl+]                                   ; $4dd8: $2a
    db $ed                                        ; $4dd9: $ed
    dec l                                         ; $4dda: $2d
    ret                                           ; $4ddb: $c9


    pop de                                        ; $4ddc: $d1
    cp e                                          ; $4ddd: $bb
    rla                                           ; $4dde: $17
    xor [hl]                                      ; $4ddf: $ae
    ld [hl], l                                    ; $4de0: $75
    ld c, d                                       ; $4de1: $4a
    sbc a                                         ; $4de2: $9f
    ld sp, $7789                                  ; $4de3: $31 $89 $77
    ld [hl], a                                    ; $4de6: $77
    ld a, e                                       ; $4de7: $7b
    or a                                          ; $4de8: $b7
    ld h, c                                       ; $4de9: $61
    push af                                       ; $4dea: $f5
    sub [hl]                                      ; $4deb: $96
    dec b                                         ; $4dec: $05
    call $9e94                                    ; $4ded: $cd $94 $9e
    ld [hl], l                                    ; $4df0: $75
    or d                                          ; $4df1: $b2
    db $fc                                        ; $4df2: $fc
    dec c                                         ; $4df3: $0d
    pop hl                                        ; $4df4: $e1
    push hl                                       ; $4df5: $e5
    ld [hl], c                                    ; $4df6: $71
    ld b, l                                       ; $4df7: $45
    inc sp                                        ; $4df8: $33
    and l                                         ; $4df9: $a5
    ld h, a                                       ; $4dfa: $67
    sbc l                                         ; $4dfb: $9d
    xor h                                         ; $4dfc: $ac
    and d                                         ; $4dfd: $a2
    dec bc                                        ; $4dfe: $0b
    ld d, [hl]                                    ; $4dff: $56
    adc h                                         ; $4e00: $8c
    ld a, c                                       ; $4e01: $79
    call c, Call_000_01fd                         ; $4e02: $dc $fd $01
    ld e, e                                       ; $4e05: $5b
    xor c                                         ; $4e06: $a9
    rst $30                                       ; $4e07: $f7
    ld a, l                                       ; $4e08: $7d
    ld a, a                                       ; $4e09: $7f
    add hl, bc                                    ; $4e0a: $09
    sbc d                                         ; $4e0b: $9a
    add l                                         ; $4e0c: $85
    db $d3                                        ; $4e0d: $d3
    inc a                                         ; $4e0e: $3c
    ld h, c                                       ; $4e0f: $61
    or h                                          ; $4e10: $b4
    ld bc, $a9fd                                  ; $4e11: $01 $fd $a9
    ld sp, hl                                     ; $4e14: $f9
    and l                                         ; $4e15: $a5
    and a                                         ; $4e16: $a7
    add sp, $6a                                   ; $4e17: $e8 $6a
    ld e, h                                       ; $4e19: $5c
    dec c                                         ; $4e1a: $0d
    ld sp, hl                                     ; $4e1b: $f9
    add hl, de                                    ; $4e1c: $19
    xor l                                         ; $4e1d: $ad
    daa                                           ; $4e1e: $27
    ld e, $53                                     ; $4e1f: $1e $53
    ld a, a                                       ; $4e21: $7f
    ld h, d                                       ; $4e22: $62
    ld e, $2d                                     ; $4e23: $1e $2d
    ld a, e                                       ; $4e25: $7b
    cp [hl]                                       ; $4e26: $be
    db $ed                                        ; $4e27: $ed
    db $f4                                        ; $4e28: $f4
    ld a, d                                       ; $4e29: $7a
    ld e, a                                       ; $4e2a: $5f
    inc c                                         ; $4e2b: $0c
    ld h, e                                       ; $4e2c: $63
    rst $30                                       ; $4e2d: $f7
    ld a, l                                       ; $4e2e: $7d
    rst $30                                       ; $4e2f: $f7
    call nz, $ea63                                ; $4e30: $c4 $63 $ea
    adc a                                         ; $4e33: $8f
    push af                                       ; $4e34: $f5
    ld h, a                                       ; $4e35: $67
    ld h, b                                       ; $4e36: $60
    sbc l                                         ; $4e37: $9d
    call c, Call_000_01f0                         ; $4e38: $dc $f0 $01
    daa                                           ; $4e3b: $27
    ld e, $53                                     ; $4e3c: $1e $53
    ld a, a                                       ; $4e3e: $7f
    xor h                                         ; $4e3f: $ac
    ccf                                           ; $4e40: $3f
    inc bc                                        ; $4e41: $03
    db $eb                                        ; $4e42: $eb
    db $e4                                        ; $4e43: $e4
    add [hl]                                      ; $4e44: $86
    rrca                                          ; $4e45: $0f
    db $db                                        ; $4e46: $db
    ei                                            ; $4e47: $fb
    ld d, e                                       ; $4e48: $53
    di                                            ; $4e49: $f3
    ld c, e                                       ; $4e4a: $4b
    ld c, a                                       ; $4e4b: $4f
    rst $38                                       ; $4e4c: $ff
    sub c                                         ; $4e4d: $91
    ld e, b                                       ; $4e4e: $58
    rst $08                                       ; $4e4f: $cf
    ld d, d                                       ; $4e50: $52
    ld [hl-], a                                   ; $4e51: $32
    ld h, $85                                     ; $4e52: $26 $85
    db $dd                                        ; $4e54: $dd
    ld e, a                                       ; $4e55: $5f
    dec sp                                        ; $4e56: $3b
    ld [hl], c                                    ; $4e57: $71
    rla                                           ; $4e58: $17
    ld a, [de]                                    ; $4e59: $1a
    ret c                                         ; $4e5a: $d8

    jr c, jr_069_4e8c                             ; $4e5b: $38 $2f

    db $e3                                        ; $4e5d: $e3
    xor $15                                       ; $4e5e: $ee $15
    jp nz, $8669                                  ; $4e60: $c2 $69 $86

    push af                                       ; $4e63: $f5
    rra                                           ; $4e64: $1f
    reti                                          ; $4e65: $d9


    jp hl                                         ; $4e66: $e9


    ld c, $bb                                     ; $4e67: $0e $bb
    ld a, e                                       ; $4e69: $7b
    sbc $5b                                       ; $4e6a: $de $5b
    cp $64                                        ; $4e6c: $fe $64
    rst $30                                       ; $4e6e: $f7
    cpl                                           ; $4e6f: $2f
    ld h, d                                       ; $4e70: $62
    ld [hl], $06                                  ; $4e71: $36 $06
    sub $b7                                       ; $4e73: $d6 $b7
    rla                                           ; $4e75: $17
    rst $38                                       ; $4e76: $ff
    rst $20                                       ; $4e77: $e7
    ld [hl], e                                    ; $4e78: $73
    cp c                                          ; $4e79: $b9
    dec hl                                        ; $4e7a: $2b
    sbc [hl]                                      ; $4e7b: $9e
    ld e, $63                                     ; $4e7c: $1e $63
    di                                            ; $4e7e: $f3
    add h                                         ; $4e7f: $84
    pop de                                        ; $4e80: $d1
    ld a, [$9634]                                 ; $4e81: $fa $34 $96
    db $fd                                        ; $4e84: $fd
    add hl, hl                                    ; $4e85: $29
    ld a, c                                       ; $4e86: $79
    ld [hl], a                                    ; $4e87: $77
    sbc e                                         ; $4e88: $9b
    adc e                                         ; $4e89: $8b
    ccf                                           ; $4e8a: $3f
    sbc e                                         ; $4e8b: $9b

jr_069_4e8c:
    rst $18                                       ; $4e8c: $df
    ld a, [bc]                                    ; $4e8d: $0a
    call $998c                                    ; $4e8e: $cd $8c $99
    ld e, l                                       ; $4e91: $5d
    pop bc                                        ; $4e92: $c1
    jp nc, $9313                                  ; $4e93: $d2 $13 $93

    ld l, h                                       ; $4e96: $6c
    jr jr_069_4ec6                                ; $4e97: $18 $2d

    rla                                           ; $4e99: $17
    rla                                           ; $4e9a: $17
    ld b, a                                       ; $4e9b: $47
    dec de                                        ; $4e9c: $1b
    ret nc                                        ; $4e9d: $d0

    di                                            ; $4e9e: $f3
    ld l, l                                       ; $4e9f: $6d
    and a                                         ; $4ea0: $a7
    rst $10                                       ; $4ea1: $d7
    ei                                            ; $4ea2: $fb
    ld h, d                                       ; $4ea3: $62
    jr @-$43                                      ; $4ea4: $18 $bb

    ccf                                           ; $4ea6: $3f
    rst $20                                       ; $4ea7: $e7
    call $d4eb                                    ; $4ea8: $cd $eb $d4
    ld a, a                                       ; $4eab: $7f
    ld h, e                                       ; $4eac: $63
    dec c                                         ; $4ead: $0d
    adc a                                         ; $4eae: $8f
    dec c                                         ; $4eaf: $0d
    xor h                                         ; $4eb0: $ac
    ld a, h                                       ; $4eb1: $7c
    ld sp, $aec9                                  ; $4eb2: $31 $c9 $ae
    ld e, [hl]                                    ; $4eb5: $5e
    ldh [$dd], a                                  ; $4eb6: $e0 $dd
    sla [hl]                                      ; $4eb8: $cb $26
    or b                                          ; $4eba: $b0
    ld l, h                                       ; $4ebb: $6c
    ld a, [de]                                    ; $4ebc: $1a
    ld sp, $4aa3                                  ; $4ebd: $31 $a3 $4a
    rrca                                          ; $4ec0: $0f
    sbc d                                         ; $4ec1: $9a
    ld [hl], d                                    ; $4ec2: $72
    xor b                                         ; $4ec3: $a8
    rrca                                          ; $4ec4: $0f
    dec bc                                        ; $4ec5: $0b

jr_069_4ec6:
    sub b                                         ; $4ec6: $90
    and e                                         ; $4ec7: $a3
    dec a                                         ; $4ec8: $3d
    or $c4                                        ; $4ec9: $f6 $c4
    ld h, e                                       ; $4ecb: $63
    sbc d                                         ; $4ecc: $9a
    jr c, @+$33                                   ; $4ecd: $38 $31

    adc a                                         ; $4ecf: $8f
    sub [hl]                                      ; $4ed0: $96
    dec a                                         ; $4ed1: $3d
    rst $18                                       ; $4ed2: $df
    halt                                          ; $4ed3: $76
    ld a, d                                       ; $4ed4: $7a
    cp l                                          ; $4ed5: $bd
    cpl                                           ; $4ed6: $2f
    add [hl]                                      ; $4ed7: $86
    or c                                          ; $4ed8: $b1
    ei                                            ; $4ed9: $fb
    inc bc                                        ; $4eda: $03
    ld [c], a                                     ; $4edb: $e2
    ld a, c                                       ; $4edc: $79
    ld e, l                                       ; $4edd: $5d
    ld b, a                                       ; $4ede: $47
    cp e                                          ; $4edf: $bb
    push bc                                       ; $4ee0: $c5
    ld a, c                                       ; $4ee1: $79
    cp l                                          ; $4ee2: $bd
    dec bc                                        ; $4ee3: $0b
    ld a, h                                       ; $4ee4: $7c
    rst $20                                       ; $4ee5: $e7
    push af                                       ; $4ee6: $f5
    ld l, d                                       ; $4ee7: $6a
    pop de                                        ; $4ee8: $d1
    ld c, e                                       ; $4ee9: $4b
    cp c                                          ; $4eea: $b9
    ld b, d                                       ; $4eeb: $42
    db $fc                                        ; $4eec: $fc
    rla                                           ; $4eed: $17
    ld a, [bc]                                    ; $4eee: $0a
    jp nc, $b342                                  ; $4eef: $d2 $42 $b3

    ld [hl], b                                    ; $4ef2: $70
    cp d                                          ; $4ef3: $ba
    adc e                                         ; $4ef4: $8b
    ld sp, $30cd                                  ; $4ef5: $31 $cd $30
    jp c, $627f                                   ; $4ef8: $da $7f $62

    inc e                                         ; $4efb: $1c
    db $fd                                        ; $4efc: $fd
    rst $20                                       ; $4efd: $e7
    xor [hl]                                      ; $4efe: $ae
    ld hl, sp-$61                                 ; $4eff: $f8 $9f
    db $e4                                        ; $4f01: $e4
    adc d                                         ; $4f02: $8a
    or d                                          ; $4f03: $b2
    add hl, hl                                    ; $4f04: $29
    add a                                         ; $4f05: $87
    xor [hl]                                      ; $4f06: $ae
    inc sp                                        ; $4f07: $33
    jp z, $8ed1                                   ; $4f08: $ca $d1 $8e

    halt                                          ; $4f0b: $76
    adc a                                         ; $4f0c: $8f
    ld hl, sp-$02                                 ; $4f0d: $f8 $fe
    pop de                                        ; $4f0f: $d1
    and [hl]                                      ; $4f10: $a6
    inc e                                         ; $4f11: $1c
    ld [$784f], a                                 ; $4f12: $ea $4f $78
    sub h                                         ; $4f15: $94
    ld e, l                                       ; $4f16: $5d
    ld hl, $b0fe                                  ; $4f17: $21 $fe $b0
    xor $58                                       ; $4f1a: $ee $58
    halt                                          ; $4f1c: $76
    and $24                                       ; $4f1d: $e6 $24
    db $ec                                        ; $4f1f: $ec
    push bc                                       ; $4f20: $c5
    ld b, [hl]                                    ; $4f21: $46
    or $32                                        ; $4f22: $f6 $32
    xor [hl]                                      ; $4f24: $ae
    ld h, a                                       ; $4f25: $67
    inc bc                                        ; $4f26: $03
    sbc e                                         ; $4f27: $9b
    sub b                                         ; $4f28: $90
    ld [hl], d                                    ; $4f29: $72
    rst $08                                       ; $4f2a: $cf
    rst $20                                       ; $4f2b: $e7
    db $dd                                        ; $4f2c: $dd
    dec hl                                        ; $4f2d: $2b
    ld c, $94                                     ; $4f2e: $0e $94

Jump_069_4f30:
    or e                                          ; $4f30: $b3
    ld sp, $768e                                  ; $4f31: $31 $8e $76
    ld e, c                                       ; $4f34: $59
    dec hl                                        ; $4f35: $2b
    ld h, h                                       ; $4f36: $64
    dec a                                         ; $4f37: $3d
    ld a, h                                       ; $4f38: $7c
    add d                                         ; $4f39: $82
    rst $20                                       ; $4f3a: $e7
    inc bc                                        ; $4f3b: $03
    db $db                                        ; $4f3c: $db
    add h                                         ; $4f3d: $84
    inc hl                                        ; $4f3e: $23
    ld l, d                                       ; $4f3f: $6a
    inc d                                         ; $4f40: $14
    adc [hl]                                      ; $4f41: $8e
    xor b                                         ; $4f42: $a8
    db $e3                                        ; $4f43: $e3
    or d                                          ; $4f44: $b2
    or c                                          ; $4f45: $b1
    dec hl                                        ; $4f46: $2b
    db $ec                                        ; $4f47: $ec
    ld l, d                                       ; $4f48: $6a
    inc d                                         ; $4f49: $14
    adc [hl]                                      ; $4f4a: $8e
    xor b                                         ; $4f4b: $a8
    cp $58                                        ; $4f4c: $fe $58
    cp l                                          ; $4f4e: $bd
    ld e, h                                       ; $4f4f: $5c
    adc l                                         ; $4f50: $8d
    db $dd                                        ; $4f51: $dd
    rst $30                                       ; $4f52: $f7
    db $fd                                        ; $4f53: $fd
    ld bc, $3489                                  ; $4f54: $01 $89 $34
    db $fc                                        ; $4f57: $fc
    add sp, -$0c                                  ; $4f58: $e8 $f4
    ld [de], a                                    ; $4f5a: $12
    rst $30                                       ; $4f5b: $f7
    call z, $2cb0                                 ; $4f5c: $cc $b0 $2c
    rst $30                                       ; $4f5f: $f7
    rlca                                          ; $4f60: $07
    rst $20                                       ; $4f61: $e7
    db $ec                                        ; $4f62: $ec
    jp c, $d1b5                                   ; $4f63: $da $b5 $d1

    or e                                          ; $4f66: $b3
    ld l, e                                       ; $4f67: $6b
    rst $10                                       ; $4f68: $d7
    ld b, [hl]                                    ; $4f69: $46
    rst $08                                       ; $4f6a: $cf
    xor [hl]                                      ; $4f6b: $ae
    ld e, l                                       ; $4f6c: $5d
    and d                                         ; $4f6d: $a2
    and [hl]                                      ; $4f6e: $a6
    call Call_000_0fee                            ; $4f6f: $cd $ee $0f
    add hl, bc                                    ; $4f72: $09
    sbc d                                         ; $4f73: $9a
    rst $10                                       ; $4f74: $d7
    ld [$bc81], a                                 ; $4f75: $ea $81 $bc
    rst $28                                       ; $4f78: $ef
    cp e                                          ; $4f79: $bb
    ret nc                                        ; $4f7a: $d0

    cp h                                          ; $4f7b: $bc
    ld d, [hl]                                    ; $4f7c: $56
    rrca                                          ; $4f7d: $0f
    db $e4                                        ; $4f7e: $e4
    ld a, l                                       ; $4f7f: $7d
    rst $18                                       ; $4f80: $df
    add l                                         ; $4f81: $85
    ld l, e                                       ; $4f82: $6b
    ld a, b                                       ; $4f83: $78
    jp hl                                         ; $4f84: $e9


    cp c                                          ; $4f85: $b9
    rst $28                                       ; $4f86: $ef
    ei                                            ; $4f87: $fb
    inc bc                                        ; $4f88: $03
    adc c                                         ; $4f89: $89

jr_069_4f8a:
    xor d                                         ; $4f8a: $aa
    ld sp, hl                                     ; $4f8b: $f9
    cp [hl]                                       ; $4f8c: $be
    rst $28                                       ; $4f8d: $ef
    dec l                                         ; $4f8e: $2d
    jr nc, jr_069_4f8a                            ; $4f8f: $30 $f9

    ld h, $e2                                     ; $4f91: $26 $e2
    cp [hl]                                       ; $4f93: $be
    rst $28                                       ; $4f94: $ef
    ld [hl], c                                    ; $4f95: $71
    xor e                                         ; $4f96: $ab
    rst $10                                       ; $4f97: $d7
    jp hl                                         ; $4f98: $e9


    dec h                                         ; $4f99: $25
    xor $99                                       ; $4f9a: $ee $99
    ld h, c                                       ; $4f9c: $61
    ld e, c                                       ; $4f9d: $59
    ld [$42e5], a                                 ; $4f9e: $ea $e5 $42
    db $eb                                        ; $4fa1: $eb
    ccf                                           ; $4fa2: $3f
    or d                                          ; $4fa3: $b2
    ld e, h                                       ; $4fa4: $5c
    jp nc, $9d6e                                  ; $4fa5: $d2 $6e $9d

    cp h                                          ; $4fa8: $bc

Jump_069_4fa9:
    sbc e                                         ; $4fa9: $9b
    ld c, b                                       ; $4faa: $48
    jp $d8ff                                      ; $4fab: $c3 $ff $d8


    ccf                                           ; $4fae: $3f
    adc c                                         ; $4faf: $89
    scf                                           ; $4fb0: $37
    dec c                                         ; $4fb1: $0d
    xor b                                         ; $4fb2: $a8
    ld b, h                                       ; $4fb3: $44
    sbc b                                         ; $4fb4: $98
    ei                                            ; $4fb5: $fb
    inc bc                                        ; $4fb6: $03
    rst $20                                       ; $4fb7: $e7
    ld h, d                                       ; $4fb8: $62
    push af                                       ; $4fb9: $f5
    ld e, b                                       ; $4fba: $58
    add l                                         ; $4fbb: $85
    ld [hl], l                                    ; $4fbc: $75
    ld e, h                                       ; $4fbd: $5c
    ld [hl], $76                                  ; $4fbe: $36 $76
    add l                                         ; $4fc0: $85
    ld e, l                                       ; $4fc1: $5d
    sbc l                                         ; $4fc2: $9d
    xor $88                                       ; $4fc3: $ee $88
    db $f4                                        ; $4fc5: $f4
    or c                                          ; $4fc6: $b1
    pop hl                                        ; $4fc7: $e1
    inc bc                                        ; $4fc8: $03
    ld [c], a                                     ; $4fc9: $e2
    ld a, a                                       ; $4fca: $7f
    ld [hl], d                                    ; $4fcb: $72
    sbc d                                         ; $4fcc: $9a
    ld [hl], d                                    ; $4fcd: $72
    jr z, @+$18                                   ; $4fce: $28 $16

    ld [hl], h                                    ; $4fd0: $74
    push bc                                       ; $4fd1: $c5
    rst $10                                       ; $4fd2: $d7
    ldh a, [rPCM12]                               ; $4fd3: $f0 $76
    pop bc                                        ; $4fd5: $c1
    jp z, $8ee9                                   ; $4fd6: $ca $e9 $8e

    ld c, b                                       ; $4fd9: $48
    rra                                           ; $4fda: $1f
    db $fd                                        ; $4fdb: $fd
    ld b, a                                       ; $4fdc: $47
    ld c, [hl]                                    ; $4fdd: $4e
    rst $38                                       ; $4fde: $ff
    inc h                                         ; $4fdf: $24
    jp nc, Jump_000_32b4                          ; $4fe0: $d2 $b4 $32

    xor a                                         ; $4fe3: $af
    db $eb                                        ; $4fe4: $eb
    cp $4d                                        ; $4fe5: $fe $4d
    ld b, h                                       ; $4fe7: $44
    jr nc, jr_069_5058                            ; $4fe8: $30 $6e

    ld hl, sp+$00                                 ; $4fea: $f8 $00
    sub a                                         ; $4fec: $97
    ld b, c                                       ; $4fed: $41
    adc [hl]                                      ; $4fee: $8e
    ld [hl], $a0                                  ; $4fef: $36 $a0
    ld e, h                                       ; $4ff1: $5c
    dec a                                         ; $4ff2: $3d
    and l                                         ; $4ff3: $a5
    ld [hl], l                                    ; $4ff4: $75
    ld a, d                                       ; $4ff5: $7a
    xor [hl]                                      ; $4ff6: $ae
    sub e                                         ; $4ff7: $93
    sbc [hl]                                      ; $4ff8: $9e
    dec b                                         ; $4ff9: $05
    ld h, c                                       ; $4ffa: $61
    inc c                                         ; $4ffb: $0c
    ld [hl], a                                    ; $4ffc: $77
    inc de                                        ; $4ffd: $13
    adc h                                         ; $4ffe: $8c
    sbc l                                         ; $4fff: $9d
    and [hl]                                      ; $5000: $a6
    inc e                                         ; $5001: $1c
    ld a, [de]                                    ; $5002: $1a
    or b                                          ; $5003: $b0
    jp c, Jump_069_728d                           ; $5004: $da $8d $72

    or h                                          ; $5007: $b4
    add hl, de                                    ; $5008: $19
    ld d, [hl]                                    ; $5009: $56
    cpl                                           ; $500a: $2f
    ld e, [hl]                                    ; $500b: $5e
    sbc [hl]                                      ; $500c: $9e
    ld h, $d7                                     ; $500d: $26 $d7
    xor d                                         ; $500f: $aa
    db $eb                                        ; $5010: $eb
    ld a, [hl]                                    ; $5011: $7e
    or a                                          ; $5012: $b7
    adc h                                         ; $5013: $8c
    sbc $1f                                       ; $5014: $de $1f
    ld e, e                                       ; $5016: $5b
    xor c                                         ; $5017: $a9
    adc l                                         ; $5018: $8d
    jp nz, $8669                                  ; $5019: $c2 $69 $86

    inc e                                         ; $501c: $1c
    xor l                                         ; $501d: $ad
    ld l, a                                       ; $501e: $6f
    or e                                          ; $501f: $b3
    and d                                         ; $5020: $a2
    ld l, [hl]                                    ; $5021: $6e
    ld l, b                                       ; $5022: $68
    ld b, d                                       ; $5023: $42
    push de                                       ; $5024: $d5
    ld sp, hl                                     ; $5025: $f9
    and e                                         ; $5026: $a3
    sbc c                                         ; $5027: $99
    ld [de], a                                    ; $5028: $12

jr_069_5029:
    ld sp, $51a3                                  ; $5029: $31 $a3 $51
    jr c, jr_069_5083                             ; $502c: $38 $55

    ld a, d                                       ; $502e: $7a
    jr nz, jr_069_5078                            ; $502f: $20 $47

    dec de                                        ; $5031: $1b
    add hl, de                                    ; $5032: $19
    ret c                                         ; $5033: $d8

    ret nz                                        ; $5034: $c0

    ld h, $22                                     ; $5035: $26 $22
    jr jr_069_5054                                ; $5037: $18 $1b

    ld hl, $a61b                                  ; $5039: $21 $1b $a6
    rst $20                                       ; $503c: $e7
    dec l                                         ; $503d: $2d
    adc $eb                                       ; $503e: $ce $eb
    db $dd                                        ; $5040: $dd
    ld a, c                                       ; $5041: $79
    ld a, a                                       ; $5042: $7f
    dec sp                                        ; $5043: $3b
    ld e, [hl]                                    ; $5044: $5e
    sbc d                                         ; $5045: $9a
    ld [hl], d                                    ; $5046: $72
    and e                                         ; $5047: $a3
    call nz, Call_069_715d                        ; $5048: $c4 $5d $71
    ld a, a                                       ; $504b: $7f
    inc [hl]                                      ; $504c: $34
    ld c, a                                       ; $504d: $4f
    ld d, e                                       ; $504e: $53
    ld c, $0d                                     ; $504f: $0e $0d
    xor h                                         ; $5051: $ac
    ld l, a                                       ; $5052: $6f
    cp e                                          ; $5053: $bb

jr_069_5054:
    dec bc                                        ; $5054: $0b
    ld a, [hl]                                    ; $5055: $7e
    sub d                                         ; $5056: $92
    ld e, l                                       ; $5057: $5d

jr_069_5058:
    ld h, c                                       ; $5058: $61

jr_069_5059:
    ld d, a                                       ; $5059: $57
    ld d, e                                       ; $505a: $53
    ld c, $4d                                     ; $505b: $0e $4d
    cp c                                          ; $505d: $b9
    and a                                         ; $505e: $a7
    jr nc, jr_069_5029                            ; $505f: $30 $c8

    and [hl]                                      ; $5061: $a6
    inc e                                         ; $5062: $1c
    inc a                                         ; $5063: $3c
    ld b, [hl]                                    ; $5064: $46
    xor e                                         ; $5065: $ab
    sub e                                         ; $5066: $93
    xor h                                         ; $5067: $ac
    ld hl, $6c6d                                  ; $5068: $21 $6d $6c
    ld h, b                                       ; $506b: $60
    and c                                         ; $506c: $a1
    rst $38                                       ; $506d: $ff
    inc l                                         ; $506e: $2c
    xor h                                         ; $506f: $ac
    adc a                                         ; $5070: $8f
    xor b                                         ; $5071: $a8
    sub h                                         ; $5072: $94
    dec c                                         ; $5073: $0d
    adc [hl]                                      ; $5074: $8e
    jp c, Jump_069_7615                           ; $5075: $da $15 $76

jr_069_5078:
    ld b, c                                       ; $5078: $41
    ld b, l                                       ; $5079: $45
    adc l                                         ; $507a: $8d
    jp nz, $8fa9                                  ; $507b: $c2 $a9 $8f

    xor b                                         ; $507e: $a8
    sub h                                         ; $507f: $94
    sbc e                                         ; $5080: $9b
    ld a, $97                                     ; $5081: $3e $97

jr_069_5083:
    jr c, jr_069_5059                             ; $5083: $38 $d4

    ld b, a                                       ; $5085: $47
    ld h, h                                       ; $5086: $64
    inc sp                                        ; $5087: $33

jr_069_5088:
    inc c                                         ; $5088: $0c
    or d                                          ; $5089: $b2
    ld e, $c6                                     ; $508a: $1e $c6
    rla                                           ; $508c: $17
    and [hl]                                      ; $508d: $a6
    and e                                         ; $508e: $a3
    ld h, l                                       ; $508f: $65
    call z, $3d2f                                 ; $5090: $cc $2f $3d
    jp c, $9a9f                                   ; $5093: $da $9f $9a

    ld e, a                                       ; $5096: $5f
    ld a, d                                       ; $5097: $7a
    db $f4                                        ; $5098: $f4
    xor [hl]                                      ; $5099: $ae
    ld hl, sp-$75                                 ; $509a: $f8 $8b
    add c                                         ; $509c: $81
    call $c988                                    ; $509d: $cd $88 $c9
    add hl, hl                                    ; $50a0: $29
    or l                                          ; $50a1: $b5
    rst $38                                       ; $50a2: $ff
    sbc b                                         ; $50a3: $98
    ld hl, $6866                                  ; $50a4: $21 $66 $68
    db $e3                                        ; $50a7: $e3
    ld d, h                                       ; $50a8: $54
    jp nz, $fa15                                  ; $50a9: $c2 $15 $fa

    db $db                                        ; $50ac: $db
    res 7, e                                      ; $50ad: $cb $bb
    db $db                                        ; $50af: $db
    sbc e                                         ; $50b0: $9b
    ei                                            ; $50b1: $fb
    inc bc                                        ; $50b2: $03
    db $db                                        ; $50b3: $db
    adc l                                         ; $50b4: $8d
    push af                                       ; $50b5: $f5
    ld b, b                                       ; $50b6: $40
    adc d                                         ; $50b7: $8a
    ld a, [hl-]                                   ; $50b8: $3a
    ld c, l                                       ; $50b9: $4d
    dec de                                        ; $50ba: $1b
    ld h, e                                       ; $50bb: $63
    ld b, b                                       ; $50bc: $40
    dec d                                         ; $50bd: $15
    ld sp, $d639                                  ; $50be: $31 $39 $d6
    dec l                                         ; $50c1: $2d
    inc [hl]                                      ; $50c2: $34
    db $db                                        ; $50c3: $db
    reti                                          ; $50c4: $d9


    call nz, $19c9                                ; $50c5: $c4 $c9 $19
    ld d, [hl]                                    ; $50c8: $56
    ld bc, $662e                                  ; $50c9: $01 $2e $66
    ld l, [hl]                                    ; $50cc: $6e
    ld d, h                                       ; $50cd: $54
    call nc, Call_000_22fb                        ; $50ce: $d4 $fb $22
    rla                                           ; $50d1: $17
    adc c                                         ; $50d2: $89
    sbc b                                         ; $50d3: $98
    ld d, c                                       ; $50d4: $51
    ld [hl], $ee                                  ; $50d5: $36 $ee
    xor [hl]                                      ; $50d7: $ae
    ld [hl], a                                    ; $50d8: $77
    inc de                                        ; $50d9: $13
    call nc, Call_069_4187                        ; $50da: $d4 $87 $41
    sub [hl]                                      ; $50dd: $96
    add hl, hl                                    ; $50de: $29
    rst $30                                       ; $50df: $f7
    ld [$9963], a                                 ; $50e0: $ea $63 $99
    ld l, [hl]                                    ; $50e3: $6e
    ld h, c                                       ; $50e4: $61
    jp c, $b85e                                   ; $50e5: $da $5e $b8

    sbc e                                         ; $50e8: $9b
    ret nc                                        ; $50e9: $d0

    jr z, jr_069_5088                             ; $50ea: $28 $9c

    ld a, d                                       ; $50ec: $7a
    sbc l                                         ; $50ed: $9d
    nop                                           ; $50ee: $00
    jp z, Jump_000_3bbb                           ; $50ef: $ca $bb $3b

    ret nc                                        ; $50f2: $d0

    xor c                                         ; $50f3: $a9
    rst $30                                       ; $50f4: $f7
    db $ed                                        ; $50f5: $ed
    add d                                         ; $50f6: $82
    ld b, c                                       ; $50f7: $41
    ld d, [hl]                                    ; $50f8: $56
    ld h, c                                       ; $50f9: $61
    ld l, e                                       ; $50fa: $6b
    push af                                       ; $50fb: $f5
    rst $18                                       ; $50fc: $df
    ret c                                         ; $50fd: $d8

    db $fd                                        ; $50fe: $fd
    ld bc, $1ce7                                  ; $50ff: $01 $e7 $1c
    adc $c6                                       ; $5102: $ce $c6
    ld a, c                                       ; $5104: $79

Call_069_5105:
    add hl, de                                    ; $5105: $19
    ld [hl], a                                    ; $5106: $77
    inc de                                        ; $5107: $13

jr_069_5108:
    ld l, l                                       ; $5108: $6d
    ld h, d                                       ; $5109: $62
    ld e, $ad                                     ; $510a: $1e $ad
    ld l, a                                       ; $510c: $6f
    xor h                                         ; $510d: $ac
    sub e                                         ; $510e: $93
    push af                                       ; $510f: $f5
    xor c                                         ; $5110: $a9
    adc d                                         ; $5111: $8a
    scf                                           ; $5112: $37
    adc l                                         ; $5113: $8d
    ld d, e                                       ; $5114: $53
    rst $08                                       ; $5115: $cf
    ld l, b                                       ; $5116: $68
    jp z, $d361                                   ; $5117: $ca $61 $d3

    rlca                                          ; $511a: $07
    add hl, bc                                    ; $511b: $09
    xor [hl]                                      ; $511c: $ae
    ld d, c                                       ; $511d: $51
    jr c, @+$5f                                   ; $511e: $38 $5d

    adc l                                         ; $5120: $8d
    xor e                                         ; $5121: $ab
    ld c, a                                       ; $5122: $4f
    ld h, e                                       ; $5123: $63
    ld e, c                                       ; $5124: $59
    rst $28                                       ; $5125: $ef
    ld [hl-], a                                   ; $5126: $32
    ld b, $cd                                     ; $5127: $06 $cd
    call c, Call_000_01f0                         ; $5129: $dc $f0 $01
    ld [c], a                                     ; $512c: $e2
    xor a                                         ; $512d: $af
    dec hl                                        ; $512e: $2b
    ld a, $ed                                     ; $512f: $3e $ed
    adc d                                         ; $5131: $8a
    ld c, a                                       ; $5132: $4f
    ld b, l                                       ; $5133: $45
    ld b, l                                       ; $5134: $45
    rst $10                                       ; $5135: $d7
    ld d, l                                       ; $5136: $55
    pop de                                        ; $5137: $d1
    sub h                                         ; $5138: $94
    add e                                         ; $5139: $83
    ld b, c                                       ; $513a: $41
    db $eb                                        ; $513b: $eb
    ld a, l                                       ; $513c: $7d
    ccf                                           ; $513d: $3f
    xor l                                         ; $513e: $ad
    sub b                                         ; $513f: $90
    db $dd                                        ; $5140: $dd
    ld [hl-], a                                   ; $5141: $32
    ld l, c                                       ; $5142: $69
    ld b, c                                       ; $5143: $41
    or h                                          ; $5144: $b4
    xor h                                         ; $5145: $ac
    dec de                                        ; $5146: $1b
    jp c, Jump_069_4bed                           ; $5147: $da $ed $4b

    sub d                                         ; $514a: $92
    ld [hl], a                                    ; $514b: $77
    push bc                                       ; $514c: $c5
    ld d, e                                       ; $514d: $53
    ld c, $0b                                     ; $514e: $0e $0b
    ei                                            ; $5150: $fb
    rst $08                                       ; $5151: $cf
    ld d, e                                       ; $5152: $53
    sub $37                                       ; $5153: $d6 $37
    ld h, [hl]                                    ; $5155: $66
    jr nc, jr_069_5108                            ; $5156: $30 $b0

    ld [hl], c                                    ; $5158: $71
    ld a, [$8527]                                 ; $5159: $fa $27 $85
    db $d3                                        ; $515c: $d3
    ld [hl], l                                    ; $515d: $75
    ld d, l                                       ; $515e: $55
    add $b4                                       ; $515f: $c6 $b4
    ld b, e                                       ; $5161: $43
    jp $2ee1                                      ; $5162: $c3 $e1 $2e


    cp [hl]                                       ; $5165: $be
    ld a, a                                       ; $5166: $7f
    ld [hl], a                                    ; $5167: $77
    adc e                                         ; $5168: $8b
    ld l, a                                       ; $5169: $6f
    xor $1e                                       ; $516a: $ee $1e
    ld a, [hl]                                    ; $516c: $7e
    reti                                          ; $516d: $d9


    ld e, d                                       ; $516e: $5a
    cp c                                          ; $516f: $b9
    cp h                                          ; $5170: $bc
    ld a, [hl-]                                   ; $5171: $3a
    ld e, c                                       ; $5172: $59
    rla                                           ; $5173: $17
    rst $18                                       ; $5174: $df
    cp a                                          ; $5175: $bf
    cp e                                          ; $5176: $bb
    push bc                                       ; $5177: $c5
    scf                                           ; $5178: $37
    ld c, l                                       ; $5179: $4d
    add hl, sp                                    ; $517a: $39
    db $f4                                        ; $517b: $f4
    ldh a, [$bc]                                  ; $517c: $f0 $bc
    ld d, [hl]                                    ; $517e: $56
    jp hl                                         ; $517f: $e9


    ld e, [hl]                                    ; $5180: $5e
    sbc [hl]                                      ; $5181: $9e
    ld a, d                                       ; $5182: $7a
    ld h, c                                       ; $5183: $61
    cpl                                           ; $5184: $2f
    call z, $84dd                                 ; $5185: $cc $dd $84
    xor [hl]                                      ; $5188: $ae
    and $3f                                       ; $5189: $e6 $3f
    ld d, b                                       ; $518b: $50
    sbc e                                         ; $518c: $9b
    rrca                                          ; $518d: $0f
    sub h                                         ; $518e: $94
    dec c                                         ; $518f: $0d
    add a                                         ; $5190: $87
    ld c, a                                       ; $5191: $4f
    ld de, $89ff                                  ; $5192: $11 $ff $89
    reti                                          ; $5195: $d9


    ld l, b                                       ; $5196: $68
    and d                                         ; $5197: $a2

Call_069_5198:
    ld a, [$31e3]                                 ; $5198: $fa $e3 $31
    db $ec                                        ; $519b: $ec
    ld a, d                                       ; $519c: $7a
    ld sp, $f739                                  ; $519d: $31 $39 $f7
    rlca                                          ; $51a0: $07
    db $db                                        ; $51a1: $db
    sbc e                                         ; $51a2: $9b
    ld [hl], d                                    ; $51a3: $72
    jr z, @+$01                                   ; $51a4: $28 $ff

    adc c                                         ; $51a6: $89
    add hl, de                                    ; $51a7: $19
    ccf                                           ; $51a8: $3f
    xor d                                         ; $51a9: $aa
    add sp, -$2c                                  ; $51aa: $e8 $d4
    push bc                                       ; $51ac: $c5
    rst $30                                       ; $51ad: $f7
    rst $28                                       ; $51ae: $ef
    ld l, [hl]                                    ; $51af: $6e
    pop af                                        ; $51b0: $f1
    ld c, l                                       ; $51b1: $4d
    cp l                                          ; $51b2: $bd
    or b                                          ; $51b3: $b0
    rla                                           ; $51b4: $17
    and [hl]                                      ; $51b5: $a6
    ld [hl], c                                    ; $51b6: $71
    or h                                          ; $51b7: $b4
    adc b                                         ; $51b8: $88
    rst $38                                       ; $51b9: $ff
    call nz, $b46c                                ; $51ba: $c4 $6c $b4
    ld a, [$24f6]                                 ; $51bd: $fa $f6 $24
    sbc [hl]                                      ; $51c0: $9e
    call Call_000_0fa6                            ; $51c1: $cd $a6 $0f
    dec sp                                        ; $51c4: $3b
    ld d, b                                       ; $51c5: $50
    rst $28                                       ; $51c6: $ef
    ei                                            ; $51c7: $fb
    ld l, c                                       ; $51c8: $69
    sub b                                         ; $51c9: $90
    dec d                                         ; $51ca: $15
    ldh [$62], a                                  ; $51cb: $e0 $62
    ld a, $9c                                     ; $51cd: $3e $9c
    sub l                                         ; $51cf: $95
    ld c, a                                       ; $51d0: $4f
    halt                                          ; $51d1: $76
    ld e, h                                       ; $51d2: $5c
    add hl, sp                                    ; $51d3: $39
    dec a                                         ; $51d4: $3d
    adc a                                         ; $51d5: $8f
    ld sp, $c8dd                                  ; $51d6: $31 $dd $c8
    ret nz                                        ; $51d9: $c0

    ld b, [hl]                                    ; $51da: $46
    or $bc                                        ; $51db: $f6 $bc
    ld h, l                                       ; $51dd: $65
    inc c                                         ; $51de: $0c
    sbc d                                         ; $51df: $9a
    reti                                          ; $51e0: $d9


    push de                                       ; $51e1: $d5
    ld l, b                                       ; $51e2: $68
    cp l                                          ; $51e3: $bd
    call c, $c955                                 ; $51e4: $dc $55 $c9
    push hl                                       ; $51e7: $e5
    xor $36                                       ; $51e8: $ee $36
    ld h, c                                       ; $51ea: $61
    push af                                       ; $51eb: $f5
    ld [hl], b                                    ; $51ec: $70
    ld a, d                                       ; $51ed: $7a
    xor c                                         ; $51ee: $a9
    add hl, de                                    ; $51ef: $19
    or d                                          ; $51f0: $b2
    ld h, c                                       ; $51f1: $61
    ld a, [$be53]                                 ; $51f2: $fa $53 $be
    sbc b                                         ; $51f5: $98
    sbc h                                         ; $51f6: $9c
    cp e                                          ; $51f7: $bb
    ld d, a                                       ; $51f8: $57
    ld d, b                                       ; $51f9: $50
    adc [hl]                                      ; $51fa: $8e
    ld [hl], $bc                                  ; $51fb: $36 $bc
    push de                                       ; $51fd: $d5
    dec bc                                        ; $51fe: $0b
    rst $08                                       ; $51ff: $cf
    ld [hl], $c6                                  ; $5200: $36 $c6
    pop de                                        ; $5202: $d1
    ld b, d                                       ; $5203: $42
    ld [hl], $cc                                  ; $5204: $36 $cc
    db $d3                                        ; $5206: $d3
    and [hl]                                      ; $5207: $a6
    call $a3f9                                    ; $5208: $cd $f9 $a3
    push af                                       ; $520b: $f5
    ld l, l                                       ; $520c: $6d
    rst $38                                       ; $520d: $ff
    ld a, [$bf36]                                 ; $520e: $fa $36 $bf
    inc sp                                        ; $5211: $33
    sbc $1f                                       ; $5212: $de $1f
    dec sp                                        ; $5214: $3b
    ret nc                                        ; $5215: $d0

    ld [hl], l                                    ; $5216: $75
    push af                                       ; $5217: $f5
    ld l, c                                       ; $5218: $69
    db $ec                                        ; $5219: $ec
    or e                                          ; $521a: $b3
    ld a, [$9634]                                 ; $521b: $fa $34 $96
    rl e                                          ; $521e: $cb $13
    dec [hl]                                      ; $5220: $35
    push hl                                       ; $5221: $e5
    ld h, b                                       ; $5222: $60
    db $d3                                        ; $5223: $d3
    jp hl                                         ; $5224: $e9


    ld a, c                                       ; $5225: $79
    adc h                                         ; $5226: $8c
    jp hl                                         ; $5227: $e9


    ei                                            ; $5228: $fb
    inc bc                                        ; $5229: $03
    add a                                         ; $522a: $87
    ld e, a                                       ; $522b: $5f
    or [hl]                                       ; $522c: $b6
    ld d, [hl]                                    ; $522d: $56
    rrca                                          ; $522e: $0f
    db $e4                                        ; $522f: $e4
    db $dd                                        ; $5230: $dd
    inc b                                         ; $5231: $04
    daa                                           ; $5232: $27
    ld [$0b74], a                                 ; $5233: $ea $74 $0b
    call Call_000_1676                            ; $5236: $cd $76 $16
    ld h, l                                       ; $5239: $65
    or a                                          ; $523a: $b7
    ret nz                                        ; $523b: $c0

    db $e4                                        ; $523c: $e4
    sbc e                                         ; $523d: $9b
    adc b                                         ; $523e: $88
    xor [hl]                                      ; $523f: $ae
    jr z, @+$49                                   ; $5240: $28 $47

    db $eb                                        ; $5242: $eb
    adc a                                         ; $5243: $8f
    push de                                       ; $5244: $d5
    ret                                           ; $5245: $c9


    ld l, $0c                                     ; $5246: $2e $0c
    ld [hl], e                                    ; $5248: $73
    rst $30                                       ; $5249: $f7
    ld e, h                                       ; $524a: $5c
    db $e3                                        ; $524b: $e3
    ccf                                           ; $524c: $3f
    and d                                         ; $524d: $a2
    ld h, [hl]                                    ; $524e: $66
    rst $10                                       ; $524f: $d7
    dec d                                         ; $5250: $15
    sbc a                                         ; $5251: $9f
    or $3f                                        ; $5252: $f6 $3f
    ld a, h                                       ; $5254: $7c
    cp d                                          ; $5255: $ba

jr_069_5256:
    dec c                                         ; $5256: $0d
    xor e                                         ; $5257: $ab
    or a                                          ; $5258: $b7
    inc l                                         ; $5259: $2c
    jr z, jr_069_5256                             ; $525a: $28 $fa

    rra                                           ; $525c: $1f
    ld a, $3d                                     ; $525d: $3e $3d
    adc a                                         ; $525f: $8f
    ld sp, $777d                                  ; $5260: $31 $7d $77
    rst $00                                       ; $5263: $c7
    pop hl                                        ; $5264: $e1
    ret                                           ; $5265: $c9


    ld [hl], c                                    ; $5266: $71
    dec hl                                        ; $5267: $2b
    ld e, b                                       ; $5268: $58
    ld a, l                                       ; $5269: $7d
    dec de                                        ; $526a: $1b
    rst $08                                       ; $526b: $cf
    ld [bc], a                                    ; $526c: $02
    ld c, c                                       ; $526d: $49
    dec d                                         ; $526e: $15
    ld [hl], l                                    ; $526f: $75
    ld h, c                                       ; $5270: $61
    db $fc                                        ; $5271: $fc
    ld hl, $e5eb                                  ; $5272: $21 $eb $e5
    ld l, [hl]                                    ; $5275: $6e
    ld a, [$bb53]                                 ; $5276: $fa $53 $bb
    add d                                         ; $5279: $82
    ld c, c                                       ; $527a: $49
    inc l                                         ; $527b: $2c
    ld c, c                                       ; $527c: $49
    ld l, d                                       ; $527d: $6a
    rst $38                                       ; $527e: $ff
    jp Jump_000_15d9                              ; $527f: $c3 $d9 $15


    db $ed                                        ; $5282: $ed
    push bc                                       ; $5283: $c5
    inc h                                         ; $5284: $24
    rst $28                                       ; $5285: $ef
    rrca                                          ; $5286: $0f
    sub a                                         ; $5287: $97
    ld hl, $c3e6                                  ; $5288: $21 $e6 $c3
    ld sp, hl                                     ; $528b: $f9
    adc a                                         ; $528c: $8f
    db $f4                                        ; $528d: $f4
    add hl, de                                    ; $528e: $19
    sub e                                         ; $528f: $93
    or h                                          ; $5290: $b4
    adc l                                         ; $5291: $8d
    ld [de], a                                    ; $5292: $12
    and d                                         ; $5293: $a2
    ld l, [hl]                                    ; $5294: $6e
    and c                                         ; $5295: $a1
    reti                                          ; $5296: $d9


    adc $bb                                       ; $5297: $ce $bb
    add hl, bc                                    ; $5299: $09
    sbc d                                         ; $529a: $9a
    ld e, c                                       ; $529b: $59
    rst $28                                       ; $529c: $ef
    ld [hl-], a                                   ; $529d: $32
    ld b, $cd                                     ; $529e: $06 $cd
    db $ec                                        ; $52a0: $ec
    cp d                                          ; $52a1: $ba
    ld a, [$97b0]                                 ; $52a2: $fa $b0 $97
    ld e, $e5                                     ; $52a5: $1e $e5
    db $fd                                        ; $52a7: $fd
    ld bc, $3897                                  ; $52a8: $01 $97 $38
    ret z                                         ; $52ab: $c8

    ld e, $9e                                     ; $52ac: $1e $9e
    rst $10                                       ; $52ae: $d7
    xor $fb                                       ; $52af: $ee $fb
    cp [hl]                                       ; $52b1: $be
    res 4, h                                      ; $52b2: $cb $a4
    xor b                                         ; $52b4: $a8
    db $eb                                        ; $52b5: $eb
    or h                                          ; $52b6: $b4
    reti                                          ; $52b7: $d9


    db $dd                                        ; $52b8: $dd
    rra                                           ; $52b9: $1f
    rst $20                                       ; $52ba: $e7
    inc c                                         ; $52bb: $0c
    dec de                                        ; $52bc: $1b
    rst $20                                       ; $52bd: $e7
    ld h, l                                       ; $52be: $65
    adc b                                         ; $52bf: $88
    cp d                                          ; $52c0: $ba
    add l                                         ; $52c1: $85
    ld l, c                                       ; $52c2: $69
    ld a, e                                       ; $52c3: $7b
    pop hl                                        ; $52c4: $e1
    cp $00                                        ; $52c5: $fe $00
    add hl, bc                                    ; $52c7: $09
    sbc d                                         ; $52c8: $9a
    and c                                         ; $52c9: $a1
    ld d, l                                       ; $52ca: $55
    pop hl                                        ; $52cb: $e1
    ld [hl], h                                    ; $52cc: $74
    cp d                                          ; $52cd: $ba
    add l                                         ; $52ce: $85
    ld h, [hl]                                    ; $52cf: $66
    dec sp                                        ; $52d0: $3b
    sbc e                                         ; $52d1: $9b
    jr c, jr_069_530d                             ; $52d2: $38 $39

    jp $b28a                                      ; $52d4: $c3 $8a $b2


    ld e, e                                       ; $52d7: $5b
    ld h, b                                       ; $52d8: $60
    ld a, [c]                                     ; $52d9: $f2
    ld c, l                                       ; $52da: $4d
    ld b, h                                       ; $52db: $44
    rst $08                                       ; $52dc: $cf
    scf                                           ; $52dd: $37
    add $34                                       ; $52de: $c6 $34
    ld c, h                                       ; $52e0: $4c
    ld d, h                                       ; $52e1: $54
    ld l, $2e                                     ; $52e2: $2e $2e
    adc [hl]                                      ; $52e4: $8e
    ld [hl], $b0                                  ; $52e5: $36 $b0
    ret nc                                        ; $52e7: $d0

    ld a, a                                       ; $52e8: $7f
    ld d, $de                                     ; $52e9: $16 $de
    ld c, l                                       ; $52eb: $4d
    jr z, jr_069_5322                             ; $52ec: $28 $34

    rra                                           ; $52ee: $1f
    cp [hl]                                       ; $52ef: $be
    xor [hl]                                      ; $52f0: $ae
    db $d3                                        ; $52f1: $d3
    ld c, e                                       ; $52f2: $4b
    daa                                           ; $52f3: $27
    ld [hl-], a                                   ; $52f4: $32
    sbc $3d                                       ; $52f5: $de $3d
    and e                                         ; $52f7: $a3
    ld c, [hl]                                    ; $52f8: $4e
    or $47                                        ; $52f9: $f6 $47
    call z, Call_000_3674                         ; $52fb: $cc $74 $36
    rst $30                                       ; $52fe: $f7
    rlca                                          ; $52ff: $07
    rla                                           ; $5300: $17
    xor [hl]                                      ; $5301: $ae
    push de                                       ; $5302: $d5
    ldh [$d3], a                                  ; $5303: $e0 $d3
    sub $e4                                       ; $5305: $d6 $e4
    add sp, -$03                                  ; $5307: $e8 $fd
    ld bc, $cb97                                  ; $5309: $01 $97 $cb
    cp d                                          ; $530c: $ba

jr_069_530d:
    ld hl, sp-$02                                 ; $530d: $f8 $fe
    db $dd                                        ; $530f: $dd
    dec l                                         ; $5310: $2d
    cp [hl]                                       ; $5311: $be
    xor c                                         ; $5312: $a9
    ld [hl], a                                    ; $5313: $77
    ld e, [hl]                                    ; $5314: $5e
    cp l                                          ; $5315: $bd
    or b                                          ; $5316: $b0
    rla                                           ; $5317: $17
    and $f4                                       ; $5318: $e6 $f4
    xor [hl]                                      ; $531a: $ae
    sbc [hl]                                      ; $531b: $9e
    and $c3                                       ; $531c: $e6 $c3
    cp c                                          ; $531e: $b9
    and h                                         ; $531f: $a4
    sbc l                                         ; $5320: $9d
    ld h, h                                       ; $5321: $64

jr_069_5322:
    rst $38                                       ; $5322: $ff
    ld a, c                                       ; $5323: $79
    jp z, $b342                                   ; $5324: $ca $42 $b3

    ld sp, $b926                                  ; $5327: $31 $26 $b9
    jp hl                                         ; $532a: $e9


    inc bc                                        ; $532b: $03
    ld e, e                                       ; $532c: $5b
    ld l, c                                       ; $532d: $69
    add hl, de                                    ; $532e: $19
    add l                                         ; $532f: $85
    and $b5                                       ; $5330: $e6 $b5
    ld b, d                                       ; $5332: $42
    or e                                          ; $5333: $b3
    ld sp, $2926                                  ; $5334: $31 $26 $29
    ld de, $ea33                                  ; $5337: $11 $33 $ea
    or c                                          ; $533a: $b1
    or a                                          ; $533b: $b7
    inc h                                         ; $533c: $24
    add hl, de                                    ; $533d: $19
    inc sp                                        ; $533e: $33
    ld a, [bc]                                    ; $533f: $0a
    call $9c6c                                    ; $5340: $cd $6c $9c
    sub a                                         ; $5343: $97
    ld [hl], c                                    ; $5344: $71
    ld a, a                                       ; $5345: $7f
    db $db                                        ; $5346: $db
    add h                                         ; $5347: $84
    inc hl                                        ; $5348: $23
    ld l, d                                       ; $5349: $6a
    jp z, Jump_069_4971                           ; $534a: $ca $71 $49

    add hl, sp                                    ; $534d: $39
    ld e, b                                       ; $534e: $58
    rst $38                                       ; $534f: $ff
    ld a, c                                       ; $5350: $79
    jp z, $e532                                   ; $5351: $ca $32 $e5

    ld e, [hl]                                    ; $5354: $5e
    add hl, sp                                    ; $5355: $39
    push af                                       ; $5356: $f5
    rst $10                                       ; $5357: $d7
    db $dd                                        ; $5358: $dd
    rra                                           ; $5359: $1f
    ld [c], a                                     ; $535a: $e2
    push af                                       ; $535b: $f5
    ld l, $63                                     ; $535c: $2e $63
    ret nc                                        ; $535e: $d0

    call z, $c866                                 ; $535f: $cc $66 $c8
    ld c, d                                       ; $5362: $4a
    rst $30                                       ; $5363: $f7
    ld a, [c]                                     ; $5364: $f2
    ld l, b                                       ; $5365: $68
    dec d                                         ; $5366: $15
    ld l, c                                       ; $5367: $69
    ld b, e                                       ; $5368: $43
    jr @-$41                                      ; $5369: $18 $bd

    ccf                                           ; $536b: $3f
    add hl, bc                                    ; $536c: $09
    ld c, l                                       ; $536d: $4d
    add hl, sp                                    ; $536e: $39
    ld d, h                                       ; $536f: $54
    sbc a                                         ; $5370: $9f
    db $f4                                        ; $5371: $f4
    rst $10                                       ; $5372: $d7
    ld a, [c]                                     ; $5373: $f2
    ei                                            ; $5374: $fb
    and a                                         ; $5375: $a7
    add c                                         ; $5376: $81
    call $f58e                                    ; $5377: $cd $8e $f5
    ld l, c                                       ; $537a: $69
    add hl, de                                    ; $537b: $19
    and l                                         ; $537c: $a5
    nop                                           ; $537d: $00
    rla                                           ; $537e: $17
    ld l, b                                       ; $537f: $68
    ret nc                                        ; $5380: $d0

    or d                                          ; $5381: $b2
    sub d                                         ; $5382: $92
    ld sp, $b81f                                  ; $5383: $31 $1f $b8
    ld [hl], c                                    ; $5386: $71
    add hl, de                                    ; $5387: $19
    cp l                                          ; $5388: $bd
    ccf                                           ; $5389: $3f
    db $db                                        ; $538a: $db
    sub a                                         ; $538b: $97
    dec [hl]                                      ; $538c: $35
    ld d, c                                       ; $538d: $51
    or a                                          ; $538e: $b7
    jr nc, jr_069_53fe                            ; $538f: $30 $6d

    cpl                                           ; $5391: $2f
    call c, $db1f                                 ; $5392: $dc $1f $db
    sub a                                         ; $5395: $97
    dec [hl]                                      ; $5396: $35
    ld d, c                                       ; $5397: $51
    rst $08                                       ; $5398: $cf
    ld h, c                                       ; $5399: $61
    call nz, $cbdd                                ; $539a: $c4 $dd $cb
    cp b                                          ; $539d: $b8
    db $f4                                        ; $539e: $f4
    rra                                           ; $539f: $1f
    ld a, c                                       ; $53a0: $79
    jr c, @+$81                                   ; $53a1: $38 $7f

    ld a, d                                       ; $53a3: $7a
    ldh a, [rNR30]                                ; $53a4: $f0 $1a
    ld d, b                                       ; $53a6: $50
    rra                                           ; $53a7: $1f
    sub [hl]                                      ; $53a8: $96
    halt                                          ; $53a9: $76
    ld sp, $cad3                                  ; $53aa: $31 $d3 $ca
    sub h                                         ; $53ad: $94
    ld a, e                                       ; $53ae: $7b
    push hl                                       ; $53af: $e5
    db $f4                                        ; $53b0: $f4
    jp nc, $8c89                                  ; $53b1: $d2 $89 $8c

    and d                                         ; $53b4: $a2
    xor [hl]                                      ; $53b5: $ae
    sbc [hl]                                      ; $53b6: $9e
    ld h, [hl]                                    ; $53b7: $66
    sub h                                         ; $53b8: $94
    ld c, e                                       ; $53b9: $4b
    jp c, $f649                                   ; $53ba: $da $49 $f6

    sbc a                                         ; $53bd: $9f
    and a                                         ; $53be: $a7
    inc l                                         ; $53bf: $2c
    inc [hl]                                      ; $53c0: $34
    dec de                                        ; $53c1: $1b
    ld h, e                                       ; $53c2: $63
    sub d                                         ; $53c3: $92
    sbc e                                         ; $53c4: $9b
    ld a, $5b                                     ; $53c5: $3e $5b
    ld l, c                                       ; $53c7: $69
    add hl, de                                    ; $53c8: $19
    add l                                         ; $53c9: $85
    ld h, [hl]                                    ; $53ca: $66
    ld [hl], $ce                                  ; $53cb: $36 $ce
    sra b                                         ; $53cd: $cb $28
    inc [hl]                                      ; $53cf: $34
    xor a                                         ; $53d0: $af
    dec d                                         ; $53d1: $15
    sbc d                                         ; $53d2: $9a
    adc l                                         ; $53d3: $8d
    ld sp, $8949                                  ; $53d4: $31 $49 $89
    sbc b                                         ; $53d7: $98
    ld d, c                                       ; $53d8: $51
    adc a                                         ; $53d9: $8f
    cp l                                          ; $53da: $bd
    dec h                                         ; $53db: $25
    ret                                           ; $53dc: $c9


    sbc b                                         ; $53dd: $98
    ld [hl], c                                    ; $53de: $71
    ld a, a                                       ; $53df: $7f
    db $db                                        ; $53e0: $db
    ld c, $4f                                     ; $53e1: $0e $4f
    xor [hl]                                      ; $53e3: $ae
    dec [hl]                                      ; $53e4: $35
    db $ec                                        ; $53e5: $ec
    or c                                          ; $53e6: $b1
    ld a, d                                       ; $53e7: $7a
    add c                                         ; $53e8: $81
    jp c, Jump_069_6394                           ; $53e9: $da $94 $63

    call z, $b387                                 ; $53ec: $cc $87 $b3
    ld c, a                                       ; $53ef: $4f

jr_069_53f0:
    ld [hl], l                                    ; $53f0: $75
    ld b, h                                       ; $53f1: $44
    adc l                                         ; $53f2: $8d
    add a                                         ; $53f3: $87
    xor a                                         ; $53f4: $af
    db $db                                        ; $53f5: $db
    ld [hl], h                                    ; $53f6: $74
    rst $30                                       ; $53f7: $f7
    ld [hl-], a                                   ; $53f8: $32
    ret z                                         ; $53f9: $c8

    pop de                                        ; $53fa: $d1
    ld b, $f4                                     ; $53fb: $06 $f4
    ld e, c                                       ; $53fd: $59

jr_069_53fe:
    ld hl, $633d                                  ; $53fe: $21 $3d $63
    cp h                                          ; $5401: $bc
    cp e                                          ; $5402: $bb
    inc bc                                        ; $5403: $03
    ld e, l                                       ; $5404: $5d
    dec a                                         ; $5405: $3d
    add e                                         ; $5406: $83
    inc l                                         ; $5407: $2c
    sub a                                         ; $5408: $97
    or h                                          ; $5409: $b4
    sub e                                         ; $540a: $93
    db $ec                                        ; $540b: $ec
    ccf                                           ; $540c: $3f
    ld c, a                                       ; $540d: $4f
    ld e, c                                       ; $540e: $59
    ld l, b                                       ; $540f: $68
    ld [hl], $c6                                  ; $5410: $36 $c6
    inc h                                         ; $5412: $24
    dec hl                                        ; $5413: $2b
    ld sp, hl                                     ; $5414: $f9
    or h                                          ; $5415: $b4
    ld c, h                                       ; $5416: $4c
    cp c                                          ; $5417: $b9
    ld d, a                                       ; $5418: $57
    ld c, [hl]                                    ; $5419: $4e
    db $fd                                        ; $541a: $fd
    ld [hl], l                                    ; $541b: $75
    and d                                         ; $541c: $a2
    add [hl]                                      ; $541d: $86
    sub a                                         ; $541e: $97
    and [hl]                                      ; $541f: $a6
    call c, Call_069_7128                         ; $5420: $dc $28 $71
    ld a, a                                       ; $5423: $7f
    ld [c], a                                     ; $5424: $e2

jr_069_5425:
    ld e, d                                       ; $5425: $5a
    ld l, b                                       ; $5426: $68
    ld [hl], $2c                                  ; $5427: $36 $2c
    call nc, $86fa                                ; $5429: $d4 $fa $86
    ldh a, [rPCM12]                               ; $542c: $f0 $76
    ld b, c                                       ; $542e: $41
    halt                                          ; $542f: $76
    ld a, [de]                                    ; $5430: $1a
    ld b, a                                       ; $5431: $47
    ld [hl], l                                    ; $5432: $75
    ld a, [de]                                    ; $5433: $1a
    and b                                         ; $5434: $a0
    ld sp, hl                                     ; $5435: $f9
    push bc                                       ; $5436: $c5
    cp c                                          ; $5437: $b9
    ld a, e                                       ; $5438: $7b
    ld l, $56                                     ; $5439: $2e $56
    sub b                                         ; $543b: $90
    and e                                         ; $543c: $a3
    push hl                                       ; $543d: $e5
    adc a                                         ; $543e: $8f
    sub a                                         ; $543f: $97
    rst $10                                       ; $5440: $d7
    ld [hl], $2e                                  ; $5441: $36 $2e
    ld [hl], e                                    ; $5443: $73
    ld a, a                                       ; $5444: $7f
    ld [c], a                                     ; $5445: $e2
    add hl, hl                                    ; $5446: $29
    rst $30                                       ; $5447: $f7
    sub [hl]                                      ; $5448: $96
    ld l, c                                       ; $5449: $69
    jp z, $d4a1                                   ; $544a: $ca $a1 $d4

    ld b, d                                       ; $544d: $42
    or e                                          ; $544e: $b3
    ld h, c                                       ; $544f: $61
    and c                                         ; $5450: $a1
    sub $37                                       ; $5451: $d6 $37
    add h                                         ; $5453: $84
    or a                                          ; $5454: $b7
    dec bc                                        ; $5455: $0b
    or d                                          ; $5456: $b2
    ld de, $0ab2                                  ; $5457: $11 $b2 $0a
    jp hl                                         ; $545a: $e9


    dec de                                        ; $545b: $1b
    cp d                                          ; $545c: $ba
    xor [hl]                                      ; $545d: $ae
    ld e, h                                       ; $545e: $5c
    sub b                                         ; $545f: $90
    ld [hl], $dc                                  ; $5460: $36 $dc
    rra                                           ; $5462: $1f
    db $db                                        ; $5463: $db
    ldh [$67], a                                  ; $5464: $e0 $67
    rla                                           ; $5466: $17
    and a                                         ; $5467: $a7
    ld d, c                                       ; $5468: $51
    jr c, jr_069_53f0                             ; $5469: $38 $85

    and $b5                                       ; $546b: $e6 $b5
    ld c, d                                       ; $546d: $4a
    rst $30                                       ; $546e: $f7
    ld a, [c]                                     ; $546f: $f2
    call nc, Call_069_6f63                        ; $5470: $d4 $63 $6f
    ld c, c                                       ; $5473: $49
    ld [hl-], a                                   ; $5474: $32
    ld h, [hl]                                    ; $5475: $66
    inc [hl]                                      ; $5476: $34
    add hl, sp                                    ; $5477: $39
    ld [bc], a                                    ; $5478: $02
    jr nz, jr_069_5425                            ; $5479: $20 $aa

    and h                                         ; $547b: $a4

jr_069_547c:
    ld d, $9a                                     ; $547c: $16 $9a
    rst $10                                       ; $547e: $d7
    ld a, [hl+]                                   ; $547f: $2a
    ld sp, hl                                     ; $5480: $f9
    or h                                          ; $5481: $b4
    ld e, $7b                                     ; $5482: $1e $7b
    ld c, e                                       ; $5484: $4b
    sub d                                         ; $5485: $92
    ld sp, $61a3                                  ; $5486: $31 $a3 $61
    sbc d                                         ; $5489: $9a
    ld [hl], d                                    ; $548a: $72
    add sp, -$46                                  ; $548b: $e8 $ba
    cp $a3                                        ; $548d: $fe $a3
    reti                                          ; $548f: $d9


    ld c, c                                       ; $5490: $49
    call c, $db1f                                 ; $5491: $dc $1f $db
    add h                                         ; $5494: $84
    db $d3                                        ; $5495: $d3
    add b                                         ; $5496: $80
    dec d                                         ; $5497: $15
    db $e4                                        ; $5498: $e4
    ld l, b                                       ; $5499: $68
    add hl, hl                                    ; $549a: $29
    ret nz                                        ; $549b: $c0

    dec b                                         ; $549c: $05
    ld e, d                                       ; $549d: $5a
    sbc c                                         ; $549e: $99
    ld [hl], d                                    ; $549f: $72
    ld e, b                                       ; $54a0: $58
    and b                                         ; $54a1: $a0
    ld c, l                                       ; $54a2: $4d
    add hl, sp                                    ; $54a3: $39
    sub h                                         ; $54a4: $94
    ld e, d                                       ; $54a5: $5a
    ld l, b                                       ; $54a6: $68
    ld [hl], $2c                                  ; $54a7: $36 $2c
    call nc, $b786                                ; $54a9: $d4 $86 $b7
    dec bc                                        ; $54ac: $0b

Jump_069_54ad:
    or d                                          ; $54ad: $b2
    rst $38                                       ; $54ae: $ff
    call nz, $c880                                ; $54af: $c4 $80 $c8
    jr nc, jr_069_552e                            ; $54b2: $30 $7a

    ld a, a                                       ; $54b4: $7f
    rst $20                                       ; $54b5: $e7
    ld h, d                                       ; $54b6: $62
    dec b                                         ; $54b7: $05
    add hl, sp                                    ; $54b8: $39
    jp c, $d9df                                   ; $54b9: $da $df $d9

    adc d                                         ; $54bc: $8a
    or [hl]                                       ; $54bd: $b6
    ld sp, $768e                                  ; $54be: $31 $8e $76
    rst $38                                       ; $54c1: $ff
    xor [hl]                                      ; $54c2: $ae
    ld h, $66                                     ; $54c3: $26 $66
    ld b, $34                                     ; $54c5: $06 $34
    ld d, b                                       ; $54c7: $50
    dec bc                                        ; $54c8: $0b
    call $8586                                    ; $54c9: $cd $86 $85
    ld a, d                                       ; $54cc: $7a
    ld a, a                                       ; $54cd: $7f
    ld [c], a                                     ; $54ce: $e2
    push af                                       ; $54cf: $f5
    ld l, $63                                     ; $54d0: $2e $63
    ret nc                                        ; $54d2: $d0

    call z, $abae                                 ; $54d3: $cc $ae $ab
    sub e                                         ; $54d6: $93
    ld e, l                                       ; $54d7: $5d
    and $e7                                       ; $54d8: $e6 $e7
    ld d, d                                       ; $54da: $52
    ld sp, hl                                     ; $54db: $f9
    inc [hl]                                      ; $54dc: $34
    jp $e8de                                      ; $54dd: $c3 $de $e8


    call c, Call_069_5b1f                         ; $54e0: $dc $1f $5b
    sbc b                                         ; $54e3: $98
    or [hl]                                       ; $54e4: $b6
    rla                                           ; $54e5: $17
    ld b, h                                       ; $54e6: $44
    sbc l                                         ; $54e7: $9d
    dec h                                         ; $54e8: $25
    ld c, c                                       ; $54e9: $49
    ld d, c                                       ; $54ea: $51
    cp l                                          ; $54eb: $bd
    call c, Call_069_7f4d                         ; $54ec: $dc $4d $7f
    ld l, d                                       ; $54ef: $6a
    ld d, a                                       ; $54f0: $57
    jr nc, jr_069_547c                            ; $54f1: $30 $89

    dec h                                         ; $54f3: $25
    ld c, c                                       ; $54f4: $49
    db $dd                                        ; $54f5: $dd
    ret nc                                        ; $54f6: $d0

    db $ed                                        ; $54f7: $ed
    jp c, $d971                                   ; $54f8: $da $71 $d9

    ld b, [hl]                                    ; $54fb: $46
    dec bc                                        ; $54fc: $0b
    call $29c2                                    ; $54fd: $cd $c2 $29
    ld h, h                                       ; $5500: $64
    jp hl                                         ; $5501: $e9


    dec sp                                        ; $5502: $3b
    dec de                                        ; $5503: $1b
    cp l                                          ; $5504: $bd
    ccf                                           ; $5505: $3f

Jump_069_5506:
    add hl, bc                                    ; $5506: $09
    ld [$20c3], a                                 ; $5507: $ea $c3 $20
    res 2, h                                      ; $550a: $cb $94
    ld a, e                                       ; $550c: $7b
    rst $30                                       ; $550d: $f7
    rlca                                          ; $550e: $07
    add hl, bc                                    ; $550f: $09
    ld [$a6c3], a                                 ; $5510: $ea $c3 $a6
    add hl, hl                                    ; $5513: $29
    add a                                         ; $5514: $87
    add $17                                       ; $5515: $c6 $17
    db $d3                                        ; $5517: $d3
    ld l, [hl]                                    ; $5518: $6e
    sbc l                                         ; $5519: $9d
    inc l                                         ; $551a: $2c
    inc [hl]                                      ; $551b: $34
    ld b, e                                       ; $551c: $43
    nop                                           ; $551d: $00
    db $eb                                        ; $551e: $eb
    add l                                         ; $551f: $85
    cp l                                          ; $5520: $bd
    jr nc, jr_069_553e                            ; $5521: $30 $1b

    ld a, $09                                     ; $5523: $3e $09
    add d                                         ; $5525: $82
    ld a, a                                       ; $5526: $7f
    ld hl, sp+$79                                 ; $5527: $f8 $79
    sbc d                                         ; $5529: $9a
    cp c                                          ; $552a: $b9
    xor h                                         ; $552b: $ac
    or b                                          ; $552c: $b0
    xor e                                         ; $552d: $ab

jr_069_552e:
    db $d3                                        ; $552e: $d3
    ld [hl], e                                    ; $552f: $73
    adc l                                         ; $5530: $8d
    rst $38                                       ; $5531: $ff
    call c, $fdf7                                 ; $5532: $dc $f7 $fd
    ld bc, $9bdb                                  ; $5535: $01 $db $9b
    ld [hl], d                                    ; $5538: $72
    jr z, @+$01                                   ; $5539: $28 $ff

    adc c                                         ; $553b: $89
    add hl, de                                    ; $553c: $19
    ccf                                           ; $553d: $3f

jr_069_553e:
    call c, Call_000_0fa6                         ; $553e: $dc $a6 $0f
    db $db                                        ; $5541: $db
    ld a, e                                       ; $5542: $7b
    xor [hl]                                      ; $5543: $ae
    pop af                                        ; $5544: $f1
    sbc a                                         ; $5545: $9f
    ld [hl-], a                                   ; $5546: $32
    ld c, l                                       ; $5547: $4d
    or e                                          ; $5548: $b3
    ld [hl], c                                    ; $5549: $71
    dec de                                        ; $554a: $1b
    dec h                                         ; $554b: $25
    ld [$358f], a                                 ; $554c: $ea $8f $35
    db $db                                        ; $554f: $db
    sbc d                                         ; $5550: $9a
    ld [hl], $b2                                  ; $5551: $36 $b2
    ld e, $7b                                     ; $5553: $1e $7b
    pop af                                        ; $5555: $f1
    ld h, a                                       ; $5556: $67
    ret nz                                        ; $5557: $c0

    inc sp                                        ; $5558: $33
    ld d, $f7                                     ; $5559: $16 $f7
    ld a, l                                       ; $555b: $7d
    rst $10                                       ; $555c: $d7
    inc bc                                        ; $555d: $03
    add hl, hl                                    ; $555e: $29
    ld a, [hl+]                                   ; $555f: $2a
    ld e, h                                       ; $5560: $5c
    ld de, $e1b3                                  ; $5561: $11 $b3 $e1
    dec d                                         ; $5564: $15
    or d                                          ; $5565: $b2
    cp $01                                        ; $5566: $fe $01
    pop af                                        ; $5568: $f1
    db $fd                                        ; $5569: $fd
    ld [hl], e                                    ; $556a: $73
    ld a, a                                       ; $556b: $7f
    ld d, a                                       ; $556c: $57
    ld d, b                                       ; $556d: $50
    adc [hl]                                      ; $556e: $8e
    ld [hl], $db                                  ; $556f: $36 $db
    db $fc                                        ; $5571: $fc
    or h                                          ; $5572: $b4
    adc [hl]                                      ; $5573: $8e
    ld [hl], $6d                                  ; $5574: $36 $6d
    adc $1f                                       ; $5576: $ce $1f
    cp l                                          ; $5578: $bd
    cp e                                          ; $5579: $bb
    dec c                                         ; $557a: $0d
    xor e                                         ; $557b: $ab
    or a                                          ; $557c: $b7
    inc l                                         ; $557d: $2c
    jr z, @-$44                                   ; $557e: $28 $ba

    dec b                                         ; $5580: $05
    ld h, $df                                     ; $5581: $26 $df
    ld b, h                                       ; $5583: $44
    adc b                                         ; $5584: $88
    cp d                                          ; $5585: $ba
    ld b, d                                       ; $5586: $42
    ld c, h                                       ; $5587: $4c
    ld d, d                                       ; $5588: $52
    or $1f                                        ; $5589: $f6 $1f
    ld sp, hl                                     ; $558b: $f9
    jp nc, Jump_069_7773                          ; $558c: $d2 $73 $77

    dec bc                                        ; $558f: $0b
    call $8a76                                    ; $5590: $cd $76 $8a
    cp d                                          ; $5593: $ba
    ld [c], a                                     ; $5594: $e2
    db $d3                                        ; $5595: $d3
    cp $87                                        ; $5596: $fe $87
    ld c, a                                       ; $5598: $4f
    rst $08                                       ; $5599: $cf
    dec [hl]                                      ; $559a: $35
    cp $53                                        ; $559b: $fe $53
    ld [hl], h                                    ; $559d: $74
    ld a, d                                       ; $559e: $7a
    ld e, $63                                     ; $559f: $1e $63
    ld a, [$826e]                                 ; $55a1: $fa $6e $82
    ld h, [hl]                                    ; $55a4: $66
    db $f4                                        ; $55a5: $f4
    add l                                         ; $55a6: $85
    scf                                           ; $55a7: $37
    sbc c                                         ; $55a8: $99
    ld h, l                                       ; $55a9: $65
    di                                            ; $55aa: $f3
    ld l, e                                       ; $55ab: $6b
    inc d                                         ; $55ac: $14
    ld c, [hl]                                    ; $55ad: $4e
    inc sp                                        ; $55ae: $33
    ld c, d                                       ; $55af: $4a
    ld d, l                                       ; $55b0: $55
    and a                                         ; $55b1: $a7
    sbc c                                         ; $55b2: $99
    rst $30                                       ; $55b3: $f7
    rlca                                          ; $55b4: $07
    db $db                                        ; $55b5: $db
    sub a                                         ; $55b6: $97
    inc h                                         ; $55b7: $24
    scf                                           ; $55b8: $37
    db $f4                                        ; $55b9: $f4
    ld e, h                                       ; $55ba: $5c
    xor h                                         ; $55bb: $ac
    ld d, b                                       ; $55bc: $50
    add l                                         ; $55bd: $85
    ld [hl], l                                    ; $55be: $75
    ld [$fbe2], a                                 ; $55bf: $ea $e2 $fb
    ld [hl], a                                    ; $55c2: $77
    or a                                          ; $55c3: $b7
    ld hl, sp-$1a                                 ; $55c4: $f8 $e6
    ld l, [hl]                                    ; $55c6: $6e
    add d                                         ; $55c7: $82
    and $b5                                       ; $55c8: $e6 $b5
    jp z, Jump_000_3cb1                           ; $55ca: $ca $b1 $3c

    dec de                                        ; $55cd: $1b
    ld a, $e2                                     ; $55ce: $3e $e2
    ld h, h                                       ; $55d0: $64
    ld a, [hl-]                                   ; $55d1: $3a
    sbc l                                         ; $55d2: $9d
    ld c, [hl]                                    ; $55d3: $4e
    ld h, $93                                     ; $55d4: $26 $93
    ret                                           ; $55d6: $c9


    dec c                                         ; $55d7: $0d
    rra                                           ; $55d8: $1f
    ld [c], a                                     ; $55d9: $e2
    rst $28                                       ; $55da: $ef
    cp [hl]                                       ; $55db: $be
    rst $28                                       ; $55dc: $ef
    and [hl]                                      ; $55dd: $a6
    inc e                                         ; $55de: $1c
    ld a, [de]                                    ; $55df: $1a
    add $ee                                       ; $55e0: $c6 $ee
    ei                                            ; $55e2: $fb
    ld l, [hl]                                    ; $55e3: $6e
    ld h, h                                       ; $55e4: $64
    push hl                                       ; $55e5: $e5
    adc e                                         ; $55e6: $8b
    ld c, c                                       ; $55e7: $49
    or $a7                                        ; $55e8: $f6 $a7
    rlca                                          ; $55ea: $07
    db $eb                                        ; $55eb: $eb
    ld a, c                                       ; $55ec: $79
    rst $18                                       ; $55ed: $df
    rst $30                                       ; $55ee: $f7
    rlca                                          ; $55ef: $07
    db $db                                        ; $55f0: $db
    sbc e                                         ; $55f1: $9b
    ld [hl], d                                    ; $55f2: $72
    jr z, @+$01                                   ; $55f3: $28 $ff

    adc c                                         ; $55f5: $89
    add hl, de                                    ; $55f6: $19
    ccf                                           ; $55f7: $3f
    call c, Call_000_0fa6                         ; $55f8: $dc $a6 $0f
    rla                                           ; $55fb: $17
    xor [hl]                                      ; $55fc: $ae
    ld d, l                                       ; $55fd: $55
    ld d, c                                       ; $55fe: $51
    rst $28                                       ; $55ff: $ef
    cp h                                          ; $5600: $bc
    ld b, d                                       ; $5601: $42
    ld a, d                                       ; $5602: $7a
    add $78                                       ; $5603: $c6 $78
    ld [hl], a                                    ; $5605: $77
    ld [hl], e                                    ; $5606: $73
    sub d                                         ; $5607: $92
    ld [hl], d                                    ; $5608: $72
    ld [hl], $4a                                  ; $5609: $36 $4a
    db $f4                                        ; $560b: $f4
    cp h                                          ; $560c: $bc
    ld h, a                                       ; $560d: $67
    adc b                                         ; $560e: $88
    cp e                                          ; $560f: $bb
    ld [hl], b                                    ; $5610: $70
    rst $30                                       ; $5611: $f7
    ld [hl-], a                                   ; $5612: $32
    ret z                                         ; $5613: $c8

    pop de                                        ; $5614: $d1
    ld b, $f4                                     ; $5615: $06 $f4
    ld e, c                                       ; $5617: $59
    inc sp                                        ; $5618: $33
    xor h                                         ; $5619: $ac
    rst $38                                       ; $561a: $ff
    ret z                                         ; $561b: $c8

    ld c, [hl]                                    ; $561c: $4e
    or a                                          ; $561d: $b7
    jr nc, jr_069_568d                            ; $561e: $30 $6d

    cpl                                           ; $5620: $2f
    call c, Call_000_091f                         ; $5621: $dc $1f $09
    ld [$78c3], a                                 ; $5624: $ea $c3 $78
    rst $18                                       ; $5627: $df
    ld [hl], a                                    ; $5628: $77
    sub l                                         ; $5629: $95
    ld e, $68                                     ; $562a: $1e $68
    and a                                         ; $562c: $a7
    add hl, hl                                    ; $562d: $29
    add a                                         ; $562e: $87
    ld [hl-], a                                   ; $562f: $32
    ld b, $96                                     ; $5630: $06 $96
    sub l                                         ; $5632: $95
    call z, $8eb4                                 ; $5633: $cc $b4 $8e
    sub $c5                                       ; $5636: $d6 $c5
    rst $30                                       ; $5638: $f7
    rst $28                                       ; $5639: $ef
    ld l, [hl]                                    ; $563a: $6e
    pop af                                        ; $563b: $f1
    adc l                                         ; $563c: $8d
    ld l, [hl]                                    ; $563d: $6e
    ld a, [$9700]                                 ; $563e: $fa $00 $97
    res 4, [hl]                                   ; $5641: $cb $a6
    inc e                                         ; $5643: $1c
    sbc d                                         ; $5644: $9a
    ld [hl], d                                    ; $5645: $72
    or b                                          ; $5646: $b0
    ld c, [hl]                                    ; $5647: $4e
    sub l                                         ; $5648: $95
    ld sp, $d0ed                                  ; $5649: $31 $ed $d0
    add b                                         ; $564c: $80
    dec b                                         ; $564d: $05
    ld a, d                                       ; $564e: $7a
    ld [hl], a                                    ; $564f: $77
    rlca                                          ; $5650: $07
    ld a, [hl-]                                   ; $5651: $3a
    push af                                       ; $5652: $f5
    ret nz                                        ; $5653: $c0

    inc bc                                        ; $5654: $03
    inc de                                        ; $5655: $13
    ld d, l                                       ; $5656: $55
    ld [hl-], a                                   ; $5657: $32
    and $75                                       ; $5658: $e6 $75
    ld [hl], d                                    ; $565a: $72
    and e                                         ; $565b: $a3
    and d                                         ; $565c: $a2
    xor e                                         ; $565d: $ab
    or a                                          ; $565e: $b7
    ld a, [de]                                    ; $565f: $1a
    ld d, c                                       ; $5660: $51
    ld hl, $633d                                  ; $5661: $21 $3d $63
    inc l                                         ; $5664: $2c
    dec h                                         ; $5665: $25
    sub a                                         ; $5666: $97
    ldh a, [$d6]                                  ; $5667: $f0 $d6
    rrca                                          ; $5669: $0f
    jp $a7d4                                      ; $566a: $c3 $d4 $a7


    or c                                          ; $566d: $b1
    ld a, c                                       ; $566e: $79
    ld [bc], a                                    ; $566f: $02
    sla d                                         ; $5670: $cb $22
    jp Jump_000_0be2                              ; $5672: $c3 $e2 $0b


    inc c                                         ; $5675: $0c
    cp b                                          ; $5676: $b8
    cp e                                          ; $5677: $bb
    sub l                                         ; $5678: $95
    ld e, d                                       ; $5679: $5a
    inc l                                         ; $567a: $2c
    xor b                                         ; $567b: $a8
    adc a                                         ; $567c: $8f
    xor b                                         ; $567d: $a8
    ld l, h                                       ; $567e: $6c
    jp z, $90a1                                   ; $567f: $ca $a1 $90

    push af                                       ; $5682: $f5
    jr @+$58                                      ; $5683: $18 $56

    xor b                                         ; $5685: $a8
    rlca                                          ; $5686: $07
    ld e, $d8                                     ; $5687: $1e $d8
    ld e, d                                       ; $5689: $5a
    cp c                                          ; $568a: $b9
    and h                                         ; $568b: $a4
    and a                                         ; $568c: $a7

jr_069_568d:
    add hl, hl                                    ; $568d: $29
    add a                                         ; $568e: $87
    ld l, $49                                     ; $568f: $2e $49
    inc [hl]                                      ; $5691: $34
    ret nc                                        ; $5692: $d0

    sub $ca                                       ; $5693: $d6 $ca
    xor [hl]                                      ; $5695: $ae
    ld e, [hl]                                    ; $5696: $5e
    ld h, b                                       ; $5697: $60
    sub c                                         ; $5698: $91
    ld h, c                                       ; $5699: $61
    sub c                                         ; $569a: $91
    rst $30                                       ; $569b: $f7
    rlca                                          ; $569c: $07
    sbc e                                         ; $569d: $9b
    rla                                           ; $569e: $17
    jp c, $e86c                                   ; $569f: $da $6c $e8

    or $26                                        ; $56a2: $f6 $26
    inc l                                         ; $56a4: $2c
    ld c, a                                       ; $56a5: $4f
    ldh a, [$b3]                                  ; $56a6: $f0 $b3
    ld b, $f6                                     ; $56a8: $06 $f6
    adc d                                         ; $56aa: $8a
    rla                                           ; $56ab: $17
    ret c                                         ; $56ac: $d8

    ret nz                                        ; $56ad: $c0

    ld h, $22                                     ; $56ae: $26 $22
    jr jr_069_572d                                ; $56b0: $18 $7b

    sbc $5b                                       ; $56b2: $de $5b
    ld b, [hl]                                    ; $56b4: $46
    rst $00                                       ; $56b5: $c7
    bit 4, l                                      ; $56b6: $cb $65
    ld b, e                                       ; $56b8: $43
    or a                                          ; $56b9: $b7
    ld d, d                                       ; $56ba: $52
    sbc e                                         ; $56bb: $9b
    ld [hl], d                                    ; $56bc: $72
    sub b                                         ; $56bd: $90
    add l                                         ; $56be: $85
    ld h, [hl]                                    ; $56bf: $66
    jp c, $b363                                   ; $56c0: $da $63 $b3

    ld [hl], b                                    ; $56c3: $70
    ld a, [de]                                    ; $56c4: $1a
    and b                                         ; $56c5: $a0
    ld d, b                                       ; $56c6: $50
    rra                                           ; $56c7: $1f
    add $30                                       ; $56c8: $c6 $30
    sbc e                                         ; $56ca: $9b
    ld a, $e2                                     ; $56cb: $3e $e2
    sub l                                         ; $56cd: $95
    ld d, b                                       ; $56ce: $50
    ret                                           ; $56cf: $c9


    ld a, [$1d50]                                 ; $56d0: $fa $50 $1d
    ld [hl], $e5                                  ; $56d3: $36 $e5
    ret nc                                        ; $56d5: $d0

    pop de                                        ; $56d6: $d1
    ld l, [hl]                                    ; $56d7: $6e
    ld b, [hl]                                    ; $56d8: $46
    call z, Call_000_3674                         ; $56d9: $cc $74 $36
    ld e, d                                       ; $56dc: $5a
    cp $86                                        ; $56dd: $fe $86
    ldh a, [$32]                                  ; $56df: $f0 $32
    ld h, l                                       ; $56e1: $65
    ld d, e                                       ; $56e2: $53
    ld c, $a5                                     ; $56e3: $0e $a5
    ld d, $9a                                     ; $56e5: $16 $9a
    dec c                                         ; $56e7: $0d
    dec bc                                        ; $56e8: $0b
    or l                                          ; $56e9: $b5
    pop hl                                        ; $56ea: $e1
    xor c                                         ; $56eb: $a9
    jp nz, $9b28                                  ; $56ec: $c2 $28 $9b

    ld [hl], d                                    ; $56ef: $72
    ld l, b                                       ; $56f0: $68
    ld b, [hl]                                    ; $56f1: $46
    ld d, a                                       ; $56f2: $57
    ld a, h                                       ; $56f3: $7c
    sub l                                         ; $56f4: $95
    call z, $bbb4                                 ; $56f5: $cc $b4 $bb
    ld [c], a                                     ; $56f8: $e2
    sub l                                         ; $56f9: $95
    ld d, b                                       ; $56fa: $50
    ret                                           ; $56fb: $c9


    ld a, [$1d50]                                 ; $56fc: $fa $50 $1d
    ld [hl], $e5                                  ; $56ff: $36 $e5
    ld d, b                                       ; $5701: $50
    ld b, l                                       ; $5702: $45
    sbc c                                         ; $5703: $99
    and [hl]                                      ; $5704: $a6
    reti                                          ; $5705: $d9


    cp b                                          ; $5706: $b8
    xor $df                                       ; $5707: $ee $df
    push de                                       ; $5709: $d5
    dec bc                                        ; $570a: $0b
    ld l, h                                       ; $570b: $6c
    ld [hl], b                                    ; $570c: $70
    add $98                                       ; $570d: $c6 $98
    pop de                                        ; $570f: $d1
    call z, $a798                                 ; $5710: $cc $98 $a7
    add hl, de                                    ; $5713: $19
    jp nc, $511f                                  ; $5714: $d2 $1f $51

    and c                                         ; $5717: $a1
    ld a, $8c                                     ; $5718: $3e $8c
    ld sp, $a74c                                  ; $571a: $31 $4c $a7
    add [hl]                                      ; $571d: $86
    or h                                          ; $571e: $b4
    ld b, c                                       ; $571f: $41
    ld [hl], l                                    ; $5720: $75
    jp z, Jump_000_3fa9                           ; $5721: $ca $a9 $3f

    ld bc, $7f76                                  ; $5724: $01 $76 $7f
    ld d, a                                       ; $5727: $57
    call z, $2012                                 ; $5728: $cc $12 $20
    rst $00                                       ; $572b: $c7
    ld a, [c]                                     ; $572c: $f2

jr_069_572d:
    add [hl]                                      ; $572d: $86
    rrca                                          ; $572e: $0f
    ld e, e                                       ; $572f: $5b
    ld l, b                                       ; $5730: $68
    or [hl]                                       ; $5731: $b6
    ld [hl], e                                    ; $5732: $73
    ld b, e                                       ; $5733: $43
    inc de                                        ; $5734: $13
    inc [hl]                                      ; $5735: $34
    xor a                                         ; $5736: $af
    ld l, c                                       ; $5737: $69
    dec a                                         ; $5738: $3d
    sub b                                         ; $5739: $90
    sbc e                                         ; $573a: $9b
    ld a, $3b                                     ; $573b: $3e $3b
    sbc [hl]                                      ; $573d: $9e
    cp h                                          ; $573e: $bc
    cp e                                          ; $573f: $bb
    sub l                                         ; $5740: $95
    jp c, $8ba9                                   ; $5741: $da $a9 $8b

    rst $28                                       ; $5744: $ef
    rst $18                                       ; $5745: $df
    db $dd                                        ; $5746: $dd
    ld [c], a                                     ; $5747: $e2
    sbc e                                         ; $5748: $9b
    ld b, d                                       ; $5749: $42
    di                                            ; $574a: $f3
    ld e, d                                       ; $574b: $5a
    cp c                                          ; $574c: $b9
    cp h                                          ; $574d: $bc
    jp z, Jump_000_3cb1                           ; $574e: $ca $b1 $3c

    rst $30                                       ; $5751: $f7
    rlca                                          ; $5752: $07
    ld [c], a                                     ; $5753: $e2
    jp hl                                         ; $5754: $e9


    ld sp, $2336                                  ; $5755: $31 $36 $23
    ld h, $a7                                     ; $5758: $26 $a7
    ld bc, $267d                                  ; $575a: $01 $7d $26
    ld [$9a16], a                                 ; $575d: $ea $16 $9a
    db $ed                                        ; $5760: $ed
    cp h                                          ; $5761: $bc
    sbc e                                         ; $5762: $9b
    and b                                         ; $5763: $a0
    ld a, c                                       ; $5764: $79
    ld c, l                                       ; $5765: $4d
    sra d                                         ; $5766: $cb $2a
    sub a                                         ; $5768: $97
    push de                                       ; $5769: $d5
    call c, $a84d                                 ; $576a: $dc $4d $a8
    pop hl                                        ; $576d: $e1
    rra                                           ; $576e: $1f
    dec bc                                        ; $576f: $0b
    inc d                                         ; $5770: $14
    push de                                       ; $5771: $d5
    rra                                           ; $5772: $1f
    db $eb                                        ; $5773: $eb
    ld a, [bc]                                    ; $5774: $0a
    cp e                                          ; $5775: $bb
    and b                                         ; $5776: $a0
    and l                                         ; $5777: $a5
    ld d, $9a                                     ; $5778: $16 $9a
    dec c                                         ; $577a: $0d
    dec bc                                        ; $577b: $0b
    or l                                          ; $577c: $b5
    adc b                                         ; $577d: $88
    ld l, c                                       ; $577e: $69
    ld b, [hl]                                    ; $577f: $46
    jp z, $8a8d                                   ; $5780: $ca $8d $8a

    ei                                            ; $5783: $fb
    inc bc                                        ; $5784: $03
    ld d, a                                       ; $5785: $57
    ld d, b                                       ; $5786: $50
    adc [hl]                                      ; $5787: $8e
    sub $a7                                       ; $5788: $d6 $a7
    or c                                          ; $578a: $b1
    ccf                                           ; $578b: $3f
    sub l                                         ; $578c: $95
    ld h, l                                       ; $578d: $65
    ld a, d                                       ; $578e: $7a
    adc h                                         ; $578f: $8c
    ld [hl], a                                    ; $5790: $77
    push bc                                       ; $5791: $c5
    db $fd                                        ; $5792: $fd
    pop de                                        ; $5793: $d1
    inc a                                         ; $5794: $3c
    ld c, l                                       ; $5795: $4d
    add hl, sp                                    ; $5796: $39
    ld [hl], h                                    ; $5797: $74
    or h                                          ; $5798: $b4
    db $e3                                        ; $5799: $e3
    or d                                          ; $579a: $b2
    adc l                                         ; $579b: $8d
    ld d, [hl]                                    ; $579c: $56
    ret nz                                        ; $579d: $c0

    ld e, d                                       ; $579e: $5a
    sub a                                         ; $579f: $97
    or l                                          ; $57a0: $b5
    ld b, d                                       ; $57a1: $42
    or e                                          ; $57a2: $b3
    ld [hl], b                                    ; $57a3: $70
    xor $0f                                       ; $57a4: $ee $0f
    ld [c], a                                     ; $57a6: $e2
    cpl                                           ; $57a7: $2f
    ld b, $d6                                     ; $57a8: $06 $d6
    inc bc                                        ; $57aa: $03
    reti                                          ; $57ab: $d9


    sub h                                         ; $57ac: $94
    ld b, e                                       ; $57ad: $43
    and a                                         ; $57ae: $a7
    ld e, e                                       ; $57af: $5b
    sbc b                                         ; $57b0: $98
    or [hl]                                       ; $57b1: $b6
    rla                                           ; $57b2: $17
    sbc d                                         ; $57b3: $9a
    ld d, c                                       ; $57b4: $51
    call nz, $627f                                ; $57b5: $c4 $7f $62
    or [hl]                                       ; $57b8: $b6
    ld [hl], c                                    ; $57b9: $71
    adc l                                         ; $57ba: $8d
    xor h                                         ; $57bb: $ac
    ld [hl], a                                    ; $57bc: $77
    add hl, de                                    ; $57bd: $19
    add e                                         ; $57be: $83
    ld h, [hl]                                    ; $57bf: $66
    sbc $15                                       ; $57c0: $de $15
    ld c, a                                       ; $57c2: $4f
    adc a                                         ; $57c3: $8f
    or c                                          ; $57c4: $b1
    ld d, e                                       ; $57c5: $53
    adc c                                         ; $57c6: $89
    dec h                                         ; $57c7: $25
    add hl, sp                                    ; $57c8: $39
    ld d, [hl]                                    ; $57c9: $56
    sub $cb                                       ; $57ca: $d6 $cb
    ld e, l                                       ; $57cc: $5d
    or b                                          ; $57cd: $b0
    xor [hl]                                      ; $57ce: $ae
    xor e                                         ; $57cf: $ab
    ld hl, $506d                                  ; $57d0: $21 $6d $50
    and l                                         ; $57d3: $a5
    sub l                                         ; $57d4: $95
    dec a                                         ; $57d5: $3d
    rst $18                                       ; $57d6: $df
    halt                                          ; $57d7: $76
    ld a, d                                       ; $57d8: $7a
    cp l                                          ; $57d9: $bd
    cpl                                           ; $57da: $2f
    add [hl]                                      ; $57db: $86
    or c                                          ; $57dc: $b1
    ei                                            ; $57dd: $fb
    inc bc                                        ; $57de: $03
    rla                                           ; $57df: $17
    xor [hl]                                      ; $57e0: $ae
    push af                                       ; $57e1: $f5
    ld c, c                                       ; $57e2: $49
    add h                                         ; $57e3: $84
    rst $00                                       ; $57e4: $c7
    ld c, h                                       ; $57e5: $4c
    adc c                                         ; $57e6: $89
    sbc b                                         ; $57e7: $98
    ld d, c                                       ; $57e8: $51
    sbc a                                         ; $57e9: $9f
    add $b2                                       ; $57ea: $c6 $b2
    ccf                                           ; $57ec: $3f
    dec h                                         ; $57ed: $25
    ld b, l                                       ; $57ee: $45
    ld c, l                                       ; $57ef: $4d
    sbc h                                         ; $57f0: $9c
    sbc h                                         ; $57f1: $9c
    ld h, c                                       ; $57f2: $61
    rst $30                                       ; $57f3: $f7
    rlca                                          ; $57f4: $07
    db $db                                        ; $57f5: $db
    ei                                            ; $57f6: $fb
    ld d, e                                       ; $57f7: $53
    di                                            ; $57f8: $f3
    ld c, e                                       ; $57f9: $4b
    ld c, a                                       ; $57fa: $4f
    and c                                         ; $57fb: $a1
    ld a, c                                       ; $57fc: $79
    xor l                                         ; $57fd: $ad
    rst $38                                       ; $57fe: $ff
    call nz, Call_069_717f                        ; $57ff: $c4 $7f $71
    cp e                                          ; $5802: $bb
    add l                                         ; $5803: $85
    ld de, $0b75                                  ; $5804: $11 $75 $0b
    call $de76                                    ; $5807: $cd $76 $de
    cp l                                          ; $580a: $bd
    add d                                         ; $580b: $82
    xor a                                         ; $580c: $af
    pop hl                                        ; $580d: $e1
    add hl, de                                    ; $580e: $19
    cp $4c                                        ; $580f: $fe $4c
    adc c                                         ; $5811: $89
    sbc b                                         ; $5812: $98
    ld d, c                                       ; $5813: $51
    sbc a                                         ; $5814: $9f
    add $9e                                       ; $5815: $c6 $9e
    ld l, a                                       ; $5817: $6f
    dec sp                                        ; $5818: $3b
    cp l                                          ; $5819: $bd
    sbc $17                                       ; $581a: $de $17
    jp $fdd8                                      ; $581c: $c3 $d8 $fd


    ld bc, $cde7                                  ; $581f: $01 $e7 $cd
    rst $38                                       ; $5822: $ff
    ld h, d                                       ; $5823: $62
    ld [hl], d                                    ; $5824: $72
    ld a, [de]                                    ; $5825: $1a
    ld d, b                                       ; $5826: $50
    ld a, a                                       ; $5827: $7f
    db $ec                                        ; $5828: $ec
    sbc a                                         ; $5829: $9f
    ei                                            ; $582a: $fb
    inc bc                                        ; $582b: $03
    ld e, e                                       ; $582c: $5b
    ld l, b                                       ; $582d: $68
    or [hl]                                       ; $582e: $b6
    ld [hl], e                                    ; $582f: $73
    ld b, e                                       ; $5830: $43
    cpl                                           ; $5831: $2f
    ld [hl], c                                    ; $5832: $71
    jr z, @+$01                                   ; $5833: $28 $ff

    adc c                                         ; $5835: $89
    add hl, de                                    ; $5836: $19
    ccf                                           ; $5837: $3f
    call c, Call_000_0fa6                         ; $5838: $dc $a6 $0f
    ld d, a                                       ; $583b: $57
    call z, $2012                                 ; $583c: $cc $12 $20
    rst $00                                       ; $583f: $c7
    ld [hl], d                                    ; $5840: $72
    and c                                         ; $5841: $a1
    ld a, c                                       ; $5842: $79
    xor l                                         ; $5843: $ad
    sub c                                         ; $5844: $91
    push af                                       ; $5845: $f5
    ld l, $63                                     ; $5846: $2e $63
    ret nc                                        ; $5848: $d0

    ld c, h                                       ; $5849: $4c
    ld d, c                                       ; $584a: $51

jr_069_584b:
    rst $30                                       ; $584b: $f7
    cpl                                           ; $584c: $2f

Call_069_584d:
    call nc, $b187                                ; $584d: $d4 $87 $b1
    add c                                         ; $5850: $81
    ld c, l                                       ; $5851: $4d
    ld b, h                                       ; $5852: $44
    jr nc, jr_069_584b                            ; $5853: $30 $f6

    cp h                                          ; $5855: $bc
    or a                                          ; $5856: $b7
    adc h                                         ; $5857: $8c
    adc [hl]                                      ; $5858: $8e
    sub a                                         ; $5859: $97
    set 3, l                                      ; $585a: $cb $dd
    add h                                         ; $585c: $84
    ld a, [c]                                     ; $585d: $f2
    ld c, a                                       ; $585e: $4f
    ld c, [hl]                                    ; $585f: $4e
    ld d, e                                       ; $5860: $53
    ld c, $9d                                     ; $5861: $0e $9d
    xor $88                                       ; $5863: $ee $88
    db $f4                                        ; $5865: $f4
    ld d, c                                       ; $5866: $51
    xor d                                         ; $5867: $aa
    ld a, [hl-]                                   ; $5868: $3a
    call Call_000_3ae3                            ; $5869: $cd $e3 $3a
    cp l                                          ; $586c: $bd
    call nz, $333d                                ; $586d: $c4 $3d $33
    inc l                                         ; $5870: $2c
    ld c, e                                       ; $5871: $4b
    ld a, l                                       ; $5872: $7d
    ld a, [de]                                    ; $5873: $1a
    dec bc                                        ; $5874: $0b
    call $94e8                                    ; $5875: $cd $e8 $94
    ld [bc], a                                    ; $5878: $02

Call_069_5879:
    ld e, h                                       ; $5879: $5c
    and b                                         ; $587a: $a0
    db $dd                                        ; $587b: $dd
    rra                                           ; $587c: $1f
    db $db                                        ; $587d: $db
    add h                                         ; $587e: $84
    db $d3                                        ; $587f: $d3
    ldh a, [$d2]                                  ; $5880: $f0 $d2
    call nc, $e34e                                ; $5882: $d4 $4e $e3
    ld c, b                                       ; $5885: $48
    ld l, h                                       ; $5886: $6c
    ld hl, sp+$00                                 ; $5887: $f8 $00
    rst $20                                       ; $5889: $e7
    dec a                                         ; $588a: $3d
    ld b, e                                       ; $588b: $43
    call c, Call_069_5105                         ; $588c: $dc $05 $51
    and a                                         ; $588f: $a7
    sbc e                                         ; $5890: $9b
    ld de, $9d33                                  ; $5891: $11 $33 $9d
    adc l                                         ; $5894: $8d
    xor b                                         ; $5895: $a8
    jp z, Jump_000_3565                           ; $5896: $ca $65 $35

    ld l, [hl]                                    ; $5899: $6e
    and e                                         ; $589a: $a3
    add h                                         ; $589b: $84
    xor b                                         ; $589c: $a8
    sub d                                         ; $589d: $92
    jp c, $8ed1                                   ; $589e: $da $d1 $8e

    swap [hl]                                     ; $58a1: $cb $36
    jp c, $88cd                                   ; $58a3: $da $cd $88

    sbc c                                         ; $58a6: $99
    adc $46                                       ; $58a7: $ce $46
    set 3, a                                      ; $58a9: $cb $df
    db $10                                        ; $58ab: $10
    ld e, [hl]                                    ; $58ac: $5e
    and [hl]                                      ; $58ad: $a6
    ld l, h                                       ; $58ae: $6c
    jp z, $d3a1                                   ; $58af: $ca $a1 $d3

    dec hl                                        ; $58b2: $2b
    ld h, [hl]                                    ; $58b3: $66
    add hl, bc                                    ; $58b4: $09
    sub b                                         ; $58b5: $90
    ld h, e                                       ; $58b6: $63
    cp c                                          ; $58b7: $b9
    ld [de], a                                    ; $58b8: $12
    ld e, l                                       ; $58b9: $5d
    pop af                                        ; $58ba: $f1
    ld d, l                                       ; $58bb: $55
    ld [hl-], a                                   ; $58bc: $32
    db $d3                                        ; $58bd: $d3
    xor $9e                                       ; $58be: $ee $9e
    pop de                                        ; $58c0: $d1
    ld l, c                                       ; $58c1: $69
    jp z, $e1a1                                   ; $58c2: $ca $a1 $e1

    db $ed                                        ; $58c5: $ed
    add d                                         ; $58c6: $82
    inc l                                         ; $58c7: $2c
    or l                                          ; $58c8: $b5
    ret nc                                        ; $58c9: $d0

    ld l, h                                       ; $58ca: $6c
    ld e, b                                       ; $58cb: $58
    xor b                                         ; $58cc: $a8
    rst $30                                       ; $58cd: $f7
    rlca                                          ; $58ce: $07
    add hl, bc                                    ; $58cf: $09
    dec bc                                        ; $58d0: $0b
    sbc d                                         ; $58d1: $9a
    ld e, h                                       ; $58d2: $5c
    db $db                                        ; $58d3: $db
    jr jr_069_5926                                ; $58d4: $18 $50

    ld a, [$498c]                                 ; $58d6: $fa $8c $49
    jp c, Jump_000_38c6                           ; $58d9: $da $c6 $38

    ld e, d                                       ; $58dc: $5a
    ld [hl], $4f                                  ; $58dd: $36 $4f
    jr @-$51                                      ; $58df: $18 $ad

    and d                                         ; $58e1: $a2
    rst $38                                       ; $58e2: $ff
    call nz, $a2fc                                ; $58e3: $c4 $fc $a2
    and e                                         ; $58e6: $a3
    ld b, c                                       ; $58e7: $41
    res 0, [hl]                                   ; $58e8: $cb $86
    or a                                          ; $58ea: $b7
    dec bc                                        ; $58eb: $0b
    sub $69                                       ; $58ec: $d6 $69
    inc e                                         ; $58ee: $1c
    adc c                                         ; $58ef: $89
    dec c                                         ; $58f0: $0d
    rra                                           ; $58f1: $1f
    ld e, e                                       ; $58f2: $5b
    ld l, b                                       ; $58f3: $68
    or [hl]                                       ; $58f4: $b6
    ld d, e                                       ; $58f5: $53
    call nc, $ab71                                ; $58f6: $d4 $71 $ab
    rst $10                                       ; $58f9: $d7
    ldh a, [rPCM12]                               ; $58fa: $f0 $76
    pop bc                                        ; $58fc: $c1
    sbc d                                         ; $58fd: $9a
    ld [hl], d                                    ; $58fe: $72
    add sp, -$0c                                  ; $58ff: $e8 $f4
    adc d                                         ; $5901: $8a
    ld e, c                                       ; $5902: $59
    ld [bc], a                                    ; $5903: $02
    db $e4                                        ; $5904: $e4
    ld e, b                                       ; $5905: $58
    ld l, [hl]                                    ; $5906: $6e
    add [hl]                                      ; $5907: $86
    xor h                                         ; $5908: $ac
    ld b, h                                       ; $5909: $44
    sbc b                                         ; $590a: $98
    add [hl]                                      ; $590b: $86
    jp hl                                         ; $590c: $e9


    cp c                                          ; $590d: $b9
    ld c, [hl]                                    ; $590e: $4e
    ld a, d                                       ; $590f: $7a
    ld d, $84                                     ; $5910: $16 $84
    ld sp, $3ddc                                  ; $5912: $31 $dc $3d
    rla                                           ; $5915: $17
    ld a, [de]                                    ; $5916: $1a
    ret nc                                        ; $5917: $d0

    sub h                                         ; $5918: $94
    ld b, e                                       ; $5919: $43
    or c                                          ; $591a: $b1
    and b                                         ; $591b: $a0
    rst $38                                       ; $591c: $ff
    ld e, d                                       ; $591d: $5a
    and c                                         ; $591e: $a1
    add hl, de                                    ; $591f: $19
    ld [bc], a                                    ; $5920: $02
    jr z, jr_069_594d                             ; $5921: $28 $2a

    inc [hl]                                      ; $5923: $34
    xor a                                         ; $5924: $af
    ld l, c                                       ; $5925: $69

jr_069_5926:
    ld e, c                                       ; $5926: $59
    push hl                                       ; $5927: $e5
    or d                                          ; $5928: $b2
    sbc d                                         ; $5929: $9a
    cp e                                          ; $592a: $bb
    ld [c], a                                     ; $592b: $e2
    jp hl                                         ; $592c: $e9


    ld sp, $6036                                  ; $592d: $31 $36 $60
    or l                                          ; $5930: $b5
    dec de                                        ; $5931: $1b
    push hl                                       ; $5932: $e5
    ld l, b                                       ; $5933: $68
    jp Jump_069_7c98                              ; $5934: $c3 $98 $7c


    halt                                          ; $5937: $76
    ld a, a                                       ; $5938: $7f
    db $db                                        ; $5939: $db
    dec hl                                        ; $593a: $2b
    pop hl                                        ; $593b: $e1
    ld a, [hl+]                                   ; $593c: $2a
    add hl, de                                    ; $593d: $19
    di                                            ; $593e: $f3
    inc [hl]                                      ; $593f: $34
    and b                                         ; $5940: $a0
    cpl                                           ; $5941: $2f
    xor [hl]                                      ; $5942: $ae
    sbc [hl]                                      ; $5943: $9e
    ld a, $cf                                     ; $5944: $3e $cf
    ld e, e                                       ; $5946: $5b
    ld e, [hl]                                    ; $5947: $5e
    ld h, b                                       ; $5948: $60
    ret nz                                        ; $5949: $c0

    ld a, l                                       ; $594a: $7d
    rst $18                                       ; $594b: $df

Call_069_594c:
    xor e                                         ; $594c: $ab

jr_069_594d:
    ld e, c                                       ; $594d: $59
    ld a, [c]                                     ; $594e: $f2
    cp b                                          ; $594f: $b8
    dec c                                         ; $5950: $0d
    ld c, l                                       ; $5951: $4d
    ld l, b                                       ; $5952: $68
    ld [hl], $ee                                  ; $5953: $36 $ee
    xor d                                         ; $5955: $aa
    sub e                                         ; $5956: $93
    dec [hl]                                      ; $5957: $35
    db $fc                                        ; $5958: $fc
    inc c                                         ; $5959: $0c
    ld [hl], e                                    ; $595a: $73
    ld a, a                                       ; $595b: $7f
    adc c                                         ; $595c: $89
    inc [hl]                                      ; $595d: $34
    halt                                          ; $595e: $76
    ld a, [$a753]                                 ; $595f: $fa $53 $a7
    ld bc, $5855                                  ; $5962: $01 $55 $58
    ld a, l                                       ; $5965: $7d
    jp Jump_069_74ff                              ; $5966: $c3 $ff $74


    xor $0f                                       ; $5969: $ee $0f
    add hl, bc                                    ; $596b: $09
    pop af                                        ; $596c: $f1
    sbc a                                         ; $596d: $9f
    sbc b                                         ; $596e: $98
    adc l                                         ; $596f: $8d
    sbc l                                         ; $5970: $9d
    ld l, [hl]                                    ; $5971: $6e
    ld h, c                                       ; $5972: $61
    jp c, Jump_069_685e                           ; $5973: $da $5e $68

    sbc h                                         ; $5976: $9c
    ld e, $9a                                     ; $5977: $1e $9a
    db $ed                                        ; $5979: $ed
    ld c, l                                       ; $597a: $4d
    inc bc                                        ; $597b: $03
    ld a, d                                       ; $597c: $7a
    cp [hl]                                       ; $597d: $be
    cp l                                          ; $597e: $bd
    sbc b                                         ; $597f: $98
    sbc [hl]                                      ; $5980: $9e
    sbc h                                         ; $5981: $9c
    push af                                       ; $5982: $f5
    cp $00                                        ; $5983: $fe $00
    sbc e                                         ; $5985: $9b
    ld b, a                                       ; $5986: $47
    ld a, [$8ec6]                                 ; $5987: $fa $c6 $8e
    ld d, [hl]                                    ; $598a: $56
    call c, Call_069_4bf2                         ; $598b: $dc $f2 $4b
    adc a                                         ; $598e: $8f
    sub $a7                                       ; $598f: $d6 $a7
    or c                                          ; $5991: $b1
    ld l, h                                       ; $5992: $6c
    add d                                         ; $5993: $82
    cp $b3                                        ; $5994: $fe $b3
    or b                                          ; $5996: $b0
    sub c                                         ; $5997: $91
    dec a                                         ; $5998: $3d
    rst $30                                       ; $5999: $f7
    ld sp, $713d                                  ; $599a: $31 $3d $71
    and e                                         ; $599d: $a3
    ld hl, sp+$72                                 ; $599e: $f8 $72
    ld a, a                                       ; $59a0: $7f
    ld [c], a                                     ; $59a1: $e2
    ld a, $63                                     ; $59a2: $3e $63
    sub d                                         ; $59a4: $92
    sbc l                                         ; $59a5: $9d
    ld h, $08                                     ; $59a6: $26 $08
    or $0d                                        ; $59a8: $f6 $0d
    xor d                                         ; $59aa: $aa
    db $d3                                        ; $59ab: $d3
    add b                                         ; $59ac: $80
    ld l, [hl]                                    ; $59ad: $6e
    sbc c                                         ; $59ae: $99
    or h                                          ; $59af: $b4
    jr nz, @+$5c                                  ; $59b0: $20 $5a

    sub $fb                                       ; $59b2: $d6 $fb
    inc bc                                        ; $59b4: $03
    add hl, bc                                    ; $59b5: $09
    pop af                                        ; $59b6: $f1
    sbc a                                         ; $59b7: $9f
    sbc b                                         ; $59b8: $98
    adc l                                         ; $59b9: $8d
    ld e, l                                       ; $59ba: $5d
    ld e, h                                       ; $59bb: $5c
    sbc d                                         ; $59bc: $9a
    sub $38                                       ; $59bd: $d6 $38
    ld c, l                                       ; $59bf: $4d
    db $10                                        ; $59c0: $10
    db $ec                                        ; $59c1: $ec
    dec de                                        ; $59c2: $1b
    ld d, h                                       ; $59c3: $54
    and a                                         ; $59c4: $a7
    ld bc, $32dd                                  ; $59c5: $01 $dd $32
    ld l, c                                       ; $59c8: $69
    ld b, c                                       ; $59c9: $41
    or h                                          ; $59ca: $b4
    xor h                                         ; $59cb: $ac
    rst $30                                       ; $59cc: $f7
    rlca                                          ; $59cd: $07
    ld [c], a                                     ; $59ce: $e2
    reti                                          ; $59cf: $d9


    cp b                                          ; $59d0: $b8
    add d                                         ; $59d1: $82
    ld a, [hl+]                                   ; $59d2: $2a
    dec sp                                        ; $59d3: $3b
    ld e, l                                       ; $59d4: $5d
    sbc b                                         ; $59d5: $98
    sbc [hl]                                      ; $59d6: $9e
    add $e9                                       ; $59d7: $c6 $e9
    ld h, [hl]                                    ; $59d9: $66
    ld a, $6d                                     ; $59da: $3e $6d
    ld b, b                                       ; $59dc: $40
    or a                                          ; $59dd: $b7
    ld c, h                                       ; $59de: $4c
    ld e, d                                       ; $59df: $5a
    db $10                                        ; $59e0: $10
    dec l                                         ; $59e1: $2d
    db $eb                                        ; $59e2: $eb
    db $fd                                        ; $59e3: $fd
    ld bc, $d9e2                                  ; $59e4: $01 $e2 $d9
    cp b                                          ; $59e7: $b8
    add d                                         ; $59e8: $82
    ld a, [hl+]                                   ; $59e9: $2a
    ld c, e                                       ; $59ea: $4b
    xor l                                         ; $59eb: $ad
    and h                                         ; $59ec: $a4
    jp z, $a331                                   ; $59ed: $ca $31 $a3

    ld [hl], $a0                                  ; $59f0: $36 $a0
    ld e, e                                       ; $59f2: $5b
    ld h, $2d                                     ; $59f3: $26 $2d
    adc b                                         ; $59f5: $88
    sub [hl]                                      ; $59f6: $96
    push af                                       ; $59f7: $f5
    cp $00                                        ; $59f8: $fe $00
    dec sp                                        ; $59fa: $3b
    ld c, $ac                                     ; $59fb: $0e $ac
    ld h, d                                       ; $59fd: $62
    pop bc                                        ; $59fe: $c1
    rst $38                                       ; $59ff: $ff
    cp a                                          ; $5a00: $bf
    adc c                                         ; $5a01: $89
    inc c                                         ; $5a02: $0c
    ld d, e                                       ; $5a03: $53
    sbc a                                         ; $5a04: $9f
    add $3a                                       ; $5a05: $c6 $3a
    ret                                           ; $5a07: $c9


    ld h, $a4                                     ; $5a08: $26 $a4
    call c, Call_069_79f3                         ; $5a0a: $dc $f3 $79
    ld a, a                                       ; $5a0d: $7f
    add hl, bc                                    ; $5a0e: $09
    pop af                                        ; $5a0f: $f1
    sbc a                                         ; $5a10: $9f
    sbc b                                         ; $5a11: $98
    adc l                                         ; $5a12: $8d
    dec a                                         ; $5a13: $3d
    rst $18                                       ; $5a14: $df
    halt                                          ; $5a15: $76
    ld a, d                                       ; $5a16: $7a
    cp l                                          ; $5a17: $bd
    cpl                                           ; $5a18: $2f
    add [hl]                                      ; $5a19: $86
    or c                                          ; $5a1a: $b1
    ei                                            ; $5a1b: $fb
    inc bc                                        ; $5a1c: $03
    rla                                           ; $5a1d: $17
    ld e, b                                       ; $5a1e: $58
    ld a, l                                       ; $5a1f: $7d
    ld a, [de]                                    ; $5a20: $1a
    res 1, d                                      ; $5a21: $cb $8a
    cp e                                          ; $5a23: $bb
    add l                                         ; $5a24: $85
    dec c                                         ; $5a25: $0d
    ld l, b                                       ; $5a26: $68
    ld [c], a                                     ; $5a27: $e2
    xor h                                         ; $5a28: $ac
    ccf                                           ; $5a29: $3f
    jr jr_069_5aa6                                ; $5a2a: $18 $7a

Call_069_5a2c:
    ld a, a                                       ; $5a2c: $7f
    adc c                                         ; $5a2d: $89
    ld [hl], $bf                                  ; $5a2e: $36 $bf
    inc sp                                        ; $5a30: $33
    ld e, d                                       ; $5a31: $5a
    cpl                                           ; $5a32: $2f
    adc b                                         ; $5a33: $88
    ld l, c                                       ; $5a34: $69
    ld b, e                                       ; $5a35: $43
    ld a, b                                       ; $5a36: $78
    adc b                                         ; $5a37: $88
    add hl, de                                    ; $5a38: $19
    ld e, d                                       ; $5a39: $5a
    sbc a                                         ; $5a3a: $9f
    add $4e                                       ; $5a3b: $c6 $4e
    ld [hl], a                                    ; $5a3d: $77
    ld b, h                                       ; $5a3e: $44
    ld a, [$3fb8]                                 ; $5a3f: $fa $b8 $3f
    db $fd                                        ; $5a42: $fd
    nop                                           ; $5a43: $00
    sbc e                                         ; $5a44: $9b
    jp hl                                         ; $5a45: $e9


    ld h, a                                       ; $5a46: $67
    ld h, a                                       ; $5a47: $67
    or h                                          ; $5a48: $b4
    ld c, [hl]                                    ; $5a49: $4e
    scf                                           ; $5a4a: $37
    rrca                                          ; $5a4b: $0f
    sub [hl]                                      ; $5a4c: $96
    db $e4                                        ; $5a4d: $e4
    db $f4                                        ; $5a4e: $f4
    jp nc, $3c11                                  ; $5a4f: $d2 $11 $3c

    rst $30                                       ; $5a52: $f7
    rlca                                          ; $5a53: $07
    adc c                                         ; $5a54: $89
    ld [hl], $bf                                  ; $5a55: $36 $bf
    inc sp                                        ; $5a57: $33
    or $a4                                        ; $5a58: $f6 $a4
    ld a, [$630b]                                 ; $5a5a: $fa $0b $63
    and [hl]                                      ; $5a5d: $a6
    sub $a7                                       ; $5a5e: $d6 $a7
    or c                                          ; $5a60: $b1
    inc l                                         ; $5a61: $2c
    db $dd                                        ; $5a62: $dd
    jp nz, $7406                                  ; $5a63: $c2 $06 $74

    dec bc                                        ; $5a66: $0b
    call z, $cb33                                 ; $5a67: $cc $33 $cb
    and h                                         ; $5a6a: $a4
    rra                                           ; $5a6b: $1f
    rst $28                                       ; $5a6c: $ef
    rrca                                          ; $5a6d: $0f
    adc c                                         ; $5a6e: $89
    ld [hl], $bf                                  ; $5a6f: $36 $bf
    inc sp                                        ; $5a71: $33
    or $a4                                        ; $5a72: $f6 $a4
    ld a, [$630b]                                 ; $5a74: $fa $0b $63
    and [hl]                                      ; $5a77: $a6
    sub $a7                                       ; $5a78: $d6 $a7
    or c                                          ; $5a7a: $b1
    inc l                                         ; $5a7b: $2c
    db $dd                                        ; $5a7c: $dd
    jp nz, $7406                                  ; $5a7d: $c2 $06 $74

    dec bc                                        ; $5a80: $0b
    call z, $cb33                                 ; $5a81: $cc $33 $cb
    and h                                         ; $5a84: $a4
    rra                                           ; $5a85: $1f
    rst $28                                       ; $5a86: $ef
    rrca                                          ; $5a87: $0f
    db $fd                                        ; $5a88: $fd
    nop                                           ; $5a89: $00
    db $fd                                        ; $5a8a: $fd
    nop                                           ; $5a8b: $00
    adc c                                         ; $5a8c: $89
    ld [hl], $bf                                  ; $5a8d: $36 $bf
    inc sp                                        ; $5a8f: $33
    sub [hl]                                      ; $5a90: $96
    dec d                                         ; $5a91: $15
    ld [hl], a                                    ; $5a92: $77
    dec bc                                        ; $5a93: $0b
    dec de                                        ; $5a94: $1b
    ret nc                                        ; $5a95: $d0

    ld [hl], e                                    ; $5a96: $73
    pop hl                                        ; $5a97: $e1
    add l                                         ; $5a98: $85
    or d                                          ; $5a99: $b2
    sbc e                                         ; $5a9a: $9b
    daa                                           ; $5a9b: $27
    ld h, [hl]                                    ; $5a9c: $66
    ld h, e                                       ; $5a9d: $63
    xor c                                         ; $5a9e: $a9
    dec d                                         ; $5a9f: $15
    or a                                          ; $5aa0: $b7
    inc c                                         ; $5aa1: $0c
    ld l, l                                       ; $5aa2: $6d
    and b                                         ; $5aa3: $a0
    or $32                                        ; $5aa4: $f6 $32

jr_069_5aa6:
    jp $fa8a                                      ; $5aa6: $c3 $8a $fa


    ld bc, $f109                                  ; $5aa9: $01 $09 $f1
    sbc a                                         ; $5aac: $9f
    sbc b                                         ; $5aad: $98
    adc l                                         ; $5aae: $8d
    ld [hl], l                                    ; $5aaf: $75
    sub d                                         ; $5ab0: $92
    sub l                                         ; $5ab1: $95
    adc h                                         ; $5ab2: $8c
    ld a, b                                       ; $5ab3: $78
    add $06                                       ; $5ab4: $c6 $06
    call nc, Call_069_6720                        ; $5ab6: $d4 $20 $67
    dec b                                         ; $5ab9: $05
    dec hl                                        ; $5aba: $2b
    sbc e                                         ; $5abb: $9b
    dec e                                         ; $5abc: $1d
    cp e                                          ; $5abd: $bb
    sub l                                         ; $5abe: $95
    ld c, e                                       ; $5abf: $4b
    ld a, b                                       ; $5ac0: $78
    db $eb                                        ; $5ac1: $eb
    add l                                         ; $5ac2: $85
    ld [hl], e                                    ; $5ac3: $73
    ld a, a                                       ; $5ac4: $7f
    db $fd                                        ; $5ac5: $fd
    nop                                           ; $5ac6: $00
    sub a                                         ; $5ac7: $97
    dec a                                         ; $5ac8: $3d
    ld h, e                                       ; $5ac9: $63
    add hl, sp                                    ; $5aca: $39
    dec a                                         ; $5acb: $3d
    rst $10                                       ; $5acc: $d7
    ld hl, sp+$4f                                 ; $5acd: $f8 $4f
    and a                                         ; $5acf: $a7
    rla                                           ; $5ad0: $17
    ld b, e                                       ; $5ad1: $43
    ld a, d                                       ; $5ad2: $7a
    adc h                                         ; $5ad3: $8c
    ld h, c                                       ; $5ad4: $61
    xor h                                         ; $5ad5: $ac
    ld h, c                                       ; $5ad6: $61
    cp d                                          ; $5ad7: $ba
    dec c                                         ; $5ad8: $0d
    xor e                                         ; $5ad9: $ab
    or a                                          ; $5ada: $b7
    inc l                                         ; $5adb: $2c
    cp b                                          ; $5adc: $b8
    ccf                                           ; $5add: $3f
    db $fd                                        ; $5ade: $fd
    nop                                           ; $5adf: $00
    db $fd                                        ; $5ae0: $fd
    nop                                           ; $5ae1: $00
    sub a                                         ; $5ae2: $97
    ld [hl+], a                                   ; $5ae3: $22
    ld l, l                                       ; $5ae4: $6d
    ld d, b                                       ; $5ae5: $50
    and l                                         ; $5ae6: $a5
    ld [hl], l                                    ; $5ae7: $75
    rst $38                                       ; $5ae8: $ff
    adc d                                         ; $5ae9: $8a
    cp e                                          ; $5aea: $bb
    add l                                         ; $5aeb: $85
    dec c                                         ; $5aec: $0d
    add sp, -$6a                                  ; $5aed: $e8 $96
    and a                                         ; $5aef: $a7
    ld a, c                                       ; $5af0: $79
    ld [hl], a                                    ; $5af1: $77
    ld a, e                                       ; $5af2: $7b
    cp h                                          ; $5af3: $bc
    ccf                                           ; $5af4: $3f
    adc c                                         ; $5af5: $89
    ld [hl], $bf                                  ; $5af6: $36 $bf
    inc sp                                        ; $5af8: $33
    ld e, d                                       ; $5af9: $5a
    and a                                         ; $5afa: $a7
    sbc e                                         ; $5afb: $9b
    ld l, l                                       ; $5afc: $6d
    db $e4                                        ; $5afd: $e4
    ld [hl], h                                    ; $5afe: $74
    di                                            ; $5aff: $f3
    or e                                          ; $5b00: $b3
    rra                                           ; $5b01: $1f
    rst $30                                       ; $5b02: $f7
    rlca                                          ; $5b03: $07
    adc c                                         ; $5b04: $89
    ld [hl], $bf                                  ; $5b05: $36 $bf
    inc sp                                        ; $5b07: $33
    ld e, d                                       ; $5b08: $5a
    and a                                         ; $5b09: $a7
    sbc e                                         ; $5b0a: $9b
    ld l, l                                       ; $5b0b: $6d
    db $e4                                        ; $5b0c: $e4
    ld [hl], h                                    ; $5b0d: $74
    di                                            ; $5b0e: $f3
    or e                                          ; $5b0f: $b3
    rra                                           ; $5b10: $1f
    rst $30                                       ; $5b11: $f7
    rlca                                          ; $5b12: $07
    db $fd                                        ; $5b13: $fd
    nop                                           ; $5b14: $00
    db $fd                                        ; $5b15: $fd
    nop                                           ; $5b16: $00
    db $fd                                        ; $5b17: $fd
    nop                                           ; $5b18: $00
    sub a                                         ; $5b19: $97
    ld [hl+], a                                   ; $5b1a: $22
    ld l, l                                       ; $5b1b: $6d
    ld d, b                                       ; $5b1c: $50
    and l                                         ; $5b1d: $a5
    ld [hl], l                                    ; $5b1e: $75

Call_069_5b1f:
    rst $38                                       ; $5b1f: $ff
    adc d                                         ; $5b20: $8a
    cp e                                          ; $5b21: $bb
    add l                                         ; $5b22: $85
    dec c                                         ; $5b23: $0d
    add sp, -$6a                                  ; $5b24: $e8 $96
    and a                                         ; $5b26: $a7
    ld a, c                                       ; $5b27: $79
    ld [hl], a                                    ; $5b28: $77
    ld a, e                                       ; $5b29: $7b
    cp h                                          ; $5b2a: $bc
    ccf                                           ; $5b2b: $3f
    db $fd                                        ; $5b2c: $fd
    nop                                           ; $5b2d: $00
    db $fd                                        ; $5b2e: $fd
    nop                                           ; $5b2f: $00
    db $fd                                        ; $5b30: $fd
    nop                                           ; $5b31: $00
    db $fd                                        ; $5b32: $fd
    nop                                           ; $5b33: $00
    db $fd                                        ; $5b34: $fd
    nop                                           ; $5b35: $00
    db $fd                                        ; $5b36: $fd
    nop                                           ; $5b37: $00
    db $fd                                        ; $5b38: $fd
    nop                                           ; $5b39: $00
    db $fd                                        ; $5b3a: $fd
    nop                                           ; $5b3b: $00
    add hl, bc                                    ; $5b3c: $09
    pop af                                        ; $5b3d: $f1
    sbc a                                         ; $5b3e: $9f
    sbc b                                         ; $5b3f: $98
    adc l                                         ; $5b40: $8d
    sub $e9                                       ; $5b41: $d6 $e9
    cp c                                          ; $5b43: $b9
    add $7f                                       ; $5b44: $c6 $7f
    xor $0f                                       ; $5b46: $ee $0f
    ld d, a                                       ; $5b48: $57
    ldh a, [$75]                                  ; $5b49: $f0 $75
    rst $38                                       ; $5b4b: $ff
    xor $e0                                       ; $5b4c: $ee $e0
    jp nz, $d186                                  ; $5b4e: $c2 $86 $d1

    ld e, [hl]                                    ; $5b51: $5e
    ld h, [hl]                                    ; $5b52: $66
    db $e3                                        ; $5b53: $e3
    ld e, l                                       ; $5b54: $5d
    rst $20                                       ; $5b55: $e7
    or h                                          ; $5b56: $b4
    ld a, $8d                                     ; $5b57: $3e $8d
    sbc l                                         ; $5b59: $9d
    sbc [hl]                                      ; $5b5a: $9e
    db $eb                                        ; $5b5b: $eb
    or b                                          ; $5b5c: $b0
    ld c, h                                       ; $5b5d: $4c
    inc bc                                        ; $5b5e: $03
    cp e                                          ; $5b5f: $bb
    dec d                                         ; $5b60: $15
    adc a                                         ; $5b61: $8f
    dec de                                        ; $5b62: $1b
    or a                                          ; $5b63: $b7
    call $b8cb                                    ; $5b64: $cd $cb $b8
    ccf                                           ; $5b67: $3f
    sub a                                         ; $5b68: $97
    ld [hl+], a                                   ; $5b69: $22
    ld l, l                                       ; $5b6a: $6d
    ld d, b                                       ; $5b6b: $50
    and l                                         ; $5b6c: $a5
    sub l                                         ; $5b6d: $95
    dec a                                         ; $5b6e: $3d
    rst $18                                       ; $5b6f: $df
    halt                                          ; $5b70: $76
    ld a, d                                       ; $5b71: $7a
    cp l                                          ; $5b72: $bd
    cpl                                           ; $5b73: $2f
    add [hl]                                      ; $5b74: $86
    or c                                          ; $5b75: $b1
    ei                                            ; $5b76: $fb
    inc bc                                        ; $5b77: $03
    db $fd                                        ; $5b78: $fd
    nop                                           ; $5b79: $00
    db $fd                                        ; $5b7a: $fd
    nop                                           ; $5b7b: $00
    db $fd                                        ; $5b7c: $fd
    nop                                           ; $5b7d: $00
    db $fd                                        ; $5b7e: $fd
    nop                                           ; $5b7f: $00
    db $fd                                        ; $5b80: $fd
    nop                                           ; $5b81: $00
    db $fd                                        ; $5b82: $fd
    nop                                           ; $5b83: $00
    db $fd                                        ; $5b84: $fd
    nop                                           ; $5b85: $00
    db $fd                                        ; $5b86: $fd
    nop                                           ; $5b87: $00
    db $fd                                        ; $5b88: $fd
    nop                                           ; $5b89: $00
    db $fd                                        ; $5b8a: $fd
    nop                                           ; $5b8b: $00
    ld d, a                                       ; $5b8c: $57
    ldh a, [$95]                                  ; $5b8d: $f0 $95
    db $d3                                        ; $5b8f: $d3
    ld [hl], e                                    ; $5b90: $73
    jr jr_069_5be6                                ; $5b91: $18 $53

    ld c, $19                                     ; $5b93: $0e $19
    dec c                                         ; $5b95: $0d
    add sp, $16                                   ; $5b96: $e8 $16
    ld l, $cb                                     ; $5b98: $2e $cb
    ld [$e1c2], sp                                ; $5b9a: $08 $c2 $e1
    adc b                                         ; $5b9d: $88
    rst $30                                       ; $5b9e: $f7
    rlca                                          ; $5b9f: $07
    dec sp                                        ; $5ba0: $3b
    cp b                                          ; $5ba1: $b8
    xor h                                         ; $5ba2: $ac
    ld e, b                                       ; $5ba3: $58
    halt                                          ; $5ba4: $76
    dec bc                                        ; $5ba5: $0b
    ld c, h                                       ; $5ba6: $4c
    cp [hl]                                       ; $5ba7: $be
    adc c                                         ; $5ba8: $89
    ld l, b                                       ; $5ba9: $68
    sbc b                                         ; $5baa: $98
    sbc [hl]                                      ; $5bab: $9e
    rst $38                                       ; $5bac: $ff
    jp nc, $198c                                  ; $5bad: $d2 $8c $19

    rst $30                                       ; $5bb0: $f7
    rlca                                          ; $5bb1: $07

Call_069_5bb2:
    rla                                           ; $5bb2: $17
    ld e, b                                       ; $5bb3: $58
    ld a, l                                       ; $5bb4: $7d
    ld a, [de]                                    ; $5bb5: $1a
    bit 5, [hl]                                   ; $5bb6: $cb $6e
    and [hl]                                      ; $5bb8: $a6
    add a                                         ; $5bb9: $87
    sub c                                         ; $5bba: $91
    dec c                                         ; $5bbb: $0d
    db $d3                                        ; $5bbc: $d3
    dec l                                         ; $5bbd: $2d
    ld c, h                                       ; $5bbe: $4c
    db $db                                        ; $5bbf: $db
    dec bc                                        ; $5bc0: $0b
    rst $30                                       ; $5bc1: $f7
    rlca                                          ; $5bc2: $07
    rla                                           ; $5bc3: $17
    ld e, b                                       ; $5bc4: $58
    ld a, l                                       ; $5bc5: $7d
    ld a, [de]                                    ; $5bc6: $1a
    ld a, e                                       ; $5bc7: $7b
    cp [hl]                                       ; $5bc8: $be
    db $ed                                        ; $5bc9: $ed
    db $f4                                        ; $5bca: $f4
    ld a, d                                       ; $5bcb: $7a
    ld e, a                                       ; $5bcc: $5f
    inc c                                         ; $5bcd: $0c
    ld h, e                                       ; $5bce: $63
    rst $30                                       ; $5bcf: $f7
    rlca                                          ; $5bd0: $07
    sub a                                         ; $5bd1: $97
    ld [c], a                                     ; $5bd2: $e2
    add a                                         ; $5bd3: $87
    rlca                                          ; $5bd4: $07
    sbc l                                         ; $5bd5: $9d
    ld [hl], $c3                                  ; $5bd6: $36 $c3
    dec [hl]                                      ; $5bd8: $35
    sub c                                         ; $5bd9: $91
    rst $38                                       ; $5bda: $ff
    ld h, h                                       ; $5bdb: $64
    inc [hl]                                      ; $5bdc: $34
    and b                                         ; $5bdd: $a0
    db $db                                        ; $5bde: $db
    sbc b                                         ; $5bdf: $98
    cp c                                          ; $5be0: $b9
    call c, Call_000_091f                         ; $5be1: $dc $1f $09
    add d                                         ; $5be4: $82
    db $fd                                        ; $5be5: $fd

jr_069_5be6:
    ld h, l                                       ; $5be6: $65
    adc h                                         ; $5be7: $8c
    db $dd                                        ; $5be8: $dd
    ld [hl-], a                                   ; $5be9: $32
    ld l, c                                       ; $5bea: $69
    ld b, c                                       ; $5beb: $41
    or h                                          ; $5bec: $b4
    xor h                                         ; $5bed: $ac
    db $fd                                        ; $5bee: $fd
    ld b, a                                       ; $5bef: $47
    halt                                          ; $5bf0: $76
    sbc d                                         ; $5bf1: $9a
    pop hl                                        ; $5bf2: $e1
    cp d                                          ; $5bf3: $ba
    sub l                                         ; $5bf4: $95
    ld sp, $034f                                  ; $5bf5: $31 $4f $03
    ld a, e                                       ; $5bf8: $7b
    ld b, c                                       ; $5bf9: $41
    ld e, h                                       ; $5bfa: $5c
    dec a                                         ; $5bfb: $3d
    ld a, l                                       ; $5bfc: $7d
    sbc [hl]                                      ; $5bfd: $9e
    or a                                          ; $5bfe: $b7
    cp h                                          ; $5bff: $bc
    ret nz                                        ; $5c00: $c0

    add b                                         ; $5c01: $80
    ei                                            ; $5c02: $fb
    inc bc                                        ; $5c03: $03
    db $fd                                        ; $5c04: $fd
    nop                                           ; $5c05: $00
    rst $20                                       ; $5c06: $e7
    ld c, l                                       ; $5c07: $4d
    ld a, [de]                                    ; $5c08: $1a
    dec c                                         ; $5c09: $0d
    db $ec                                        ; $5c0a: $ec
    add hl, sp                                    ; $5c0b: $39
    rst $08                                       ; $5c0c: $cf
    or e                                          ; $5c0d: $b3
    cp h                                          ; $5c0e: $bc
    ret                                           ; $5c0f: $c9


    ld hl, sp+$79                                 ; $5c10: $f8 $79
    ld a, a                                       ; $5c12: $7f
    db $fd                                        ; $5c13: $fd
    nop                                           ; $5c14: $00
    adc c                                         ; $5c15: $89
    ld [hl], $bf                                  ; $5c16: $36 $bf
    inc sp                                        ; $5c18: $33
    halt                                          ; $5c19: $76
    sbc d                                         ; $5c1a: $9a
    and b                                         ; $5c1b: $a0
    ld a, $96                                     ; $5c1c: $3e $96
    db $e4                                        ; $5c1e: $e4
    inc [hl]                                      ; $5c1f: $34
    adc h                                         ; $5c20: $8c
    or $82                                        ; $5c21: $f6 $82
    cp b                                          ; $5c23: $b8
    ld a, d                                       ; $5c24: $7a
    cp d                                          ; $5c25: $ba
    db $db                                        ; $5c26: $db
    ld a, [bc]                                    ; $5c27: $0a
    ld c, a                                       ; $5c28: $4f
    rst $28                                       ; $5c29: $ef
    rrca                                          ; $5c2a: $0f
    db $fd                                        ; $5c2b: $fd
    nop                                           ; $5c2c: $00
    ld d, a                                       ; $5c2d: $57
    ldh a, [$75]                                  ; $5c2e: $f0 $75
    rst $38                                       ; $5c30: $ff
    ld l, [hl]                                    ; $5c31: $6e
    and [hl]                                      ; $5c32: $a6
    add a                                         ; $5c33: $87
    sub c                                         ; $5c34: $91
    dec c                                         ; $5c35: $0d
    db $d3                                        ; $5c36: $d3
    dec l                                         ; $5c37: $2d
    ld c, h                                       ; $5c38: $4c
    db $db                                        ; $5c39: $db
    dec bc                                        ; $5c3a: $0b
    rst $30                                       ; $5c3b: $f7
    rlca                                          ; $5c3c: $07
    db $fd                                        ; $5c3d: $fd
    nop                                           ; $5c3e: $00
    adc c                                         ; $5c3f: $89
    ld [hl], $bf                                  ; $5c40: $36 $bf
    inc sp                                        ; $5c42: $33
    or $c4                                        ; $5c43: $f6 $c4
    and [hl]                                      ; $5c45: $a6
    cp c                                          ; $5c46: $b9
    cp h                                          ; $5c47: $bc
    sbc b                                         ; $5c48: $98

jr_069_5c49:
    and h                                         ; $5c49: $a4
    sub $a7                                       ; $5c4a: $d6 $a7
    or c                                          ; $5c4c: $b1
    db $d3                                        ; $5c4d: $d3
    ld l, l                                       ; $5c4e: $6d
    ld h, e                                       ; $5c4f: $63
    ld e, $58                                     ; $5c50: $1e $58
    cp [hl]                                       ; $5c52: $be
    ccf                                           ; $5c53: $3f
    adc c                                         ; $5c54: $89
    jr nc, @+$47                                  ; $5c55: $30 $45

    jp c, $d3a1                                   ; $5c57: $da $a1 $d3

    ld l, l                                       ; $5c5a: $6d
    ld h, e                                       ; $5c5b: $63
    ld e, $58                                     ; $5c5c: $1e $58
    ld l, [hl]                                    ; $5c5e: $6e
    jp z, $5ea1                                   ; $5c5f: $ca $a1 $5e

    sub a                                         ; $5c62: $97
    ld a, [hl]                                    ; $5c63: $7e
    xor $fe                                       ; $5c64: $ee $fe
    nop                                           ; $5c66: $00
    rla                                           ; $5c67: $17
    ld h, e                                       ; $5c68: $63
    push bc                                       ; $5c69: $c5
    ld c, [hl]                                    ; $5c6a: $4e
    or a                                          ; $5c6b: $b7
    adc l                                         ; $5c6c: $8d
    ld a, c                                       ; $5c6d: $79
    ld h, b                                       ; $5c6e: $60
    cp c                                          ; $5c6f: $b9
    ld a, $8d                                     ; $5c70: $3e $8d
    ld h, l                                       ; $5c72: $65
    cpl                                           ; $5c73: $2f
    dec de                                        ; $5c74: $1b
    inc sp                                        ; $5c75: $33
    inc [hl]                                      ; $5c76: $34
    and b                                         ; $5c77: $a0
    ld [c], a                                     ; $5c78: $e2
    sbc d                                         ; $5c79: $9a
    ld l, l                                       ; $5c7a: $6d
    ld [c], a                                     ; $5c7b: $e2
    ret z                                         ; $5c7c: $c8

    rst $00                                       ; $5c7d: $c7
    ei                                            ; $5c7e: $fb
    inc bc                                        ; $5c7f: $03
    sub a                                         ; $5c80: $97
    ld [hl+], a                                   ; $5c81: $22
    ld l, l                                       ; $5c82: $6d
    ld d, b                                       ; $5c83: $50
    ld h, l                                       ; $5c84: $65
    reti                                          ; $5c85: $d9


    di                                            ; $5c86: $f3
    ld l, l                                       ; $5c87: $6d

jr_069_5c88:
    and a                                         ; $5c88: $a7
    rst $10                                       ; $5c89: $d7
    ei                                            ; $5c8a: $fb
    ld h, d                                       ; $5c8b: $62
    jr jr_069_5c49                                ; $5c8c: $18 $bb

    ccf                                           ; $5c8e: $3f
    adc c                                         ; $5c8f: $89
    ld [hl], $bf                                  ; $5c90: $36 $bf
    inc sp                                        ; $5c92: $33
    halt                                          ; $5c93: $76
    ld a, d                                       ; $5c94: $7a
    ld a, c                                       ; $5c95: $79
    ld a, h                                       ; $5c96: $7c
    rst $38                                       ; $5c97: $ff
    xor $16                                       ; $5c98: $ee $16
    rst $18                                       ; $5c9a: $df
    call nc, Call_069_7b0b                        ; $5c9b: $d4 $0b $7b
    ld h, c                                       ; $5c9e: $61
    xor $0f                                       ; $5c9f: $ee $0f
    db $fd                                        ; $5ca1: $fd
    nop                                           ; $5ca2: $00
    db $fd                                        ; $5ca3: $fd
    nop                                           ; $5ca4: $00
    db $fd                                        ; $5ca5: $fd
    nop                                           ; $5ca6: $00
    db $fd                                        ; $5ca7: $fd
    nop                                           ; $5ca8: $00
    ld d, a                                       ; $5ca9: $57
    ldh a, [$95]                                  ; $5caa: $f0 $95
    db $d3                                        ; $5cac: $d3
    call $8663                                    ; $5cad: $cd $63 $86

jr_069_5cb0:
    jr nc, jr_069_5c88                            ; $5cb0: $30 $d6

    ld b, h                                       ; $5cb2: $44
    sbc e                                         ; $5cb3: $9b
    rst $20                                       ; $5cb4: $e7
    ld a, c                                       ; $5cb5: $79
    ld h, c                                       ; $5cb6: $61
    xor $0f                                       ; $5cb7: $ee $0f
    rst $20                                       ; $5cb9: $e7
    jp nz, Jump_000_326c                          ; $5cba: $c2 $6c $32

    res 1, d                                      ; $5cbd: $cb $8a
    sbc e                                         ; $5cbf: $9b
    ld h, h                                       ; $5cc0: $64
    ld a, b                                       ; $5cc1: $78
    ld c, e                                       ; $5cc2: $4b
    sub d                                         ; $5cc3: $92
    dec c                                         ; $5cc4: $0d
    db $d3                                        ; $5cc5: $d3
    ld [hl], e                                    ; $5cc6: $73
    rra                                           ; $5cc7: $1f
    dec a                                         ; $5cc8: $3d
    ld [hl], e                                    ; $5cc9: $73
    ld a, a                                       ; $5cca: $7f
    adc c                                         ; $5ccb: $89
    ld [hl], $bf                                  ; $5ccc: $36 $bf
    inc sp                                        ; $5cce: $33
    sub [hl]                                      ; $5ccf: $96
    db $dd                                        ; $5cd0: $dd
    sbc h                                         ; $5cd1: $9c
    db $e4                                        ; $5cd2: $e4
    ld a, [bc]                                    ; $5cd3: $0a
    dec d                                         ; $5cd4: $15
    ld e, a                                       ; $5cd5: $5f
    jr jr_069_5cb0                                ; $5cd6: $18 $d8

    ld a, a                                       ; $5cd8: $7f
    call z, Call_069_67f0                         ; $5cd9: $cc $f0 $67
    sbc $1f                                       ; $5cdc: $de $1f
    rla                                           ; $5cde: $17
    cp e                                          ; $5cdf: $bb
    call z, Call_000_13fe                         ; $5ce0: $cc $fe $13
    or e                                          ; $5ce3: $b3
    or c                                          ; $5ce4: $b1
    call nc, Call_069_6226                        ; $5ce5: $d4 $26 $62
    dec a                                         ; $5ce8: $3d
    or l                                          ; $5ce9: $b5
    ld bc, $8abd                                  ; $5cea: $01 $bd $8a
    pop bc                                        ; $5ced: $c1
    or b                                          ; $5cee: $b0
    db $eb                                        ; $5cef: $eb
    cp $00                                        ; $5cf0: $fe $00
    sub a                                         ; $5cf2: $97
    ld b, d                                       ; $5cf3: $42
    ld h, a                                       ; $5cf4: $67
    ld e, c                                       ; $5cf5: $59
    and c                                         ; $5cf6: $a1
    db $d3                                        ; $5cf7: $d3
    ld b, h                                       ; $5cf8: $44
    or a                                          ; $5cf9: $b7
    ld l, e                                       ; $5cfa: $6b
    rst $10                                       ; $5cfb: $d7
    add d                                         ; $5cfc: $82
    ld b, $74                                     ; $5cfd: $06 $74
    db $eb                                        ; $5cff: $eb
    db $d3                                        ; $5d00: $d3
    db $ec                                        ; $5d01: $ec
    adc h                                         ; $5d02: $8c
    dec c                                         ; $5d03: $0d
    ld l, b                                       ; $5d04: $68
    ld [c], a                                     ; $5d05: $e2
    xor h                                         ; $5d06: $ac
    rla                                           ; $5d07: $17
    adc $fd                                       ; $5d08: $ce $fd
    ld bc, $4297                                  ; $5d0a: $01 $97 $42
    ld h, a                                       ; $5d0d: $67
    ld e, c                                       ; $5d0e: $59
    and c                                         ; $5d0f: $a1
    db $d3                                        ; $5d10: $d3
    ld b, h                                       ; $5d11: $44
    or a                                          ; $5d12: $b7
    ld l, e                                       ; $5d13: $6b
    rst $10                                       ; $5d14: $d7
    add d                                         ; $5d15: $82
    ld b, $74                                     ; $5d16: $06 $74
    db $eb                                        ; $5d18: $eb
    db $d3                                        ; $5d19: $d3
    db $ec                                        ; $5d1a: $ec
    adc h                                         ; $5d1b: $8c
    dec c                                         ; $5d1c: $0d
    ld l, b                                       ; $5d1d: $68
    ld [c], a                                     ; $5d1e: $e2
    xor h                                         ; $5d1f: $ac
    rla                                           ; $5d20: $17
    adc $fd                                       ; $5d21: $ce $fd
    ld bc, $f109                                  ; $5d23: $01 $09 $f1
    sbc a                                         ; $5d26: $9f
    sbc b                                         ; $5d27: $98
    adc l                                         ; $5d28: $8d
    ld d, [hl]                                    ; $5d29: $56
    ld [hl], $11                                  ; $5d2a: $36 $11
    pop bc                                        ; $5d2c: $c1
    ret c                                         ; $5d2d: $d8

    di                                            ; $5d2e: $f3
    sbc $32                                       ; $5d2f: $de $32

jr_069_5d31:
    ld a, [hl-]                                   ; $5d31: $3a
    ld e, [hl]                                    ; $5d32: $5e
    ld l, $f7                                     ; $5d33: $2e $f7
    rlca                                          ; $5d35: $07
    ld d, a                                       ; $5d36: $57
    ldh a, [$95]                                  ; $5d37: $f0 $95
    db $d3                                        ; $5d39: $d3
    dec e                                         ; $5d3a: $1d
    ld e, h                                       ; $5d3b: $5c
    add h                                         ; $5d3c: $84
    ld [hl], e                                    ; $5d3d: $73
    ld a, a                                       ; $5d3e: $7f
    add hl, bc                                    ; $5d3f: $09
    pop af                                        ; $5d40: $f1
    sbc a                                         ; $5d41: $9f
    sbc b                                         ; $5d42: $98
    adc l                                         ; $5d43: $8d
    sub $e9                                       ; $5d44: $d6 $e9
    ld h, [hl]                                    ; $5d46: $66
    dec de                                        ; $5d47: $1b
    add hl, sp                                    ; $5d48: $39
    dec c                                         ; $5d49: $0d
    add sp, $79                                   ; $5d4a: $e8 $79
    ld a, b                                       ; $5d4c: $78
    ld sp, hl                                     ; $5d4d: $f9
    db $fd                                        ; $5d4e: $fd
    ld a, b                                       ; $5d4f: $78
    ld [hl], $da                                  ; $5d50: $36 $da
    jr nc, jr_069_5d31                            ; $5d52: $30 $dd

    ld b, d                                       ; $5d54: $42
    or e                                          ; $5d55: $b3
    sbc l                                         ; $5d56: $9d
    rst $30                                       ; $5d57: $f7
    rlca                                          ; $5d58: $07
    add hl, bc                                    ; $5d59: $09
    pop af                                        ; $5d5a: $f1
    sbc a                                         ; $5d5b: $9f
    sbc b                                         ; $5d5c: $98
    adc l                                         ; $5d5d: $8d
    sbc l                                         ; $5d5e: $9d
    ld l, [hl]                                    ; $5d5f: $6e
    ld h, c                                       ; $5d60: $61
    jp c, Jump_069_685e                           ; $5d61: $da $5e $68

    sbc h                                         ; $5d64: $9c
    ld l, [hl]                                    ; $5d65: $6e
    ld e, $af                                     ; $5d66: $1e $af
    pop hl                                        ; $5d68: $e1
    cp $00                                        ; $5d69: $fe $00
    rst $20                                       ; $5d6b: $e7
    ld b, d                                       ; $5d6c: $42
    rst $38                                       ; $5d6d: $ff
    pop af                                        ; $5d6e: $f1
    ret c                                         ; $5d6f: $d8

    or e                                          ; $5d70: $b3
    or d                                          ; $5d71: $b2
    dec sp                                        ; $5d72: $3b
    db $10                                        ; $5d73: $10
    sub e                                         ; $5d74: $93
    ld l, h                                       ; $5d75: $6c
    ld b, b                                       ; $5d76: $40
    rst $08                                       ; $5d77: $cf
    or a                                          ; $5d78: $b7
    sbc l                                         ; $5d79: $9d
    ld e, [hl]                                    ; $5d7a: $5e
    rst $28                                       ; $5d7b: $ef
    adc e                                         ; $5d7c: $8b
    ld h, c                                       ; $5d7d: $61
    db $ec                                        ; $5d7e: $ec
    cp $00                                        ; $5d7f: $fe $00
    adc c                                         ; $5d81: $89
    ld [hl], $bf                                  ; $5d82: $36 $bf
    inc sp                                        ; $5d84: $33
    sub [hl]                                      ; $5d85: $96
    call $a58e                                    ; $5d86: $cd $8e $a5
    ld e, e                                       ; $5d89: $5b
    ld e, b                                       ; $5d8a: $58
    ld b, l                                       ; $5d8b: $45
    jp c, $98bd                                   ; $5d8c: $da $bd $98

    ld [hl], c                                    ; $5d8f: $71
    ld a, a                                       ; $5d90: $7f
    rst $20                                       ; $5d91: $e7
    ld h, d                                       ; $5d92: $62
    dec [hl]                                      ; $5d93: $35
    rrc d                                         ; $5d94: $cb $0a
    sbc l                                         ; $5d96: $9d
    ld e, [hl]                                    ; $5d97: $5e
    db $fc                                        ; $5d98: $fc
    ld d, [hl]                                    ; $5d99: $56
    ld [hl], $0d                                  ; $5d9a: $36 $0d
    add sp, $56                                   ; $5d9c: $e8 $56
    ld l, $e1                                     ; $5d9e: $2e $e1
    xor l                                         ; $5da0: $ad
    ccf                                           ; $5da1: $3f
    jr jr_069_5dfe                                ; $5da2: $18 $5a

    dec de                                        ; $5da4: $1b
    rst $20                                       ; $5da5: $e7
    ld h, c                                       ; $5da6: $61
    sbc b                                         ; $5da7: $98
    xor $df                                       ; $5da8: $ee $df
    ld [hl], e                                    ; $5daa: $73
    sbc [hl]                                      ; $5dab: $9e
    ld h, a                                       ; $5dac: $67
    ld a, c                                       ; $5dad: $79
    sub e                                         ; $5dae: $93
    pop af                                        ; $5daf: $f1
    di                                            ; $5db0: $f3
    cp $00                                        ; $5db1: $fe $00
    db $fd                                        ; $5db3: $fd
    nop                                           ; $5db4: $00
    sub a                                         ; $5db5: $97
    dec a                                         ; $5db6: $3d
    ld h, e                                       ; $5db7: $63
    xor c                                         ; $5db8: $a9
    dec [hl]                                      ; $5db9: $35
    db $fc                                        ; $5dba: $fc
    ld a, b                                       ; $5dbb: $78
    sbc c                                         ; $5dbc: $99
    jp c, $fa80                                   ; $5dbd: $da $80 $fa

    or e                                          ; $5dc0: $b3
    cp $60                                        ; $5dc1: $fe $60
    ld l, b                                       ; $5dc3: $68
    add hl, sp                                    ; $5dc4: $39
    db $dd                                        ; $5dc5: $dd
    ld de, $e3e9                                  ; $5dc6: $11 $e9 $e3
    cp $00                                        ; $5dc9: $fe $00
    add hl, bc                                    ; $5dcb: $09
    ld a, [$a7d3]                                 ; $5dcc: $fa $d3 $a7
    dec [hl]                                      ; $5dcf: $35
    or b                                          ; $5dd0: $b0
    dec sp                                        ; $5dd1: $3b
    cp b                                          ; $5dd2: $b8
    or b                                          ; $5dd3: $b0
    ld h, c                                       ; $5dd4: $61
    or h                                          ; $5dd5: $b4
    reti                                          ; $5dd6: $d9


    add $bb                                       ; $5dd7: $c6 $bb
    adc $e9                                       ; $5dd9: $ce $e9
    db $fd                                        ; $5ddb: $fd
    ld bc, $3689                                  ; $5ddc: $01 $89 $36
    cp a                                          ; $5ddf: $bf
    inc sp                                        ; $5de0: $33
    halt                                          ; $5de1: $76
    sbc d                                         ; $5de2: $9a
    ret z                                         ; $5de3: $c8

    ld a, a                                       ; $5de4: $7f
    ld [hl-], a                                   ; $5de5: $32
    sbc d                                         ; $5de6: $9a
    and b                                         ; $5de7: $a0
    rst $38                                       ; $5de8: $ff
    call nz, $c2f0                                ; $5de9: $c4 $f0 $c2
    call c, $9b1f                                 ; $5dec: $dc $1f $9b
    ld b, a                                       ; $5def: $47
    ld a, [$b2c6]                                 ; $5df0: $fa $c6 $b2
    reti                                          ; $5df3: $d9


    or c                                          ; $5df4: $b1
    ld d, a                                       ; $5df5: $57
    ret nc                                        ; $5df6: $d0

    ld e, [hl]                                    ; $5df7: $5e
    ld c, h                                       ; $5df8: $4c
    or d                                          ; $5df9: $b2
    ld [hl], c                                    ; $5dfa: $71
    cp d                                          ; $5dfb: $ba
    ld a, l                                       ; $5dfc: $7d
    ld e, c                                       ; $5dfd: $59

jr_069_5dfe:
    sbc $8a                                       ; $5dfe: $de $8a
    ld sp, $eec0                                  ; $5e00: $31 $c0 $ee
    rrca                                          ; $5e03: $0f
    sub a                                         ; $5e04: $97
    ld [hl+], a                                   ; $5e05: $22
    ld l, l                                       ; $5e06: $6d
    ld d, b                                       ; $5e07: $50
    and l                                         ; $5e08: $a5
    sub l                                         ; $5e09: $95
    dec a                                         ; $5e0a: $3d
    rst $18                                       ; $5e0b: $df
    halt                                          ; $5e0c: $76
    ld a, d                                       ; $5e0d: $7a
    cp l                                          ; $5e0e: $bd
    cpl                                           ; $5e0f: $2f
    add [hl]                                      ; $5e10: $86
    or c                                          ; $5e11: $b1
    ei                                            ; $5e12: $fb
    inc bc                                        ; $5e13: $03
    sub a                                         ; $5e14: $97
    ld [hl+], a                                   ; $5e15: $22
    ld l, l                                       ; $5e16: $6d
    ld d, b                                       ; $5e17: $50
    ld h, l                                       ; $5e18: $65
    reti                                          ; $5e19: $d9


    di                                            ; $5e1a: $f3
    ld l, l                                       ; $5e1b: $6d
    and a                                         ; $5e1c: $a7
    rst $10                                       ; $5e1d: $d7
    ei                                            ; $5e1e: $fb
    ld h, d                                       ; $5e1f: $62
    jr @-$43                                      ; $5e20: $18 $bb

    ccf                                           ; $5e22: $3f
    adc c                                         ; $5e23: $89
    ld [hl], $bf                                  ; $5e24: $36 $bf
    inc sp                                        ; $5e26: $33
    ld e, d                                       ; $5e27: $5a
    and a                                         ; $5e28: $a7
    rst $20                                       ; $5e29: $e7

jr_069_5e2a:
    ld a, [hl-]                                   ; $5e2a: $3a
    jp hl                                         ; $5e2b: $e9


    ld e, c                                       ; $5e2c: $59
    db $10                                        ; $5e2d: $10
    add $70                                       ; $5e2e: $c6 $70
    ld a, a                                       ; $5e30: $7f
    sub a                                         ; $5e31: $97
    ld [hl+], a                                   ; $5e32: $22
    ld l, l                                       ; $5e33: $6d
    ld d, b                                       ; $5e34: $50
    ld h, l                                       ; $5e35: $65
    rst $30                                       ; $5e36: $f7
    rst $28                                       ; $5e37: $ef
    ld c, $2e                                     ; $5e38: $0e $2e
    ld l, h                                       ; $5e3a: $6c
    jr jr_069_5e2a                                ; $5e3b: $18 $ed

    ld h, l                                       ; $5e3d: $65
    ld [hl], $de                                  ; $5e3e: $36 $de
    ld [hl], l                                    ; $5e40: $75
    ld c, [hl]                                    ; $5e41: $4e
    rst $28                                       ; $5e42: $ef
    rrca                                          ; $5e43: $0f
    adc c                                         ; $5e44: $89
    ld [hl], $bf                                  ; $5e45: $36 $bf
    inc sp                                        ; $5e47: $33
    ld e, d                                       ; $5e48: $5a
    and a                                         ; $5e49: $a7
    sbc e                                         ; $5e4a: $9b
    ld l, l                                       ; $5e4b: $6d
    db $e4                                        ; $5e4c: $e4
    ld [hl], h                                    ; $5e4d: $74
    di                                            ; $5e4e: $f3
    or e                                          ; $5e4f: $b3
    rra                                           ; $5e50: $1f
    rst $30                                       ; $5e51: $f7
    rlca                                          ; $5e52: $07
    rst $20                                       ; $5e53: $e7
    ld a, $a6                                     ; $5e54: $3e $a6
    daa                                           ; $5e56: $27
    ld l, [hl]                                    ; $5e57: $6e
    inc d                                         ; $5e58: $14
    ld e, a                                       ; $5e59: $5f
    ld a, $17                                     ; $5e5a: $3e $17
    adc a                                         ; $5e5c: $8f
    nop                                           ; $5e5d: $00
    ld [hl], $a0                                  ; $5e5e: $36 $a0
    sbc e                                         ; $5e60: $9b

jr_069_5e61:
    cp c                                          ; $5e61: $b9
    inc b                                         ; $5e62: $04
    inc a                                         ; $5e63: $3c
    dec sp                                        ; $5e64: $3b
    jr jr_069_5e61                                ; $5e65: $18 $fa

    ld bc, $4ce7                                  ; $5e67: $01 $e7 $4c
    ld a, [hl]                                    ; $5e6a: $7e
    rst $38                                       ; $5e6b: $ff
    sbc d                                         ; $5e6c: $9a
    cp l                                          ; $5e6d: $bd
    ld sp, hl                                     ; $5e6e: $f9
    nop                                           ; $5e6f: $00
    rla                                           ; $5e70: $17
    adc a                                         ; $5e71: $8f
    nop                                           ; $5e72: $00
    ld [hl], $a0                                  ; $5e73: $36 $a0
    sbc e                                         ; $5e75: $9b
    rst $00                                       ; $5e76: $c7
    sbc h                                         ; $5e77: $9c
    nop                                           ; $5e78: $00
    ld [$1707], a                                 ; $5e79: $ea $07 $17
    adc a                                         ; $5e7c: $8f
    nop                                           ; $5e7d: $00
    ld [hl], $a0                                  ; $5e7e: $36 $a0
    ld d, a                                       ; $5e80: $57
    ret nc                                        ; $5e81: $d0

    ld e, [hl]                                    ; $5e82: $5e
    ld c, h                                       ; $5e83: $4c
    ld d, d                                       ; $5e84: $52
    ccf                                           ; $5e85: $3f
    rla                                           ; $5e86: $17
    cp a                                          ; $5e87: $bf
    sub l                                         ; $5e88: $95
    pop de                                        ; $5e89: $d1
    ld e, $3f                                     ; $5e8a: $1e $3f
    rla                                           ; $5e8c: $17
    adc a                                         ; $5e8d: $8f
    nop                                           ; $5e8e: $00
    ld [hl], $a0                                  ; $5e8f: $36 $a0
    sbc e                                         ; $5e91: $9b
    jp hl                                         ; $5e92: $e9


    ld d, e                                       ; $5e93: $53
    ccf                                           ; $5e94: $3f
    rla                                           ; $5e95: $17
    adc a                                         ; $5e96: $8f
    nop                                           ; $5e97: $00
    ld [hl], $a0                                  ; $5e98: $36 $a0
    rst $20                                       ; $5e9a: $e7
    adc $0f                                       ; $5e9b: $ce $0f
    db $fd                                        ; $5e9d: $fd
    nop                                           ; $5e9e: $00
    add hl, bc                                    ; $5e9f: $09
    ld sp, $031b                                  ; $5ea0: $31 $1b $03
    dec de                                        ; $5ea3: $1b
    ret nc                                        ; $5ea4: $d0

    di                                            ; $5ea5: $f3

Jump_069_5ea6:
    db $ed                                        ; $5ea6: $ed
    push bc                                       ; $5ea7: $c5
    db $f4                                        ; $5ea8: $f4
    db $e4                                        ; $5ea9: $e4
    xor h                                         ; $5eaa: $ac
    rra                                           ; $5eab: $1f
    ld e, e                                       ; $5eac: $5b
    xor c                                         ; $5ead: $a9
    ld [hl], d                                    ; $5eae: $72
    call z, Call_069_63d8                         ; $5eaf: $cc $d8 $63
    dec de                                        ; $5eb2: $1b
    ret nc                                        ; $5eb3: $d0

    di                                            ; $5eb4: $f3
    db $ed                                        ; $5eb5: $ed
    push bc                                       ; $5eb6: $c5
    db $f4                                        ; $5eb7: $f4
    db $e4                                        ; $5eb8: $e4
    xor h                                         ; $5eb9: $ac
    rra                                           ; $5eba: $1f
    ld [c], a                                     ; $5ebb: $e2
    reti                                          ; $5ebc: $d9


    cp b                                          ; $5ebd: $b8
    add d                                         ; $5ebe: $82
    ld a, [hl+]                                   ; $5ebf: $2a
    xor l                                         ; $5ec0: $ad
    db $d3                                        ; $5ec1: $d3
    adc e                                         ; $5ec2: $8b
    sbc c                                         ; $5ec3: $99
    sbc [hl]                                      ; $5ec4: $9e
    rrca                                          ; $5ec5: $0f
    ld e, e                                       ; $5ec6: $5b
    xor c                                         ; $5ec7: $a9
    ld [hl], d                                    ; $5ec8: $72
    call z, Call_069_63d8                         ; $5ec9: $cc $d8 $63
    dec de                                        ; $5ecc: $1b
    ret nc                                        ; $5ecd: $d0

    dec l                                         ; $5ece: $2d
    sub e                                         ; $5ecf: $93
    ld d, $44                                     ; $5ed0: $16 $44
    set 7, d                                      ; $5ed2: $cb $fa
    ld bc, $a95b                                  ; $5ed4: $01 $5b $a9
    ld [hl], d                                    ; $5ed7: $72
    call z, $e3d8                                 ; $5ed8: $cc $d8 $e3
    ld a, [de]                                    ; $5edb: $1a
    ret nc                                        ; $5edc: $d0

    dec l                                         ; $5edd: $2d
    sub e                                         ; $5ede: $93
    ld d, $44                                     ; $5edf: $16 $44
    set 7, d                                      ; $5ee1: $cb $fa
    ld bc, $a95b                                  ; $5ee3: $01 $5b $a9
    ld [hl], d                                    ; $5ee6: $72
    call z, $e3d8                                 ; $5ee7: $cc $d8 $e3
    dec de                                        ; $5eea: $1b
    ret nc                                        ; $5eeb: $d0

    dec l                                         ; $5eec: $2d
    sub e                                         ; $5eed: $93
    ld d, $44                                     ; $5eee: $16 $44
    set 7, d                                      ; $5ef0: $cb $fa
    ld bc, $8209                                  ; $5ef2: $01 $09 $82
    ld a, l                                       ; $5ef5: $7d
    add e                                         ; $5ef6: $83
    ld [$a034], a                                 ; $5ef7: $ea $34 $a0
    ld e, e                                       ; $5efa: $5b
    ld h, $2d                                     ; $5efb: $26 $2d
    adc b                                         ; $5efd: $88
    sub [hl]                                      ; $5efe: $96
    push af                                       ; $5eff: $f5
    inc bc                                        ; $5f00: $03
    dec sp                                        ; $5f01: $3b
    cp b                                          ; $5f02: $b8
    or b                                          ; $5f03: $b0
    ld bc, $7715                                  ; $5f04: $01 $15 $77
    dec bc                                        ; $5f07: $0b
    or l                                          ; $5f08: $b5
    ld bc, $d4bd                                  ; $5f09: $01 $bd $d4
    ld b, l                                       ; $5f0c: $45
    ld l, d                                       ; $5f0d: $6a
    push bc                                       ; $5f0e: $c5
    ld h, e                                       ; $5f0f: $63
    ld a, [hl]                                    ; $5f10: $7e
    ld l, c                                       ; $5f11: $69
    ld [$3b07], a                                 ; $5f12: $ea $07 $3b

Call_069_5f15:
    cp b                                          ; $5f15: $b8
    or b                                          ; $5f16: $b0
    ld bc, $7715                                  ; $5f17: $01 $15 $77
    dec bc                                        ; $5f1a: $0b
    or l                                          ; $5f1b: $b5
    ld bc, $b715                                  ; $5f1c: $01 $15 $b7
    sub a                                         ; $5f1f: $97
    dec h                                         ; $5f20: $25
    rst $38                                       ; $5f21: $ff
    rst $00                                       ; $5f22: $c7
    rrca                                          ; $5f23: $0f
    rst $20                                       ; $5f24: $e7
    ld [hl], e                                    ; $5f25: $73
    add c                                         ; $5f26: $81
    dec a                                         ; $5f27: $3d
    ld [hl], $a0                                  ; $5f28: $36 $a0
    ld [c], a                                     ; $5f2a: $e2
    ld h, $19                                     ; $5f2b: $26 $19
    sbc h                                         ; $5f2d: $9c
    ld d, c                                       ; $5f2e: $51
    ccf                                           ; $5f2f: $3f
    dec sp                                        ; $5f30: $3b
    cp b                                          ; $5f31: $b8
    or b                                          ; $5f32: $b0
    ld bc, $7715                                  ; $5f33: $01 $15 $77
    dec bc                                        ; $5f36: $0b
    or l                                          ; $5f37: $b5
    ld bc, $d715                                  ; $5f38: $01 $15 $d7
    ld l, h                                       ; $5f3b: $6c
    inc de                                        ; $5f3c: $13
    ld b, a                                       ; $5f3d: $47
    ld a, $7e                                     ; $5f3e: $3e $7e
    sub a                                         ; $5f40: $97
    jr c, jr_069_5f9d                             ; $5f41: $38 $5a

    sbc [hl]                                      ; $5f43: $9e
    ld b, $6a                                     ; $5f44: $06 $6a
    push bc                                       ; $5f46: $c5
    call $99a8                                    ; $5f47: $cd $a8 $99
    ld bc, $a8cf                                  ; $5f4a: $01 $cf $a8
    rra                                           ; $5f4d: $1f
    rla                                           ; $5f4e: $17
    adc a                                         ; $5f4f: $8f
    nop                                           ; $5f50: $00
    ld [hl], $a0                                  ; $5f51: $36 $a0
    ld d, a                                       ; $5f53: $57
    ld d, b                                       ; $5f54: $50
    ld [hl], l                                    ; $5f55: $75
    sbc h                                         ; $5f56: $9c
    ld d, c                                       ; $5f57: $51
    ccf                                           ; $5f58: $3f
    dec sp                                        ; $5f59: $3b
    cp b                                          ; $5f5a: $b8
    or b                                          ; $5f5b: $b0
    ld bc, $7715                                  ; $5f5c: $01 $15 $77
    dec bc                                        ; $5f5f: $0b
    or l                                          ; $5f60: $b5
    ld bc, $884d                                  ; $5f61: $01 $4d $88
    ccf                                           ; $5f64: $3f
    ld h, e                                       ; $5f65: $63
    and [hl]                                      ; $5f66: $a6
    ld b, h                                       ; $5f67: $44
    call z, $1fa3                                 ; $5f68: $cc $a3 $1f
    dec sp                                        ; $5f6b: $3b
    cp b                                          ; $5f6c: $b8
    or b                                          ; $5f6d: $b0
    ld bc, $7715                                  ; $5f6e: $01 $15 $77
    dec bc                                        ; $5f71: $0b
    or l                                          ; $5f72: $b5
    ld bc, $b715                                  ; $5f73: $01 $15 $b7
    inc c                                         ; $5f76: $0c
    ld l, l                                       ; $5f77: $6d
    and b                                         ; $5f78: $a0
    or $32                                        ; $5f79: $f6 $32
    jp Jump_069_7a8a                              ; $5f7b: $c3 $8a $7a


    ld a, a                                       ; $5f7e: $7f
    add hl, bc                                    ; $5f7f: $09
    ld [$4963], a                                 ; $5f80: $ea $63 $49
    ld c, [hl]                                    ; $5f83: $4e
    jp Jump_000_2f68                              ; $5f84: $c3 $68 $2f


    adc b                                         ; $5f87: $88
    xor e                                         ; $5f88: $ab
    and a                                         ; $5f89: $a7
    cp e                                          ; $5f8a: $bb
    xor l                                         ; $5f8b: $ad
    ldh a, [$f4]                                  ; $5f8c: $f0 $f4
    inc bc                                        ; $5f8e: $03
    rst $20                                       ; $5f8f: $e7
    dec l                                         ; $5f90: $2d
    ld h, e                                       ; $5f91: $63
    ret nc                                        ; $5f92: $d0

    call z, $da26                                 ; $5f93: $cc $26 $da
    inc a                                         ; $5f96: $3c
    rst $08                                       ; $5f97: $cf
    dec bc                                        ; $5f98: $0b
    db $ec                                        ; $5f99: $ec
    or c                                          ; $5f9a: $b1
    rra                                           ; $5f9b: $1f
    rst $20                                       ; $5f9c: $e7

jr_069_5f9d:
    dec l                                         ; $5f9d: $2d
    ld h, e                                       ; $5f9e: $63
    ret nc                                        ; $5f9f: $d0

    call z, $da26                                 ; $5fa0: $cc $26 $da
    inc a                                         ; $5fa3: $3c
    rst $08                                       ; $5fa4: $cf
    dec bc                                        ; $5fa5: $0b
    db $ec                                        ; $5fa6: $ec
    ld [hl], c                                    ; $5fa7: $71
    rra                                           ; $5fa8: $1f
    rst $20                                       ; $5fa9: $e7
    dec l                                         ; $5faa: $2d
    ld h, e                                       ; $5fab: $63
    ret nc                                        ; $5fac: $d0

    call z, $da26                                 ; $5fad: $cc $26 $da
    inc a                                         ; $5fb0: $3c
    rst $08                                       ; $5fb1: $cf
    dec bc                                        ; $5fb2: $0b
    db $ec                                        ; $5fb3: $ec
    pop af                                        ; $5fb4: $f1
    rra                                           ; $5fb5: $1f
    rst $20                                       ; $5fb6: $e7
    dec l                                         ; $5fb7: $2d
    ld h, e                                       ; $5fb8: $63
    ret nc                                        ; $5fb9: $d0

    call z, $da26                                 ; $5fba: $cc $26 $da
    inc a                                         ; $5fbd: $3c
    rst $08                                       ; $5fbe: $cf
    dec bc                                        ; $5fbf: $0b
    db $ec                                        ; $5fc0: $ec
    add hl, bc                                    ; $5fc1: $09
    rra                                           ; $5fc2: $1f
    rst $20                                       ; $5fc3: $e7
    dec l                                         ; $5fc4: $2d
    ld h, e                                       ; $5fc5: $63
    ret nc                                        ; $5fc6: $d0

    call z, $da26                                 ; $5fc7: $cc $26 $da
    inc a                                         ; $5fca: $3c
    rst $08                                       ; $5fcb: $cf
    dec bc                                        ; $5fcc: $0b
    db $ec                                        ; $5fcd: $ec
    adc c                                         ; $5fce: $89
    rra                                           ; $5fcf: $1f
    rst $20                                       ; $5fd0: $e7
    dec l                                         ; $5fd1: $2d
    ld h, e                                       ; $5fd2: $63
    ret nc                                        ; $5fd3: $d0

    call z, $da26                                 ; $5fd4: $cc $26 $da
    inc a                                         ; $5fd7: $3c
    rst $08                                       ; $5fd8: $cf
    dec bc                                        ; $5fd9: $0b
    db $ec                                        ; $5fda: $ec
    ld c, c                                       ; $5fdb: $49
    rra                                           ; $5fdc: $1f
    ld e, e                                       ; $5fdd: $5b
    xor c                                         ; $5fde: $a9
    ld [hl], d                                    ; $5fdf: $72
    call z, $f3d8                                 ; $5fe0: $cc $d8 $f3
    ld e, [hl]                                    ; $5fe3: $5e
    db $e4                                        ; $5fe4: $e4
    jp nc, $3f63                                  ; $5fe5: $d2 $63 $3f

    ld e, e                                       ; $5fe8: $5b
    xor c                                         ; $5fe9: $a9
    ld [hl], d                                    ; $5fea: $72
    call z, $f3d8                                 ; $5feb: $cc $d8 $f3

Jump_069_5fee:
    ld e, [hl]                                    ; $5fee: $5e
    db $e4                                        ; $5fef: $e4
    jp nc, $3ee3                                  ; $5ff0: $d2 $e3 $3e

    ld e, e                                       ; $5ff3: $5b
    xor c                                         ; $5ff4: $a9
    ld [hl], d                                    ; $5ff5: $72
    call z, $f3d8                                 ; $5ff6: $cc $d8 $f3
    ld e, [hl]                                    ; $5ff9: $5e
    db $e4                                        ; $5ffa: $e4
    jp nc, Jump_000_3fe3                          ; $5ffb: $d2 $e3 $3f

    ld e, e                                       ; $5ffe: $5b
    xor c                                         ; $5fff: $a9
    ld [hl], d                                    ; $6000: $72
    call z, $f3d8                                 ; $6001: $cc $d8 $f3
    ld e, [hl]                                    ; $6004: $5e
    db $e4                                        ; $6005: $e4
    jp nc, Jump_000_3e13                          ; $6006: $d2 $13 $3e

    ld e, e                                       ; $6009: $5b
    xor c                                         ; $600a: $a9
    ld [hl], d                                    ; $600b: $72
    call z, $f3d8                                 ; $600c: $cc $d8 $f3
    ld e, [hl]                                    ; $600f: $5e
    db $e4                                        ; $6010: $e4
    jp nc, Jump_000_3f13                          ; $6011: $d2 $13 $3f

    ld e, e                                       ; $6014: $5b
    xor c                                         ; $6015: $a9
    ld [hl], d                                    ; $6016: $72
    call z, $f3d8                                 ; $6017: $cc $d8 $f3
    ld e, [hl]                                    ; $601a: $5e
    db $e4                                        ; $601b: $e4
    jp nc, Jump_000_3e93                          ; $601c: $d2 $93 $3e

    add hl, bc                                    ; $601f: $09
    ld a, [$cbdb]                                 ; $6020: $fa $db $cb
    cp e                                          ; $6023: $bb
    db $db                                        ; $6024: $db
    sbc e                                         ; $6025: $9b
    add [hl]                                      ; $6026: $86
    jp hl                                         ; $6027: $e9


    ld a, c                                       ; $6028: $79
    set 1, e                                      ; $6029: $cb $cb
    add d                                         ; $602b: $82
    sbc $2f                                       ; $602c: $de $2f
    ldh a, [$03]                                  ; $602e: $f0 $03
    dec sp                                        ; $6030: $3b
    cp b                                          ; $6031: $b8
    or b                                          ; $6032: $b0
    ld d, a                                       ; $6033: $57
    ld [hl], b                                    ; $6034: $70
    rst $10                                       ; $6035: $d7
    db $e3                                        ; $6036: $e3
    rlca                                          ; $6037: $07
    dec sp                                        ; $6038: $3b
    cp b                                          ; $6039: $b8
    or b                                          ; $603a: $b0
    ld d, a                                       ; $603b: $57
    ld [hl], b                                    ; $603c: $70
    rst $10                                       ; $603d: $d7
    db $e3                                        ; $603e: $e3
    rlca                                          ; $603f: $07
    sbc e                                         ; $6040: $9b
    rst $00                                       ; $6041: $c7
    inc c                                         ; $6042: $0c
    ld h, c                                       ; $6043: $61
    xor h                                         ; $6044: $ac
    adc c                                         ; $6045: $89
    ld [hl], $cf                                  ; $6046: $36 $cf
    di                                            ; $6048: $f3
    jp nz, $097c                                  ; $6049: $c2 $7c $09

    sbc d                                         ; $604c: $9a
    sbc l                                         ; $604d: $9d
    sub a                                         ; $604e: $97
    ld a, [$9b01]                                 ; $604f: $fa $01 $9b
    xor c                                         ; $6052: $a9
    ld l, h                                       ; $6053: $6c
    ld b, b                                       ; $6054: $40
    rst $08                                       ; $6055: $cf
    ld h, c                                       ; $6056: $61
    ld c, h                                       ; $6057: $4c
    ld c, [hl]                                    ; $6058: $4e
    inc bc                                        ; $6059: $03
    or l                                          ; $605a: $b5
    sub a                                         ; $605b: $97

jr_069_605c:
    jp nc, $bda7                                  ; $605c: $d2 $a7 $bd

    inc [hl]                                      ; $605f: $34
    push af                                       ; $6060: $f5
    inc bc                                        ; $6061: $03

jr_069_6062:
    sub a                                         ; $6062: $97
    pop bc                                        ; $6063: $c1
    inc c                                         ; $6064: $0c
    ld [hl], c                                    ; $6065: $71
    or h                                          ; $6066: $b4
    adc c                                         ; $6067: $89
    or $e2                                        ; $6068: $f6 $e2
    rst $38                                       ; $606a: $ff
    ld a, h                                       ; $606b: $7c
    ld a, $6d                                     ; $606c: $3e $6d
    ld b, b                                       ; $606e: $40
    or a                                          ; $606f: $b7

Call_069_6070:
    ld c, h                                       ; $6070: $4c
    ld e, d                                       ; $6071: $5a
    db $10                                        ; $6072: $10
    dec l                                         ; $6073: $2d
    ld l, e                                       ; $6074: $6b
    adc a                                         ; $6075: $8f
    db $fd                                        ; $6076: $fd
    nop                                           ; $6077: $00
    rla                                           ; $6078: $17
    call nz, Call_069_7b0c                        ; $6079: $c4 $0c $7b
    ld h, e                                       ; $607c: $63
    dec c                                         ; $607d: $0d
    db $ec                                        ; $607e: $ec
    ld h, [hl]                                    ; $607f: $66
    ld a, d                                       ; $6080: $7a
    jr jr_069_605c                                ; $6081: $18 $d9

    jr nc, jr_069_6062                            ; $6083: $30 $dd

    jp nz, $bdb4                                  ; $6085: $c2 $b4 $bd

    ldh a, [rSB]                                  ; $6088: $f0 $01
    sbc e                                         ; $608a: $9b
    rst $00                                       ; $608b: $c7
    inc c                                         ; $608c: $0c
    ld h, c                                       ; $608d: $61
    xor h                                         ; $608e: $ac
    ld h, c                                       ; $608f: $61
    ld a, [hl+]                                   ; $6090: $2a
    ld e, $03                                     ; $6091: $1e $03
    xor l                                         ; $6093: $ad
    rst $00                                       ; $6094: $c7
    ld a, [hl]                                    ; $6095: $7e
    sbc e                                         ; $6096: $9b
    rst $00                                       ; $6097: $c7
    inc c                                         ; $6098: $0c
    ld h, c                                       ; $6099: $61
    xor h                                         ; $609a: $ac
    ld h, c                                       ; $609b: $61
    ld a, [hl+]                                   ; $609c: $2a
    ld e, $03                                     ; $609d: $1e $03
    xor l                                         ; $609f: $ad
    rst $00                                       ; $60a0: $c7
    ld a, l                                       ; $60a1: $7d
    sbc e                                         ; $60a2: $9b
    rst $00                                       ; $60a3: $c7
    inc c                                         ; $60a4: $0c
    ld h, c                                       ; $60a5: $61
    xor h                                         ; $60a6: $ac
    ld h, c                                       ; $60a7: $61
    ld a, [hl+]                                   ; $60a8: $2a
    ld e, $03                                     ; $60a9: $1e $03
    xor l                                         ; $60ab: $ad
    rst $00                                       ; $60ac: $c7
    ld a, a                                       ; $60ad: $7f
    sbc e                                         ; $60ae: $9b
    rst $00                                       ; $60af: $c7
    inc c                                         ; $60b0: $0c
    ld h, c                                       ; $60b1: $61
    xor h                                         ; $60b2: $ac
    ld h, c                                       ; $60b3: $61
    ld a, [hl+]                                   ; $60b4: $2a
    ld e, $03                                     ; $60b5: $1e $03
    xor l                                         ; $60b7: $ad
    daa                                           ; $60b8: $27
    ld a, h                                       ; $60b9: $7c
    sbc e                                         ; $60ba: $9b
    rst $00                                       ; $60bb: $c7
    inc c                                         ; $60bc: $0c
    ld h, c                                       ; $60bd: $61
    xor h                                         ; $60be: $ac
    ld h, c                                       ; $60bf: $61
    ld a, [hl+]                                   ; $60c0: $2a
    ld e, $03                                     ; $60c1: $1e $03
    xor l                                         ; $60c3: $ad
    daa                                           ; $60c4: $27
    ld a, [hl]                                    ; $60c5: $7e
    sbc e                                         ; $60c6: $9b
    rst $00                                       ; $60c7: $c7
    inc c                                         ; $60c8: $0c
    ld h, c                                       ; $60c9: $61
    xor h                                         ; $60ca: $ac
    ld h, c                                       ; $60cb: $61
    ld a, [hl+]                                   ; $60cc: $2a
    ld e, $03                                     ; $60cd: $1e $03
    xor l                                         ; $60cf: $ad
    daa                                           ; $60d0: $27
    ld a, l                                       ; $60d1: $7d
    sbc e                                         ; $60d2: $9b
    rst $00                                       ; $60d3: $c7
    inc c                                         ; $60d4: $0c
    ld h, c                                       ; $60d5: $61
    xor h                                         ; $60d6: $ac
    ld h, c                                       ; $60d7: $61
    ld a, [hl+]                                   ; $60d8: $2a
    ld e, $03                                     ; $60d9: $1e $03
    xor l                                         ; $60db: $ad
    daa                                           ; $60dc: $27
    ld a, a                                       ; $60dd: $7f
    rla                                           ; $60de: $17
    adc a                                         ; $60df: $8f
    nop                                           ; $60e0: $00
    ld [hl], $4c                                  ; $60e1: $36 $4c
    scf                                           ; $60e3: $37
    dec sp                                        ; $60e4: $3b
    ld h, e                                       ; $60e5: $63
    inc c                                         ; $60e6: $0c
    ld a, b                                       ; $60e7: $78
    ld [hl], $1f                                  ; $60e8: $36 $1f
    ld [c], a                                     ; $60ea: $e2
    ld l, [hl]                                    ; $60eb: $6e
    ld h, c                                       ; $60ec: $61
    inc bc                                        ; $60ed: $03
    cp d                                          ; $60ee: $ba
    push hl                                       ; $60ef: $e5
    ld l, c                                       ; $60f0: $69
    sbc $dd                                       ; $60f1: $de $dd
    ld e, $1b                                     ; $60f3: $1e $1b
    ret c                                         ; $60f5: $d8

    xor l                                         ; $60f6: $ad
    ld c, h                                       ; $60f7: $4c
    ccf                                           ; $60f8: $3f
    ld a, [hl]                                    ; $60f9: $7e
    ld [c], a                                     ; $60fa: $e2
    dec bc                                        ; $60fb: $0b
    cp e                                          ; $60fc: $bb
    ld h, l                                       ; $60fd: $65
    call nc, $997f                                ; $60fe: $d4 $7f $99
    dec bc                                        ; $6101: $0b
    db $ed                                        ; $6102: $ed
    inc bc                                        ; $6103: $03
    rst $20                                       ; $6104: $e7
    inc a                                         ; $6105: $3c
    rst $08                                       ; $6106: $cf
    ld a, [c]                                     ; $6107: $f2
    ld h, $e3                                     ; $6108: $26 $e3
    ld h, a                                       ; $610a: $67
    adc a                                         ; $610b: $8f
    db $fd                                        ; $610c: $fd
    nop                                           ; $610d: $00
    rst $20                                       ; $610e: $e7
    inc a                                         ; $610f: $3c
    rst $08                                       ; $6110: $cf
    ld a, [c]                                     ; $6111: $f2
    ld h, $e3                                     ; $6112: $26 $e3
    ld h, a                                       ; $6114: $67
    adc a                                         ; $6115: $8f
    ei                                            ; $6116: $fb
    nop                                           ; $6117: $00
    add hl, bc                                    ; $6118: $09
    ld a, [$cbdb]                                 ; $6119: $fa $db $cb
    cp e                                          ; $611c: $bb
    db $db                                        ; $611d: $db
    sbc e                                         ; $611e: $9b
    ld b, $76                                     ; $611f: $06 $76
    db $eb                                        ; $6121: $eb
    ld a, a                                       ; $6122: $7f
    cp $44                                        ; $6123: $fe $44
    and [hl]                                      ; $6125: $a6
    cp c                                          ; $6126: $b9
    inc l                                         ; $6127: $2c
    rra                                           ; $6128: $1f
    ld [c], a                                     ; $6129: $e2
    ld l, [hl]                                    ; $612a: $6e
    ld h, c                                       ; $612b: $61
    inc bc                                        ; $612c: $03
    sbc d                                         ; $612d: $9a
    and b                                         ; $612e: $a0
    reti                                          ; $612f: $d9


    add l                                         ; $6130: $85
    pop de                                        ; $6131: $d1
    ld l, [hl]                                    ; $6132: $6e
    ld [hl], l                                    ; $6133: $75
    jp hl                                         ; $6134: $e9


    db $f4                                        ; $6135: $f4
    ld [bc], a                                    ; $6136: $02
    db $fd                                        ; $6137: $fd
    nop                                           ; $6138: $00
    add hl, bc                                    ; $6139: $09
    ld a, [$cbdb]                                 ; $613a: $fa $db $cb
    cp e                                          ; $613d: $bb
    db $db                                        ; $613e: $db
    sbc e                                         ; $613f: $9b
    ld b, $36                                     ; $6140: $06 $36
    ld [hl], c                                    ; $6142: $71
    and h                                         ; $6143: $a4
    rst $10                                       ; $6144: $d7
    or b                                          ; $6145: $b0
    di                                            ; $6146: $f3
    inc bc                                        ; $6147: $03
    dec sp                                        ; $6148: $3b
    cp b                                          ; $6149: $b8
    or b                                          ; $614a: $b0
    ld bc, $7715                                  ; $614b: $01 $15 $77
    dec bc                                        ; $614e: $0b
    or l                                          ; $614f: $b5
    ld bc, $9c4d                                  ; $6150: $01 $4d $9c
    push af                                       ; $6153: $f5
    rlca                                          ; $6154: $07
    ld b, e                                       ; $6155: $43
    ccf                                           ; $6156: $3f
    add hl, bc                                    ; $6157: $09
    ld a, [$cbdb]                                 ; $6158: $fa $db $cb
    cp e                                          ; $615b: $bb
    db $db                                        ; $615c: $db
    sbc e                                         ; $615d: $9b
    add [hl]                                      ; $615e: $86
    jp hl                                         ; $615f: $e9


    dec h                                         ; $6160: $25
    xor $99                                       ; $6161: $ee $99
    ld h, c                                       ; $6163: $61
    ld e, c                                       ; $6164: $59
    ld a, $09                                     ; $6165: $3e $09
    ld a, [$cbdb]                                 ; $6167: $fa $db $cb
    cp e                                          ; $616a: $bb
    db $db                                        ; $616b: $db
    sbc e                                         ; $616c: $9b
    add [hl]                                      ; $616d: $86
    jp hl                                         ; $616e: $e9


    adc [hl]                                      ; $616f: $8e
    ld c, b                                       ; $6170: $48
    rra                                           ; $6171: $1f
    rra                                           ; $6172: $1f
    add hl, bc                                    ; $6173: $09
    ld a, [$cbdb]                                 ; $6174: $fa $db $cb
    cp e                                          ; $6177: $bb
    db $db                                        ; $6178: $db
    sbc e                                         ; $6179: $9b

Call_069_617a:
    ld b, $76                                     ; $617a: $06 $76
    add a                                         ; $617c: $87
    ld l, a                                       ; $617d: $6f
    db $e3                                        ; $617e: $e3
    ld a, [c]                                     ; $617f: $f2
    rlca                                          ; $6180: $07
    ld [c], a                                     ; $6181: $e2
    ld h, $b9                                     ; $6182: $26 $b9
    ld l, e                                       ; $6184: $6b
    sbc l                                         ; $6185: $9d
    db $fc                                        ; $6186: $fc
    nop                                           ; $6187: $00
    ld [c], a                                     ; $6188: $e2
    ld l, [hl]                                    ; $6189: $6e
    ld h, c                                       ; $618a: $61
    inc bc                                        ; $618b: $03
    ld a, d                                       ; $618c: $7a
    sbc c                                         ; $618d: $99
    ld sp, $f7aa                                  ; $618e: $31 $aa $f7
    and l                                         ; $6191: $a5
    sbc l                                         ; $6192: $9d
    ld [hl], c                                    ; $6193: $71
    cp l                                          ; $6194: $bd
    ld [hl], b                                    ; $6195: $70
    ld a, $3b                                     ; $6196: $3e $3b
    cp b                                          ; $6198: $b8
    or b                                          ; $6199: $b0
    ld h, c                                       ; $619a: $61
    or h                                          ; $619b: $b4
    sub a                                         ; $619c: $97
    reti                                          ; $619d: $d9


    ld a, b                                       ; $619e: $78
    rst $10                                       ; $619f: $d7
    add hl, sp                                    ; $61a0: $39
    db $fd                                        ; $61a1: $fd
    nop                                           ; $61a2: $00
    ld e, e                                       ; $61a3: $5b
    xor c                                         ; $61a4: $a9
    ld [hl], d                                    ; $61a5: $72
    call z, $e3d8                                 ; $61a6: $cc $d8 $e3
    ld a, [de]                                    ; $61a9: $1a
    ret nc                                        ; $61aa: $d0

    di                                            ; $61ab: $f3
    db $ed                                        ; $61ac: $ed
    push bc                                       ; $61ad: $c5
    db $f4                                        ; $61ae: $f4
    db $e4                                        ; $61af: $e4
    xor h                                         ; $61b0: $ac
    rra                                           ; $61b1: $1f
    adc c                                         ; $61b2: $89
    dec bc                                        ; $61b3: $0b
    or e                                          ; $61b4: $b3
    ld [hl], a                                    ; $61b5: $77
    ld c, h                                       ; $61b6: $4c
    or d                                          ; $61b7: $b2
    and a                                         ; $61b8: $a7
    or $f8                                        ; $61b9: $f6 $f8
    and e                                         ; $61bb: $a3
    ld c, a                                       ; $61bc: $4f
    ld hl, sp+$00                                 ; $61bd: $f8 $00
    ld e, e                                       ; $61bf: $5b
    ld l, c                                       ; $61c0: $69
    ld l, c                                       ; $61c1: $69
    ret z                                         ; $61c2: $c8

    add [hl]                                      ; $61c3: $86
    jp hl                                         ; $61c4: $e9


    push bc                                       ; $61c5: $c5
    ld c, h                                       ; $61c6: $4c
    rst $08                                       ; $61c7: $cf
    rlca                                          ; $61c8: $07
    add hl, bc                                    ; $61c9: $09
    ld sp, $031b                                  ; $61ca: $31 $1b $03
    dec de                                        ; $61cd: $1b
    ret nc                                        ; $61ce: $d0

    dec l                                         ; $61cf: $2d
    sub e                                         ; $61d0: $93
    ld d, $44                                     ; $61d1: $16 $44
    set 7, d                                      ; $61d3: $cb $fa
    ld bc, $8ee7                                  ; $61d5: $01 $e7 $8e
    ret                                           ; $61d8: $c9


    sub a                                         ; $61d9: $97
    ld [hl], a                                    ; $61da: $77
    or a                                          ; $61db: $b7
    scf                                           ; $61dc: $37
    dec c                                         ; $61dd: $0d
    and e                                         ; $61de: $a3
    cp l                                          ; $61df: $bd
    sub h                                         ; $61e0: $94
    ld a, $77                                     ; $61e1: $3e $77
    ld b, c                                       ; $61e3: $41
    dec de                                        ; $61e4: $1b
    ret nc                                        ; $61e5: $d0

    di                                            ; $61e6: $f3
    ld l, l                                       ; $61e7: $6d
    and a                                         ; $61e8: $a7

jr_069_61e9:
    rst $10                                       ; $61e9: $d7
    ei                                            ; $61ea: $fb
    ld h, d                                       ; $61eb: $62
    jr jr_069_61e9                                ; $61ec: $18 $fb

    nop                                           ; $61ee: $00
    dec sp                                        ; $61ef: $3b
    cp b                                          ; $61f0: $b8
    or b                                          ; $61f1: $b0
    sbc e                                         ; $61f2: $9b
    ld b, a                                       ; $61f3: $47
    ld a, [hl-]                                   ; $61f4: $3a
    reti                                          ; $61f5: $d9


    add b                                         ; $61f6: $80
    sbc [hl]                                      ; $61f7: $9e
    ld l, a                                       ; $61f8: $6f
    dec sp                                        ; $61f9: $3b
    db $d3                                        ; $61fa: $d3
    ld e, [hl]                                    ; $61fb: $5e
    rst $28                                       ; $61fc: $ef
    adc e                                         ; $61fd: $8b
    ld h, c                                       ; $61fe: $61
    db $ec                                        ; $61ff: $ec
    inc bc                                        ; $6200: $03
    rst $20                                       ; $6201: $e7
    ret nc                                        ; $6202: $d0

    adc h                                         ; $6203: $8c
    cp a                                          ; $6204: $bf
    ld [hl], b                                    ; $6205: $70
    ld a, [de]                                    ; $6206: $1a
    ret nc                                        ; $6207: $d0

    dec hl                                        ; $6208: $2b
    xor b                                         ; $6209: $a8
    ld a, [hl-]                                   ; $620a: $3a
    adc $a8                                       ; $620b: $ce $a8
    rra                                           ; $620d: $1f
    add hl, bc                                    ; $620e: $09
    ld a, [$cbdb]                                 ; $620f: $fa $db $cb
    cp e                                          ; $6212: $bb
    db $db                                        ; $6213: $db
    sbc e                                         ; $6214: $9b
    add [hl]                                      ; $6215: $86
    jp hl                                         ; $6216: $e9


    ld a, c                                       ; $6217: $79
    ld l, a                                       ; $6218: $6f
    ld sp, hl                                     ; $6219: $f9
    sub e                                         ; $621a: $93
    rra                                           ; $621b: $1f
    dec sp                                        ; $621c: $3b
    cp b                                          ; $621d: $b8
    ld [$01a7], sp                                ; $621e: $08 $a7 $01
    db $dd                                        ; $6221: $dd
    ld [hl-], a                                   ; $6222: $32
    ld l, c                                       ; $6223: $69
    ld b, c                                       ; $6224: $41
    or h                                          ; $6225: $b4

Call_069_6226:
    xor h                                         ; $6226: $ac
    rra                                           ; $6227: $1f
    dec sp                                        ; $6228: $3b
    cp b                                          ; $6229: $b8
    or b                                          ; $622a: $b0
    ld h, c                                       ; $622b: $61
    or h                                          ; $622c: $b4
    adc c                                         ; $622d: $89
    ld [hl], $5e                                  ; $622e: $36 $5e
    xor b                                         ; $6230: $a8
    adc [hl]                                      ; $6231: $8e
    ld b, c                                       ; $6232: $41
    dec de                                        ; $6233: $1b
    ret nc                                        ; $6234: $d0

    dec l                                         ; $6235: $2d
    sub e                                         ; $6236: $93
    ld d, $44                                     ; $6237: $16 $44
    set 7, d                                      ; $6239: $cb $fa
    ld bc, $b83b                                  ; $623b: $01 $3b $b8
    or b                                          ; $623e: $b0
    ld h, c                                       ; $623f: $61
    or h                                          ; $6240: $b4
    sub a                                         ; $6241: $97
    ld [hl+], a                                   ; $6242: $22
    dec de                                        ; $6243: $1b
    di                                            ; $6244: $f3
    add sp, $07                                   ; $6245: $e8 $07
    ld e, e                                       ; $6247: $5b
    xor c                                         ; $6248: $a9
    ld [hl], d                                    ; $6249: $72
    call z, $0da8                                 ; $624a: $cc $a8 $0d
    ld d, e                                       ; $624d: $53
    pop af                                        ; $624e: $f1
    jr jr_069_62b9                                ; $624f: $18 $68

    dec a                                         ; $6251: $3d
    and $03                                       ; $6252: $e6 $03
    adc c                                         ; $6254: $89
    or e                                          ; $6255: $b3
    ld e, [hl]                                    ; $6256: $5e
    jr c, jr_069_6296                             ; $6257: $38 $3d

    xor $03                                       ; $6259: $ee $03
    sbc e                                         ; $625b: $9b
    rst $00                                       ; $625c: $c7
    ld l, e                                       ; $625d: $6b
    ld l, b                                       ; $625e: $68
    ld b, b                                       ; $625f: $40
    rst $08                                       ; $6260: $cf
    or a                                          ; $6261: $b7
    rla                                           ; $6262: $17
    db $d3                                        ; $6263: $d3
    sub e                                         ; $6264: $93
    or e                                          ; $6265: $b3
    ld a, [hl]                                    ; $6266: $7e
    sbc e                                         ; $6267: $9b
    rst $00                                       ; $6268: $c7
    inc c                                         ; $6269: $0c
    ld h, c                                       ; $626a: $61
    xor h                                         ; $626b: $ac
    ld bc, $d715                                  ; $626c: $01 $15 $d7
    ld l, h                                       ; $626f: $6c
    inc de                                        ; $6270: $13
    ld b, a                                       ; $6271: $47
    ld a, $7e                                     ; $6272: $3e $7e
    sub a                                         ; $6274: $97
    pop bc                                        ; $6275: $c1
    inc c                                         ; $6276: $0c
    ld [hl], c                                    ; $6277: $71
    or h                                          ; $6278: $b4
    adc c                                         ; $6279: $89
    or $e2                                        ; $627a: $f6 $e2
    rst $38                                       ; $627c: $ff
    ld a, h                                       ; $627d: $7c
    ld a, $6d                                     ; $627e: $3e $6d
    ld b, b                                       ; $6280: $40
    or a                                          ; $6281: $b7
    ld c, h                                       ; $6282: $4c
    ld e, d                                       ; $6283: $5a
    db $10                                        ; $6284: $10
    dec l                                         ; $6285: $2d
    ld l, e                                       ; $6286: $6b
    adc a                                         ; $6287: $8f
    ei                                            ; $6288: $fb
    nop                                           ; $6289: $00
    sub a                                         ; $628a: $97
    pop bc                                        ; $628b: $c1
    inc c                                         ; $628c: $0c
    ld [hl], c                                    ; $628d: $71
    or h                                          ; $628e: $b4
    adc c                                         ; $628f: $89
    or $e2                                        ; $6290: $f6 $e2
    rst $38                                       ; $6292: $ff
    ld a, h                                       ; $6293: $7c
    ld a, $6d                                     ; $6294: $3e $6d

jr_069_6296:
    ld b, b                                       ; $6296: $40
    or a                                          ; $6297: $b7
    ld c, h                                       ; $6298: $4c
    ld e, d                                       ; $6299: $5a
    db $10                                        ; $629a: $10
    dec l                                         ; $629b: $2d
    ld l, e                                       ; $629c: $6b
    adc a                                         ; $629d: $8f
    rst $38                                       ; $629e: $ff
    nop                                           ; $629f: $00
    sub a                                         ; $62a0: $97
    pop bc                                        ; $62a1: $c1
    inc c                                         ; $62a2: $0c
    ld [hl], c                                    ; $62a3: $71
    or h                                          ; $62a4: $b4
    adc c                                         ; $62a5: $89
    or $e2                                        ; $62a6: $f6 $e2
    rst $38                                       ; $62a8: $ff
    ld a, h                                       ; $62a9: $7c
    ld a, $6d                                     ; $62aa: $3e $6d
    ld b, b                                       ; $62ac: $40
    or a                                          ; $62ad: $b7
    ld c, h                                       ; $62ae: $4c
    ld e, d                                       ; $62af: $5a
    db $10                                        ; $62b0: $10
    dec l                                         ; $62b1: $2d
    ld l, e                                       ; $62b2: $6b
    ld c, a                                       ; $62b3: $4f
    ld hl, sp+$00                                 ; $62b4: $f8 $00
    add hl, bc                                    ; $62b6: $09
    add d                                         ; $62b7: $82
    inc sp                                        ; $62b8: $33

jr_069_62b9:
    db $ec                                        ; $62b9: $ec
    adc l                                         ; $62ba: $8d
    dec [hl]                                      ; $62bb: $35
    or b                                          ; $62bc: $b0
    sbc e                                         ; $62bd: $9b
    jp hl                                         ; $62be: $e9


    ld h, c                                       ; $62bf: $61
    ld h, h                                       ; $62c0: $64
    jp $0b74                                      ; $62c1: $c3 $74 $0b


    db $d3                                        ; $62c4: $d3
    or $c2                                        ; $62c5: $f6 $c2
    rlca                                          ; $62c7: $07
    sbc e                                         ; $62c8: $9b
    rla                                           ; $62c9: $17
    rst $20                                       ; $62ca: $e7
    ld b, c                                       ; $62cb: $41
    inc bc                                        ; $62cc: $03
    ld a, d                                       ; $62cd: $7a
    sbc c                                         ; $62ce: $99
    call Call_000_06cf                            ; $62cf: $cd $cf $06
    ld [hl], h                                    ; $62d2: $74
    or e                                          ; $62d3: $b3
    adc l                                         ; $62d4: $8d
    inc e                                         ; $62d5: $1c
    db $fd                                        ; $62d6: $fd
    nop                                           ; $62d7: $00
    dec sp                                        ; $62d8: $3b
    cp b                                          ; $62d9: $b8
    ld [$b4e7], sp                                ; $62da: $08 $e7 $b4
    ld e, [hl]                                    ; $62dd: $5e
    pop bc                                        ; $62de: $c1
    ld e, l                                       ; $62df: $5d
    ld l, a                                       ; $62e0: $6f
    ld a, $97                                     ; $62e1: $3e $97
    jr c, @+$5c                                   ; $62e3: $38 $5a

    sbc [hl]                                      ; $62e5: $9e
    xor $c0                                       ; $62e6: $ee $c0
    ld l, a                                       ; $62e8: $6f
    ret z                                         ; $62e9: $c8

    db $d3                                        ; $62ea: $d3
    add b                                         ; $62eb: $80
    ld l, [hl]                                    ; $62ec: $6e
    ld [hl], l                                    ; $62ed: $75
    jp hl                                         ; $62ee: $e9


    db $f4                                        ; $62ef: $f4
    ld [bc], a                                    ; $62f0: $02
    db $fd                                        ; $62f1: $fd
    nop                                           ; $62f2: $00
    ld e, e                                       ; $62f3: $5b

Jump_069_62f4:
    sbc c                                         ; $62f4: $99
    ld h, c                                       ; $62f5: $61
    adc a                                         ; $62f6: $8f
    ld c, e                                       ; $62f7: $4b
    inc bc                                        ; $62f8: $03
    sbc d                                         ; $62f9: $9a
    and b                                         ; $62fa: $a0
    cp a                                          ; $62fb: $bf
    cp l                                          ; $62fc: $bd
    cp h                                          ; $62fd: $bc
    cp e                                          ; $62fe: $bb
    cp l                                          ; $62ff: $bd
    ld sp, hl                                     ; $6300: $f9
    nop                                           ; $6301: $00
    sbc e                                         ; $6302: $9b
    xor c                                         ; $6303: $a9
    ld l, h                                       ; $6304: $6c
    ld b, b                                       ; $6305: $40
    rst $08                                       ; $6306: $cf
    ld h, c                                       ; $6307: $61
    ld c, h                                       ; $6308: $4c
    ld c, [hl]                                    ; $6309: $4e
    jp Jump_000_2f68                              ; $630a: $c3 $68 $2f


    and l                                         ; $630d: $a5
    rst $08                                       ; $630e: $cf
    ld e, l                                       ; $630f: $5d
    ret nc                                        ; $6310: $d0

    rrca                                          ; $6311: $0f
    ld [c], a                                     ; $6312: $e2
    ld l, [hl]                                    ; $6313: $6e
    ld h, c                                       ; $6314: $61
    inc bc                                        ; $6315: $03
    cp d                                          ; $6316: $ba
    ld [hl], l                                    ; $6317: $75
    rrca                                          ; $6318: $0f
    ld a, l                                       ; $6319: $7d
    ccf                                           ; $631a: $3f
    cp e                                          ; $631b: $bb
    push de                                       ; $631c: $d5
    and l                                         ; $631d: $a5
    db $d3                                        ; $631e: $d3
    dec bc                                        ; $631f: $0b
    ld a, $e2                                     ; $6320: $3e $e2
    ld l, [hl]                                    ; $6322: $6e
    ld h, c                                       ; $6323: $61
    inc bc                                        ; $6324: $03
    ld a, [hl+]                                   ; $6325: $2a
    ld l, [hl]                                    ; $6326: $6e
    add hl, de                                    ; $6327: $19
    db $dd                                        ; $6328: $dd
    ld [$e9d2], a                                 ; $6329: $ea $d2 $e9
    dec b                                         ; $632c: $05
    rra                                           ; $632d: $1f
    sbc e                                         ; $632e: $9b
    rst $00                                       ; $632f: $c7
    ld l, e                                       ; $6330: $6b
    ld l, b                                       ; $6331: $68
    ld b, b                                       ; $6332: $40
    scf                                           ; $6333: $37
    db $db                                        ; $6334: $db
    ret z                                         ; $6335: $c8

    pop de                                        ; $6336: $d1
    rrca                                          ; $6337: $0f
    sbc e                                         ; $6338: $9b
    rst $00                                       ; $6339: $c7
    inc c                                         ; $633a: $0c
    ld h, c                                       ; $633b: $61
    xor h                                         ; $633c: $ac
    dec sp                                        ; $633d: $3b
    ldh a, [rNR31]                                ; $633e: $f0 $1b
    ld a, [c]                                     ; $6340: $f2
    inc [hl]                                      ; $6341: $34
    ld c, h                                       ; $6342: $4c
    ld c, a                                       ; $6343: $4f
    jp c, $e2b3                                   ; $6344: $da $b3 $e2

    ld sp, $3ed0                                  ; $6347: $31 $d0 $3e
    add hl, bc                                    ; $634a: $09
    ld a, [$cbdb]                                 ; $634b: $fa $db $cb
    cp e                                          ; $634e: $bb
    db $db                                        ; $634f: $db
    sbc e                                         ; $6350: $9b
    add [hl]                                      ; $6351: $86
    jp hl                                         ; $6352: $e9


    add hl, sp                                    ; $6353: $39
    cpl                                           ; $6354: $2f
    add $0f                                       ; $6355: $c6 $0f
    dec sp                                        ; $6357: $3b
    cp b                                          ; $6358: $b8
    or b                                          ; $6359: $b0
    ld d, a                                       ; $635a: $57
    ld [hl], b                                    ; $635b: $70
    rst $10                                       ; $635c: $d7
    db $e3                                        ; $635d: $e3
    rlca                                          ; $635e: $07
    ld e, e                                       ; $635f: $5b
    jp hl                                         ; $6360: $e9


    or e                                          ; $6361: $b3
    add c                                         ; $6362: $81
    jp c, Jump_069_49cd                           ; $6363: $da $cd $49

    xor [hl]                                      ; $6366: $ae
    and b                                         ; $6367: $a0
    dec d                                         ; $6368: $15
    ld e, a                                       ; $6369: $5f
    jr @-$06                                      ; $636a: $18 $f8

    ld bc, $b83b                                  ; $636c: $01 $3b $b8
    ld [$1ba7], sp                                ; $636f: $08 $a7 $1b
    ld a, e                                       ; $6372: $7b
    sbc $93                                       ; $6373: $de $93
    dec c                                         ; $6375: $0d
    db $d3                                        ; $6376: $d3
    dec bc                                        ; $6377: $0b
    daa                                           ; $6378: $27
    dec a                                         ; $6379: $3d
    rra                                           ; $637a: $1f
    dec sp                                        ; $637b: $3b
    add $c5                                       ; $637c: $c6 $c5
    ld [hl], b                                    ; $637e: $70
    db $f4                                        ; $637f: $f4
    ld d, [hl]                                    ; $6380: $56
    and a                                         ; $6381: $a7
    rst $28                                       ; $6382: $ef
    ccf                                           ; $6383: $3f
    xor l                                         ; $6384: $ad
    ld h, a                                       ; $6385: $67
    rra                                           ; $6386: $1f
    db $db                                        ; $6387: $db
    rrca                                          ; $6388: $0f
    add hl, bc                                    ; $6389: $09
    sbc d                                         ; $638a: $9a
    rst $10                                       ; $638b: $d7
    or h                                          ; $638c: $b4
    sub c                                         ; $638d: $91
    dec a                                         ; $638e: $3d
    rst $30                                       ; $638f: $f7
    ld sp, $713d                                  ; $6390: $31 $3d $71
    and e                                         ; $6393: $a3

Jump_069_6394:
    ld hl, sp+$72                                 ; $6394: $f8 $72
    ld a, a                                       ; $6396: $7f
    add hl, bc                                    ; $6397: $09
    sbc d                                         ; $6398: $9a
    rst $10                                       ; $6399: $d7
    or h                                          ; $639a: $b4
    sub c                                         ; $639b: $91
    cp l                                          ; $639c: $bd
    ld a, b                                       ; $639d: $78
    inc b                                         ; $639e: $04
    or b                                          ; $639f: $b0
    ld bc, $ccdd                                  ; $63a0: $01 $dd $cc
    dec h                                         ; $63a3: $25
    ldh [$d9], a                                  ; $63a4: $e0 $d9
    pop bc                                        ; $63a6: $c1
    ret nc                                        ; $63a7: $d0

    add [hl]                                      ; $63a8: $86
    ld l, c                                       ; $63a9: $69
    ld [c], a                                     ; $63aa: $e2
    ld h, h                                       ; $63ab: $64
    and [hl]                                      ; $63ac: $a6
    ld [hl], c                                    ; $63ad: $71
    ld a, a                                       ; $63ae: $7f
    add hl, bc                                    ; $63af: $09
    sbc d                                         ; $63b0: $9a
    rst $10                                       ; $63b1: $d7
    or h                                          ; $63b2: $b4
    ld [hl], c                                    ; $63b3: $71
    ld a, d                                       ; $63b4: $7a
    adc $e4                                       ; $63b5: $ce $e4
    rst $30                                       ; $63b7: $f7
    xor a                                         ; $63b8: $af
    reti                                          ; $63b9: $d9


    sbc e                                         ; $63ba: $9b
    ei                                            ; $63bb: $fb
    inc bc                                        ; $63bc: $03
    add hl, bc                                    ; $63bd: $09
    sbc d                                         ; $63be: $9a
    rst $10                                       ; $63bf: $d7
    or h                                          ; $63c0: $b4
    ld [hl], c                                    ; $63c1: $71
    ld a, [hl+]                                   ; $63c2: $2a
    ld l, [hl]                                    ; $63c3: $6e
    sub d                                         ; $63c4: $92
    cp e                                          ; $63c5: $bb
    sub $c9                                       ; $63c6: $d6 $c9
    ld b, $6a                                     ; $63c8: $06 $6a
    scf                                           ; $63ca: $37
    adc a                                         ; $63cb: $8f
    add hl, sp                                    ; $63cc: $39

Jump_069_63cd:
    ld bc, $fbd4                                  ; $63cd: $01 $d4 $fb
    inc bc                                        ; $63d0: $03
    add hl, bc                                    ; $63d1: $09
    sbc d                                         ; $63d2: $9a
    rst $10                                       ; $63d3: $d7
    or h                                          ; $63d4: $b4
    sub c                                         ; $63d5: $91
    cp l                                          ; $63d6: $bd
    ld a, b                                       ; $63d7: $78

Call_069_63d8:
    inc b                                         ; $63d8: $04
    or b                                          ; $63d9: $b0
    ld bc, $82bd                                  ; $63da: $01 $bd $82
    or $62                                        ; $63dd: $f6 $62
    sub d                                         ; $63df: $92
    jp c, $dd30                                   ; $63e0: $da $30 $dd

    ld h, c                                       ; $63e3: $61
    ld [hl], a                                    ; $63e4: $77
    or a                                          ; $63e5: $b7
    cpl                                           ; $63e6: $2f
    bit 3, e                                      ; $63e7: $cb $5b
    ld sp, $d806                                  ; $63e9: $31 $06 $d8
    db $fd                                        ; $63ec: $fd
    ld bc, $9a09                                  ; $63ed: $01 $09 $9a
    rst $10                                       ; $63f0: $d7
    or h                                          ; $63f1: $b4
    sub c                                         ; $63f2: $91
    cp l                                          ; $63f3: $bd
    ld hl, sp-$53                                 ; $63f4: $f8 $ad
    adc h                                         ; $63f6: $8c
    or $d8                                        ; $63f7: $f6 $d8
    di                                            ; $63f9: $f3
    sub [hl]                                      ; $63fa: $96
    ld [hl], c                                    ; $63fb: $71
    or $34                                        ; $63fc: $f6 $34
    ld e, c                                       ; $63fe: $59
    add $d0                                       ; $63ff: $c6 $d0
    ld [hl], e                                    ; $6401: $73
    sub [hl]                                      ; $6402: $96
    ret                                           ; $6403: $c9


    ld e, c                                       ; $6404: $59
    rst $28                                       ; $6405: $ef
    rrca                                          ; $6406: $0f
    add hl, bc                                    ; $6407: $09
    sbc d                                         ; $6408: $9a
    rst $10                                       ; $6409: $d7
    or h                                          ; $640a: $b4
    sub c                                         ; $640b: $91
    cp l                                          ; $640c: $bd
    ld a, b                                       ; $640d: $78
    inc b                                         ; $640e: $04
    or b                                          ; $640f: $b0
    add c                                         ; $6410: $81
    db $dd                                        ; $6411: $dd
    jp z, $8940                                   ; $6412: $ca $40 $89

    ld l, [hl]                                    ; $6415: $6e
    push hl                                       ; $6416: $e5
    ld [hl+], a                                   ; $6417: $22
    ldh a, [$c5]                                  ; $6418: $f0 $c5
    db $d3                                        ; $641a: $d3
    cp d                                          ; $641b: $ba
    sbc c                                         ; $641c: $99
    ld a, $b5                                     ; $641d: $3e $b5
    ld a, $8d                                     ; $641f: $3e $8d
    cp l                                          ; $6421: $bd
    ld l, h                                       ; $6422: $6c
    ld [bc], a                                    ; $6423: $02
    or l                                          ; $6424: $b5
    call nc, $ff6e                                ; $6425: $d4 $6e $ff
    xor c                                         ; $6428: $a9
    rst $28                                       ; $6429: $ef
    ld h, b                                       ; $642a: $60
    add sp, -$03                                  ; $642b: $e8 $fd
    ld bc, $9a09                                  ; $642d: $01 $09 $9a
    rst $10                                       ; $6430: $d7
    or h                                          ; $6431: $b4
    sub c                                         ; $6432: $91
    cp l                                          ; $6433: $bd
    ld a, b                                       ; $6434: $78
    inc b                                         ; $6435: $04
    or b                                          ; $6436: $b0
    rst $20                                       ; $6437: $e7
    adc $0f                                       ; $6438: $ce $0f
    dec l                                         ; $643a: $2d
    ld a, d                                       ; $643b: $7a
    adc $48                                       ; $643c: $ce $48
    rst $08                                       ; $643e: $cf
    ld b, h                                       ; $643f: $44
    db $ed                                        ; $6440: $ed
    sub $b5                                       ; $6441: $d6 $b5
    db $f4                                        ; $6443: $f4
    ei                                            ; $6444: $fb
    ld b, a                                       ; $6445: $47
    ccf                                           ; $6446: $3f
    add hl, bc                                    ; $6447: $09
    sbc d                                         ; $6448: $9a
    rst $10                                       ; $6449: $d7
    or h                                          ; $644a: $b4
    sub b                                         ; $644b: $90
    dec a                                         ; $644c: $3d
    rst $18                                       ; $644d: $df
    ld e, [hl]                                    ; $644e: $5e
    ld c, h                                       ; $644f: $4c
    ld c, a                                       ; $6450: $4f
    adc $2a                                       ; $6451: $ce $2a
    ld [$1cf4], a                                 ; $6453: $ea $f4 $1c
    add $7f                                       ; $6456: $c6 $7f
    ld a, [de]                                    ; $6458: $1a
    ld b, [hl]                                    ; $6459: $46
    ld a, e                                       ; $645a: $7b
    ld e, $5e                                     ; $645b: $1e $5e
    ld a, [hl]                                    ; $645d: $7e
    ccf                                           ; $645e: $3f
    sbc [hl]                                      ; $645f: $9e
    adc l                                         ; $6460: $8d
    sbc $1f                                       ; $6461: $de $1f
    add hl, bc                                    ; $6463: $09
    sbc d                                         ; $6464: $9a
    rst $10                                       ; $6465: $d7
    or h                                          ; $6466: $b4
    pop de                                        ; $6467: $d1
    ld c, c                                       ; $6468: $49
    ld d, [hl]                                    ; $6469: $56
    ld d, d                                       ; $646a: $52
    push hl                                       ; $646b: $e5
    sbc b                                         ; $646c: $98
    or c                                          ; $646d: $b1
    ld bc, $3e1e                                  ; $646e: $01 $1e $3e
    pop bc                                        ; $6471: $c1
    db $d3                                        ; $6472: $d3
    add b                                         ; $6473: $80
    sbc [hl]                                      ; $6474: $9e
    ld l, a                                       ; $6475: $6f
    cpl                                           ; $6476: $2f
    and [hl]                                      ; $6477: $a6
    daa                                           ; $6478: $27
    ld h, a                                       ; $6479: $67
    cp l                                          ; $647a: $bd
    ccf                                           ; $647b: $3f
    add hl, bc                                    ; $647c: $09
    sbc d                                         ; $647d: $9a
    rst $10                                       ; $647e: $d7
    or h                                          ; $647f: $b4
    inc l                                         ; $6480: $2c
    or e                                          ; $6481: $b3
    ld [hl], c                                    ; $6482: $71
    dec b                                         ; $6483: $05
    ld d, l                                       ; $6484: $55
    ld e, d                                       ; $6485: $5a
    and a                                         ; $6486: $a7
    rla                                           ; $6487: $17
    inc sp                                        ; $6488: $33
    dec a                                         ; $6489: $3d
    rra                                           ; $648a: $1f
    add hl, bc                                    ; $648b: $09
    sbc d                                         ; $648c: $9a
    rst $10                                       ; $648d: $d7
    or h                                          ; $648e: $b4
    pop de                                        ; $648f: $d1
    ld c, c                                       ; $6490: $49
    ld d, [hl]                                    ; $6491: $56

jr_069_6492:
    ld d, d                                       ; $6492: $52
    push hl                                       ; $6493: $e5
    sbc b                                         ; $6494: $98
    pop af                                        ; $6495: $f1
    cp $00                                        ; $6496: $fe $00
    add hl, bc                                    ; $6498: $09
    sbc d                                         ; $6499: $9a
    rst $10                                       ; $649a: $d7
    or h                                          ; $649b: $b4
    pop de                                        ; $649c: $d1
    ld c, c                                       ; $649d: $49
    ld d, [hl]                                    ; $649e: $56
    ld d, d                                       ; $649f: $52
    push hl                                       ; $64a0: $e5
    sbc b                                         ; $64a1: $98
    pop af                                        ; $64a2: $f1
    cp $00                                        ; $64a3: $fe $00
    add hl, bc                                    ; $64a5: $09
    sbc d                                         ; $64a6: $9a
    rst $10                                       ; $64a7: $d7
    or h                                          ; $64a8: $b4
    pop de                                        ; $64a9: $d1
    ld c, c                                       ; $64aa: $49
    ld d, [hl]                                    ; $64ab: $56
    ld d, d                                       ; $64ac: $52
    push hl                                       ; $64ad: $e5
    sbc b                                         ; $64ae: $98
    pop af                                        ; $64af: $f1
    cp $00                                        ; $64b0: $fe $00
    add hl, bc                                    ; $64b2: $09
    sbc d                                         ; $64b3: $9a
    rst $10                                       ; $64b4: $d7
    or h                                          ; $64b5: $b4
    ld [hl], c                                    ; $64b6: $71
    sbc d                                         ; $64b7: $9a
    jr nz, jr_069_6492                            ; $64b8: $20 $d8

    scf                                           ; $64ba: $37
    xor b                                         ; $64bb: $a8
    ld c, [hl]                                    ; $64bc: $4e
    inc bc                                        ; $64bd: $03
    cp d                                          ; $64be: $ba
    ld h, l                                       ; $64bf: $65
    jp nc, Jump_069_6882                          ; $64c0: $d2 $82 $68

    ld e, c                                       ; $64c3: $59
    rst $28                                       ; $64c4: $ef
    rrca                                          ; $64c5: $0f
    add hl, bc                                    ; $64c6: $09
    sbc d                                         ; $64c7: $9a
    rst $10                                       ; $64c8: $d7
    or h                                          ; $64c9: $b4
    sub c                                         ; $64ca: $91
    ld d, l                                       ; $64cb: $55
    ld l, $6c                                     ; $64cc: $2e $6c
    ld b, b                                       ; $64ce: $40
    jp hl                                         ; $64cf: $e9


    ld d, $6a                                     ; $64d0: $16 $6a
    inc bc                                        ; $64d2: $03
    ld a, d                                       ; $64d3: $7a
    xor c                                         ; $64d4: $a9
    adc e                                         ; $64d5: $8b
    call nc, $c78a                                ; $64d6: $d4 $8a $c7
    db $fc                                        ; $64d9: $fc
    jp nc, $fbd4                                  ; $64da: $d2 $d4 $fb

    inc bc                                        ; $64dd: $03
    add hl, bc                                    ; $64de: $09
    sbc d                                         ; $64df: $9a
    rst $10                                       ; $64e0: $d7
    or h                                          ; $64e1: $b4
    sub c                                         ; $64e2: $91
    ld d, l                                       ; $64e3: $55
    ld l, $6c                                     ; $64e4: $2e $6c
    ld b, b                                       ; $64e6: $40
    jp hl                                         ; $64e7: $e9


    ld d, $6a                                     ; $64e8: $16 $6a
    inc bc                                        ; $64ea: $03
    ld a, [hl+]                                   ; $64eb: $2a
    ld l, [hl]                                    ; $64ec: $6e
    cpl                                           ; $64ed: $2f
    ld c, e                                       ; $64ee: $4b
    cp $8f                                        ; $64ef: $fe $8f
    rst $30                                       ; $64f1: $f7
    rlca                                          ; $64f2: $07
    add hl, bc                                    ; $64f3: $09
    sbc d                                         ; $64f4: $9a
    rst $10                                       ; $64f5: $d7
    or h                                          ; $64f6: $b4
    sub c                                         ; $64f7: $91
    dec a                                         ; $64f8: $3d
    sbc a                                         ; $64f9: $9f
    dec bc                                        ; $64fa: $0b
    db $ec                                        ; $64fb: $ec
    or c                                          ; $64fc: $b1
    ld bc, $3715                                  ; $64fd: $01 $15 $37
    ret                                           ; $6500: $c9


    ldh [$8c], a                                  ; $6501: $e0 $8c
    ld a, d                                       ; $6503: $7a
    ld a, a                                       ; $6504: $7f
    add hl, bc                                    ; $6505: $09
    sbc d                                         ; $6506: $9a
    rst $10                                       ; $6507: $d7
    or h                                          ; $6508: $b4
    sub c                                         ; $6509: $91
    ld d, l                                       ; $650a: $55

Jump_069_650b:
    ld l, $6c                                     ; $650b: $2e $6c
    ld b, b                                       ; $650d: $40
    jp hl                                         ; $650e: $e9


    ld d, $6a                                     ; $650f: $16 $6a
    inc bc                                        ; $6511: $03
    ld a, [hl+]                                   ; $6512: $2a
    xor [hl]                                      ; $6513: $ae
    reti                                          ; $6514: $d9


    ld h, $8e                                     ; $6515: $26 $8e
    ld a, h                                       ; $6517: $7c
    cp h                                          ; $6518: $bc
    ccf                                           ; $6519: $3f
    add hl, bc                                    ; $651a: $09
    sbc d                                         ; $651b: $9a
    rst $10                                       ; $651c: $d7
    or h                                          ; $651d: $b4
    ld [hl], c                                    ; $651e: $71
    sbc d                                         ; $651f: $9a
    ld [hl], d                                    ; $6520: $72
    or h                                          ; $6521: $b4
    inc a                                         ; $6522: $3c
    dec c                                         ; $6523: $0d
    call nc, $8cd2                                ; $6524: $d4 $d2 $8c
    sbc d                                         ; $6527: $9a
    add hl, de                                    ; $6528: $19
    ldh a, [$8c]                                  ; $6529: $f0 $8c
    ld a, d                                       ; $652b: $7a
    ld a, a                                       ; $652c: $7f
    add hl, bc                                    ; $652d: $09
    sbc d                                         ; $652e: $9a
    rst $10                                       ; $652f: $d7
    or h                                          ; $6530: $b4
    sub c                                         ; $6531: $91
    cp l                                          ; $6532: $bd
    ld a, b                                       ; $6533: $78
    inc b                                         ; $6534: $04
    or b                                          ; $6535: $b0
    ld bc, $82bd                                  ; $6536: $01 $bd $82
    xor d                                         ; $6539: $aa
    db $e3                                        ; $653a: $e3
    adc h                                         ; $653b: $8c
    ld a, d                                       ; $653c: $7a
    ld a, a                                       ; $653d: $7f
    add hl, bc                                    ; $653e: $09
    sbc d                                         ; $653f: $9a
    rst $10                                       ; $6540: $d7
    or h                                          ; $6541: $b4
    sub c                                         ; $6542: $91
    ld d, l                                       ; $6543: $55
    ld l, $6c                                     ; $6544: $2e $6c
    ld b, b                                       ; $6546: $40
    jp hl                                         ; $6547: $e9


    ld d, $36                                     ; $6548: $16 $36
    and b                                         ; $654a: $a0
    add hl, bc                                    ; $654b: $09
    pop af                                        ; $654c: $f1
    ld h, a                                       ; $654d: $67
    call z, $8894                                 ; $654e: $cc $94 $88
    ld a, c                                       ; $6551: $79
    db $f4                                        ; $6552: $f4
    cp $00                                        ; $6553: $fe $00
    add hl, bc                                    ; $6555: $09
    sbc d                                         ; $6556: $9a

jr_069_6557:
    rst $10                                       ; $6557: $d7
    or h                                          ; $6558: $b4
    sub c                                         ; $6559: $91
    ld d, l                                       ; $655a: $55
    ld l, $6c                                     ; $655b: $2e $6c
    ld b, b                                       ; $655d: $40
    jp hl                                         ; $655e: $e9


    ld d, $6a                                     ; $655f: $16 $6a
    inc bc                                        ; $6561: $03
    ld a, [hl+]                                   ; $6562: $2a
    ld l, [hl]                                    ; $6563: $6e
    add hl, de                                    ; $6564: $19
    jp c, $ed40                                   ; $6565: $da $40 $ed

    ld h, l                                       ; $6568: $65
    add [hl]                                      ; $6569: $86
    dec d                                         ; $656a: $15
    push af                                       ; $656b: $f5
    cp $00                                        ; $656c: $fe $00
    add hl, bc                                    ; $656e: $09
    pop af                                        ; $656f: $f1
    sbc a                                         ; $6570: $9f
    sbc b                                         ; $6571: $98
    adc l                                         ; $6572: $8d
    sbc d                                         ; $6573: $9a
    pop de                                        ; $6574: $d1
    ld l, c                                       ; $6575: $69
    add d                                         ; $6576: $82
    ld a, [$9258]                                 ; $6577: $fa $58 $92
    db $d3                                        ; $657a: $d3
    jr nc, jr_069_6557                            ; $657b: $30 $da

    dec bc                                        ; $657d: $0b
    ld [c], a                                     ; $657e: $e2
    ld [$6ee9], a                                 ; $657f: $ea $e9 $6e
    dec hl                                        ; $6582: $2b
    inc a                                         ; $6583: $3c
    cp l                                          ; $6584: $bd
    ccf                                           ; $6585: $3f
    add hl, bc                                    ; $6586: $09
    sbc d                                         ; $6587: $9a
    rst $10                                       ; $6588: $d7
    or h                                          ; $6589: $b4
    sub c                                         ; $658a: $91
    dec a                                         ; $658b: $3d
    halt                                          ; $658c: $76
    xor a                                         ; $658d: $af
    ld a, [hl+]                                   ; $658e: $2a
    cp $f5                                        ; $658f: $fe $f5
    jp nz, $6069                                  ; $6591: $c2 $69 $60

    rst $08                                       ; $6594: $cf
    ld e, e                                       ; $6595: $5b
    add $a0                                       ; $6596: $c6 $a0
    sbc c                                         ; $6598: $99
    ld c, l                                       ; $6599: $4d
    or h                                          ; $659a: $b4
    ld a, c                                       ; $659b: $79
    sbc [hl]                                      ; $659c: $9e
    rla                                           ; $659d: $17
    ld a, b                                       ; $659e: $78
    ld a, a                                       ; $659f: $7f
    add hl, bc                                    ; $65a0: $09
    sbc d                                         ; $65a1: $9a
    rst $10                                       ; $65a2: $d7
    or h                                          ; $65a3: $b4
    sub c                                         ; $65a4: $91
    dec a                                         ; $65a5: $3d
    ld l, [hl]                                    ; $65a6: $6e
    xor a                                         ; $65a7: $af
    ld a, [hl+]                                   ; $65a8: $2a
    cp $f5                                        ; $65a9: $fe $f5
    jp nz, $6069                                  ; $65ab: $c2 $69 $60

    rst $08                                       ; $65ae: $cf
    ld e, e                                       ; $65af: $5b
    add $a0                                       ; $65b0: $c6 $a0
    sbc c                                         ; $65b2: $99
    ld c, l                                       ; $65b3: $4d
    or h                                          ; $65b4: $b4
    ld a, c                                       ; $65b5: $79
    sbc [hl]                                      ; $65b6: $9e
    rla                                           ; $65b7: $17
    ld a, b                                       ; $65b8: $78
    ld a, a                                       ; $65b9: $7f
    add hl, bc                                    ; $65ba: $09
    sbc d                                         ; $65bb: $9a
    rst $10                                       ; $65bc: $d7
    or h                                          ; $65bd: $b4
    sub c                                         ; $65be: $91
    dec a                                         ; $65bf: $3d
    ld a, [hl]                                    ; $65c0: $7e
    xor a                                         ; $65c1: $af
    ld a, [hl+]                                   ; $65c2: $2a
    cp $f5                                        ; $65c3: $fe $f5
    jp nz, $6069                                  ; $65c5: $c2 $69 $60

    rst $08                                       ; $65c8: $cf
    ld e, e                                       ; $65c9: $5b
    add $a0                                       ; $65ca: $c6 $a0
    sbc c                                         ; $65cc: $99
    ld c, l                                       ; $65cd: $4d
    or h                                          ; $65ce: $b4
    ld a, c                                       ; $65cf: $79
    sbc [hl]                                      ; $65d0: $9e
    rla                                           ; $65d1: $17
    ld a, b                                       ; $65d2: $78
    ld a, a                                       ; $65d3: $7f
    add hl, bc                                    ; $65d4: $09
    sbc d                                         ; $65d5: $9a
    rst $10                                       ; $65d6: $d7
    or h                                          ; $65d7: $b4
    sub c                                         ; $65d8: $91
    dec a                                         ; $65d9: $3d
    ld h, c                                       ; $65da: $61
    xor a                                         ; $65db: $af
    ld a, [hl+]                                   ; $65dc: $2a
    cp $f5                                        ; $65dd: $fe $f5
    jp nz, $6069                                  ; $65df: $c2 $69 $60

    rst $08                                       ; $65e2: $cf
    ld e, e                                       ; $65e3: $5b
    add $a0                                       ; $65e4: $c6 $a0
    sbc c                                         ; $65e6: $99
    ld c, l                                       ; $65e7: $4d
    or h                                          ; $65e8: $b4
    ld a, c                                       ; $65e9: $79
    sbc [hl]                                      ; $65ea: $9e
    rla                                           ; $65eb: $17
    ld a, b                                       ; $65ec: $78
    ld a, a                                       ; $65ed: $7f
    add hl, bc                                    ; $65ee: $09
    sbc d                                         ; $65ef: $9a
    rst $10                                       ; $65f0: $d7
    or h                                          ; $65f1: $b4
    sub c                                         ; $65f2: $91
    dec a                                         ; $65f3: $3d
    ld [hl], c                                    ; $65f4: $71
    xor a                                         ; $65f5: $af
    ld a, [hl+]                                   ; $65f6: $2a
    cp $f5                                        ; $65f7: $fe $f5
    jp nz, $6069                                  ; $65f9: $c2 $69 $60

    rst $08                                       ; $65fc: $cf
    ld e, e                                       ; $65fd: $5b
    add $a0                                       ; $65fe: $c6 $a0
    sbc c                                         ; $6600: $99
    ld c, l                                       ; $6601: $4d
    or h                                          ; $6602: $b4
    ld a, c                                       ; $6603: $79
    sbc [hl]                                      ; $6604: $9e
    rla                                           ; $6605: $17
    ld a, b                                       ; $6606: $78
    ld a, a                                       ; $6607: $7f
    add hl, bc                                    ; $6608: $09
    sbc d                                         ; $6609: $9a
    rst $10                                       ; $660a: $d7
    or h                                          ; $660b: $b4
    sub c                                         ; $660c: $91
    dec a                                         ; $660d: $3d
    ld l, c                                       ; $660e: $69
    xor a                                         ; $660f: $af
    ld a, [hl+]                                   ; $6610: $2a
    cp $f5                                        ; $6611: $fe $f5
    jp nz, $6069                                  ; $6613: $c2 $69 $60

    rst $08                                       ; $6616: $cf
    ld e, e                                       ; $6617: $5b
    add $a0                                       ; $6618: $c6 $a0
    sbc c                                         ; $661a: $99
    ld c, l                                       ; $661b: $4d
    or h                                          ; $661c: $b4
    ld a, c                                       ; $661d: $79
    sbc [hl]                                      ; $661e: $9e
    rla                                           ; $661f: $17
    ld a, b                                       ; $6620: $78
    ld a, a                                       ; $6621: $7f
    add hl, bc                                    ; $6622: $09
    sbc d                                         ; $6623: $9a
    rst $10                                       ; $6624: $d7
    or h                                          ; $6625: $b4
    pop de                                        ; $6626: $d1
    ld c, c                                       ; $6627: $49
    ld d, [hl]                                    ; $6628: $56
    ld d, d                                       ; $6629: $52
    push hl                                       ; $662a: $e5
    sbc b                                         ; $662b: $98
    pop af                                        ; $662c: $f1
    cp $00                                        ; $662d: $fe $00
    add hl, bc                                    ; $662f: $09
    sbc d                                         ; $6630: $9a
    rst $10                                       ; $6631: $d7
    or h                                          ; $6632: $b4
    pop de                                        ; $6633: $d1
    ld c, c                                       ; $6634: $49
    ld d, [hl]                                    ; $6635: $56
    ld d, d                                       ; $6636: $52
    push hl                                       ; $6637: $e5
    sbc b                                         ; $6638: $98
    pop af                                        ; $6639: $f1
    cp $00                                        ; $663a: $fe $00
    add hl, bc                                    ; $663c: $09
    sbc d                                         ; $663d: $9a
    rst $10                                       ; $663e: $d7
    or h                                          ; $663f: $b4
    pop de                                        ; $6640: $d1
    ld c, c                                       ; $6641: $49
    ld d, [hl]                                    ; $6642: $56
    ld d, d                                       ; $6643: $52
    push hl                                       ; $6644: $e5
    sbc b                                         ; $6645: $98
    pop af                                        ; $6646: $f1
    cp $00                                        ; $6647: $fe $00
    add hl, bc                                    ; $6649: $09
    sbc d                                         ; $664a: $9a
    rst $10                                       ; $664b: $d7
    or h                                          ; $664c: $b4
    pop de                                        ; $664d: $d1
    ld c, c                                       ; $664e: $49
    ld d, [hl]                                    ; $664f: $56
    ld d, d                                       ; $6650: $52
    push hl                                       ; $6651: $e5
    sbc b                                         ; $6652: $98
    pop af                                        ; $6653: $f1
    cp $00                                        ; $6654: $fe $00
    add hl, bc                                    ; $6656: $09
    sbc d                                         ; $6657: $9a
    rst $10                                       ; $6658: $d7
    or h                                          ; $6659: $b4
    pop de                                        ; $665a: $d1
    ld c, c                                       ; $665b: $49
    ld d, [hl]                                    ; $665c: $56
    ld d, d                                       ; $665d: $52

Call_069_665e:
    push hl                                       ; $665e: $e5
    sbc b                                         ; $665f: $98
    pop af                                        ; $6660: $f1
    cp $00                                        ; $6661: $fe $00
    add hl, bc                                    ; $6663: $09
    sbc d                                         ; $6664: $9a
    rst $10                                       ; $6665: $d7
    or h                                          ; $6666: $b4
    pop de                                        ; $6667: $d1
    ld c, c                                       ; $6668: $49
    ld d, [hl]                                    ; $6669: $56
    ld d, d                                       ; $666a: $52
    push hl                                       ; $666b: $e5
    sbc b                                         ; $666c: $98
    pop af                                        ; $666d: $f1
    cp $00                                        ; $666e: $fe $00
    add hl, bc                                    ; $6670: $09
    sbc d                                         ; $6671: $9a
    rst $10                                       ; $6672: $d7
    or h                                          ; $6673: $b4
    ld [hl], c                                    ; $6674: $71
    ld a, [bc]                                    ; $6675: $0a
    db $fd                                        ; $6676: $fd
    db $ed                                        ; $6677: $ed
    push hl                                       ; $6678: $e5
    db $dd                                        ; $6679: $dd
    db $ed                                        ; $667a: $ed
    ld c, l                                       ; $667b: $4d
    jp $d134                                      ; $667c: $c3 $34 $d1


    add $0b                                       ; $667f: $c6 $0b
    push de                                       ; $6681: $d5

Jump_069_6682:
    or c                                          ; $6682: $b1
    sbc [hl]                                      ; $6683: $9e
    or a                                          ; $6684: $b7
    cp h                                          ; $6685: $bc
    inc l                                         ; $6686: $2c
    add sp, -$03                                  ; $6687: $e8 $fd
    ld [bc], a                                    ; $6689: $02
    rst $28                                       ; $668a: $ef
    rrca                                          ; $668b: $0f
    add hl, bc                                    ; $668c: $09
    sbc d                                         ; $668d: $9a
    rst $10                                       ; $668e: $d7
    or h                                          ; $668f: $b4
    pop de                                        ; $6690: $d1
    ld c, c                                       ; $6691: $49
    ld d, [hl]                                    ; $6692: $56
    cp c                                          ; $6693: $b9
    or b                                          ; $6694: $b0
    ld bc, $5ba5                                  ; $6695: $01 $a5 $5b
    xor b                                         ; $6698: $a8
    ld e, l                                       ; $6699: $5d
    ld [hl], c                                    ; $669a: $71
    rst $10                                       ; $669b: $d7
    db $e3                                        ; $669c: $e3
    db $fd                                        ; $669d: $fd
    ld bc, $9a09                                  ; $669e: $01 $09 $9a
    rst $10                                       ; $66a1: $d7
    or h                                          ; $66a2: $b4
    pop de                                        ; $66a3: $d1
    ld c, c                                       ; $66a4: $49
    ld d, [hl]                                    ; $66a5: $56
    cp c                                          ; $66a6: $b9
    or b                                          ; $66a7: $b0
    ld bc, $5ba5                                  ; $66a8: $01 $a5 $5b
    xor b                                         ; $66ab: $a8
    ld e, l                                       ; $66ac: $5d
    ld [hl], c                                    ; $66ad: $71

Jump_069_66ae:
    rst $10                                       ; $66ae: $d7
    db $e3                                        ; $66af: $e3
    db $fd                                        ; $66b0: $fd
    ld bc, $9a09                                  ; $66b1: $01 $09 $9a
    rst $10                                       ; $66b4: $d7
    or h                                          ; $66b5: $b4
    ld [hl], c                                    ; $66b6: $71
    cp d                                          ; $66b7: $ba
    ld a, c                                       ; $66b8: $79
    call z, $c610                                 ; $66b9: $cc $10 $c6

Call_069_66bc:
    sbc d                                         ; $66bc: $9a
    ld l, b                                       ; $66bd: $68
    di                                            ; $66be: $f3
    inc a                                         ; $66bf: $3c
    cpl                                           ; $66c0: $2f
    call z, Call_000_01fd                         ; $66c1: $cc $fd $01
    add hl, bc                                    ; $66c4: $09
    sbc d                                         ; $66c5: $9a
    rst $10                                       ; $66c6: $d7
    or h                                          ; $66c7: $b4
    sub c                                         ; $66c8: $91
    ld c, l                                       ; $66c9: $4d
    ret nc                                        ; $66ca: $d0

    db $ec                                        ; $66cb: $ec
    cp h                                          ; $66cc: $bc
    cp h                                          ; $66cd: $bc
    ccf                                           ; $66ce: $3f
    add hl, bc                                    ; $66cf: $09
    sbc d                                         ; $66d0: $9a
    rst $10                                       ; $66d1: $d7
    or h                                          ; $66d2: $b4
    sub c                                         ; $66d3: $91
    db $dd                                        ; $66d4: $dd
    ld c, h                                       ; $66d5: $4c
    ld h, l                                       ; $66d6: $65
    inc bc                                        ; $66d7: $03
    ld a, d                                       ; $66d8: $7a
    ld c, $63                                     ; $66d9: $0e $63
    ld [hl], d                                    ; $66db: $72
    ld a, [de]                                    ; $66dc: $1a
    xor b                                         ; $66dd: $a8
    cp l                                          ; $66de: $bd
    sub h                                         ; $66df: $94
    ld a, $ed                                     ; $66e0: $3e $ed
    and l                                         ; $66e2: $a5
    xor c                                         ; $66e3: $a9
    rst $30                                       ; $66e4: $f7
    rlca                                          ; $66e5: $07
    add hl, bc                                    ; $66e6: $09
    sbc d                                         ; $66e7: $9a
    rst $10                                       ; $66e8: $d7
    or h                                          ; $66e9: $b4
    sbc $31                                       ; $66ea: $de $31
    ld [hl], $a0                                  ; $66ec: $36 $a0
    ld e, e                                       ; $66ee: $5b
    ld h, $2d                                     ; $66ef: $26 $2d
    adc b                                         ; $66f1: $88
    sub [hl]                                      ; $66f2: $96
    push af                                       ; $66f3: $f5
    cp $00                                        ; $66f4: $fe $00
    add hl, bc                                    ; $66f6: $09
    sbc d                                         ; $66f7: $9a
    rst $10                                       ; $66f8: $d7
    or h                                          ; $66f9: $b4
    ld bc, $db31                                  ; $66fa: $01 $31 $db
    inc [hl]                                      ; $66fd: $34
    or b                                          ; $66fe: $b0
    sbc e                                         ; $66ff: $9b
    jp hl                                         ; $6700: $e9


    ld h, c                                       ; $6701: $61
    ld h, h                                       ; $6702: $64
    jp $0b74                                      ; $6703: $c3 $74 $0b


Jump_069_6706:
    db $d3                                        ; $6706: $d3
    or $c2                                        ; $6707: $f6 $c2
    db $fd                                        ; $6709: $fd
    ld bc, $9a09                                  ; $670a: $01 $09 $9a
    rst $10                                       ; $670d: $d7
    or h                                          ; $670e: $b4
    ld [hl], c                                    ; $670f: $71
    ld a, [$198f]                                 ; $6710: $fa $8f $19
    jp nz, $c358                                  ; $6713: $c2 $58 $c3

    db $f4                                        ; $6716: $f4
    ret c                                         ; $6717: $d8

    dec a                                         ; $6718: $3d
    rr b                                          ; $6719: $cb $18
    ld l, b                                       ; $671b: $68
    rst $30                                       ; $671c: $f7
    rlca                                          ; $671d: $07
    add hl, bc                                    ; $671e: $09
    sbc d                                         ; $671f: $9a

Call_069_6720:
    rst $10                                       ; $6720: $d7
    or h                                          ; $6721: $b4
    ld [hl], c                                    ; $6722: $71
    ld a, [$198f]                                 ; $6723: $fa $8f $19
    jp nz, $c358                                  ; $6726: $c2 $58 $c3

    db $f4                                        ; $6729: $f4
    cp b                                          ; $672a: $b8
    dec a                                         ; $672b: $3d
    rr b                                          ; $672c: $cb $18
    ld l, b                                       ; $672e: $68
    rst $30                                       ; $672f: $f7
    rlca                                          ; $6730: $07
    add hl, bc                                    ; $6731: $09
    sbc d                                         ; $6732: $9a
    rst $10                                       ; $6733: $d7
    or h                                          ; $6734: $b4
    ld [hl], c                                    ; $6735: $71
    ld a, [$198f]                                 ; $6736: $fa $8f $19
    jp nz, $c358                                  ; $6739: $c2 $58 $c3

    db $f4                                        ; $673c: $f4
    ld hl, sp+$3d                                 ; $673d: $f8 $3d
    rr b                                          ; $673f: $cb $18
    ld l, b                                       ; $6741: $68
    rst $30                                       ; $6742: $f7
    rlca                                          ; $6743: $07
    add hl, bc                                    ; $6744: $09
    sbc d                                         ; $6745: $9a
    rst $10                                       ; $6746: $d7
    or h                                          ; $6747: $b4
    ld [hl], c                                    ; $6748: $71
    ld a, [$198f]                                 ; $6749: $fa $8f $19
    jp nz, $c358                                  ; $674c: $c2 $58 $c3

    db $f4                                        ; $674f: $f4
    add h                                         ; $6750: $84
    dec a                                         ; $6751: $3d
    rr b                                          ; $6752: $cb $18
    ld l, b                                       ; $6754: $68
    rst $30                                       ; $6755: $f7
    rlca                                          ; $6756: $07
    add hl, bc                                    ; $6757: $09
    sbc d                                         ; $6758: $9a
    rst $10                                       ; $6759: $d7
    or h                                          ; $675a: $b4
    ld [hl], c                                    ; $675b: $71
    ld a, [$198f]                                 ; $675c: $fa $8f $19
    jp nz, $c358                                  ; $675f: $c2 $58 $c3

    db $f4                                        ; $6762: $f4
    call nz, $cb3d                                ; $6763: $c4 $3d $cb
    jr jr_069_67d0                                ; $6766: $18 $68

    rst $30                                       ; $6768: $f7
    rlca                                          ; $6769: $07
    add hl, bc                                    ; $676a: $09
    sbc d                                         ; $676b: $9a
    rst $10                                       ; $676c: $d7
    or h                                          ; $676d: $b4
    ld [hl], c                                    ; $676e: $71
    ld a, [$198f]                                 ; $676f: $fa $8f $19
    jp nz, $c358                                  ; $6772: $c2 $58 $c3

    db $f4                                        ; $6775: $f4
    and h                                         ; $6776: $a4
    dec a                                         ; $6777: $3d
    rr b                                          ; $6778: $cb $18
    ld l, b                                       ; $677a: $68
    rst $30                                       ; $677b: $f7
    rlca                                          ; $677c: $07
    add hl, bc                                    ; $677d: $09
    sbc d                                         ; $677e: $9a
    rst $10                                       ; $677f: $d7
    or h                                          ; $6780: $b4
    ld [hl], c                                    ; $6781: $71
    ld a, [$198f]                                 ; $6782: $fa $8f $19
    jp nz, $c358                                  ; $6785: $c2 $58 $c3

    db $f4                                        ; $6788: $f4
    db $e4                                        ; $6789: $e4
    dec a                                         ; $678a: $3d
    rr b                                          ; $678b: $cb $18
    ld l, b                                       ; $678d: $68
    rst $30                                       ; $678e: $f7
    rlca                                          ; $678f: $07
    add hl, bc                                    ; $6790: $09
    sbc d                                         ; $6791: $9a
    rst $10                                       ; $6792: $d7
    or h                                          ; $6793: $b4
    sub c                                         ; $6794: $91
    ld e, l                                       ; $6795: $5d
    ld b, [hl]                                    ; $6796: $46
    nop                                           ; $6797: $00
    dec de                                        ; $6798: $1b
    and [hl]                                      ; $6799: $a6
    sbc e                                         ; $679a: $9b
    sbc l                                         ; $679b: $9d
    ld sp, $3c06                                  ; $679c: $31 $06 $3c
    sbc e                                         ; $679f: $9b
    ei                                            ; $67a0: $fb
    inc bc                                        ; $67a1: $03
    add hl, bc                                    ; $67a2: $09
    sbc d                                         ; $67a3: $9a
    rst $10                                       ; $67a4: $d7
    or h                                          ; $67a5: $b4
    sub c                                         ; $67a6: $91
    ld d, l                                       ; $67a7: $55
    ld l, $6c                                     ; $67a8: $2e $6c
    ld b, b                                       ; $67aa: $40
    jp hl                                         ; $67ab: $e9


    ld d, $6a                                     ; $67ac: $16 $6a
    inc bc                                        ; $67ae: $03
    cp d                                          ; $67af: $ba
    push hl                                       ; $67b0: $e5
    ld l, c                                       ; $67b1: $69
    sbc $dd                                       ; $67b2: $de $dd
    ld e, $1b                                     ; $67b4: $1e $1b
    ret c                                         ; $67b6: $d8

    xor l                                         ; $67b7: $ad
    ld c, h                                       ; $67b8: $4c
    ccf                                           ; $67b9: $3f
    sbc $1f                                       ; $67ba: $de $1f
    add hl, bc                                    ; $67bc: $09
    sbc d                                         ; $67bd: $9a
    rst $10                                       ; $67be: $d7
    or h                                          ; $67bf: $b4
    sub c                                         ; $67c0: $91
    dec d                                         ; $67c1: $15
    ld e, a                                       ; $67c2: $5f
    ret c                                         ; $67c3: $d8

    dec l                                         ; $67c4: $2d
    and e                                         ; $67c5: $a3
    cp $cb                                        ; $67c6: $fe $cb
    ld e, h                                       ; $67c8: $5c
    ld l, b                                       ; $67c9: $68
    rst $30                                       ; $67ca: $f7
    rlca                                          ; $67cb: $07
    add hl, bc                                    ; $67cc: $09
    sbc d                                         ; $67cd: $9a
    rst $10                                       ; $67ce: $d7
    or h                                          ; $67cf: $b4

jr_069_67d0:
    sub c                                         ; $67d0: $91
    dec a                                         ; $67d1: $3d
    rst $20                                       ; $67d2: $e7
    ld a, c                                       ; $67d3: $79
    sub [hl]                                      ; $67d4: $96
    scf                                           ; $67d5: $37
    add hl, de                                    ; $67d6: $19
    ccf                                           ; $67d7: $3f
    rst $28                                       ; $67d8: $ef
    rrca                                          ; $67d9: $0f
    add hl, bc                                    ; $67da: $09
    sbc d                                         ; $67db: $9a
    rst $10                                       ; $67dc: $d7
    or h                                          ; $67dd: $b4
    sub c                                         ; $67de: $91
    dec a                                         ; $67df: $3d
    rst $20                                       ; $67e0: $e7
    ld a, c                                       ; $67e1: $79
    sub [hl]                                      ; $67e2: $96
    scf                                           ; $67e3: $37
    add hl, de                                    ; $67e4: $19
    ccf                                           ; $67e5: $3f
    rst $28                                       ; $67e6: $ef
    rrca                                          ; $67e7: $0f
    add hl, bc                                    ; $67e8: $09
    sbc d                                         ; $67e9: $9a
    rst $10                                       ; $67ea: $d7
    or h                                          ; $67eb: $b4
    ld [hl], c                                    ; $67ec: $71
    ld a, [bc]                                    ; $67ed: $0a
    db $fd                                        ; $67ee: $fd
    db $ed                                        ; $67ef: $ed

Call_069_67f0:
    push hl                                       ; $67f0: $e5
    db $dd                                        ; $67f1: $dd
    db $ed                                        ; $67f2: $ed
    ld c, l                                       ; $67f3: $4d
    inc bc                                        ; $67f4: $03
    sbc e                                         ; $67f5: $9b
    ld l, b                                       ; $67f6: $68
    db $e3                                        ; $67f7: $e3
    add l                                         ; $67f8: $85
    ld [$bb18], a                                 ; $67f9: $ea $18 $bb
    push af                                       ; $67fc: $f5
    ccf                                           ; $67fd: $3f
    ld a, a                                       ; $67fe: $7f
    ld [hl+], a                                   ; $67ff: $22
    db $d3                                        ; $6800: $d3
    ld e, h                                       ; $6801: $5c
    sub [hl]                                      ; $6802: $96
    ei                                            ; $6803: $fb
    inc bc                                        ; $6804: $03
    add hl, bc                                    ; $6805: $09
    sbc d                                         ; $6806: $9a
    rst $10                                       ; $6807: $d7
    or h                                          ; $6808: $b4
    sub c                                         ; $6809: $91
    ld d, l                                       ; $680a: $55
    ld l, $6c                                     ; $680b: $2e $6c
    ld b, b                                       ; $680d: $40
    jp hl                                         ; $680e: $e9


    ld d, $6a                                     ; $680f: $16 $6a
    inc bc                                        ; $6811: $03
    sbc d                                         ; $6812: $9a
    and b                                         ; $6813: $a0
    reti                                          ; $6814: $d9


    add l                                         ; $6815: $85
    pop de                                        ; $6816: $d1
    ld l, [hl]                                    ; $6817: $6e
    ld [hl], l                                    ; $6818: $75
    jp hl                                         ; $6819: $e9


    db $f4                                        ; $681a: $f4
    ld [bc], a                                    ; $681b: $02
    cp l                                          ; $681c: $bd
    ccf                                           ; $681d: $3f
    add hl, bc                                    ; $681e: $09
    sbc d                                         ; $681f: $9a
    rst $10                                       ; $6820: $d7
    or h                                          ; $6821: $b4
    ld [hl], c                                    ; $6822: $71
    ld a, [bc]                                    ; $6823: $0a
    db $fd                                        ; $6824: $fd
    db $ed                                        ; $6825: $ed
    push hl                                       ; $6826: $e5
    db $dd                                        ; $6827: $dd
    db $ed                                        ; $6828: $ed
    ld c, l                                       ; $6829: $4d
    inc bc                                        ; $682a: $03
    cp e                                          ; $682b: $bb
    sub l                                         ; $682c: $95
    add c                                         ; $682d: $81
    ld [de], a                                    ; $682e: $12
    ld c, l                                       ; $682f: $4d
    inc e                                         ; $6830: $1c

jr_069_6831:
    jp hl                                         ; $6831: $e9


    dec [hl]                                      ; $6832: $35
    db $ec                                        ; $6833: $ec
    cp h                                          ; $6834: $bc
    ccf                                           ; $6835: $3f
    add hl, bc                                    ; $6836: $09
    sbc d                                         ; $6837: $9a
    rst $10                                       ; $6838: $d7
    or h                                          ; $6839: $b4
    sub c                                         ; $683a: $91
    ld d, l                                       ; $683b: $55
    ld l, $6c                                     ; $683c: $2e $6c
    ld b, b                                       ; $683e: $40
    jp hl                                         ; $683f: $e9


    ld d, $6a                                     ; $6840: $16 $6a
    inc bc                                        ; $6842: $03
    sbc d                                         ; $6843: $9a
    jr c, jr_069_6831                             ; $6844: $38 $eb

    rrca                                          ; $6846: $0f
    add [hl]                                      ; $6847: $86
    sbc $1f                                       ; $6848: $de $1f
    add hl, bc                                    ; $684a: $09
    sbc d                                         ; $684b: $9a
    rst $10                                       ; $684c: $d7
    or h                                          ; $684d: $b4
    ld [hl], c                                    ; $684e: $71
    ld a, [bc]                                    ; $684f: $0a
    db $fd                                        ; $6850: $fd
    db $ed                                        ; $6851: $ed
    push hl                                       ; $6852: $e5
    db $dd                                        ; $6853: $dd
    db $ed                                        ; $6854: $ed
    ld c, l                                       ; $6855: $4d
    jp $d134                                      ; $6856: $c3 $34 $d1


    add $0b                                       ; $6859: $c6 $0b
    push de                                       ; $685b: $d5
    or c                                          ; $685c: $b1
    ld e, [hl]                                    ; $685d: $5e

Jump_069_685e:
    ld [c], a                                     ; $685e: $e2
    sbc [hl]                                      ; $685f: $9e
    add hl, de                                    ; $6860: $19
    sub [hl]                                      ; $6861: $96
    push hl                                       ; $6862: $e5
    cp $00                                        ; $6863: $fe $00
    add hl, bc                                    ; $6865: $09
    sbc d                                         ; $6866: $9a
    rst $10                                       ; $6867: $d7
    or h                                          ; $6868: $b4
    ld [hl], c                                    ; $6869: $71
    ld a, [bc]                                    ; $686a: $0a
    db $fd                                        ; $686b: $fd
    db $ed                                        ; $686c: $ed
    push hl                                       ; $686d: $e5
    db $dd                                        ; $686e: $dd
    db $ed                                        ; $686f: $ed
    ld c, l                                       ; $6870: $4d
    jp $d134                                      ; $6871: $c3 $34 $d1


    add $0b                                       ; $6874: $c6 $0b
    push de                                       ; $6876: $d5
    or c                                          ; $6877: $b1
    xor $88                                       ; $6878: $ee $88
    db $f4                                        ; $687a: $f4
    ld [hl], c                                    ; $687b: $71
    ld a, a                                       ; $687c: $7f
    add hl, bc                                    ; $687d: $09
    sbc d                                         ; $687e: $9a
    rst $10                                       ; $687f: $d7
    or h                                          ; $6880: $b4
    ld [hl], c                                    ; $6881: $71

Jump_069_6882:
    ld a, [bc]                                    ; $6882: $0a
    db $fd                                        ; $6883: $fd
    db $ed                                        ; $6884: $ed
    push hl                                       ; $6885: $e5
    db $dd                                        ; $6886: $dd
    db $ed                                        ; $6887: $ed
    ld c, l                                       ; $6888: $4d
    inc bc                                        ; $6889: $03
    sbc e                                         ; $688a: $9b
    ld l, b                                       ; $688b: $68
    db $e3                                        ; $688c: $e3
    add l                                         ; $688d: $85
    ld [$bb18], a                                 ; $688e: $ea $18 $bb
    jp $71b7                                      ; $6891: $c3 $b7 $71


    ld sp, hl                                     ; $6894: $f9
    cp $00                                        ; $6895: $fe $00
    add hl, bc                                    ; $6897: $09
    sbc d                                         ; $6898: $9a
    rst $10                                       ; $6899: $d7
    or h                                          ; $689a: $b4
    pop de                                        ; $689b: $d1
    ret                                           ; $689c: $c9


    jp nc, Jump_069_7724                          ; $689d: $d2 $24 $77

    xor l                                         ; $68a0: $ad
    sub e                                         ; $68a1: $93
    rst $30                                       ; $68a2: $f7
    rlca                                          ; $68a3: $07
    add hl, bc                                    ; $68a4: $09
    sbc d                                         ; $68a5: $9a
    rst $10                                       ; $68a6: $d7
    or h                                          ; $68a7: $b4
    sub c                                         ; $68a8: $91
    ld d, l                                       ; $68a9: $55
    ld l, $6c                                     ; $68aa: $2e $6c
    ld b, b                                       ; $68ac: $40
    jp hl                                         ; $68ad: $e9


    ld d, $6a                                     ; $68ae: $16 $6a
    inc bc                                        ; $68b0: $03
    ld a, d                                       ; $68b1: $7a
    sbc c                                         ; $68b2: $99
    ld sp, $f7aa                                  ; $68b3: $31 $aa $f7
    and l                                         ; $68b6: $a5
    sbc l                                         ; $68b7: $9d
    ld [hl], c                                    ; $68b8: $71
    cp l                                          ; $68b9: $bd
    ld [hl], b                                    ; $68ba: $70
    xor $0f                                       ; $68bb: $ee $0f
    add hl, bc                                    ; $68bd: $09
    sbc d                                         ; $68be: $9a
    rst $10                                       ; $68bf: $d7
    or h                                          ; $68c0: $b4
    sub c                                         ; $68c1: $91
    db $dd                                        ; $68c2: $dd
    pop bc                                        ; $68c3: $c1
    add l                                         ; $68c4: $85
    dec c                                         ; $68c5: $0d
    and e                                         ; $68c6: $a3
    cp l                                          ; $68c7: $bd
    call z, $bbc6                                 ; $68c8: $cc $c6 $bb
    adc $e9                                       ; $68cb: $ce $e9
    db $fd                                        ; $68cd: $fd
    ld bc, $9a09                                  ; $68ce: $01 $09 $9a
    rst $10                                       ; $68d1: $d7
    or h                                          ; $68d2: $b4
    pop de                                        ; $68d3: $d1
    ld c, c                                       ; $68d4: $49
    ld d, [hl]                                    ; $68d5: $56
    ld d, d                                       ; $68d6: $52
    push hl                                       ; $68d7: $e5
    sbc b                                         ; $68d8: $98
    or c                                          ; $68d9: $b1
    ld bc, $3e1e                                  ; $68da: $01 $1e $3e
    pop bc                                        ; $68dd: $c1
    db $d3                                        ; $68de: $d3
    add b                                         ; $68df: $80
    sbc [hl]                                      ; $68e0: $9e
    ld l, a                                       ; $68e1: $6f
    cpl                                           ; $68e2: $2f
    and [hl]                                      ; $68e3: $a6
    daa                                           ; $68e4: $27
    ld h, a                                       ; $68e5: $67
    cp l                                          ; $68e6: $bd
    ccf                                           ; $68e7: $3f
    add hl, bc                                    ; $68e8: $09
    sbc d                                         ; $68e9: $9a
    rst $10                                       ; $68ea: $d7
    or h                                          ; $68eb: $b4
    sub c                                         ; $68ec: $91
    ld c, l                                       ; $68ed: $4d
    ld e, h                                       ; $68ee: $5c
    sbc b                                         ; $68ef: $98
    jp hl                                         ; $68f0: $e9


    dec e                                         ; $68f1: $1d
    sub e                                         ; $68f2: $93
    db $ec                                        ; $68f3: $ec
    or [hl]                                       ; $68f4: $b6
    ld e, c                                       ; $68f5: $59
    and c                                         ; $68f6: $a1
    add sp, $65                                   ; $68f7: $e8 $65
    halt                                          ; $68f9: $76
    and b                                         ; $68fa: $a0
    or $12                                        ; $68fb: $f6 $12
    ld b, a                                       ; $68fd: $47
    res 4, e                                      ; $68fe: $cb $a3
    rst $30                                       ; $6900: $f7
    rlca                                          ; $6901: $07
    add hl, bc                                    ; $6902: $09
    sbc d                                         ; $6903: $9a
    rst $10                                       ; $6904: $d7
    or h                                          ; $6905: $b4
    sub c                                         ; $6906: $91
    sub l                                         ; $6907: $95
    or h                                          ; $6908: $b4
    inc [hl]                                      ; $6909: $34
    ld h, h                                       ; $690a: $64
    jp Jump_069_62f4                              ; $690b: $c3 $f4 $62


    and [hl]                                      ; $690e: $a6
    rst $20                                       ; $690f: $e7
    cp $00                                        ; $6910: $fe $00
    add hl, bc                                    ; $6912: $09
    sbc d                                         ; $6913: $9a
    rst $10                                       ; $6914: $d7
    or h                                          ; $6915: $b4

jr_069_6916:
    ld [hl], c                                    ; $6916: $71
    ld a, d                                       ; $6917: $7a
    dec b                                         ; $6918: $05
    inc [hl]                                      ; $6919: $34
    rst $28                                       ; $691a: $ef
    and $71                                       ; $691b: $e6 $71
    swap h                                        ; $691d: $cb $34
    and b                                         ; $691f: $a0
    add hl, bc                                    ; $6920: $09
    ld sp, $031b                                  ; $6921: $31 $1b $03
    dec de                                        ; $6924: $1b
    ret nc                                        ; $6925: $d0

    dec l                                         ; $6926: $2d

jr_069_6927:
    sub e                                         ; $6927: $93
    ld d, $44                                     ; $6928: $16 $44
    bit 7, d                                      ; $692a: $cb $7a
    ld a, a                                       ; $692c: $7f
    add hl, bc                                    ; $692d: $09
    sbc d                                         ; $692e: $9a
    rst $10                                       ; $692f: $d7
    or h                                          ; $6930: $b4
    ld [hl], c                                    ; $6931: $71
    ld a, d                                       ; $6932: $7a
    xor $98                                       ; $6933: $ee $98
    ld a, h                                       ; $6935: $7c
    ld a, c                                       ; $6936: $79
    ld [hl], a                                    ; $6937: $77
    ld a, e                                       ; $6938: $7b
    db $d3                                        ; $6939: $d3
    jr nc, jr_069_6916                            ; $693a: $30 $da

    ld c, e                                       ; $693c: $4b
    jp hl                                         ; $693d: $e9


    ld [hl], e                                    ; $693e: $73
    rla                                           ; $693f: $17
    or h                                          ; $6940: $b4
    ld bc, $df3d                                  ; $6941: $01 $3d $df
    halt                                          ; $6944: $76
    ld a, d                                       ; $6945: $7a
    cp l                                          ; $6946: $bd
    cpl                                           ; $6947: $2f
    add [hl]                                      ; $6948: $86
    or c                                          ; $6949: $b1
    ei                                            ; $694a: $fb
    inc bc                                        ; $694b: $03
    add hl, bc                                    ; $694c: $09
    sbc d                                         ; $694d: $9a
    rst $10                                       ; $694e: $d7
    or h                                          ; $694f: $b4
    sub c                                         ; $6950: $91
    db $dd                                        ; $6951: $dd
    pop bc                                        ; $6952: $c1
    add l                                         ; $6953: $85
    db $dd                                        ; $6954: $dd
    inc a                                         ; $6955: $3c
    jp nc, Jump_000_06c9                          ; $6956: $d2 $c9 $06

    db $f4                                        ; $6959: $f4
    ld a, h                                       ; $695a: $7c
    db $db                                        ; $695b: $db
    jp hl                                         ; $695c: $e9


    push af                                       ; $695d: $f5
    cp [hl]                                       ; $695e: $be
    jr jr_069_6927                                ; $695f: $18 $c6

    xor $0f                                       ; $6961: $ee $0f
    add hl, bc                                    ; $6963: $09
    sbc d                                         ; $6964: $9a
    rst $10                                       ; $6965: $d7
    or h                                          ; $6966: $b4
    pop de                                        ; $6967: $d1
    ret                                           ; $6968: $c9


    ld a, d                                       ; $6969: $7a
    ld l, b                                       ; $696a: $68
    add $5f                                       ; $696b: $c6 $5f
    jr c, jr_069_697c                             ; $696d: $38 $0d

    add sp, -$76                                  ; $696f: $e8 $8a
    xor d                                         ; $6971: $aa
    db $e3                                        ; $6972: $e3
    adc h                                         ; $6973: $8c
    ld a, d                                       ; $6974: $7a
    ld a, a                                       ; $6975: $7f
    add hl, bc                                    ; $6976: $09
    sbc d                                         ; $6977: $9a
    rst $10                                       ; $6978: $d7
    or h                                          ; $6979: $b4
    ld [hl], c                                    ; $697a: $71
    ld a, [bc]                                    ; $697b: $0a

jr_069_697c:
    db $fd                                        ; $697c: $fd
    db $ed                                        ; $697d: $ed
    push hl                                       ; $697e: $e5
    db $dd                                        ; $697f: $dd
    db $ed                                        ; $6980: $ed
    ld c, l                                       ; $6981: $4d
    jp $bcf4                                      ; $6982: $c3 $f4 $bc


    or a                                          ; $6985: $b7

Jump_069_6986:
    db $fc                                        ; $6986: $fc
    ret                                           ; $6987: $c9


    ei                                            ; $6988: $fb
    inc bc                                        ; $6989: $03
    add hl, bc                                    ; $698a: $09
    sbc d                                         ; $698b: $9a
    rst $10                                       ; $698c: $d7
    or h                                          ; $698d: $b4
    ld [hl], c                                    ; $698e: $71
    cp d                                          ; $698f: $ba
    add e                                         ; $6990: $83
    adc e                                         ; $6991: $8b

Call_069_6992:
    ld [hl], b                                    ; $6992: $70
    xor $0f                                       ; $6993: $ee $0f
    add hl, bc                                    ; $6995: $09
    sbc d                                         ; $6996: $9a
    rst $10                                       ; $6997: $d7
    or h                                          ; $6998: $b4
    sub c                                         ; $6999: $91
    db $dd                                        ; $699a: $dd
    pop bc                                        ; $699b: $c1
    add l                                         ; $699c: $85
    dec c                                         ; $699d: $0d
    and e                                         ; $699e: $a3
    ld c, l                                       ; $699f: $4d
    or h                                          ; $69a0: $b4
    pop af                                        ; $69a1: $f1
    ld b, d                                       ; $69a2: $42
    ld [hl], l                                    ; $69a3: $75
    inc c                                         ; $69a4: $0c
    ld a, d                                       ; $69a5: $7a
    ld a, a                                       ; $69a6: $7f
    add hl, bc                                    ; $69a7: $09
    sbc d                                         ; $69a8: $9a
    rst $10                                       ; $69a9: $d7
    or h                                          ; $69aa: $b4
    sub c                                         ; $69ab: $91
    db $dd                                        ; $69ac: $dd
    pop bc                                        ; $69ad: $c1
    add l                                         ; $69ae: $85
    dec c                                         ; $69af: $0d
    and e                                         ; $69b0: $a3
    cp l                                          ; $69b1: $bd
    inc d                                         ; $69b2: $14
    reti                                          ; $69b3: $d9


    sbc b                                         ; $69b4: $98
    ld b, a                                       ; $69b5: $47
    rst $28                                       ; $69b6: $ef
    rrca                                          ; $69b7: $0f
    add hl, bc                                    ; $69b8: $09
    sbc d                                         ; $69b9: $9a
    rst $10                                       ; $69ba: $d7
    or h                                          ; $69bb: $b4
    sub c                                         ; $69bc: $91

jr_069_69bd:
    jp c, Jump_069_54ad                           ; $69bd: $da $ad $54

    add hl, sp                                    ; $69c0: $39
    ld h, [hl]                                    ; $69c1: $66
    call nc, $03fb                                ; $69c2: $d4 $fb $03
    add hl, bc                                    ; $69c5: $09
    sbc d                                         ; $69c6: $9a
    rst $10                                       ; $69c7: $d7
    or h                                          ; $69c8: $b4
    sub c                                         ; $69c9: $91
    ld d, l                                       ; $69ca: $55
    ld l, $6c                                     ; $69cb: $2e $6c
    and b                                         ; $69cd: $a0
    sub $9f                                       ; $69ce: $d6 $9f
    push af                                       ; $69d0: $f5
    rlca                                          ; $69d1: $07
    ld b, e                                       ; $69d2: $43
    rst $28                                       ; $69d3: $ef
    rrca                                          ; $69d4: $0f
    add hl, bc                                    ; $69d5: $09
    sbc d                                         ; $69d6: $9a
    rst $10                                       ; $69d7: $d7
    or h                                          ; $69d8: $b4
    ld [hl], c                                    ; $69d9: $71
    ld a, [$d78f]                                 ; $69da: $fa $8f $d7
    ret nc                                        ; $69dd: $d0

    jr nc, jr_069_69bd                            ; $69de: $30 $dd

    ld b, d                                       ; $69e0: $42
    or e                                          ; $69e1: $b3
    sbc l                                         ; $69e2: $9d
    rst $30                                       ; $69e3: $f7
    rlca                                          ; $69e4: $07
    add hl, bc                                    ; $69e5: $09
    sbc d                                         ; $69e6: $9a
    rst $10                                       ; $69e7: $d7
    or h                                          ; $69e8: $b4
    ld [hl], c                                    ; $69e9: $71
    ld a, [$198f]                                 ; $69ea: $fa $8f $19
    jp nz, Jump_000_0358                          ; $69ed: $c2 $58 $03

    ld a, [hl+]                                   ; $69f0: $2a

Jump_069_69f1:
    xor [hl]                                      ; $69f1: $ae
    reti                                          ; $69f2: $d9


    ld h, $8e                                     ; $69f3: $26 $8e
    ld a, h                                       ; $69f5: $7c
    cp h                                          ; $69f6: $bc
    ccf                                           ; $69f7: $3f
    add hl, bc                                    ; $69f8: $09
    sbc d                                         ; $69f9: $9a
    rst $10                                       ; $69fa: $d7
    or h                                          ; $69fb: $b4
    sbc $31                                       ; $69fc: $de $31
    ld [hl], $a0                                  ; $69fe: $36 $a0
    ld e, e                                       ; $6a00: $5b
    ld h, $2d                                     ; $6a01: $26 $2d
    adc b                                         ; $6a03: $88
    sub [hl]                                      ; $6a04: $96
    push af                                       ; $6a05: $f5
    cp $00                                        ; $6a06: $fe $00
    add hl, bc                                    ; $6a08: $09
    sbc d                                         ; $6a09: $9a
    rst $10                                       ; $6a0a: $d7
    or h                                          ; $6a0b: $b4
    sbc $31                                       ; $6a0c: $de $31
    ld [hl], $a0                                  ; $6a0e: $36 $a0
    ld e, e                                       ; $6a10: $5b
    ld h, $2d                                     ; $6a11: $26 $2d
    adc b                                         ; $6a13: $88
    sub [hl]                                      ; $6a14: $96
    push af                                       ; $6a15: $f5
    cp $00                                        ; $6a16: $fe $00
    add hl, bc                                    ; $6a18: $09
    sbc d                                         ; $6a19: $9a
    rst $10                                       ; $6a1a: $d7
    or h                                          ; $6a1b: $b4
    sbc $31                                       ; $6a1c: $de $31
    ld [hl], $a0                                  ; $6a1e: $36 $a0
    ld e, e                                       ; $6a20: $5b
    ld h, $2d                                     ; $6a21: $26 $2d
    adc b                                         ; $6a23: $88
    sub [hl]                                      ; $6a24: $96
    push af                                       ; $6a25: $f5
    cp $00                                        ; $6a26: $fe $00
    add hl, bc                                    ; $6a28: $09
    sbc d                                         ; $6a29: $9a
    rst $10                                       ; $6a2a: $d7
    or h                                          ; $6a2b: $b4
    sbc $31                                       ; $6a2c: $de $31
    ld [hl], $b0                                  ; $6a2e: $36 $b0
    sbc e                                         ; $6a30: $9b
    jp hl                                         ; $6a31: $e9


    ld h, c                                       ; $6a32: $61
    ld h, h                                       ; $6a33: $64
    jp $0b74                                      ; $6a34: $c3 $74 $0b


    db $d3                                        ; $6a37: $d3
    or $c2                                        ; $6a38: $f6 $c2
    db $fd                                        ; $6a3a: $fd
    ld bc, $9a09                                  ; $6a3b: $01 $09 $9a
    rst $10                                       ; $6a3e: $d7
    or h                                          ; $6a3f: $b4
    sub c                                         ; $6a40: $91
    db $dd                                        ; $6a41: $dd
    pop bc                                        ; $6a42: $c1
    add l                                         ; $6a43: $85
    dec c                                         ; $6a44: $0d
    db $d3                                        ; $6a45: $d3
    call $f38b                                    ; $6a46: $cd $8b $f3
    and b                                         ; $6a49: $a0
    ld bc, $ccbd                                  ; $6a4a: $01 $bd $cc
    and $67                                       ; $6a4d: $e6 $67
    inc bc                                        ; $6a4f: $03
    cp d                                          ; $6a50: $ba
    reti                                          ; $6a51: $d9


    ld b, [hl]                                    ; $6a52: $46
    adc [hl]                                      ; $6a53: $8e
    sbc $1f                                       ; $6a54: $de $1f
    add hl, bc                                    ; $6a56: $09
    sbc d                                         ; $6a57: $9a
    rst $10                                       ; $6a58: $d7
    or h                                          ; $6a59: $b4
    ld [hl], c                                    ; $6a5a: $71
    cp d                                          ; $6a5b: $ba
    add e                                         ; $6a5c: $83
    adc e                                         ; $6a5d: $8b
    ld [hl], b                                    ; $6a5e: $70
    xor $0f                                       ; $6a5f: $ee $0f
    add hl, bc                                    ; $6a61: $09
    sbc d                                         ; $6a62: $9a
    rst $10                                       ; $6a63: $d7
    or h                                          ; $6a64: $b4
    ld [hl], c                                    ; $6a65: $71
    ld a, d                                       ; $6a66: $7a
    adc c                                         ; $6a67: $89
    and e                                         ; $6a68: $a3
    push hl                                       ; $6a69: $e5
    jp hl                                         ; $6a6a: $e9


    ld c, $fc                                     ; $6a6b: $0e $fc
    add [hl]                                      ; $6a6d: $86
    inc a                                         ; $6a6e: $3c
    dec c                                         ; $6a6f: $0d
    add sp, $56                                   ; $6a70: $e8 $56
    sub a                                         ; $6a72: $97
    ld c, [hl]                                    ; $6a73: $4e
    cpl                                           ; $6a74: $2f
    ret nc                                        ; $6a75: $d0

    ei                                            ; $6a76: $fb
    inc bc                                        ; $6a77: $03
    add hl, bc                                    ; $6a78: $09
    sbc d                                         ; $6a79: $9a
    rst $10                                       ; $6a7a: $d7
    or h                                          ; $6a7b: $b4
    ld [hl], c                                    ; $6a7c: $71
    sbc d                                         ; $6a7d: $9a
    and b                                         ; $6a7e: $a0
    cp a                                          ; $6a7f: $bf
    cp l                                          ; $6a80: $bd
    cp h                                          ; $6a81: $bc
    cp e                                          ; $6a82: $bb
    cp l                                          ; $6a83: $bd
    ld l, c                                       ; $6a84: $69
    ld b, b                                       ; $6a85: $40
    or a                                          ; $6a86: $b7
    ld [hl-], a                                   ; $6a87: $32
    jp $971e                                      ; $6a88: $c3 $1e $97


    ld b, $34                                     ; $6a8b: $06 $34
    ld b, c                                       ; $6a8d: $41
    ld a, a                                       ; $6a8e: $7f
    ld a, e                                       ; $6a8f: $7b
    ld a, c                                       ; $6a90: $79
    ld [hl], a                                    ; $6a91: $77
    ld a, e                                       ; $6a92: $7b
    ld [hl], e                                    ; $6a93: $73
    ld a, a                                       ; $6a94: $7f
    add hl, bc                                    ; $6a95: $09
    sbc d                                         ; $6a96: $9a
    rst $10                                       ; $6a97: $d7
    or h                                          ; $6a98: $b4
    sub c                                         ; $6a99: $91
    db $dd                                        ; $6a9a: $dd
    ld c, h                                       ; $6a9b: $4c
    ld h, l                                       ; $6a9c: $65
    inc bc                                        ; $6a9d: $03
    ld a, d                                       ; $6a9e: $7a
    ld c, $63                                     ; $6a9f: $0e $63
    ld [hl], d                                    ; $6aa1: $72
    ld a, [de]                                    ; $6aa2: $1a
    ld b, [hl]                                    ; $6aa3: $46
    ld a, e                                       ; $6aa4: $7b
    add hl, hl                                    ; $6aa5: $29
    ld a, l                                       ; $6aa6: $7d
    xor $82                                       ; $6aa7: $ee $82
    sbc $1f                                       ; $6aa9: $de $1f
    add hl, bc                                    ; $6aab: $09
    sbc d                                         ; $6aac: $9a
    rst $10                                       ; $6aad: $d7
    or h                                          ; $6aae: $b4
    sub c                                         ; $6aaf: $91
    ld d, l                                       ; $6ab0: $55
    ld l, $6c                                     ; $6ab1: $2e $6c
    ld b, b                                       ; $6ab3: $40
    jp hl                                         ; $6ab4: $e9


    ld d, $6a                                     ; $6ab5: $16 $6a
    inc bc                                        ; $6ab7: $03
    cp d                                          ; $6ab8: $ba
    ld [hl], l                                    ; $6ab9: $75
    rrca                                          ; $6aba: $0f
    ld a, l                                       ; $6abb: $7d
    ccf                                           ; $6abc: $3f
    cp e                                          ; $6abd: $bb
    push de                                       ; $6abe: $d5
    and l                                         ; $6abf: $a5
    db $d3                                        ; $6ac0: $d3
    dec bc                                        ; $6ac1: $0b
    xor $0f                                       ; $6ac2: $ee $0f
    add hl, bc                                    ; $6ac4: $09
    sbc d                                         ; $6ac5: $9a
    rst $10                                       ; $6ac6: $d7
    or h                                          ; $6ac7: $b4
    sub c                                         ; $6ac8: $91
    ld d, l                                       ; $6ac9: $55
    ld l, $6c                                     ; $6aca: $2e $6c
    ld b, b                                       ; $6acc: $40
    jp hl                                         ; $6acd: $e9


    ld d, $6a                                     ; $6ace: $16 $6a
    inc bc                                        ; $6ad0: $03
    ld a, [hl+]                                   ; $6ad1: $2a
    ld l, [hl]                                    ; $6ad2: $6e
    add hl, de                                    ; $6ad3: $19
    db $dd                                        ; $6ad4: $dd
    ld [$e9d2], a                                 ; $6ad5: $ea $d2 $e9
    dec b                                         ; $6ad8: $05
    rst $30                                       ; $6ad9: $f7
    rlca                                          ; $6ada: $07
    add hl, bc                                    ; $6adb: $09
    sbc d                                         ; $6adc: $9a
    rst $10                                       ; $6add: $d7
    or h                                          ; $6ade: $b4
    ld [hl], c                                    ; $6adf: $71
    cp d                                          ; $6ae0: $ba
    ld a, c                                       ; $6ae1: $79
    cp h                                          ; $6ae2: $bc
    add [hl]                                      ; $6ae3: $86
    add [hl]                                      ; $6ae4: $86
    pop de                                        ; $6ae5: $d1
    ld l, [hl]                                    ; $6ae6: $6e
    or [hl]                                       ; $6ae7: $b6
    sub c                                         ; $6ae8: $91
    and e                                         ; $6ae9: $a3
    rst $30                                       ; $6aea: $f7
    rlca                                          ; $6aeb: $07
    add hl, bc                                    ; $6aec: $09
    sbc d                                         ; $6aed: $9a
    rst $10                                       ; $6aee: $d7
    or h                                          ; $6aef: $b4
    pop de                                        ; $6af0: $d1
    ret                                           ; $6af1: $c9


    cp $63                                        ; $6af2: $fe $63
    add [hl]                                      ; $6af4: $86
    jr nc, jr_069_6b4d                            ; $6af5: $30 $56

    push bc                                       ; $6af7: $c5
    ld l, a                                       ; $6af8: $6f
    ret z                                         ; $6af9: $c8

    ld [hl], e                                    ; $6afa: $73
    ld a, a                                       ; $6afb: $7f
    add hl, bc                                    ; $6afc: $09
    sbc d                                         ; $6afd: $9a
    rst $10                                       ; $6afe: $d7
    or h                                          ; $6aff: $b4
    ld [hl], c                                    ; $6b00: $71
    ld a, [bc]                                    ; $6b01: $0a
    db $fd                                        ; $6b02: $fd
    db $ed                                        ; $6b03: $ed
    push hl                                       ; $6b04: $e5
    db $dd                                        ; $6b05: $dd
    db $ed                                        ; $6b06: $ed
    ld c, l                                       ; $6b07: $4d
    jp $d134                                      ; $6b08: $c3 $34 $d1


    add $0b                                       ; $6b0b: $c6 $0b
    push de                                       ; $6b0d: $d5
    or c                                          ; $6b0e: $b1
    sbc [hl]                                      ; $6b0f: $9e
    di                                            ; $6b10: $f3
    ld h, d                                       ; $6b11: $62
    cp h                                          ; $6b12: $bc
    ccf                                           ; $6b13: $3f
    add hl, bc                                    ; $6b14: $09
    sbc d                                         ; $6b15: $9a
    rst $10                                       ; $6b16: $d7
    or h                                          ; $6b17: $b4
    pop de                                        ; $6b18: $d1
    ld c, c                                       ; $6b19: $49
    ld d, [hl]                                    ; $6b1a: $56
    cp c                                          ; $6b1b: $b9
    or b                                          ; $6b1c: $b0
    ld bc, $5ba5                                  ; $6b1d: $01 $a5 $5b
    xor b                                         ; $6b20: $a8
    ld e, l                                       ; $6b21: $5d
    ld [hl], c                                    ; $6b22: $71
    rst $10                                       ; $6b23: $d7
    db $e3                                        ; $6b24: $e3
    db $fd                                        ; $6b25: $fd
    ld bc, $9a09                                  ; $6b26: $01 $09 $9a
    rst $10                                       ; $6b29: $d7
    or h                                          ; $6b2a: $b4
    sub c                                         ; $6b2b: $91
    ld d, l                                       ; $6b2c: $55
    ld l, $6c                                     ; $6b2d: $2e $6c
    and b                                         ; $6b2f: $a0
    halt                                          ; $6b30: $76
    ld [hl], e                                    ; $6b31: $73
    sub d                                         ; $6b32: $92
    dec hl                                        ; $6b33: $2b
    ld l, b                                       ; $6b34: $68
    push bc                                       ; $6b35: $c5
    rla                                           ; $6b36: $17
    ld b, $ea                                     ; $6b37: $06 $ea
    db $fd                                        ; $6b39: $fd
    ld bc, $9a09                                  ; $6b3a: $01 $09 $9a
    rst $10                                       ; $6b3d: $d7
    or h                                          ; $6b3e: $b4
    ld [hl], c                                    ; $6b3f: $71
    cp d                                          ; $6b40: $ba
    add e                                         ; $6b41: $83
    adc e                                         ; $6b42: $8b
    ld [hl], b                                    ; $6b43: $70
    xor $0f                                       ; $6b44: $ee $0f
    sbc e                                         ; $6b46: $9b
    ld h, c                                       ; $6b47: $61
    sbc c                                         ; $6b48: $99
    cpl                                           ; $6b49: $2f
    ld [hl], $e3                                  ; $6b4a: $36 $e3
    ld c, a                                       ; $6b4c: $4f

jr_069_6b4d:
    add $59                                       ; $6b4d: $c6 $59
    ld h, $bd                                     ; $6b4f: $26 $bd
    or e                                          ; $6b51: $b3
    ld h, d                                       ; $6b52: $62
    ld a, d                                       ; $6b53: $7a
    call c, $c731                                 ; $6b54: $dc $31 $c7
    inc e                                         ; $6b57: $1c
    ld e, e                                       ; $6b58: $5b
    ld [hl], c                                    ; $6b59: $71
    ret                                           ; $6b5a: $c9


    ld e, l                                       ; $6b5b: $5d
    ld l, b                                       ; $6b5c: $68
    ld b, d                                       ; $6b5d: $42
    call z, $ccb0                                 ; $6b5e: $cc $b0 $cc
    rla                                           ; $6b61: $17
    dec h                                         ; $6b62: $25
    ld h, d                                       ; $6b63: $62
    ld d, $f5                                     ; $6b64: $16 $f5
    add d                                         ; $6b66: $82
    ld hl, sp-$21                                 ; $6b67: $f8 $df
    cp l                                          ; $6b69: $bd
    xor [hl]                                      ; $6b6a: $ae
    cp l                                          ; $6b6b: $bd
    ld c, [hl]                                    ; $6b6c: $4e
    ld e, h                                       ; $6b6d: $5c
    ld [hl], d                                    ; $6b6e: $72
    rla                                           ; $6b6f: $17
    sbc d                                         ; $6b70: $9a
    db $10                                        ; $6b71: $10
    inc sp                                        ; $6b72: $33
    inc l                                         ; $6b73: $2c
    di                                            ; $6b74: $f3
    ld b, l                                       ; $6b75: $45
    adc c                                         ; $6b76: $89
    sbc b                                         ; $6b77: $98
    adc e                                         ; $6b78: $8b
    ld c, [hl]                                    ; $6b79: $4e
    sub a                                         ; $6b7a: $97
    ld c, c                                       ; $6b7b: $49
    ld c, a                                       ; $6b7c: $4f
    ld a, [hl]                                    ; $6b7d: $7e
    cp $54                                        ; $6b7e: $fe $54
    ld e, h                                       ; $6b80: $5c
    ld [hl], d                                    ; $6b81: $72
    rla                                           ; $6b82: $17
    sbc d                                         ; $6b83: $9a
    db $10                                        ; $6b84: $10
    inc sp                                        ; $6b85: $33
    inc l                                         ; $6b86: $2c
    di                                            ; $6b87: $f3
    ld b, l                                       ; $6b88: $45
    adc c                                         ; $6b89: $89
    sbc b                                         ; $6b8a: $98
    ld a, e                                       ; $6b8b: $7b
    ld [hl], h                                    ; $6b8c: $74
    rst $08                                       ; $6b8d: $cf
    or a                                          ; $6b8e: $b7
    rst $20                                       ; $6b8f: $e7
    rst $20                                       ; $6b90: $e7
    adc c                                         ; $6b91: $89
    cpl                                           ; $6b92: $2f
    and e                                         ; $6b93: $a3
    ld a, [hl+]                                   ; $6b94: $2a
    sbc h                                         ; $6b95: $9c
    ld c, d                                       ; $6b96: $4a
    jp c, $ed4f                                   ; $6b97: $da $4f $ed

    ccf                                           ; $6b9a: $3f
    ld [de], a                                    ; $6b9b: $12
    or $3f                                        ; $6b9c: $f6 $3f
    ld a, $ad                                     ; $6b9e: $3e $ad
    ld hl, $34fd                                  ; $6ba0: $21 $fd $34
    inc sp                                        ; $6ba3: $33
    ld d, b                                       ; $6ba4: $50
    dec de                                        ; $6ba5: $1b
    ld e, b                                       ; $6ba6: $58
    ld [hl], c                                    ; $6ba7: $71
    ret                                           ; $6ba8: $c9


    ld e, l                                       ; $6ba9: $5d
    ld l, b                                       ; $6baa: $68
    ld b, d                                       ; $6bab: $42
    call z, $ccb0                                 ; $6bac: $cc $b0 $cc
    rla                                           ; $6baf: $17
    dec h                                         ; $6bb0: $25
    ld h, d                                       ; $6bb1: $62
    ld d, $f5                                     ; $6bb2: $16 $f5
    add d                                         ; $6bb4: $82
    ld hl, sp-$21                                 ; $6bb5: $f8 $df
    adc l                                         ; $6bb7: $8d
    and e                                         ; $6bb8: $a3
    add l                                         ; $6bb9: $85
    ld h, [hl]                                    ; $6bba: $66
    add [hl]                                      ; $6bbb: $86
    pop de                                        ; $6bbc: $d1
    ld e, [hl]                                    ; $6bbd: $5e
    ld e, $5f                                     ; $6bbe: $1e $5f
    jr jr_069_6bef                                ; $6bc0: $18 $2d

    adc [hl]                                      ; $6bc2: $8e
    ld e, $d7                                     ; $6bc3: $1e $d7
    jr c, jr_069_6bf5                             ; $6bc5: $38 $2e

    db $db                                        ; $6bc7: $db
    ld l, b                                       ; $6bc8: $68
    ld a, l                                       ; $6bc9: $7d
    xor $a6                                       ; $6bca: $ee $a6
    ret nc                                        ; $6bcc: $d0

    cp e                                          ; $6bcd: $bb
    rst $10                                       ; $6bce: $d7
    or l                                          ; $6bcf: $b5
    rst $10                                       ; $6bd0: $d7
    ld l, l                                       ; $6bd1: $6d
    ld [hl], l                                    ; $6bd2: $75
    cp d                                          ; $6bd3: $ba
    di                                            ; $6bd4: $f3
    xor d                                         ; $6bd5: $aa
    adc d                                         ; $6bd6: $8a
    cp e                                          ; $6bd7: $bb
    ldh a, [$a6]                                  ; $6bd8: $f0 $a6
    sub a                                         ; $6bda: $97
    call Call_069_5a2c                            ; $6bdb: $cd $2c $5a
    dec e                                         ; $6bde: $1d
    ld c, a                                       ; $6bdf: $4f
    sub a                                         ; $6be0: $97
    rst $30                                       ; $6be1: $f7
    inc hl                                        ; $6be2: $23
    xor [hl]                                      ; $6be3: $ae
    ld h, a                                       ; $6be4: $67
    inc bc                                        ; $6be5: $03
    ld a, e                                       ; $6be6: $7b
    ld e, $ff                                     ; $6be7: $1e $ff
    inc a                                         ; $6be9: $3c
    sub $13                                       ; $6bea: $d6 $13
    ld a, e                                       ; $6bec: $7b
    ld e, l                                       ; $6bed: $5d
    ld a, e                                       ; $6bee: $7b

jr_069_6bef:
    db $dd                                        ; $6bef: $dd
    push bc                                       ; $6bf0: $c5
    rla                                           ; $6bf1: $17
    ld l, h                                       ; $6bf2: $6c
    ld c, [hl]                                    ; $6bf3: $4e
    ret c                                         ; $6bf4: $d8

jr_069_6bf5:
    or [hl]                                       ; $6bf5: $b6
    inc hl                                        ; $6bf6: $23
    pop hl                                        ; $6bf7: $e1
    call c, Call_069_739e                         ; $6bf8: $dc $9e $73
    ld [hl], l                                    ; $6bfb: $75
    or a                                          ; $6bfc: $b7
    ld e, l                                       ; $6bfd: $5d
    or b                                          ; $6bfe: $b0
    db $ed                                        ; $6bff: $ed
    or d                                          ; $6c00: $b2
    add h                                         ; $6c01: $84
    ld l, l                                       ; $6c02: $6d
    rst $20                                       ; $6c03: $e7
    ld l, [hl]                                    ; $6c04: $6e
    rst $38                                       ; $6c05: $ff
    nop                                           ; $6c06: $00
    ld h, d                                       ; $6c07: $62
    ld a, d                                       ; $6c08: $7a
    call c, $c731                                 ; $6c09: $dc $31 $c7
    inc e                                         ; $6c0c: $1c
    db $db                                        ; $6c0d: $db
    add h                                         ; $6c0e: $84
    dec b                                         ; $6c0f: $05
    ld a, a                                       ; $6c10: $7f
    or [hl]                                       ; $6c11: $b6
    adc c                                         ; $6c12: $89
    rst $28                                       ; $6c13: $ef
    xor a                                         ; $6c14: $af
    cp b                                          ; $6c15: $b8
    ld h, l                                       ; $6c16: $65
    db $ed                                        ; $6c17: $ed
    dec b                                         ; $6c18: $05
    pop af                                        ; $6c19: $f1
    cp a                                          ; $6c1a: $bf
    ld a, e                                       ; $6c1b: $7b
    db $dd                                        ; $6c1c: $dd
    ld h, l                                       ; $6c1d: $65
    inc de                                        ; $6c1e: $13
    ld b, [hl]                                    ; $6c1f: $46
    dec sp                                        ; $6c20: $3b
    jp c, $9f73                                   ; $6c21: $da $73 $9f

    pop hl                                        ; $6c24: $e1
    push hl                                       ; $6c25: $e5
    pop de                                        ; $6c26: $d1
    ld e, [hl]                                    ; $6c27: $5e
    ld a, [bc]                                    ; $6c28: $0a
    add l                                         ; $6c29: $85
    xor l                                         ; $6c2a: $ad
    jr jr_069_6c73                                ; $6c2b: $18 $46

    ccf                                           ; $6c2d: $3f
    adc c                                         ; $6c2e: $89
    or $24                                        ; $6c2f: $f6 $24
    ld a, d                                       ; $6c31: $7a
    adc $64                                       ; $6c32: $ce $64
    pop hl                                        ; $6c34: $e1
    ld [hl], h                                    ; $6c35: $74
    ld b, a                                       ; $6c36: $47
    and [hl]                                      ; $6c37: $a6
    push hl                                       ; $6c38: $e5
    rrca                                          ; $6c39: $0f
    db $db                                        ; $6c3a: $db
    halt                                          ; $6c3b: $76
    ld e, e                                       ; $6c3c: $5b
    ld h, c                                       ; $6c3d: $61
    add hl, sp                                    ; $6c3e: $39
    db $ed                                        ; $6c3f: $ed
    db $ec                                        ; $6c40: $ec
    ld h, e                                       ; $6c41: $63
    ei                                            ; $6c42: $fb
    ld bc, $c65b                                  ; $6c43: $01 $5b $c6
    ld a, b                                       ; $6c46: $78
    ld e, d                                       ; $6c47: $5a
    rst $08                                       ; $6c48: $cf
    ld a, $f6                                     ; $6c49: $3e $f6
    or h                                          ; $6c4b: $b4
    or e                                          ; $6c4c: $b3
    adc a                                         ; $6c4d: $8f
    dec sp                                        ; $6c4e: $3b
    db $ed                                        ; $6c4f: $ed
    db $ec                                        ; $6c50: $ec
    db $e3                                        ; $6c51: $e3
    ei                                            ; $6c52: $fb
    ld bc, $84db                                  ; $6c53: $01 $db $84
    ld d, e                                       ; $6c56: $53
    sub a                                         ; $6c57: $97
    rst $18                                       ; $6c58: $df
    ld a, [c]                                     ; $6c59: $f2
    halt                                          ; $6c5a: $76
    ld sp, $af4c                                  ; $6c5b: $31 $4c $af
    ld l, e                                       ; $6c5e: $6b
    xor a                                         ; $6c5f: $af
    ld l, e                                       ; $6c60: $6b
    xor a                                         ; $6c61: $af
    ld l, e                                       ; $6c62: $6b
    ccf                                           ; $6c63: $3f
    dec sp                                        ; $6c64: $3b
    sub [hl]                                      ; $6c65: $96
    ret                                           ; $6c66: $c9


    ld [hl], l                                    ; $6c67: $75
    ld sp, hl                                     ; $6c68: $f9
    dec l                                         ; $6c69: $2d
    ld l, a                                       ; $6c6a: $6f
    rla                                           ; $6c6b: $17
    inc bc                                        ; $6c6c: $03
    rst $28                                       ; $6c6d: $ef
    ld e, [hl]                                    ; $6c6e: $5e
    or a                                          ; $6c6f: $b7
    jp Jump_000_3479                              ; $6c70: $c3 $79 $34


jr_069_6c73:
    cp a                                          ; $6c73: $bf
    db $ec                                        ; $6c74: $ec
    sbc [hl]                                      ; $6c75: $9e
    ld l, l                                       ; $6c76: $6d
    ld a, [$5700]                                 ; $6c77: $fa $00 $57
    sbc l                                         ; $6c7a: $9d
    halt                                          ; $6c7b: $76
    or $b1                                        ; $6c7c: $f6 $b1
    cp l                                          ; $6c7e: $bd
    ld a, [$b3b4]                                 ; $6c7f: $fa $b4 $b3
    adc a                                         ; $6c82: $8f
    db $eb                                        ; $6c83: $eb
    rlca                                          ; $6c84: $07
    add hl, bc                                    ; $6c85: $09
    sbc d                                         ; $6c86: $9a
    ld e, c                                       ; $6c87: $59
    jp c, Jump_069_42cf                           ; $6c88: $da $cf $42

    di                                            ; $6c8b: $f3
    ld e, d                                       ; $6c8c: $5a
    or e                                          ; $6c8d: $b3
    ld sp, $0cfe                                  ; $6c8e: $31 $fe $0c
    call c, Call_000_01f0                         ; $6c91: $dc $f0 $01
    sub a                                         ; $6c94: $97
    rst $20                                       ; $6c95: $e7
    or a                                          ; $6c96: $b7
    cp h                                          ; $6c97: $bc
    ld e, l                                       ; $6c98: $5d
    ld e, h                                       ; $6c99: $5c
    cpl                                           ; $6c9a: $2f
    sbc h                                         ; $6c9b: $9c
    db $d3                                        ; $6c9c: $d3
    ld a, $c7                                     ; $6c9d: $3e $c7
    ld e, $d9                                     ; $6c9f: $1e $d9
    or e                                          ; $6ca1: $b3

Call_069_6ca2:
    adc a                                         ; $6ca2: $8f
    db $ed                                        ; $6ca3: $ed
    rlca                                          ; $6ca4: $07
    rst $00                                       ; $6ca5: $c7
    dec e                                         ; $6ca6: $1d
    reti                                          ; $6ca7: $d9


    or e                                          ; $6ca8: $b3
    adc a                                         ; $6ca9: $8f
    db $ed                                        ; $6caa: $ed
    rlca                                          ; $6cab: $07
    rst $00                                       ; $6cac: $c7
    rra                                           ; $6cad: $1f
    reti                                          ; $6cae: $d9


    or e                                          ; $6caf: $b3
    adc a                                         ; $6cb0: $8f
    db $ed                                        ; $6cb1: $ed
    rlca                                          ; $6cb2: $07
    daa                                           ; $6cb3: $27
    inc e                                         ; $6cb4: $1c
    reti                                          ; $6cb5: $d9


    or e                                          ; $6cb6: $b3
    adc a                                         ; $6cb7: $8f
    db $ed                                        ; $6cb8: $ed
    rlca                                          ; $6cb9: $07
    adc c                                         ; $6cba: $89
    inc [hl]                                      ; $6cbb: $34
    or $3c                                        ; $6cbc: $f6 $3c
    xor $82                                       ; $6cbe: $ee $82
    sbc l                                         ; $6cc0: $9d
    or $01                                        ; $6cc1: $f6 $01
    ld [c], a                                     ; $6cc3: $e2
    cpl                                           ; $6cc4: $2f
    ld b, $36                                     ; $6cc5: $06 $36
    ld a, [bc]                                    ; $6cc7: $0a
    and a                                         ; $6cc8: $a7
    db $f4                                        ; $6cc9: $f4
    dec c                                         ; $6cca: $0d
    ld sp, $3340                                  ; $6ccb: $31 $40 $33
    ld a, [bc]                                    ; $6cce: $0a
    call $e1ac                                    ; $6ccf: $cd $ac $e1
    rst $00                                       ; $6cd2: $c7
    set 3, h                                      ; $6cd3: $cb $dc
    ldh a, [rSB]                                  ; $6cd5: $f0 $01
    sbc e                                         ; $6cd7: $9b
    cp c                                          ; $6cd8: $b9
    inc b                                         ; $6cd9: $04
    inc a                                         ; $6cda: $3c
    inc de                                        ; $6cdb: $13
    ld c, [hl]                                    ; $6cdc: $4e
    rst $08                                       ; $6cdd: $cf
    add l                                         ; $6cde: $85
    jp z, Jump_069_7989                           ; $6cdf: $ca $89 $79

    ld l, l                                       ; $6ce2: $6d
    add l                                         ; $6ce3: $85
    push hl                                       ; $6ce4: $e5
    inc bc                                        ; $6ce5: $03
    sbc e                                         ; $6ce6: $9b
    cp c                                          ; $6ce7: $b9
    inc b                                         ; $6ce8: $04
    inc a                                         ; $6ce9: $3c
    inc de                                        ; $6cea: $13
    ld c, [hl]                                    ; $6ceb: $4e
    inc bc                                        ; $6cec: $03
    cp d                                          ; $6ced: $ba
    ld a, c                                       ; $6cee: $79
    inc a                                         ; $6cef: $3c
    add [hl]                                      ; $6cf0: $86
    rrca                                          ; $6cf1: $0f
    sbc e                                         ; $6cf2: $9b
    cp c                                          ; $6cf3: $b9
    inc b                                         ; $6cf4: $04
    inc a                                         ; $6cf5: $3c
    inc de                                        ; $6cf6: $13
    ld c, [hl]                                    ; $6cf7: $4e
    inc bc                                        ; $6cf8: $03
    ld a, d                                       ; $6cf9: $7a
    adc [hl]                                      ; $6cfa: $8e
    ld c, l                                       ; $6cfb: $4d
    call c, $0f85                                 ; $6cfc: $dc $85 $0f
    sbc e                                         ; $6cff: $9b
    cp c                                          ; $6d00: $b9
    inc b                                         ; $6d01: $04
    inc a                                         ; $6d02: $3c
    inc de                                        ; $6d03: $13
    ld c, [hl]                                    ; $6d04: $4e
    inc bc                                        ; $6d05: $03
    sbc d                                         ; $6d06: $9a
    ld l, b                                       ; $6d07: $68
    call z, Call_000_00fc                         ; $6d08: $cc $fc $00
    sbc e                                         ; $6d0b: $9b

Call_069_6d0c:
    cp c                                          ; $6d0c: $b9
    inc b                                         ; $6d0d: $04
    inc a                                         ; $6d0e: $3c
    inc de                                        ; $6d0f: $13
    ld c, [hl]                                    ; $6d10: $4e
    push bc                                       ; $6d11: $c5
    ld e, l                                       ; $6d12: $5d
    ld e, $f9                                     ; $6d13: $1e $f9

jr_069_6d15:
    inc [hl]                                      ; $6d15: $34
    dec sp                                        ; $6d16: $3b
    ld h, e                                       ; $6d17: $63
    jr jr_069_6d15                                ; $6d18: $18 $fb

    nop                                           ; $6d1a: $00
    sub a                                         ; $6d1b: $97
    ld a, [c]                                     ; $6d1c: $f2
    db $ed                                        ; $6d1d: $ed
    ld l, d                                       ; $6d1e: $6a
    ld b, b                                       ; $6d1f: $40
    push bc                                       ; $6d20: $c5
    push de                                       ; $6d21: $d5
    cp e                                          ; $6d22: $bb
    ld a, e                                       ; $6d23: $7b
    ret nz                                        ; $6d24: $c0

    ld [hl-], a                                   ; $6d25: $32
    rra                                           ; $6d26: $1f
    ld e, e                                       ; $6d27: $5b
    daa                                           ; $6d28: $27
    ld a, [bc]                                    ; $6d29: $0a
    call nc, $4ce4                                ; $6d2a: $d4 $e4 $4c
    ld hl, sp+$00                                 ; $6d2d: $f8 $00
    sub a                                         ; $6d2f: $97

Jump_069_6d30:
    ld e, e                                       ; $6d30: $5b
    ld a, [hl]                                    ; $6d31: $7e
    ld l, c                                       ; $6d32: $69
    ld l, d                                       ; $6d33: $6a
    ld [hl], a                                    ; $6d34: $77
    ldh [$a7], a                                  ; $6d35: $e0 $a7
    ld a, [hl]                                    ; $6d37: $7e
    rst $20                                       ; $6d38: $e7
    xor $f6                                       ; $6d39: $ee $f6
    ld h, a                                       ; $6d3b: $67
    jp z, Jump_000_00f9                           ; $6d3c: $ca $f9 $00

    ld [c], a                                     ; $6d3f: $e2
    ld e, $7d                                     ; $6d40: $1e $7d
    ld sp, $07cf                                  ; $6d42: $31 $cf $07
    sub a                                         ; $6d45: $97
    ld a, [c]                                     ; $6d46: $f2
    db $ed                                        ; $6d47: $ed
    ld l, d                                       ; $6d48: $6a
    ld b, b                                       ; $6d49: $40
    or a                                          ; $6d4a: $b7
    ld [hl-], a                                   ; $6d4b: $32
    ld b, $5b                                     ; $6d4c: $06 $5b
    ld c, e                                       ; $6d4e: $4b
    adc a                                         ; $6d4f: $8f
    pop af                                        ; $6d50: $f1
    inc bc                                        ; $6d51: $03
    adc c                                         ; $6d52: $89
    ld e, b                                       ; $6d53: $58
    ret nc                                        ; $6d54: $d0

    add b                                         ; $6d55: $80
    sbc [hl]                                      ; $6d56: $9e
    inc sp                                        ; $6d57: $33
    inc hl                                        ; $6d58: $23
    ld [hl], l                                    ; $6d59: $75
    ld h, c                                       ; $6d5a: $61
    ld c, h                                       ; $6d5b: $4c
    ld a, a                                       ; $6d5c: $7f
    add hl, bc                                    ; $6d5d: $09
    ld [$98bf], a                                 ; $6d5e: $ea $bf $98
    inc e                                         ; $6d61: $1c
    ld l, l                                       ; $6d62: $6d
    ld b, b                                       ; $6d63: $40
    inc de                                        ; $6d64: $13
    rst $00                                       ; $6d65: $c7
    cp $d9                                        ; $6d66: $fe $d9
    sbc b                                         ; $6d68: $98
    and b                                         ; $6d69: $a0
    cp $8b                                        ; $6d6a: $fe $8b
    ret                                           ; $6d6c: $c9


    ld sp, hl                                     ; $6d6d: $f9
    nop                                           ; $6d6e: $00
    adc c                                         ; $6d6f: $89
    cp e                                          ; $6d70: $bb
    scf                                           ; $6d71: $37
    and b                                         ; $6d72: $a0
    adc c                                         ; $6d73: $89
    or e                                          ; $6d74: $b3
    xor h                                         ; $6d75: $ac
    and $03                                       ; $6d76: $e6 $03
    db $db                                        ; $6d78: $db
    sub a                                         ; $6d79: $97
    db $e4                                        ; $6d7a: $e4
    ld l, b                                       ; $6d7b: $68
    inc bc                                        ; $6d7c: $03
    sbc d                                         ; $6d7d: $9a
    and b                                         ; $6d7e: $a0
    ccf                                           ; $6d7f: $3f
    adc l                                         ; $6d80: $8d
    dec hl                                        ; $6d81: $2b
    inc l                                         ; $6d82: $2c
    ret                                           ; $6d83: $c9


    ld sp, hl                                     ; $6d84: $f9
    nop                                           ; $6d85: $00
    sbc e                                         ; $6d86: $9b
    rst $00                                       ; $6d87: $c7
    ld [c], a                                     ; $6d88: $e2
    inc [hl]                                      ; $6d89: $34
    and b                                         ; $6d8a: $a0
    rst $20                                       ; $6d8b: $e7
    cp h                                          ; $6d8c: $bc
    ld a, a                                       ; $6d8d: $7f
    ld [hl], a                                    ; $6d8e: $77

jr_069_6d8f:
    adc e                                         ; $6d8f: $8b
    ld l, a                                       ; $6d90: $6f
    ld a, $e7                                     ; $6d91: $3e $e7
    ld [hl+], a                                   ; $6d93: $22
    ld h, [hl]                                    ; $6d94: $66
    inc [hl]                                      ; $6d95: $34
    and b                                         ; $6d96: $a0
    ld d, a                                       ; $6d97: $57
    db $ec                                        ; $6d98: $ec
    and $19                                       ; $6d99: $e6 $19
    db $e3                                        ; $6d9b: $e3

jr_069_6d9c:
    rlca                                          ; $6d9c: $07
    adc c                                         ; $6d9d: $89
    ld [$9ec6], sp                                ; $6d9e: $08 $c6 $9e
    add e                                         ; $6da1: $83
    ld e, l                                       ; $6da2: $5d
    ld b, e                                       ; $6da3: $43
    ei                                            ; $6da4: $fb
    nop                                           ; $6da5: $00
    sbc e                                         ; $6da6: $9b
    rst $00                                       ; $6da7: $c7
    ld [c], a                                     ; $6da8: $e2
    inc [hl]                                      ; $6da9: $34
    and b                                         ; $6daa: $a0
    adc c                                         ; $6dab: $89
    add $cc                                       ; $6dac: $c6 $cc

jr_069_6dae:
    ld b, $f4                                     ; $6dae: $06 $f4
    ld a, [c]                                     ; $6db0: $f2
    ld hl, sp-$02                                 ; $6db1: $f8 $fe
    db $dd                                        ; $6db3: $dd
    dec l                                         ; $6db4: $2d
    cp [hl]                                       ; $6db5: $be
    ld sp, hl                                     ; $6db6: $f9
    nop                                           ; $6db7: $00
    ld d, a                                       ; $6db8: $57
    adc $e2                                       ; $6db9: $ce $e2
    ld d, l                                       ; $6dbb: $55
    rrca                                          ; $6dbc: $0f
    inc hl                                        ; $6dbd: $23
    ld a, $e2                                     ; $6dbe: $3e $e2
    rst $38                                       ; $6dc0: $ff
    xor $f1                                       ; $6dc1: $ee $f1
    push hl                                       ; $6dc3: $e5
    ld sp, hl                                     ; $6dc4: $f9
    nop                                           ; $6dc5: $00
    ld [c], a                                     ; $6dc6: $e2
    ld sp, $16ef                                  ; $6dc7: $31 $ef $16
    ld h, $cf                                     ; $6dca: $26 $cf
    rlca                                          ; $6dcc: $07
    adc c                                         ; $6dcd: $89
    or e                                          ; $6dce: $b3
    ld e, [hl]                                    ; $6dcf: $5e
    jr c, jr_069_6d8f                             ; $6dd0: $38 $bd

    ld a, [c]                                     ; $6dd2: $f2
    and l                                         ; $6dd3: $a5
    db $d3                                        ; $6dd4: $d3
    adc b                                         ; $6dd5: $88
    add d                                         ; $6dd6: $82
    or b                                          ; $6dd7: $b0
    add h                                         ; $6dd8: $84

jr_069_6dd9:
    rrca                                          ; $6dd9: $0f
    adc c                                         ; $6dda: $89
    or e                                          ; $6ddb: $b3
    ld e, [hl]                                    ; $6ddc: $5e
    jr c, jr_069_6d9c                             ; $6ddd: $38 $bd

    ld a, [c]                                     ; $6ddf: $f2
    and l                                         ; $6de0: $a5
    db $d3                                        ; $6de1: $d3
    adc b                                         ; $6de2: $88
    add d                                         ; $6de3: $82
    or b                                          ; $6de4: $b0
    add h                                         ; $6de5: $84
    xor $70                                       ; $6de6: $ee $70
    ld a, $ec                                     ; $6de8: $3e $ec
    adc l                                         ; $6dea: $8d
    ld a, l                                       ; $6deb: $7d
    adc c                                         ; $6dec: $89
    or e                                          ; $6ded: $b3
    ld e, [hl]                                    ; $6dee: $5e
    jr c, jr_069_6dae                             ; $6def: $38 $bd

    ld [c], a                                     ; $6df1: $e2
    ld h, l                                       ; $6df2: $65
    jp z, $f827                                   ; $6df3: $ca $27 $f8

    inc bc                                        ; $6df6: $03
    adc c                                         ; $6df7: $89
    or e                                          ; $6df8: $b3
    ld e, [hl]                                    ; $6df9: $5e
    jr c, jr_069_6dd9                             ; $6dfa: $38 $dd

    ld [bc], a                                    ; $6dfc: $02
    di                                            ; $6dfd: $f3
    cp h                                          ; $6dfe: $bc
    rst $38                                       ; $6dff: $ff
    dec b                                         ; $6e00: $05
    ld a, [hl]                                    ; $6e01: $7e
    adc c                                         ; $6e02: $89
    or e                                          ; $6e03: $b3
    ld e, [hl]                                    ; $6e04: $5e
    jr c, jr_069_6e1c                             ; $6e05: $38 $15

    rst $30                                       ; $6e07: $f7
    sbc a                                         ; $6e08: $9f
    ld b, h                                       ; $6e09: $44
    call z, $fc0c                                 ; $6e0a: $cc $0c $fc
    nop                                           ; $6e0d: $00
    adc c                                         ; $6e0e: $89
    or e                                          ; $6e0f: $b3
    ld e, [hl]                                    ; $6e10: $5e
    jr c, jr_069_6e28                             ; $6e11: $38 $15

    rst $30                                       ; $6e13: $f7
    sbc a                                         ; $6e14: $9f
    ld b, h                                       ; $6e15: $44
    call z, $ec0c                                 ; $6e16: $cc $0c $ec
    ld c, $e7                                     ; $6e19: $0e $e7
    rst $18                                       ; $6e1b: $df

jr_069_6e1c:
    rra                                           ; $6e1c: $1f
    add hl, bc                                    ; $6e1d: $09
    add d                                         ; $6e1e: $82
    pop af                                        ; $6e1f: $f1
    cp e                                          ; $6e20: $bb
    ld c, h                                       ; $6e21: $4c
    ei                                            ; $6e22: $fb
    nop                                           ; $6e23: $00
    db $db                                        ; $6e24: $db
    or $90                                        ; $6e25: $f6 $90
    or b                                          ; $6e27: $b0

jr_069_6e28:
    ld l, c                                       ; $6e28: $69
    sbc b                                         ; $6e29: $98
    ld l, [hl]                                    ; $6e2a: $6e
    or [hl]                                       ; $6e2b: $b6
    sub c                                         ; $6e2c: $91
    ld [hl], e                                    ; $6e2d: $73
    ld e, d                                       ; $6e2e: $5a
    rst $08                                       ; $6e2f: $cf
    ld a, $b6                                     ; $6e30: $3e $b6
    rra                                           ; $6e32: $1f
    add hl, bc                                    ; $6e33: $09
    ld a, [$92cf]                                 ; $6e34: $fa $cf $92
    add h                                         ; $6e37: $84
    ld [hl], l                                    ; $6e38: $75
    or e                                          ; $6e39: $b3
    adc l                                         ; $6e3a: $8d
    sbc h                                         ; $6e3b: $9c
    rrca                                          ; $6e3c: $0f
    sub a                                         ; $6e3d: $97
    reti                                          ; $6e3e: $d9


    db $fc                                        ; $6e3f: $fc
    or h                                          ; $6e40: $b4
    rrca                                          ; $6e41: $0f
    dec sp                                        ; $6e42: $3b
    ld hl, sp-$14                                 ; $6e43: $f8 $ec
    inc bc                                        ; $6e45: $03
    adc c                                         ; $6e46: $89
    ld [hl], $31                                  ; $6e47: $36 $31
    ld c, a                                       ; $6e49: $4f
    ld a, l                                       ; $6e4a: $7d
    ld a, [de]                                    ; $6e4b: $1a
    ld a, e                                       ; $6e4c: $7b
    sbc c                                         ; $6e4d: $99
    call $db4f                                    ; $6e4e: $cd $4f $db
    ldh a, [rSB]                                  ; $6e51: $f0 $01
    ld a, e                                       ; $6e53: $7b
    rla                                           ; $6e54: $17
    ld [$d8c3], a                                 ; $6e55: $ea $c3 $d8
    add b                                         ; $6e58: $80
    adc [hl]                                      ; $6e59: $8e
    swap [hl]                                     ; $6e5a: $cb $36
    dec d                                         ; $6e5c: $15
    jr nc, jr_069_6ec8                            ; $6e5d: $30 $69

    add [hl]                                      ; $6e5f: $86
    or c                                          ; $6e60: $b1
    cp e                                          ; $6e61: $bb
    adc c                                         ; $6e62: $89
    or $24                                        ; $6e63: $f6 $24
    ld a, [hl-]                                   ; $6e65: $3a
    dec a                                         ; $6e66: $3d
    ld h, a                                       ; $6e67: $67
    or d                                          ; $6e68: $b2
    ld [hl], b                                    ; $6e69: $70
    ld a, d                                       ; $6e6a: $7a
    ld c, [hl]                                    ; $6e6b: $4e
    ld a, l                                       ; $6e6c: $7d
    ld a, [de]                                    ; $6e6d: $1a
    ei                                            ; $6e6e: $fb
    inc sp                                        ; $6e6f: $33
    cp $58                                        ; $6e70: $fe $58
    ld l, b                                       ; $6e72: $68
    ld h, l                                       ; $6e73: $65
    or e                                          ; $6e74: $b3
    call $fbcf                                    ; $6e75: $cd $cf $fb
    inc bc                                        ; $6e78: $03
    sub a                                         ; $6e79: $97
    reti                                          ; $6e7a: $d9


    db $fc                                        ; $6e7b: $fc
    db $ec                                        ; $6e7c: $ec
    ld h, [hl]                                    ; $6e7d: $66
    add $1f                                       ; $6e7e: $c6 $1f
    dec bc                                        ; $6e80: $0b
    inc bc                                        ; $6e81: $03
    scf                                           ; $6e82: $37
    ld a, h                                       ; $6e83: $7c

jr_069_6e84:
    sub a                                         ; $6e84: $97
    reti                                          ; $6e85: $d9


Call_069_6e86:
    db $fc                                        ; $6e86: $fc
    db $ec                                        ; $6e87: $ec
    ld h, l                                       ; $6e88: $65
    jr nc, jr_069_6e84                            ; $6e89: $30 $f9

    ld [hl+], a                                   ; $6e8b: $22
    inc bc                                        ; $6e8c: $03
    scf                                           ; $6e8d: $37
    ld a, h                                       ; $6e8e: $7c
    db $db                                        ; $6e8f: $db
    add h                                         ; $6e90: $84
    db $d3                                        ; $6e91: $d3
    ld [hl], l                                    ; $6e92: $75
    push af                                       ; $6e93: $f5
    ld b, a                                       ; $6e94: $47
    ld [hl], l                                    ; $6e95: $75
    or a                                          ; $6e96: $b7
    dec d                                         ; $6e97: $15
    sub [hl]                                      ; $6e98: $96
    jp nc, Jump_069_4c67                          ; $6e99: $d2 $67 $4c

    jp nc, $f92a                                  ; $6e9c: $d2 $2a $f9

    or h                                          ; $6e9f: $b4
    cp a                                          ; $6ea0: $bf
    adc l                                         ; $6ea1: $8d

jr_069_6ea2:
    inc e                                         ; $6ea2: $1c
    dec d                                         ; $6ea3: $15
    push de                                       ; $6ea4: $d5
    rra                                           ; $6ea5: $1f
    ld c, e                                       ; $6ea6: $4b
    add hl, sp                                    ; $6ea7: $39
    ld [hl], h                                    ; $6ea8: $74
    ld a, d                                       ; $6ea9: $7a
    sbc $2c                                       ; $6eaa: $de $2c
    ld l, a                                       ; $6eac: $6f
    ld a, d                                       ; $6ead: $7a
    adc [hl]                                      ; $6eae: $8e
    ld h, c                                       ; $6eaf: $61
    push af                                       ; $6eb0: $f5
    or h                                          ; $6eb1: $b4
    ret nc                                        ; $6eb2: $d0

    cp h                                          ; $6eb3: $bc
    sub $3f                                       ; $6eb4: $d6 $3f
    adc c                                         ; $6eb6: $89
    scf                                           ; $6eb7: $37
    dec de                                        ; $6eb8: $1b
    ld a, $09                                     ; $6eb9: $3e $09
    pop af                                        ; $6ebb: $f1
    sbc a                                         ; $6ebc: $9f
    sbc b                                         ; $6ebd: $98
    adc l                                         ; $6ebe: $8d
    sbc d                                         ; $6ebf: $9a
    ld d, c                                       ; $6ec0: $51
    daa                                           ; $6ec1: $27
    cp e                                          ; $6ec2: $bb
    reti                                          ; $6ec3: $d9


    ld b, [hl]                                    ; $6ec4: $46
    ld c, [hl]                                    ; $6ec5: $4e
    inc bc                                        ; $6ec6: $03
    ld a, d                                       ; $6ec7: $7a

jr_069_6ec8:
    ld e, $5e                                     ; $6ec8: $1e $5e
    ld a, [hl]                                    ; $6eca: $7e
    ccf                                           ; $6ecb: $3f
    sbc [hl]                                      ; $6ecc: $9e
    adc l                                         ; $6ecd: $8d
    ld d, $3d                                     ; $6ece: $16 $3d
    rst $00                                       ; $6ed0: $c7
    sbc h                                         ; $6ed1: $9c
    ld h, b                                       ; $6ed2: $60
    ld l, d                                       ; $6ed3: $6a
    rst $08                                       ; $6ed4: $cf
    and e                                         ; $6ed5: $a3
    inc e                                         ; $6ed6: $1c
    dec e                                         ; $6ed7: $1d
    db $dd                                        ; $6ed8: $dd
    ldh a, [rSB]                                  ; $6ed9: $f0 $01
    sub a                                         ; $6edb: $97
    ld hl, $a76a                                  ; $6edc: $21 $6a $a7
    rst $20                                       ; $6edf: $e7
    ret nc                                        ; $6ee0: $d0

    cp b                                          ; $6ee1: $b8
    inc h                                         ; $6ee2: $24
    and a                                         ; $6ee3: $a7
    rst $20                                       ; $6ee4: $e7
    db $db                                        ; $6ee5: $db
    ld c, [hl]                                    ; $6ee6: $4e
    xor a                                         ; $6ee7: $af
    rst $30                                       ; $6ee8: $f7
    push bc                                       ; $6ee9: $c5
    jr nc, jr_069_6ea2                            ; $6eea: $30 $b6

    pop hl                                        ; $6eec: $e1
    inc bc                                        ; $6eed: $03
    sub a                                         ; $6eee: $97
    ld hl, $a76a                                  ; $6eef: $21 $6a $a7
    rst $20                                       ; $6ef2: $e7
    ret nc                                        ; $6ef3: $d0

    cp b                                          ; $6ef4: $b8
    inc h                                         ; $6ef5: $24
    and a                                         ; $6ef6: $a7
    ld e, e                                       ; $6ef7: $5b
    sbc h                                         ; $6ef8: $9c
    rst $10                                       ; $6ef9: $d7
    cp e                                          ; $6efa: $bb
    ret nz                                        ; $6efb: $c0

    ld [hl], a                                    ; $6efc: $77
    ld e, [hl]                                    ; $6efd: $5e
    rst $28                                       ; $6efe: $ef
    add [hl]                                      ; $6eff: $86
    rrca                                          ; $6f00: $0f
    sub a                                         ; $6f01: $97
    ld hl, $a76a                                  ; $6f02: $21 $6a $a7

Call_069_6f05:
    rst $20                                       ; $6f05: $e7
    ret nc                                        ; $6f06: $d0

    cp b                                          ; $6f07: $b8
    inc h                                         ; $6f08: $24
    and a                                         ; $6f09: $a7
    sub a                                         ; $6f0a: $97
    ld [hl], d                                    ; $6f0b: $72
    add l                                         ; $6f0c: $85
    ld hl, sp+$2f                                 ; $6f0d: $f8 $2f
    inc d                                         ; $6f0f: $14
    or h                                          ; $6f10: $b4
    pop hl                                        ; $6f11: $e1
    inc bc                                        ; $6f12: $03
    sub a                                         ; $6f13: $97
    ld hl, $a76a                                  ; $6f14: $21 $6a $a7
    rst $20                                       ; $6f17: $e7
    ret nc                                        ; $6f18: $d0

    cp b                                          ; $6f19: $b8
    inc h                                         ; $6f1a: $24
    and a                                         ; $6f1b: $a7
    dec sp                                        ; $6f1c: $3b
    sub [hl]                                      ; $6f1d: $96
    sbc l                                         ; $6f1e: $9d
    add hl, sp                                    ; $6f1f: $39
    add hl, bc                                    ; $6f20: $09
    ld a, e                                       ; $6f21: $7b
    ld [hl], c                                    ; $6f22: $71
    jp $e207                                      ; $6f23: $c3 $07 $e2


    cpl                                           ; $6f26: $2f
    ld b, $36                                     ; $6f27: $06 $36
    ld a, [bc]                                    ; $6f29: $0a
    and a                                         ; $6f2a: $a7
    ld bc, $59ea                                  ; $6f2b: $01 $ea $59
    ld h, $e5                                     ; $6f2e: $26 $e5
    ld b, b                                       ; $6f30: $40
    call $3428                                    ; $6f31: $cd $28 $34
    and e                                         ; $6f34: $a3
    ld [bc], a                                    ; $6f35: $02
    ld h, $3d                                     ; $6f36: $26 $3d
    dec de                                        ; $6f38: $1b
    ld a, $9b                                     ; $6f39: $3e $9b
    rst $00                                       ; $6f3b: $c7
    inc c                                         ; $6f3c: $0c
    db $fd                                        ; $6f3d: $fd
    daa                                           ; $6f3e: $27
    ld h, [hl]                                    ; $6f3f: $66
    ld h, e                                       ; $6f40: $63
    and a                                         ; $6f41: $a7
    rst $20                                       ; $6f42: $e7
    ld a, [de]                                    ; $6f43: $1a
    rst $38                                       ; $6f44: $ff

jr_069_6f45:
    xor c                                         ; $6f45: $a9
    ld c, a                                       ; $6f46: $4f
    ld h, e                                       ; $6f47: $63
    dec c                                         ; $6f48: $0d
    cp a                                          ; $6f49: $bf
    di                                            ; $6f4a: $f3
    ld h, c                                       ; $6f4b: $61
    or h                                          ; $6f4c: $b4
    ld c, [hl]                                    ; $6f4d: $4e
    cpl                                           ; $6f4e: $2f
    add [hl]                                      ; $6f4f: $86
    db $f4                                        ; $6f50: $f4
    jr @-$3b                                      ; $6f51: $18 $c3

    ld e, b                                       ; $6f53: $58
    jp Jump_000_1b74                              ; $6f54: $c3 $74 $1b


    ld d, [hl]                                    ; $6f57: $56
    ld l, a                                       ; $6f58: $6f
    ld e, c                                       ; $6f59: $59
    or b                                          ; $6f5a: $b0
    pop hl                                        ; $6f5b: $e1
    inc bc                                        ; $6f5c: $03
    db $db                                        ; $6f5d: $db
    cp e                                          ; $6f5e: $bb
    ld l, l                                       ; $6f5f: $6d
    call z, $cb03                                 ; $6f60: $cc $03 $cb

Call_069_6f63:
    push af                                       ; $6f63: $f5
    cp d                                          ; $6f64: $ba
    db $f4                                        ; $6f65: $f4
    ld [hl], e                                    ; $6f66: $73
    dec de                                        ; $6f67: $1b
    jp c, Jump_069_63cd                           ; $6f68: $da $cd $63

    add [hl]                                      ; $6f6b: $86
    ld a, [$7634]                                 ; $6f6c: $fa $34 $76
    ld c, d                                       ; $6f6f: $4a
    sbc a                                         ; $6f70: $9f
    ld sp, $bb49                                  ; $6f71: $31 $49 $bb
    ccf                                           ; $6f74: $3f
    rst $20                                       ; $6f75: $e7
    ld b, d                                       ; $6f76: $42
    rst $38                                       ; $6f77: $ff
    pop af                                        ; $6f78: $f1
    jr jr_069_6f45                                ; $6f79: $18 $ca

    cp $49                                        ; $6f7b: $fe $49
    xor [hl]                                      ; $6f7d: $ae
    ret nc                                        ; $6f7e: $d0

    ld a, a                                       ; $6f7f: $7f
    call z, Call_069_67f0                         ; $6f80: $cc $f0 $67
    sub $a7                                       ; $6f83: $d6 $a7
    or c                                          ; $6f85: $b1
    ld bc, $59ea                                  ; $6f86: $01 $ea $59
    ld h, $e5                                     ; $6f89: $26 $e5
    ld b, b                                       ; $6f8b: $40
    dec hl                                        ; $6f8c: $2b
    db $eb                                        ; $6f8d: $eb
    adc a                                         ; $6f8e: $8f
    ld h, l                                       ; $6f8f: $65
    ld l, [hl]                                    ; $6f90: $6e
    ld hl, sp+$00                                 ; $6f91: $f8 $00
    ld d, a                                       ; $6f93: $57
    inc e                                         ; $6f94: $1c
    ld e, b                                       ; $6f95: $58
    ld b, l                                       ; $6f96: $45
    rst $38                                       ; $6f97: $ff
    adc c                                         ; $6f98: $89
    adc d                                         ; $6f99: $8a
    or h                                          ; $6f9a: $b4
    add e                                         ; $6f9b: $83

jr_069_6f9c:
    sub [hl]                                      ; $6f9c: $96
    ld a, $63                                     ; $6f9d: $3e $63
    sub d                                         ; $6f9f: $92
    ld d, [hl]                                    ; $6fa0: $56
    or $1f                                        ; $6fa1: $f6 $1f
    ld [hl], e                                    ; $6fa3: $73
    ld [bc], a                                    ; $6fa4: $02
    cp b                                          ; $6fa5: $b8
    pop hl                                        ; $6fa6: $e1
    inc bc                                        ; $6fa7: $03
    dec sp                                        ; $6fa8: $3b
    sub b                                         ; $6fa9: $90
    halt                                          ; $6faa: $76
    add sp, -$0c                                  ; $6fab: $e8 $f4
    cp h                                          ; $6fad: $bc
    push hl                                       ; $6fae: $e5
    ld h, l                                       ; $6faf: $65
    ld b, c                                       ; $6fb0: $41
    rst $28                                       ; $6fb1: $ef
    rla                                           ; $6fb2: $17
    cp b                                          ; $6fb3: $b8
    pop hl                                        ; $6fb4: $e1
    inc bc                                        ; $6fb5: $03
    sbc e                                         ; $6fb6: $9b
    db $ed                                        ; $6fb7: $ed
    or c                                          ; $6fb8: $b1
    xor h                                         ; $6fb9: $ac
    ccf                                           ; $6fba: $3f
    db $eb                                        ; $6fbb: $eb
    add l                                         ; $6fbc: $85
    db $d3                                        ; $6fbd: $d3
    ld a, a                                       ; $6fbe: $7f
    call z, Call_069_67f0                         ; $6fbf: $cc $f0 $67
    ld l, [hl]                                    ; $6fc2: $6e
    ld hl, sp+$00                                 ; $6fc3: $f8 $00
    rla                                           ; $6fc5: $17
    ld c, [hl]                                    ; $6fc6: $4e
    ld a, d                                       ; $6fc7: $7a
    ld a, [de]                                    ; $6fc8: $1a
    ret nc                                        ; $6fc9: $d0

    ld a, a                                       ; $6fca: $7f
    call z, $fea0                                 ; $6fcb: $cc $a0 $fe
    call nz, Call_069_6070                        ; $6fce: $c4 $70 $60
    db $fc                                        ; $6fd1: $fc
    rra                                           ; $6fd2: $1f
    dec de                                        ; $6fd3: $1b
    ret nc                                        ; $6fd4: $d0

    call $7236                                    ; $6fd5: $cd $36 $72
    or h                                          ; $6fd8: $b4
    ld bc, $0f3d                                  ; $6fd9: $01 $3d $0f
    cpl                                           ; $6fdc: $2f
    cp a                                          ; $6fdd: $bf
    rra                                           ; $6fde: $1f
    rst $08                                       ; $6fdf: $cf
    ld b, [hl]                                    ; $6fe0: $46
    adc e                                         ; $6fe1: $8b
    sbc [hl]                                      ; $6fe2: $9e
    ld h, e                                       ; $6fe3: $63
    ld c, [hl]                                    ; $6fe4: $4e
    jr nc, jr_069_6f9c                            ; $6fe5: $30 $b5

    rst $20                                       ; $6fe7: $e7
    ld d, c                                       ; $6fe8: $51
    adc [hl]                                      ; $6fe9: $8e
    adc [hl]                                      ; $6fea: $8e
    ld l, [hl]                                    ; $6feb: $6e
    ld hl, sp+$00                                 ; $6fec: $f8 $00
    rst $20                                       ; $6fee: $e7
    inc sp                                        ; $6fef: $33
    ld h, $a9                                     ; $6ff0: $26 $a9
    add hl, de                                    ; $6ff2: $19
    ld [hl], l                                    ; $6ff3: $75
    or d                                          ; $6ff4: $b2
    ld [hl], c                                    ; $6ff5: $71
    or a                                          ; $6ff6: $b7
    dec d                                         ; $6ff7: $15
    sub [hl]                                      ; $6ff8: $96
    add $59                                       ; $6ff9: $c6 $59
    call $0f86                                    ; $6ffb: $cd $86 $0f
    rst $20                                       ; $6ffe: $e7
    inc sp                                        ; $6fff: $33
    ld h, $a9                                     ; $7000: $26 $a9
    add hl, de                                    ; $7002: $19
    ld [hl], l                                    ; $7003: $75
    or d                                          ; $7004: $b2
    ld [hl], c                                    ; $7005: $71
    or a                                          ; $7006: $b7
    dec d                                         ; $7007: $15
    sub [hl]                                      ; $7008: $96
    ld b, $d4                                     ; $7009: $06 $d4
    adc e                                         ; $700b: $8b
    sub a                                         ; $700c: $97
    rst $18                                       ; $700d: $df
    ld a, [$9c69]                                 ; $700e: $fa $69 $9c
    push de                                       ; $7011: $d5
    ld l, h                                       ; $7012: $6c
    ld hl, sp+$00                                 ; $7013: $f8 $00
    rst $20                                       ; $7015: $e7
    adc l                                         ; $7016: $8d
    xor l                                         ; $7017: $ad
    ld h, a                                       ; $7018: $67
    adc a                                         ; $7019: $8f
    ld a, [hl-]                                   ; $701a: $3a
    ei                                            ; $701b: $fb
    ret c                                         ; $701c: $d8

    ld a, [hl]                                    ; $701d: $7e
    rst $20                                       ; $701e: $e7
    jp nz, Jump_069_650b                          ; $701f: $c2 $0b $65

    adc a                                         ; $7022: $8f
    ld a, [hl-]                                   ; $7023: $3a
    ei                                            ; $7024: $fb
    ret c                                         ; $7025: $d8

    ld a, [hl]                                    ; $7026: $7e
    rst $20                                       ; $7027: $e7
    reti                                          ; $7028: $d9


    ld a, [$5d6e]                                 ; $7029: $fa $6e $5d
    ld c, e                                       ; $702c: $4b
    cp a                                          ; $702d: $bf
    sbc a                                         ; $702e: $9f
    dec a                                         ; $702f: $3d
    ld [$63ec], a                                 ; $7030: $ea $ec $63
    ei                                            ; $7033: $fb
    ld bc, $c2e7                                  ; $7034: $01 $e7 $c2
    db $db                                        ; $7037: $db
    xor l                                         ; $7038: $ad
    ld l, e                                       ; $7039: $6b
    jp hl                                         ; $703a: $e9


    rst $30                                       ; $703b: $f7
    or e                                          ; $703c: $b3
    ld b, a                                       ; $703d: $47
    sbc l                                         ; $703e: $9d

jr_069_703f:
    ld a, l                                       ; $703f: $7d
    ld l, h                                       ; $7040: $6c
    ccf                                           ; $7041: $3f
    ld [c], a                                     ; $7042: $e2
    jp hl                                         ; $7043: $e9


    or a                                          ; $7044: $b7
    cp h                                          ; $7045: $bc
    ret nz                                        ; $7046: $c0

jr_069_7047:
    add b                                         ; $7047: $80
    ld e, $75                                     ; $7048: $1e $75
    or $b1                                        ; $704a: $f6 $b1
    db $fd                                        ; $704c: $fd
    nop                                           ; $704d: $00
    sub a                                         ; $704e: $97
    ld b, d                                       ; $704f: $42
    sbc a                                         ; $7050: $9f
    and $03                                       ; $7051: $e6 $03
    db $e3                                        ; $7053: $e3
    rst $38                                       ; $7054: $ff
    ret c                                         ; $7055: $d8

    and e                                         ; $7056: $a3
    adc $3e                                       ; $7057: $ce $3e
    or [hl]                                       ; $7059: $b6
    rra                                           ; $705a: $1f
    ld h, a                                       ; $705b: $67
    ld [hl], h                                    ; $705c: $74
    ld [hl], a                                    ; $705d: $77
    ccf                                           ; $705e: $3f
    ccf                                           ; $705f: $3f
    add hl, sp                                    ; $7060: $39
    ld b, l                                       ; $7061: $45
    ld sp, hl                                     ; $7062: $f9
    ld h, d                                       ; $7063: $62
    ld h, b                                       ; $7064: $60
    or e                                          ; $7065: $b3
    ld [hl], c                                    ; $7066: $71
    ld d, a                                       ; $7067: $57
    sbc l                                         ; $7068: $9d

Call_069_7069:
    db $ec                                        ; $7069: $ec
    ld l, a                                       ; $706a: $6f
    inc hl                                        ; $706b: $23
    ld h, a                                       ; $706c: $67
    jp $9707                                      ; $706d: $c3 $07 $97


    adc l                                         ; $7070: $8d
    ld h, h                                       ; $7071: $64
    sub a                                         ; $7072: $97
    or l                                          ; $7073: $b5
    ld c, [hl]                                    ; $7074: $4e
    inc sp                                        ; $7075: $33
    ld e, h                                       ; $7076: $5c
    cpl                                           ; $7077: $2f
    add [hl]                                      ; $7078: $86
    db $f4                                        ; $7079: $f4
    jr jr_069_703f                                ; $707a: $18 $c3

    sbc b                                         ; $707c: $98
    xor b                                         ; $707d: $a8
    db $db                                        ; $707e: $db
    or b                                          ; $707f: $b0
    ld a, d                                       ; $7080: $7a
    res 0, d                                      ; $7081: $cb $82
    ei                                            ; $7083: $fb
    inc bc                                        ; $7084: $03
    rst $20                                       ; $7085: $e7
    cp l                                          ; $7086: $bd
    sbc a                                         ; $7087: $9f
    call $ffae                                    ; $7088: $cd $ae $ff
    ret z                                         ; $708b: $c8

    ld h, d                                       ; $708c: $62
    add c                                         ; $708d: $81
    xor b                                         ; $708e: $a8
    ld e, e                                       ; $708f: $5b
    ld l, b                                       ; $7090: $68
    or [hl]                                       ; $7091: $b6
    di                                            ; $7092: $f3
    cp [hl]                                       ; $7093: $be
    rst $28                                       ; $7094: $ef
    ld a, d                                       ; $7095: $7a
    rst $18                                       ; $7096: $df
    ld l, $68                                     ; $7097: $2e $68
    ld b, [hl]                                    ; $7099: $46
    and l                                         ; $709a: $a5
    ld a, e                                       ; $709b: $7b
    ld a, c                                       ; $709c: $79
    ld [$d8d3], a                                 ; $709d: $ea $d3 $d8
    xor c                                         ; $70a0: $a9
    pop hl                                        ; $70a1: $e1
    ld [hl], a                                    ; $70a2: $77
    ld a, $8c                                     ; $70a3: $3e $8c
    halt                                          ; $70a5: $76
    ld a, a                                       ; $70a6: $7f
    dec sp                                        ; $70a7: $3b
    ret nc                                        ; $70a8: $d0

    jr z, jr_069_7047                             ; $70a9: $28 $9c

    xor [hl]                                      ; $70ab: $ae
    ld hl, sp-$4c                                 ; $70ac: $f8 $b4
    rst $38                                       ; $70ae: $ff
    ld c, b                                       ; $70af: $48
    rst $18                                       ; $70b0: $df
    ld l, b                                       ; $70b1: $68
    db $dd                                        ; $70b2: $dd
    ld l, h                                       ; $70b3: $6c
    inc hl                                        ; $70b4: $23
    ld b, a                                       ; $70b5: $47
    dec de                                        ; $70b6: $1b
    ret nc                                        ; $70b7: $d0

    di                                            ; $70b8: $f3
    ldh a, [$f2]                                  ; $70b9: $f0 $f2
    ei                                            ; $70bb: $fb
    pop af                                        ; $70bc: $f1
    ld l, h                                       ; $70bd: $6c
    ld d, h                                       ; $70be: $54
    ld d, h                                       ; $70bf: $54
    ld bc, $8d6b                                  ; $70c0: $01 $6b $8d
    jp nz, $8669                                  ; $70c3: $c2 $69 $86

    inc e                                         ; $70c6: $1c
    ld l, l                                       ; $70c7: $6d
    ld h, h                                       ; $70c8: $64
    ld h, b                                       ; $70c9: $60
    ld a, l                                       ; $70ca: $7d
    ld a, [de]                                    ; $70cb: $1a
    db $eb                                        ; $70cc: $eb
    push hl                                       ; $70cd: $e5
    ld b, d                                       ; $70ce: $42
    cp e                                          ; $70cf: $bb
    ccf                                           ; $70d0: $3f
    adc c                                         ; $70d1: $89
    inc [hl]                                      ; $70d2: $34
    db $fc                                        ; $70d3: $fc
    ld l, b                                       ; $70d4: $68
    jp z, Jump_000_3ea1                           ; $70d5: $ca $a1 $3e

    ld d, l                                       ; $70d8: $55
    xor c                                         ; $70d9: $a9
    ld sp, hl                                     ; $70da: $f9
    ld [hl], b                                    ; $70db: $70
    daa                                           ; $70dc: $27
    dec hl                                        ; $70dd: $2b
    jp hl                                         ; $70de: $e9


    ld [$9f99], a                                 ; $70df: $ea $99 $9f
    ld h, c                                       ; $70e2: $61
    ld b, h                                       ; $70e3: $44
    db $dd                                        ; $70e4: $dd
    ld b, d                                       ; $70e5: $42
    or e                                          ; $70e6: $b3
    sbc l                                         ; $70e7: $9d
    ld [hl], a                                    ; $70e8: $77
    ld a, e                                       ; $70e9: $7b
    adc c                                         ; $70ea: $89
    add e                                         ; $70eb: $83
    ld b, c                                       ; $70ec: $41
    sbc e                                         ; $70ed: $9b
    ld [hl], d                                    ; $70ee: $72
    ld l, b                                       ; $70ef: $68
    ld a, $9c                                     ; $70f0: $3e $9c
    ld [bc], a                                    ; $70f2: $02
    ld e, h                                       ; $70f3: $5c
    ret nz                                        ; $70f4: $c0

    and [hl]                                      ; $70f5: $a6
    rrca                                          ; $70f6: $0f
    ld [c], a                                     ; $70f7: $e2
    jp hl                                         ; $70f8: $e9


    ld sp, $c576                                  ; $70f9: $31 $76 $c5
    ld d, a                                       ; $70fc: $57
    rst $18                                       ; $70fd: $df
    ld c, $3f                                     ; $70fe: $0e $3f
    xor b                                         ; $7100: $a8
    ld e, $da                                     ; $7101: $1e $da
    ccf                                           ; $7103: $3f
    and d                                         ; $7104: $a2
    ld l, [hl]                                    ; $7105: $6e
    and c                                         ; $7106: $a1
    reti                                          ; $7107: $d9


    adc $fb                                       ; $7108: $ce $fb
    inc bc                                        ; $710a: $03
    add d                                         ; $710b: $82
    rst $08                                       ; $710c: $cf
    ld a, $b6                                     ; $710d: $3e $b6
    ld b, a                                       ; $710f: $47
    sbc h                                         ; $7110: $9c
    ld a, l                                       ; $7111: $7d
    ld e, h                                       ; $7112: $5c
    cpl                                           ; $7113: $2f
    add $34                                       ; $7114: $c6 $34
    ld c, a                                       ; $7116: $4f
    and $72                                       ; $7117: $e6 $72
    ld h, h                                       ; $7119: $64
    ccf                                           ; $711a: $3f
    ld [c], a                                     ; $711b: $e2
    ld l, [hl]                                    ; $711c: $6e
    ld h, c                                       ; $711d: $61
    inc bc                                        ; $711e: $03
    ld a, d                                       ; $711f: $7a
    sbc c                                         ; $7120: $99
    ld sp, $f7aa                                  ; $7121: $31 $aa $f7
    and l                                         ; $7124: $a5
    sbc l                                         ; $7125: $9d
    ld [hl], c                                    ; $7126: $71
    cp l                                          ; $7127: $bd

Call_069_7128:
    ld [hl], b                                    ; $7128: $70
    ld a, $e2                                     ; $7129: $3e $e2
    ld l, [hl]                                    ; $712b: $6e
    ld h, c                                       ; $712c: $61
    inc bc                                        ; $712d: $03
    cp d                                          ; $712e: $ba
    dec b                                         ; $712f: $05
    and $99                                       ; $7130: $e6 $99
    ld h, l                                       ; $7132: $65
    jp nc, $1f8f                                  ; $7133: $d2 $8f $1f

    ld [c], a                                     ; $7136: $e2
    ld l, [hl]                                    ; $7137: $6e
    ld h, c                                       ; $7138: $61
    inc bc                                        ; $7139: $03
    ld a, d                                       ; $713a: $7a
    ld l, $bc                                     ; $713b: $2e $bc
    ld d, b                                       ; $713d: $50
    halt                                          ; $713e: $76
    di                                            ; $713f: $f3
    call nz, $2c6c                                ; $7140: $c4 $6c $2c
    or l                                          ; $7143: $b5
    ld [c], a                                     ; $7144: $e2
    sub [hl]                                      ; $7145: $96
    and c                                         ; $7146: $a1
    dec c                                         ; $7147: $0d
    call nc, Call_069_665e                        ; $7148: $d4 $5e $66
    ld e, b                                       ; $714b: $58
    ld d, c                                       ; $714c: $51
    ccf                                           ; $714d: $3f
    ld [c], a                                     ; $714e: $e2
    ld l, [hl]                                    ; $714f: $6e
    ld h, c                                       ; $7150: $61
    inc bc                                        ; $7151: $03
    ld a, d                                       ; $7152: $7a
    push bc                                       ; $7153: $c5
    ld c, h                                       ; $7154: $4c
    inc bc                                        ; $7155: $03
    ld a, d                                       ; $7156: $7a
    dec b                                         ; $7157: $05
    ld d, l                                       ; $7158: $55
    rst $00                                       ; $7159: $c7
    add hl, de                                    ; $715a: $19
    ccf                                           ; $715b: $3f
    ld [c], a                                     ; $715c: $e2

Call_069_715d:
    ld l, [hl]                                    ; $715d: $6e
    ld h, c                                       ; $715e: $61
    inc bc                                        ; $715f: $03
    sbc d                                         ; $7160: $9a
    db $10                                        ; $7161: $10
    ld a, a                                       ; $7162: $7f
    add $4c                                       ; $7163: $c6 $4c
    adc c                                         ; $7165: $89
    sbc b                                         ; $7166: $98
    ld b, a                                       ; $7167: $47
    ccf                                           ; $7168: $3f
    ld [c], a                                     ; $7169: $e2
    ld l, [hl]                                    ; $716a: $6e
    ld h, c                                       ; $716b: $61
    inc bc                                        ; $716c: $03
    cp d                                          ; $716d: $ba
    push hl                                       ; $716e: $e5
    ld l, c                                       ; $716f: $69
    sbc $dd                                       ; $7170: $de $dd
    ld e, $1b                                     ; $7172: $1e $1b
    ret c                                         ; $7174: $d8

    xor l                                         ; $7175: $ad
    ld c, h                                       ; $7176: $4c
    ccf                                           ; $7177: $3f
    ld a, [hl]                                    ; $7178: $7e
    ld h, a                                       ; $7179: $67
    ld d, h                                       ; $717a: $54
    ld h, d                                       ; $717b: $62
    ld c, c                                       ; $717c: $49
    adc [hl]                                      ; $717d: $8e
    dec [hl]                                      ; $717e: $35

Call_069_717f:
    ld a, [bc]                                    ; $717f: $0a
    and a                                         ; $7180: $a7
    rst $08                                       ; $7181: $cf
    ld [$58d3], a                                 ; $7182: $ea $d3 $58
    ld l, $ef                                     ; $7185: $2e $ef
    ld l, [hl]                                    ; $7187: $6e
    or a                                          ; $7188: $b7
    ld [hl], a                                    ; $7189: $77
    ld b, a                                       ; $718a: $47
    and h                                         ; $718b: $a4
    adc a                                         ; $718c: $8f
    ld a, [c]                                     ; $718d: $f2
    push bc                                       ; $718e: $c5
    ret nz                                        ; $718f: $c0

    ld a, [$5013]                                 ; $7190: $fa $13 $50
    add $40                                       ; $7193: $c6 $40
    xor e                                         ; $7195: $ab
    ccf                                           ; $7196: $3f
    ld d, [hl]                                    ; $7197: $56
    xor $76                                       ; $7198: $ee $76
    ld a, a                                       ; $719a: $7f
    rst $20                                       ; $719b: $e7
    cp l                                          ; $719c: $bd
    sbc a                                         ; $719d: $9f
    ld h, l                                       ; $719e: $65
    jp z, Jump_069_42bd                           ; $719f: $ca $bd $42

    sub $c3                                       ; $71a2: $d6 $c3
    daa                                           ; $71a4: $27
    ld a, b                                       ; $71a5: $78
    ld b, h                                       ; $71a6: $44
    db $dd                                        ; $71a7: $dd
    ld b, d                                       ; $71a8: $42
    or e                                          ; $71a9: $b3
    sbc l                                         ; $71aa: $9d
    ld [hl], a                                    ; $71ab: $77
    dec hl                                        ; $71ac: $2b
    sbc $cd                                       ; $71ad: $de $cd
    or b                                          ; $71af: $b0
    daa                                           ; $71b0: $27
    ld [hl], a                                    ; $71b1: $77
    adc a                                         ; $71b2: $8f
    adc a                                         ; $71b3: $8f
    dec c                                         ; $71b4: $0d
    db $d3                                        ; $71b5: $d3
    call $fa49                                    ; $71b6: $cd $49 $fa
    db $eb                                        ; $71b9: $eb
    ld e, h                                       ; $71ba: $5c
    ld [hl], a                                    ; $71bb: $77
    ld h, b                                       ; $71bc: $60
    pop bc                                        ; $71bd: $c1
    rst $38                                       ; $71be: $ff
    cp a                                          ; $71bf: $bf
    adc c                                         ; $71c0: $89
    inc c                                         ; $71c1: $0c
    ld h, e                                       ; $71c2: $63
    ld e, l                                       ; $71c3: $5d
    pop af                                        ; $71c4: $f1
    push af                                       ; $71c5: $f5
    rra                                           ; $71c6: $1f
    adc c                                         ; $71c7: $89
    push af                                       ; $71c8: $f5
    or h                                          ; $71c9: $b4
    ei                                            ; $71ca: $fb
    inc bc                                        ; $71cb: $03
    db $db                                        ; $71cc: $db
    add h                                         ; $71cd: $84
    db $d3                                        ; $71ce: $d3
    add b                                         ; $71cf: $80
    push de                                       ; $71d0: $d5
    ld l, [hl]                                    ; $71d1: $6e
    sub h                                         ; $71d2: $94
    and e                                         ; $71d3: $a3
    ld a, l                                       ; $71d4: $7d
    ld d, [hl]                                    ; $71d5: $56
    sbc a                                         ; $71d6: $9f
    add $72                                       ; $71d7: $c6 $72
    scf                                           ; $71d9: $37
    ld d, c                                       ; $71da: $51
    or a                                          ; $71db: $b7
    ret nc                                        ; $71dc: $d0

    ld l, h                                       ; $71dd: $6c
    rst $20                                       ; $71de: $e7
    db $dd                                        ; $71df: $dd
    ld e, [hl]                                    ; $71e0: $5e
    ld b, $39                                     ; $71e1: $06 $39
    jp c, Jump_000_1a80                           ; $71e3: $da $80 $1a

    jp nc, Jump_069_5506                          ; $71e6: $d2 $06 $55

    ld e, d                                       ; $71e9: $5a
    add hl, sp                                    ; $71ea: $39
    dec c                                         ; $71eb: $0d
    ld h, e                                       ; $71ec: $63
    ld a, [c]                                     ; $71ed: $f2
    push hl                                       ; $71ee: $e5
    db $dd                                        ; $71ef: $dd
    db $ed                                        ; $71f0: $ed
    call Call_000_01fd                            ; $71f1: $cd $fd $01
    ld [c], a                                     ; $71f4: $e2
    ld a, a                                       ; $71f5: $7f
    ld [hl], d                                    ; $71f6: $72
    sbc d                                         ; $71f7: $9a
    ld [hl], d                                    ; $71f8: $72
    jr z, jr_069_722f                             ; $71f9: $28 $34

    adc a                                         ; $71fb: $8f
    dec hl                                        ; $71fc: $2b
    dec sp                                        ; $71fd: $3b
    ld l, [hl]                                    ; $71fe: $6e
    push af                                       ; $71ff: $f5
    xor h                                         ; $7200: $ac
    ld e, h                                       ; $7201: $5c
    jp nc, $9d6e                                  ; $7202: $d2 $6e $9d

    inc l                                         ; $7205: $2c
    sub a                                         ; $7206: $97
    ld d, a                                       ; $7207: $57
    ret z                                         ; $7208: $c8

    ld a, d                                       ; $7209: $7a
    ld hl, sp+$04                                 ; $720a: $f8 $04
    rst $08                                       ; $720c: $cf
    db $dd                                        ; $720d: $dd
    ld l, [hl]                                    ; $720e: $6e
    inc de                                        ; $720f: $13
    ld c, [hl]                                    ; $7210: $4e
    inc bc                                        ; $7211: $03
    ld d, [hl]                                    ; $7212: $56
    adc a                                         ; $7213: $8f
    ld e, l                                       ; $7214: $5d
    call Call_069_6992                            ; $7215: $cd $92 $69
    push af                                       ; $7218: $f5
    ld l, c                                       ; $7219: $69
    xor h                                         ; $721a: $ac
    add a                                         ; $721b: $87
    ld c, a                                       ; $721c: $4f
    ldh a, [$dc]                                  ; $721d: $f0 $dc
    rra                                           ; $721f: $1f
    db $db                                        ; $7220: $db
    ld a, e                                       ; $7221: $7b
    sbc $e2                                       ; $7222: $de $e2
    cp h                                          ; $7224: $bc
    sbc $9d                                       ; $7225: $de $9d
    add l                                         ; $7227: $85
    and $b5                                       ; $7228: $e6 $b5
    ld b, [hl]                                    ; $722a: $46
    ld l, b                                       ; $722b: $68
    ld b, [hl]                                    ; $722c: $46
    add hl, de                                    ; $722d: $19
    inc bc                                        ; $722e: $03

jr_069_722f:
    db $ed                                        ; $722f: $ed
    ld l, [hl]                                    ; $7230: $6e
    rst $08                                       ; $7231: $cf
    push bc                                       ; $7232: $c5
    ld l, d                                       ; $7233: $6a
    scf                                           ; $7234: $37
    jp z, $3ed1                                   ; $7235: $ca $d1 $3e

    ld l, e                                       ; $7238: $6b
    add [hl]                                      ; $7239: $86
    push af                                       ; $723a: $f5
    rra                                           ; $723b: $1f
    ld e, c                                       ; $723c: $59
    inc l                                         ; $723d: $2c
    add sp, $54                                   ; $723e: $e8 $54
    ld a, [c]                                     ; $7240: $f2
    ld l, c                                       ; $7241: $69
    adc l                                         ; $7242: $8d
    cp $0b                                        ; $7243: $fe $0b
    sub h                                         ; $7245: $94
    adc b                                         ; $7246: $88
    add hl, de                                    ; $7247: $19
    push af                                       ; $7248: $f5
    ld b, a                                       ; $7249: $47
    ld [hl], l                                    ; $724a: $75
    or a                                          ; $724b: $b7
    dec d                                         ; $724c: $15
    sub [hl]                                      ; $724d: $96
    ei                                            ; $724e: $fb
    inc bc                                        ; $724f: $03
    ld [c], a                                     ; $7250: $e2
    ld c, a                                       ; $7251: $4f
    ld d, h                                       ; $7252: $54
    ld a, $51                                     ; $7253: $3e $51
    ld [hl], a                                    ; $7255: $77
    ret c                                         ; $7256: $d8

    db $dd                                        ; $7257: $dd
    call nz, $19c9                                ; $7258: $c4 $c9 $19
    ld h, $aa                                     ; $725b: $26 $aa
    ld [hl], a                                    ; $725d: $77
    adc h                                         ; $725e: $8c
    dec c                                         ; $725f: $0d
    db $ec                                        ; $7260: $ec
    ld c, a                                       ; $7261: $4f
    ret                                           ; $7262: $c9


    or d                                          ; $7263: $b2
    ld bc, $463a                                  ; $7264: $01 $3a $46
    cp l                                          ; $7267: $bd
    ld a, e                                       ; $7268: $7b
    dec b                                         ; $7269: $05
    ld e, a                                       ; $726a: $5f
    ld a, l                                       ; $726b: $7d
    ld a, [de]                                    ; $726c: $1a
    dec sp                                        ; $726d: $3b
    dec c                                         ; $726e: $0d
    ld h, e                                       ; $726f: $63
    ld a, [c]                                     ; $7270: $f2
    push hl                                       ; $7271: $e5
    db $dd                                        ; $7272: $dd
    db $ed                                        ; $7273: $ed
    adc l                                         ; $7274: $8d
    xor b                                         ; $7275: $a8
    ld d, c                                       ; $7276: $51
    jr c, jr_069_7286                             ; $7277: $38 $0d

    cpl                                           ; $7279: $2f
    dec a                                         ; $727a: $3d
    sub l                                         ; $727b: $95
    ld a, h                                       ; $727c: $7c
    jp c, Jump_069_7615                           ; $727d: $da $15 $76

    dec [hl]                                      ; $7280: $35
    ld [hl+], a                                   ; $7281: $22
    ld h, $9d                                     ; $7282: $26 $9d
    db $e4                                        ; $7284: $e4
    db $fd                                        ; $7285: $fd

jr_069_7286:
    ld bc, $ae17                                  ; $7286: $01 $17 $ae
    dec [hl]                                      ; $7289: $35
    and e                                         ; $728a: $a3
    ld e, h                                       ; $728b: $5c
    dec a                                         ; $728c: $3d

Jump_069_728d:
    push bc                                       ; $728d: $c5
    cp e                                          ; $728e: $bb
    ld a, e                                       ; $728f: $7b
    ld l, h                                       ; $7290: $6c
    db $fd                                        ; $7291: $fd
    adc c                                         ; $7292: $89
    ld a, c                                       ; $7293: $79
    ld l, d                                       ; $7294: $6a
    ret z                                         ; $7295: $c8

    rst $08                                       ; $7296: $cf
    jr @-$58                                      ; $7297: $18 $a6

    db $ec                                        ; $7299: $ec
    ld sp, hl                                     ; $729a: $f9
    or [hl]                                       ; $729b: $b6
    db $d3                                        ; $729c: $d3
    db $eb                                        ; $729d: $eb
    ld a, l                                       ; $729e: $7d
    ld sp, $dd8c                                  ; $729f: $31 $8c $dd
    cp l                                          ; $72a2: $bd
    ld [hl], b                                    ; $72a3: $70
    xor l                                         ; $72a4: $ad
    ld a, $8d                                     ; $72a5: $3e $8d
    ld h, l                                       ; $72a7: $65
    ld a, a                                       ; $72a8: $7f
    ld c, d                                       ; $72a9: $4a
    sbc $1f                                       ; $72aa: $de $1f
    ld e, e                                       ; $72ac: $5b
    ld l, b                                       ; $72ad: $68
    or [hl]                                       ; $72ae: $b6
    ld d, e                                       ; $72af: $53
    call nc, Call_069_5f15                        ; $72b0: $d4 $15 $5f
    dec b                                         ; $72b3: $05
    xor h                                         ; $72b4: $ac
    push de                                       ; $72b5: $d5
    or a                                          ; $72b6: $b7
    jp $eff7                                      ; $72b7: $c3 $f7 $ef


    ld c, a                                       ; $72ba: $4f
    ret                                           ; $72bb: $c9


    dec c                                         ; $72bc: $0d
    db $dd                                        ; $72bd: $dd
    halt                                          ; $72be: $76
    ld hl, sp-$46                                 ; $72bf: $f8 $ba
    ld a, [hl+]                                   ; $72c1: $2a
    jp nc, $a6ce                                  ; $72c2: $d2 $ce $a6

    adc h                                         ; $72c5: $8c
    add c                                         ; $72c6: $81
    ld b, $ad                                     ; $72c7: $06 $ad
    ld a, a                                       ; $72c9: $7f
    cp b                                          ; $72ca: $b8
    ld sp, $dee5                                  ; $72cb: $31 $e5 $de
    ld a, l                                       ; $72ce: $7d
    rst $18                                       ; $72cf: $df
    ld c, l                                       ; $72d0: $4d
    xor [hl]                                      ; $72d1: $ae
    push de                                       ; $72d2: $d5
    or a                                          ; $72d3: $b7
    pop af                                        ; $72d4: $f1
    ld b, d                                       ; $72d5: $42
    ld [hl], l                                    ; $72d6: $75
    inc c                                         ; $72d7: $0c
    jp c, $abfd                                   ; $72d8: $da $fd $ab

    or e                                          ; $72db: $b3
    ld h, h                                       ; $72dc: $64
    ld l, [hl]                                    ; $72dd: $6e
    ld hl, sp+$00                                 ; $72de: $f8 $00
    rla                                           ; $72e0: $17
    xor [hl]                                      ; $72e1: $ae
    dec [hl]                                      ; $72e2: $35
    rra                                           ; $72e3: $1f
    adc $d5                                       ; $72e4: $ce $d5
    ld d, e                                       ; $72e6: $53
    cp h                                          ; $72e7: $bc
    ld a, [hl-]                                   ; $72e8: $3a
    ret                                           ; $72e9: $c9


    xor [hl]                                      ; $72ea: $ae
    or b                                          ; $72eb: $b0
    ld l, e                                       ; $72ec: $6b
    ld b, e                                       ; $72ed: $43
    xor a                                         ; $72ee: $af
    sbc b                                         ; $72ef: $98
    dec h                                         ; $72f0: $25
    or e                                          ; $72f1: $b3
    ld [bc], a                                    ; $72f2: $02
    sub $ea                                       ; $72f3: $d6 $ea
    dec de                                        ; $72f5: $1b
    ld a, e                                       ; $72f6: $7b
    cp [hl]                                       ; $72f7: $be
    db $ed                                        ; $72f8: $ed
    db $f4                                        ; $72f9: $f4
    ld a, d                                       ; $72fa: $7a
    ld e, a                                       ; $72fb: $5f
    inc c                                         ; $72fc: $0c
    ld h, e                                       ; $72fd: $63
    ld d, l                                       ; $72fe: $55
    inc [hl]                                      ; $72ff: $34
    ld a, [bc]                                    ; $7300: $0a
    sbc e                                         ; $7301: $9b
    ld [hl], d                                    ; $7302: $72
    jr nc, jr_069_736d                            ; $7303: $30 $68

    ld d, e                                       ; $7305: $53
    xor $70                                       ; $7306: $ee $70
    ld d, $29                                     ; $7308: $16 $29
    rst $30                                       ; $730a: $f7
    ld a, h                                       ; $730b: $7c
    sub $87                                       ; $730c: $d6 $87
    db $fd                                        ; $730e: $fd
    xor h                                         ; $730f: $ac
    ccf                                           ; $7310: $3f
    ld sp, $6e8f                                  ; $7311: $31 $8f $6e
    ld hl, sp+$00                                 ; $7314: $f8 $00
    rst $20                                       ; $7316: $e7
    ld b, b                                       ; $7317: $40
    adc d                                         ; $7318: $8a
    ld a, [de]                                    ; $7319: $1a
    ld e, l                                       ; $731a: $5d
    db $fc                                        ; $731b: $fc
    ld e, c                                       ; $731c: $59
    ld [hl], l                                    ; $731d: $75
    ld [$65e3], a                                 ; $731e: $ea $e3 $65
    cp h                                          ; $7321: $bc
    and [hl]                                      ; $7322: $a6
    inc e                                         ; $7323: $1c
    ld [$551d], a                                 ; $7324: $ea $1d $55
    ld l, b                                       ; $7327: $68
    sbc l                                         ; $7328: $9d
    ld h, h                                       ; $7329: $64
    cp l                                          ; $732a: $bd
    bit 3, b                                      ; $732b: $cb $58
    db $e3                                        ; $732d: $e3
    db $fc                                        ; $732e: $fc
    reti                                          ; $732f: $d9


    ld e, c                                       ; $7330: $59
    and h                                         ; $7331: $a4
    xor b                                         ; $7332: $a8
    ld e, e                                       ; $7333: $5b
    ld l, b                                       ; $7334: $68
    or [hl]                                       ; $7335: $b6
    di                                            ; $7336: $f3
    ld l, [hl]                                    ; $7337: $6e
    add d                                         ; $7338: $82
    ld l, e                                       ; $7339: $6b
    inc d                                         ; $733a: $14
    ld c, [hl]                                    ; $733b: $4e
    inc sp                                        ; $733c: $33
    ld a, [de]                                    ; $733d: $1a
    db $10                                        ; $733e: $10
    ld e, l                                       ; $733f: $5d
    db $fc                                        ; $7340: $fc
    rst $18                                       ; $7341: $df
    adc b                                         ; $7342: $88

Call_069_7343:
    ld a, [hl+]                                   ; $7343: $2a
    xor c                                         ; $7344: $a9
    push af                                       ; $7345: $f5
    rla                                           ; $7346: $17
    add $cc                                       ; $7347: $c6 $cc
    adc l                                         ; $7349: $8d
    add hl, de                                    ; $734a: $19
    dec d                                         ; $734b: $15
    or b                                          ; $734c: $b0
    sub $c8                                       ; $734d: $d6 $c8
    cp $94                                        ; $734f: $fe $94
    cp h                                          ; $7351: $bc
    ccf                                           ; $7352: $3f
    add hl, bc                                    ; $7353: $09
    sbc d                                         ; $7354: $9a
    rst $00                                       ; $7355: $c7
    sub l                                         ; $7356: $95
    ld e, l                                       ; $7357: $5d
    pop bc                                        ; $7358: $c1
    sbc d                                         ; $7359: $9a
    ld [hl], d                                    ; $735a: $72
    jr z, jr_069_73bc                             ; $735b: $28 $5f

    inc c                                         ; $735d: $0c
    inc l                                         ; $735e: $2c
    inc [hl]                                      ; $735f: $34
    xor a                                         ; $7360: $af
    ld l, c                                       ; $7361: $69
    db $fd                                        ; $7362: $fd
    or c                                          ; $7363: $b1
    ld [hl-], a                                   ; $7364: $32
    push hl                                       ; $7365: $e5
    sbc $dd                                       ; $7366: $de $dd
    ld c, e                                       ; $7368: $4b
    pop af                                        ; $7369: $f1
    db $e3                                        ; $736a: $e3
    ld c, l                                       ; $736b: $4d

Call_069_736c:
    inc sp                                        ; $736c: $33

jr_069_736d:
    xor h                                         ; $736d: $ac
    ld bc, $27f5                                  ; $736e: $01 $f5 $27
    ret nc                                        ; $7371: $d0

    ld [$fd64], a                                 ; $7372: $ea $64 $fd
    adc c                                         ; $7375: $89
    ld a, c                                       ; $7376: $79
    jp z, $6f9e                                   ; $7377: $ca $9e $6f

    dec sp                                        ; $737a: $3b
    cp l                                          ; $737b: $bd
    sbc $17                                       ; $737c: $de $17
    jp $ddd8                                      ; $737e: $c3 $d8 $dd


    dec e                                         ; $7381: $1d
    sub b                                         ; $7382: $90
    ld a, b                                       ; $7383: $78
    call c, Call_069_5198                         ; $7384: $dc $98 $51
    ld bc, $8d6b                                  ; $7387: $01 $6b $8d
    db $ec                                        ; $738a: $ec
    ld c, a                                       ; $738b: $4f
    ret                                           ; $738c: $c9


    ei                                            ; $738d: $fb
    inc bc                                        ; $738e: $03
    ld e, e                                       ; $738f: $5b
    ld l, b                                       ; $7390: $68
    or [hl]                                       ; $7391: $b6
    or e                                          ; $7392: $b3
    adc c                                         ; $7393: $89
    sub e                                         ; $7394: $93
    inc sp                                        ; $7395: $33
    ld c, h                                       ; $7396: $4c
    call nc, Call_069_6f05                        ; $7397: $d4 $05 $6f
    ld [hl], $66                                  ; $739a: $36 $66
    db $f4                                        ; $739c: $f4
    rra                                           ; $739d: $1f

Call_069_739e:
    add hl, sp                                    ; $739e: $39
    ld [hl], l                                    ; $739f: $75
    or d                                          ; $73a0: $b2
    bit 3, e                                      ; $73a1: $cb $5b
    reti                                          ; $73a3: $d9


    ld l, h                                       ; $73a4: $6c
    add sp, $05                                   ; $73a5: $e8 $05
    ld [de], a                                    ; $73a7: $12
    pop hl                                        ; $73a8: $e1
    ld sp, $2253                                  ; $73a9: $31 $53 $22
    ld h, [hl]                                    ; $73ac: $66
    call nc, $b1a7                                ; $73ad: $d4 $a7 $b1
    db $d3                                        ; $73b0: $d3
    jr nc, jr_069_73d9                            ; $73b1: $30 $26

    ld e, a                                       ; $73b3: $5f
    sbc $dd                                       ; $73b4: $de $dd
    sbc $6c                                       ; $73b6: $de $6c
    ld hl, sp+$00                                 ; $73b8: $f8 $00
    rla                                           ; $73ba: $17
    ld l, b                                       ; $73bb: $68

jr_069_73bc:
    sbc [hl]                                      ; $73bc: $9e
    xor [hl]                                      ; $73bd: $ae
    ld hl, sp+$36                                 ; $73be: $f8 $36
    ld h, [hl]                                    ; $73c0: $66
    inc [hl]                                      ; $73c1: $34
    dec de                                        ; $73c2: $1b
    ld [hl], a                                    ; $73c3: $77
    pop bc                                        ; $73c4: $c1
    ld [$78db], a                                 ; $73c5: $ea $db $78
    ld d, $48                                     ; $73c8: $16 $48
    ld [$5e86], a                                 ; $73ca: $ea $86 $5e
    ld sp, $f4ae                                  ; $73cd: $31 $ae $f4
    sbc c                                         ; $73d0: $99
    and [hl]                                      ; $73d1: $a6
    push af                                       ; $73d2: $f5
    ret c                                         ; $73d3: $d8

    ld a, [$f313]                                 ; $73d4: $fa $13 $f3
    sub h                                         ; $73d7: $94
    dec a                                         ; $73d8: $3d

jr_069_73d9:
    rst $18                                       ; $73d9: $df
    halt                                          ; $73da: $76
    ld a, d                                       ; $73db: $7a
    cp l                                          ; $73dc: $bd
    cpl                                           ; $73dd: $2f
    add [hl]                                      ; $73de: $86
    or c                                          ; $73df: $b1
    cp e                                          ; $73e0: $bb
    ld [c], a                                     ; $73e1: $e2
    jp hl                                         ; $73e2: $e9


    ld sp, $2a8a                                  ; $73e3: $31 $8a $2a
    ld h, b                                       ; $73e6: $60
    xor l                                         ; $73e7: $ad
    ld a, $8d                                     ; $73e8: $3e $8d
    ld h, l                                       ; $73ea: $65
    ld a, a                                       ; $73eb: $7f
    ld c, d                                       ; $73ec: $4a
    ld l, [hl]                                    ; $73ed: $6e
    ld hl, sp+$00                                 ; $73ee: $f8 $00
    ld [c], a                                     ; $73f0: $e2
    ld sp, $1b43                                  ; $73f1: $31 $43 $1b
    ret nc                                        ; $73f4: $d0

    ld h, a                                       ; $73f5: $67
    add l                                         ; $73f6: $85
    db $f4                                        ; $73f7: $f4
    adc h                                         ; $73f8: $8c
    ld d, c                                       ; $73f9: $51
    call nc, $9f15                                ; $73fa: $d4 $15 $9f
    sub $37                                       ; $73fd: $d6 $37
    db $fc                                        ; $73ff: $fc
    ld c, a                                       ; $7400: $4f
    ld l, c                                       ; $7401: $69
    dec c                                         ; $7402: $0d
    add a                                         ; $7403: $87
    ccf                                           ; $7404: $3f
    call $f773                                    ; $7405: $cd $73 $f7
    or d                                          ; $7408: $b2
    add hl, bc                                    ; $7409: $09
    and e                                         ; $740a: $a3
    dec e                                         ; $740b: $1d
    dec l                                         ; $740c: $2d
    rla                                           ; $740d: $17
    rla                                           ; $740e: $17
    ld b, a                                       ; $740f: $47
    dec de                                        ; $7410: $1b
    ld c, $df                                     ; $7411: $0e $df
    ld [hl-], a                                   ; $7413: $32
    ld l, c                                       ; $7414: $69
    ld b, c                                       ; $7415: $41
    or h                                          ; $7416: $b4
    xor h                                         ; $7417: $ac
    db $fd                                        ; $7418: $fd
    ld h, a                                       ; $7419: $67
    pop bc                                        ; $741a: $c1
    rst $38                                       ; $741b: $ff
    cp a                                          ; $741c: $bf
    adc c                                         ; $741d: $89
    sub h                                         ; $741e: $94
    db $dd                                        ; $741f: $dd
    ld l, h                                       ; $7420: $6c
    inc hl                                        ; $7421: $23
    ld b, a                                       ; $7422: $47
    dec de                                        ; $7423: $1b
    ret nc                                        ; $7424: $d0

    di                                            ; $7425: $f3
    ldh a, [$f2]                                  ; $7426: $f0 $f2
    ei                                            ; $7428: $fb
    pop af                                        ; $7429: $f1
    ld l, h                                       ; $742a: $6c

jr_069_742b:
    or h                                          ; $742b: $b4
    add sp, $39                                   ; $742c: $e8 $39
    and $04                                       ; $742e: $e6 $04
    ld d, e                                       ; $7430: $53
    ld a, e                                       ; $7431: $7b
    ld e, $e5                                     ; $7432: $1e $e5
    jr z, jr_069_742b                             ; $7434: $28 $f5

    ld l, [hl]                                    ; $7436: $6e
    add d                                         ; $7437: $82
    ld h, [hl]                                    ; $7438: $66
    ld l, b                                       ; $7439: $68
    rst $08                                       ; $743a: $cf
    sbc e                                         ; $743b: $9b
    push hl                                       ; $743c: $e5
    adc l                                         ; $743d: $8d
    ld d, [hl]                                    ; $743e: $56
    add l                                         ; $743f: $85
    db $d3                                        ; $7440: $d3
    adc c                                         ; $7441: $89
    ld bc, $3b4d                                  ; $7442: $01 $4d $3b
    ld e, d                                       ; $7445: $5a
    and b                                         ; $7446: $a0
    halt                                          ; $7447: $76
    or h                                          ; $7448: $b4
    cp a                                          ; $7449: $bf
    adc l                                         ; $744a: $8d
    inc e                                         ; $744b: $1c
    cp l                                          ; $744c: $bd
    db $db                                        ; $744d: $db
    db $ed                                        ; $744e: $ed
    dec a                                         ; $744f: $3d
    ld l, a                                       ; $7450: $6f
    sub [hl]                                      ; $7451: $96
    scf                                           ; $7452: $37
    dec a                                         ; $7453: $3d
    rst $00                                       ; $7454: $c7
    or b                                          ; $7455: $b0
    ld a, d                                       ; $7456: $7a
    ld e, d                                       ; $7457: $5a
    add $c0                                       ; $7458: $c6 $c0
    ld a, [hl+]                                   ; $745a: $2a
    and h                                         ; $745b: $a4
    ld l, a                                       ; $745c: $6f
    add sp, $3f                                   ; $745d: $e8 $3f
    ld sp, $f4bf                                  ; $745f: $31 $bf $f4
    adc b                                         ; $7462: $88
    ld a, [hl+]                                   ; $7463: $2a
    xor c                                         ; $7464: $a9
    sbc l                                         ; $7465: $9d
    sbc [hl]                                      ; $7466: $9e
    scf                                           ; $7467: $37
    res 3, e                                      ; $7468: $cb $9b
    ld l, [hl]                                    ; $746a: $6e
    ld h, l                                       ; $746b: $65
    ld a, [$3a89]                                 ; $746c: $fa $89 $3a
    ld e, l                                       ; $746f: $5d
    ld e, e                                       ; $7470: $5b
    inc a                                         ; $7471: $3c
    ld c, [hl]                                    ; $7472: $4e
    sub $b7                                       ; $7473: $d6 $b7
    rla                                           ; $7475: $17
    rst $38                                       ; $7476: $ff
    rst $20                                       ; $7477: $e7
    ld [hl], e                                    ; $7478: $73
    ld de, $5d75                                  ; $7479: $11 $75 $5d
    inc bc                                        ; $747c: $03
    inc h                                         ; $747d: $24
    push af                                       ; $747e: $f5
    ld sp, $d34c                                  ; $747f: $31 $4c $d3
    add $18                                       ; $7482: $c6 $18
    ld d, b                                       ; $7484: $50
    sbc a                                         ; $7485: $9f
    add $32                                       ; $7486: $c6 $32
    ld b, $1a                                     ; $7488: $06 $1a
    or h                                          ; $748a: $b4
    ld a, [bc]                                    ; $748b: $0a
    jp hl                                         ; $748c: $e9


    dec de                                        ; $748d: $1b
    ld a, [$2c8f]                                 ; $748e: $fa $8f $2c
    ld d, $dc                                     ; $7491: $16 $dc
    db $dd                                        ; $7493: $dd
    sbc $0c                                       ; $7494: $de $0c
    ld d, a                                       ; $7496: $57
    ld bc, $cd6b                                  ; $7497: $01 $6b $cd
    add a                                         ; $749a: $87
    ld b, e                                       ; $749b: $43
    ld a, l                                       ; $749c: $7d
    jr jr_069_74aa                                ; $749d: $18 $0b

    reti                                          ; $749f: $d9


    dec l                                         ; $74a0: $2d
    sub e                                         ; $74a1: $93
    ld d, $44                                     ; $74a2: $16 $44
    sra d                                         ; $74a4: $cb $2a
    xor d                                         ; $74a6: $aa
    and h                                         ; $74a7: $a4
    sub [hl]                                      ; $74a8: $96
    cpl                                           ; $74a9: $2f

jr_069_74aa:
    ld b, $d6                                     ; $74aa: $06 $d6
    sbc a                                         ; $74ac: $9f
    nop                                           ; $74ad: $00
    ld l, l                                       ; $74ae: $6d
    and b                                         ; $74af: $a0
    push de                                       ; $74b0: $d5
    ld c, c                                       ; $74b1: $49
    halt                                          ; $74b2: $76
    sub [hl]                                      ; $74b3: $96
    inc h                                         ; $74b4: $24
    inc bc                                        ; $74b5: $03
    ld d, $de                                     ; $74b6: $16 $de
    db $dd                                        ; $74b8: $dd
    or c                                          ; $74b9: $b1
    ld a, e                                       ; $74ba: $7b
    and e                                         ; $74bb: $a3

jr_069_74bc:
    or b                                          ; $74bc: $b0
    cp $04                                        ; $74bd: $fe $04
    ld l, b                                       ; $74bf: $68
    rst $10                                       ; $74c0: $d7
    push de                                       ; $74c1: $d5
    ccf                                           ; $74c2: $3f
    call nz, $da3a                                ; $74c3: $c4 $3a $da
    rst $18                                       ; $74c6: $df
    ld b, [hl]                                    ; $74c7: $46
    adc [hl]                                      ; $74c8: $8e
    sbc $1f                                       ; $74c9: $de $1f
    sbc e                                         ; $74cb: $9b
    db $ed                                        ; $74cc: $ed
    pop de                                        ; $74cd: $d1
    sbc d                                         ; $74ce: $9a
    jr c, jr_069_74bc                             ; $74cf: $38 $eb

    add l                                         ; $74d1: $85
    di                                            ; $74d2: $f3
    ld bc, $4817                                  ; $74d3: $01 $17 $48
    rst $18                                       ; $74d6: $df
    dec l                                         ; $74d7: $2d
    ld a, [hl-]                                   ; $74d8: $3a
    dec c                                         ; $74d9: $0d
    add sp, $0e                                   ; $74da: $e8 $0e
    xor $11                                       ; $74dc: $ee $11
    ldh a, [rSB]                                  ; $74de: $f0 $01
    db $db                                        ; $74e0: $db
    sub $9c                                       ; $74e1: $d6 $9c
    add d                                         ; $74e3: $82
    rra                                           ; $74e4: $1f
    sub a                                         ; $74e5: $97
    ld [hl+], a                                   ; $74e6: $22
    adc l                                         ; $74e7: $8d
    ld [$7ae3], sp                                ; $74e8: $08 $e3 $7a
    pop hl                                        ; $74eb: $e1
    ld a, h                                       ; $74ec: $7c
    sbc e                                         ; $74ed: $9b
    sub e                                         ; $74ee: $93
    ld l, [hl]                                    ; $74ef: $6e
    push bc                                       ; $74f0: $c5
    ld b, $f4                                     ; $74f1: $06 $f4
    sbc h                                         ; $74f3: $9c
    push bc                                       ; $74f4: $c5
    add l                                         ; $74f5: $85
    inc [hl]                                      ; $74f6: $34
    ld c, h                                       ; $74f7: $4c
    ccf                                           ; $74f8: $3f
    ld [c], a                                     ; $74f9: $e2
    sbc c                                         ; $74fa: $99
    add hl, hl                                    ; $74fb: $29
    add a                                         ; $74fc: $87
    ld b, $74                                     ; $74fd: $06 $74

Jump_069_74ff:
    ld b, a                                       ; $74ff: $47
    ld a, h                                       ; $7500: $7c
    ld sp, hl                                     ; $7501: $f9
    ld c, a                                       ; $7502: $4f
    ld a, [hl]                                    ; $7503: $7e
    sub a                                         ; $7504: $97
    ld d, d                                       ; $7505: $52
    di                                            ; $7506: $f3
    inc [hl]                                      ; $7507: $34
    and b                                         ; $7508: $a0
    dec sp                                        ; $7509: $3b
    ld [c], a                                     ; $750a: $e2
    bit 7, a                                      ; $750b: $cb $7f
    ld a, [c]                                     ; $750d: $f2
    inc bc                                        ; $750e: $03
    sbc e                                         ; $750f: $9b
    daa                                           ; $7510: $27
    ld a, [bc]                                    ; $7511: $0a
    ld [hl], b                                    ; $7512: $70
    ld b, [hl]                                    ; $7513: $46
    ld l, e                                       ; $7514: $6b
    ld [hl+], a                                   ; $7515: $22
    ld a, [c]                                     ; $7516: $f2
    db $d3                                        ; $7517: $d3
    ld a, a                                       ; $7518: $7f
    ld a, $9b                                     ; $7519: $3e $9b
    ld l, l                                       ; $751b: $6d
    ld e, l                                       ; $751c: $5d
    ld a, b                                       ; $751d: $78
    ld a, c                                       ; $751e: $79
    sbc d                                         ; $751f: $9a
    jr nz, jr_069_755a                            ; $7520: $20 $38

    dec de                                        ; $7522: $1b
    ccf                                           ; $7523: $3f
    sbc e                                         ; $7524: $9b
    sbc l                                         ; $7525: $9d
    pop de                                        ; $7526: $d1
    ld a, d                                       ; $7527: $7a
    dec b                                         ; $7528: $05
    ld [hl+], a                                   ; $7529: $22
    ld [c], a                                     ; $752a: $e2
    ld a, h                                       ; $752b: $7c
    sub a                                         ; $752c: $97
    ld b, d                                       ; $752d: $42
    adc $0a                                       ; $752e: $ce $0a
    sub $ad                                       ; $7530: $d6 $ad
    ld e, h                                       ; $7532: $5c
    jp nz, Jump_000_2f5b                          ; $7533: $c2 $5b $2f

    sbc h                                         ; $7536: $9c
    rrca                                          ; $7537: $0f
    adc c                                         ; $7538: $89
    ld [hl], $19                                  ; $7539: $36 $19
    ld l, c                                       ; $753b: $69
    ret c                                         ; $753c: $d8

    rlca                                          ; $753d: $07
    ld [c], a                                     ; $753e: $e2
    ld e, [hl]                                    ; $753f: $5e
    ld l, d                                       ; $7540: $6a
    and [hl]                                      ; $7541: $a6
    ld a, l                                       ; $7542: $7d
    rst $20                                       ; $7543: $e7
    adc l                                         ; $7544: $8d
    xor l                                         ; $7545: $ad
    rst $20                                       ; $7546: $e7
    rlca                                          ; $7547: $07
    sbc e                                         ; $7548: $9b
    ld [hl], a                                    ; $7549: $77
    rst $30                                       ; $754a: $f7
    rra                                           ; $754b: $1f
    ccf                                           ; $754c: $3f
    rst $20                                       ; $754d: $e7
    adc l                                         ; $754e: $8d
    xor l                                         ; $754f: $ad
    ld h, a                                       ; $7550: $67
    cpl                                           ; $7551: $2f
    adc b                                         ; $7552: $88
    dec hl                                        ; $7553: $2b
    sbc b                                         ; $7554: $98
    ld a, [c]                                     ; $7555: $f2
    inc bc                                        ; $7556: $03
    dec sp                                        ; $7557: $3b
    ld h, $ce                                     ; $7558: $26 $ce

jr_069_755a:
    rlca                                          ; $755a: $07
    rla                                           ; $755b: $17
    ld h, h                                       ; $755c: $64
    ret z                                         ; $755d: $c8

    ld b, d                                       ; $755e: $42
    ld [hl], $71                                  ; $755f: $36 $71
    ld [hl], c                                    ; $7561: $71
    sub d                                         ; $7562: $92
    rra                                           ; $7563: $1f
    ld e, e                                       ; $7564: $5b
    sbc c                                         ; $7565: $99
    ld a, [hl]                                    ; $7566: $7e
    db $ec                                        ; $7567: $ec
    ld d, [hl]                                    ; $7568: $56
    inc l                                         ; $7569: $2c
    ret                                           ; $756a: $c9


    ld sp, $7e06                                  ; $756b: $31 $06 $7e
    rla                                           ; $756e: $17
    ld c, b                                       ; $756f: $48
    rla                                           ; $7570: $17
    ld e, a                                       ; $7571: $5f
    ld h, b                                       ; $7572: $60
    ld b, b                                       ; $7573: $40
    reti                                          ; $7574: $d9


    dec hl                                        ; $7575: $2b
    db $10                                        ; $7576: $10
    ld de, $03e7                                  ; $7577: $11 $e7 $03
    rst $10                                       ; $757a: $d7
    inc e                                         ; $757b: $1c
    db $10                                        ; $757c: $10
    db $d3                                        ; $757d: $d3
    jp nz, Jump_000_00f9                          ; $757e: $c2 $f9 $00

    rst $20                                       ; $7581: $e7
    ld a, $cd                                     ; $7582: $3e $cd
    add $67                                       ; $7584: $c6 $67
    rra                                           ; $7586: $1f
    sbc e                                         ; $7587: $9b
    add hl, de                                    ; $7588: $19
    rst $10                                       ; $7589: $d7
    dec bc                                        ; $758a: $0b
    and a                                         ; $758b: $a7
    ld bc, $904d                                  ; $758c: $01 $4d $90
    ld e, $2e                                     ; $758f: $1e $2e
    or h                                          ; $7591: $b4
    rrca                                          ; $7592: $0f
    add hl, bc                                    ; $7593: $09
    or [hl]                                       ; $7594: $b6
    ld h, d                                       ; $7595: $62
    inc bc                                        ; $7596: $03
    cp d                                          ; $7597: $ba
    sub l                                         ; $7598: $95
    xor [hl]                                      ; $7599: $ae
    sbc e                                         ; $759a: $9b
    sub e                                         ; $759b: $93
    ld a, b                                       ; $759c: $78
    ld [hl], $1f                                  ; $759d: $36 $1f
    rla                                           ; $759f: $17
    inc hl                                        ; $75a0: $23
    and $f9                                       ; $75a1: $e6 $f9
    nop                                           ; $75a3: $00
    rla                                           ; $75a4: $17
    call nz, Call_000_0b30                        ; $75a5: $c4 $30 $0b
    ld h, d                                       ; $75a8: $62
    add $07                                       ; $75a9: $c6 $07
    sub a                                         ; $75ab: $97
    ld b, c                                       ; $75ac: $41
    ld a, [$ccd0]                                 ; $75ad: $fa $d0 $cc
    add b                                         ; $75b0: $80
    rrca                                          ; $75b1: $0f
    ld [c], a                                     ; $75b2: $e2
    ld c, e                                       ; $75b3: $4b
    add [hl]                                      ; $75b4: $86
    pop de                                        ; $75b5: $d1
    ld a, d                                       ; $75b6: $7a
    ld b, c                                       ; $75b7: $41
    ld a, h                                       ; $75b8: $7c
    ld a, [c]                                     ; $75b9: $f2
    and l                                         ; $75ba: $a5
    rst $20                                       ; $75bb: $e7
    inc bc                                        ; $75bc: $03
    adc c                                         ; $75bd: $89
    sub a                                         ; $75be: $97
    or $5c                                        ; $75bf: $f6 $5c
    rst $20                                       ; $75c1: $e7
    cpl                                           ; $75c2: $2f
    and e                                         ; $75c3: $a3
    rra                                           ; $75c4: $1f
    sub a                                         ; $75c5: $97
    ld h, d                                       ; $75c6: $62
    dec b                                         ; $75c7: $05
    ld d, e                                       ; $75c8: $53
    pop hl                                        ; $75c9: $e1
    ld a, h                                       ; $75ca: $7c
    adc c                                         ; $75cb: $89
    ld [hl], $bf                                  ; $75cc: $36 $bf
    inc sp                                        ; $75ce: $33
    ld e, d                                       ; $75cf: $5a
    cpl                                           ; $75d0: $2f
    add $c1                                       ; $75d1: $c6 $c1
    ret nc                                        ; $75d3: $d0

    rrca                                          ; $75d4: $0f
    sub a                                         ; $75d5: $97
    ld [hl+], a                                   ; $75d6: $22
    db $fd                                        ; $75d7: $fd
    inc [hl]                                      ; $75d8: $34
    ld c, a                                       ; $75d9: $4f
    inc bc                                        ; $75da: $03
    sbc d                                         ; $75db: $9a
    db $10                                        ; $75dc: $10
    rst $38                                       ; $75dd: $ff
    adc c                                         ; $75de: $89
    reti                                          ; $75df: $d9


    ld b, [hl]                                    ; $75e0: $46
    ccf                                           ; $75e1: $3f
    add hl, bc                                    ; $75e2: $09
    ld de, $7e96                                  ; $75e3: $11 $96 $7e
    db $ec                                        ; $75e6: $ec
    ld h, l                                       ; $75e7: $65
    ld e, b                                       ; $75e8: $58
    sub b                                         ; $75e9: $90
    or [hl]                                       ; $75ea: $b6
    dec [hl]                                      ; $75eb: $35
    rst $28                                       ; $75ec: $ef
    ei                                            ; $75ed: $fb
    ld sp, hl                                     ; $75ee: $f9
    ld bc, $1389                                  ; $75ef: $01 $89 $13
    di                                            ; $75f2: $f3
    db $f4                                        ; $75f3: $f4
    inc a                                         ; $75f4: $3c
    db $e3                                        ; $75f5: $e3
    ccf                                           ; $75f6: $3f
    rra                                           ; $75f7: $1f
    sub a                                         ; $75f8: $97
    jp nz, $eb1f                                  ; $75f9: $c2 $1f $eb

    ld d, [hl]                                    ; $75fc: $56
    and [hl]                                      ; $75fd: $a6
    rra                                           ; $75fe: $1f
    ccf                                           ; $75ff: $3f
    sub a                                         ; $7600: $97
    ld h, d                                       ; $7601: $62
    dec b                                         ; $7602: $05
    ld d, e                                       ; $7603: $53
    pop hl                                        ; $7604: $e1
    ld [hl], h                                    ; $7605: $74
    db $eb                                        ; $7606: $eb
    ld e, d                                       ; $7607: $5a
    ld a, [$fcfd]                                 ; $7608: $fa $fd $fc
    nop                                           ; $760b: $00
    sub a                                         ; $760c: $97
    jp nz, $eb1f                                  ; $760d: $c2 $1f $eb

    and l                                         ; $7610: $a5
    ret nc                                        ; $7611: $d0

    and a                                         ; $7612: $a7
    ld sp, hl                                     ; $7613: $f9
    ret nz                                        ; $7614: $c0

Jump_069_7615:
    ld hl, sp+$3f                                 ; $7615: $f8 $3f
    ld a, [hl]                                    ; $7617: $7e
    sbc e                                         ; $7618: $9b
    daa                                           ; $7619: $27
    xor [hl]                                      ; $761a: $ae
    and $a7                                       ; $761b: $e6 $a7
    ld [hl], l                                    ; $761d: $75
    ld [hl], e                                    ; $761e: $73
    sub d                                         ; $761f: $92
    cp $3a                                        ; $7620: $fe $3a
    or a                                          ; $7622: $b7
    ld sp, $e360                                  ; $7623: $31 $60 $e3
    and $a4                                       ; $7626: $e6 $a4
    ld e, e                                       ; $7628: $5b
    pop af                                        ; $7629: $f1
    inc bc                                        ; $762a: $03
    rst $20                                       ; $762b: $e7
    call z, Call_069_6ca2                         ; $762c: $cc $a2 $6c
    ld b, b                                       ; $762f: $40
    inc de                                        ; $7630: $13
    inc [hl]                                      ; $7631: $34
    cp e                                          ; $7632: $bb
    jr nc, @+$21                                  ; $7633: $30 $1f

    ld [c], a                                     ; $7635: $e2
    sbc c                                         ; $7636: $99
    add hl, hl                                    ; $7637: $29
    add a                                         ; $7638: $87
    ld l, [hl]                                    ; $7639: $6e
    halt                                          ; $763a: $76
    add $30                                       ; $763b: $c6 $30
    or $01                                        ; $763d: $f6 $01
    db $db                                        ; $763f: $db
    halt                                          ; $7640: $76
    ld e, e                                       ; $7641: $5b
    ld h, c                                       ; $7642: $61
    xor c                                         ; $7643: $a9
    ld hl, sp-$01                                 ; $7644: $f8 $ff
    inc h                                         ; $7646: $24
    ccf                                           ; $7647: $3f
    rst $20                                       ; $7648: $e7
    inc sp                                        ; $7649: $33
    ld h, $a7                                     ; $764a: $26 $a7
    ld bc, $bc4d                                  ; $764c: $01 $4d $bc
    db $f4                                        ; $764f: $f4
    inc bc                                        ; $7650: $03
    rst $20                                       ; $7651: $e7
    inc sp                                        ; $7652: $33
    ld h, $a7                                     ; $7653: $26 $a7
    ld bc, $dc4d                                  ; $7655: $01 $4d $dc
    ld a, [$e201]                                 ; $7658: $fa $01 $e2
    ld a, $d3                                     ; $765b: $3e $d3
    or h                                          ; $765d: $b4
    ld h, $6e                                     ; $765e: $26 $6e
    db $fd                                        ; $7660: $fd
    nop                                           ; $7661: $00
    sub a                                         ; $7662: $97
    jp nz, $eb1f                                  ; $7663: $c2 $1f $eb

    ld h, l                                       ; $7666: $65
    ld l, $cc                                     ; $7667: $2e $cc
    rlca                                          ; $7669: $07
    rla                                           ; $766a: $17
    ld c, b                                       ; $766b: $48
    rla                                           ; $766c: $17
    ld e, a                                       ; $766d: $5f
    ld h, b                                       ; $766e: $60
    ld b, b                                       ; $766f: $40
    reti                                          ; $7670: $d9


    xor l                                         ; $7671: $ad
    ld c, h                                       ; $7672: $4c
    ccf                                           ; $7673: $3f
    ld a, [hl]                                    ; $7674: $7e
    rla                                           ; $7675: $17
    ld c, b                                       ; $7676: $48
    rla                                           ; $7677: $17
    ld e, a                                       ; $7678: $5f
    ld h, b                                       ; $7679: $60
    ret nz                                        ; $767a: $c0

    rlca                                          ; $767b: $07
    add hl, bc                                    ; $767c: $09
    add d                                         ; $767d: $82
    jp hl                                         ; $767e: $e9


    inc [hl]                                      ; $767f: $34
    dec bc                                        ; $7680: $0b
    rst $20                                       ; $7681: $e7
    inc bc                                        ; $7682: $03
    ld e, e                                       ; $7683: $5b
    cp c                                          ; $7684: $b9
    add h                                         ; $7685: $84
    or a                                          ; $7686: $b7
    ld e, [hl]                                    ; $7687: $5e
    jr c, jr_069_76d7                             ; $7688: $38 $4d

    ret nc                                        ; $768a: $d0

    ld l, h                                       ; $768b: $6c
    inc de                                        ; $768c: $13
    jp Jump_000_3f28                              ; $768d: $c3 $28 $3f


    rst $20                                       ; $7690: $e7
    adc l                                         ; $7691: $8d
    xor l                                         ; $7692: $ad
    ld h, a                                       ; $7693: $67
    or a                                          ; $7694: $b7
    ret nz                                        ; $7695: $c0

    halt                                          ; $7696: $76
    ld a, a                                       ; $7697: $7f
    ccf                                           ; $7698: $3f
    ccf                                           ; $7699: $3f
    add hl, bc                                    ; $769a: $09
    pop af                                        ; $769b: $f1
    ld h, a                                       ; $769c: $67
    call z, $8894                                 ; $769d: $cc $94 $88
    ld a, c                                       ; $76a0: $79
    ld a, d                                       ; $76a1: $7a
    reti                                          ; $76a2: $d9


Call_069_76a3:
    ld h, h                                       ; $76a3: $64
    ld l, $1f                                     ; $76a4: $2e $1f
    db $db                                        ; $76a6: $db
    or l                                          ; $76a7: $b5
    cp a                                          ; $76a8: $bf
    adc l                                         ; $76a9: $8d
    inc e                                         ; $76aa: $1c
    db $ed                                        ; $76ab: $ed
    ld l, a                                       ; $76ac: $6f
    adc a                                         ; $76ad: $8f
    ld b, [hl]                                    ; $76ae: $46
    ld e, c                                       ; $76af: $59
    daa                                           ; $76b0: $27
    ld e, c                                       ; $76b1: $59
    ld a, a                                       ; $76b2: $7f
    sub $0b                                       ; $76b3: $d6 $0b
    and a                                         ; $76b5: $a7
    ld e, h                                       ; $76b6: $5c
    ret nz                                        ; $76b7: $c0

    cp h                                          ; $76b8: $bc
    cp e                                          ; $76b9: $bb
    dec a                                         ; $76ba: $3d
    ld l, [hl]                                    ; $76bb: $6e
    ld hl, sp+$00                                 ; $76bc: $f8 $00
    db $db                                        ; $76be: $db
    or l                                          ; $76bf: $b5
    cp a                                          ; $76c0: $bf
    adc l                                         ; $76c1: $8d
    inc e                                         ; $76c2: $1c
    xor l                                         ; $76c3: $ad
    pop bc                                        ; $76c4: $c1
    ld [hl], a                                    ; $76c5: $77
    ld a, [bc]                                    ; $76c6: $0a
    and e                                         ; $76c7: $a3
    xor h                                         ; $76c8: $ac
    sub e                                         ; $76c9: $93
    xor h                                         ; $76ca: $ac
    adc a                                         ; $76cb: $8f
    sub h                                         ; $76cc: $94
    ld b, e                                       ; $76cd: $43
    ld h, h                                       ; $76ce: $64
    ld d, e                                       ; $76cf: $53
    adc [hl]                                      ; $76d0: $8e
    ld sp, $c0bf                                  ; $76d1: $31 $bf $c0
    add b                                         ; $76d4: $80
    add [hl]                                      ; $76d5: $86
    pop de                                        ; $76d6: $d1

jr_069_76d7:
    ld h, [hl]                                    ; $76d7: $66
    jr c, @+$6f                                   ; $76d8: $38 $6d

    ld [c], a                                     ; $76da: $e2
    and l                                         ; $76db: $a5
    rst $30                                       ; $76dc: $f7
    rlca                                          ; $76dd: $07
    rst $20                                       ; $76de: $e7
    ld b, d                                       ; $76df: $42
    inc sp                                        ; $76e0: $33
    cp e                                          ; $76e1: $bb
    jp nz, $8eae                                  ; $76e2: $c2 $ae $8e

    or $b7                                        ; $76e5: $f6 $b7
    sub c                                         ; $76e7: $91
    and e                                         ; $76e8: $a3
    adc l                                         ; $76e9: $8d
    jp nz, $0529                                  ; $76ea: $c2 $29 $05

    cp b                                          ; $76ed: $b8
    ld b, b                                       ; $76ee: $40
    and e                                         ; $76ef: $a3
    cp h                                          ; $76f0: $bc
    ld a, e                                       ; $76f1: $7b
    add hl, de                                    ; $76f2: $19
    and d                                         ; $76f3: $a2
    halt                                          ; $76f4: $76
    ld a, [bc]                                    ; $76f5: $0a
    call Call_069_4887                            ; $76f6: $cd $87 $48
    and [hl]                                      ; $76f9: $a6
    and a                                         ; $76fa: $a7
    ret nc                                        ; $76fb: $d0

    sub h                                         ; $76fc: $94
    ld a, e                                       ; $76fd: $7b
    ld a, [$88f2]                                 ; $76fe: $fa $f2 $88
    xor d                                         ; $7701: $aa
    adc b                                         ; $7702: $88
    add hl, de                                    ; $7703: $19
    cp d                                          ; $7704: $ba
    ld sp, $79a3                                  ; $7705: $31 $a3 $79
    ld h, d                                       ; $7708: $62
    sbc [hl]                                      ; $7709: $9e
    and d                                         ; $770a: $a2
    ld e, [hl]                                    ; $770b: $5e
    db $e3                                        ; $770c: $e3
    ccf                                           ; $770d: $3f
    ld [hl], a                                    ; $770e: $77
    inc de                                        ; $770f: $13
    ld de, $da95                                  ; $7710: $11 $95 $da
    sub h                                         ; $7713: $94
    ld b, e                                       ; $7714: $43
    db $fd                                        ; $7715: $fd
    add hl, bc                                    ; $7716: $09
    ret nc                                        ; $7717: $d0

    ld h, [hl]                                    ; $7718: $66
    ld e, b                                       ; $7719: $58
    ld a, l                                       ; $771a: $7d
    ld e, b                                       ; $771b: $58
    ld a, b                                       ; $771c: $78
    ld h, c                                       ; $771d: $61
    jp z, $ed25                                   ; $771e: $ca $25 $ed

    and d                                         ; $7721: $a2
    ld [hl], $f1                                  ; $7722: $36 $f1

Jump_069_7724:
    jp nc, $03fb                                  ; $7724: $d2 $fb $03

    db $db                                        ; $7727: $db
    or l                                          ; $7728: $b5
    cp a                                          ; $7729: $bf
    adc l                                         ; $772a: $8d
    inc e                                         ; $772b: $1c
    db $ed                                        ; $772c: $ed
    sub e                                         ; $772d: $93
    cp [hl]                                       ; $772e: $be
    ld e, e                                       ; $772f: $5b
    db $f4                                        ; $7730: $f4
    ld c, l                                       ; $7731: $4d
    and h                                         ; $7732: $a4
    ld d, c                                       ; $7733: $51
    halt                                          ; $7734: $76
    or h                                          ; $7735: $b4
    adc c                                         ; $7736: $89
    sub a                                         ; $7737: $97
    sbc $dd                                       ; $7738: $de $dd
    add $ae                                       ; $773a: $c6 $ae
    ld h, b                                       ; $773c: $60
    add c                                         ; $773d: $81
    ld bc, $faa2                                  ; $773e: $01 $a2 $fa
    adc b                                         ; $7741: $88
    ld c, d                                       ; $7742: $4a
    dec l                                         ; $7743: $2d
    inc [hl]                                      ; $7744: $34
    db $d3                                        ; $7745: $d3
    jp z, Jump_069_7e1a                           ; $7746: $ca $1a $7e

    ld a, b                                       ; $7749: $78
    ld h, b                                       ; $774a: $60
    db $fd                                        ; $774b: $fd
    add hl, de                                    ; $774c: $19
    ret c                                         ; $774d: $d8

    dec d                                         ; $774e: $15
    halt                                          ; $774f: $76
    ld d, l                                       ; $7750: $55
    ld a, [c]                                     ; $7751: $f2
    ld l, c                                       ; $7752: $69
    inc de                                        ; $7753: $13
    cpl                                           ; $7754: $2f
    db $dd                                        ; $7755: $dd
    ldh a, [rSB]                                  ; $7756: $f0 $01
    db $db                                        ; $7758: $db
    or l                                          ; $7759: $b5
    cp a                                          ; $775a: $bf
    adc l                                         ; $775b: $8d
    inc e                                         ; $775c: $1c
    db $ed                                        ; $775d: $ed
    ld l, a                                       ; $775e: $6f
    adc a                                         ; $775f: $8f
    or d                                          ; $7760: $b2
    ld c, [hl]                                    ; $7761: $4e
    or d                                          ; $7762: $b2
    ld a, c                                       ; $7763: $79
    call z, Call_000_3310                         ; $7764: $cc $10 $33
    ld a, [de]                                    ; $7767: $1a
    ret nc                                        ; $7768: $d0

    ld [hl], e                                    ; $7769: $73
    ld d, $17                                     ; $776a: $16 $17
    jp nc, Jump_069_6d30                          ; $776c: $d2 $30 $6d

    jp z, $12a1                                   ; $776f: $ca $a1 $12

    sub [hl]                                      ; $7772: $96

Jump_069_7773:
    halt                                          ; $7773: $76
    ld c, e                                       ; $7774: $4b
    sub d                                         ; $7775: $92
    or d                                          ; $7776: $b2
    ld a, [hl-]                                   ; $7777: $3a
    ld e, $43                                     ; $7778: $1e $43
    sbc l                                         ; $777a: $9d
    inc l                                         ; $777b: $2c
    jp $a60a                                      ; $777c: $c3 $0a $a6


    ld l, e                                       ; $777f: $6b
    or $e6                                        ; $7780: $f6 $e6
    cp $00                                        ; $7782: $fe $00
    db $db                                        ; $7784: $db
    or l                                          ; $7785: $b5
    cp a                                          ; $7786: $bf
    adc l                                         ; $7787: $8d
    inc e                                         ; $7788: $1c
    db $ed                                        ; $7789: $ed
    ld l, a                                       ; $778a: $6f
    adc a                                         ; $778b: $8f
    or d                                          ; $778c: $b2
    ld c, [hl]                                    ; $778d: $4e
    or d                                          ; $778e: $b2
    dec sp                                        ; $778f: $3b
    ld [c], a                                     ; $7790: $e2
    bit 7, a                                      ; $7791: $cb $7f
    or d                                          ; $7793: $b2
    ld bc, $eedd                                  ; $7794: $01 $dd $ee
    ld l, h                                       ; $7797: $6c
    sbc d                                         ; $7798: $9a
    ld [hl], d                                    ; $7799: $72
    jr z, jr_069_77f1                             ; $779a: $28 $55

    sbc l                                         ; $779c: $9d
    ld h, [hl]                                    ; $779d: $66
    sub $c9                                       ; $779e: $d6 $c9
    ld [hl-], a                                   ; $77a0: $32
    xor h                                         ; $77a1: $ac
    ld h, b                                       ; $77a2: $60
    cp d                                          ; $77a3: $ba
    ld h, [hl]                                    ; $77a4: $66
    ld l, a                                       ; $77a5: $6f
    xor $0f                                       ; $77a6: $ee $0f
    db $db                                        ; $77a8: $db
    or l                                          ; $77a9: $b5
    cp a                                          ; $77aa: $bf
    adc l                                         ; $77ab: $8d
    inc e                                         ; $77ac: $1c
    db $ed                                        ; $77ad: $ed
    ld l, a                                       ; $77ae: $6f
    adc a                                         ; $77af: $8f
    or d                                          ; $77b0: $b2
    ld c, [hl]                                    ; $77b1: $4e
    or d                                          ; $77b2: $b2
    dec sp                                        ; $77b3: $3b
    ld [c], a                                     ; $77b4: $e2
    bit 7, a                                      ; $77b5: $cb $7f
    or d                                          ; $77b7: $b2
    ld bc, $671d                                  ; $77b8: $01 $1d $67
    db $d3                                        ; $77bb: $d3
    sub h                                         ; $77bc: $94
    ld b, e                                       ; $77bd: $43
    ld d, a                                       ; $77be: $57
    jp Jump_069_5fee                              ; $77bf: $c3 $ee $5f


    sbc e                                         ; $77c2: $9b
    ret nz                                        ; $77c3: $c0

    ld b, $f6                                     ; $77c4: $06 $f6
    and a                                         ; $77c6: $a7
    rlca                                          ; $77c7: $07
    db $eb                                        ; $77c8: $eb
    reti                                          ; $77c9: $d9


    add b                                         ; $77ca: $80
    ld a, [hl-]                                   ; $77cb: $3a
    reti                                          ; $77cc: $d9


    rla                                           ; $77cd: $17
    sbc a                                         ; $77ce: $9f
    ld a, h                                       ; $77cf: $7c
    jp hl                                         ; $77d0: $e9


    add hl, hl                                    ; $77d1: $29
    ld a, [hl-]                                   ; $77d2: $3a
    dec c                                         ; $77d3: $0d
    ld c, a                                       ; $77d4: $4f
    or e                                          ; $77d5: $b3
    pop af                                        ; $77d6: $f1
    db $dd                                        ; $77d7: $dd
    rra                                           ; $77d8: $1f
    db $db                                        ; $77d9: $db
    or l                                          ; $77da: $b5
    cp a                                          ; $77db: $bf
    adc l                                         ; $77dc: $8d
    inc e                                         ; $77dd: $1c
    ld l, l                                       ; $77de: $6d
    db $10                                        ; $77df: $10
    adc $c6                                       ; $77e0: $ce $c6
    adc h                                         ; $77e2: $8c
    ld a, [hl-]                                   ; $77e3: $3a
    reti                                          ; $77e4: $d9


    jr nc, jr_069_7826                            ; $77e5: $30 $3f

    ld [hl], $7c                                  ; $77e7: $36 $7c
    db $db                                        ; $77e9: $db
    or l                                          ; $77ea: $b5
    cp a                                          ; $77eb: $bf
    adc l                                         ; $77ec: $8d
    inc e                                         ; $77ed: $1c
    dec l                                         ; $77ee: $2d
    sbc l                                         ; $77ef: $9d
    ld b, h                                       ; $77f0: $44

jr_069_77f1:
    call z, $ca34                                 ; $77f1: $cc $34 $ca
    adc [hl]                                      ; $77f4: $8e
    sub $9f                                       ; $77f5: $d6 $9f
    sbc b                                         ; $77f7: $98
    ld b, a                                       ; $77f8: $47
    dec de                                        ; $77f9: $1b
    ld d, b                                       ; $77fa: $50
    ld [$61f6], sp                                ; $77fb: $08 $f6 $61
    rst $28                                       ; $77fe: $ef
    ret nz                                        ; $77ff: $c0

    ld hl, sp+$3f                                 ; $7800: $f8 $3f
    ld [hl], $e5                                  ; $7802: $36 $e5
    ret nc                                        ; $7804: $d0

    dec d                                         ; $7805: $15
    sbc a                                         ; $7806: $9f
    sub $f0                                       ; $7807: $d6 $f0
    jp $ab03                                      ; $7809: $c3 $03 $ab


    and d                                         ; $780c: $a2
    dec hl                                        ; $780d: $2b
    call nz, Call_000_061f                        ; $780e: $c4 $1f $06
    dec l                                         ; $7811: $2d
    inc [hl]                                      ; $7812: $34
    and e                                         ; $7813: $a3
    adc b                                         ; $7814: $88
    rst $38                                       ; $7815: $ff
    call nz, $b36c                                ; $7816: $c4 $6c $b3
    pop hl                                        ; $7819: $e1
    inc bc                                        ; $781a: $03
    db $db                                        ; $781b: $db
    or l                                          ; $781c: $b5
    cp a                                          ; $781d: $bf
    adc l                                         ; $781e: $8d
    inc e                                         ; $781f: $1c
    db $ed                                        ; $7820: $ed
    rst $08                                       ; $7821: $cf
    ld hl, sp+$63                                 ; $7822: $f8 $63
    and c                                         ; $7824: $a1
    db $ec                                        ; $7825: $ec

jr_069_7826:
    ld l, b                                       ; $7826: $68
    pop hl                                        ; $7827: $e1
    push bc                                       ; $7828: $c5
    res 4, e                                      ; $7829: $cb $a3
    dec c                                         ; $782b: $0d
    ld l, b                                       ; $782c: $68
    jp z, Jump_069_69f1                           ; $782d: $ca $f1 $69

    jp z, $cac1                                   ; $7830: $ca $c1 $ca

    call z, $8394                                 ; $7833: $cc $94 $83
    ld [hl], $a0                                  ; $7836: $36 $a0
    dec hl                                        ; $7838: $2b
    ld b, h                                       ; $7839: $44
    call nz, Call_069_7069                        ; $783a: $c4 $69 $70
    add $98                                       ; $783d: $c6 $98
    ld d, c                                       ; $783f: $51
    ld l, b                                       ; $7840: $68
    ld b, [hl]                                    ; $7841: $46
    ld de, $89ff                                  ; $7842: $11 $ff $89
    reti                                          ; $7845: $d9


    ld h, [hl]                                    ; $7846: $66
    jp $db07                                      ; $7847: $c3 $07 $db


    or l                                          ; $784a: $b5
    cp a                                          ; $784b: $bf
    adc l                                         ; $784c: $8d
    inc e                                         ; $784d: $1c
    db $ed                                        ; $784e: $ed
    rst $08                                       ; $784f: $cf
    ld hl, sp+$63                                 ; $7850: $f8 $63
    and c                                         ; $7852: $a1
    ld l, h                                       ; $7853: $6c
    jp z, Jump_069_69f1                           ; $7854: $ca $f1 $69

    jp z, Jump_000_2ac1                           ; $7857: $ca $c1 $2a

    cp c                                          ; $785a: $b9
    add h                                         ; $785b: $84
    or a                                          ; $785c: $b7
    cp $60                                        ; $785d: $fe $60
    ld l, b                                       ; $785f: $68
    ld d, e                                       ; $7860: $53
    ld c, $f5                                     ; $7861: $0e $f5
    ld b, a                                       ; $7863: $47
    sub l                                         ; $7864: $95
    jp c, $6b0c                                   ; $7865: $da $0c $6b

    ld a, [hl]                                    ; $7868: $7e
    ld h, c                                       ; $7869: $61
    ld [hl], $7c                                  ; $786a: $36 $7c
    db $db                                        ; $786c: $db
    or l                                          ; $786d: $b5
    cp a                                          ; $786e: $bf
    adc l                                         ; $786f: $8d

jr_069_7870:
    inc e                                         ; $7870: $1c
    ld l, l                                       ; $7871: $6d
    ld e, $8b                                     ; $7872: $1e $8b
    sub h                                         ; $7874: $94
    dec de                                        ; $7875: $1b
    inc sp                                        ; $7876: $33
    ld a, [hl+]                                   ; $7877: $2a
    ld sp, hl                                     ; $7878: $f9
    or h                                          ; $7879: $b4
    pop hl                                        ; $787a: $e1
    ld a, c                                       ; $787b: $79
    ld [hl], a                                    ; $787c: $77
    ei                                            ; $787d: $fb
    rst $18                                       ; $787e: $df
    jp nc, $3280                                  ; $787f: $d2 $80 $32

    di                                            ; $7882: $f3
    and a                                         ; $7883: $a7
    ld l, l                                       ; $7884: $6d
    ld hl, sp+$00                                 ; $7885: $f8 $00
    db $db                                        ; $7887: $db
    or l                                          ; $7888: $b5
    cp a                                          ; $7889: $bf
    adc l                                         ; $788a: $8d
    inc e                                         ; $788b: $1c
    dec l                                         ; $788c: $2d
    cp l                                          ; $788d: $bd
    call nc, Call_069_594c                        ; $788e: $d4 $4c $59
    sbc a                                         ; $7891: $9f
    sub [hl]                                      ; $7892: $96
    pop de                                        ; $7893: $d1
    jr nc, jr_069_7870                            ; $7894: $30 $da

    ret nz                                        ; $7896: $c0

    jr c, @-$24                                   ; $7897: $38 $da

    add b                                         ; $7899: $80
    and [hl]                                      ; $789a: $a6
    inc e                                         ; $789b: $1c
    sub a                                         ; $789c: $97
    sub h                                         ; $789d: $94
    add e                                         ; $789e: $83
    sub l                                         ; $789f: $95
    sbc c                                         ; $78a0: $99
    add hl, hl                                    ; $78a1: $29
    add a                                         ; $78a2: $87
    ld a, d                                       ; $78a3: $7a
    ld [hl], a                                    ; $78a4: $77
    db $d3                                        ; $78a5: $d3
    rst $30                                       ; $78a6: $f7
    ld c, a                                       ; $78a7: $4f
    rst $00                                       ; $78a8: $c7
    ld d, l                                       ; $78a9: $55
    xor [hl]                                      ; $78aa: $ae
    and l                                         ; $78ab: $a5
    rst $18                                       ; $78ac: $df
    ccf                                           ; $78ad: $3f

jr_069_78ae:
    dec de                                        ; $78ae: $1b
    ld a, $3b                                     ; $78af: $3e $3b
    db $10                                        ; $78b1: $10
    inc sp                                        ; $78b2: $33
    ld [hl], h                                    ; $78b3: $74
    ld h, e                                       ; $78b4: $63
    ld b, [hl]                                    ; $78b5: $46
    dec h                                         ; $78b6: $25
    sbc a                                         ; $78b7: $9f
    sub $3b                                       ; $78b8: $d6 $3b
    sub [hl]                                      ; $78ba: $96
    ld [hl], c                                    ; $78bb: $71
    scf                                           ; $78bc: $37
    ld de, $a951                                  ; $78bd: $11 $51 $a9
    ld c, l                                       ; $78c0: $4d
    add hl, sp                                    ; $78c1: $39
    ld [hl], h                                    ; $78c2: $74
    ld [$cbc5], a                                 ; $78c3: $ea $c5 $cb
    ld l, a                                       ; $78c6: $6f
    db $fd                                        ; $78c7: $fd
    db $f4                                        ; $78c8: $f4
    cp h                                          ; $78c9: $bc
    push hl                                       ; $78ca: $e5
    ld sp, hl                                     ; $78cb: $f9
    adc b                                         ; $78cc: $88
    ld h, c                                       ; $78cd: $61
    ld [$404f], a                                 ; $78ce: $ea $4f $40
    and c                                         ; $78d1: $a1
    sbc c                                         ; $78d2: $99
    ld d, [hl]                                    ; $78d3: $56
    and [hl]                                      ; $78d4: $a6
    rst $00                                       ; $78d5: $c7
    ld e, b                                       ; $78d6: $58
    jp hl                                         ; $78d7: $e9


    ld e, [hl]                                    ; $78d8: $5e
    sbc [hl]                                      ; $78d9: $9e
    ld c, d                                       ; $78da: $4a
    ld a, $ad                                     ; $78db: $3e $ad
    ccf                                           ; $78dd: $3f
    add hl, de                                    ; $78de: $19
    ld sp, $fee3                                  ; $78df: $31 $e3 $fe
    nop                                           ; $78e2: $00
    db $db                                        ; $78e3: $db
    or l                                          ; $78e4: $b5
    cp a                                          ; $78e5: $bf
    adc l                                         ; $78e6: $8d
    inc e                                         ; $78e7: $1c
    db $ed                                        ; $78e8: $ed
    ld l, a                                       ; $78e9: $6f
    adc a                                         ; $78ea: $8f
    ld b, [hl]                                    ; $78eb: $46
    reti                                          ; $78ec: $d9


    ldh [$a8], a                                  ; $78ed: $e0 $a8
    db $fd                                        ; $78ef: $fd
    ld [hl], a                                    ; $78f0: $77
    rst $30                                       ; $78f1: $f7
    rra                                           ; $78f2: $1f
    or l                                          ; $78f3: $b5
    ld bc, $afcd                                  ; $78f4: $01 $cd $af
    add hl, hl                                    ; $78f7: $29
    add a                                         ; $78f8: $87
    ld a, [$fc34]                                 ; $78f9: $fa $34 $fc
    sub b                                         ; $78fc: $90
    push af                                       ; $78fd: $f5
    ld [hl-], a                                   ; $78fe: $32
    ld h, [hl]                                    ; $78ff: $66
    xor d                                         ; $7900: $aa
    and h                                         ; $7901: $a4
    ld l, [hl]                                    ; $7902: $6e
    ld l, b                                       ; $7903: $68
    inc de                                        ; $7904: $13
    ld l, c                                       ; $7905: $69
    ld hl, sp+$21                                 ; $7906: $f8 $21
    sbc e                                         ; $7908: $9b
    ld h, c                                       ; $7909: $61
    dec c                                         ; $790a: $0d
    ld c, a                                       ; $790b: $4f
    or e                                          ; $790c: $b3
    ld [hl], c                                    ; $790d: $71
    or a                                          ; $790e: $b7
    jr nc, jr_069_78ae                            ; $790f: $30 $9d

    cp [hl]                                       ; $7911: $be
    ld hl, sp-$1c                                 ; $7912: $f8 $e4
    ld c, e                                       ; $7914: $4b
    rst $08                                       ; $7915: $cf
    db $fd                                        ; $7916: $fd
    ld bc, $b5db                                  ; $7917: $01 $db $b5
    cp a                                          ; $791a: $bf
    adc l                                         ; $791b: $8d
    inc e                                         ; $791c: $1c
    dec l                                         ; $791d: $2d
    and a                                         ; $791e: $a7
    add hl, hl                                    ; $791f: $29
    add a                                         ; $7920: $87
    ld a, [$fc34]                                 ; $7921: $fa $34 $fc
    ld l, b                                       ; $7924: $68
    inc d                                         ; $7925: $14
    ld c, [hl]                                    ; $7926: $4e
    inc sp                                        ; $7927: $33
    ld [$bb7d], a                                 ; $7928: $ea $7d $bb
    ld h, b                                       ; $792b: $60
    sub h                                         ; $792c: $94
    adc l                                         ; $792d: $8d
    inc c                                         ; $792e: $0c
    cp h                                          ; $792f: $bc
    cp e                                          ; $7930: $bb
    sub l                                         ; $7931: $95
    jp c, $8be9                                   ; $7932: $da $e9 $8b

    ld c, a                                       ; $7935: $4f
    cp [hl]                                       ; $7936: $be
    db $f4                                        ; $7937: $f4
    call nc, $e1a7                                ; $7938: $d4 $a7 $e1
    ld b, a                                       ; $793b: $47
    sbc l                                         ; $793c: $9d
    xor h                                         ; $793d: $ac
    ccf                                           ; $793e: $3f
    xor $9f                                       ; $793f: $ee $9f
    ld c, d                                       ; $7941: $4a
    ld a, $ad                                     ; $7942: $3e $ad
    ld [hl], a                                    ; $7944: $77
    inc l                                         ; $7945: $2c
    db $e3                                        ; $7946: $e3
    cp $00                                        ; $7947: $fe $00
    db $db                                        ; $7949: $db
    or l                                          ; $794a: $b5
    cp a                                          ; $794b: $bf
    adc l                                         ; $794c: $8d
    inc e                                         ; $794d: $1c
    dec l                                         ; $794e: $2d
    jp $c498                                      ; $794f: $c3 $98 $c4


    rrca                                          ; $7952: $0f
    and e                                         ; $7953: $a3
    db $ec                                        ; $7954: $ec
    ld l, b                                       ; $7955: $68
    add hl, de                                    ; $7956: $19
    ld d, [hl]                                    ; $7957: $56
    jr nc, jr_069_79b7                            ; $7958: $30 $5d

    or e                                          ; $795a: $b3
    scf                                           ; $795b: $37
    cp d                                          ; $795c: $ba
    and c                                         ; $795d: $a1
    db $db                                        ; $795e: $db
    dec a                                         ; $795f: $3d
    xor e                                         ; $7960: $ab
    ld b, a                                       ; $7961: $47
    adc c                                         ; $7962: $89
    sbc b                                         ; $7963: $98
    ld hl, $146a                                  ; $7964: $21 $6a $14
    ld c, [hl]                                    ; $7967: $4e
    db $fd                                        ; $7968: $fd
    add hl, bc                                    ; $7969: $09
    sub b                                         ; $796a: $90
    ld h, l                                       ; $796b: $65
    and $4f                                       ; $796c: $e6 $4f
    dec hl                                        ; $796e: $2b
    ld h, d                                       ; $796f: $62
    jp z, $e631                                   ; $7970: $ca $31 $e6

    xor c                                         ; $7973: $a9
    ld b, c                                       ; $7974: $41
    ld [hl], l                                    ; $7975: $75
    ld [hl+], a                                   ; $7976: $22
    push hl                                       ; $7977: $e5
    db $fd                                        ; $7978: $fd
    ld bc, $b5db                                  ; $7979: $01 $db $b5
    cp a                                          ; $797c: $bf
    adc l                                         ; $797d: $8d
    inc e                                         ; $797e: $1c
    ld l, l                                       ; $797f: $6d
    ld [hl], $46                                  ; $7980: $36 $46
    push af                                       ; $7982: $f5
    adc [hl]                                      ; $7983: $8e
    ld c, c                                       ; $7984: $49
    ld a, [de]                                    ; $7985: $1a
    ld h, l                                       ; $7986: $65
    sbc l                                         ; $7987: $9d
    ld h, h                                       ; $7988: $64

Jump_069_7989:
    rst $38                                       ; $7989: $ff
    ld a, c                                       ; $798a: $79
    jp z, Jump_069_6986                           ; $798b: $ca $86 $69

    add [hl]                                      ; $798e: $86

jr_069_798f:
    db $eb                                        ; $798f: $eb
    adc e                                         ; $7990: $8b
    dec hl                                        ; $7991: $2b
    call nz, Call_069_66bc                        ; $7992: $c4 $bc $66
    ld l, a                                       ; $7995: $6f
    ld a, [de]                                    ; $7996: $1a
    sbc l                                         ; $7997: $9d
    db $e4                                        ; $7998: $e4
    ld a, l                                       ; $7999: $7d
    rst $18                                       ; $799a: $df
    push af                                       ; $799b: $f5
    rla                                           ; $799c: $17
    daa                                           ; $799d: $27
    reti                                          ; $799e: $d9


    add b                                         ; $799f: $80
    ld [hl], d                                    ; $79a0: $72
    dec b                                         ; $79a1: $05
    call $76e6                                    ; $79a2: $cd $e6 $76
    ld l, l                                       ; $79a5: $6d
    jp c, Jump_000_01f0                           ; $79a6: $da $f0 $01

    db $db                                        ; $79a9: $db
    or l                                          ; $79aa: $b5
    cp a                                          ; $79ab: $bf
    adc l                                         ; $79ac: $8d
    inc e                                         ; $79ad: $1c
    dec l                                         ; $79ae: $2d
    sbc l                                         ; $79af: $9d
    ld b, h                                       ; $79b0: $44
    call z, $ca34                                 ; $79b1: $cc $34 $ca
    adc [hl]                                      ; $79b4: $8e
    ld [hl], $30                                  ; $79b5: $36 $30

jr_069_79b7:
    adc [hl]                                      ; $79b7: $8e
    or $45                                        ; $79b8: $f6 $45
    rst $28                                       ; $79ba: $ef
    ld a, [c]                                     ; $79bb: $f2
    jp nc, $8c2f                                  ; $79bc: $d2 $2f $8c

    sub $c7                                       ; $79bf: $d6 $c7
    ld [hl-], a                                   ; $79c1: $32
    jp c, $a70c                                   ; $79c2: $da $0c $a7

    push af                                       ; $79c5: $f5
    ld [c], a                                     ; $79c6: $e2
    push hl                                       ; $79c7: $e5
    or a                                          ; $79c8: $b7
    ld a, [hl]                                    ; $79c9: $7e
    or h                                          ; $79ca: $b4
    pop bc                                        ; $79cb: $c1
    add hl, de                                    ; $79cc: $19
    ld h, e                                       ; $79cd: $63
    ld b, [hl]                                    ; $79ce: $46
    and c                                         ; $79cf: $a1
    add hl, de                                    ; $79d0: $19
    ld b, l                                       ; $79d1: $45
    db $fc                                        ; $79d2: $fc
    daa                                           ; $79d3: $27
    ld h, [hl]                                    ; $79d4: $66
    sbc e                                         ; $79d5: $9b
    dec c                                         ; $79d6: $0d
    rra                                           ; $79d7: $1f
    db $db                                        ; $79d8: $db
    or l                                          ; $79d9: $b5
    cp a                                          ; $79da: $bf
    adc l                                         ; $79db: $8d
    inc e                                         ; $79dc: $1c
    ld l, l                                       ; $79dd: $6d
    ld e, $8b                                     ; $79de: $1e $8b
    sub h                                         ; $79e0: $94
    dec de                                        ; $79e1: $1b
    inc sp                                        ; $79e2: $33
    ld a, [$8ba4]                                 ; $79e3: $fa $a4 $8b
    jr z, jr_069_798f                             ; $79e6: $28 $a7

    dec hl                                        ; $79e8: $2b
    ld b, h                                       ; $79e9: $44
    call nz, Call_069_7d29                        ; $79ea: $c4 $29 $7d
    ld b, h                                       ; $79ed: $44
    ld l, d                                       ; $79ee: $6a
    inc hl                                        ; $79ef: $23
    inc [hl]                                      ; $79f0: $34
    and e                                         ; $79f1: $a3
    adc b                                         ; $79f2: $88

Call_069_79f3:
    rst $38                                       ; $79f3: $ff
    call nz, Call_069_736c                        ; $79f4: $c4 $6c $73
    ld a, a                                       ; $79f7: $7f
    db $db                                        ; $79f8: $db
    or l                                          ; $79f9: $b5
    cp a                                          ; $79fa: $bf
    adc l                                         ; $79fb: $8d
    inc e                                         ; $79fc: $1c
    db $ed                                        ; $79fd: $ed
    ld l, a                                       ; $79fe: $6f
    adc a                                         ; $79ff: $8f
    or d                                          ; $7a00: $b2
    ld c, [hl]                                    ; $7a01: $4e
    sub $43                                       ; $7a02: $d6 $43
    ld [hl], e                                    ; $7a04: $73
    ld c, e                                       ; $7a05: $4b
    ld [hl], d                                    ; $7a06: $72
    sbc d                                         ; $7a07: $9a
    ld h, c                                       ; $7a08: $61
    or [hl]                                       ; $7a09: $b6
    db $db                                        ; $7a0a: $db
    ld a, [bc]                                    ; $7a0b: $0a
    ld c, e                                       ; $7a0c: $4b
    ld d, e                                       ; $7a0d: $53
    ld c, $f5                                     ; $7a0e: $0e $f5
    ld l, l                                       ; $7a10: $6d
    ld d, [hl]                                    ; $7a11: $56
    di                                            ; $7a12: $f3
    or e                                          ; $7a13: $b3
    xor h                                         ; $7a14: $ac
    rst $10                                       ; $7a15: $d7
    and l                                         ; $7a16: $a5
    reti                                          ; $7a17: $d9


    add b                                         ; $7a18: $80
    ld a, [hl-]                                   ; $7a19: $3a
    ld e, c                                       ; $7a1a: $59
    add [hl]                                      ; $7a1b: $86
    dec d                                         ; $7a1c: $15
    ld c, h                                       ; $7a1d: $4c
    rst $10                                       ; $7a1e: $d7
    db $ec                                        ; $7a1f: $ec
    call Call_000_01fd                            ; $7a20: $cd $fd $01
    db $db                                        ; $7a23: $db
    or l                                          ; $7a24: $b5
    cp a                                          ; $7a25: $bf
    adc l                                         ; $7a26: $8d
    inc e                                         ; $7a27: $1c
    db $ed                                        ; $7a28: $ed
    ld l, a                                       ; $7a29: $6f
    adc a                                         ; $7a2a: $8f
    or d                                          ; $7a2b: $b2
    ld [hl], d                                    ; $7a2c: $72
    rrca                                          ; $7a2d: $0f
    ld a, l                                       ; $7a2e: $7d
    ccf                                           ; $7a2f: $3f
    sbc e                                         ; $7a30: $9b
    ld [hl], d                                    ; $7a31: $72
    ld l, b                                       ; $7a32: $68
    ld a, b                                       ; $7a33: $78
    sbc d                                         ; $7a34: $9a
    adc l                                         ; $7a35: $8d
    xor a                                         ; $7a36: $af
    and e                                         ; $7a37: $a3
    ld h, l                                       ; $7a38: $65
    ld e, b                                       ; $7a39: $58
    pop bc                                        ; $7a3a: $c1
    ld [hl], h                                    ; $7a3b: $74
    call $a8de                                    ; $7a3c: $cd $de $a8
    xor b                                         ; $7a3f: $a8
    ld e, [hl]                                    ; $7a40: $5e
    xor $42                                       ; $7a41: $ee $42
    inc c                                         ; $7a43: $0c
    db $d3                                        ; $7a44: $d3
    ld a, a                                       ; $7a45: $7f
    ld h, h                                       ; $7a46: $64
    ld d, e                                       ; $7a47: $53
    ld c, $f5                                     ; $7a48: $0e $f5
    ld h, c                                       ; $7a4a: $61
    ccf                                           ; $7a4b: $3f
    ld h, l                                       ; $7a4c: $65
    sbc l                                         ; $7a4d: $9d
    ld h, h                                       ; $7a4e: $64
    ld d, a                                       ; $7a4f: $57
    ret c                                         ; $7a50: $d8

    ld [hl], l                                    ; $7a51: $75
    ld a, a                                       ; $7a52: $7f
    db $db                                        ; $7a53: $db
    or l                                          ; $7a54: $b5
    cp a                                          ; $7a55: $bf
    adc l                                         ; $7a56: $8d
    inc e                                         ; $7a57: $1c
    db $ed                                        ; $7a58: $ed
    ld l, a                                       ; $7a59: $6f
    adc a                                         ; $7a5a: $8f
    or d                                          ; $7a5b: $b2
    ld [hl], d                                    ; $7a5c: $72
    rrca                                          ; $7a5d: $0f
    ld a, l                                       ; $7a5e: $7d
    ccf                                           ; $7a5f: $3f
    xor e                                         ; $7a60: $ab
    adc [hl]                                      ; $7a61: $8e
    dec hl                                        ; $7a62: $2b
    inc [hl]                                      ; $7a63: $34
    push hl                                       ; $7a64: $e5
    ld d, b                                       ; $7a65: $50
    add [hl]                                      ; $7a66: $86
    ld sp, $1f89                                  ; $7a67: $31 $89 $1f

jr_069_7a6a:
    ld [hl], l                                    ; $7a6a: $75
    or d                                          ; $7a6b: $b2
    inc c                                         ; $7a6c: $0c
    dec hl                                        ; $7a6d: $2b
    sbc b                                         ; $7a6e: $98
    xor [hl]                                      ; $7a6f: $ae
    reti                                          ; $7a70: $d9


    sbc e                                         ; $7a71: $9b
    ei                                            ; $7a72: $fb
    inc bc                                        ; $7a73: $03
    db $db                                        ; $7a74: $db
    or l                                          ; $7a75: $b5
    cp a                                          ; $7a76: $bf
    adc l                                         ; $7a77: $8d
    inc e                                         ; $7a78: $1c
    db $ed                                        ; $7a79: $ed
    ld l, a                                       ; $7a7a: $6f
    adc a                                         ; $7a7b: $8f
    ld b, [hl]                                    ; $7a7c: $46
    ld e, c                                       ; $7a7d: $59
    rst $28                                       ; $7a7e: $ef
    ld [hl-], a                                   ; $7a7f: $32

jr_069_7a80:
    ld b, $ad                                     ; $7a80: $06 $ad
    ld e, h                                       ; $7a82: $5c
    ld c, e                                       ; $7a83: $4b
    cp a                                          ; $7a84: $bf
    sbc a                                         ; $7a85: $9f
    cp d                                          ; $7a86: $ba
    and c                                         ; $7a87: $a1
    add hl, bc                                    ; $7a88: $09
    db $fd                                        ; $7a89: $fd

Jump_069_7a8a:
    sub e                                         ; $7a8a: $93
    ld a, b                                       ; $7a8b: $78
    ld b, [hl]                                    ; $7a8c: $46
    reti                                          ; $7a8d: $d9


    inc l                                         ; $7a8e: $2c
    sbc h                                         ; $7a8f: $9c
    ld c, d                                       ; $7a90: $4a
    ld l, $1b                                     ; $7a91: $2e $1b
    ld a, d                                       ; $7a93: $7a
    sbc c                                         ; $7a94: $99
    xor e                                         ; $7a95: $ab
    ld [hl+], a                                   ; $7a96: $22
    ld h, [hl]                                    ; $7a97: $66
    add sp, -$3a                                  ; $7a98: $e8 $c6
    adc h                                         ; $7a9a: $8c
    ld a, d                                       ; $7a9b: $7a
    jr nz, jr_069_7ae3                            ; $7a9c: $20 $45

    sub l                                         ; $7a9e: $95
    call nc, $968e                                ; $7a9f: $d4 $8e $96
    ld h, c                                       ; $7aa2: $61
    dec b                                         ; $7aa3: $05
    db $d3                                        ; $7aa4: $d3
    dec [hl]                                      ; $7aa5: $35
    ld a, e                                       ; $7aa6: $7b
    and e                                         ; $7aa7: $a3
    push af                                       ; $7aa8: $f5
    ld l, c                                       ; $7aa9: $69
    ld hl, sp+$21                                 ; $7aaa: $f8 $21
    adc e                                         ; $7aac: $8b
    jr z, jr_069_7b0f                             ; $7aad: $28 $60

    jr jr_069_7af7                                ; $7aaf: $18 $46

    rst $28                                       ; $7ab1: $ef
    rrca                                          ; $7ab2: $0f
    db $db                                        ; $7ab3: $db
    or l                                          ; $7ab4: $b5
    cp a                                          ; $7ab5: $bf
    adc l                                         ; $7ab6: $8d
    inc e                                         ; $7ab7: $1c
    xor l                                         ; $7ab8: $ad
    ld c, a                                       ; $7ab9: $4f
    jp $d90f                                      ; $7aba: $c3 $0f $d9


    inc c                                         ; $7abd: $0c
    dec hl                                        ; $7abe: $2b
    dec a                                         ; $7abf: $3d
    add $18                                       ; $7ac0: $c6 $18
    jr jr_069_7a6a                                ; $7ac2: $18 $a6

    and e                                         ; $7ac4: $a3
    ld h, l                                       ; $7ac5: $65
    ld e, b                                       ; $7ac6: $58
    pop bc                                        ; $7ac7: $c1
    ld [hl], h                                    ; $7ac8: $74
    call $e8de                                    ; $7ac9: $cd $de $e8
    add [hl]                                      ; $7acc: $86
    rrca                                          ; $7acd: $0f
    add hl, bc                                    ; $7ace: $09
    sbc d                                         ; $7acf: $9a
    rst $10                                       ; $7ad0: $d7
    or h                                          ; $7ad1: $b4
    xor h                                         ; $7ad2: $ac
    sbc h                                         ; $7ad3: $9c
    dec d                                         ; $7ad4: $15
    ld l, h                                       ; $7ad5: $6c
    ld h, e                                       ; $7ad6: $63
    ld b, [hl]                                    ; $7ad7: $46
    and l                                         ; $7ad8: $a5
    ld a, e                                       ; $7ad9: $7b
    ld a, c                                       ; $7ada: $79
    ld a, [de]                                    ; $7adb: $1a
    or b                                          ; $7adc: $b0
    ld h, d                                       ; $7add: $62
    sbc d                                         ; $7ade: $9a
    halt                                          ; $7adf: $76
    rst $30                                       ; $7ae0: $f7
    ld e, h                                       ; $7ae1: $5c
    xor h                                         ; $7ae2: $ac

jr_069_7ae3:
    jr nz, jr_069_7a80                            ; $7ae3: $20 $9b

    ld h, c                                       ; $7ae5: $61
    push de                                       ; $7ae6: $d5
    rla                                           ; $7ae7: $17
    and [hl]                                      ; $7ae8: $a6
    and e                                         ; $7ae9: $a3
    db $fd                                        ; $7aea: $fd
    ld l, l                                       ; $7aeb: $6d
    db $e4                                        ; $7aec: $e4
    add sp, -$7a                                  ; $7aed: $e8 $86
    rrca                                          ; $7aef: $0f
    db $db                                        ; $7af0: $db
    or l                                          ; $7af1: $b5
    cp a                                          ; $7af2: $bf
    adc l                                         ; $7af3: $8d
    inc e                                         ; $7af4: $1c
    db $ed                                        ; $7af5: $ed
    ld l, a                                       ; $7af6: $6f

jr_069_7af7:
    adc a                                         ; $7af7: $8f
    ld b, [hl]                                    ; $7af8: $46
    ld e, c                                       ; $7af9: $59
    daa                                           ; $7afa: $27
    ld e, c                                       ; $7afb: $59
    and e                                         ; $7afc: $a3
    nop                                           ; $7afd: $00
    ld b, $36                                     ; $7afe: $06 $36
    and b                                         ; $7b00: $a0
    dec hl                                        ; $7b01: $2b
    call nz, Call_069_4d3c                        ; $7b02: $c4 $3c $4d
    add hl, sp                                    ; $7b05: $39
    inc [hl]                                      ; $7b06: $34
    ret nz                                        ; $7b07: $c0

    call z, Call_069_5879                         ; $7b08: $cc $79 $58

Call_069_7b0b:
    daa                                           ; $7b0b: $27

Call_069_7b0c:
    res 6, b                                      ; $7b0c: $cb $b0
    add d                                         ; $7b0e: $82

jr_069_7b0f:
    jp hl                                         ; $7b0f: $e9


    sbc d                                         ; $7b10: $9a
    cp l                                          ; $7b11: $bd
    reti                                          ; $7b12: $d9


    ldh a, [rSB]                                  ; $7b13: $f0 $01
    db $db                                        ; $7b15: $db
    or l                                          ; $7b16: $b5
    cp a                                          ; $7b17: $bf
    adc l                                         ; $7b18: $8d
    inc e                                         ; $7b19: $1c
    ld l, l                                       ; $7b1a: $6d
    ld [hl], $46                                  ; $7b1b: $36 $46
    push af                                       ; $7b1d: $f5
    adc [hl]                                      ; $7b1e: $8e
    ld c, c                                       ; $7b1f: $49
    ld a, [de]                                    ; $7b20: $1a
    ld h, l                                       ; $7b21: $65
    sbc l                                         ; $7b22: $9d
    inc l                                         ; $7b23: $2c
    jp $a60a                                      ; $7b24: $c3 $0a $a6


    ld l, e                                       ; $7b27: $6b
    or $e6                                        ; $7b28: $f6 $e6
    cp [hl]                                       ; $7b2a: $be
    rst $28                                       ; $7b2b: $ef
    add $71                                       ; $7b2c: $c6 $71
    reti                                          ; $7b2e: $d9


    ret c                                         ; $7b2f: $d8

    ld a, a                                       ; $7b30: $7f
    sbc [hl]                                      ; $7b31: $9e
    ld a, [c]                                     ; $7b32: $f2
    cp $00                                        ; $7b33: $fe $00
    db $db                                        ; $7b35: $db
    or l                                          ; $7b36: $b5
    cp a                                          ; $7b37: $bf
    adc l                                         ; $7b38: $8d
    inc e                                         ; $7b39: $1c
    ld l, l                                       ; $7b3a: $6d
    ld [hl], b                                    ; $7b3b: $70
    cp $f2                                        ; $7b3c: $fe $f2
    ld a, [hl]                                    ; $7b3e: $7e
    jp z, Jump_000_368e                           ; $7b3f: $ca $8e $36

    pop af                                        ; $7b42: $f1
    jp nc, Jump_069_6706                          ; $7b43: $d2 $06 $67

    adc h                                         ; $7b46: $8c
    add hl, de                                    ; $7b47: $19
    add l                                         ; $7b48: $85
    ld h, [hl]                                    ; $7b49: $66
    inc d                                         ; $7b4a: $14
    pop af                                        ; $7b4b: $f1
    sbc a                                         ; $7b4c: $9f
    sbc b                                         ; $7b4d: $98
    ld l, l                                       ; $7b4e: $6d
    ld [hl], $7c                                  ; $7b4f: $36 $7c
    db $db                                        ; $7b51: $db
    or l                                          ; $7b52: $b5
    cp a                                          ; $7b53: $bf
    adc l                                         ; $7b54: $8d
    inc e                                         ; $7b55: $1c

jr_069_7b56:
    ld l, l                                       ; $7b56: $6d
    add h                                         ; $7b57: $84
    set 0, [hl]                                   ; $7b58: $cb $c6
    push hl                                       ; $7b5a: $e5
    db $ed                                        ; $7b5b: $ed
    and d                                         ; $7b5c: $a2
    ld l, h                                       ; $7b5d: $6c
    jp z, Jump_069_4971                           ; $7b5e: $ca $71 $49

    add hl, sp                                    ; $7b61: $39
    ld e, b                                       ; $7b62: $58
    ld d, a                                       ; $7b63: $57
    adc b                                         ; $7b64: $88
    adc b                                         ; $7b65: $88
    db $d3                                        ; $7b66: $d3
    ld [hl], c                                    ; $7b67: $71
    sub l                                         ; $7b68: $95
    ld c, h                                       ; $7b69: $4c
    ccf                                           ; $7b6a: $3f
    ld d, [hl]                                    ; $7b6b: $56
    ld [hl], d                                    ; $7b6c: $72
    ld e, c                                       ; $7b6d: $59
    rst $20                                       ; $7b6e: $e7
    ld a, l                                       ; $7b6f: $7d
    ccf                                           ; $7b70: $3f
    sbc e                                         ; $7b71: $9b
    ld [hl], d                                    ; $7b72: $72
    ld l, b                                       ; $7b73: $68
    ld b, [hl]                                    ; $7b74: $46
    db $fd                                        ; $7b75: $fd
    ld d, c                                       ; $7b76: $51
    ld h, l                                       ; $7b77: $65
    jp hl                                         ; $7b78: $e9


    push bc                                       ; $7b79: $c5
    sbc a                                         ; $7b7a: $9f
    ld l, c                                       ; $7b7b: $69
    dec de                                        ; $7b7c: $1b
    ld a, $db                                     ; $7b7d: $3e $db
    or l                                          ; $7b7f: $b5
    cp a                                          ; $7b80: $bf
    adc l                                         ; $7b81: $8d
    inc e                                         ; $7b82: $1c
    xor l                                         ; $7b83: $ad
    call nz, $1c92                                ; $7b84: $c4 $92 $1c
    and e                                         ; $7b87: $a3
    call c, $d198                                 ; $7b88: $dc $98 $d1
    pop de                                        ; $7b8b: $d1
    ld a, [hl+]                                   ; $7b8c: $2a
    ld h, d                                       ; $7b8d: $62
    ld a, [hl]                                    ; $7b8e: $7e
    ld h, c                                       ; $7b8f: $61
    or h                                          ; $7b90: $b4
    ld a, $8d                                     ; $7b91: $3e $8d
    push af                                       ; $7b93: $f5
    ld l, l                                       ; $7b94: $6d
    ld a, [hl]                                    ; $7b95: $7e
    ld h, a                                       ; $7b96: $67
    or h                                          ; $7b97: $b4
    ld l, $38                                     ; $7b98: $2e $38
    jr jr_069_7b56                                ; $7b9a: $18 $ba

    pop hl                                        ; $7b9c: $e1
    inc bc                                        ; $7b9d: $03
    db $db                                        ; $7b9e: $db
    or l                                          ; $7b9f: $b5
    cp a                                          ; $7ba0: $bf
    adc l                                         ; $7ba1: $8d
    inc e                                         ; $7ba2: $1c
    db $ed                                        ; $7ba3: $ed
    ld l, a                                       ; $7ba4: $6f
    adc a                                         ; $7ba5: $8f
    or d                                          ; $7ba6: $b2
    ld c, [hl]                                    ; $7ba7: $4e
    or d                                          ; $7ba8: $b2
    inc [hl]                                      ; $7ba9: $34
    ret                                           ; $7baa: $c9


    ldh a, [$96]                                  ; $7bab: $f0 $96
    inc h                                         ; $7bad: $24
    db $eb                                        ; $7bae: $eb
    db $d3                                        ; $7baf: $d3
    ld e, b                                       ; $7bb0: $58
    add hl, sp                                    ; $7bb1: $39
    ld d, c                                       ; $7bb2: $51
    or e                                          ; $7bb3: $b3
    adc l                                         ; $7bb4: $8d
    sbc $3d                                       ; $7bb5: $de $3d
    rst $10                                       ; $7bb7: $d7
    add hl, de                                    ; $7bb8: $19
    ld h, e                                       ; $7bb9: $63
    ld b, [hl]                                    ; $7bba: $46
    sbc l                                         ; $7bbb: $9d
    db $ec                                        ; $7bbc: $ec
    rst $28                                       ; $7bbd: $ef
    inc l                                         ; $7bbe: $2c
    ld c, a                                       ; $7bbf: $4f
    and c                                         ; $7bc0: $a1
    ld a, $d7                                     ; $7bc1: $3e $d7
    ld c, a                                       ; $7bc3: $4f
    inc bc                                        ; $7bc4: $03
    sbc d                                         ; $7bc5: $9a
    ld hl, $a9fd                                  ; $7bc6: $21 $fd $a9
    ld c, a                                       ; $7bc9: $4f
    set 5, a                                      ; $7bca: $cb $ef
    ld a, a                                       ; $7bcc: $7f
    ld a, $6d                                     ; $7bcd: $3e $6d
    ld c, l                                       ; $7bcf: $4d
    dec bc                                        ; $7bd0: $0b
    ld e, c                                       ; $7bd1: $59
    ret                                           ; $7bd2: $c9


    and a                                         ; $7bd3: $a7
    ld b, l                                       ; $7bd4: $45
    db $fc                                        ; $7bd5: $fc
    daa                                           ; $7bd6: $27
    ld h, [hl]                                    ; $7bd7: $66
    dec de                                        ; $7bd8: $1b
    xor l                                         ; $7bd9: $ad
    ld e, h                                       ; $7bda: $5c
    ld c, e                                       ; $7bdb: $4b
    cp a                                          ; $7bdc: $bf
    ld a, a                                       ; $7bdd: $7f
    or h                                          ; $7bde: $b4
    ld h, c                                       ; $7bdf: $61
    sbc d                                         ; $7be0: $9a
    ld [hl], d                                    ; $7be1: $72
    add sp, -$46                                  ; $7be2: $e8 $ba
    ld h, $e9                                     ; $7be4: $26 $e9
    ld a, c                                       ; $7be6: $79
    reti                                          ; $7be7: $d9


    ld [hl], c                                    ; $7be8: $71
    cp c                                          ; $7be9: $b9
    ccf                                           ; $7bea: $3f
    db $db                                        ; $7beb: $db
    or l                                          ; $7bec: $b5
    cp a                                          ; $7bed: $bf
    adc l                                         ; $7bee: $8d
    inc e                                         ; $7bef: $1c
    db $ed                                        ; $7bf0: $ed
    adc e                                         ; $7bf1: $8b
    ld a, e                                       ; $7bf2: $7b
    ld h, h                                       ; $7bf3: $64
    inc a                                         ; $7bf4: $3c
    ld l, l                                       ; $7bf5: $6d
    db $10                                        ; $7bf6: $10
    ld c, [hl]                                    ; $7bf7: $4e
    add hl, sp                                    ; $7bf8: $39
    ld h, l                                       ; $7bf9: $65
    ld e, b                                       ; $7bfa: $58
    pop bc                                        ; $7bfb: $c1
    ld [hl], h                                    ; $7bfc: $74
    call $d4de                                    ; $7bfd: $cd $de $d4
    ld c, c                                       ; $7c00: $49
    sub $7f                                       ; $7c01: $d6 $7f
    sbc d                                         ; $7c03: $9a
    ld e, c                                       ; $7c04: $59
    dec e                                         ; $7c05: $1d
    adc a                                         ; $7c06: $8f
    and c                                         ; $7c07: $a1
    db $d3                                        ; $7c08: $d3
    sub h                                         ; $7c09: $94
    ld b, e                                       ; $7c0a: $43
    ld d, a                                       ; $7c0b: $57
    ld a, h                                       ; $7c0c: $7c
    ld e, d                                       ; $7c0d: $5a
    cpl                                           ; $7c0e: $2f
    ld [hl], a                                    ; $7c0f: $77
    pop bc                                        ; $7c10: $c1
    jp z, $d22a                                   ; $7c11: $ca $2a $d2

    xor $99                                       ; $7c14: $ee $99
    xor b                                         ; $7c16: $a8
    db $d3                                        ; $7c17: $d3
    sub h                                         ; $7c18: $94
    ld b, e                                       ; $7c19: $43
    dec h                                         ; $7c1a: $25

jr_069_7c1b:
    sub [hl]                                      ; $7c1b: $96
    db $e4                                        ; $7c1c: $e4
    jr jr_069_7c6a                                ; $7c1d: $18 $4b

    ld l, l                                       ; $7c1f: $6d
    add b                                         ; $7c20: $80
    rla                                           ; $7c21: $17
    ld c, d                                       ; $7c22: $4a
    ld l, l                                       ; $7c23: $6d
    ret nz                                        ; $7c24: $c0

    ld [bc], a                                    ; $7c25: $02
    cp l                                          ; $7c26: $bd
    ccf                                           ; $7c27: $3f
    db $db                                        ; $7c28: $db
    or l                                          ; $7c29: $b5
    cp a                                          ; $7c2a: $bf
    adc l                                         ; $7c2b: $8d
    inc e                                         ; $7c2c: $1c
    xor l                                         ; $7c2d: $ad
    ld h, c                                       ; $7c2e: $61
    add l                                         ; $7c2f: $85
    add l                                         ; $7c30: $85
    ld [hl], d                                    ; $7c31: $72
    ld h, e                                       ; $7c32: $63
    ld b, [hl]                                    ; $7c33: $46
    and a                                         ; $7c34: $a7
    cp $c4                                        ; $7c35: $fe $c4
    inc a                                         ; $7c37: $3c
    push af                                       ; $7c38: $f5
    ld a, [de]                                    ; $7c39: $1a
    rst $38                                       ; $7c3a: $ff
    ld l, c                                       ; $7c3b: $69
    jr jr_069_7c6b                                ; $7c3c: $18 $2d

    jp $a60a                                      ; $7c3e: $c3 $0a $a6


    ld l, e                                       ; $7c41: $6b
    or $46                                        ; $7c42: $f6 $46
    ld b, l                                       ; $7c44: $45
    push af                                       ; $7c45: $f5
    ld l, c                                       ; $7c46: $69
    xor h                                         ; $7c47: $ac
    call nz, $1c92                                ; $7c48: $c4 $92 $1c
    xor e                                         ; $7c4b: $ab
    ccf                                           ; $7c4c: $3f
    ld bc, $ed06                                  ; $7c4d: $01 $06 $ed
    jp nz, $9eb8                                  ; $7c50: $c2 $b8 $9e

    or [hl]                                       ; $7c53: $b6
    ld [hl], c                                    ; $7c54: $71
    ld c, c                                       ; $7c55: $49
    ld b, d                                       ; $7c56: $42
    db $eb                                        ; $7c57: $eb
    push bc                                       ; $7c58: $c5
    bit 5, a                                      ; $7c59: $cb $6f
    db $fd                                        ; $7c5b: $fd
    add sp, -$03                                  ; $7c5c: $e8 $fd
    ld bc, $b5db                                  ; $7c5e: $01 $db $b5
    cp a                                          ; $7c61: $bf
    adc l                                         ; $7c62: $8d
    inc e                                         ; $7c63: $1c
    xor l                                         ; $7c64: $ad
    pop bc                                        ; $7c65: $c1
    ccf                                           ; $7c66: $3f
    jr jr_069_7c1b                                ; $7c67: $18 $b2

    and e                                         ; $7c69: $a3

jr_069_7c6a:
    ld c, l                                       ; $7c6a: $4d

jr_069_7c6b:
    call c, Call_000_38da                         ; $7c6b: $dc $da $38
    sub l                                         ; $7c6e: $95
    ld l, e                                       ; $7c6f: $6b
    add d                                         ; $7c70: $82
    sbc a                                         ; $7c71: $9f
    sbc h                                         ; $7c72: $9c
    dec c                                         ; $7c73: $0d
    rra                                           ; $7c74: $1f
    db $db                                        ; $7c75: $db
    or l                                          ; $7c76: $b5
    cp a                                          ; $7c77: $bf
    adc l                                         ; $7c78: $8d
    inc e                                         ; $7c79: $1c
    xor l                                         ; $7c7a: $ad
    ld b, c                                       ; $7c7b: $41
    adc $0a                                       ; $7c7c: $ce $0a
    or d                                          ; $7c7e: $b2
    add hl, hl                                    ; $7c7f: $29
    rst $00                                       ; $7c80: $c7
    dec h                                         ; $7c81: $25
    push hl                                       ; $7c82: $e5
    ld h, b                                       ; $7c83: $60
    add l                                         ; $7c84: $85
    rla                                           ; $7c85: $17
    cpl                                           ; $7c86: $2f
    ld c, a                                       ; $7c87: $4f
    push hl                                       ; $7c88: $e5
    ld e, d                                       ; $7c89: $5a
    ld a, [$73fd]                                 ; $7c8a: $fa $fd $73
    rst $18                                       ; $7c8d: $df
    ld [hl], a                                    ; $7c8e: $77
    ld d, e                                       ; $7c8f: $53
    ld c, $56                                     ; $7c90: $0e $56
    rrca                                          ; $7c92: $0f
    ld [c], a                                     ; $7c93: $e2
    ld a, [hl-]                                   ; $7c94: $3a
    rst $28                                       ; $7c95: $ef
    ei                                            ; $7c96: $fb
    and a                                         ; $7c97: $a7

Jump_069_7c98:
    add hl, hl                                    ; $7c98: $29
    rlca                                          ; $7c99: $07
    xor e                                         ; $7c9a: $ab
    db $e4                                        ; $7c9b: $e4
    or d                                          ; $7c9c: $b2
    adc $fb                                       ; $7c9d: $ce $fb
    cp $b9                                        ; $7c9f: $fe $b9
    rst $28                                       ; $7ca1: $ef
    cp e                                          ; $7ca2: $bb
    add hl, hl                                    ; $7ca3: $29
    add a                                         ; $7ca4: $87
    ld a, [$d586]                                 ; $7ca5: $fa $86 $d5
    and e                                         ; $7ca8: $a3
    ld b, h                                       ; $7ca9: $44
    call z, Call_069_4668                         ; $7caa: $cc $68 $46
    inc sp                                        ; $7cad: $33
    ld h, d                                       ; $7cae: $62
    sub d                                         ; $7caf: $92
    push de                                       ; $7cb0: $d5
    rla                                           ; $7cb1: $17
    and [hl]                                      ; $7cb2: $a6
    dec bc                                        ; $7cb3: $0b
    db $e3                                        ; $7cb4: $e3
    ld a, d                                       ; $7cb5: $7a
    add [hl]                                      ; $7cb6: $86
    cp c                                          ; $7cb7: $b9
    ccf                                           ; $7cb8: $3f
    db $db                                        ; $7cb9: $db
    or l                                          ; $7cba: $b5
    cp a                                          ; $7cbb: $bf
    adc l                                         ; $7cbc: $8d
    inc e                                         ; $7cbd: $1c
    db $ed                                        ; $7cbe: $ed
    rst $28                                       ; $7cbf: $ef
    adc h                                         ; $7cc0: $8c
    or d                                          ; $7cc1: $b2
    ld a, c                                       ; $7cc2: $79
    ld [bc], a                                    ; $7cc3: $02
    or l                                          ; $7cc4: $b5
    call nc, Call_069_617a                        ; $7cc5: $d4 $7a $61
    cpl                                           ; $7cc8: $2f
    ld d, b                                       ; $7cc9: $50
    adc e                                         ; $7cca: $8b
    ld a, [de]                                    ; $7ccb: $1a
    db $fc                                        ; $7ccc: $fc
    add e                                         ; $7ccd: $83
    ld hl, $da3b                                  ; $7cce: $21 $3b $da
    call nz, Call_000_1b4b                        ; $7cd1: $c4 $4b $1b
    and a                                         ; $7cd4: $a7
    ld [hl], d                                    ; $7cd5: $72
    ld c, l                                       ; $7cd6: $4d
    ldh a, [$93]                                  ; $7cd7: $f0 $93
    or e                                          ; $7cd9: $b3
    pop hl                                        ; $7cda: $e1
    inc bc                                        ; $7cdb: $03
    db $db                                        ; $7cdc: $db
    or l                                          ; $7cdd: $b5
    cp a                                          ; $7cde: $bf
    adc l                                         ; $7cdf: $8d
    inc e                                         ; $7ce0: $1c
    ld l, l                                       ; $7ce1: $6d
    add b                                         ; $7ce2: $80
    ld d, c                                       ; $7ce3: $51
    ld l, [hl]                                    ; $7ce4: $6e
    call z, $efb8                                 ; $7ce5: $cc $b8 $ef
    cp e                                          ; $7ce8: $bb
    ld c, [hl]                                    ; $7ce9: $4e
    ld [hl], $ed                                  ; $7cea: $36 $ed
    ld l, b                                       ; $7cec: $68
    add c                                         ; $7ced: $81
    dec de                                        ; $7cee: $1b
    rst $38                                       ; $7cef: $ff
    and h                                         ; $7cf0: $a4
    ld e, e                                       ; $7cf1: $5b
    ld [hl], c                                    ; $7cf2: $71
    db $d3                                        ; $7cf3: $d3
    add [hl]                                      ; $7cf4: $86
    rrca                                          ; $7cf5: $0f
    db $db                                        ; $7cf6: $db
    or l                                          ; $7cf7: $b5
    cp a                                          ; $7cf8: $bf
    adc l                                         ; $7cf9: $8d
    inc e                                         ; $7cfa: $1c
    ld l, l                                       ; $7cfb: $6d
    ld e, $8b                                     ; $7cfc: $1e $8b
    inc [hl]                                      ; $7cfe: $34
    jp z, Jump_000_198d                           ; $7cff: $ca $8d $19

    add l                                         ; $7d02: $85
    ld a, [$3cb0]                                 ; $7d03: $fa $b0 $3c
    dec de                                        ; $7d06: $1b
    cp d                                          ; $7d07: $ba
    cp l                                          ; $7d08: $bd
    ld [hl], c                                    ; $7d09: $71
    rrca                                          ; $7d0a: $0f
    add hl, bc                                    ; $7d0b: $09
    sbc e                                         ; $7d0c: $9b
    ld b, $34                                     ; $7d0d: $06 $34
    ld [hl], c                                    ; $7d0f: $71
    ld l, e                                       ; $7d10: $6b
    inc hl                                        ; $7d11: $23
    ld a, [hl]                                    ; $7d12: $7e
    xor b                                         ; $7d13: $a8
    xor [hl]                                      ; $7d14: $ae
    reti                                          ; $7d15: $d9


    dec de                                        ; $7d16: $1b
    xor l                                         ; $7d17: $ad
    ld c, a                                       ; $7d18: $4f
    ld h, e                                       ; $7d19: $63
    rla                                           ; $7d1a: $17
    add $f5                                       ; $7d1b: $c6 $f5
    or h                                          ; $7d1d: $b4
    ld a, d                                       ; $7d1e: $7a
    pop af                                        ; $7d1f: $f1
    ld a, [c]                                     ; $7d20: $f2
    ld e, e                                       ; $7d21: $5b
    ccf                                           ; $7d22: $3f
    ld e, d                                       ; $7d23: $5a
    rst $28                                       ; $7d24: $ef
    cp h                                          ; $7d25: $bc
    ld a, [de]                                    ; $7d26: $1a
    add d                                         ; $7d27: $82
    db $db                                        ; $7d28: $db

Call_069_7d29:
    push af                                       ; $7d29: $f5
    jp nz, $a7d4                                  ; $7d2a: $c2 $d4 $a7

    or c                                          ; $7d2d: $b1
    ld [de], a                                    ; $7d2e: $12
    sbc c                                         ; $7d2f: $99
    ld bc, $3e1b                                  ; $7d30: $01 $1b $3e
    db $db                                        ; $7d33: $db
    or l                                          ; $7d34: $b5
    cp a                                          ; $7d35: $bf

Jump_069_7d36:
    adc l                                         ; $7d36: $8d
    inc e                                         ; $7d37: $1c
    dec l                                         ; $7d38: $2d
    ld [c], a                                     ; $7d39: $e2
    rst $08                                       ; $7d3a: $cf
    sbc b                                         ; $7d3b: $98
    add hl, hl                                    ; $7d3c: $29
    db $eb                                        ; $7d3d: $eb
    ld h, h                                       ; $7d3e: $64
    add hl, de                                    ; $7d3f: $19
    ld d, [hl]                                    ; $7d40: $56
    jr nc, jr_069_7da0                            ; $7d41: $30 $5d

    or e                                          ; $7d43: $b3
    scf                                           ; $7d44: $37
    push af                                       ; $7d45: $f5
    ld l, c                                       ; $7d46: $69
    ld l, h                                       ; $7d47: $6c
    jp z, $a3a1                                   ; $7d48: $ca $a1 $a3

    ld h, l                                       ; $7d4b: $65
    ld h, [hl]                                    ; $7d4c: $66
    jp z, $eb41                                   ; $7d4d: $ca $41 $eb

    db $dd                                        ; $7d50: $dd
    ld c, l                                       ; $7d51: $4d
    rst $18                                       ; $7d52: $df
    ccf                                           ; $7d53: $3f
    jp c, $fe8c                                   ; $7d54: $da $8c $fe

    adc $20                                       ; $7d57: $ce $20
    scf                                           ; $7d59: $37
    call c, $db1f                                 ; $7d5a: $dc $1f $db
    or l                                          ; $7d5d: $b5
    cp a                                          ; $7d5e: $bf
    adc l                                         ; $7d5f: $8d
    inc e                                         ; $7d60: $1c
    dec l                                         ; $7d61: $2d
    sbc l                                         ; $7d62: $9d
    ld b, h                                       ; $7d63: $44
    call z, $ca34                                 ; $7d64: $cc $34 $ca
    ld c, [hl]                                    ; $7d67: $4e
    inc sp                                        ; $7d68: $33
    ld e, h                                       ; $7d69: $5c
    db $e3                                        ; $7d6a: $e3
    ld l, [hl]                                    ; $7d6b: $6e
    dec hl                                        ; $7d6c: $2b
    inc l                                         ; $7d6d: $2c
    dec de                                        ; $7d6e: $1b
    sbc d                                         ; $7d6f: $9a
    and b                                         ; $7d70: $a0
    sbc c                                         ; $7d71: $99
    db $fd                                        ; $7d72: $fd
    ld b, a                                       ; $7d73: $47
    ld a, d                                       ; $7d74: $7a
    ld e, [hl]                                    ; $7d75: $5e
    db $e4                                        ; $7d76: $e4
    ld a, d                                       ; $7d77: $7a
    pop hl                                        ; $7d78: $e1
    ld d, h                                       ; $7d79: $54
    ld [hl], a                                    ; $7d7a: $77
    xor a                                         ; $7d7b: $af
    rst $10                                       ; $7d7c: $d7
    push bc                                       ; $7d7d: $c5
    rst $38                                       ; $7d7e: $ff
    ld c, l                                       ; $7d7f: $4d
    ld h, h                                       ; $7d80: $64
    sbc l                                         ; $7d81: $9d
    ld h, h                                       ; $7d82: $64
    ld d, a                                       ; $7d83: $57
    ret c                                         ; $7d84: $d8

    ld [hl], l                                    ; $7d85: $75
    ld a, a                                       ; $7d86: $7f
    db $db                                        ; $7d87: $db
    or l                                          ; $7d88: $b5
    cp a                                          ; $7d89: $bf
    adc l                                         ; $7d8a: $8d
    inc e                                         ; $7d8b: $1c
    ld l, l                                       ; $7d8c: $6d
    db $10                                        ; $7d8d: $10
    adc $c6                                       ; $7d8e: $ce $c6
    adc h                                         ; $7d90: $8c
    ld a, [hl-]                                   ; $7d91: $3a
    ld e, c                                       ; $7d92: $59
    ld a, [hl-]                                   ; $7d93: $3a
    adc c                                         ; $7d94: $89
    sbc b                                         ; $7d95: $98
    and a                                         ; $7d96: $a7
    ld a, $4c                                     ; $7d97: $3e $4c
    ld [hl-], a                                   ; $7d99: $32
    ld [hl+], a                                   ; $7d9a: $22
    ld h, [hl]                                    ; $7d9b: $66
    inc [hl]                                      ; $7d9c: $34
    and b                                         ; $7d9d: $a0
    adc c                                         ; $7d9e: $89
    sub a                                         ; $7d9f: $97

jr_069_7da0:
    ld l, [hl]                                    ; $7da0: $6e
    ld l, b                                       ; $7da1: $68
    add d                                         ; $7da2: $82
    ld h, [hl]                                    ; $7da3: $66
    or $1f                                        ; $7da4: $f6 $1f
    jp hl                                         ; $7da6: $e9


    ld a, c                                       ; $7da7: $79
    sub c                                         ; $7da8: $91
    db $eb                                        ; $7da9: $eb
    add l                                         ; $7daa: $85
    ld d, e                                       ; $7dab: $53
    db $dd                                        ; $7dac: $dd
    cp l                                          ; $7dad: $bd
    ld e, [hl]                                    ; $7dae: $5e
    rla                                           ; $7daf: $17
    rst $38                                       ; $7db0: $ff
    scf                                           ; $7db1: $37
    sub c                                         ; $7db2: $91
    ld [hl], l                                    ; $7db3: $75
    sub d                                         ; $7db4: $92
    ld e, l                                       ; $7db5: $5d
    ld h, c                                       ; $7db6: $61
    rst $10                                       ; $7db7: $d7
    db $fd                                        ; $7db8: $fd
    ld bc, $b5db                                  ; $7db9: $01 $db $b5
    cp a                                          ; $7dbc: $bf
    adc l                                         ; $7dbd: $8d
    inc e                                         ; $7dbe: $1c
    ld l, l                                       ; $7dbf: $6d
    db $10                                        ; $7dc0: $10
    adc $c6                                       ; $7dc1: $ce $c6
    adc h                                         ; $7dc3: $8c
    ld a, [hl-]                                   ; $7dc4: $3a
    ld e, c                                       ; $7dc5: $59
    ld a, [hl-]                                   ; $7dc6: $3a
    adc c                                         ; $7dc7: $89
    sbc b                                         ; $7dc8: $98
    and a                                         ; $7dc9: $a7
    ld a, $4c                                     ; $7dca: $3e $4c
    ld [hl-], a                                   ; $7dcc: $32
    ld [hl+], a                                   ; $7dcd: $22
    ld h, [hl]                                    ; $7dce: $66
    inc [hl]                                      ; $7dcf: $34
    and b                                         ; $7dd0: $a0
    adc c                                         ; $7dd1: $89
    ld e, e                                       ; $7dd2: $5b
    scf                                           ; $7dd3: $37
    inc [hl]                                      ; $7dd4: $34
    ld b, c                                       ; $7dd5: $41
    inc sp                                        ; $7dd6: $33
    ei                                            ; $7dd7: $fb
    adc a                                         ; $7dd8: $8f
    db $f4                                        ; $7dd9: $f4
    cp h                                          ; $7dda: $bc
    ret z                                         ; $7ddb: $c8

    push af                                       ; $7ddc: $f5
    jp nz, $eea9                                  ; $7ddd: $c2 $a9 $ee

    ld e, [hl]                                    ; $7de0: $5e
    xor a                                         ; $7de1: $af
    adc e                                         ; $7de2: $8b
    rst $38                                       ; $7de3: $ff
    sbc e                                         ; $7de4: $9b
    ret z                                         ; $7de5: $c8

    ld a, [hl-]                                   ; $7de6: $3a
    ret                                           ; $7de7: $c9


    xor [hl]                                      ; $7de8: $ae
    or b                                          ; $7de9: $b0
    db $eb                                        ; $7dea: $eb
    cp $00                                        ; $7deb: $fe $00
    sub a                                         ; $7ded: $97
    ld c, l                                       ; $7dee: $4d
    jr @-$11                                      ; $7def: $18 $ed

    ld l, b                                       ; $7df1: $68
    inc sp                                        ; $7df2: $33
    sbc h                                         ; $7df3: $9c
    ld [hl], $71                                  ; $7df4: $36 $71
    ld l, e                                       ; $7df6: $6b
    dec d                                         ; $7df7: $15
    add l                                         ; $7df8: $85
    and [hl]                                      ; $7df9: $a6
    daa                                           ; $7dfa: $27
    ld d, e                                       ; $7dfb: $53
    ld l, [hl]                                    ; $7dfc: $6e
    add sp, -$0a                                  ; $7dfd: $e8 $f6
    ld h, $c7                                     ; $7dff: $26 $c7
    ld l, h                                       ; $7e01: $6c
    ld l, h                                       ; $7e02: $6c
    ld b, e                                       ; $7e03: $43
    or a                                          ; $7e04: $b7
    scf                                           ; $7e05: $37
    add hl, sp                                    ; $7e06: $39
    ld h, [hl]                                    ; $7e07: $66
    ld h, e                                       ; $7e08: $63
    dec de                                        ; $7e09: $1b
    ld a, $9b                                     ; $7e0a: $3e $9b
    ld b, a                                       ; $7e0c: $47
    sub $c9                                       ; $7e0d: $d6 $c9
    ld [$5c2c], a                                 ; $7e0f: $ea $2c $5c
    ld sp, $23fe                                  ; $7e12: $31 $fe $23
    xor d                                         ; $7e15: $aa
    ld [hl+], a                                   ; $7e16: $22
    ld h, [hl]                                    ; $7e17: $66
    ld l, b                                       ; $7e18: $68
    ld b, a                                       ; $7e19: $47

Jump_069_7e1a:
    sbc e                                         ; $7e1a: $9b
    ld a, b                                       ; $7e1b: $78
    ld l, c                                       ; $7e1c: $69
    pop de                                        ; $7e1d: $d1
    call nz, Call_000_35ad                        ; $7e1e: $c4 $ad $35
    ld hl, sp-$5d                                 ; $7e21: $f8 $a3
    ld a, c                                       ; $7e23: $79
    or h                                          ; $7e24: $b4
    ld [hl], c                                    ; $7e25: $71
    ld a, [hl+]                                   ; $7e26: $2a
    rst $10                                       ; $7e27: $d7
    inc b                                         ; $7e28: $04
    ccf                                           ; $7e29: $3f
    add hl, sp                                    ; $7e2a: $39
    dec de                                        ; $7e2b: $1b
    ld a, $97                                     ; $7e2c: $3e $97
    ld hl, $9d6a                                  ; $7e2e: $21 $6a $9d
    ld h, h                                       ; $7e31: $64
    ld d, a                                       ; $7e32: $57
    ld c, h                                       ; $7e33: $4c
    or e                                          ; $7e34: $b3
    ld c, a                                       ; $7e35: $4f
    ld a, [$5506]                                 ; $7e36: $fa $06 $55
    pop hl                                        ; $7e39: $e1
    inc [hl]                                      ; $7e3a: $34
    and b                                         ; $7e3b: $a0
    add hl, hl                                    ; $7e3c: $29
    add a                                         ; $7e3d: $87
    ld b, d                                       ; $7e3e: $42
    di                                            ; $7e3f: $f3
    sbc d                                         ; $7e40: $9a
    ld d, [hl]                                    ; $7e41: $56
    adc [hl]                                      ; $7e42: $8e
    ld b, h                                       ; $7e43: $44
    call z, $a08c                                 ; $7e44: $cc $8c $a0
    ld b, h                                       ; $7e47: $44
    call z, $93e8                                 ; $7e48: $cc $e8 $93
    ld l, $a2                                     ; $7e4b: $2e $a2
    ld l, h                                       ; $7e4d: $6c
    sbc [hl]                                      ; $7e4e: $9e
    ret nz                                        ; $7e4f: $c0

    or d                                          ; $7e50: $b2
    sub d                                         ; $7e51: $92
    jp hl                                         ; $7e52: $e9


    rst $00                                       ; $7e53: $c7
    dec c                                         ; $7e54: $0d
    rra                                           ; $7e55: $1f
    add hl, bc                                    ; $7e56: $09
    sbc d                                         ; $7e57: $9a
    reti                                          ; $7e58: $d9


    ld a, a                                       ; $7e59: $7f
    and h                                         ; $7e5a: $a4
    rst $20                                       ; $7e5b: $e7
    ld b, l                                       ; $7e5c: $45
    xor [hl]                                      ; $7e5d: $ae
    rla                                           ; $7e5e: $17
    ld c, [hl]                                    ; $7e5f: $4e
    inc bc                                        ; $7e60: $03
    ld a, [$c8db]                                 ; $7e61: $fa $db $c8
    pop de                                        ; $7e64: $d1
    and $b1                                       ; $7e65: $e6 $b1
    ret z                                         ; $7e67: $c8

    adc l                                         ; $7e68: $8d
    add hl, de                                    ; $7e69: $19
    ld a, l                                       ; $7e6a: $7d
    jp nc, $9445                                  ; $7e6b: $d2 $45 $94

    call Call_069_4613                            ; $7e6e: $cd $13 $46
    dec sp                                        ; $7e71: $3b
    ld e, d                                       ; $7e72: $5a
    ld h, [hl]                                    ; $7e73: $66
    and [hl]                                      ; $7e74: $a6
    inc e                                         ; $7e75: $1c
    or h                                          ; $7e76: $b4
    ld d, c                                       ; $7e77: $51
    jr c, jr_069_7e95                             ; $7e78: $38 $1b

    push hl                                       ; $7e7a: $e5
    ld e, d                                       ; $7e7b: $5a
    ld a, [$a3fd]                                 ; $7e7c: $fa $fd $a3
    adc l                                         ; $7e7f: $8d
    ld c, [hl]                                    ; $7e80: $4e
    ld d, $f1                                     ; $7e81: $16 $f1
    sbc a                                         ; $7e83: $9f
    sbc b                                         ; $7e84: $98
    ld l, l                                       ; $7e85: $6d
    xor $0f                                       ; $7e86: $ee $0f
    ld [c], a                                     ; $7e88: $e2
    cp $ee                                        ; $7e89: $fe $ee
    jp c, $a47f                                   ; $7e8b: $da $7f $a4

    rst $20                                       ; $7e8e: $e7
    ld b, l                                       ; $7e8f: $45
    ld a, [de]                                    ; $7e90: $1a
    or h                                          ; $7e91: $b4
    ret nc                                        ; $7e92: $d0

    inc c                                         ; $7e93: $0c
    db $ed                                        ; $7e94: $ed

jr_069_7e95:
    ld l, a                                       ; $7e95: $6f
    inc hl                                        ; $7e96: $23
    ld b, a                                       ; $7e97: $47
    ld b, l                                       ; $7e98: $45
    dec e                                         ; $7e99: $1d
    dec l                                         ; $7e9a: $2d
    jp $a60a                                      ; $7e9b: $c3 $0a $a6


    ld l, e                                       ; $7e9e: $6b
    or $46                                        ; $7e9f: $f6 $46
    sbc e                                         ; $7ea1: $9b
    rrca                                          ; $7ea2: $0f
    sub h                                         ; $7ea3: $94
    ld [hl], l                                    ; $7ea4: $75
    or d                                          ; $7ea5: $b2
    ld d, h                                       ; $7ea6: $54
    rra                                           ; $7ea7: $1f
    ld a, a                                       ; $7ea8: $7f
    sbc [hl]                                      ; $7ea9: $9e
    ld c, d                                       ; $7eaa: $4a
    rst $30                                       ; $7eab: $f7
    ld a, [c]                                     ; $7eac: $f2
    adc b                                         ; $7ead: $88
    ld a, [hl+]                                   ; $7eae: $2a
    db $dd                                        ; $7eaf: $dd
    bit 2, e                                      ; $7eb0: $cb $53
    xor a                                         ; $7eb2: $af
    pop af                                        ; $7eb3: $f1
    sbc a                                         ; $7eb4: $9f
    ei                                            ; $7eb5: $fb
    cp [hl]                                       ; $7eb6: $be
    db $db                                        ; $7eb7: $db
    ld a, [hl]                                    ; $7eb8: $7e
    ld [c], a                                     ; $7eb9: $e2
    cp $ee                                        ; $7eba: $fe $ee
    jp c, $a47f                                   ; $7ebc: $da $7f $a4

    rst $20                                       ; $7ebf: $e7
    ld b, l                                       ; $7ec0: $45
    ld a, [de]                                    ; $7ec1: $1a
    or h                                          ; $7ec2: $b4
    ret nc                                        ; $7ec3: $d0

    inc c                                         ; $7ec4: $0c
    db $ed                                        ; $7ec5: $ed
    ld l, a                                       ; $7ec6: $6f
    inc hl                                        ; $7ec7: $23
    ld b, a                                       ; $7ec8: $47
    ld b, l                                       ; $7ec9: $45
    ld d, l                                       ; $7eca: $55
    call nz, Call_069_6d0c                        ; $7ecb: $c4 $0c $6d
    jp z, $29a1                                   ; $7ece: $ca $a1 $29

    rst $00                                       ; $7ed1: $c7
    and a                                         ; $7ed2: $a7
    add hl, hl                                    ; $7ed3: $29
    rlca                                          ; $7ed4: $07
    xor e                                         ; $7ed5: $ab
    rla                                           ; $7ed6: $17
    cpl                                           ; $7ed7: $2f
    cp a                                          ; $7ed8: $bf
    push af                                       ; $7ed9: $f5
    and e                                         ; $7eda: $a3
    ld c, l                                       ; $7edb: $4d
    add hl, sp                                    ; $7edc: $39
    ld [hl], h                                    ; $7edd: $74
    ld h, c                                       ; $7ede: $61
    db $fc                                        ; $7edf: $fc
    and c                                         ; $7ee0: $a1
    ld d, l                                       ; $7ee1: $55
    sbc b                                         ; $7ee2: $98
    ld [hl], b                                    ; $7ee3: $70
    ld a, [hl+]                                   ; $7ee4: $2a
    db $dd                                        ; $7ee5: $dd
    bit 2, e                                      ; $7ee6: $cb $53
    ret                                           ; $7ee8: $c9


    and a                                         ; $7ee9: $a7
    push af                                       ; $7eea: $f5
    adc [hl]                                      ; $7eeb: $8e
    ld h, l                                       ; $7eec: $65
    add sp, -$7a                                  ; $7eed: $e8 $86
    rrca                                          ; $7eef: $0f
    db $db                                        ; $7ef0: $db
    or l                                          ; $7ef1: $b5
    cp a                                          ; $7ef2: $bf
    adc l                                         ; $7ef3: $8d
    inc e                                         ; $7ef4: $1c
    dec l                                         ; $7ef5: $2d
    sbc l                                         ; $7ef6: $9d
    ld b, h                                       ; $7ef7: $44
    call z, $ca34                                 ; $7ef8: $cc $34 $ca
    ld a, $89                                     ; $7efb: $3e $89
    xor b                                         ; $7efd: $a8
    db $d3                                        ; $7efe: $d3
    pop de                                        ; $7eff: $d1
    ld b, $c6                                     ; $7f00: $06 $c6
    pop de                                        ; $7f02: $d1
    cp [hl]                                       ; $7f03: $be
    add sp, $5d                                   ; $7f04: $e8 $5d
    ld e, [hl]                                    ; $7f06: $5e
    ld a, [$d185]                                 ; $7f07: $fa $85 $d1
    ld a, [$4658]                                 ; $7f0a: $fa $58 $46
    sbc e                                         ; $7f0d: $9b
    pop hl                                        ; $7f0e: $e1
    or h                                          ; $7f0f: $b4
    ld e, [hl]                                    ; $7f10: $5e
    cp h                                          ; $7f11: $bc
    db $fc                                        ; $7f12: $fc
    sub $8f                                       ; $7f13: $d6 $8f
    ld [hl], $38                                  ; $7f15: $36 $38
    ld h, e                                       ; $7f17: $63
    call z, $93a8                                 ; $7f18: $cc $a8 $93
    ld b, l                                       ; $7f1b: $45
    db $fc                                        ; $7f1c: $fc
    daa                                           ; $7f1d: $27
    ld h, [hl]                                    ; $7f1e: $66
    sbc e                                         ; $7f1f: $9b
    ei                                            ; $7f20: $fb
    inc bc                                        ; $7f21: $03
    db $db                                        ; $7f22: $db
    ei                                            ; $7f23: $fb
    db $db                                        ; $7f24: $db
    ret z                                         ; $7f25: $c8

    ld l, c                                       ; $7f26: $69
    sbc b                                         ; $7f27: $98
    ld l, [hl]                                    ; $7f28: $6e
    and c                                         ; $7f29: $a1
    reti                                          ; $7f2a: $d9


    adc $26                                       ; $7f2b: $ce $26
    ld c, [hl]                                    ; $7f2d: $4e
    adc $b0                                       ; $7f2e: $ce $b0
    ld b, $b8                                     ; $7f30: $06 $b8
    adc l                                         ; $7f32: $8d
    add hl, de                                    ; $7f33: $19
    call Call_069_4613                            ; $7f34: $cd $13 $46
    dec sp                                        ; $7f37: $3b
    ld e, d                                       ; $7f38: $5a
    cpl                                           ; $7f39: $2f
    ld e, [hl]                                    ; $7f3a: $5e
    ld a, [hl]                                    ; $7f3b: $7e
    db $eb                                        ; $7f3c: $eb
    ld b, a                                       ; $7f3d: $47
    bit 5, c                                      ; $7f3e: $cb $69
    call c, $856d                                 ; $7f40: $dc $6d $85
    and l                                         ; $7f43: $a5
    ld [hl], d                                    ; $7f44: $72
    ld c, l                                       ; $7f45: $4d
    ldh a, [$93]                                  ; $7f46: $f0 $93
    inc hl                                        ; $7f48: $23
    ld a, [hl+]                                   ; $7f49: $2a
    ld a, [$32cf]                                 ; $7f4a: $fa $cf $32

Call_069_7f4d:
    or $5c                                        ; $7f4d: $f6 $5c
    ld b, a                                       ; $7f4f: $47
    sbc e                                         ; $7f50: $9b
    pop hl                                        ; $7f51: $e1
    or h                                          ; $7f52: $b4
    cp a                                          ; $7f53: $bf
    adc l                                         ; $7f54: $8d
    inc e                                         ; $7f55: $1c
    ld l, l                                       ; $7f56: $6d
    sbc h                                         ; $7f57: $9c
    sbc [hl]                                      ; $7f58: $9e
    scf                                           ; $7f59: $37
    res 3, e                                      ; $7f5a: $cb $9b
    ld l, [hl]                                    ; $7f5c: $6e
    ld h, l                                       ; $7f5d: $65
    ld a, [$1fd5]                                 ; $7f5e: $fa $d5 $1f
    xor e                                         ; $7f61: $ab
    add a                                         ; $7f62: $87
    add $25                                       ; $7f63: $c6 $25
    add hl, sp                                    ; $7f65: $39
    dec de                                        ; $7f66: $1b
    ld a, $ff                                     ; $7f67: $3e $ff
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

Jump_069_7fcb:
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
